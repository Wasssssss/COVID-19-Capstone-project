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
dense_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_102/kernel
u
$dense_102/kernel/Read/ReadVariableOpReadVariableOpdense_102/kernel*
_output_shapes

:  *
dtype0
t
dense_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_102/bias
m
"dense_102/bias/Read/ReadVariableOpReadVariableOpdense_102/bias*
_output_shapes
: *
dtype0
|
dense_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_103/kernel
u
$dense_103/kernel/Read/ReadVariableOpReadVariableOpdense_103/kernel*
_output_shapes

: *
dtype0
t
dense_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_103/bias
m
"dense_103/bias/Read/ReadVariableOpReadVariableOpdense_103/bias*
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
lstm_85/lstm_cell_85/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_85/lstm_cell_85/kernel
?
/lstm_85/lstm_cell_85/kernel/Read/ReadVariableOpReadVariableOplstm_85/lstm_cell_85/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_85/lstm_cell_85/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_85/lstm_cell_85/recurrent_kernel
?
9lstm_85/lstm_cell_85/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_85/lstm_cell_85/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_85/lstm_cell_85/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_85/lstm_cell_85/bias
?
-lstm_85/lstm_cell_85/bias/Read/ReadVariableOpReadVariableOplstm_85/lstm_cell_85/bias*
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
Adam/dense_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_102/kernel/m
?
+Adam/dense_102/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_102/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_102/bias/m
{
)Adam/dense_102/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_102/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_103/kernel/m
?
+Adam/dense_103/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_103/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_103/bias/m
{
)Adam/dense_103/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_103/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_85/lstm_cell_85/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_85/lstm_cell_85/kernel/m
?
6Adam/lstm_85/lstm_cell_85/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_85/lstm_cell_85/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_85/lstm_cell_85/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m
?
@Adam/lstm_85/lstm_cell_85/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_85/lstm_cell_85/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_85/lstm_cell_85/bias/m
?
4Adam/lstm_85/lstm_cell_85/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_85/lstm_cell_85/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_102/kernel/v
?
+Adam/dense_102/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_102/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_102/bias/v
{
)Adam/dense_102/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_102/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_103/kernel/v
?
+Adam/dense_103/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_103/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_103/bias/v
{
)Adam/dense_103/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_103/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_85/lstm_cell_85/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_85/lstm_cell_85/kernel/v
?
6Adam/lstm_85/lstm_cell_85/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_85/lstm_cell_85/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_85/lstm_cell_85/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v
?
@Adam/lstm_85/lstm_cell_85/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_85/lstm_cell_85/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_85/lstm_cell_85/bias/v
?
4Adam/lstm_85/lstm_cell_85/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_85/lstm_cell_85/bias/v*
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
\Z
VARIABLE_VALUEdense_102/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_102/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEdense_103/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_103/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_85/lstm_cell_85/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_85/lstm_cell_85/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_85/lstm_cell_85/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_102/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_102/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_103/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_103/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_85/lstm_cell_85/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_85/lstm_cell_85/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_85/lstm_cell_85/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_102/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_102/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_103/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_103/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_85/lstm_cell_85/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_85/lstm_cell_85/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_85/lstm_cell_85/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_35Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_35lstm_85/lstm_cell_85/kernellstm_85/lstm_cell_85/bias%lstm_85/lstm_cell_85/recurrent_kerneldense_102/kerneldense_102/biasdense_103/kerneldense_103/bias*
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
%__inference_signature_wrapper_2829963
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_102/kernel/Read/ReadVariableOp"dense_102/bias/Read/ReadVariableOp$dense_103/kernel/Read/ReadVariableOp"dense_103/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_85/lstm_cell_85/kernel/Read/ReadVariableOp9lstm_85/lstm_cell_85/recurrent_kernel/Read/ReadVariableOp-lstm_85/lstm_cell_85/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_102/kernel/m/Read/ReadVariableOp)Adam/dense_102/bias/m/Read/ReadVariableOp+Adam/dense_103/kernel/m/Read/ReadVariableOp)Adam/dense_103/bias/m/Read/ReadVariableOp6Adam/lstm_85/lstm_cell_85/kernel/m/Read/ReadVariableOp@Adam/lstm_85/lstm_cell_85/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_85/lstm_cell_85/bias/m/Read/ReadVariableOp+Adam/dense_102/kernel/v/Read/ReadVariableOp)Adam/dense_102/bias/v/Read/ReadVariableOp+Adam/dense_103/kernel/v/Read/ReadVariableOp)Adam/dense_103/bias/v/Read/ReadVariableOp6Adam/lstm_85/lstm_cell_85/kernel/v/Read/ReadVariableOp@Adam/lstm_85/lstm_cell_85/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_85/lstm_cell_85/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_2832189
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_102/kerneldense_102/biasdense_103/kerneldense_103/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_85/lstm_cell_85/kernel%lstm_85/lstm_cell_85/recurrent_kernellstm_85/lstm_cell_85/biastotalcountAdam/dense_102/kernel/mAdam/dense_102/bias/mAdam/dense_103/kernel/mAdam/dense_103/bias/m"Adam/lstm_85/lstm_cell_85/kernel/m,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m Adam/lstm_85/lstm_cell_85/bias/mAdam/dense_102/kernel/vAdam/dense_102/bias/vAdam/dense_103/kernel/vAdam/dense_103/bias/v"Adam/lstm_85/lstm_cell_85/kernel/v,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v Adam/lstm_85/lstm_cell_85/bias/v*(
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
#__inference__traced_restore_2832283??$
?

?
lstm_85_while_cond_2830072,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3.
*lstm_85_while_less_lstm_85_strided_slice_1E
Alstm_85_while_lstm_85_while_cond_2830072___redundant_placeholder0E
Alstm_85_while_lstm_85_while_cond_2830072___redundant_placeholder1E
Alstm_85_while_lstm_85_while_cond_2830072___redundant_placeholder2E
Alstm_85_while_lstm_85_while_cond_2830072___redundant_placeholder3
lstm_85_while_identity
?
lstm_85/while/LessLesslstm_85_while_placeholder*lstm_85_while_less_lstm_85_strided_slice_1*
T0*
_output_shapes
: 2
lstm_85/while/Lessu
lstm_85/while/IdentityIdentitylstm_85/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_85/while/Identity"9
lstm_85_while_identitylstm_85/while/Identity:output:0*(
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
__inference_loss_fn_0_2831837G
9dense_103_bias_regularizer_square_readvariableop_resource:
identity??0dense_103/bias/Regularizer/Square/ReadVariableOp?
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOp9dense_103_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mull
IdentityIdentity"dense_103/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_103/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_1_2832082Y
Flstm_85_lstm_cell_85_kernel_regularizer_square_readvariableop_resource:	?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_85_lstm_cell_85_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muly
IdentityIdentity/lstm_85/lstm_cell_85/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp
?%
?
while_body_2828423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_85_2828447_0:	?+
while_lstm_cell_85_2828449_0:	?/
while_lstm_cell_85_2828451_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_85_2828447:	?)
while_lstm_cell_85_2828449:	?-
while_lstm_cell_85_2828451:	 ???*while/lstm_cell_85/StatefulPartitionedCall?
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
*while/lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_85_2828447_0while_lstm_cell_85_2828449_0while_lstm_cell_85_2828451_0*
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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_28284092,
*while/lstm_cell_85/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_85/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_85/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_85/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_85/StatefulPartitionedCall*"
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
while_lstm_cell_85_2828447while_lstm_cell_85_2828447_0":
while_lstm_cell_85_2828449while_lstm_cell_85_2828449_0":
while_lstm_cell_85_2828451while_lstm_cell_85_2828451_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_85/StatefulPartitionedCall*while/lstm_cell_85/StatefulPartitionedCall: 
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
%__inference_signature_wrapper_2829963
input_35
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_35unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_28282852
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
input_35
??
?	
while_body_2830998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_85_split_readvariableop_resource_0:	?C
4while_lstm_cell_85_split_1_readvariableop_resource_0:	??
,while_lstm_cell_85_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_85_split_readvariableop_resource:	?A
2while_lstm_cell_85_split_1_readvariableop_resource:	?=
*while_lstm_cell_85_readvariableop_resource:	 ???!while/lstm_cell_85/ReadVariableOp?#while/lstm_cell_85/ReadVariableOp_1?#while/lstm_cell_85/ReadVariableOp_2?#while/lstm_cell_85/ReadVariableOp_3?'while/lstm_cell_85/split/ReadVariableOp?)while/lstm_cell_85/split_1/ReadVariableOp?
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
"while/lstm_cell_85/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_85/ones_like/Shape?
"while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_85/ones_like/Const?
while/lstm_cell_85/ones_likeFill+while/lstm_cell_85/ones_like/Shape:output:0+while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/ones_like?
 while/lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_85/dropout/Const?
while/lstm_cell_85/dropout/MulMul%while/lstm_cell_85/ones_like:output:0)while/lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_85/dropout/Mul?
 while/lstm_cell_85/dropout/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_85/dropout/Shape?
7while/lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_85/dropout/random_uniform/RandomUniform?
)while/lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_85/dropout/GreaterEqual/y?
'while/lstm_cell_85/dropout/GreaterEqualGreaterEqual@while/lstm_cell_85/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_85/dropout/GreaterEqual?
while/lstm_cell_85/dropout/CastCast+while/lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_85/dropout/Cast?
 while/lstm_cell_85/dropout/Mul_1Mul"while/lstm_cell_85/dropout/Mul:z:0#while/lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout/Mul_1?
"while/lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_1/Const?
 while/lstm_cell_85/dropout_1/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_1/Mul?
"while/lstm_cell_85/dropout_1/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_1/Shape?
9while/lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ػ?2;
9while/lstm_cell_85/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_1/GreaterEqual/y?
)while/lstm_cell_85/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_1/GreaterEqual?
!while/lstm_cell_85/dropout_1/CastCast-while/lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_1/Cast?
"while/lstm_cell_85/dropout_1/Mul_1Mul$while/lstm_cell_85/dropout_1/Mul:z:0%while/lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_1/Mul_1?
"while/lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_2/Const?
 while/lstm_cell_85/dropout_2/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_2/Mul?
"while/lstm_cell_85/dropout_2/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_2/Shape?
9while/lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?Ѭ2;
9while/lstm_cell_85/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_2/GreaterEqual/y?
)while/lstm_cell_85/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_2/GreaterEqual?
!while/lstm_cell_85/dropout_2/CastCast-while/lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_2/Cast?
"while/lstm_cell_85/dropout_2/Mul_1Mul$while/lstm_cell_85/dropout_2/Mul:z:0%while/lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_2/Mul_1?
"while/lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_3/Const?
 while/lstm_cell_85/dropout_3/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_3/Mul?
"while/lstm_cell_85/dropout_3/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_3/Shape?
9while/lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??2;
9while/lstm_cell_85/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_3/GreaterEqual/y?
)while/lstm_cell_85/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_3/GreaterEqual?
!while/lstm_cell_85/dropout_3/CastCast-while/lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_3/Cast?
"while/lstm_cell_85/dropout_3/Mul_1Mul$while/lstm_cell_85/dropout_3/Mul:z:0%while/lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_3/Mul_1?
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_85/split/split_dim?
'while/lstm_cell_85/split/ReadVariableOpReadVariableOp2while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_85/split/ReadVariableOp?
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_85/split?
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul?
while/lstm_cell_85/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_1?
while/lstm_cell_85/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_2?
while/lstm_cell_85/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_3?
$while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_85/split_1/split_dim?
)while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_85/split_1/ReadVariableOp?
while/lstm_cell_85/split_1Split-while/lstm_cell_85/split_1/split_dim:output:01while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_85/split_1?
while/lstm_cell_85/BiasAddBiasAdd#while/lstm_cell_85/MatMul:product:0#while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd?
while/lstm_cell_85/BiasAdd_1BiasAdd%while/lstm_cell_85/MatMul_1:product:0#while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_1?
while/lstm_cell_85/BiasAdd_2BiasAdd%while/lstm_cell_85/MatMul_2:product:0#while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_2?
while/lstm_cell_85/BiasAdd_3BiasAdd%while/lstm_cell_85/MatMul_3:product:0#while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_3?
while/lstm_cell_85/mulMulwhile_placeholder_2$while/lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul?
while/lstm_cell_85/mul_1Mulwhile_placeholder_2&while/lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_1?
while/lstm_cell_85/mul_2Mulwhile_placeholder_2&while/lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_2?
while/lstm_cell_85/mul_3Mulwhile_placeholder_2&while/lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_3?
!while/lstm_cell_85/ReadVariableOpReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_85/ReadVariableOp?
&while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_85/strided_slice/stack?
(while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice/stack_1?
(while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_85/strided_slice/stack_2?
 while/lstm_cell_85/strided_sliceStridedSlice)while/lstm_cell_85/ReadVariableOp:value:0/while/lstm_cell_85/strided_slice/stack:output:01while/lstm_cell_85/strided_slice/stack_1:output:01while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_85/strided_slice?
while/lstm_cell_85/MatMul_4MatMulwhile/lstm_cell_85/mul:z:0)while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_4?
while/lstm_cell_85/addAddV2#while/lstm_cell_85/BiasAdd:output:0%while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add?
while/lstm_cell_85/SigmoidSigmoidwhile/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid?
#while/lstm_cell_85/ReadVariableOp_1ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_1?
(while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice_1/stack?
*while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_85/strided_slice_1/stack_1?
*while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_1/stack_2?
"while/lstm_cell_85/strided_slice_1StridedSlice+while/lstm_cell_85/ReadVariableOp_1:value:01while/lstm_cell_85/strided_slice_1/stack:output:03while/lstm_cell_85/strided_slice_1/stack_1:output:03while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_1?
while/lstm_cell_85/MatMul_5MatMulwhile/lstm_cell_85/mul_1:z:0+while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_5?
while/lstm_cell_85/add_1AddV2%while/lstm_cell_85/BiasAdd_1:output:0%while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_1?
while/lstm_cell_85/Sigmoid_1Sigmoidwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_1?
while/lstm_cell_85/mul_4Mul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_4?
#while/lstm_cell_85/ReadVariableOp_2ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_2?
(while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_85/strided_slice_2/stack?
*while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_85/strided_slice_2/stack_1?
*while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_2/stack_2?
"while/lstm_cell_85/strided_slice_2StridedSlice+while/lstm_cell_85/ReadVariableOp_2:value:01while/lstm_cell_85/strided_slice_2/stack:output:03while/lstm_cell_85/strided_slice_2/stack_1:output:03while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_2?
while/lstm_cell_85/MatMul_6MatMulwhile/lstm_cell_85/mul_2:z:0+while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_6?
while/lstm_cell_85/add_2AddV2%while/lstm_cell_85/BiasAdd_2:output:0%while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_2?
while/lstm_cell_85/ReluReluwhile/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu?
while/lstm_cell_85/mul_5Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_5?
while/lstm_cell_85/add_3AddV2while/lstm_cell_85/mul_4:z:0while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_3?
#while/lstm_cell_85/ReadVariableOp_3ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_3?
(while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_85/strided_slice_3/stack?
*while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_85/strided_slice_3/stack_1?
*while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_3/stack_2?
"while/lstm_cell_85/strided_slice_3StridedSlice+while/lstm_cell_85/ReadVariableOp_3:value:01while/lstm_cell_85/strided_slice_3/stack:output:03while/lstm_cell_85/strided_slice_3/stack_1:output:03while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_3?
while/lstm_cell_85/MatMul_7MatMulwhile/lstm_cell_85/mul_3:z:0+while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_7?
while/lstm_cell_85/add_4AddV2%while/lstm_cell_85/BiasAdd_3:output:0%while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_4?
while/lstm_cell_85/Sigmoid_2Sigmoidwhile/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_2?
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu_1?
while/lstm_cell_85/mul_6Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_85/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_85/ReadVariableOp$^while/lstm_cell_85/ReadVariableOp_1$^while/lstm_cell_85/ReadVariableOp_2$^while/lstm_cell_85/ReadVariableOp_3(^while/lstm_cell_85/split/ReadVariableOp*^while/lstm_cell_85/split_1/ReadVariableOp*"
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
*while_lstm_cell_85_readvariableop_resource,while_lstm_cell_85_readvariableop_resource_0"j
2while_lstm_cell_85_split_1_readvariableop_resource4while_lstm_cell_85_split_1_readvariableop_resource_0"f
0while_lstm_cell_85_split_readvariableop_resource2while_lstm_cell_85_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_85/ReadVariableOp!while/lstm_cell_85/ReadVariableOp2J
#while/lstm_cell_85/ReadVariableOp_1#while/lstm_cell_85/ReadVariableOp_12J
#while/lstm_cell_85/ReadVariableOp_2#while/lstm_cell_85/ReadVariableOp_22J
#while/lstm_cell_85/ReadVariableOp_3#while/lstm_cell_85/ReadVariableOp_32R
'while/lstm_cell_85/split/ReadVariableOp'while/lstm_cell_85/split/ReadVariableOp2V
)while/lstm_cell_85/split_1/ReadVariableOp)while/lstm_cell_85/split_1/ReadVariableOp: 
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
while_cond_2828422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2828422___redundant_placeholder05
1while_while_cond_2828422___redundant_placeholder15
1while_while_cond_2828422___redundant_placeholder25
1while_while_cond_2828422___redundant_placeholder3
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
?v
?
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2828642

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
seed2??}2(
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
seed?	*
seed2??I2(
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2,
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
?,
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829890
input_35"
lstm_85_2829859:	?
lstm_85_2829861:	?"
lstm_85_2829863:	 ?#
dense_102_2829866:  
dense_102_2829868: #
dense_103_2829871: 
dense_103_2829873:
identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?0dense_103/bias/Regularizer/Square/ReadVariableOp?lstm_85/StatefulPartitionedCall?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
lstm_85/StatefulPartitionedCallStatefulPartitionedCallinput_35lstm_85_2829859lstm_85_2829861lstm_85_2829863*
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28293182!
lstm_85/StatefulPartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0dense_102_2829866dense_102_2829868*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_28293372#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_2829871dense_103_2829873*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_28293592#
!dense_103/StatefulPartitionedCall?
reshape_51/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_28293782
reshape_51/PartitionedCall?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_85_2829859*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/mul?
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_103_2829873*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mul?
IdentityIdentity#reshape_51/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall1^dense_103/bias/Regularizer/Square/ReadVariableOp ^lstm_85/StatefulPartitionedCall>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2d
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_35
??
?	
while_body_2831273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_85_split_readvariableop_resource_0:	?C
4while_lstm_cell_85_split_1_readvariableop_resource_0:	??
,while_lstm_cell_85_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_85_split_readvariableop_resource:	?A
2while_lstm_cell_85_split_1_readvariableop_resource:	?=
*while_lstm_cell_85_readvariableop_resource:	 ???!while/lstm_cell_85/ReadVariableOp?#while/lstm_cell_85/ReadVariableOp_1?#while/lstm_cell_85/ReadVariableOp_2?#while/lstm_cell_85/ReadVariableOp_3?'while/lstm_cell_85/split/ReadVariableOp?)while/lstm_cell_85/split_1/ReadVariableOp?
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
"while/lstm_cell_85/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_85/ones_like/Shape?
"while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_85/ones_like/Const?
while/lstm_cell_85/ones_likeFill+while/lstm_cell_85/ones_like/Shape:output:0+while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/ones_like?
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_85/split/split_dim?
'while/lstm_cell_85/split/ReadVariableOpReadVariableOp2while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_85/split/ReadVariableOp?
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_85/split?
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul?
while/lstm_cell_85/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_1?
while/lstm_cell_85/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_2?
while/lstm_cell_85/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_3?
$while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_85/split_1/split_dim?
)while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_85/split_1/ReadVariableOp?
while/lstm_cell_85/split_1Split-while/lstm_cell_85/split_1/split_dim:output:01while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_85/split_1?
while/lstm_cell_85/BiasAddBiasAdd#while/lstm_cell_85/MatMul:product:0#while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd?
while/lstm_cell_85/BiasAdd_1BiasAdd%while/lstm_cell_85/MatMul_1:product:0#while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_1?
while/lstm_cell_85/BiasAdd_2BiasAdd%while/lstm_cell_85/MatMul_2:product:0#while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_2?
while/lstm_cell_85/BiasAdd_3BiasAdd%while/lstm_cell_85/MatMul_3:product:0#while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_3?
while/lstm_cell_85/mulMulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul?
while/lstm_cell_85/mul_1Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_1?
while/lstm_cell_85/mul_2Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_2?
while/lstm_cell_85/mul_3Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_3?
!while/lstm_cell_85/ReadVariableOpReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_85/ReadVariableOp?
&while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_85/strided_slice/stack?
(while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice/stack_1?
(while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_85/strided_slice/stack_2?
 while/lstm_cell_85/strided_sliceStridedSlice)while/lstm_cell_85/ReadVariableOp:value:0/while/lstm_cell_85/strided_slice/stack:output:01while/lstm_cell_85/strided_slice/stack_1:output:01while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_85/strided_slice?
while/lstm_cell_85/MatMul_4MatMulwhile/lstm_cell_85/mul:z:0)while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_4?
while/lstm_cell_85/addAddV2#while/lstm_cell_85/BiasAdd:output:0%while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add?
while/lstm_cell_85/SigmoidSigmoidwhile/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid?
#while/lstm_cell_85/ReadVariableOp_1ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_1?
(while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice_1/stack?
*while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_85/strided_slice_1/stack_1?
*while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_1/stack_2?
"while/lstm_cell_85/strided_slice_1StridedSlice+while/lstm_cell_85/ReadVariableOp_1:value:01while/lstm_cell_85/strided_slice_1/stack:output:03while/lstm_cell_85/strided_slice_1/stack_1:output:03while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_1?
while/lstm_cell_85/MatMul_5MatMulwhile/lstm_cell_85/mul_1:z:0+while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_5?
while/lstm_cell_85/add_1AddV2%while/lstm_cell_85/BiasAdd_1:output:0%while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_1?
while/lstm_cell_85/Sigmoid_1Sigmoidwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_1?
while/lstm_cell_85/mul_4Mul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_4?
#while/lstm_cell_85/ReadVariableOp_2ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_2?
(while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_85/strided_slice_2/stack?
*while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_85/strided_slice_2/stack_1?
*while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_2/stack_2?
"while/lstm_cell_85/strided_slice_2StridedSlice+while/lstm_cell_85/ReadVariableOp_2:value:01while/lstm_cell_85/strided_slice_2/stack:output:03while/lstm_cell_85/strided_slice_2/stack_1:output:03while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_2?
while/lstm_cell_85/MatMul_6MatMulwhile/lstm_cell_85/mul_2:z:0+while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_6?
while/lstm_cell_85/add_2AddV2%while/lstm_cell_85/BiasAdd_2:output:0%while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_2?
while/lstm_cell_85/ReluReluwhile/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu?
while/lstm_cell_85/mul_5Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_5?
while/lstm_cell_85/add_3AddV2while/lstm_cell_85/mul_4:z:0while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_3?
#while/lstm_cell_85/ReadVariableOp_3ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_3?
(while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_85/strided_slice_3/stack?
*while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_85/strided_slice_3/stack_1?
*while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_3/stack_2?
"while/lstm_cell_85/strided_slice_3StridedSlice+while/lstm_cell_85/ReadVariableOp_3:value:01while/lstm_cell_85/strided_slice_3/stack:output:03while/lstm_cell_85/strided_slice_3/stack_1:output:03while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_3?
while/lstm_cell_85/MatMul_7MatMulwhile/lstm_cell_85/mul_3:z:0+while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_7?
while/lstm_cell_85/add_4AddV2%while/lstm_cell_85/BiasAdd_3:output:0%while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_4?
while/lstm_cell_85/Sigmoid_2Sigmoidwhile/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_2?
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu_1?
while/lstm_cell_85/mul_6Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_85/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_85/ReadVariableOp$^while/lstm_cell_85/ReadVariableOp_1$^while/lstm_cell_85/ReadVariableOp_2$^while/lstm_cell_85/ReadVariableOp_3(^while/lstm_cell_85/split/ReadVariableOp*^while/lstm_cell_85/split_1/ReadVariableOp*"
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
*while_lstm_cell_85_readvariableop_resource,while_lstm_cell_85_readvariableop_resource_0"j
2while_lstm_cell_85_split_1_readvariableop_resource4while_lstm_cell_85_split_1_readvariableop_resource_0"f
0while_lstm_cell_85_split_readvariableop_resource2while_lstm_cell_85_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_85/ReadVariableOp!while/lstm_cell_85/ReadVariableOp2J
#while/lstm_cell_85/ReadVariableOp_1#while/lstm_cell_85/ReadVariableOp_12J
#while/lstm_cell_85/ReadVariableOp_2#while/lstm_cell_85/ReadVariableOp_22J
#while/lstm_cell_85/ReadVariableOp_3#while/lstm_cell_85/ReadVariableOp_32R
'while/lstm_cell_85/split/ReadVariableOp'while/lstm_cell_85/split/ReadVariableOp2V
)while/lstm_cell_85/split_1/ReadVariableOp)while/lstm_cell_85/split_1/ReadVariableOp: 
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
while_body_2829591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_85_split_readvariableop_resource_0:	?C
4while_lstm_cell_85_split_1_readvariableop_resource_0:	??
,while_lstm_cell_85_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_85_split_readvariableop_resource:	?A
2while_lstm_cell_85_split_1_readvariableop_resource:	?=
*while_lstm_cell_85_readvariableop_resource:	 ???!while/lstm_cell_85/ReadVariableOp?#while/lstm_cell_85/ReadVariableOp_1?#while/lstm_cell_85/ReadVariableOp_2?#while/lstm_cell_85/ReadVariableOp_3?'while/lstm_cell_85/split/ReadVariableOp?)while/lstm_cell_85/split_1/ReadVariableOp?
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
"while/lstm_cell_85/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_85/ones_like/Shape?
"while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_85/ones_like/Const?
while/lstm_cell_85/ones_likeFill+while/lstm_cell_85/ones_like/Shape:output:0+while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/ones_like?
 while/lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_85/dropout/Const?
while/lstm_cell_85/dropout/MulMul%while/lstm_cell_85/ones_like:output:0)while/lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_85/dropout/Mul?
 while/lstm_cell_85/dropout/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_85/dropout/Shape?
7while/lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ì?29
7while/lstm_cell_85/dropout/random_uniform/RandomUniform?
)while/lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_85/dropout/GreaterEqual/y?
'while/lstm_cell_85/dropout/GreaterEqualGreaterEqual@while/lstm_cell_85/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_85/dropout/GreaterEqual?
while/lstm_cell_85/dropout/CastCast+while/lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_85/dropout/Cast?
 while/lstm_cell_85/dropout/Mul_1Mul"while/lstm_cell_85/dropout/Mul:z:0#while/lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout/Mul_1?
"while/lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_1/Const?
 while/lstm_cell_85/dropout_1/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_1/Mul?
"while/lstm_cell_85/dropout_1/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_1/Shape?
9while/lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?˴2;
9while/lstm_cell_85/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_1/GreaterEqual/y?
)while/lstm_cell_85/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_1/GreaterEqual?
!while/lstm_cell_85/dropout_1/CastCast-while/lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_1/Cast?
"while/lstm_cell_85/dropout_1/Mul_1Mul$while/lstm_cell_85/dropout_1/Mul:z:0%while/lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_1/Mul_1?
"while/lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_2/Const?
 while/lstm_cell_85/dropout_2/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_2/Mul?
"while/lstm_cell_85/dropout_2/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_2/Shape?
9while/lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_85/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_2/GreaterEqual/y?
)while/lstm_cell_85/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_2/GreaterEqual?
!while/lstm_cell_85/dropout_2/CastCast-while/lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_2/Cast?
"while/lstm_cell_85/dropout_2/Mul_1Mul$while/lstm_cell_85/dropout_2/Mul:z:0%while/lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_2/Mul_1?
"while/lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_3/Const?
 while/lstm_cell_85/dropout_3/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_3/Mul?
"while/lstm_cell_85/dropout_3/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_3/Shape?
9while/lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2΀<2;
9while/lstm_cell_85/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_3/GreaterEqual/y?
)while/lstm_cell_85/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_3/GreaterEqual?
!while/lstm_cell_85/dropout_3/CastCast-while/lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_3/Cast?
"while/lstm_cell_85/dropout_3/Mul_1Mul$while/lstm_cell_85/dropout_3/Mul:z:0%while/lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_3/Mul_1?
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_85/split/split_dim?
'while/lstm_cell_85/split/ReadVariableOpReadVariableOp2while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_85/split/ReadVariableOp?
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_85/split?
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul?
while/lstm_cell_85/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_1?
while/lstm_cell_85/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_2?
while/lstm_cell_85/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_3?
$while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_85/split_1/split_dim?
)while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_85/split_1/ReadVariableOp?
while/lstm_cell_85/split_1Split-while/lstm_cell_85/split_1/split_dim:output:01while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_85/split_1?
while/lstm_cell_85/BiasAddBiasAdd#while/lstm_cell_85/MatMul:product:0#while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd?
while/lstm_cell_85/BiasAdd_1BiasAdd%while/lstm_cell_85/MatMul_1:product:0#while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_1?
while/lstm_cell_85/BiasAdd_2BiasAdd%while/lstm_cell_85/MatMul_2:product:0#while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_2?
while/lstm_cell_85/BiasAdd_3BiasAdd%while/lstm_cell_85/MatMul_3:product:0#while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_3?
while/lstm_cell_85/mulMulwhile_placeholder_2$while/lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul?
while/lstm_cell_85/mul_1Mulwhile_placeholder_2&while/lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_1?
while/lstm_cell_85/mul_2Mulwhile_placeholder_2&while/lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_2?
while/lstm_cell_85/mul_3Mulwhile_placeholder_2&while/lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_3?
!while/lstm_cell_85/ReadVariableOpReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_85/ReadVariableOp?
&while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_85/strided_slice/stack?
(while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice/stack_1?
(while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_85/strided_slice/stack_2?
 while/lstm_cell_85/strided_sliceStridedSlice)while/lstm_cell_85/ReadVariableOp:value:0/while/lstm_cell_85/strided_slice/stack:output:01while/lstm_cell_85/strided_slice/stack_1:output:01while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_85/strided_slice?
while/lstm_cell_85/MatMul_4MatMulwhile/lstm_cell_85/mul:z:0)while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_4?
while/lstm_cell_85/addAddV2#while/lstm_cell_85/BiasAdd:output:0%while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add?
while/lstm_cell_85/SigmoidSigmoidwhile/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid?
#while/lstm_cell_85/ReadVariableOp_1ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_1?
(while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice_1/stack?
*while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_85/strided_slice_1/stack_1?
*while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_1/stack_2?
"while/lstm_cell_85/strided_slice_1StridedSlice+while/lstm_cell_85/ReadVariableOp_1:value:01while/lstm_cell_85/strided_slice_1/stack:output:03while/lstm_cell_85/strided_slice_1/stack_1:output:03while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_1?
while/lstm_cell_85/MatMul_5MatMulwhile/lstm_cell_85/mul_1:z:0+while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_5?
while/lstm_cell_85/add_1AddV2%while/lstm_cell_85/BiasAdd_1:output:0%while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_1?
while/lstm_cell_85/Sigmoid_1Sigmoidwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_1?
while/lstm_cell_85/mul_4Mul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_4?
#while/lstm_cell_85/ReadVariableOp_2ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_2?
(while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_85/strided_slice_2/stack?
*while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_85/strided_slice_2/stack_1?
*while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_2/stack_2?
"while/lstm_cell_85/strided_slice_2StridedSlice+while/lstm_cell_85/ReadVariableOp_2:value:01while/lstm_cell_85/strided_slice_2/stack:output:03while/lstm_cell_85/strided_slice_2/stack_1:output:03while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_2?
while/lstm_cell_85/MatMul_6MatMulwhile/lstm_cell_85/mul_2:z:0+while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_6?
while/lstm_cell_85/add_2AddV2%while/lstm_cell_85/BiasAdd_2:output:0%while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_2?
while/lstm_cell_85/ReluReluwhile/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu?
while/lstm_cell_85/mul_5Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_5?
while/lstm_cell_85/add_3AddV2while/lstm_cell_85/mul_4:z:0while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_3?
#while/lstm_cell_85/ReadVariableOp_3ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_3?
(while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_85/strided_slice_3/stack?
*while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_85/strided_slice_3/stack_1?
*while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_3/stack_2?
"while/lstm_cell_85/strided_slice_3StridedSlice+while/lstm_cell_85/ReadVariableOp_3:value:01while/lstm_cell_85/strided_slice_3/stack:output:03while/lstm_cell_85/strided_slice_3/stack_1:output:03while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_3?
while/lstm_cell_85/MatMul_7MatMulwhile/lstm_cell_85/mul_3:z:0+while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_7?
while/lstm_cell_85/add_4AddV2%while/lstm_cell_85/BiasAdd_3:output:0%while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_4?
while/lstm_cell_85/Sigmoid_2Sigmoidwhile/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_2?
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu_1?
while/lstm_cell_85/mul_6Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_85/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_85/ReadVariableOp$^while/lstm_cell_85/ReadVariableOp_1$^while/lstm_cell_85/ReadVariableOp_2$^while/lstm_cell_85/ReadVariableOp_3(^while/lstm_cell_85/split/ReadVariableOp*^while/lstm_cell_85/split_1/ReadVariableOp*"
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
*while_lstm_cell_85_readvariableop_resource,while_lstm_cell_85_readvariableop_resource_0"j
2while_lstm_cell_85_split_1_readvariableop_resource4while_lstm_cell_85_split_1_readvariableop_resource_0"f
0while_lstm_cell_85_split_readvariableop_resource2while_lstm_cell_85_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_85/ReadVariableOp!while/lstm_cell_85/ReadVariableOp2J
#while/lstm_cell_85/ReadVariableOp_1#while/lstm_cell_85/ReadVariableOp_12J
#while/lstm_cell_85/ReadVariableOp_2#while/lstm_cell_85/ReadVariableOp_22J
#while/lstm_cell_85/ReadVariableOp_3#while/lstm_cell_85/ReadVariableOp_32R
'while/lstm_cell_85/split/ReadVariableOp'while/lstm_cell_85/split/ReadVariableOp2V
)while/lstm_cell_85/split_1/ReadVariableOp)while/lstm_cell_85/split_1/ReadVariableOp: 
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
?,
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829820

inputs"
lstm_85_2829789:	?
lstm_85_2829791:	?"
lstm_85_2829793:	 ?#
dense_102_2829796:  
dense_102_2829798: #
dense_103_2829801: 
dense_103_2829803:
identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?0dense_103/bias/Regularizer/Square/ReadVariableOp?lstm_85/StatefulPartitionedCall?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
lstm_85/StatefulPartitionedCallStatefulPartitionedCallinputslstm_85_2829789lstm_85_2829791lstm_85_2829793*
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28297562!
lstm_85/StatefulPartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0dense_102_2829796dense_102_2829798*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_28293372#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_2829801dense_103_2829803*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_28293592#
!dense_103/StatefulPartitionedCall?
reshape_51/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_28293782
reshape_51/PartitionedCall?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_85_2829789*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/mul?
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_103_2829803*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mul?
IdentityIdentity#reshape_51/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall1^dense_103/bias/Regularizer/Square/ReadVariableOp ^lstm_85/StatefulPartitionedCall>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2d
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829924
input_35"
lstm_85_2829893:	?
lstm_85_2829895:	?"
lstm_85_2829897:	 ?#
dense_102_2829900:  
dense_102_2829902: #
dense_103_2829905: 
dense_103_2829907:
identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?0dense_103/bias/Regularizer/Square/ReadVariableOp?lstm_85/StatefulPartitionedCall?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
lstm_85/StatefulPartitionedCallStatefulPartitionedCallinput_35lstm_85_2829893lstm_85_2829895lstm_85_2829897*
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28297562!
lstm_85/StatefulPartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0dense_102_2829900dense_102_2829902*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_28293372#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_2829905dense_103_2829907*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_28293592#
!dense_103/StatefulPartitionedCall?
reshape_51/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_28293782
reshape_51/PartitionedCall?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_85_2829893*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/mul?
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_103_2829907*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mul?
IdentityIdentity#reshape_51/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall1^dense_103/bias/Regularizer/Square/ReadVariableOp ^lstm_85/StatefulPartitionedCall>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2d
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_35
?
?
while_cond_2831272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2831272___redundant_placeholder05
1while_while_cond_2831272___redundant_placeholder15
1while_while_cond_2831272___redundant_placeholder25
1while_while_cond_2831272___redundant_placeholder3
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_2828498

inputs'
lstm_cell_85_2828410:	?#
lstm_cell_85_2828412:	?'
lstm_cell_85_2828414:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_85/StatefulPartitionedCall?whileD
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
$lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_85_2828410lstm_cell_85_2828412lstm_cell_85_2828414*
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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_28284092&
$lstm_cell_85/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_85_2828410lstm_cell_85_2828412lstm_cell_85_2828414*
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
while_body_2828423*
condR
while_cond_2828422*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_85_2828410*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_85/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_85/StatefulPartitionedCall$lstm_cell_85/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_lstm_85_layer_call_fn_2831746

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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28293182
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
c
G__inference_reshape_51_layer_call_and_return_conditional_losses_2829378

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
?
?
+__inference_dense_102_layer_call_fn_2831777

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
F__inference_dense_102_layer_call_and_return_conditional_losses_28293372
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
while_cond_2829184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2829184___redundant_placeholder05
1while_while_cond_2829184___redundant_placeholder15
1while_while_cond_2829184___redundant_placeholder25
1while_while_cond_2829184___redundant_placeholder3
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
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2830234

inputsE
2lstm_85_lstm_cell_85_split_readvariableop_resource:	?C
4lstm_85_lstm_cell_85_split_1_readvariableop_resource:	??
,lstm_85_lstm_cell_85_readvariableop_resource:	 ?:
(dense_102_matmul_readvariableop_resource:  7
)dense_102_biasadd_readvariableop_resource: :
(dense_103_matmul_readvariableop_resource: 7
)dense_103_biasadd_readvariableop_resource:
identity?? dense_102/BiasAdd/ReadVariableOp?dense_102/MatMul/ReadVariableOp? dense_103/BiasAdd/ReadVariableOp?dense_103/MatMul/ReadVariableOp?0dense_103/bias/Regularizer/Square/ReadVariableOp?#lstm_85/lstm_cell_85/ReadVariableOp?%lstm_85/lstm_cell_85/ReadVariableOp_1?%lstm_85/lstm_cell_85/ReadVariableOp_2?%lstm_85/lstm_cell_85/ReadVariableOp_3?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?)lstm_85/lstm_cell_85/split/ReadVariableOp?+lstm_85/lstm_cell_85/split_1/ReadVariableOp?lstm_85/whileT
lstm_85/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_85/Shape?
lstm_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_85/strided_slice/stack?
lstm_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_85/strided_slice/stack_1?
lstm_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_85/strided_slice/stack_2?
lstm_85/strided_sliceStridedSlicelstm_85/Shape:output:0$lstm_85/strided_slice/stack:output:0&lstm_85/strided_slice/stack_1:output:0&lstm_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_85/strided_slicel
lstm_85/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros/mul/y?
lstm_85/zeros/mulMullstm_85/strided_slice:output:0lstm_85/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros/mulo
lstm_85/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_85/zeros/Less/y?
lstm_85/zeros/LessLesslstm_85/zeros/mul:z:0lstm_85/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros/Lessr
lstm_85/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros/packed/1?
lstm_85/zeros/packedPacklstm_85/strided_slice:output:0lstm_85/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_85/zeros/packedo
lstm_85/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_85/zeros/Const?
lstm_85/zerosFilllstm_85/zeros/packed:output:0lstm_85/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/zerosp
lstm_85/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros_1/mul/y?
lstm_85/zeros_1/mulMullstm_85/strided_slice:output:0lstm_85/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros_1/muls
lstm_85/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_85/zeros_1/Less/y?
lstm_85/zeros_1/LessLesslstm_85/zeros_1/mul:z:0lstm_85/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros_1/Lessv
lstm_85/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros_1/packed/1?
lstm_85/zeros_1/packedPacklstm_85/strided_slice:output:0!lstm_85/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_85/zeros_1/packeds
lstm_85/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_85/zeros_1/Const?
lstm_85/zeros_1Filllstm_85/zeros_1/packed:output:0lstm_85/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/zeros_1?
lstm_85/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_85/transpose/perm?
lstm_85/transpose	Transposeinputslstm_85/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_85/transposeg
lstm_85/Shape_1Shapelstm_85/transpose:y:0*
T0*
_output_shapes
:2
lstm_85/Shape_1?
lstm_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_85/strided_slice_1/stack?
lstm_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_1/stack_1?
lstm_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_1/stack_2?
lstm_85/strided_slice_1StridedSlicelstm_85/Shape_1:output:0&lstm_85/strided_slice_1/stack:output:0(lstm_85/strided_slice_1/stack_1:output:0(lstm_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_85/strided_slice_1?
#lstm_85/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_85/TensorArrayV2/element_shape?
lstm_85/TensorArrayV2TensorListReserve,lstm_85/TensorArrayV2/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_85/TensorArrayV2?
=lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_85/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_85/transpose:y:0Flstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_85/TensorArrayUnstack/TensorListFromTensor?
lstm_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_85/strided_slice_2/stack?
lstm_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_2/stack_1?
lstm_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_2/stack_2?
lstm_85/strided_slice_2StridedSlicelstm_85/transpose:y:0&lstm_85/strided_slice_2/stack:output:0(lstm_85/strided_slice_2/stack_1:output:0(lstm_85/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_85/strided_slice_2?
$lstm_85/lstm_cell_85/ones_like/ShapeShapelstm_85/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_85/lstm_cell_85/ones_like/Shape?
$lstm_85/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_85/lstm_cell_85/ones_like/Const?
lstm_85/lstm_cell_85/ones_likeFill-lstm_85/lstm_cell_85/ones_like/Shape:output:0-lstm_85/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/ones_like?
$lstm_85/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_85/lstm_cell_85/split/split_dim?
)lstm_85/lstm_cell_85/split/ReadVariableOpReadVariableOp2lstm_85_lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_85/lstm_cell_85/split/ReadVariableOp?
lstm_85/lstm_cell_85/splitSplit-lstm_85/lstm_cell_85/split/split_dim:output:01lstm_85/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_85/lstm_cell_85/split?
lstm_85/lstm_cell_85/MatMulMatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul?
lstm_85/lstm_cell_85/MatMul_1MatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_1?
lstm_85/lstm_cell_85/MatMul_2MatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_2?
lstm_85/lstm_cell_85/MatMul_3MatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_3?
&lstm_85/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_85/lstm_cell_85/split_1/split_dim?
+lstm_85/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4lstm_85_lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_85/lstm_cell_85/split_1/ReadVariableOp?
lstm_85/lstm_cell_85/split_1Split/lstm_85/lstm_cell_85/split_1/split_dim:output:03lstm_85/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_85/lstm_cell_85/split_1?
lstm_85/lstm_cell_85/BiasAddBiasAdd%lstm_85/lstm_cell_85/MatMul:product:0%lstm_85/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/BiasAdd?
lstm_85/lstm_cell_85/BiasAdd_1BiasAdd'lstm_85/lstm_cell_85/MatMul_1:product:0%lstm_85/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/BiasAdd_1?
lstm_85/lstm_cell_85/BiasAdd_2BiasAdd'lstm_85/lstm_cell_85/MatMul_2:product:0%lstm_85/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/BiasAdd_2?
lstm_85/lstm_cell_85/BiasAdd_3BiasAdd'lstm_85/lstm_cell_85/MatMul_3:product:0%lstm_85/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/BiasAdd_3?
lstm_85/lstm_cell_85/mulMullstm_85/zeros:output:0'lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul?
lstm_85/lstm_cell_85/mul_1Mullstm_85/zeros:output:0'lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_1?
lstm_85/lstm_cell_85/mul_2Mullstm_85/zeros:output:0'lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_2?
lstm_85/lstm_cell_85/mul_3Mullstm_85/zeros:output:0'lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_3?
#lstm_85/lstm_cell_85/ReadVariableOpReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_85/lstm_cell_85/ReadVariableOp?
(lstm_85/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_85/lstm_cell_85/strided_slice/stack?
*lstm_85/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_85/lstm_cell_85/strided_slice/stack_1?
*lstm_85/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_85/lstm_cell_85/strided_slice/stack_2?
"lstm_85/lstm_cell_85/strided_sliceStridedSlice+lstm_85/lstm_cell_85/ReadVariableOp:value:01lstm_85/lstm_cell_85/strided_slice/stack:output:03lstm_85/lstm_cell_85/strided_slice/stack_1:output:03lstm_85/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_85/lstm_cell_85/strided_slice?
lstm_85/lstm_cell_85/MatMul_4MatMullstm_85/lstm_cell_85/mul:z:0+lstm_85/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_4?
lstm_85/lstm_cell_85/addAddV2%lstm_85/lstm_cell_85/BiasAdd:output:0'lstm_85/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add?
lstm_85/lstm_cell_85/SigmoidSigmoidlstm_85/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/Sigmoid?
%lstm_85/lstm_cell_85/ReadVariableOp_1ReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_85/lstm_cell_85/ReadVariableOp_1?
*lstm_85/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_85/lstm_cell_85/strided_slice_1/stack?
,lstm_85/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_85/lstm_cell_85/strided_slice_1/stack_1?
,lstm_85/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_85/lstm_cell_85/strided_slice_1/stack_2?
$lstm_85/lstm_cell_85/strided_slice_1StridedSlice-lstm_85/lstm_cell_85/ReadVariableOp_1:value:03lstm_85/lstm_cell_85/strided_slice_1/stack:output:05lstm_85/lstm_cell_85/strided_slice_1/stack_1:output:05lstm_85/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_85/lstm_cell_85/strided_slice_1?
lstm_85/lstm_cell_85/MatMul_5MatMullstm_85/lstm_cell_85/mul_1:z:0-lstm_85/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_5?
lstm_85/lstm_cell_85/add_1AddV2'lstm_85/lstm_cell_85/BiasAdd_1:output:0'lstm_85/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_1?
lstm_85/lstm_cell_85/Sigmoid_1Sigmoidlstm_85/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/Sigmoid_1?
lstm_85/lstm_cell_85/mul_4Mul"lstm_85/lstm_cell_85/Sigmoid_1:y:0lstm_85/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_4?
%lstm_85/lstm_cell_85/ReadVariableOp_2ReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_85/lstm_cell_85/ReadVariableOp_2?
*lstm_85/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_85/lstm_cell_85/strided_slice_2/stack?
,lstm_85/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_85/lstm_cell_85/strided_slice_2/stack_1?
,lstm_85/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_85/lstm_cell_85/strided_slice_2/stack_2?
$lstm_85/lstm_cell_85/strided_slice_2StridedSlice-lstm_85/lstm_cell_85/ReadVariableOp_2:value:03lstm_85/lstm_cell_85/strided_slice_2/stack:output:05lstm_85/lstm_cell_85/strided_slice_2/stack_1:output:05lstm_85/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_85/lstm_cell_85/strided_slice_2?
lstm_85/lstm_cell_85/MatMul_6MatMullstm_85/lstm_cell_85/mul_2:z:0-lstm_85/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_6?
lstm_85/lstm_cell_85/add_2AddV2'lstm_85/lstm_cell_85/BiasAdd_2:output:0'lstm_85/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_2?
lstm_85/lstm_cell_85/ReluRelulstm_85/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/Relu?
lstm_85/lstm_cell_85/mul_5Mul lstm_85/lstm_cell_85/Sigmoid:y:0'lstm_85/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_5?
lstm_85/lstm_cell_85/add_3AddV2lstm_85/lstm_cell_85/mul_4:z:0lstm_85/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_3?
%lstm_85/lstm_cell_85/ReadVariableOp_3ReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_85/lstm_cell_85/ReadVariableOp_3?
*lstm_85/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_85/lstm_cell_85/strided_slice_3/stack?
,lstm_85/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_85/lstm_cell_85/strided_slice_3/stack_1?
,lstm_85/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_85/lstm_cell_85/strided_slice_3/stack_2?
$lstm_85/lstm_cell_85/strided_slice_3StridedSlice-lstm_85/lstm_cell_85/ReadVariableOp_3:value:03lstm_85/lstm_cell_85/strided_slice_3/stack:output:05lstm_85/lstm_cell_85/strided_slice_3/stack_1:output:05lstm_85/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_85/lstm_cell_85/strided_slice_3?
lstm_85/lstm_cell_85/MatMul_7MatMullstm_85/lstm_cell_85/mul_3:z:0-lstm_85/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_7?
lstm_85/lstm_cell_85/add_4AddV2'lstm_85/lstm_cell_85/BiasAdd_3:output:0'lstm_85/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_4?
lstm_85/lstm_cell_85/Sigmoid_2Sigmoidlstm_85/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/Sigmoid_2?
lstm_85/lstm_cell_85/Relu_1Relulstm_85/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/Relu_1?
lstm_85/lstm_cell_85/mul_6Mul"lstm_85/lstm_cell_85/Sigmoid_2:y:0)lstm_85/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_6?
%lstm_85/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_85/TensorArrayV2_1/element_shape?
lstm_85/TensorArrayV2_1TensorListReserve.lstm_85/TensorArrayV2_1/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_85/TensorArrayV2_1^
lstm_85/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/time?
 lstm_85/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_85/while/maximum_iterationsz
lstm_85/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/while/loop_counter?
lstm_85/whileWhile#lstm_85/while/loop_counter:output:0)lstm_85/while/maximum_iterations:output:0lstm_85/time:output:0 lstm_85/TensorArrayV2_1:handle:0lstm_85/zeros:output:0lstm_85/zeros_1:output:0 lstm_85/strided_slice_1:output:0?lstm_85/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_85_lstm_cell_85_split_readvariableop_resource4lstm_85_lstm_cell_85_split_1_readvariableop_resource,lstm_85_lstm_cell_85_readvariableop_resource*
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
lstm_85_while_body_2830073*&
condR
lstm_85_while_cond_2830072*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_85/while?
8lstm_85/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_85/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_85/TensorArrayV2Stack/TensorListStackTensorListStacklstm_85/while:output:3Alstm_85/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_85/TensorArrayV2Stack/TensorListStack?
lstm_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_85/strided_slice_3/stack?
lstm_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_85/strided_slice_3/stack_1?
lstm_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_3/stack_2?
lstm_85/strided_slice_3StridedSlice3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_85/strided_slice_3/stack:output:0(lstm_85/strided_slice_3/stack_1:output:0(lstm_85/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_85/strided_slice_3?
lstm_85/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_85/transpose_1/perm?
lstm_85/transpose_1	Transpose3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_85/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_85/transpose_1v
lstm_85/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_85/runtime?
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_102/MatMul/ReadVariableOp?
dense_102/MatMulMatMul lstm_85/strided_slice_3:output:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_102/MatMul?
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_102/BiasAdd/ReadVariableOp?
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_102/BiasAddv
dense_102/ReluReludense_102/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_102/Relu?
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_103/MatMul/ReadVariableOp?
dense_103/MatMulMatMuldense_102/Relu:activations:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_103/MatMul?
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_103/BiasAdd/ReadVariableOp?
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_103/BiasAddn
reshape_51/ShapeShapedense_103/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_51/Shape?
reshape_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_51/strided_slice/stack?
 reshape_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_1?
 reshape_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_2?
reshape_51/strided_sliceStridedSlicereshape_51/Shape:output:0'reshape_51/strided_slice/stack:output:0)reshape_51/strided_slice/stack_1:output:0)reshape_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_51/strided_slicez
reshape_51/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/1z
reshape_51/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/2?
reshape_51/Reshape/shapePack!reshape_51/strided_slice:output:0#reshape_51/Reshape/shape/1:output:0#reshape_51/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_51/Reshape/shape?
reshape_51/ReshapeReshapedense_103/BiasAdd:output:0!reshape_51/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_51/Reshape?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_85_lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/mul?
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mulz
IdentityIdentityreshape_51/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp1^dense_103/bias/Regularizer/Square/ReadVariableOp$^lstm_85/lstm_cell_85/ReadVariableOp&^lstm_85/lstm_cell_85/ReadVariableOp_1&^lstm_85/lstm_cell_85/ReadVariableOp_2&^lstm_85/lstm_cell_85/ReadVariableOp_3>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp*^lstm_85/lstm_cell_85/split/ReadVariableOp,^lstm_85/lstm_cell_85/split_1/ReadVariableOp^lstm_85/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2d
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp2J
#lstm_85/lstm_cell_85/ReadVariableOp#lstm_85/lstm_cell_85/ReadVariableOp2N
%lstm_85/lstm_cell_85/ReadVariableOp_1%lstm_85/lstm_cell_85/ReadVariableOp_12N
%lstm_85/lstm_cell_85/ReadVariableOp_2%lstm_85/lstm_cell_85/ReadVariableOp_22N
%lstm_85/lstm_cell_85/ReadVariableOp_3%lstm_85/lstm_cell_85/ReadVariableOp_32~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_85/lstm_cell_85/split/ReadVariableOp)lstm_85/lstm_cell_85/split/ReadVariableOp2Z
+lstm_85/lstm_cell_85/split_1/ReadVariableOp+lstm_85/lstm_cell_85/split_1/ReadVariableOp2
lstm_85/whilelstm_85/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_dense_103_layer_call_and_return_conditional_losses_2829359

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_103/bias/Regularizer/Square/ReadVariableOp?
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
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_103/bias/Regularizer/Square/ReadVariableOp*"
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
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831163
inputs_0=
*lstm_cell_85_split_readvariableop_resource:	?;
,lstm_cell_85_split_1_readvariableop_resource:	?7
$lstm_cell_85_readvariableop_resource:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_85/ReadVariableOp?lstm_cell_85/ReadVariableOp_1?lstm_cell_85/ReadVariableOp_2?lstm_cell_85/ReadVariableOp_3?!lstm_cell_85/split/ReadVariableOp?#lstm_cell_85/split_1/ReadVariableOp?whileF
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
lstm_cell_85/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_85/ones_like/Shape?
lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_85/ones_like/Const?
lstm_cell_85/ones_likeFill%lstm_cell_85/ones_like/Shape:output:0%lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/ones_like}
lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout/Const?
lstm_cell_85/dropout/MulMullstm_cell_85/ones_like:output:0#lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Mul?
lstm_cell_85/dropout/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout/Shape?
1lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_85/dropout/random_uniform/RandomUniform?
#lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_85/dropout/GreaterEqual/y?
!lstm_cell_85/dropout/GreaterEqualGreaterEqual:lstm_cell_85/dropout/random_uniform/RandomUniform:output:0,lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_85/dropout/GreaterEqual?
lstm_cell_85/dropout/CastCast%lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Cast?
lstm_cell_85/dropout/Mul_1Mullstm_cell_85/dropout/Mul:z:0lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Mul_1?
lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_1/Const?
lstm_cell_85/dropout_1/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Mul?
lstm_cell_85/dropout_1/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_1/Shape?
3lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_85/dropout_1/random_uniform/RandomUniform?
%lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_1/GreaterEqual/y?
#lstm_cell_85/dropout_1/GreaterEqualGreaterEqual<lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_1/GreaterEqual?
lstm_cell_85/dropout_1/CastCast'lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Cast?
lstm_cell_85/dropout_1/Mul_1Mullstm_cell_85/dropout_1/Mul:z:0lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Mul_1?
lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_2/Const?
lstm_cell_85/dropout_2/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Mul?
lstm_cell_85/dropout_2/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_2/Shape?
3lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_85/dropout_2/random_uniform/RandomUniform?
%lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_2/GreaterEqual/y?
#lstm_cell_85/dropout_2/GreaterEqualGreaterEqual<lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_2/GreaterEqual?
lstm_cell_85/dropout_2/CastCast'lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Cast?
lstm_cell_85/dropout_2/Mul_1Mullstm_cell_85/dropout_2/Mul:z:0lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Mul_1?
lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_3/Const?
lstm_cell_85/dropout_3/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Mul?
lstm_cell_85/dropout_3/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_3/Shape?
3lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ڈ25
3lstm_cell_85/dropout_3/random_uniform/RandomUniform?
%lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_3/GreaterEqual/y?
#lstm_cell_85/dropout_3/GreaterEqualGreaterEqual<lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_3/GreaterEqual?
lstm_cell_85/dropout_3/CastCast'lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Cast?
lstm_cell_85/dropout_3/Mul_1Mullstm_cell_85/dropout_3/Mul:z:0lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Mul_1~
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_85/split/split_dim?
!lstm_cell_85/split/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_85/split/ReadVariableOp?
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0)lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_85/split?
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul?
lstm_cell_85/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_1?
lstm_cell_85/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_2?
lstm_cell_85/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_3?
lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_85/split_1/split_dim?
#lstm_cell_85/split_1/ReadVariableOpReadVariableOp,lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_85/split_1/ReadVariableOp?
lstm_cell_85/split_1Split'lstm_cell_85/split_1/split_dim:output:0+lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_85/split_1?
lstm_cell_85/BiasAddBiasAddlstm_cell_85/MatMul:product:0lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd?
lstm_cell_85/BiasAdd_1BiasAddlstm_cell_85/MatMul_1:product:0lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_1?
lstm_cell_85/BiasAdd_2BiasAddlstm_cell_85/MatMul_2:product:0lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_2?
lstm_cell_85/BiasAdd_3BiasAddlstm_cell_85/MatMul_3:product:0lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_3?
lstm_cell_85/mulMulzeros:output:0lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul?
lstm_cell_85/mul_1Mulzeros:output:0 lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_1?
lstm_cell_85/mul_2Mulzeros:output:0 lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_2?
lstm_cell_85/mul_3Mulzeros:output:0 lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_3?
lstm_cell_85/ReadVariableOpReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp?
 lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_85/strided_slice/stack?
"lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice/stack_1?
"lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_85/strided_slice/stack_2?
lstm_cell_85/strided_sliceStridedSlice#lstm_cell_85/ReadVariableOp:value:0)lstm_cell_85/strided_slice/stack:output:0+lstm_cell_85/strided_slice/stack_1:output:0+lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice?
lstm_cell_85/MatMul_4MatMullstm_cell_85/mul:z:0#lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_4?
lstm_cell_85/addAddV2lstm_cell_85/BiasAdd:output:0lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add
lstm_cell_85/SigmoidSigmoidlstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid?
lstm_cell_85/ReadVariableOp_1ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_1?
"lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice_1/stack?
$lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_85/strided_slice_1/stack_1?
$lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_1/stack_2?
lstm_cell_85/strided_slice_1StridedSlice%lstm_cell_85/ReadVariableOp_1:value:0+lstm_cell_85/strided_slice_1/stack:output:0-lstm_cell_85/strided_slice_1/stack_1:output:0-lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_1?
lstm_cell_85/MatMul_5MatMullstm_cell_85/mul_1:z:0%lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_5?
lstm_cell_85/add_1AddV2lstm_cell_85/BiasAdd_1:output:0lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_1?
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_1?
lstm_cell_85/mul_4Mullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_4?
lstm_cell_85/ReadVariableOp_2ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_2?
"lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_85/strided_slice_2/stack?
$lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_85/strided_slice_2/stack_1?
$lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_2/stack_2?
lstm_cell_85/strided_slice_2StridedSlice%lstm_cell_85/ReadVariableOp_2:value:0+lstm_cell_85/strided_slice_2/stack:output:0-lstm_cell_85/strided_slice_2/stack_1:output:0-lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_2?
lstm_cell_85/MatMul_6MatMullstm_cell_85/mul_2:z:0%lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_6?
lstm_cell_85/add_2AddV2lstm_cell_85/BiasAdd_2:output:0lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_2x
lstm_cell_85/ReluRelulstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu?
lstm_cell_85/mul_5Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_5?
lstm_cell_85/add_3AddV2lstm_cell_85/mul_4:z:0lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_3?
lstm_cell_85/ReadVariableOp_3ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_3?
"lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_85/strided_slice_3/stack?
$lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_85/strided_slice_3/stack_1?
$lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_3/stack_2?
lstm_cell_85/strided_slice_3StridedSlice%lstm_cell_85/ReadVariableOp_3:value:0+lstm_cell_85/strided_slice_3/stack:output:0-lstm_cell_85/strided_slice_3/stack_1:output:0-lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_3?
lstm_cell_85/MatMul_7MatMullstm_cell_85/mul_3:z:0%lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_7?
lstm_cell_85/add_4AddV2lstm_cell_85/BiasAdd_3:output:0lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_4?
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_2|
lstm_cell_85/Relu_1Relulstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu_1?
lstm_cell_85/mul_6Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_85_split_readvariableop_resource,lstm_cell_85_split_1_readvariableop_resource$lstm_cell_85_readvariableop_resource*
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
while_body_2830998*
condR
while_cond_2830997*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_85/ReadVariableOp^lstm_cell_85/ReadVariableOp_1^lstm_cell_85/ReadVariableOp_2^lstm_cell_85/ReadVariableOp_3"^lstm_cell_85/split/ReadVariableOp$^lstm_cell_85/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_85/ReadVariableOplstm_cell_85/ReadVariableOp2>
lstm_cell_85/ReadVariableOp_1lstm_cell_85/ReadVariableOp_12>
lstm_cell_85/ReadVariableOp_2lstm_cell_85/ReadVariableOp_22>
lstm_cell_85/ReadVariableOp_3lstm_cell_85/ReadVariableOp_32F
!lstm_cell_85/split/ReadVariableOp!lstm_cell_85/split/ReadVariableOp2J
#lstm_cell_85/split_1/ReadVariableOp#lstm_cell_85/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
D__inference_lstm_85_layer_call_and_return_conditional_losses_2829756

inputs=
*lstm_cell_85_split_readvariableop_resource:	?;
,lstm_cell_85_split_1_readvariableop_resource:	?7
$lstm_cell_85_readvariableop_resource:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_85/ReadVariableOp?lstm_cell_85/ReadVariableOp_1?lstm_cell_85/ReadVariableOp_2?lstm_cell_85/ReadVariableOp_3?!lstm_cell_85/split/ReadVariableOp?#lstm_cell_85/split_1/ReadVariableOp?whileD
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
lstm_cell_85/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_85/ones_like/Shape?
lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_85/ones_like/Const?
lstm_cell_85/ones_likeFill%lstm_cell_85/ones_like/Shape:output:0%lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/ones_like}
lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout/Const?
lstm_cell_85/dropout/MulMullstm_cell_85/ones_like:output:0#lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Mul?
lstm_cell_85/dropout/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout/Shape?
1lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?23
1lstm_cell_85/dropout/random_uniform/RandomUniform?
#lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_85/dropout/GreaterEqual/y?
!lstm_cell_85/dropout/GreaterEqualGreaterEqual:lstm_cell_85/dropout/random_uniform/RandomUniform:output:0,lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_85/dropout/GreaterEqual?
lstm_cell_85/dropout/CastCast%lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Cast?
lstm_cell_85/dropout/Mul_1Mullstm_cell_85/dropout/Mul:z:0lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Mul_1?
lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_1/Const?
lstm_cell_85/dropout_1/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Mul?
lstm_cell_85/dropout_1/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_1/Shape?
3lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_85/dropout_1/random_uniform/RandomUniform?
%lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_1/GreaterEqual/y?
#lstm_cell_85/dropout_1/GreaterEqualGreaterEqual<lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_1/GreaterEqual?
lstm_cell_85/dropout_1/CastCast'lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Cast?
lstm_cell_85/dropout_1/Mul_1Mullstm_cell_85/dropout_1/Mul:z:0lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Mul_1?
lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_2/Const?
lstm_cell_85/dropout_2/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Mul?
lstm_cell_85/dropout_2/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_2/Shape?
3lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ϻ525
3lstm_cell_85/dropout_2/random_uniform/RandomUniform?
%lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_2/GreaterEqual/y?
#lstm_cell_85/dropout_2/GreaterEqualGreaterEqual<lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_2/GreaterEqual?
lstm_cell_85/dropout_2/CastCast'lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Cast?
lstm_cell_85/dropout_2/Mul_1Mullstm_cell_85/dropout_2/Mul:z:0lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Mul_1?
lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_3/Const?
lstm_cell_85/dropout_3/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Mul?
lstm_cell_85/dropout_3/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_3/Shape?
3lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_85/dropout_3/random_uniform/RandomUniform?
%lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_3/GreaterEqual/y?
#lstm_cell_85/dropout_3/GreaterEqualGreaterEqual<lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_3/GreaterEqual?
lstm_cell_85/dropout_3/CastCast'lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Cast?
lstm_cell_85/dropout_3/Mul_1Mullstm_cell_85/dropout_3/Mul:z:0lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Mul_1~
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_85/split/split_dim?
!lstm_cell_85/split/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_85/split/ReadVariableOp?
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0)lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_85/split?
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul?
lstm_cell_85/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_1?
lstm_cell_85/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_2?
lstm_cell_85/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_3?
lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_85/split_1/split_dim?
#lstm_cell_85/split_1/ReadVariableOpReadVariableOp,lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_85/split_1/ReadVariableOp?
lstm_cell_85/split_1Split'lstm_cell_85/split_1/split_dim:output:0+lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_85/split_1?
lstm_cell_85/BiasAddBiasAddlstm_cell_85/MatMul:product:0lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd?
lstm_cell_85/BiasAdd_1BiasAddlstm_cell_85/MatMul_1:product:0lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_1?
lstm_cell_85/BiasAdd_2BiasAddlstm_cell_85/MatMul_2:product:0lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_2?
lstm_cell_85/BiasAdd_3BiasAddlstm_cell_85/MatMul_3:product:0lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_3?
lstm_cell_85/mulMulzeros:output:0lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul?
lstm_cell_85/mul_1Mulzeros:output:0 lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_1?
lstm_cell_85/mul_2Mulzeros:output:0 lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_2?
lstm_cell_85/mul_3Mulzeros:output:0 lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_3?
lstm_cell_85/ReadVariableOpReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp?
 lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_85/strided_slice/stack?
"lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice/stack_1?
"lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_85/strided_slice/stack_2?
lstm_cell_85/strided_sliceStridedSlice#lstm_cell_85/ReadVariableOp:value:0)lstm_cell_85/strided_slice/stack:output:0+lstm_cell_85/strided_slice/stack_1:output:0+lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice?
lstm_cell_85/MatMul_4MatMullstm_cell_85/mul:z:0#lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_4?
lstm_cell_85/addAddV2lstm_cell_85/BiasAdd:output:0lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add
lstm_cell_85/SigmoidSigmoidlstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid?
lstm_cell_85/ReadVariableOp_1ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_1?
"lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice_1/stack?
$lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_85/strided_slice_1/stack_1?
$lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_1/stack_2?
lstm_cell_85/strided_slice_1StridedSlice%lstm_cell_85/ReadVariableOp_1:value:0+lstm_cell_85/strided_slice_1/stack:output:0-lstm_cell_85/strided_slice_1/stack_1:output:0-lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_1?
lstm_cell_85/MatMul_5MatMullstm_cell_85/mul_1:z:0%lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_5?
lstm_cell_85/add_1AddV2lstm_cell_85/BiasAdd_1:output:0lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_1?
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_1?
lstm_cell_85/mul_4Mullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_4?
lstm_cell_85/ReadVariableOp_2ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_2?
"lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_85/strided_slice_2/stack?
$lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_85/strided_slice_2/stack_1?
$lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_2/stack_2?
lstm_cell_85/strided_slice_2StridedSlice%lstm_cell_85/ReadVariableOp_2:value:0+lstm_cell_85/strided_slice_2/stack:output:0-lstm_cell_85/strided_slice_2/stack_1:output:0-lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_2?
lstm_cell_85/MatMul_6MatMullstm_cell_85/mul_2:z:0%lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_6?
lstm_cell_85/add_2AddV2lstm_cell_85/BiasAdd_2:output:0lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_2x
lstm_cell_85/ReluRelulstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu?
lstm_cell_85/mul_5Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_5?
lstm_cell_85/add_3AddV2lstm_cell_85/mul_4:z:0lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_3?
lstm_cell_85/ReadVariableOp_3ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_3?
"lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_85/strided_slice_3/stack?
$lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_85/strided_slice_3/stack_1?
$lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_3/stack_2?
lstm_cell_85/strided_slice_3StridedSlice%lstm_cell_85/ReadVariableOp_3:value:0+lstm_cell_85/strided_slice_3/stack:output:0-lstm_cell_85/strided_slice_3/stack_1:output:0-lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_3?
lstm_cell_85/MatMul_7MatMullstm_cell_85/mul_3:z:0%lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_7?
lstm_cell_85/add_4AddV2lstm_cell_85/BiasAdd_3:output:0lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_4?
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_2|
lstm_cell_85/Relu_1Relulstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu_1?
lstm_cell_85/mul_6Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_85_split_readvariableop_resource,lstm_cell_85_split_1_readvariableop_resource$lstm_cell_85_readvariableop_resource*
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
while_body_2829591*
condR
while_cond_2829590*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_85/ReadVariableOp^lstm_cell_85/ReadVariableOp_1^lstm_cell_85/ReadVariableOp_2^lstm_cell_85/ReadVariableOp_3"^lstm_cell_85/split/ReadVariableOp$^lstm_cell_85/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_85/ReadVariableOplstm_cell_85/ReadVariableOp2>
lstm_cell_85/ReadVariableOp_1lstm_cell_85/ReadVariableOp_12>
lstm_cell_85/ReadVariableOp_2lstm_cell_85/ReadVariableOp_22>
lstm_cell_85/ReadVariableOp_3lstm_cell_85/ReadVariableOp_32F
!lstm_cell_85/split/ReadVariableOp!lstm_cell_85/split/ReadVariableOp2J
#lstm_cell_85/split_1/ReadVariableOp#lstm_cell_85/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?R
?
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2831924

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2,
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
?B
?
 __inference__traced_save_2832189
file_prefix/
+savev2_dense_102_kernel_read_readvariableop-
)savev2_dense_102_bias_read_readvariableop/
+savev2_dense_103_kernel_read_readvariableop-
)savev2_dense_103_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_85_lstm_cell_85_kernel_read_readvariableopD
@savev2_lstm_85_lstm_cell_85_recurrent_kernel_read_readvariableop8
4savev2_lstm_85_lstm_cell_85_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_102_kernel_m_read_readvariableop4
0savev2_adam_dense_102_bias_m_read_readvariableop6
2savev2_adam_dense_103_kernel_m_read_readvariableop4
0savev2_adam_dense_103_bias_m_read_readvariableopA
=savev2_adam_lstm_85_lstm_cell_85_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_85_lstm_cell_85_bias_m_read_readvariableop6
2savev2_adam_dense_102_kernel_v_read_readvariableop4
0savev2_adam_dense_102_bias_v_read_readvariableop6
2savev2_adam_dense_103_kernel_v_read_readvariableop4
0savev2_adam_dense_103_bias_v_read_readvariableopA
=savev2_adam_lstm_85_lstm_cell_85_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_85_lstm_cell_85_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_102_kernel_read_readvariableop)savev2_dense_102_bias_read_readvariableop+savev2_dense_103_kernel_read_readvariableop)savev2_dense_103_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_85_lstm_cell_85_kernel_read_readvariableop@savev2_lstm_85_lstm_cell_85_recurrent_kernel_read_readvariableop4savev2_lstm_85_lstm_cell_85_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_102_kernel_m_read_readvariableop0savev2_adam_dense_102_bias_m_read_readvariableop2savev2_adam_dense_103_kernel_m_read_readvariableop0savev2_adam_dense_103_bias_m_read_readvariableop=savev2_adam_lstm_85_lstm_cell_85_kernel_m_read_readvariableopGsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_85_lstm_cell_85_bias_m_read_readvariableop2savev2_adam_dense_102_kernel_v_read_readvariableop0savev2_adam_dense_102_bias_v_read_readvariableop2savev2_adam_dense_103_kernel_v_read_readvariableop0savev2_adam_dense_103_bias_v_read_readvariableop=savev2_adam_lstm_85_lstm_cell_85_kernel_v_read_readvariableopGsavev2_adam_lstm_85_lstm_cell_85_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_85_lstm_cell_85_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
/__inference_sequential_34_layer_call_fn_2829856
input_35
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_35unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_28298202
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
input_35
?v
?
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2832037

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
seed2???2(
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2,
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
?|
?
#__inference__traced_restore_2832283
file_prefix3
!assignvariableop_dense_102_kernel:  /
!assignvariableop_1_dense_102_bias: 5
#assignvariableop_2_dense_103_kernel: /
!assignvariableop_3_dense_103_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_85_lstm_cell_85_kernel:	?L
9assignvariableop_10_lstm_85_lstm_cell_85_recurrent_kernel:	 ?<
-assignvariableop_11_lstm_85_lstm_cell_85_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: =
+assignvariableop_14_adam_dense_102_kernel_m:  7
)assignvariableop_15_adam_dense_102_bias_m: =
+assignvariableop_16_adam_dense_103_kernel_m: 7
)assignvariableop_17_adam_dense_103_bias_m:I
6assignvariableop_18_adam_lstm_85_lstm_cell_85_kernel_m:	?S
@assignvariableop_19_adam_lstm_85_lstm_cell_85_recurrent_kernel_m:	 ?C
4assignvariableop_20_adam_lstm_85_lstm_cell_85_bias_m:	?=
+assignvariableop_21_adam_dense_102_kernel_v:  7
)assignvariableop_22_adam_dense_102_bias_v: =
+assignvariableop_23_adam_dense_103_kernel_v: 7
)assignvariableop_24_adam_dense_103_bias_v:I
6assignvariableop_25_adam_lstm_85_lstm_cell_85_kernel_v:	?S
@assignvariableop_26_adam_lstm_85_lstm_cell_85_recurrent_kernel_v:	 ?C
4assignvariableop_27_adam_lstm_85_lstm_cell_85_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_102_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_102_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_103_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_103_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_85_lstm_cell_85_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_85_lstm_cell_85_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_85_lstm_cell_85_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_102_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_102_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_103_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_103_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_85_lstm_cell_85_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_85_lstm_cell_85_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_85_lstm_cell_85_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_102_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_102_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_103_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_103_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_85_lstm_cell_85_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_85_lstm_cell_85_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_85_lstm_cell_85_bias_vIdentity_27:output:0"/device:CPU:0*
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
?
?
F__inference_dense_103_layer_call_and_return_conditional_losses_2831799

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_103/bias/Regularizer/Square/ReadVariableOp?
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
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_103/bias/Regularizer/Square/ReadVariableOp*"
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
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?	
"__inference__wrapped_model_2828285
input_35S
@sequential_34_lstm_85_lstm_cell_85_split_readvariableop_resource:	?Q
Bsequential_34_lstm_85_lstm_cell_85_split_1_readvariableop_resource:	?M
:sequential_34_lstm_85_lstm_cell_85_readvariableop_resource:	 ?H
6sequential_34_dense_102_matmul_readvariableop_resource:  E
7sequential_34_dense_102_biasadd_readvariableop_resource: H
6sequential_34_dense_103_matmul_readvariableop_resource: E
7sequential_34_dense_103_biasadd_readvariableop_resource:
identity??.sequential_34/dense_102/BiasAdd/ReadVariableOp?-sequential_34/dense_102/MatMul/ReadVariableOp?.sequential_34/dense_103/BiasAdd/ReadVariableOp?-sequential_34/dense_103/MatMul/ReadVariableOp?1sequential_34/lstm_85/lstm_cell_85/ReadVariableOp?3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_1?3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_2?3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_3?7sequential_34/lstm_85/lstm_cell_85/split/ReadVariableOp?9sequential_34/lstm_85/lstm_cell_85/split_1/ReadVariableOp?sequential_34/lstm_85/whiler
sequential_34/lstm_85/ShapeShapeinput_35*
T0*
_output_shapes
:2
sequential_34/lstm_85/Shape?
)sequential_34/lstm_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_34/lstm_85/strided_slice/stack?
+sequential_34/lstm_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_34/lstm_85/strided_slice/stack_1?
+sequential_34/lstm_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_34/lstm_85/strided_slice/stack_2?
#sequential_34/lstm_85/strided_sliceStridedSlice$sequential_34/lstm_85/Shape:output:02sequential_34/lstm_85/strided_slice/stack:output:04sequential_34/lstm_85/strided_slice/stack_1:output:04sequential_34/lstm_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_34/lstm_85/strided_slice?
!sequential_34/lstm_85/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_34/lstm_85/zeros/mul/y?
sequential_34/lstm_85/zeros/mulMul,sequential_34/lstm_85/strided_slice:output:0*sequential_34/lstm_85/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_34/lstm_85/zeros/mul?
"sequential_34/lstm_85/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_34/lstm_85/zeros/Less/y?
 sequential_34/lstm_85/zeros/LessLess#sequential_34/lstm_85/zeros/mul:z:0+sequential_34/lstm_85/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_34/lstm_85/zeros/Less?
$sequential_34/lstm_85/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_34/lstm_85/zeros/packed/1?
"sequential_34/lstm_85/zeros/packedPack,sequential_34/lstm_85/strided_slice:output:0-sequential_34/lstm_85/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_34/lstm_85/zeros/packed?
!sequential_34/lstm_85/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_34/lstm_85/zeros/Const?
sequential_34/lstm_85/zerosFill+sequential_34/lstm_85/zeros/packed:output:0*sequential_34/lstm_85/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_34/lstm_85/zeros?
#sequential_34/lstm_85/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_34/lstm_85/zeros_1/mul/y?
!sequential_34/lstm_85/zeros_1/mulMul,sequential_34/lstm_85/strided_slice:output:0,sequential_34/lstm_85/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_34/lstm_85/zeros_1/mul?
$sequential_34/lstm_85/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_34/lstm_85/zeros_1/Less/y?
"sequential_34/lstm_85/zeros_1/LessLess%sequential_34/lstm_85/zeros_1/mul:z:0-sequential_34/lstm_85/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_34/lstm_85/zeros_1/Less?
&sequential_34/lstm_85/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_34/lstm_85/zeros_1/packed/1?
$sequential_34/lstm_85/zeros_1/packedPack,sequential_34/lstm_85/strided_slice:output:0/sequential_34/lstm_85/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_34/lstm_85/zeros_1/packed?
#sequential_34/lstm_85/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_34/lstm_85/zeros_1/Const?
sequential_34/lstm_85/zeros_1Fill-sequential_34/lstm_85/zeros_1/packed:output:0,sequential_34/lstm_85/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_34/lstm_85/zeros_1?
$sequential_34/lstm_85/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_34/lstm_85/transpose/perm?
sequential_34/lstm_85/transpose	Transposeinput_35-sequential_34/lstm_85/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2!
sequential_34/lstm_85/transpose?
sequential_34/lstm_85/Shape_1Shape#sequential_34/lstm_85/transpose:y:0*
T0*
_output_shapes
:2
sequential_34/lstm_85/Shape_1?
+sequential_34/lstm_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_34/lstm_85/strided_slice_1/stack?
-sequential_34/lstm_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_34/lstm_85/strided_slice_1/stack_1?
-sequential_34/lstm_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_34/lstm_85/strided_slice_1/stack_2?
%sequential_34/lstm_85/strided_slice_1StridedSlice&sequential_34/lstm_85/Shape_1:output:04sequential_34/lstm_85/strided_slice_1/stack:output:06sequential_34/lstm_85/strided_slice_1/stack_1:output:06sequential_34/lstm_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_34/lstm_85/strided_slice_1?
1sequential_34/lstm_85/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_34/lstm_85/TensorArrayV2/element_shape?
#sequential_34/lstm_85/TensorArrayV2TensorListReserve:sequential_34/lstm_85/TensorArrayV2/element_shape:output:0.sequential_34/lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_34/lstm_85/TensorArrayV2?
Ksequential_34/lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_34/lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_34/lstm_85/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_34/lstm_85/transpose:y:0Tsequential_34/lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_34/lstm_85/TensorArrayUnstack/TensorListFromTensor?
+sequential_34/lstm_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_34/lstm_85/strided_slice_2/stack?
-sequential_34/lstm_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_34/lstm_85/strided_slice_2/stack_1?
-sequential_34/lstm_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_34/lstm_85/strided_slice_2/stack_2?
%sequential_34/lstm_85/strided_slice_2StridedSlice#sequential_34/lstm_85/transpose:y:04sequential_34/lstm_85/strided_slice_2/stack:output:06sequential_34/lstm_85/strided_slice_2/stack_1:output:06sequential_34/lstm_85/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_34/lstm_85/strided_slice_2?
2sequential_34/lstm_85/lstm_cell_85/ones_like/ShapeShape$sequential_34/lstm_85/zeros:output:0*
T0*
_output_shapes
:24
2sequential_34/lstm_85/lstm_cell_85/ones_like/Shape?
2sequential_34/lstm_85/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2sequential_34/lstm_85/lstm_cell_85/ones_like/Const?
,sequential_34/lstm_85/lstm_cell_85/ones_likeFill;sequential_34/lstm_85/lstm_cell_85/ones_like/Shape:output:0;sequential_34/lstm_85/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/lstm_cell_85/ones_like?
2sequential_34/lstm_85/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_34/lstm_85/lstm_cell_85/split/split_dim?
7sequential_34/lstm_85/lstm_cell_85/split/ReadVariableOpReadVariableOp@sequential_34_lstm_85_lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_34/lstm_85/lstm_cell_85/split/ReadVariableOp?
(sequential_34/lstm_85/lstm_cell_85/splitSplit;sequential_34/lstm_85/lstm_cell_85/split/split_dim:output:0?sequential_34/lstm_85/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_34/lstm_85/lstm_cell_85/split?
)sequential_34/lstm_85/lstm_cell_85/MatMulMatMul.sequential_34/lstm_85/strided_slice_2:output:01sequential_34/lstm_85/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_34/lstm_85/lstm_cell_85/MatMul?
+sequential_34/lstm_85/lstm_cell_85/MatMul_1MatMul.sequential_34/lstm_85/strided_slice_2:output:01sequential_34/lstm_85/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2-
+sequential_34/lstm_85/lstm_cell_85/MatMul_1?
+sequential_34/lstm_85/lstm_cell_85/MatMul_2MatMul.sequential_34/lstm_85/strided_slice_2:output:01sequential_34/lstm_85/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2-
+sequential_34/lstm_85/lstm_cell_85/MatMul_2?
+sequential_34/lstm_85/lstm_cell_85/MatMul_3MatMul.sequential_34/lstm_85/strided_slice_2:output:01sequential_34/lstm_85/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2-
+sequential_34/lstm_85/lstm_cell_85/MatMul_3?
4sequential_34/lstm_85/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_34/lstm_85/lstm_cell_85/split_1/split_dim?
9sequential_34/lstm_85/lstm_cell_85/split_1/ReadVariableOpReadVariableOpBsequential_34_lstm_85_lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_34/lstm_85/lstm_cell_85/split_1/ReadVariableOp?
*sequential_34/lstm_85/lstm_cell_85/split_1Split=sequential_34/lstm_85/lstm_cell_85/split_1/split_dim:output:0Asequential_34/lstm_85/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_34/lstm_85/lstm_cell_85/split_1?
*sequential_34/lstm_85/lstm_cell_85/BiasAddBiasAdd3sequential_34/lstm_85/lstm_cell_85/MatMul:product:03sequential_34/lstm_85/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_34/lstm_85/lstm_cell_85/BiasAdd?
,sequential_34/lstm_85/lstm_cell_85/BiasAdd_1BiasAdd5sequential_34/lstm_85/lstm_cell_85/MatMul_1:product:03sequential_34/lstm_85/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/lstm_cell_85/BiasAdd_1?
,sequential_34/lstm_85/lstm_cell_85/BiasAdd_2BiasAdd5sequential_34/lstm_85/lstm_cell_85/MatMul_2:product:03sequential_34/lstm_85/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/lstm_cell_85/BiasAdd_2?
,sequential_34/lstm_85/lstm_cell_85/BiasAdd_3BiasAdd5sequential_34/lstm_85/lstm_cell_85/MatMul_3:product:03sequential_34/lstm_85/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/lstm_cell_85/BiasAdd_3?
&sequential_34/lstm_85/lstm_cell_85/mulMul$sequential_34/lstm_85/zeros:output:05sequential_34/lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_34/lstm_85/lstm_cell_85/mul?
(sequential_34/lstm_85/lstm_cell_85/mul_1Mul$sequential_34/lstm_85/zeros:output:05sequential_34/lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/mul_1?
(sequential_34/lstm_85/lstm_cell_85/mul_2Mul$sequential_34/lstm_85/zeros:output:05sequential_34/lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/mul_2?
(sequential_34/lstm_85/lstm_cell_85/mul_3Mul$sequential_34/lstm_85/zeros:output:05sequential_34/lstm_85/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/mul_3?
1sequential_34/lstm_85/lstm_cell_85/ReadVariableOpReadVariableOp:sequential_34_lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1sequential_34/lstm_85/lstm_cell_85/ReadVariableOp?
6sequential_34/lstm_85/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_34/lstm_85/lstm_cell_85/strided_slice/stack?
8sequential_34/lstm_85/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_34/lstm_85/lstm_cell_85/strided_slice/stack_1?
8sequential_34/lstm_85/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_34/lstm_85/lstm_cell_85/strided_slice/stack_2?
0sequential_34/lstm_85/lstm_cell_85/strided_sliceStridedSlice9sequential_34/lstm_85/lstm_cell_85/ReadVariableOp:value:0?sequential_34/lstm_85/lstm_cell_85/strided_slice/stack:output:0Asequential_34/lstm_85/lstm_cell_85/strided_slice/stack_1:output:0Asequential_34/lstm_85/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_34/lstm_85/lstm_cell_85/strided_slice?
+sequential_34/lstm_85/lstm_cell_85/MatMul_4MatMul*sequential_34/lstm_85/lstm_cell_85/mul:z:09sequential_34/lstm_85/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_34/lstm_85/lstm_cell_85/MatMul_4?
&sequential_34/lstm_85/lstm_cell_85/addAddV23sequential_34/lstm_85/lstm_cell_85/BiasAdd:output:05sequential_34/lstm_85/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2(
&sequential_34/lstm_85/lstm_cell_85/add?
*sequential_34/lstm_85/lstm_cell_85/SigmoidSigmoid*sequential_34/lstm_85/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_34/lstm_85/lstm_cell_85/Sigmoid?
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_1ReadVariableOp:sequential_34_lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_1?
8sequential_34/lstm_85/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack?
:sequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack_1?
:sequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack_2?
2sequential_34/lstm_85/lstm_cell_85/strided_slice_1StridedSlice;sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_1:value:0Asequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack:output:0Csequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack_1:output:0Csequential_34/lstm_85/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_34/lstm_85/lstm_cell_85/strided_slice_1?
+sequential_34/lstm_85/lstm_cell_85/MatMul_5MatMul,sequential_34/lstm_85/lstm_cell_85/mul_1:z:0;sequential_34/lstm_85/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_34/lstm_85/lstm_cell_85/MatMul_5?
(sequential_34/lstm_85/lstm_cell_85/add_1AddV25sequential_34/lstm_85/lstm_cell_85/BiasAdd_1:output:05sequential_34/lstm_85/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/add_1?
,sequential_34/lstm_85/lstm_cell_85/Sigmoid_1Sigmoid,sequential_34/lstm_85/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/lstm_cell_85/Sigmoid_1?
(sequential_34/lstm_85/lstm_cell_85/mul_4Mul0sequential_34/lstm_85/lstm_cell_85/Sigmoid_1:y:0&sequential_34/lstm_85/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/mul_4?
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_2ReadVariableOp:sequential_34_lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_2?
8sequential_34/lstm_85/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack?
:sequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack_1?
:sequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack_2?
2sequential_34/lstm_85/lstm_cell_85/strided_slice_2StridedSlice;sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_2:value:0Asequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack:output:0Csequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack_1:output:0Csequential_34/lstm_85/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_34/lstm_85/lstm_cell_85/strided_slice_2?
+sequential_34/lstm_85/lstm_cell_85/MatMul_6MatMul,sequential_34/lstm_85/lstm_cell_85/mul_2:z:0;sequential_34/lstm_85/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_34/lstm_85/lstm_cell_85/MatMul_6?
(sequential_34/lstm_85/lstm_cell_85/add_2AddV25sequential_34/lstm_85/lstm_cell_85/BiasAdd_2:output:05sequential_34/lstm_85/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/add_2?
'sequential_34/lstm_85/lstm_cell_85/ReluRelu,sequential_34/lstm_85/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_34/lstm_85/lstm_cell_85/Relu?
(sequential_34/lstm_85/lstm_cell_85/mul_5Mul.sequential_34/lstm_85/lstm_cell_85/Sigmoid:y:05sequential_34/lstm_85/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/mul_5?
(sequential_34/lstm_85/lstm_cell_85/add_3AddV2,sequential_34/lstm_85/lstm_cell_85/mul_4:z:0,sequential_34/lstm_85/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/add_3?
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_3ReadVariableOp:sequential_34_lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_3?
8sequential_34/lstm_85/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack?
:sequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack_1?
:sequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack_2?
2sequential_34/lstm_85/lstm_cell_85/strided_slice_3StridedSlice;sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_3:value:0Asequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack:output:0Csequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack_1:output:0Csequential_34/lstm_85/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_34/lstm_85/lstm_cell_85/strided_slice_3?
+sequential_34/lstm_85/lstm_cell_85/MatMul_7MatMul,sequential_34/lstm_85/lstm_cell_85/mul_3:z:0;sequential_34/lstm_85/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_34/lstm_85/lstm_cell_85/MatMul_7?
(sequential_34/lstm_85/lstm_cell_85/add_4AddV25sequential_34/lstm_85/lstm_cell_85/BiasAdd_3:output:05sequential_34/lstm_85/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/add_4?
,sequential_34/lstm_85/lstm_cell_85/Sigmoid_2Sigmoid,sequential_34/lstm_85/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/lstm_cell_85/Sigmoid_2?
)sequential_34/lstm_85/lstm_cell_85/Relu_1Relu,sequential_34/lstm_85/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_34/lstm_85/lstm_cell_85/Relu_1?
(sequential_34/lstm_85/lstm_cell_85/mul_6Mul0sequential_34/lstm_85/lstm_cell_85/Sigmoid_2:y:07sequential_34/lstm_85/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_34/lstm_85/lstm_cell_85/mul_6?
3sequential_34/lstm_85/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    25
3sequential_34/lstm_85/TensorArrayV2_1/element_shape?
%sequential_34/lstm_85/TensorArrayV2_1TensorListReserve<sequential_34/lstm_85/TensorArrayV2_1/element_shape:output:0.sequential_34/lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_34/lstm_85/TensorArrayV2_1z
sequential_34/lstm_85/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_34/lstm_85/time?
.sequential_34/lstm_85/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_34/lstm_85/while/maximum_iterations?
(sequential_34/lstm_85/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_34/lstm_85/while/loop_counter?
sequential_34/lstm_85/whileWhile1sequential_34/lstm_85/while/loop_counter:output:07sequential_34/lstm_85/while/maximum_iterations:output:0#sequential_34/lstm_85/time:output:0.sequential_34/lstm_85/TensorArrayV2_1:handle:0$sequential_34/lstm_85/zeros:output:0&sequential_34/lstm_85/zeros_1:output:0.sequential_34/lstm_85/strided_slice_1:output:0Msequential_34/lstm_85/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_34_lstm_85_lstm_cell_85_split_readvariableop_resourceBsequential_34_lstm_85_lstm_cell_85_split_1_readvariableop_resource:sequential_34_lstm_85_lstm_cell_85_readvariableop_resource*
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
(sequential_34_lstm_85_while_body_2828136*4
cond,R*
(sequential_34_lstm_85_while_cond_2828135*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_34/lstm_85/while?
Fsequential_34/lstm_85/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2H
Fsequential_34/lstm_85/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_34/lstm_85/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_34/lstm_85/while:output:3Osequential_34/lstm_85/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02:
8sequential_34/lstm_85/TensorArrayV2Stack/TensorListStack?
+sequential_34/lstm_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_34/lstm_85/strided_slice_3/stack?
-sequential_34/lstm_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_34/lstm_85/strided_slice_3/stack_1?
-sequential_34/lstm_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_34/lstm_85/strided_slice_3/stack_2?
%sequential_34/lstm_85/strided_slice_3StridedSliceAsequential_34/lstm_85/TensorArrayV2Stack/TensorListStack:tensor:04sequential_34/lstm_85/strided_slice_3/stack:output:06sequential_34/lstm_85/strided_slice_3/stack_1:output:06sequential_34/lstm_85/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2'
%sequential_34/lstm_85/strided_slice_3?
&sequential_34/lstm_85/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_34/lstm_85/transpose_1/perm?
!sequential_34/lstm_85/transpose_1	TransposeAsequential_34/lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_34/lstm_85/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2#
!sequential_34/lstm_85/transpose_1?
sequential_34/lstm_85/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_34/lstm_85/runtime?
-sequential_34/dense_102/MatMul/ReadVariableOpReadVariableOp6sequential_34_dense_102_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_34/dense_102/MatMul/ReadVariableOp?
sequential_34/dense_102/MatMulMatMul.sequential_34/lstm_85/strided_slice_3:output:05sequential_34/dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_34/dense_102/MatMul?
.sequential_34/dense_102/BiasAdd/ReadVariableOpReadVariableOp7sequential_34_dense_102_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_34/dense_102/BiasAdd/ReadVariableOp?
sequential_34/dense_102/BiasAddBiasAdd(sequential_34/dense_102/MatMul:product:06sequential_34/dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2!
sequential_34/dense_102/BiasAdd?
sequential_34/dense_102/ReluRelu(sequential_34/dense_102/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_34/dense_102/Relu?
-sequential_34/dense_103/MatMul/ReadVariableOpReadVariableOp6sequential_34_dense_103_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_34/dense_103/MatMul/ReadVariableOp?
sequential_34/dense_103/MatMulMatMul*sequential_34/dense_102/Relu:activations:05sequential_34/dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_34/dense_103/MatMul?
.sequential_34/dense_103/BiasAdd/ReadVariableOpReadVariableOp7sequential_34_dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_34/dense_103/BiasAdd/ReadVariableOp?
sequential_34/dense_103/BiasAddBiasAdd(sequential_34/dense_103/MatMul:product:06sequential_34/dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_34/dense_103/BiasAdd?
sequential_34/reshape_51/ShapeShape(sequential_34/dense_103/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_34/reshape_51/Shape?
,sequential_34/reshape_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_34/reshape_51/strided_slice/stack?
.sequential_34/reshape_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_34/reshape_51/strided_slice/stack_1?
.sequential_34/reshape_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_34/reshape_51/strided_slice/stack_2?
&sequential_34/reshape_51/strided_sliceStridedSlice'sequential_34/reshape_51/Shape:output:05sequential_34/reshape_51/strided_slice/stack:output:07sequential_34/reshape_51/strided_slice/stack_1:output:07sequential_34/reshape_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_34/reshape_51/strided_slice?
(sequential_34/reshape_51/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_34/reshape_51/Reshape/shape/1?
(sequential_34/reshape_51/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_34/reshape_51/Reshape/shape/2?
&sequential_34/reshape_51/Reshape/shapePack/sequential_34/reshape_51/strided_slice:output:01sequential_34/reshape_51/Reshape/shape/1:output:01sequential_34/reshape_51/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_34/reshape_51/Reshape/shape?
 sequential_34/reshape_51/ReshapeReshape(sequential_34/dense_103/BiasAdd:output:0/sequential_34/reshape_51/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_34/reshape_51/Reshape?
IdentityIdentity)sequential_34/reshape_51/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp/^sequential_34/dense_102/BiasAdd/ReadVariableOp.^sequential_34/dense_102/MatMul/ReadVariableOp/^sequential_34/dense_103/BiasAdd/ReadVariableOp.^sequential_34/dense_103/MatMul/ReadVariableOp2^sequential_34/lstm_85/lstm_cell_85/ReadVariableOp4^sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_14^sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_24^sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_38^sequential_34/lstm_85/lstm_cell_85/split/ReadVariableOp:^sequential_34/lstm_85/lstm_cell_85/split_1/ReadVariableOp^sequential_34/lstm_85/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2`
.sequential_34/dense_102/BiasAdd/ReadVariableOp.sequential_34/dense_102/BiasAdd/ReadVariableOp2^
-sequential_34/dense_102/MatMul/ReadVariableOp-sequential_34/dense_102/MatMul/ReadVariableOp2`
.sequential_34/dense_103/BiasAdd/ReadVariableOp.sequential_34/dense_103/BiasAdd/ReadVariableOp2^
-sequential_34/dense_103/MatMul/ReadVariableOp-sequential_34/dense_103/MatMul/ReadVariableOp2f
1sequential_34/lstm_85/lstm_cell_85/ReadVariableOp1sequential_34/lstm_85/lstm_cell_85/ReadVariableOp2j
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_13sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_12j
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_23sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_22j
3sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_33sequential_34/lstm_85/lstm_cell_85/ReadVariableOp_32r
7sequential_34/lstm_85/lstm_cell_85/split/ReadVariableOp7sequential_34/lstm_85/lstm_cell_85/split/ReadVariableOp2v
9sequential_34/lstm_85/lstm_cell_85/split_1/ReadVariableOp9sequential_34/lstm_85/lstm_cell_85/split_1/ReadVariableOp2:
sequential_34/lstm_85/whilesequential_34/lstm_85/while:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_35
?
?
while_cond_2829590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2829590___redundant_placeholder05
1while_while_cond_2829590___redundant_placeholder15
1while_while_cond_2829590___redundant_placeholder25
1while_while_cond_2829590___redundant_placeholder3
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
)__inference_lstm_85_layer_call_fn_2831735
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28287952
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
?
while_cond_2828719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2828719___redundant_placeholder05
1while_while_cond_2828719___redundant_placeholder15
1while_while_cond_2828719___redundant_placeholder25
1while_while_cond_2828719___redundant_placeholder3
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
while_body_2829185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_85_split_readvariableop_resource_0:	?C
4while_lstm_cell_85_split_1_readvariableop_resource_0:	??
,while_lstm_cell_85_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_85_split_readvariableop_resource:	?A
2while_lstm_cell_85_split_1_readvariableop_resource:	?=
*while_lstm_cell_85_readvariableop_resource:	 ???!while/lstm_cell_85/ReadVariableOp?#while/lstm_cell_85/ReadVariableOp_1?#while/lstm_cell_85/ReadVariableOp_2?#while/lstm_cell_85/ReadVariableOp_3?'while/lstm_cell_85/split/ReadVariableOp?)while/lstm_cell_85/split_1/ReadVariableOp?
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
"while/lstm_cell_85/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_85/ones_like/Shape?
"while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_85/ones_like/Const?
while/lstm_cell_85/ones_likeFill+while/lstm_cell_85/ones_like/Shape:output:0+while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/ones_like?
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_85/split/split_dim?
'while/lstm_cell_85/split/ReadVariableOpReadVariableOp2while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_85/split/ReadVariableOp?
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_85/split?
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul?
while/lstm_cell_85/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_1?
while/lstm_cell_85/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_2?
while/lstm_cell_85/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_3?
$while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_85/split_1/split_dim?
)while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_85/split_1/ReadVariableOp?
while/lstm_cell_85/split_1Split-while/lstm_cell_85/split_1/split_dim:output:01while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_85/split_1?
while/lstm_cell_85/BiasAddBiasAdd#while/lstm_cell_85/MatMul:product:0#while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd?
while/lstm_cell_85/BiasAdd_1BiasAdd%while/lstm_cell_85/MatMul_1:product:0#while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_1?
while/lstm_cell_85/BiasAdd_2BiasAdd%while/lstm_cell_85/MatMul_2:product:0#while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_2?
while/lstm_cell_85/BiasAdd_3BiasAdd%while/lstm_cell_85/MatMul_3:product:0#while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_3?
while/lstm_cell_85/mulMulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul?
while/lstm_cell_85/mul_1Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_1?
while/lstm_cell_85/mul_2Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_2?
while/lstm_cell_85/mul_3Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_3?
!while/lstm_cell_85/ReadVariableOpReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_85/ReadVariableOp?
&while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_85/strided_slice/stack?
(while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice/stack_1?
(while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_85/strided_slice/stack_2?
 while/lstm_cell_85/strided_sliceStridedSlice)while/lstm_cell_85/ReadVariableOp:value:0/while/lstm_cell_85/strided_slice/stack:output:01while/lstm_cell_85/strided_slice/stack_1:output:01while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_85/strided_slice?
while/lstm_cell_85/MatMul_4MatMulwhile/lstm_cell_85/mul:z:0)while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_4?
while/lstm_cell_85/addAddV2#while/lstm_cell_85/BiasAdd:output:0%while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add?
while/lstm_cell_85/SigmoidSigmoidwhile/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid?
#while/lstm_cell_85/ReadVariableOp_1ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_1?
(while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice_1/stack?
*while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_85/strided_slice_1/stack_1?
*while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_1/stack_2?
"while/lstm_cell_85/strided_slice_1StridedSlice+while/lstm_cell_85/ReadVariableOp_1:value:01while/lstm_cell_85/strided_slice_1/stack:output:03while/lstm_cell_85/strided_slice_1/stack_1:output:03while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_1?
while/lstm_cell_85/MatMul_5MatMulwhile/lstm_cell_85/mul_1:z:0+while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_5?
while/lstm_cell_85/add_1AddV2%while/lstm_cell_85/BiasAdd_1:output:0%while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_1?
while/lstm_cell_85/Sigmoid_1Sigmoidwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_1?
while/lstm_cell_85/mul_4Mul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_4?
#while/lstm_cell_85/ReadVariableOp_2ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_2?
(while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_85/strided_slice_2/stack?
*while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_85/strided_slice_2/stack_1?
*while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_2/stack_2?
"while/lstm_cell_85/strided_slice_2StridedSlice+while/lstm_cell_85/ReadVariableOp_2:value:01while/lstm_cell_85/strided_slice_2/stack:output:03while/lstm_cell_85/strided_slice_2/stack_1:output:03while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_2?
while/lstm_cell_85/MatMul_6MatMulwhile/lstm_cell_85/mul_2:z:0+while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_6?
while/lstm_cell_85/add_2AddV2%while/lstm_cell_85/BiasAdd_2:output:0%while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_2?
while/lstm_cell_85/ReluReluwhile/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu?
while/lstm_cell_85/mul_5Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_5?
while/lstm_cell_85/add_3AddV2while/lstm_cell_85/mul_4:z:0while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_3?
#while/lstm_cell_85/ReadVariableOp_3ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_3?
(while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_85/strided_slice_3/stack?
*while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_85/strided_slice_3/stack_1?
*while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_3/stack_2?
"while/lstm_cell_85/strided_slice_3StridedSlice+while/lstm_cell_85/ReadVariableOp_3:value:01while/lstm_cell_85/strided_slice_3/stack:output:03while/lstm_cell_85/strided_slice_3/stack_1:output:03while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_3?
while/lstm_cell_85/MatMul_7MatMulwhile/lstm_cell_85/mul_3:z:0+while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_7?
while/lstm_cell_85/add_4AddV2%while/lstm_cell_85/BiasAdd_3:output:0%while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_4?
while/lstm_cell_85/Sigmoid_2Sigmoidwhile/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_2?
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu_1?
while/lstm_cell_85/mul_6Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_85/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_85/ReadVariableOp$^while/lstm_cell_85/ReadVariableOp_1$^while/lstm_cell_85/ReadVariableOp_2$^while/lstm_cell_85/ReadVariableOp_3(^while/lstm_cell_85/split/ReadVariableOp*^while/lstm_cell_85/split_1/ReadVariableOp*"
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
*while_lstm_cell_85_readvariableop_resource,while_lstm_cell_85_readvariableop_resource_0"j
2while_lstm_cell_85_split_1_readvariableop_resource4while_lstm_cell_85_split_1_readvariableop_resource_0"f
0while_lstm_cell_85_split_readvariableop_resource2while_lstm_cell_85_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_85/ReadVariableOp!while/lstm_cell_85/ReadVariableOp2J
#while/lstm_cell_85/ReadVariableOp_1#while/lstm_cell_85/ReadVariableOp_12J
#while/lstm_cell_85/ReadVariableOp_2#while/lstm_cell_85/ReadVariableOp_22J
#while/lstm_cell_85/ReadVariableOp_3#while/lstm_cell_85/ReadVariableOp_32R
'while/lstm_cell_85/split/ReadVariableOp'while/lstm_cell_85/split/ReadVariableOp2V
)while/lstm_cell_85/split_1/ReadVariableOp)while/lstm_cell_85/split_1/ReadVariableOp: 
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
(sequential_34_lstm_85_while_cond_2828135H
Dsequential_34_lstm_85_while_sequential_34_lstm_85_while_loop_counterN
Jsequential_34_lstm_85_while_sequential_34_lstm_85_while_maximum_iterations+
'sequential_34_lstm_85_while_placeholder-
)sequential_34_lstm_85_while_placeholder_1-
)sequential_34_lstm_85_while_placeholder_2-
)sequential_34_lstm_85_while_placeholder_3J
Fsequential_34_lstm_85_while_less_sequential_34_lstm_85_strided_slice_1a
]sequential_34_lstm_85_while_sequential_34_lstm_85_while_cond_2828135___redundant_placeholder0a
]sequential_34_lstm_85_while_sequential_34_lstm_85_while_cond_2828135___redundant_placeholder1a
]sequential_34_lstm_85_while_sequential_34_lstm_85_while_cond_2828135___redundant_placeholder2a
]sequential_34_lstm_85_while_sequential_34_lstm_85_while_cond_2828135___redundant_placeholder3(
$sequential_34_lstm_85_while_identity
?
 sequential_34/lstm_85/while/LessLess'sequential_34_lstm_85_while_placeholderFsequential_34_lstm_85_while_less_sequential_34_lstm_85_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_34/lstm_85/while/Less?
$sequential_34/lstm_85/while/IdentityIdentity$sequential_34/lstm_85/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_34/lstm_85/while/Identity"U
$sequential_34_lstm_85_while_identity-sequential_34/lstm_85/while/Identity:output:0*(
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831406

inputs=
*lstm_cell_85_split_readvariableop_resource:	?;
,lstm_cell_85_split_1_readvariableop_resource:	?7
$lstm_cell_85_readvariableop_resource:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_85/ReadVariableOp?lstm_cell_85/ReadVariableOp_1?lstm_cell_85/ReadVariableOp_2?lstm_cell_85/ReadVariableOp_3?!lstm_cell_85/split/ReadVariableOp?#lstm_cell_85/split_1/ReadVariableOp?whileD
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
lstm_cell_85/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_85/ones_like/Shape?
lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_85/ones_like/Const?
lstm_cell_85/ones_likeFill%lstm_cell_85/ones_like/Shape:output:0%lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/ones_like~
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_85/split/split_dim?
!lstm_cell_85/split/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_85/split/ReadVariableOp?
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0)lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_85/split?
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul?
lstm_cell_85/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_1?
lstm_cell_85/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_2?
lstm_cell_85/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_3?
lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_85/split_1/split_dim?
#lstm_cell_85/split_1/ReadVariableOpReadVariableOp,lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_85/split_1/ReadVariableOp?
lstm_cell_85/split_1Split'lstm_cell_85/split_1/split_dim:output:0+lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_85/split_1?
lstm_cell_85/BiasAddBiasAddlstm_cell_85/MatMul:product:0lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd?
lstm_cell_85/BiasAdd_1BiasAddlstm_cell_85/MatMul_1:product:0lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_1?
lstm_cell_85/BiasAdd_2BiasAddlstm_cell_85/MatMul_2:product:0lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_2?
lstm_cell_85/BiasAdd_3BiasAddlstm_cell_85/MatMul_3:product:0lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_3?
lstm_cell_85/mulMulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul?
lstm_cell_85/mul_1Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_1?
lstm_cell_85/mul_2Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_2?
lstm_cell_85/mul_3Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_3?
lstm_cell_85/ReadVariableOpReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp?
 lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_85/strided_slice/stack?
"lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice/stack_1?
"lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_85/strided_slice/stack_2?
lstm_cell_85/strided_sliceStridedSlice#lstm_cell_85/ReadVariableOp:value:0)lstm_cell_85/strided_slice/stack:output:0+lstm_cell_85/strided_slice/stack_1:output:0+lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice?
lstm_cell_85/MatMul_4MatMullstm_cell_85/mul:z:0#lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_4?
lstm_cell_85/addAddV2lstm_cell_85/BiasAdd:output:0lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add
lstm_cell_85/SigmoidSigmoidlstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid?
lstm_cell_85/ReadVariableOp_1ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_1?
"lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice_1/stack?
$lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_85/strided_slice_1/stack_1?
$lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_1/stack_2?
lstm_cell_85/strided_slice_1StridedSlice%lstm_cell_85/ReadVariableOp_1:value:0+lstm_cell_85/strided_slice_1/stack:output:0-lstm_cell_85/strided_slice_1/stack_1:output:0-lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_1?
lstm_cell_85/MatMul_5MatMullstm_cell_85/mul_1:z:0%lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_5?
lstm_cell_85/add_1AddV2lstm_cell_85/BiasAdd_1:output:0lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_1?
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_1?
lstm_cell_85/mul_4Mullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_4?
lstm_cell_85/ReadVariableOp_2ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_2?
"lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_85/strided_slice_2/stack?
$lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_85/strided_slice_2/stack_1?
$lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_2/stack_2?
lstm_cell_85/strided_slice_2StridedSlice%lstm_cell_85/ReadVariableOp_2:value:0+lstm_cell_85/strided_slice_2/stack:output:0-lstm_cell_85/strided_slice_2/stack_1:output:0-lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_2?
lstm_cell_85/MatMul_6MatMullstm_cell_85/mul_2:z:0%lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_6?
lstm_cell_85/add_2AddV2lstm_cell_85/BiasAdd_2:output:0lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_2x
lstm_cell_85/ReluRelulstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu?
lstm_cell_85/mul_5Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_5?
lstm_cell_85/add_3AddV2lstm_cell_85/mul_4:z:0lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_3?
lstm_cell_85/ReadVariableOp_3ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_3?
"lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_85/strided_slice_3/stack?
$lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_85/strided_slice_3/stack_1?
$lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_3/stack_2?
lstm_cell_85/strided_slice_3StridedSlice%lstm_cell_85/ReadVariableOp_3:value:0+lstm_cell_85/strided_slice_3/stack:output:0-lstm_cell_85/strided_slice_3/stack_1:output:0-lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_3?
lstm_cell_85/MatMul_7MatMullstm_cell_85/mul_3:z:0%lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_7?
lstm_cell_85/add_4AddV2lstm_cell_85/BiasAdd_3:output:0lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_4?
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_2|
lstm_cell_85/Relu_1Relulstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu_1?
lstm_cell_85/mul_6Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_85_split_readvariableop_resource,lstm_cell_85_split_1_readvariableop_resource$lstm_cell_85_readvariableop_resource*
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
while_body_2831273*
condR
while_cond_2831272*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_85/ReadVariableOp^lstm_cell_85/ReadVariableOp_1^lstm_cell_85/ReadVariableOp_2^lstm_cell_85/ReadVariableOp_3"^lstm_cell_85/split/ReadVariableOp$^lstm_cell_85/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_85/ReadVariableOplstm_cell_85/ReadVariableOp2>
lstm_cell_85/ReadVariableOp_1lstm_cell_85/ReadVariableOp_12>
lstm_cell_85/ReadVariableOp_2lstm_cell_85/ReadVariableOp_22>
lstm_cell_85/ReadVariableOp_3lstm_cell_85/ReadVariableOp_32F
!lstm_cell_85/split/ReadVariableOp!lstm_cell_85/split/ReadVariableOp2J
#lstm_cell_85/split_1/ReadVariableOp#lstm_cell_85/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
D__inference_lstm_85_layer_call_and_return_conditional_losses_2830856
inputs_0=
*lstm_cell_85_split_readvariableop_resource:	?;
,lstm_cell_85_split_1_readvariableop_resource:	?7
$lstm_cell_85_readvariableop_resource:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_85/ReadVariableOp?lstm_cell_85/ReadVariableOp_1?lstm_cell_85/ReadVariableOp_2?lstm_cell_85/ReadVariableOp_3?!lstm_cell_85/split/ReadVariableOp?#lstm_cell_85/split_1/ReadVariableOp?whileF
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
lstm_cell_85/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_85/ones_like/Shape?
lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_85/ones_like/Const?
lstm_cell_85/ones_likeFill%lstm_cell_85/ones_like/Shape:output:0%lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/ones_like~
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_85/split/split_dim?
!lstm_cell_85/split/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_85/split/ReadVariableOp?
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0)lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_85/split?
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul?
lstm_cell_85/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_1?
lstm_cell_85/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_2?
lstm_cell_85/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_3?
lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_85/split_1/split_dim?
#lstm_cell_85/split_1/ReadVariableOpReadVariableOp,lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_85/split_1/ReadVariableOp?
lstm_cell_85/split_1Split'lstm_cell_85/split_1/split_dim:output:0+lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_85/split_1?
lstm_cell_85/BiasAddBiasAddlstm_cell_85/MatMul:product:0lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd?
lstm_cell_85/BiasAdd_1BiasAddlstm_cell_85/MatMul_1:product:0lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_1?
lstm_cell_85/BiasAdd_2BiasAddlstm_cell_85/MatMul_2:product:0lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_2?
lstm_cell_85/BiasAdd_3BiasAddlstm_cell_85/MatMul_3:product:0lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_3?
lstm_cell_85/mulMulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul?
lstm_cell_85/mul_1Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_1?
lstm_cell_85/mul_2Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_2?
lstm_cell_85/mul_3Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_3?
lstm_cell_85/ReadVariableOpReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp?
 lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_85/strided_slice/stack?
"lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice/stack_1?
"lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_85/strided_slice/stack_2?
lstm_cell_85/strided_sliceStridedSlice#lstm_cell_85/ReadVariableOp:value:0)lstm_cell_85/strided_slice/stack:output:0+lstm_cell_85/strided_slice/stack_1:output:0+lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice?
lstm_cell_85/MatMul_4MatMullstm_cell_85/mul:z:0#lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_4?
lstm_cell_85/addAddV2lstm_cell_85/BiasAdd:output:0lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add
lstm_cell_85/SigmoidSigmoidlstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid?
lstm_cell_85/ReadVariableOp_1ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_1?
"lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice_1/stack?
$lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_85/strided_slice_1/stack_1?
$lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_1/stack_2?
lstm_cell_85/strided_slice_1StridedSlice%lstm_cell_85/ReadVariableOp_1:value:0+lstm_cell_85/strided_slice_1/stack:output:0-lstm_cell_85/strided_slice_1/stack_1:output:0-lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_1?
lstm_cell_85/MatMul_5MatMullstm_cell_85/mul_1:z:0%lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_5?
lstm_cell_85/add_1AddV2lstm_cell_85/BiasAdd_1:output:0lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_1?
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_1?
lstm_cell_85/mul_4Mullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_4?
lstm_cell_85/ReadVariableOp_2ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_2?
"lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_85/strided_slice_2/stack?
$lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_85/strided_slice_2/stack_1?
$lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_2/stack_2?
lstm_cell_85/strided_slice_2StridedSlice%lstm_cell_85/ReadVariableOp_2:value:0+lstm_cell_85/strided_slice_2/stack:output:0-lstm_cell_85/strided_slice_2/stack_1:output:0-lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_2?
lstm_cell_85/MatMul_6MatMullstm_cell_85/mul_2:z:0%lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_6?
lstm_cell_85/add_2AddV2lstm_cell_85/BiasAdd_2:output:0lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_2x
lstm_cell_85/ReluRelulstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu?
lstm_cell_85/mul_5Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_5?
lstm_cell_85/add_3AddV2lstm_cell_85/mul_4:z:0lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_3?
lstm_cell_85/ReadVariableOp_3ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_3?
"lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_85/strided_slice_3/stack?
$lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_85/strided_slice_3/stack_1?
$lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_3/stack_2?
lstm_cell_85/strided_slice_3StridedSlice%lstm_cell_85/ReadVariableOp_3:value:0+lstm_cell_85/strided_slice_3/stack:output:0-lstm_cell_85/strided_slice_3/stack_1:output:0-lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_3?
lstm_cell_85/MatMul_7MatMullstm_cell_85/mul_3:z:0%lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_7?
lstm_cell_85/add_4AddV2lstm_cell_85/BiasAdd_3:output:0lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_4?
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_2|
lstm_cell_85/Relu_1Relulstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu_1?
lstm_cell_85/mul_6Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_85_split_readvariableop_resource,lstm_cell_85_split_1_readvariableop_resource$lstm_cell_85_readvariableop_resource*
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
while_body_2830723*
condR
while_cond_2830722*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_85/ReadVariableOp^lstm_cell_85/ReadVariableOp_1^lstm_cell_85/ReadVariableOp_2^lstm_cell_85/ReadVariableOp_3"^lstm_cell_85/split/ReadVariableOp$^lstm_cell_85/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_85/ReadVariableOplstm_cell_85/ReadVariableOp2>
lstm_cell_85/ReadVariableOp_1lstm_cell_85/ReadVariableOp_12>
lstm_cell_85/ReadVariableOp_2lstm_cell_85/ReadVariableOp_22>
lstm_cell_85/ReadVariableOp_3lstm_cell_85/ReadVariableOp_32F
!lstm_cell_85/split/ReadVariableOp!lstm_cell_85/split/ReadVariableOp2J
#lstm_cell_85/split_1/ReadVariableOp#lstm_cell_85/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?,
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829393

inputs"
lstm_85_2829319:	?
lstm_85_2829321:	?"
lstm_85_2829323:	 ?#
dense_102_2829338:  
dense_102_2829340: #
dense_103_2829360: 
dense_103_2829362:
identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?0dense_103/bias/Regularizer/Square/ReadVariableOp?lstm_85/StatefulPartitionedCall?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
lstm_85/StatefulPartitionedCallStatefulPartitionedCallinputslstm_85_2829319lstm_85_2829321lstm_85_2829323*
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28293182!
lstm_85/StatefulPartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall(lstm_85/StatefulPartitionedCall:output:0dense_102_2829338dense_102_2829340*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_28293372#
!dense_102/StatefulPartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall*dense_102/StatefulPartitionedCall:output:0dense_103_2829360dense_103_2829362*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_28293592#
!dense_103/StatefulPartitionedCall?
reshape_51/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_28293782
reshape_51/PartitionedCall?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_85_2829319*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/mul?
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_103_2829362*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mul?
IdentityIdentity#reshape_51/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall1^dense_103/bias/Regularizer/Square/ReadVariableOp ^lstm_85/StatefulPartitionedCall>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2d
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp2B
lstm_85/StatefulPartitionedCalllstm_85/StatefulPartitionedCall2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_103_layer_call_fn_2831808

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
F__inference_dense_103_layer_call_and_return_conditional_losses_28293592
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
?
.__inference_lstm_cell_85_layer_call_fn_2832071

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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_28286422
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
while_body_2831548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_85_split_readvariableop_resource_0:	?C
4while_lstm_cell_85_split_1_readvariableop_resource_0:	??
,while_lstm_cell_85_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_85_split_readvariableop_resource:	?A
2while_lstm_cell_85_split_1_readvariableop_resource:	?=
*while_lstm_cell_85_readvariableop_resource:	 ???!while/lstm_cell_85/ReadVariableOp?#while/lstm_cell_85/ReadVariableOp_1?#while/lstm_cell_85/ReadVariableOp_2?#while/lstm_cell_85/ReadVariableOp_3?'while/lstm_cell_85/split/ReadVariableOp?)while/lstm_cell_85/split_1/ReadVariableOp?
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
"while/lstm_cell_85/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_85/ones_like/Shape?
"while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_85/ones_like/Const?
while/lstm_cell_85/ones_likeFill+while/lstm_cell_85/ones_like/Shape:output:0+while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/ones_like?
 while/lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_85/dropout/Const?
while/lstm_cell_85/dropout/MulMul%while/lstm_cell_85/ones_like:output:0)while/lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_85/dropout/Mul?
 while/lstm_cell_85/dropout/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_85/dropout/Shape?
7while/lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?ܔ29
7while/lstm_cell_85/dropout/random_uniform/RandomUniform?
)while/lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_85/dropout/GreaterEqual/y?
'while/lstm_cell_85/dropout/GreaterEqualGreaterEqual@while/lstm_cell_85/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_85/dropout/GreaterEqual?
while/lstm_cell_85/dropout/CastCast+while/lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_85/dropout/Cast?
 while/lstm_cell_85/dropout/Mul_1Mul"while/lstm_cell_85/dropout/Mul:z:0#while/lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout/Mul_1?
"while/lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_1/Const?
 while/lstm_cell_85/dropout_1/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_1/Mul?
"while/lstm_cell_85/dropout_1/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_1/Shape?
9while/lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed22;
9while/lstm_cell_85/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_1/GreaterEqual/y?
)while/lstm_cell_85/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_1/GreaterEqual?
!while/lstm_cell_85/dropout_1/CastCast-while/lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_1/Cast?
"while/lstm_cell_85/dropout_1/Mul_1Mul$while/lstm_cell_85/dropout_1/Mul:z:0%while/lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_1/Mul_1?
"while/lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_2/Const?
 while/lstm_cell_85/dropout_2/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_2/Mul?
"while/lstm_cell_85/dropout_2/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_2/Shape?
9while/lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??12;
9while/lstm_cell_85/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_2/GreaterEqual/y?
)while/lstm_cell_85/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_2/GreaterEqual?
!while/lstm_cell_85/dropout_2/CastCast-while/lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_2/Cast?
"while/lstm_cell_85/dropout_2/Mul_1Mul$while/lstm_cell_85/dropout_2/Mul:z:0%while/lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_2/Mul_1?
"while/lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_85/dropout_3/Const?
 while/lstm_cell_85/dropout_3/MulMul%while/lstm_cell_85/ones_like:output:0+while/lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_85/dropout_3/Mul?
"while/lstm_cell_85/dropout_3/ShapeShape%while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_85/dropout_3/Shape?
9while/lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_85/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_85/dropout_3/GreaterEqual/y?
)while/lstm_cell_85/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_85/dropout_3/GreaterEqual?
!while/lstm_cell_85/dropout_3/CastCast-while/lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_85/dropout_3/Cast?
"while/lstm_cell_85/dropout_3/Mul_1Mul$while/lstm_cell_85/dropout_3/Mul:z:0%while/lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_85/dropout_3/Mul_1?
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_85/split/split_dim?
'while/lstm_cell_85/split/ReadVariableOpReadVariableOp2while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_85/split/ReadVariableOp?
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_85/split?
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul?
while/lstm_cell_85/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_1?
while/lstm_cell_85/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_2?
while/lstm_cell_85/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_3?
$while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_85/split_1/split_dim?
)while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_85/split_1/ReadVariableOp?
while/lstm_cell_85/split_1Split-while/lstm_cell_85/split_1/split_dim:output:01while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_85/split_1?
while/lstm_cell_85/BiasAddBiasAdd#while/lstm_cell_85/MatMul:product:0#while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd?
while/lstm_cell_85/BiasAdd_1BiasAdd%while/lstm_cell_85/MatMul_1:product:0#while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_1?
while/lstm_cell_85/BiasAdd_2BiasAdd%while/lstm_cell_85/MatMul_2:product:0#while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_2?
while/lstm_cell_85/BiasAdd_3BiasAdd%while/lstm_cell_85/MatMul_3:product:0#while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_3?
while/lstm_cell_85/mulMulwhile_placeholder_2$while/lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul?
while/lstm_cell_85/mul_1Mulwhile_placeholder_2&while/lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_1?
while/lstm_cell_85/mul_2Mulwhile_placeholder_2&while/lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_2?
while/lstm_cell_85/mul_3Mulwhile_placeholder_2&while/lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_3?
!while/lstm_cell_85/ReadVariableOpReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_85/ReadVariableOp?
&while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_85/strided_slice/stack?
(while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice/stack_1?
(while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_85/strided_slice/stack_2?
 while/lstm_cell_85/strided_sliceStridedSlice)while/lstm_cell_85/ReadVariableOp:value:0/while/lstm_cell_85/strided_slice/stack:output:01while/lstm_cell_85/strided_slice/stack_1:output:01while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_85/strided_slice?
while/lstm_cell_85/MatMul_4MatMulwhile/lstm_cell_85/mul:z:0)while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_4?
while/lstm_cell_85/addAddV2#while/lstm_cell_85/BiasAdd:output:0%while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add?
while/lstm_cell_85/SigmoidSigmoidwhile/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid?
#while/lstm_cell_85/ReadVariableOp_1ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_1?
(while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice_1/stack?
*while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_85/strided_slice_1/stack_1?
*while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_1/stack_2?
"while/lstm_cell_85/strided_slice_1StridedSlice+while/lstm_cell_85/ReadVariableOp_1:value:01while/lstm_cell_85/strided_slice_1/stack:output:03while/lstm_cell_85/strided_slice_1/stack_1:output:03while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_1?
while/lstm_cell_85/MatMul_5MatMulwhile/lstm_cell_85/mul_1:z:0+while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_5?
while/lstm_cell_85/add_1AddV2%while/lstm_cell_85/BiasAdd_1:output:0%while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_1?
while/lstm_cell_85/Sigmoid_1Sigmoidwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_1?
while/lstm_cell_85/mul_4Mul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_4?
#while/lstm_cell_85/ReadVariableOp_2ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_2?
(while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_85/strided_slice_2/stack?
*while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_85/strided_slice_2/stack_1?
*while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_2/stack_2?
"while/lstm_cell_85/strided_slice_2StridedSlice+while/lstm_cell_85/ReadVariableOp_2:value:01while/lstm_cell_85/strided_slice_2/stack:output:03while/lstm_cell_85/strided_slice_2/stack_1:output:03while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_2?
while/lstm_cell_85/MatMul_6MatMulwhile/lstm_cell_85/mul_2:z:0+while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_6?
while/lstm_cell_85/add_2AddV2%while/lstm_cell_85/BiasAdd_2:output:0%while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_2?
while/lstm_cell_85/ReluReluwhile/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu?
while/lstm_cell_85/mul_5Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_5?
while/lstm_cell_85/add_3AddV2while/lstm_cell_85/mul_4:z:0while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_3?
#while/lstm_cell_85/ReadVariableOp_3ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_3?
(while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_85/strided_slice_3/stack?
*while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_85/strided_slice_3/stack_1?
*while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_3/stack_2?
"while/lstm_cell_85/strided_slice_3StridedSlice+while/lstm_cell_85/ReadVariableOp_3:value:01while/lstm_cell_85/strided_slice_3/stack:output:03while/lstm_cell_85/strided_slice_3/stack_1:output:03while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_3?
while/lstm_cell_85/MatMul_7MatMulwhile/lstm_cell_85/mul_3:z:0+while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_7?
while/lstm_cell_85/add_4AddV2%while/lstm_cell_85/BiasAdd_3:output:0%while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_4?
while/lstm_cell_85/Sigmoid_2Sigmoidwhile/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_2?
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu_1?
while/lstm_cell_85/mul_6Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_85/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_85/ReadVariableOp$^while/lstm_cell_85/ReadVariableOp_1$^while/lstm_cell_85/ReadVariableOp_2$^while/lstm_cell_85/ReadVariableOp_3(^while/lstm_cell_85/split/ReadVariableOp*^while/lstm_cell_85/split_1/ReadVariableOp*"
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
*while_lstm_cell_85_readvariableop_resource,while_lstm_cell_85_readvariableop_resource_0"j
2while_lstm_cell_85_split_1_readvariableop_resource4while_lstm_cell_85_split_1_readvariableop_resource_0"f
0while_lstm_cell_85_split_readvariableop_resource2while_lstm_cell_85_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_85/ReadVariableOp!while/lstm_cell_85/ReadVariableOp2J
#while/lstm_cell_85/ReadVariableOp_1#while/lstm_cell_85/ReadVariableOp_12J
#while/lstm_cell_85/ReadVariableOp_2#while/lstm_cell_85/ReadVariableOp_22J
#while/lstm_cell_85/ReadVariableOp_3#while/lstm_cell_85/ReadVariableOp_32R
'while/lstm_cell_85/split/ReadVariableOp'while/lstm_cell_85/split/ReadVariableOp2V
)while/lstm_cell_85/split_1/ReadVariableOp)while/lstm_cell_85/split_1/ReadVariableOp: 
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
while_body_2828720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_85_2828744_0:	?+
while_lstm_cell_85_2828746_0:	?/
while_lstm_cell_85_2828748_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_85_2828744:	?)
while_lstm_cell_85_2828746:	?-
while_lstm_cell_85_2828748:	 ???*while/lstm_cell_85/StatefulPartitionedCall?
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
*while/lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_85_2828744_0while_lstm_cell_85_2828746_0while_lstm_cell_85_2828748_0*
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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_28286422,
*while/lstm_cell_85/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_85/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_85/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_85/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_85/StatefulPartitionedCall*"
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
while_lstm_cell_85_2828744while_lstm_cell_85_2828744_0":
while_lstm_cell_85_2828746while_lstm_cell_85_2828746_0":
while_lstm_cell_85_2828748while_lstm_cell_85_2828748_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_85/StatefulPartitionedCall*while/lstm_cell_85/StatefulPartitionedCall: 
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
?
D__inference_lstm_85_layer_call_and_return_conditional_losses_2828795

inputs'
lstm_cell_85_2828707:	?#
lstm_cell_85_2828709:	?'
lstm_cell_85_2828711:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_85/StatefulPartitionedCall?whileD
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
$lstm_cell_85/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_85_2828707lstm_cell_85_2828709lstm_cell_85_2828711*
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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_28286422&
$lstm_cell_85/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_85_2828707lstm_cell_85_2828709lstm_cell_85_2828711*
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
while_body_2828720*
condR
while_cond_2828719*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_85_2828707*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_85/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_85/StatefulPartitionedCall$lstm_cell_85/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
lstm_85_while_body_2830376,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3+
'lstm_85_while_lstm_85_strided_slice_1_0g
clstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_85_while_lstm_cell_85_split_readvariableop_resource_0:	?K
<lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0:	?G
4lstm_85_while_lstm_cell_85_readvariableop_resource_0:	 ?
lstm_85_while_identity
lstm_85_while_identity_1
lstm_85_while_identity_2
lstm_85_while_identity_3
lstm_85_while_identity_4
lstm_85_while_identity_5)
%lstm_85_while_lstm_85_strided_slice_1e
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorK
8lstm_85_while_lstm_cell_85_split_readvariableop_resource:	?I
:lstm_85_while_lstm_cell_85_split_1_readvariableop_resource:	?E
2lstm_85_while_lstm_cell_85_readvariableop_resource:	 ???)lstm_85/while/lstm_cell_85/ReadVariableOp?+lstm_85/while/lstm_cell_85/ReadVariableOp_1?+lstm_85/while/lstm_cell_85/ReadVariableOp_2?+lstm_85/while/lstm_cell_85/ReadVariableOp_3?/lstm_85/while/lstm_cell_85/split/ReadVariableOp?1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp?
?lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_85/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0lstm_85_while_placeholderHlstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_85/while/TensorArrayV2Read/TensorListGetItem?
*lstm_85/while/lstm_cell_85/ones_like/ShapeShapelstm_85_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_85/while/lstm_cell_85/ones_like/Shape?
*lstm_85/while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_85/while/lstm_cell_85/ones_like/Const?
$lstm_85/while/lstm_cell_85/ones_likeFill3lstm_85/while/lstm_cell_85/ones_like/Shape:output:03lstm_85/while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/ones_like?
(lstm_85/while/lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2*
(lstm_85/while/lstm_cell_85/dropout/Const?
&lstm_85/while/lstm_cell_85/dropout/MulMul-lstm_85/while/lstm_cell_85/ones_like:output:01lstm_85/while/lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_85/while/lstm_cell_85/dropout/Mul?
(lstm_85/while/lstm_cell_85/dropout/ShapeShape-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_85/while/lstm_cell_85/dropout/Shape?
?lstm_85/while/lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform1lstm_85/while/lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?ҭ2A
?lstm_85/while/lstm_cell_85/dropout/random_uniform/RandomUniform?
1lstm_85/while/lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_85/while/lstm_cell_85/dropout/GreaterEqual/y?
/lstm_85/while/lstm_cell_85/dropout/GreaterEqualGreaterEqualHlstm_85/while/lstm_cell_85/dropout/random_uniform/RandomUniform:output:0:lstm_85/while/lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_85/while/lstm_cell_85/dropout/GreaterEqual?
'lstm_85/while/lstm_cell_85/dropout/CastCast3lstm_85/while/lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_85/while/lstm_cell_85/dropout/Cast?
(lstm_85/while/lstm_cell_85/dropout/Mul_1Mul*lstm_85/while/lstm_cell_85/dropout/Mul:z:0+lstm_85/while/lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_85/while/lstm_cell_85/dropout/Mul_1?
*lstm_85/while/lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_85/while/lstm_cell_85/dropout_1/Const?
(lstm_85/while/lstm_cell_85/dropout_1/MulMul-lstm_85/while/lstm_cell_85/ones_like:output:03lstm_85/while/lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_85/while/lstm_cell_85/dropout_1/Mul?
*lstm_85/while/lstm_cell_85/dropout_1/ShapeShape-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_85/while/lstm_cell_85/dropout_1/Shape?
Alstm_85/while/lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_85/while/lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_85/while/lstm_cell_85/dropout_1/random_uniform/RandomUniform?
3lstm_85/while/lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_85/while/lstm_cell_85/dropout_1/GreaterEqual/y?
1lstm_85/while/lstm_cell_85/dropout_1/GreaterEqualGreaterEqualJlstm_85/while/lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:0<lstm_85/while/lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_85/while/lstm_cell_85/dropout_1/GreaterEqual?
)lstm_85/while/lstm_cell_85/dropout_1/CastCast5lstm_85/while/lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_85/while/lstm_cell_85/dropout_1/Cast?
*lstm_85/while/lstm_cell_85/dropout_1/Mul_1Mul,lstm_85/while/lstm_cell_85/dropout_1/Mul:z:0-lstm_85/while/lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_85/while/lstm_cell_85/dropout_1/Mul_1?
*lstm_85/while/lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_85/while/lstm_cell_85/dropout_2/Const?
(lstm_85/while/lstm_cell_85/dropout_2/MulMul-lstm_85/while/lstm_cell_85/ones_like:output:03lstm_85/while/lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_85/while/lstm_cell_85/dropout_2/Mul?
*lstm_85/while/lstm_cell_85/dropout_2/ShapeShape-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_85/while/lstm_cell_85/dropout_2/Shape?
Alstm_85/while/lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_85/while/lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_85/while/lstm_cell_85/dropout_2/random_uniform/RandomUniform?
3lstm_85/while/lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_85/while/lstm_cell_85/dropout_2/GreaterEqual/y?
1lstm_85/while/lstm_cell_85/dropout_2/GreaterEqualGreaterEqualJlstm_85/while/lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:0<lstm_85/while/lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_85/while/lstm_cell_85/dropout_2/GreaterEqual?
)lstm_85/while/lstm_cell_85/dropout_2/CastCast5lstm_85/while/lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_85/while/lstm_cell_85/dropout_2/Cast?
*lstm_85/while/lstm_cell_85/dropout_2/Mul_1Mul,lstm_85/while/lstm_cell_85/dropout_2/Mul:z:0-lstm_85/while/lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_85/while/lstm_cell_85/dropout_2/Mul_1?
*lstm_85/while/lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_85/while/lstm_cell_85/dropout_3/Const?
(lstm_85/while/lstm_cell_85/dropout_3/MulMul-lstm_85/while/lstm_cell_85/ones_like:output:03lstm_85/while/lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_85/while/lstm_cell_85/dropout_3/Mul?
*lstm_85/while/lstm_cell_85/dropout_3/ShapeShape-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_85/while/lstm_cell_85/dropout_3/Shape?
Alstm_85/while/lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_85/while/lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_85/while/lstm_cell_85/dropout_3/random_uniform/RandomUniform?
3lstm_85/while/lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_85/while/lstm_cell_85/dropout_3/GreaterEqual/y?
1lstm_85/while/lstm_cell_85/dropout_3/GreaterEqualGreaterEqualJlstm_85/while/lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:0<lstm_85/while/lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_85/while/lstm_cell_85/dropout_3/GreaterEqual?
)lstm_85/while/lstm_cell_85/dropout_3/CastCast5lstm_85/while/lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_85/while/lstm_cell_85/dropout_3/Cast?
*lstm_85/while/lstm_cell_85/dropout_3/Mul_1Mul,lstm_85/while/lstm_cell_85/dropout_3/Mul:z:0-lstm_85/while/lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_85/while/lstm_cell_85/dropout_3/Mul_1?
*lstm_85/while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_85/while/lstm_cell_85/split/split_dim?
/lstm_85/while/lstm_cell_85/split/ReadVariableOpReadVariableOp:lstm_85_while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_85/while/lstm_cell_85/split/ReadVariableOp?
 lstm_85/while/lstm_cell_85/splitSplit3lstm_85/while/lstm_cell_85/split/split_dim:output:07lstm_85/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_85/while/lstm_cell_85/split?
!lstm_85/while/lstm_cell_85/MatMulMatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_85/while/lstm_cell_85/MatMul?
#lstm_85/while/lstm_cell_85/MatMul_1MatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_1?
#lstm_85/while/lstm_cell_85/MatMul_2MatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_2?
#lstm_85/while/lstm_cell_85/MatMul_3MatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_3?
,lstm_85/while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_85/while/lstm_cell_85/split_1/split_dim?
1lstm_85/while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp<lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp?
"lstm_85/while/lstm_cell_85/split_1Split5lstm_85/while/lstm_cell_85/split_1/split_dim:output:09lstm_85/while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_85/while/lstm_cell_85/split_1?
"lstm_85/while/lstm_cell_85/BiasAddBiasAdd+lstm_85/while/lstm_cell_85/MatMul:product:0+lstm_85/while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/while/lstm_cell_85/BiasAdd?
$lstm_85/while/lstm_cell_85/BiasAdd_1BiasAdd-lstm_85/while/lstm_cell_85/MatMul_1:product:0+lstm_85/while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/BiasAdd_1?
$lstm_85/while/lstm_cell_85/BiasAdd_2BiasAdd-lstm_85/while/lstm_cell_85/MatMul_2:product:0+lstm_85/while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/BiasAdd_2?
$lstm_85/while/lstm_cell_85/BiasAdd_3BiasAdd-lstm_85/while/lstm_cell_85/MatMul_3:product:0+lstm_85/while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/BiasAdd_3?
lstm_85/while/lstm_cell_85/mulMullstm_85_while_placeholder_2,lstm_85/while/lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/while/lstm_cell_85/mul?
 lstm_85/while/lstm_cell_85/mul_1Mullstm_85_while_placeholder_2.lstm_85/while/lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_1?
 lstm_85/while/lstm_cell_85/mul_2Mullstm_85_while_placeholder_2.lstm_85/while/lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_2?
 lstm_85/while/lstm_cell_85/mul_3Mullstm_85_while_placeholder_2.lstm_85/while/lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_3?
)lstm_85/while/lstm_cell_85/ReadVariableOpReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_85/while/lstm_cell_85/ReadVariableOp?
.lstm_85/while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_85/while/lstm_cell_85/strided_slice/stack?
0lstm_85/while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_85/while/lstm_cell_85/strided_slice/stack_1?
0lstm_85/while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_85/while/lstm_cell_85/strided_slice/stack_2?
(lstm_85/while/lstm_cell_85/strided_sliceStridedSlice1lstm_85/while/lstm_cell_85/ReadVariableOp:value:07lstm_85/while/lstm_cell_85/strided_slice/stack:output:09lstm_85/while/lstm_cell_85/strided_slice/stack_1:output:09lstm_85/while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_85/while/lstm_cell_85/strided_slice?
#lstm_85/while/lstm_cell_85/MatMul_4MatMul"lstm_85/while/lstm_cell_85/mul:z:01lstm_85/while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_4?
lstm_85/while/lstm_cell_85/addAddV2+lstm_85/while/lstm_cell_85/BiasAdd:output:0-lstm_85/while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/while/lstm_cell_85/add?
"lstm_85/while/lstm_cell_85/SigmoidSigmoid"lstm_85/while/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/while/lstm_cell_85/Sigmoid?
+lstm_85/while/lstm_cell_85/ReadVariableOp_1ReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_85/while/lstm_cell_85/ReadVariableOp_1?
0lstm_85/while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_85/while/lstm_cell_85/strided_slice_1/stack?
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_1?
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_2?
*lstm_85/while/lstm_cell_85/strided_slice_1StridedSlice3lstm_85/while/lstm_cell_85/ReadVariableOp_1:value:09lstm_85/while/lstm_cell_85/strided_slice_1/stack:output:0;lstm_85/while/lstm_cell_85/strided_slice_1/stack_1:output:0;lstm_85/while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_85/while/lstm_cell_85/strided_slice_1?
#lstm_85/while/lstm_cell_85/MatMul_5MatMul$lstm_85/while/lstm_cell_85/mul_1:z:03lstm_85/while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_5?
 lstm_85/while/lstm_cell_85/add_1AddV2-lstm_85/while/lstm_cell_85/BiasAdd_1:output:0-lstm_85/while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_1?
$lstm_85/while/lstm_cell_85/Sigmoid_1Sigmoid$lstm_85/while/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/Sigmoid_1?
 lstm_85/while/lstm_cell_85/mul_4Mul(lstm_85/while/lstm_cell_85/Sigmoid_1:y:0lstm_85_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_4?
+lstm_85/while/lstm_cell_85/ReadVariableOp_2ReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_85/while/lstm_cell_85/ReadVariableOp_2?
0lstm_85/while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_85/while/lstm_cell_85/strided_slice_2/stack?
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_1?
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_2?
*lstm_85/while/lstm_cell_85/strided_slice_2StridedSlice3lstm_85/while/lstm_cell_85/ReadVariableOp_2:value:09lstm_85/while/lstm_cell_85/strided_slice_2/stack:output:0;lstm_85/while/lstm_cell_85/strided_slice_2/stack_1:output:0;lstm_85/while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_85/while/lstm_cell_85/strided_slice_2?
#lstm_85/while/lstm_cell_85/MatMul_6MatMul$lstm_85/while/lstm_cell_85/mul_2:z:03lstm_85/while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_6?
 lstm_85/while/lstm_cell_85/add_2AddV2-lstm_85/while/lstm_cell_85/BiasAdd_2:output:0-lstm_85/while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_2?
lstm_85/while/lstm_cell_85/ReluRelu$lstm_85/while/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_85/while/lstm_cell_85/Relu?
 lstm_85/while/lstm_cell_85/mul_5Mul&lstm_85/while/lstm_cell_85/Sigmoid:y:0-lstm_85/while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_5?
 lstm_85/while/lstm_cell_85/add_3AddV2$lstm_85/while/lstm_cell_85/mul_4:z:0$lstm_85/while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_3?
+lstm_85/while/lstm_cell_85/ReadVariableOp_3ReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_85/while/lstm_cell_85/ReadVariableOp_3?
0lstm_85/while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_85/while/lstm_cell_85/strided_slice_3/stack?
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_1?
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_2?
*lstm_85/while/lstm_cell_85/strided_slice_3StridedSlice3lstm_85/while/lstm_cell_85/ReadVariableOp_3:value:09lstm_85/while/lstm_cell_85/strided_slice_3/stack:output:0;lstm_85/while/lstm_cell_85/strided_slice_3/stack_1:output:0;lstm_85/while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_85/while/lstm_cell_85/strided_slice_3?
#lstm_85/while/lstm_cell_85/MatMul_7MatMul$lstm_85/while/lstm_cell_85/mul_3:z:03lstm_85/while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_7?
 lstm_85/while/lstm_cell_85/add_4AddV2-lstm_85/while/lstm_cell_85/BiasAdd_3:output:0-lstm_85/while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_4?
$lstm_85/while/lstm_cell_85/Sigmoid_2Sigmoid$lstm_85/while/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/Sigmoid_2?
!lstm_85/while/lstm_cell_85/Relu_1Relu$lstm_85/while/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_85/while/lstm_cell_85/Relu_1?
 lstm_85/while/lstm_cell_85/mul_6Mul(lstm_85/while/lstm_cell_85/Sigmoid_2:y:0/lstm_85/while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_6?
2lstm_85/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_85_while_placeholder_1lstm_85_while_placeholder$lstm_85/while/lstm_cell_85/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_85/while/TensorArrayV2Write/TensorListSetIteml
lstm_85/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_85/while/add/y?
lstm_85/while/addAddV2lstm_85_while_placeholderlstm_85/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_85/while/addp
lstm_85/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_85/while/add_1/y?
lstm_85/while/add_1AddV2(lstm_85_while_lstm_85_while_loop_counterlstm_85/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_85/while/add_1?
lstm_85/while/IdentityIdentitylstm_85/while/add_1:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity?
lstm_85/while/Identity_1Identity.lstm_85_while_lstm_85_while_maximum_iterations^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity_1?
lstm_85/while/Identity_2Identitylstm_85/while/add:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity_2?
lstm_85/while/Identity_3IdentityBlstm_85/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity_3?
lstm_85/while/Identity_4Identity$lstm_85/while/lstm_cell_85/mul_6:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_85/while/Identity_4?
lstm_85/while/Identity_5Identity$lstm_85/while/lstm_cell_85/add_3:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_85/while/Identity_5?
lstm_85/while/NoOpNoOp*^lstm_85/while/lstm_cell_85/ReadVariableOp,^lstm_85/while/lstm_cell_85/ReadVariableOp_1,^lstm_85/while/lstm_cell_85/ReadVariableOp_2,^lstm_85/while/lstm_cell_85/ReadVariableOp_30^lstm_85/while/lstm_cell_85/split/ReadVariableOp2^lstm_85/while/lstm_cell_85/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_85/while/NoOp"9
lstm_85_while_identitylstm_85/while/Identity:output:0"=
lstm_85_while_identity_1!lstm_85/while/Identity_1:output:0"=
lstm_85_while_identity_2!lstm_85/while/Identity_2:output:0"=
lstm_85_while_identity_3!lstm_85/while/Identity_3:output:0"=
lstm_85_while_identity_4!lstm_85/while/Identity_4:output:0"=
lstm_85_while_identity_5!lstm_85/while/Identity_5:output:0"P
%lstm_85_while_lstm_85_strided_slice_1'lstm_85_while_lstm_85_strided_slice_1_0"j
2lstm_85_while_lstm_cell_85_readvariableop_resource4lstm_85_while_lstm_cell_85_readvariableop_resource_0"z
:lstm_85_while_lstm_cell_85_split_1_readvariableop_resource<lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0"v
8lstm_85_while_lstm_cell_85_split_readvariableop_resource:lstm_85_while_lstm_cell_85_split_readvariableop_resource_0"?
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_85/while/lstm_cell_85/ReadVariableOp)lstm_85/while/lstm_cell_85/ReadVariableOp2Z
+lstm_85/while/lstm_cell_85/ReadVariableOp_1+lstm_85/while/lstm_cell_85/ReadVariableOp_12Z
+lstm_85/while/lstm_cell_85/ReadVariableOp_2+lstm_85/while/lstm_cell_85/ReadVariableOp_22Z
+lstm_85/while/lstm_cell_85/ReadVariableOp_3+lstm_85/while/lstm_cell_85/ReadVariableOp_32b
/lstm_85/while/lstm_cell_85/split/ReadVariableOp/lstm_85/while/lstm_cell_85/split/ReadVariableOp2f
1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp: 
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
while_body_2830723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_85_split_readvariableop_resource_0:	?C
4while_lstm_cell_85_split_1_readvariableop_resource_0:	??
,while_lstm_cell_85_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_85_split_readvariableop_resource:	?A
2while_lstm_cell_85_split_1_readvariableop_resource:	?=
*while_lstm_cell_85_readvariableop_resource:	 ???!while/lstm_cell_85/ReadVariableOp?#while/lstm_cell_85/ReadVariableOp_1?#while/lstm_cell_85/ReadVariableOp_2?#while/lstm_cell_85/ReadVariableOp_3?'while/lstm_cell_85/split/ReadVariableOp?)while/lstm_cell_85/split_1/ReadVariableOp?
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
"while/lstm_cell_85/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_85/ones_like/Shape?
"while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_85/ones_like/Const?
while/lstm_cell_85/ones_likeFill+while/lstm_cell_85/ones_like/Shape:output:0+while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/ones_like?
"while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_85/split/split_dim?
'while/lstm_cell_85/split/ReadVariableOpReadVariableOp2while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_85/split/ReadVariableOp?
while/lstm_cell_85/splitSplit+while/lstm_cell_85/split/split_dim:output:0/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_85/split?
while/lstm_cell_85/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul?
while/lstm_cell_85/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_1?
while/lstm_cell_85/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_2?
while/lstm_cell_85/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_3?
$while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_85/split_1/split_dim?
)while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_85/split_1/ReadVariableOp?
while/lstm_cell_85/split_1Split-while/lstm_cell_85/split_1/split_dim:output:01while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_85/split_1?
while/lstm_cell_85/BiasAddBiasAdd#while/lstm_cell_85/MatMul:product:0#while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd?
while/lstm_cell_85/BiasAdd_1BiasAdd%while/lstm_cell_85/MatMul_1:product:0#while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_1?
while/lstm_cell_85/BiasAdd_2BiasAdd%while/lstm_cell_85/MatMul_2:product:0#while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_2?
while/lstm_cell_85/BiasAdd_3BiasAdd%while/lstm_cell_85/MatMul_3:product:0#while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/BiasAdd_3?
while/lstm_cell_85/mulMulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul?
while/lstm_cell_85/mul_1Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_1?
while/lstm_cell_85/mul_2Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_2?
while/lstm_cell_85/mul_3Mulwhile_placeholder_2%while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_3?
!while/lstm_cell_85/ReadVariableOpReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_85/ReadVariableOp?
&while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_85/strided_slice/stack?
(while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice/stack_1?
(while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_85/strided_slice/stack_2?
 while/lstm_cell_85/strided_sliceStridedSlice)while/lstm_cell_85/ReadVariableOp:value:0/while/lstm_cell_85/strided_slice/stack:output:01while/lstm_cell_85/strided_slice/stack_1:output:01while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_85/strided_slice?
while/lstm_cell_85/MatMul_4MatMulwhile/lstm_cell_85/mul:z:0)while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_4?
while/lstm_cell_85/addAddV2#while/lstm_cell_85/BiasAdd:output:0%while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add?
while/lstm_cell_85/SigmoidSigmoidwhile/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid?
#while/lstm_cell_85/ReadVariableOp_1ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_1?
(while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_85/strided_slice_1/stack?
*while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_85/strided_slice_1/stack_1?
*while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_1/stack_2?
"while/lstm_cell_85/strided_slice_1StridedSlice+while/lstm_cell_85/ReadVariableOp_1:value:01while/lstm_cell_85/strided_slice_1/stack:output:03while/lstm_cell_85/strided_slice_1/stack_1:output:03while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_1?
while/lstm_cell_85/MatMul_5MatMulwhile/lstm_cell_85/mul_1:z:0+while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_5?
while/lstm_cell_85/add_1AddV2%while/lstm_cell_85/BiasAdd_1:output:0%while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_1?
while/lstm_cell_85/Sigmoid_1Sigmoidwhile/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_1?
while/lstm_cell_85/mul_4Mul while/lstm_cell_85/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_4?
#while/lstm_cell_85/ReadVariableOp_2ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_2?
(while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_85/strided_slice_2/stack?
*while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_85/strided_slice_2/stack_1?
*while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_2/stack_2?
"while/lstm_cell_85/strided_slice_2StridedSlice+while/lstm_cell_85/ReadVariableOp_2:value:01while/lstm_cell_85/strided_slice_2/stack:output:03while/lstm_cell_85/strided_slice_2/stack_1:output:03while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_2?
while/lstm_cell_85/MatMul_6MatMulwhile/lstm_cell_85/mul_2:z:0+while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_6?
while/lstm_cell_85/add_2AddV2%while/lstm_cell_85/BiasAdd_2:output:0%while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_2?
while/lstm_cell_85/ReluReluwhile/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu?
while/lstm_cell_85/mul_5Mulwhile/lstm_cell_85/Sigmoid:y:0%while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_5?
while/lstm_cell_85/add_3AddV2while/lstm_cell_85/mul_4:z:0while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_3?
#while/lstm_cell_85/ReadVariableOp_3ReadVariableOp,while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_85/ReadVariableOp_3?
(while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_85/strided_slice_3/stack?
*while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_85/strided_slice_3/stack_1?
*while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_85/strided_slice_3/stack_2?
"while/lstm_cell_85/strided_slice_3StridedSlice+while/lstm_cell_85/ReadVariableOp_3:value:01while/lstm_cell_85/strided_slice_3/stack:output:03while/lstm_cell_85/strided_slice_3/stack_1:output:03while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_85/strided_slice_3?
while/lstm_cell_85/MatMul_7MatMulwhile/lstm_cell_85/mul_3:z:0+while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/MatMul_7?
while/lstm_cell_85/add_4AddV2%while/lstm_cell_85/BiasAdd_3:output:0%while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/add_4?
while/lstm_cell_85/Sigmoid_2Sigmoidwhile/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Sigmoid_2?
while/lstm_cell_85/Relu_1Reluwhile/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/Relu_1?
while/lstm_cell_85/mul_6Mul while/lstm_cell_85/Sigmoid_2:y:0'while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_85/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_85/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_85/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_85/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_85/ReadVariableOp$^while/lstm_cell_85/ReadVariableOp_1$^while/lstm_cell_85/ReadVariableOp_2$^while/lstm_cell_85/ReadVariableOp_3(^while/lstm_cell_85/split/ReadVariableOp*^while/lstm_cell_85/split_1/ReadVariableOp*"
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
*while_lstm_cell_85_readvariableop_resource,while_lstm_cell_85_readvariableop_resource_0"j
2while_lstm_cell_85_split_1_readvariableop_resource4while_lstm_cell_85_split_1_readvariableop_resource_0"f
0while_lstm_cell_85_split_readvariableop_resource2while_lstm_cell_85_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_85/ReadVariableOp!while/lstm_cell_85/ReadVariableOp2J
#while/lstm_cell_85/ReadVariableOp_1#while/lstm_cell_85/ReadVariableOp_12J
#while/lstm_cell_85/ReadVariableOp_2#while/lstm_cell_85/ReadVariableOp_22J
#while/lstm_cell_85/ReadVariableOp_3#while/lstm_cell_85/ReadVariableOp_32R
'while/lstm_cell_85/split/ReadVariableOp'while/lstm_cell_85/split/ReadVariableOp2V
)while/lstm_cell_85/split_1/ReadVariableOp)while/lstm_cell_85/split_1/ReadVariableOp: 
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
F__inference_dense_102_layer_call_and_return_conditional_losses_2831768

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
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831713

inputs=
*lstm_cell_85_split_readvariableop_resource:	?;
,lstm_cell_85_split_1_readvariableop_resource:	?7
$lstm_cell_85_readvariableop_resource:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_85/ReadVariableOp?lstm_cell_85/ReadVariableOp_1?lstm_cell_85/ReadVariableOp_2?lstm_cell_85/ReadVariableOp_3?!lstm_cell_85/split/ReadVariableOp?#lstm_cell_85/split_1/ReadVariableOp?whileD
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
lstm_cell_85/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_85/ones_like/Shape?
lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_85/ones_like/Const?
lstm_cell_85/ones_likeFill%lstm_cell_85/ones_like/Shape:output:0%lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/ones_like}
lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout/Const?
lstm_cell_85/dropout/MulMullstm_cell_85/ones_like:output:0#lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Mul?
lstm_cell_85/dropout/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout/Shape?
1lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??d23
1lstm_cell_85/dropout/random_uniform/RandomUniform?
#lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_85/dropout/GreaterEqual/y?
!lstm_cell_85/dropout/GreaterEqualGreaterEqual:lstm_cell_85/dropout/random_uniform/RandomUniform:output:0,lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_85/dropout/GreaterEqual?
lstm_cell_85/dropout/CastCast%lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Cast?
lstm_cell_85/dropout/Mul_1Mullstm_cell_85/dropout/Mul:z:0lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout/Mul_1?
lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_1/Const?
lstm_cell_85/dropout_1/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Mul?
lstm_cell_85/dropout_1/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_1/Shape?
3lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ԭ?25
3lstm_cell_85/dropout_1/random_uniform/RandomUniform?
%lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_1/GreaterEqual/y?
#lstm_cell_85/dropout_1/GreaterEqualGreaterEqual<lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_1/GreaterEqual?
lstm_cell_85/dropout_1/CastCast'lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Cast?
lstm_cell_85/dropout_1/Mul_1Mullstm_cell_85/dropout_1/Mul:z:0lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_1/Mul_1?
lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_2/Const?
lstm_cell_85/dropout_2/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Mul?
lstm_cell_85/dropout_2/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_2/Shape?
3lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ϩ?25
3lstm_cell_85/dropout_2/random_uniform/RandomUniform?
%lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_2/GreaterEqual/y?
#lstm_cell_85/dropout_2/GreaterEqualGreaterEqual<lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_2/GreaterEqual?
lstm_cell_85/dropout_2/CastCast'lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Cast?
lstm_cell_85/dropout_2/Mul_1Mullstm_cell_85/dropout_2/Mul:z:0lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_2/Mul_1?
lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_85/dropout_3/Const?
lstm_cell_85/dropout_3/MulMullstm_cell_85/ones_like:output:0%lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Mul?
lstm_cell_85/dropout_3/ShapeShapelstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_85/dropout_3/Shape?
3lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?ޕ25
3lstm_cell_85/dropout_3/random_uniform/RandomUniform?
%lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_85/dropout_3/GreaterEqual/y?
#lstm_cell_85/dropout_3/GreaterEqualGreaterEqual<lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_85/dropout_3/GreaterEqual?
lstm_cell_85/dropout_3/CastCast'lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Cast?
lstm_cell_85/dropout_3/Mul_1Mullstm_cell_85/dropout_3/Mul:z:0lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/dropout_3/Mul_1~
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_85/split/split_dim?
!lstm_cell_85/split/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_85/split/ReadVariableOp?
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0)lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_85/split?
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul?
lstm_cell_85/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_1?
lstm_cell_85/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_2?
lstm_cell_85/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_3?
lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_85/split_1/split_dim?
#lstm_cell_85/split_1/ReadVariableOpReadVariableOp,lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_85/split_1/ReadVariableOp?
lstm_cell_85/split_1Split'lstm_cell_85/split_1/split_dim:output:0+lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_85/split_1?
lstm_cell_85/BiasAddBiasAddlstm_cell_85/MatMul:product:0lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd?
lstm_cell_85/BiasAdd_1BiasAddlstm_cell_85/MatMul_1:product:0lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_1?
lstm_cell_85/BiasAdd_2BiasAddlstm_cell_85/MatMul_2:product:0lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_2?
lstm_cell_85/BiasAdd_3BiasAddlstm_cell_85/MatMul_3:product:0lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_3?
lstm_cell_85/mulMulzeros:output:0lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul?
lstm_cell_85/mul_1Mulzeros:output:0 lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_1?
lstm_cell_85/mul_2Mulzeros:output:0 lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_2?
lstm_cell_85/mul_3Mulzeros:output:0 lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_3?
lstm_cell_85/ReadVariableOpReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp?
 lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_85/strided_slice/stack?
"lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice/stack_1?
"lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_85/strided_slice/stack_2?
lstm_cell_85/strided_sliceStridedSlice#lstm_cell_85/ReadVariableOp:value:0)lstm_cell_85/strided_slice/stack:output:0+lstm_cell_85/strided_slice/stack_1:output:0+lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice?
lstm_cell_85/MatMul_4MatMullstm_cell_85/mul:z:0#lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_4?
lstm_cell_85/addAddV2lstm_cell_85/BiasAdd:output:0lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add
lstm_cell_85/SigmoidSigmoidlstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid?
lstm_cell_85/ReadVariableOp_1ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_1?
"lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice_1/stack?
$lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_85/strided_slice_1/stack_1?
$lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_1/stack_2?
lstm_cell_85/strided_slice_1StridedSlice%lstm_cell_85/ReadVariableOp_1:value:0+lstm_cell_85/strided_slice_1/stack:output:0-lstm_cell_85/strided_slice_1/stack_1:output:0-lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_1?
lstm_cell_85/MatMul_5MatMullstm_cell_85/mul_1:z:0%lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_5?
lstm_cell_85/add_1AddV2lstm_cell_85/BiasAdd_1:output:0lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_1?
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_1?
lstm_cell_85/mul_4Mullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_4?
lstm_cell_85/ReadVariableOp_2ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_2?
"lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_85/strided_slice_2/stack?
$lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_85/strided_slice_2/stack_1?
$lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_2/stack_2?
lstm_cell_85/strided_slice_2StridedSlice%lstm_cell_85/ReadVariableOp_2:value:0+lstm_cell_85/strided_slice_2/stack:output:0-lstm_cell_85/strided_slice_2/stack_1:output:0-lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_2?
lstm_cell_85/MatMul_6MatMullstm_cell_85/mul_2:z:0%lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_6?
lstm_cell_85/add_2AddV2lstm_cell_85/BiasAdd_2:output:0lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_2x
lstm_cell_85/ReluRelulstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu?
lstm_cell_85/mul_5Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_5?
lstm_cell_85/add_3AddV2lstm_cell_85/mul_4:z:0lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_3?
lstm_cell_85/ReadVariableOp_3ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_3?
"lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_85/strided_slice_3/stack?
$lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_85/strided_slice_3/stack_1?
$lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_3/stack_2?
lstm_cell_85/strided_slice_3StridedSlice%lstm_cell_85/ReadVariableOp_3:value:0+lstm_cell_85/strided_slice_3/stack:output:0-lstm_cell_85/strided_slice_3/stack_1:output:0-lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_3?
lstm_cell_85/MatMul_7MatMullstm_cell_85/mul_3:z:0%lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_7?
lstm_cell_85/add_4AddV2lstm_cell_85/BiasAdd_3:output:0lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_4?
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_2|
lstm_cell_85/Relu_1Relulstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu_1?
lstm_cell_85/mul_6Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_85_split_readvariableop_resource,lstm_cell_85_split_1_readvariableop_resource$lstm_cell_85_readvariableop_resource*
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
while_body_2831548*
condR
while_cond_2831547*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_85/ReadVariableOp^lstm_cell_85/ReadVariableOp_1^lstm_cell_85/ReadVariableOp_2^lstm_cell_85/ReadVariableOp_3"^lstm_cell_85/split/ReadVariableOp$^lstm_cell_85/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_85/ReadVariableOplstm_cell_85/ReadVariableOp2>
lstm_cell_85/ReadVariableOp_1lstm_cell_85/ReadVariableOp_12>
lstm_cell_85/ReadVariableOp_2lstm_cell_85/ReadVariableOp_22>
lstm_cell_85/ReadVariableOp_3lstm_cell_85/ReadVariableOp_32F
!lstm_cell_85/split/ReadVariableOp!lstm_cell_85/split/ReadVariableOp2J
#lstm_cell_85/split_1/ReadVariableOp#lstm_cell_85/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2830569

inputsE
2lstm_85_lstm_cell_85_split_readvariableop_resource:	?C
4lstm_85_lstm_cell_85_split_1_readvariableop_resource:	??
,lstm_85_lstm_cell_85_readvariableop_resource:	 ?:
(dense_102_matmul_readvariableop_resource:  7
)dense_102_biasadd_readvariableop_resource: :
(dense_103_matmul_readvariableop_resource: 7
)dense_103_biasadd_readvariableop_resource:
identity?? dense_102/BiasAdd/ReadVariableOp?dense_102/MatMul/ReadVariableOp? dense_103/BiasAdd/ReadVariableOp?dense_103/MatMul/ReadVariableOp?0dense_103/bias/Regularizer/Square/ReadVariableOp?#lstm_85/lstm_cell_85/ReadVariableOp?%lstm_85/lstm_cell_85/ReadVariableOp_1?%lstm_85/lstm_cell_85/ReadVariableOp_2?%lstm_85/lstm_cell_85/ReadVariableOp_3?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?)lstm_85/lstm_cell_85/split/ReadVariableOp?+lstm_85/lstm_cell_85/split_1/ReadVariableOp?lstm_85/whileT
lstm_85/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_85/Shape?
lstm_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_85/strided_slice/stack?
lstm_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_85/strided_slice/stack_1?
lstm_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_85/strided_slice/stack_2?
lstm_85/strided_sliceStridedSlicelstm_85/Shape:output:0$lstm_85/strided_slice/stack:output:0&lstm_85/strided_slice/stack_1:output:0&lstm_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_85/strided_slicel
lstm_85/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros/mul/y?
lstm_85/zeros/mulMullstm_85/strided_slice:output:0lstm_85/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros/mulo
lstm_85/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_85/zeros/Less/y?
lstm_85/zeros/LessLesslstm_85/zeros/mul:z:0lstm_85/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros/Lessr
lstm_85/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros/packed/1?
lstm_85/zeros/packedPacklstm_85/strided_slice:output:0lstm_85/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_85/zeros/packedo
lstm_85/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_85/zeros/Const?
lstm_85/zerosFilllstm_85/zeros/packed:output:0lstm_85/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/zerosp
lstm_85/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros_1/mul/y?
lstm_85/zeros_1/mulMullstm_85/strided_slice:output:0lstm_85/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros_1/muls
lstm_85/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_85/zeros_1/Less/y?
lstm_85/zeros_1/LessLesslstm_85/zeros_1/mul:z:0lstm_85/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_85/zeros_1/Lessv
lstm_85/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/zeros_1/packed/1?
lstm_85/zeros_1/packedPacklstm_85/strided_slice:output:0!lstm_85/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_85/zeros_1/packeds
lstm_85/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_85/zeros_1/Const?
lstm_85/zeros_1Filllstm_85/zeros_1/packed:output:0lstm_85/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/zeros_1?
lstm_85/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_85/transpose/perm?
lstm_85/transpose	Transposeinputslstm_85/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_85/transposeg
lstm_85/Shape_1Shapelstm_85/transpose:y:0*
T0*
_output_shapes
:2
lstm_85/Shape_1?
lstm_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_85/strided_slice_1/stack?
lstm_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_1/stack_1?
lstm_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_1/stack_2?
lstm_85/strided_slice_1StridedSlicelstm_85/Shape_1:output:0&lstm_85/strided_slice_1/stack:output:0(lstm_85/strided_slice_1/stack_1:output:0(lstm_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_85/strided_slice_1?
#lstm_85/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_85/TensorArrayV2/element_shape?
lstm_85/TensorArrayV2TensorListReserve,lstm_85/TensorArrayV2/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_85/TensorArrayV2?
=lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_85/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_85/transpose:y:0Flstm_85/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_85/TensorArrayUnstack/TensorListFromTensor?
lstm_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_85/strided_slice_2/stack?
lstm_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_2/stack_1?
lstm_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_2/stack_2?
lstm_85/strided_slice_2StridedSlicelstm_85/transpose:y:0&lstm_85/strided_slice_2/stack:output:0(lstm_85/strided_slice_2/stack_1:output:0(lstm_85/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_85/strided_slice_2?
$lstm_85/lstm_cell_85/ones_like/ShapeShapelstm_85/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_85/lstm_cell_85/ones_like/Shape?
$lstm_85/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_85/lstm_cell_85/ones_like/Const?
lstm_85/lstm_cell_85/ones_likeFill-lstm_85/lstm_cell_85/ones_like/Shape:output:0-lstm_85/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/ones_like?
"lstm_85/lstm_cell_85/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"lstm_85/lstm_cell_85/dropout/Const?
 lstm_85/lstm_cell_85/dropout/MulMul'lstm_85/lstm_cell_85/ones_like:output:0+lstm_85/lstm_cell_85/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/lstm_cell_85/dropout/Mul?
"lstm_85/lstm_cell_85/dropout/ShapeShape'lstm_85/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_85/lstm_cell_85/dropout/Shape?
9lstm_85/lstm_cell_85/dropout/random_uniform/RandomUniformRandomUniform+lstm_85/lstm_cell_85/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?ީ2;
9lstm_85/lstm_cell_85/dropout/random_uniform/RandomUniform?
+lstm_85/lstm_cell_85/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_85/lstm_cell_85/dropout/GreaterEqual/y?
)lstm_85/lstm_cell_85/dropout/GreaterEqualGreaterEqualBlstm_85/lstm_cell_85/dropout/random_uniform/RandomUniform:output:04lstm_85/lstm_cell_85/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_85/lstm_cell_85/dropout/GreaterEqual?
!lstm_85/lstm_cell_85/dropout/CastCast-lstm_85/lstm_cell_85/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_85/lstm_cell_85/dropout/Cast?
"lstm_85/lstm_cell_85/dropout/Mul_1Mul$lstm_85/lstm_cell_85/dropout/Mul:z:0%lstm_85/lstm_cell_85/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/lstm_cell_85/dropout/Mul_1?
$lstm_85/lstm_cell_85/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_85/lstm_cell_85/dropout_1/Const?
"lstm_85/lstm_cell_85/dropout_1/MulMul'lstm_85/lstm_cell_85/ones_like:output:0-lstm_85/lstm_cell_85/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/lstm_cell_85/dropout_1/Mul?
$lstm_85/lstm_cell_85/dropout_1/ShapeShape'lstm_85/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_85/lstm_cell_85/dropout_1/Shape?
;lstm_85/lstm_cell_85/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_85/lstm_cell_85/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_85/lstm_cell_85/dropout_1/random_uniform/RandomUniform?
-lstm_85/lstm_cell_85/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_85/lstm_cell_85/dropout_1/GreaterEqual/y?
+lstm_85/lstm_cell_85/dropout_1/GreaterEqualGreaterEqualDlstm_85/lstm_cell_85/dropout_1/random_uniform/RandomUniform:output:06lstm_85/lstm_cell_85/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_85/lstm_cell_85/dropout_1/GreaterEqual?
#lstm_85/lstm_cell_85/dropout_1/CastCast/lstm_85/lstm_cell_85/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_85/lstm_cell_85/dropout_1/Cast?
$lstm_85/lstm_cell_85/dropout_1/Mul_1Mul&lstm_85/lstm_cell_85/dropout_1/Mul:z:0'lstm_85/lstm_cell_85/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/lstm_cell_85/dropout_1/Mul_1?
$lstm_85/lstm_cell_85/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_85/lstm_cell_85/dropout_2/Const?
"lstm_85/lstm_cell_85/dropout_2/MulMul'lstm_85/lstm_cell_85/ones_like:output:0-lstm_85/lstm_cell_85/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/lstm_cell_85/dropout_2/Mul?
$lstm_85/lstm_cell_85/dropout_2/ShapeShape'lstm_85/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_85/lstm_cell_85/dropout_2/Shape?
;lstm_85/lstm_cell_85/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_85/lstm_cell_85/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2?գ2=
;lstm_85/lstm_cell_85/dropout_2/random_uniform/RandomUniform?
-lstm_85/lstm_cell_85/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_85/lstm_cell_85/dropout_2/GreaterEqual/y?
+lstm_85/lstm_cell_85/dropout_2/GreaterEqualGreaterEqualDlstm_85/lstm_cell_85/dropout_2/random_uniform/RandomUniform:output:06lstm_85/lstm_cell_85/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_85/lstm_cell_85/dropout_2/GreaterEqual?
#lstm_85/lstm_cell_85/dropout_2/CastCast/lstm_85/lstm_cell_85/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_85/lstm_cell_85/dropout_2/Cast?
$lstm_85/lstm_cell_85/dropout_2/Mul_1Mul&lstm_85/lstm_cell_85/dropout_2/Mul:z:0'lstm_85/lstm_cell_85/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/lstm_cell_85/dropout_2/Mul_1?
$lstm_85/lstm_cell_85/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_85/lstm_cell_85/dropout_3/Const?
"lstm_85/lstm_cell_85/dropout_3/MulMul'lstm_85/lstm_cell_85/ones_like:output:0-lstm_85/lstm_cell_85/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/lstm_cell_85/dropout_3/Mul?
$lstm_85/lstm_cell_85/dropout_3/ShapeShape'lstm_85/lstm_cell_85/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_85/lstm_cell_85/dropout_3/Shape?
;lstm_85/lstm_cell_85/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_85/lstm_cell_85/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ܸ?2=
;lstm_85/lstm_cell_85/dropout_3/random_uniform/RandomUniform?
-lstm_85/lstm_cell_85/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_85/lstm_cell_85/dropout_3/GreaterEqual/y?
+lstm_85/lstm_cell_85/dropout_3/GreaterEqualGreaterEqualDlstm_85/lstm_cell_85/dropout_3/random_uniform/RandomUniform:output:06lstm_85/lstm_cell_85/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_85/lstm_cell_85/dropout_3/GreaterEqual?
#lstm_85/lstm_cell_85/dropout_3/CastCast/lstm_85/lstm_cell_85/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_85/lstm_cell_85/dropout_3/Cast?
$lstm_85/lstm_cell_85/dropout_3/Mul_1Mul&lstm_85/lstm_cell_85/dropout_3/Mul:z:0'lstm_85/lstm_cell_85/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/lstm_cell_85/dropout_3/Mul_1?
$lstm_85/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_85/lstm_cell_85/split/split_dim?
)lstm_85/lstm_cell_85/split/ReadVariableOpReadVariableOp2lstm_85_lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_85/lstm_cell_85/split/ReadVariableOp?
lstm_85/lstm_cell_85/splitSplit-lstm_85/lstm_cell_85/split/split_dim:output:01lstm_85/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_85/lstm_cell_85/split?
lstm_85/lstm_cell_85/MatMulMatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul?
lstm_85/lstm_cell_85/MatMul_1MatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_1?
lstm_85/lstm_cell_85/MatMul_2MatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_2?
lstm_85/lstm_cell_85/MatMul_3MatMul lstm_85/strided_slice_2:output:0#lstm_85/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_3?
&lstm_85/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_85/lstm_cell_85/split_1/split_dim?
+lstm_85/lstm_cell_85/split_1/ReadVariableOpReadVariableOp4lstm_85_lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_85/lstm_cell_85/split_1/ReadVariableOp?
lstm_85/lstm_cell_85/split_1Split/lstm_85/lstm_cell_85/split_1/split_dim:output:03lstm_85/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_85/lstm_cell_85/split_1?
lstm_85/lstm_cell_85/BiasAddBiasAdd%lstm_85/lstm_cell_85/MatMul:product:0%lstm_85/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/BiasAdd?
lstm_85/lstm_cell_85/BiasAdd_1BiasAdd'lstm_85/lstm_cell_85/MatMul_1:product:0%lstm_85/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/BiasAdd_1?
lstm_85/lstm_cell_85/BiasAdd_2BiasAdd'lstm_85/lstm_cell_85/MatMul_2:product:0%lstm_85/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/BiasAdd_2?
lstm_85/lstm_cell_85/BiasAdd_3BiasAdd'lstm_85/lstm_cell_85/MatMul_3:product:0%lstm_85/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/BiasAdd_3?
lstm_85/lstm_cell_85/mulMullstm_85/zeros:output:0&lstm_85/lstm_cell_85/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul?
lstm_85/lstm_cell_85/mul_1Mullstm_85/zeros:output:0(lstm_85/lstm_cell_85/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_1?
lstm_85/lstm_cell_85/mul_2Mullstm_85/zeros:output:0(lstm_85/lstm_cell_85/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_2?
lstm_85/lstm_cell_85/mul_3Mullstm_85/zeros:output:0(lstm_85/lstm_cell_85/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_3?
#lstm_85/lstm_cell_85/ReadVariableOpReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_85/lstm_cell_85/ReadVariableOp?
(lstm_85/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_85/lstm_cell_85/strided_slice/stack?
*lstm_85/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_85/lstm_cell_85/strided_slice/stack_1?
*lstm_85/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_85/lstm_cell_85/strided_slice/stack_2?
"lstm_85/lstm_cell_85/strided_sliceStridedSlice+lstm_85/lstm_cell_85/ReadVariableOp:value:01lstm_85/lstm_cell_85/strided_slice/stack:output:03lstm_85/lstm_cell_85/strided_slice/stack_1:output:03lstm_85/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_85/lstm_cell_85/strided_slice?
lstm_85/lstm_cell_85/MatMul_4MatMullstm_85/lstm_cell_85/mul:z:0+lstm_85/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_4?
lstm_85/lstm_cell_85/addAddV2%lstm_85/lstm_cell_85/BiasAdd:output:0'lstm_85/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add?
lstm_85/lstm_cell_85/SigmoidSigmoidlstm_85/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/Sigmoid?
%lstm_85/lstm_cell_85/ReadVariableOp_1ReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_85/lstm_cell_85/ReadVariableOp_1?
*lstm_85/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_85/lstm_cell_85/strided_slice_1/stack?
,lstm_85/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_85/lstm_cell_85/strided_slice_1/stack_1?
,lstm_85/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_85/lstm_cell_85/strided_slice_1/stack_2?
$lstm_85/lstm_cell_85/strided_slice_1StridedSlice-lstm_85/lstm_cell_85/ReadVariableOp_1:value:03lstm_85/lstm_cell_85/strided_slice_1/stack:output:05lstm_85/lstm_cell_85/strided_slice_1/stack_1:output:05lstm_85/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_85/lstm_cell_85/strided_slice_1?
lstm_85/lstm_cell_85/MatMul_5MatMullstm_85/lstm_cell_85/mul_1:z:0-lstm_85/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_5?
lstm_85/lstm_cell_85/add_1AddV2'lstm_85/lstm_cell_85/BiasAdd_1:output:0'lstm_85/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_1?
lstm_85/lstm_cell_85/Sigmoid_1Sigmoidlstm_85/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/Sigmoid_1?
lstm_85/lstm_cell_85/mul_4Mul"lstm_85/lstm_cell_85/Sigmoid_1:y:0lstm_85/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_4?
%lstm_85/lstm_cell_85/ReadVariableOp_2ReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_85/lstm_cell_85/ReadVariableOp_2?
*lstm_85/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_85/lstm_cell_85/strided_slice_2/stack?
,lstm_85/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_85/lstm_cell_85/strided_slice_2/stack_1?
,lstm_85/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_85/lstm_cell_85/strided_slice_2/stack_2?
$lstm_85/lstm_cell_85/strided_slice_2StridedSlice-lstm_85/lstm_cell_85/ReadVariableOp_2:value:03lstm_85/lstm_cell_85/strided_slice_2/stack:output:05lstm_85/lstm_cell_85/strided_slice_2/stack_1:output:05lstm_85/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_85/lstm_cell_85/strided_slice_2?
lstm_85/lstm_cell_85/MatMul_6MatMullstm_85/lstm_cell_85/mul_2:z:0-lstm_85/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_6?
lstm_85/lstm_cell_85/add_2AddV2'lstm_85/lstm_cell_85/BiasAdd_2:output:0'lstm_85/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_2?
lstm_85/lstm_cell_85/ReluRelulstm_85/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/Relu?
lstm_85/lstm_cell_85/mul_5Mul lstm_85/lstm_cell_85/Sigmoid:y:0'lstm_85/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_5?
lstm_85/lstm_cell_85/add_3AddV2lstm_85/lstm_cell_85/mul_4:z:0lstm_85/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_3?
%lstm_85/lstm_cell_85/ReadVariableOp_3ReadVariableOp,lstm_85_lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_85/lstm_cell_85/ReadVariableOp_3?
*lstm_85/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_85/lstm_cell_85/strided_slice_3/stack?
,lstm_85/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_85/lstm_cell_85/strided_slice_3/stack_1?
,lstm_85/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_85/lstm_cell_85/strided_slice_3/stack_2?
$lstm_85/lstm_cell_85/strided_slice_3StridedSlice-lstm_85/lstm_cell_85/ReadVariableOp_3:value:03lstm_85/lstm_cell_85/strided_slice_3/stack:output:05lstm_85/lstm_cell_85/strided_slice_3/stack_1:output:05lstm_85/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_85/lstm_cell_85/strided_slice_3?
lstm_85/lstm_cell_85/MatMul_7MatMullstm_85/lstm_cell_85/mul_3:z:0-lstm_85/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/MatMul_7?
lstm_85/lstm_cell_85/add_4AddV2'lstm_85/lstm_cell_85/BiasAdd_3:output:0'lstm_85/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/add_4?
lstm_85/lstm_cell_85/Sigmoid_2Sigmoidlstm_85/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/lstm_cell_85/Sigmoid_2?
lstm_85/lstm_cell_85/Relu_1Relulstm_85/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/Relu_1?
lstm_85/lstm_cell_85/mul_6Mul"lstm_85/lstm_cell_85/Sigmoid_2:y:0)lstm_85/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_85/lstm_cell_85/mul_6?
%lstm_85/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_85/TensorArrayV2_1/element_shape?
lstm_85/TensorArrayV2_1TensorListReserve.lstm_85/TensorArrayV2_1/element_shape:output:0 lstm_85/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_85/TensorArrayV2_1^
lstm_85/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/time?
 lstm_85/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_85/while/maximum_iterationsz
lstm_85/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_85/while/loop_counter?
lstm_85/whileWhile#lstm_85/while/loop_counter:output:0)lstm_85/while/maximum_iterations:output:0lstm_85/time:output:0 lstm_85/TensorArrayV2_1:handle:0lstm_85/zeros:output:0lstm_85/zeros_1:output:0 lstm_85/strided_slice_1:output:0?lstm_85/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_85_lstm_cell_85_split_readvariableop_resource4lstm_85_lstm_cell_85_split_1_readvariableop_resource,lstm_85_lstm_cell_85_readvariableop_resource*
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
lstm_85_while_body_2830376*&
condR
lstm_85_while_cond_2830375*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_85/while?
8lstm_85/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_85/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_85/TensorArrayV2Stack/TensorListStackTensorListStacklstm_85/while:output:3Alstm_85/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_85/TensorArrayV2Stack/TensorListStack?
lstm_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_85/strided_slice_3/stack?
lstm_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_85/strided_slice_3/stack_1?
lstm_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_85/strided_slice_3/stack_2?
lstm_85/strided_slice_3StridedSlice3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_85/strided_slice_3/stack:output:0(lstm_85/strided_slice_3/stack_1:output:0(lstm_85/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_85/strided_slice_3?
lstm_85/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_85/transpose_1/perm?
lstm_85/transpose_1	Transpose3lstm_85/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_85/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_85/transpose_1v
lstm_85/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_85/runtime?
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_102/MatMul/ReadVariableOp?
dense_102/MatMulMatMul lstm_85/strided_slice_3:output:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_102/MatMul?
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_102/BiasAdd/ReadVariableOp?
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_102/BiasAddv
dense_102/ReluReludense_102/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_102/Relu?
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_103/MatMul/ReadVariableOp?
dense_103/MatMulMatMuldense_102/Relu:activations:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_103/MatMul?
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_103/BiasAdd/ReadVariableOp?
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_103/BiasAddn
reshape_51/ShapeShapedense_103/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_51/Shape?
reshape_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_51/strided_slice/stack?
 reshape_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_1?
 reshape_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_51/strided_slice/stack_2?
reshape_51/strided_sliceStridedSlicereshape_51/Shape:output:0'reshape_51/strided_slice/stack:output:0)reshape_51/strided_slice/stack_1:output:0)reshape_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_51/strided_slicez
reshape_51/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/1z
reshape_51/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_51/Reshape/shape/2?
reshape_51/Reshape/shapePack!reshape_51/strided_slice:output:0#reshape_51/Reshape/shape/1:output:0#reshape_51/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_51/Reshape/shape?
reshape_51/ReshapeReshapedense_103/BiasAdd:output:0!reshape_51/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_51/Reshape?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_85_lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/mul?
0dense_103/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_103/bias/Regularizer/Square/ReadVariableOp?
!dense_103/bias/Regularizer/SquareSquare8dense_103/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_103/bias/Regularizer/Square?
 dense_103/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_103/bias/Regularizer/Const?
dense_103/bias/Regularizer/SumSum%dense_103/bias/Regularizer/Square:y:0)dense_103/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/Sum?
 dense_103/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_103/bias/Regularizer/mul/x?
dense_103/bias/Regularizer/mulMul)dense_103/bias/Regularizer/mul/x:output:0'dense_103/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_103/bias/Regularizer/mulz
IdentityIdentityreshape_51/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp1^dense_103/bias/Regularizer/Square/ReadVariableOp$^lstm_85/lstm_cell_85/ReadVariableOp&^lstm_85/lstm_cell_85/ReadVariableOp_1&^lstm_85/lstm_cell_85/ReadVariableOp_2&^lstm_85/lstm_cell_85/ReadVariableOp_3>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp*^lstm_85/lstm_cell_85/split/ReadVariableOp,^lstm_85/lstm_cell_85/split_1/ReadVariableOp^lstm_85/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2d
0dense_103/bias/Regularizer/Square/ReadVariableOp0dense_103/bias/Regularizer/Square/ReadVariableOp2J
#lstm_85/lstm_cell_85/ReadVariableOp#lstm_85/lstm_cell_85/ReadVariableOp2N
%lstm_85/lstm_cell_85/ReadVariableOp_1%lstm_85/lstm_cell_85/ReadVariableOp_12N
%lstm_85/lstm_cell_85/ReadVariableOp_2%lstm_85/lstm_cell_85/ReadVariableOp_22N
%lstm_85/lstm_cell_85/ReadVariableOp_3%lstm_85/lstm_cell_85/ReadVariableOp_32~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_85/lstm_cell_85/split/ReadVariableOp)lstm_85/lstm_cell_85/split/ReadVariableOp2Z
+lstm_85/lstm_cell_85/split_1/ReadVariableOp+lstm_85/lstm_cell_85/split_1/ReadVariableOp2
lstm_85/whilelstm_85/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_reshape_51_layer_call_and_return_conditional_losses_2831821

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
?
(sequential_34_lstm_85_while_body_2828136H
Dsequential_34_lstm_85_while_sequential_34_lstm_85_while_loop_counterN
Jsequential_34_lstm_85_while_sequential_34_lstm_85_while_maximum_iterations+
'sequential_34_lstm_85_while_placeholder-
)sequential_34_lstm_85_while_placeholder_1-
)sequential_34_lstm_85_while_placeholder_2-
)sequential_34_lstm_85_while_placeholder_3G
Csequential_34_lstm_85_while_sequential_34_lstm_85_strided_slice_1_0?
sequential_34_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_85_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_34_lstm_85_while_lstm_cell_85_split_readvariableop_resource_0:	?Y
Jsequential_34_lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0:	?U
Bsequential_34_lstm_85_while_lstm_cell_85_readvariableop_resource_0:	 ?(
$sequential_34_lstm_85_while_identity*
&sequential_34_lstm_85_while_identity_1*
&sequential_34_lstm_85_while_identity_2*
&sequential_34_lstm_85_while_identity_3*
&sequential_34_lstm_85_while_identity_4*
&sequential_34_lstm_85_while_identity_5E
Asequential_34_lstm_85_while_sequential_34_lstm_85_strided_slice_1?
}sequential_34_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_85_tensorarrayunstack_tensorlistfromtensorY
Fsequential_34_lstm_85_while_lstm_cell_85_split_readvariableop_resource:	?W
Hsequential_34_lstm_85_while_lstm_cell_85_split_1_readvariableop_resource:	?S
@sequential_34_lstm_85_while_lstm_cell_85_readvariableop_resource:	 ???7sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp?9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_1?9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_2?9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_3?=sequential_34/lstm_85/while/lstm_cell_85/split/ReadVariableOp??sequential_34/lstm_85/while/lstm_cell_85/split_1/ReadVariableOp?
Msequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_34_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_85_tensorarrayunstack_tensorlistfromtensor_0'sequential_34_lstm_85_while_placeholderVsequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem?
8sequential_34/lstm_85/while/lstm_cell_85/ones_like/ShapeShape)sequential_34_lstm_85_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_34/lstm_85/while/lstm_cell_85/ones_like/Shape?
8sequential_34/lstm_85/while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8sequential_34/lstm_85/while/lstm_cell_85/ones_like/Const?
2sequential_34/lstm_85/while/lstm_cell_85/ones_likeFillAsequential_34/lstm_85/while/lstm_cell_85/ones_like/Shape:output:0Asequential_34/lstm_85/while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_34/lstm_85/while/lstm_cell_85/ones_like?
8sequential_34/lstm_85/while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_34/lstm_85/while/lstm_cell_85/split/split_dim?
=sequential_34/lstm_85/while/lstm_cell_85/split/ReadVariableOpReadVariableOpHsequential_34_lstm_85_while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02?
=sequential_34/lstm_85/while/lstm_cell_85/split/ReadVariableOp?
.sequential_34/lstm_85/while/lstm_cell_85/splitSplitAsequential_34/lstm_85/while/lstm_cell_85/split/split_dim:output:0Esequential_34/lstm_85/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_34/lstm_85/while/lstm_cell_85/split?
/sequential_34/lstm_85/while/lstm_cell_85/MatMulMatMulFsequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_34/lstm_85/while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_34/lstm_85/while/lstm_cell_85/MatMul?
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_1MatMulFsequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_34/lstm_85/while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 23
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_1?
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_2MatMulFsequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_34/lstm_85/while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 23
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_2?
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_3MatMulFsequential_34/lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_34/lstm_85/while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 23
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_3?
:sequential_34/lstm_85/while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_34/lstm_85/while/lstm_cell_85/split_1/split_dim?
?sequential_34/lstm_85/while/lstm_cell_85/split_1/ReadVariableOpReadVariableOpJsequential_34_lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_34/lstm_85/while/lstm_cell_85/split_1/ReadVariableOp?
0sequential_34/lstm_85/while/lstm_cell_85/split_1SplitCsequential_34/lstm_85/while/lstm_cell_85/split_1/split_dim:output:0Gsequential_34/lstm_85/while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_34/lstm_85/while/lstm_cell_85/split_1?
0sequential_34/lstm_85/while/lstm_cell_85/BiasAddBiasAdd9sequential_34/lstm_85/while/lstm_cell_85/MatMul:product:09sequential_34/lstm_85/while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_34/lstm_85/while/lstm_cell_85/BiasAdd?
2sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_1BiasAdd;sequential_34/lstm_85/while/lstm_cell_85/MatMul_1:product:09sequential_34/lstm_85/while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 24
2sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_1?
2sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_2BiasAdd;sequential_34/lstm_85/while/lstm_cell_85/MatMul_2:product:09sequential_34/lstm_85/while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 24
2sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_2?
2sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_3BiasAdd;sequential_34/lstm_85/while/lstm_cell_85/MatMul_3:product:09sequential_34/lstm_85/while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 24
2sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_3?
,sequential_34/lstm_85/while/lstm_cell_85/mulMul)sequential_34_lstm_85_while_placeholder_2;sequential_34/lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/while/lstm_cell_85/mul?
.sequential_34/lstm_85/while/lstm_cell_85/mul_1Mul)sequential_34_lstm_85_while_placeholder_2;sequential_34/lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/mul_1?
.sequential_34/lstm_85/while/lstm_cell_85/mul_2Mul)sequential_34_lstm_85_while_placeholder_2;sequential_34/lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/mul_2?
.sequential_34/lstm_85/while/lstm_cell_85/mul_3Mul)sequential_34_lstm_85_while_placeholder_2;sequential_34/lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/mul_3?
7sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOpReadVariableOpBsequential_34_lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype029
7sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp?
<sequential_34/lstm_85/while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack?
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack_1?
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack_2?
6sequential_34/lstm_85/while/lstm_cell_85/strided_sliceStridedSlice?sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp:value:0Esequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack:output:0Gsequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack_1:output:0Gsequential_34/lstm_85/while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_34/lstm_85/while/lstm_cell_85/strided_slice?
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_4MatMul0sequential_34/lstm_85/while/lstm_cell_85/mul:z:0?sequential_34/lstm_85/while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_4?
,sequential_34/lstm_85/while/lstm_cell_85/addAddV29sequential_34/lstm_85/while/lstm_cell_85/BiasAdd:output:0;sequential_34/lstm_85/while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2.
,sequential_34/lstm_85/while/lstm_cell_85/add?
0sequential_34/lstm_85/while/lstm_cell_85/SigmoidSigmoid0sequential_34/lstm_85/while/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_34/lstm_85/while/lstm_cell_85/Sigmoid?
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_1ReadVariableOpBsequential_34_lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_1?
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack?
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack_1?
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack_2?
8sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1StridedSliceAsequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_1:value:0Gsequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack:output:0Isequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack_1:output:0Isequential_34/lstm_85/while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_34/lstm_85/while/lstm_cell_85/strided_slice_1?
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_5MatMul2sequential_34/lstm_85/while/lstm_cell_85/mul_1:z:0Asequential_34/lstm_85/while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_5?
.sequential_34/lstm_85/while/lstm_cell_85/add_1AddV2;sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_1:output:0;sequential_34/lstm_85/while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/add_1?
2sequential_34/lstm_85/while/lstm_cell_85/Sigmoid_1Sigmoid2sequential_34/lstm_85/while/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_34/lstm_85/while/lstm_cell_85/Sigmoid_1?
.sequential_34/lstm_85/while/lstm_cell_85/mul_4Mul6sequential_34/lstm_85/while/lstm_cell_85/Sigmoid_1:y:0)sequential_34_lstm_85_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/mul_4?
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_2ReadVariableOpBsequential_34_lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_2?
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack?
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack_1?
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack_2?
8sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2StridedSliceAsequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_2:value:0Gsequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack:output:0Isequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack_1:output:0Isequential_34/lstm_85/while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_34/lstm_85/while/lstm_cell_85/strided_slice_2?
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_6MatMul2sequential_34/lstm_85/while/lstm_cell_85/mul_2:z:0Asequential_34/lstm_85/while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_6?
.sequential_34/lstm_85/while/lstm_cell_85/add_2AddV2;sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_2:output:0;sequential_34/lstm_85/while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/add_2?
-sequential_34/lstm_85/while/lstm_cell_85/ReluRelu2sequential_34/lstm_85/while/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_34/lstm_85/while/lstm_cell_85/Relu?
.sequential_34/lstm_85/while/lstm_cell_85/mul_5Mul4sequential_34/lstm_85/while/lstm_cell_85/Sigmoid:y:0;sequential_34/lstm_85/while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/mul_5?
.sequential_34/lstm_85/while/lstm_cell_85/add_3AddV22sequential_34/lstm_85/while/lstm_cell_85/mul_4:z:02sequential_34/lstm_85/while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/add_3?
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_3ReadVariableOpBsequential_34_lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_3?
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack?
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack_1?
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack_2?
8sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3StridedSliceAsequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_3:value:0Gsequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack:output:0Isequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack_1:output:0Isequential_34/lstm_85/while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_34/lstm_85/while/lstm_cell_85/strided_slice_3?
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_7MatMul2sequential_34/lstm_85/while/lstm_cell_85/mul_3:z:0Asequential_34/lstm_85/while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_34/lstm_85/while/lstm_cell_85/MatMul_7?
.sequential_34/lstm_85/while/lstm_cell_85/add_4AddV2;sequential_34/lstm_85/while/lstm_cell_85/BiasAdd_3:output:0;sequential_34/lstm_85/while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/add_4?
2sequential_34/lstm_85/while/lstm_cell_85/Sigmoid_2Sigmoid2sequential_34/lstm_85/while/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_34/lstm_85/while/lstm_cell_85/Sigmoid_2?
/sequential_34/lstm_85/while/lstm_cell_85/Relu_1Relu2sequential_34/lstm_85/while/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_34/lstm_85/while/lstm_cell_85/Relu_1?
.sequential_34/lstm_85/while/lstm_cell_85/mul_6Mul6sequential_34/lstm_85/while/lstm_cell_85/Sigmoid_2:y:0=sequential_34/lstm_85/while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_34/lstm_85/while/lstm_cell_85/mul_6?
@sequential_34/lstm_85/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_34_lstm_85_while_placeholder_1'sequential_34_lstm_85_while_placeholder2sequential_34/lstm_85/while/lstm_cell_85/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_34/lstm_85/while/TensorArrayV2Write/TensorListSetItem?
!sequential_34/lstm_85/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_34/lstm_85/while/add/y?
sequential_34/lstm_85/while/addAddV2'sequential_34_lstm_85_while_placeholder*sequential_34/lstm_85/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_34/lstm_85/while/add?
#sequential_34/lstm_85/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_34/lstm_85/while/add_1/y?
!sequential_34/lstm_85/while/add_1AddV2Dsequential_34_lstm_85_while_sequential_34_lstm_85_while_loop_counter,sequential_34/lstm_85/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_34/lstm_85/while/add_1?
$sequential_34/lstm_85/while/IdentityIdentity%sequential_34/lstm_85/while/add_1:z:0!^sequential_34/lstm_85/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_34/lstm_85/while/Identity?
&sequential_34/lstm_85/while/Identity_1IdentityJsequential_34_lstm_85_while_sequential_34_lstm_85_while_maximum_iterations!^sequential_34/lstm_85/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_34/lstm_85/while/Identity_1?
&sequential_34/lstm_85/while/Identity_2Identity#sequential_34/lstm_85/while/add:z:0!^sequential_34/lstm_85/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_34/lstm_85/while/Identity_2?
&sequential_34/lstm_85/while/Identity_3IdentityPsequential_34/lstm_85/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_34/lstm_85/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_34/lstm_85/while/Identity_3?
&sequential_34/lstm_85/while/Identity_4Identity2sequential_34/lstm_85/while/lstm_cell_85/mul_6:z:0!^sequential_34/lstm_85/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_34/lstm_85/while/Identity_4?
&sequential_34/lstm_85/while/Identity_5Identity2sequential_34/lstm_85/while/lstm_cell_85/add_3:z:0!^sequential_34/lstm_85/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_34/lstm_85/while/Identity_5?
 sequential_34/lstm_85/while/NoOpNoOp8^sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp:^sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_1:^sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_2:^sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_3>^sequential_34/lstm_85/while/lstm_cell_85/split/ReadVariableOp@^sequential_34/lstm_85/while/lstm_cell_85/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_34/lstm_85/while/NoOp"U
$sequential_34_lstm_85_while_identity-sequential_34/lstm_85/while/Identity:output:0"Y
&sequential_34_lstm_85_while_identity_1/sequential_34/lstm_85/while/Identity_1:output:0"Y
&sequential_34_lstm_85_while_identity_2/sequential_34/lstm_85/while/Identity_2:output:0"Y
&sequential_34_lstm_85_while_identity_3/sequential_34/lstm_85/while/Identity_3:output:0"Y
&sequential_34_lstm_85_while_identity_4/sequential_34/lstm_85/while/Identity_4:output:0"Y
&sequential_34_lstm_85_while_identity_5/sequential_34/lstm_85/while/Identity_5:output:0"?
@sequential_34_lstm_85_while_lstm_cell_85_readvariableop_resourceBsequential_34_lstm_85_while_lstm_cell_85_readvariableop_resource_0"?
Hsequential_34_lstm_85_while_lstm_cell_85_split_1_readvariableop_resourceJsequential_34_lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0"?
Fsequential_34_lstm_85_while_lstm_cell_85_split_readvariableop_resourceHsequential_34_lstm_85_while_lstm_cell_85_split_readvariableop_resource_0"?
Asequential_34_lstm_85_while_sequential_34_lstm_85_strided_slice_1Csequential_34_lstm_85_while_sequential_34_lstm_85_strided_slice_1_0"?
}sequential_34_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_85_tensorarrayunstack_tensorlistfromtensorsequential_34_lstm_85_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_85_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2r
7sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp7sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp2v
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_19sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_12v
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_29sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_22v
9sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_39sequential_34/lstm_85/while/lstm_cell_85/ReadVariableOp_32~
=sequential_34/lstm_85/while/lstm_cell_85/split/ReadVariableOp=sequential_34/lstm_85/while/lstm_cell_85/split/ReadVariableOp2?
?sequential_34/lstm_85/while/lstm_cell_85/split_1/ReadVariableOp?sequential_34/lstm_85/while/lstm_cell_85/split_1/ReadVariableOp: 
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
/__inference_sequential_34_layer_call_fn_2829410
input_35
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_35unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_28293932
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
input_35
?
?
while_cond_2830997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2830997___redundant_placeholder05
1while_while_cond_2830997___redundant_placeholder15
1while_while_cond_2830997___redundant_placeholder25
1while_while_cond_2830997___redundant_placeholder3
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
H
,__inference_reshape_51_layer_call_fn_2831826

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
G__inference_reshape_51_layer_call_and_return_conditional_losses_28293782
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
??
?
lstm_85_while_body_2830073,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3+
'lstm_85_while_lstm_85_strided_slice_1_0g
clstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_85_while_lstm_cell_85_split_readvariableop_resource_0:	?K
<lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0:	?G
4lstm_85_while_lstm_cell_85_readvariableop_resource_0:	 ?
lstm_85_while_identity
lstm_85_while_identity_1
lstm_85_while_identity_2
lstm_85_while_identity_3
lstm_85_while_identity_4
lstm_85_while_identity_5)
%lstm_85_while_lstm_85_strided_slice_1e
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorK
8lstm_85_while_lstm_cell_85_split_readvariableop_resource:	?I
:lstm_85_while_lstm_cell_85_split_1_readvariableop_resource:	?E
2lstm_85_while_lstm_cell_85_readvariableop_resource:	 ???)lstm_85/while/lstm_cell_85/ReadVariableOp?+lstm_85/while/lstm_cell_85/ReadVariableOp_1?+lstm_85/while/lstm_cell_85/ReadVariableOp_2?+lstm_85/while/lstm_cell_85/ReadVariableOp_3?/lstm_85/while/lstm_cell_85/split/ReadVariableOp?1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp?
?lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_85/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0lstm_85_while_placeholderHlstm_85/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_85/while/TensorArrayV2Read/TensorListGetItem?
*lstm_85/while/lstm_cell_85/ones_like/ShapeShapelstm_85_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_85/while/lstm_cell_85/ones_like/Shape?
*lstm_85/while/lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_85/while/lstm_cell_85/ones_like/Const?
$lstm_85/while/lstm_cell_85/ones_likeFill3lstm_85/while/lstm_cell_85/ones_like/Shape:output:03lstm_85/while/lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/ones_like?
*lstm_85/while/lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_85/while/lstm_cell_85/split/split_dim?
/lstm_85/while/lstm_cell_85/split/ReadVariableOpReadVariableOp:lstm_85_while_lstm_cell_85_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_85/while/lstm_cell_85/split/ReadVariableOp?
 lstm_85/while/lstm_cell_85/splitSplit3lstm_85/while/lstm_cell_85/split/split_dim:output:07lstm_85/while/lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_85/while/lstm_cell_85/split?
!lstm_85/while/lstm_cell_85/MatMulMatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_85/while/lstm_cell_85/MatMul?
#lstm_85/while/lstm_cell_85/MatMul_1MatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_1?
#lstm_85/while/lstm_cell_85/MatMul_2MatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_2?
#lstm_85/while/lstm_cell_85/MatMul_3MatMul8lstm_85/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_85/while/lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_3?
,lstm_85/while/lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_85/while/lstm_cell_85/split_1/split_dim?
1lstm_85/while/lstm_cell_85/split_1/ReadVariableOpReadVariableOp<lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp?
"lstm_85/while/lstm_cell_85/split_1Split5lstm_85/while/lstm_cell_85/split_1/split_dim:output:09lstm_85/while/lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_85/while/lstm_cell_85/split_1?
"lstm_85/while/lstm_cell_85/BiasAddBiasAdd+lstm_85/while/lstm_cell_85/MatMul:product:0+lstm_85/while/lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/while/lstm_cell_85/BiasAdd?
$lstm_85/while/lstm_cell_85/BiasAdd_1BiasAdd-lstm_85/while/lstm_cell_85/MatMul_1:product:0+lstm_85/while/lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/BiasAdd_1?
$lstm_85/while/lstm_cell_85/BiasAdd_2BiasAdd-lstm_85/while/lstm_cell_85/MatMul_2:product:0+lstm_85/while/lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/BiasAdd_2?
$lstm_85/while/lstm_cell_85/BiasAdd_3BiasAdd-lstm_85/while/lstm_cell_85/MatMul_3:product:0+lstm_85/while/lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/BiasAdd_3?
lstm_85/while/lstm_cell_85/mulMullstm_85_while_placeholder_2-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/while/lstm_cell_85/mul?
 lstm_85/while/lstm_cell_85/mul_1Mullstm_85_while_placeholder_2-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_1?
 lstm_85/while/lstm_cell_85/mul_2Mullstm_85_while_placeholder_2-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_2?
 lstm_85/while/lstm_cell_85/mul_3Mullstm_85_while_placeholder_2-lstm_85/while/lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_3?
)lstm_85/while/lstm_cell_85/ReadVariableOpReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_85/while/lstm_cell_85/ReadVariableOp?
.lstm_85/while/lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_85/while/lstm_cell_85/strided_slice/stack?
0lstm_85/while/lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_85/while/lstm_cell_85/strided_slice/stack_1?
0lstm_85/while/lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_85/while/lstm_cell_85/strided_slice/stack_2?
(lstm_85/while/lstm_cell_85/strided_sliceStridedSlice1lstm_85/while/lstm_cell_85/ReadVariableOp:value:07lstm_85/while/lstm_cell_85/strided_slice/stack:output:09lstm_85/while/lstm_cell_85/strided_slice/stack_1:output:09lstm_85/while/lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_85/while/lstm_cell_85/strided_slice?
#lstm_85/while/lstm_cell_85/MatMul_4MatMul"lstm_85/while/lstm_cell_85/mul:z:01lstm_85/while/lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_4?
lstm_85/while/lstm_cell_85/addAddV2+lstm_85/while/lstm_cell_85/BiasAdd:output:0-lstm_85/while/lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_85/while/lstm_cell_85/add?
"lstm_85/while/lstm_cell_85/SigmoidSigmoid"lstm_85/while/lstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_85/while/lstm_cell_85/Sigmoid?
+lstm_85/while/lstm_cell_85/ReadVariableOp_1ReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_85/while/lstm_cell_85/ReadVariableOp_1?
0lstm_85/while/lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_85/while/lstm_cell_85/strided_slice_1/stack?
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_1?
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_85/while/lstm_cell_85/strided_slice_1/stack_2?
*lstm_85/while/lstm_cell_85/strided_slice_1StridedSlice3lstm_85/while/lstm_cell_85/ReadVariableOp_1:value:09lstm_85/while/lstm_cell_85/strided_slice_1/stack:output:0;lstm_85/while/lstm_cell_85/strided_slice_1/stack_1:output:0;lstm_85/while/lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_85/while/lstm_cell_85/strided_slice_1?
#lstm_85/while/lstm_cell_85/MatMul_5MatMul$lstm_85/while/lstm_cell_85/mul_1:z:03lstm_85/while/lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_5?
 lstm_85/while/lstm_cell_85/add_1AddV2-lstm_85/while/lstm_cell_85/BiasAdd_1:output:0-lstm_85/while/lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_1?
$lstm_85/while/lstm_cell_85/Sigmoid_1Sigmoid$lstm_85/while/lstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/Sigmoid_1?
 lstm_85/while/lstm_cell_85/mul_4Mul(lstm_85/while/lstm_cell_85/Sigmoid_1:y:0lstm_85_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_4?
+lstm_85/while/lstm_cell_85/ReadVariableOp_2ReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_85/while/lstm_cell_85/ReadVariableOp_2?
0lstm_85/while/lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_85/while/lstm_cell_85/strided_slice_2/stack?
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_1?
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_85/while/lstm_cell_85/strided_slice_2/stack_2?
*lstm_85/while/lstm_cell_85/strided_slice_2StridedSlice3lstm_85/while/lstm_cell_85/ReadVariableOp_2:value:09lstm_85/while/lstm_cell_85/strided_slice_2/stack:output:0;lstm_85/while/lstm_cell_85/strided_slice_2/stack_1:output:0;lstm_85/while/lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_85/while/lstm_cell_85/strided_slice_2?
#lstm_85/while/lstm_cell_85/MatMul_6MatMul$lstm_85/while/lstm_cell_85/mul_2:z:03lstm_85/while/lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_6?
 lstm_85/while/lstm_cell_85/add_2AddV2-lstm_85/while/lstm_cell_85/BiasAdd_2:output:0-lstm_85/while/lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_2?
lstm_85/while/lstm_cell_85/ReluRelu$lstm_85/while/lstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_85/while/lstm_cell_85/Relu?
 lstm_85/while/lstm_cell_85/mul_5Mul&lstm_85/while/lstm_cell_85/Sigmoid:y:0-lstm_85/while/lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_5?
 lstm_85/while/lstm_cell_85/add_3AddV2$lstm_85/while/lstm_cell_85/mul_4:z:0$lstm_85/while/lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_3?
+lstm_85/while/lstm_cell_85/ReadVariableOp_3ReadVariableOp4lstm_85_while_lstm_cell_85_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_85/while/lstm_cell_85/ReadVariableOp_3?
0lstm_85/while/lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_85/while/lstm_cell_85/strided_slice_3/stack?
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_1?
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_85/while/lstm_cell_85/strided_slice_3/stack_2?
*lstm_85/while/lstm_cell_85/strided_slice_3StridedSlice3lstm_85/while/lstm_cell_85/ReadVariableOp_3:value:09lstm_85/while/lstm_cell_85/strided_slice_3/stack:output:0;lstm_85/while/lstm_cell_85/strided_slice_3/stack_1:output:0;lstm_85/while/lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_85/while/lstm_cell_85/strided_slice_3?
#lstm_85/while/lstm_cell_85/MatMul_7MatMul$lstm_85/while/lstm_cell_85/mul_3:z:03lstm_85/while/lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_85/while/lstm_cell_85/MatMul_7?
 lstm_85/while/lstm_cell_85/add_4AddV2-lstm_85/while/lstm_cell_85/BiasAdd_3:output:0-lstm_85/while/lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/add_4?
$lstm_85/while/lstm_cell_85/Sigmoid_2Sigmoid$lstm_85/while/lstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_85/while/lstm_cell_85/Sigmoid_2?
!lstm_85/while/lstm_cell_85/Relu_1Relu$lstm_85/while/lstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_85/while/lstm_cell_85/Relu_1?
 lstm_85/while/lstm_cell_85/mul_6Mul(lstm_85/while/lstm_cell_85/Sigmoid_2:y:0/lstm_85/while/lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_85/while/lstm_cell_85/mul_6?
2lstm_85/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_85_while_placeholder_1lstm_85_while_placeholder$lstm_85/while/lstm_cell_85/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_85/while/TensorArrayV2Write/TensorListSetIteml
lstm_85/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_85/while/add/y?
lstm_85/while/addAddV2lstm_85_while_placeholderlstm_85/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_85/while/addp
lstm_85/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_85/while/add_1/y?
lstm_85/while/add_1AddV2(lstm_85_while_lstm_85_while_loop_counterlstm_85/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_85/while/add_1?
lstm_85/while/IdentityIdentitylstm_85/while/add_1:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity?
lstm_85/while/Identity_1Identity.lstm_85_while_lstm_85_while_maximum_iterations^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity_1?
lstm_85/while/Identity_2Identitylstm_85/while/add:z:0^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity_2?
lstm_85/while/Identity_3IdentityBlstm_85/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_85/while/NoOp*
T0*
_output_shapes
: 2
lstm_85/while/Identity_3?
lstm_85/while/Identity_4Identity$lstm_85/while/lstm_cell_85/mul_6:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_85/while/Identity_4?
lstm_85/while/Identity_5Identity$lstm_85/while/lstm_cell_85/add_3:z:0^lstm_85/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_85/while/Identity_5?
lstm_85/while/NoOpNoOp*^lstm_85/while/lstm_cell_85/ReadVariableOp,^lstm_85/while/lstm_cell_85/ReadVariableOp_1,^lstm_85/while/lstm_cell_85/ReadVariableOp_2,^lstm_85/while/lstm_cell_85/ReadVariableOp_30^lstm_85/while/lstm_cell_85/split/ReadVariableOp2^lstm_85/while/lstm_cell_85/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_85/while/NoOp"9
lstm_85_while_identitylstm_85/while/Identity:output:0"=
lstm_85_while_identity_1!lstm_85/while/Identity_1:output:0"=
lstm_85_while_identity_2!lstm_85/while/Identity_2:output:0"=
lstm_85_while_identity_3!lstm_85/while/Identity_3:output:0"=
lstm_85_while_identity_4!lstm_85/while/Identity_4:output:0"=
lstm_85_while_identity_5!lstm_85/while/Identity_5:output:0"P
%lstm_85_while_lstm_85_strided_slice_1'lstm_85_while_lstm_85_strided_slice_1_0"j
2lstm_85_while_lstm_cell_85_readvariableop_resource4lstm_85_while_lstm_cell_85_readvariableop_resource_0"z
:lstm_85_while_lstm_cell_85_split_1_readvariableop_resource<lstm_85_while_lstm_cell_85_split_1_readvariableop_resource_0"v
8lstm_85_while_lstm_cell_85_split_readvariableop_resource:lstm_85_while_lstm_cell_85_split_readvariableop_resource_0"?
alstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensorclstm_85_while_tensorarrayv2read_tensorlistgetitem_lstm_85_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_85/while/lstm_cell_85/ReadVariableOp)lstm_85/while/lstm_cell_85/ReadVariableOp2Z
+lstm_85/while/lstm_cell_85/ReadVariableOp_1+lstm_85/while/lstm_cell_85/ReadVariableOp_12Z
+lstm_85/while/lstm_cell_85/ReadVariableOp_2+lstm_85/while/lstm_cell_85/ReadVariableOp_22Z
+lstm_85/while/lstm_cell_85/ReadVariableOp_3+lstm_85/while/lstm_cell_85/ReadVariableOp_32b
/lstm_85/while/lstm_cell_85/split/ReadVariableOp/lstm_85/while/lstm_cell_85/split/ReadVariableOp2f
1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp1lstm_85/while/lstm_cell_85/split_1/ReadVariableOp: 
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
lstm_85_while_cond_2830375,
(lstm_85_while_lstm_85_while_loop_counter2
.lstm_85_while_lstm_85_while_maximum_iterations
lstm_85_while_placeholder
lstm_85_while_placeholder_1
lstm_85_while_placeholder_2
lstm_85_while_placeholder_3.
*lstm_85_while_less_lstm_85_strided_slice_1E
Alstm_85_while_lstm_85_while_cond_2830375___redundant_placeholder0E
Alstm_85_while_lstm_85_while_cond_2830375___redundant_placeholder1E
Alstm_85_while_lstm_85_while_cond_2830375___redundant_placeholder2E
Alstm_85_while_lstm_85_while_cond_2830375___redundant_placeholder3
lstm_85_while_identity
?
lstm_85/while/LessLesslstm_85_while_placeholder*lstm_85_while_less_lstm_85_strided_slice_1*
T0*
_output_shapes
: 2
lstm_85/while/Lessu
lstm_85/while/IdentityIdentitylstm_85/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_85/while/Identity"9
lstm_85_while_identitylstm_85/while/Identity:output:0*(
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
/__inference_sequential_34_layer_call_fn_2830607

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
J__inference_sequential_34_layer_call_and_return_conditional_losses_28298202
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
while_cond_2831547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2831547___redundant_placeholder05
1while_while_cond_2831547___redundant_placeholder15
1while_while_cond_2831547___redundant_placeholder25
1while_while_cond_2831547___redundant_placeholder3
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
while_cond_2830722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2830722___redundant_placeholder05
1while_while_cond_2830722___redundant_placeholder15
1while_while_cond_2830722___redundant_placeholder25
1while_while_cond_2830722___redundant_placeholder3
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
/__inference_sequential_34_layer_call_fn_2830588

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
J__inference_sequential_34_layer_call_and_return_conditional_losses_28293932
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
?
)__inference_lstm_85_layer_call_fn_2831724
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28284982
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
?R
?
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2828409

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2,
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
F__inference_dense_102_layer_call_and_return_conditional_losses_2829337

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
)__inference_lstm_85_layer_call_fn_2831757

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
D__inference_lstm_85_layer_call_and_return_conditional_losses_28297562
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
.__inference_lstm_cell_85_layer_call_fn_2832054

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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_28284092
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
?
D__inference_lstm_85_layer_call_and_return_conditional_losses_2829318

inputs=
*lstm_cell_85_split_readvariableop_resource:	?;
,lstm_cell_85_split_1_readvariableop_resource:	?7
$lstm_cell_85_readvariableop_resource:	 ?
identity??=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_85/ReadVariableOp?lstm_cell_85/ReadVariableOp_1?lstm_cell_85/ReadVariableOp_2?lstm_cell_85/ReadVariableOp_3?!lstm_cell_85/split/ReadVariableOp?#lstm_cell_85/split_1/ReadVariableOp?whileD
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
lstm_cell_85/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_85/ones_like/Shape?
lstm_cell_85/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_85/ones_like/Const?
lstm_cell_85/ones_likeFill%lstm_cell_85/ones_like/Shape:output:0%lstm_cell_85/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/ones_like~
lstm_cell_85/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_85/split/split_dim?
!lstm_cell_85/split/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_85/split/ReadVariableOp?
lstm_cell_85/splitSplit%lstm_cell_85/split/split_dim:output:0)lstm_cell_85/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_85/split?
lstm_cell_85/MatMulMatMulstrided_slice_2:output:0lstm_cell_85/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul?
lstm_cell_85/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_85/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_1?
lstm_cell_85/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_85/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_2?
lstm_cell_85/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_85/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_3?
lstm_cell_85/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_85/split_1/split_dim?
#lstm_cell_85/split_1/ReadVariableOpReadVariableOp,lstm_cell_85_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_85/split_1/ReadVariableOp?
lstm_cell_85/split_1Split'lstm_cell_85/split_1/split_dim:output:0+lstm_cell_85/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_85/split_1?
lstm_cell_85/BiasAddBiasAddlstm_cell_85/MatMul:product:0lstm_cell_85/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd?
lstm_cell_85/BiasAdd_1BiasAddlstm_cell_85/MatMul_1:product:0lstm_cell_85/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_1?
lstm_cell_85/BiasAdd_2BiasAddlstm_cell_85/MatMul_2:product:0lstm_cell_85/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_2?
lstm_cell_85/BiasAdd_3BiasAddlstm_cell_85/MatMul_3:product:0lstm_cell_85/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/BiasAdd_3?
lstm_cell_85/mulMulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul?
lstm_cell_85/mul_1Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_1?
lstm_cell_85/mul_2Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_2?
lstm_cell_85/mul_3Mulzeros:output:0lstm_cell_85/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_3?
lstm_cell_85/ReadVariableOpReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp?
 lstm_cell_85/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_85/strided_slice/stack?
"lstm_cell_85/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice/stack_1?
"lstm_cell_85/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_85/strided_slice/stack_2?
lstm_cell_85/strided_sliceStridedSlice#lstm_cell_85/ReadVariableOp:value:0)lstm_cell_85/strided_slice/stack:output:0+lstm_cell_85/strided_slice/stack_1:output:0+lstm_cell_85/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice?
lstm_cell_85/MatMul_4MatMullstm_cell_85/mul:z:0#lstm_cell_85/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_4?
lstm_cell_85/addAddV2lstm_cell_85/BiasAdd:output:0lstm_cell_85/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add
lstm_cell_85/SigmoidSigmoidlstm_cell_85/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid?
lstm_cell_85/ReadVariableOp_1ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_1?
"lstm_cell_85/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_85/strided_slice_1/stack?
$lstm_cell_85/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_85/strided_slice_1/stack_1?
$lstm_cell_85/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_1/stack_2?
lstm_cell_85/strided_slice_1StridedSlice%lstm_cell_85/ReadVariableOp_1:value:0+lstm_cell_85/strided_slice_1/stack:output:0-lstm_cell_85/strided_slice_1/stack_1:output:0-lstm_cell_85/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_1?
lstm_cell_85/MatMul_5MatMullstm_cell_85/mul_1:z:0%lstm_cell_85/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_5?
lstm_cell_85/add_1AddV2lstm_cell_85/BiasAdd_1:output:0lstm_cell_85/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_1?
lstm_cell_85/Sigmoid_1Sigmoidlstm_cell_85/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_1?
lstm_cell_85/mul_4Mullstm_cell_85/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_4?
lstm_cell_85/ReadVariableOp_2ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_2?
"lstm_cell_85/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_85/strided_slice_2/stack?
$lstm_cell_85/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_85/strided_slice_2/stack_1?
$lstm_cell_85/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_2/stack_2?
lstm_cell_85/strided_slice_2StridedSlice%lstm_cell_85/ReadVariableOp_2:value:0+lstm_cell_85/strided_slice_2/stack:output:0-lstm_cell_85/strided_slice_2/stack_1:output:0-lstm_cell_85/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_2?
lstm_cell_85/MatMul_6MatMullstm_cell_85/mul_2:z:0%lstm_cell_85/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_6?
lstm_cell_85/add_2AddV2lstm_cell_85/BiasAdd_2:output:0lstm_cell_85/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_2x
lstm_cell_85/ReluRelulstm_cell_85/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu?
lstm_cell_85/mul_5Mullstm_cell_85/Sigmoid:y:0lstm_cell_85/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_5?
lstm_cell_85/add_3AddV2lstm_cell_85/mul_4:z:0lstm_cell_85/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_3?
lstm_cell_85/ReadVariableOp_3ReadVariableOp$lstm_cell_85_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_85/ReadVariableOp_3?
"lstm_cell_85/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_85/strided_slice_3/stack?
$lstm_cell_85/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_85/strided_slice_3/stack_1?
$lstm_cell_85/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_85/strided_slice_3/stack_2?
lstm_cell_85/strided_slice_3StridedSlice%lstm_cell_85/ReadVariableOp_3:value:0+lstm_cell_85/strided_slice_3/stack:output:0-lstm_cell_85/strided_slice_3/stack_1:output:0-lstm_cell_85/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_85/strided_slice_3?
lstm_cell_85/MatMul_7MatMullstm_cell_85/mul_3:z:0%lstm_cell_85/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/MatMul_7?
lstm_cell_85/add_4AddV2lstm_cell_85/BiasAdd_3:output:0lstm_cell_85/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/add_4?
lstm_cell_85/Sigmoid_2Sigmoidlstm_cell_85/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Sigmoid_2|
lstm_cell_85/Relu_1Relulstm_cell_85/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/Relu_1?
lstm_cell_85/mul_6Mullstm_cell_85/Sigmoid_2:y:0!lstm_cell_85/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_85/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_85_split_readvariableop_resource,lstm_cell_85_split_1_readvariableop_resource$lstm_cell_85_readvariableop_resource*
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
while_body_2829185*
condR
while_cond_2829184*K
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
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_85_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp?
.lstm_85/lstm_cell_85/kernel/Regularizer/SquareSquareElstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_85/lstm_cell_85/kernel/Regularizer/Square?
-lstm_85/lstm_cell_85/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_85/lstm_cell_85/kernel/Regularizer/Const?
+lstm_85/lstm_cell_85/kernel/Regularizer/SumSum2lstm_85/lstm_cell_85/kernel/Regularizer/Square:y:06lstm_85/lstm_cell_85/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/Sum?
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_85/lstm_cell_85/kernel/Regularizer/mul/x?
+lstm_85/lstm_cell_85/kernel/Regularizer/mulMul6lstm_85/lstm_cell_85/kernel/Regularizer/mul/x:output:04lstm_85/lstm_cell_85/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_85/lstm_cell_85/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_85/ReadVariableOp^lstm_cell_85/ReadVariableOp_1^lstm_cell_85/ReadVariableOp_2^lstm_cell_85/ReadVariableOp_3"^lstm_cell_85/split/ReadVariableOp$^lstm_cell_85/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp=lstm_85/lstm_cell_85/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_85/ReadVariableOplstm_cell_85/ReadVariableOp2>
lstm_cell_85/ReadVariableOp_1lstm_cell_85/ReadVariableOp_12>
lstm_cell_85/ReadVariableOp_2lstm_cell_85/ReadVariableOp_22>
lstm_cell_85/ReadVariableOp_3lstm_cell_85/ReadVariableOp_32F
!lstm_cell_85/split/ReadVariableOp!lstm_cell_85/split/ReadVariableOp2J
#lstm_cell_85/split_1/ReadVariableOp#lstm_cell_85/split_1/ReadVariableOp2
whilewhile:S O
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
input_355
serving_default_input_35:0?????????B

reshape_514
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
":   2dense_102/kernel
: 2dense_102/bias
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
":  2dense_103/kernel
:2dense_103/bias
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
.:,	?2lstm_85/lstm_cell_85/kernel
8:6	 ?2%lstm_85/lstm_cell_85/recurrent_kernel
(:&?2lstm_85/lstm_cell_85/bias
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
':%  2Adam/dense_102/kernel/m
!: 2Adam/dense_102/bias/m
':% 2Adam/dense_103/kernel/m
!:2Adam/dense_103/bias/m
3:1	?2"Adam/lstm_85/lstm_cell_85/kernel/m
=:;	 ?2,Adam/lstm_85/lstm_cell_85/recurrent_kernel/m
-:+?2 Adam/lstm_85/lstm_cell_85/bias/m
':%  2Adam/dense_102/kernel/v
!: 2Adam/dense_102/bias/v
':% 2Adam/dense_103/kernel/v
!:2Adam/dense_103/bias/v
3:1	?2"Adam/lstm_85/lstm_cell_85/kernel/v
=:;	 ?2,Adam/lstm_85/lstm_cell_85/recurrent_kernel/v
-:+?2 Adam/lstm_85/lstm_cell_85/bias/v
?2?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2830234
J__inference_sequential_34_layer_call_and_return_conditional_losses_2830569
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829890
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829924?
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
/__inference_sequential_34_layer_call_fn_2829410
/__inference_sequential_34_layer_call_fn_2830588
/__inference_sequential_34_layer_call_fn_2830607
/__inference_sequential_34_layer_call_fn_2829856?
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
"__inference__wrapped_model_2828285input_35"?
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_2830856
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831163
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831406
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831713?
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
)__inference_lstm_85_layer_call_fn_2831724
)__inference_lstm_85_layer_call_fn_2831735
)__inference_lstm_85_layer_call_fn_2831746
)__inference_lstm_85_layer_call_fn_2831757?
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
F__inference_dense_102_layer_call_and_return_conditional_losses_2831768?
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
+__inference_dense_102_layer_call_fn_2831777?
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
F__inference_dense_103_layer_call_and_return_conditional_losses_2831799?
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
+__inference_dense_103_layer_call_fn_2831808?
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_2831821?
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
,__inference_reshape_51_layer_call_fn_2831826?
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
__inference_loss_fn_0_2831837?
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
%__inference_signature_wrapper_2829963input_35"?
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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2831924
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2832037?
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
.__inference_lstm_cell_85_layer_call_fn_2832054
.__inference_lstm_cell_85_layer_call_fn_2832071?
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
__inference_loss_fn_1_2832082?
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
"__inference__wrapped_model_2828285}&('5?2
+?(
&?#
input_35?????????
? ";?8
6

reshape_51(?%

reshape_51??????????
F__inference_dense_102_layer_call_and_return_conditional_losses_2831768\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? ~
+__inference_dense_102_layer_call_fn_2831777O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
F__inference_dense_103_layer_call_and_return_conditional_losses_2831799\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
+__inference_dense_103_layer_call_fn_2831808O/?,
%?"
 ?
inputs????????? 
? "??????????<
__inference_loss_fn_0_2831837?

? 
? "? <
__inference_loss_fn_1_2832082&?

? 
? "? ?
D__inference_lstm_85_layer_call_and_return_conditional_losses_2830856}&('O?L
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831163}&('O?L
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831406m&('??<
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
D__inference_lstm_85_layer_call_and_return_conditional_losses_2831713m&('??<
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
)__inference_lstm_85_layer_call_fn_2831724p&('O?L
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
)__inference_lstm_85_layer_call_fn_2831735p&('O?L
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
)__inference_lstm_85_layer_call_fn_2831746`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
)__inference_lstm_85_layer_call_fn_2831757`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2831924?&('??}
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
I__inference_lstm_cell_85_layer_call_and_return_conditional_losses_2832037?&('??}
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
.__inference_lstm_cell_85_layer_call_fn_2832054?&('??}
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
.__inference_lstm_cell_85_layer_call_fn_2832071?&('??}
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
G__inference_reshape_51_layer_call_and_return_conditional_losses_2831821\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? 
,__inference_reshape_51_layer_call_fn_2831826O/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829890s&('=?:
3?0
&?#
input_35?????????
p 

 
? ")?&
?
0?????????
? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2829924s&('=?:
3?0
&?#
input_35?????????
p

 
? ")?&
?
0?????????
? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2830234q&(';?8
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2830569q&(';?8
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
/__inference_sequential_34_layer_call_fn_2829410f&('=?:
3?0
&?#
input_35?????????
p 

 
? "???????????
/__inference_sequential_34_layer_call_fn_2829856f&('=?:
3?0
&?#
input_35?????????
p

 
? "???????????
/__inference_sequential_34_layer_call_fn_2830588d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_34_layer_call_fn_2830607d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2829963?&('A?>
? 
7?4
2
input_35&?#
input_35?????????";?8
6

reshape_51(?%

reshape_51?????????