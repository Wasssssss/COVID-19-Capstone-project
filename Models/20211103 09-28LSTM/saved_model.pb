î&
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ïÎ%
z
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_44/kernel
s
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes

:  *
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes
: *
dtype0
z
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_45/kernel
s
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes

: *
dtype0
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
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
lstm_36/lstm_cell_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_36/lstm_cell_36/kernel

/lstm_36/lstm_cell_36/kernel/Read/ReadVariableOpReadVariableOplstm_36/lstm_cell_36/kernel*
_output_shapes
:	*
dtype0
§
%lstm_36/lstm_cell_36/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *6
shared_name'%lstm_36/lstm_cell_36/recurrent_kernel
 
9lstm_36/lstm_cell_36/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_36/lstm_cell_36/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_36/lstm_cell_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_36/lstm_cell_36/bias

-lstm_36/lstm_cell_36/bias/Read/ReadVariableOpReadVariableOplstm_36/lstm_cell_36/bias*
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
Adam/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_44/kernel/m

*Adam/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_44/bias/m
y
(Adam/dense_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/m*
_output_shapes
: *
dtype0

Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_45/kernel/m

*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_36/lstm_cell_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_36/lstm_cell_36/kernel/m

6Adam/lstm_36/lstm_cell_36/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_36/lstm_cell_36/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_36/lstm_cell_36/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m
®
@Adam/lstm_36/lstm_cell_36/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

 Adam/lstm_36/lstm_cell_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_36/lstm_cell_36/bias/m

4Adam/lstm_36/lstm_cell_36/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_36/lstm_cell_36/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_44/kernel/v

*Adam/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_44/bias/v
y
(Adam/dense_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/v*
_output_shapes
: *
dtype0

Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_45/kernel/v

*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_36/lstm_cell_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_36/lstm_cell_36/kernel/v

6Adam/lstm_36/lstm_cell_36/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_36/lstm_cell_36/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_36/lstm_cell_36/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v
®
@Adam/lstm_36/lstm_cell_36/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

 Adam/lstm_36/lstm_cell_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_36/lstm_cell_36/bias/v

4Adam/lstm_36/lstm_cell_36/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_36/lstm_cell_36/bias/v*
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
VARIABLE_VALUEdense_44/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_44/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_45/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_45/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_36/lstm_cell_36/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_36/lstm_cell_36/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_36/lstm_cell_36/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEAdam/dense_44/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_36/lstm_cell_36/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_36/lstm_cell_36/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_36/lstm_cell_36/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_44/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_44/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_36/lstm_cell_36/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_36/lstm_cell_36/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_36/lstm_cell_36/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_16Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_16lstm_36/lstm_cell_36/kernellstm_36/lstm_cell_36/bias%lstm_36/lstm_cell_36/recurrent_kerneldense_44/kerneldense_44/biasdense_45/kerneldense_45/bias*
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
%__inference_signature_wrapper_1224864
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ú
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_36/lstm_cell_36/kernel/Read/ReadVariableOp9lstm_36/lstm_cell_36/recurrent_kernel/Read/ReadVariableOp-lstm_36/lstm_cell_36/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_44/kernel/m/Read/ReadVariableOp(Adam/dense_44/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp6Adam/lstm_36/lstm_cell_36/kernel/m/Read/ReadVariableOp@Adam/lstm_36/lstm_cell_36/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_36/lstm_cell_36/bias/m/Read/ReadVariableOp*Adam/dense_44/kernel/v/Read/ReadVariableOp(Adam/dense_44/bias/v/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOp6Adam/lstm_36/lstm_cell_36/kernel/v/Read/ReadVariableOp@Adam/lstm_36/lstm_cell_36/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_36/lstm_cell_36/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_1227090
Å
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_44/kerneldense_44/biasdense_45/kerneldense_45/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_36/lstm_cell_36/kernel%lstm_36/lstm_cell_36/recurrent_kernellstm_36/lstm_cell_36/biastotalcountAdam/dense_44/kernel/mAdam/dense_44/bias/mAdam/dense_45/kernel/mAdam/dense_45/bias/m"Adam/lstm_36/lstm_cell_36/kernel/m,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m Adam/lstm_36/lstm_cell_36/bias/mAdam/dense_44/kernel/vAdam/dense_44/bias/vAdam/dense_45/kernel/vAdam/dense_45/bias/v"Adam/lstm_36/lstm_cell_36/kernel/v,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v Adam/lstm_36/lstm_cell_36/bias/v*(
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
#__inference__traced_restore_1227184ìÏ$
R
É
D__inference_lstm_36_layer_call_and_return_conditional_losses_1223696

inputs'
lstm_cell_36_1223608:	#
lstm_cell_36_1223610:	'
lstm_cell_36_1223612:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_36/StatefulPartitionedCall¢whileD
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
$lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_36_1223608lstm_cell_36_1223610lstm_cell_36_1223612*
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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_12235432&
$lstm_cell_36/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_36_1223608lstm_cell_36_1223610lstm_cell_36_1223612*
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
while_body_1223621*
condR
while_cond_1223620*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_36_1223608*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_36/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_36/StatefulPartitionedCall$lstm_cell_36/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø+
µ
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224791
input_16"
lstm_36_1224760:	
lstm_36_1224762:	"
lstm_36_1224764:	 "
dense_44_1224767:  
dense_44_1224769: "
dense_45_1224772: 
dense_45_1224774:
identity¢ dense_44/StatefulPartitionedCall¢ dense_45/StatefulPartitionedCall¢/dense_45/bias/Regularizer/Square/ReadVariableOp¢lstm_36/StatefulPartitionedCall¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp§
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinput_16lstm_36_1224760lstm_36_1224762lstm_36_1224764*
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12242192!
lstm_36/StatefulPartitionedCall¹
 dense_44/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0dense_44_1224767dense_44_1224769*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_12242382"
 dense_44/StatefulPartitionedCallº
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_1224772dense_45_1224774*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_12242602"
 dense_45/StatefulPartitionedCall
reshape_22/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
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
G__inference_reshape_22_layer_call_and_return_conditional_losses_12242792
reshape_22/PartitionedCallÏ
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_36_1224760*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/mul¯
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_1224774*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mul
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall0^dense_45/bias/Regularizer/Square/ReadVariableOp ^lstm_36/StatefulPartitionedCall>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2b
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_16

ö
E__inference_dense_44_layer_call_and_return_conditional_losses_1224238

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
while_cond_1226492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1226492___redundant_placeholder05
1while_while_cond_1226492___redundant_placeholder15
1while_while_cond_1226492___redundant_placeholder25
1while_while_cond_1226492___redundant_placeholder3
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

c
G__inference_reshape_22_layer_call_and_return_conditional_losses_1224279

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

ö
E__inference_dense_44_layer_call_and_return_conditional_losses_1226678

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
while_cond_1223620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1223620___redundant_placeholder05
1while_while_cond_1223620___redundant_placeholder15
1while_while_cond_1223620___redundant_placeholder25
1while_while_cond_1223620___redundant_placeholder3
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
÷
.__inference_lstm_cell_36_layer_call_fn_1226778

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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_12235432
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
À
¸
)__inference_lstm_36_layer_call_fn_1225525
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12233992
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
"__inference__wrapped_model_1223186
input_16S
@sequential_15_lstm_36_lstm_cell_36_split_readvariableop_resource:	Q
Bsequential_15_lstm_36_lstm_cell_36_split_1_readvariableop_resource:	M
:sequential_15_lstm_36_lstm_cell_36_readvariableop_resource:	 G
5sequential_15_dense_44_matmul_readvariableop_resource:  D
6sequential_15_dense_44_biasadd_readvariableop_resource: G
5sequential_15_dense_45_matmul_readvariableop_resource: D
6sequential_15_dense_45_biasadd_readvariableop_resource:
identity¢-sequential_15/dense_44/BiasAdd/ReadVariableOp¢,sequential_15/dense_44/MatMul/ReadVariableOp¢-sequential_15/dense_45/BiasAdd/ReadVariableOp¢,sequential_15/dense_45/MatMul/ReadVariableOp¢1sequential_15/lstm_36/lstm_cell_36/ReadVariableOp¢3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_1¢3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_2¢3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_3¢7sequential_15/lstm_36/lstm_cell_36/split/ReadVariableOp¢9sequential_15/lstm_36/lstm_cell_36/split_1/ReadVariableOp¢sequential_15/lstm_36/whiler
sequential_15/lstm_36/ShapeShapeinput_16*
T0*
_output_shapes
:2
sequential_15/lstm_36/Shape 
)sequential_15/lstm_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_15/lstm_36/strided_slice/stack¤
+sequential_15/lstm_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_36/strided_slice/stack_1¤
+sequential_15/lstm_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_36/strided_slice/stack_2æ
#sequential_15/lstm_36/strided_sliceStridedSlice$sequential_15/lstm_36/Shape:output:02sequential_15/lstm_36/strided_slice/stack:output:04sequential_15/lstm_36/strided_slice/stack_1:output:04sequential_15/lstm_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_15/lstm_36/strided_slice
!sequential_15/lstm_36/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_15/lstm_36/zeros/mul/yÄ
sequential_15/lstm_36/zeros/mulMul,sequential_15/lstm_36/strided_slice:output:0*sequential_15/lstm_36/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_36/zeros/mul
"sequential_15/lstm_36/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_15/lstm_36/zeros/Less/y¿
 sequential_15/lstm_36/zeros/LessLess#sequential_15/lstm_36/zeros/mul:z:0+sequential_15/lstm_36/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_15/lstm_36/zeros/Less
$sequential_15/lstm_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_15/lstm_36/zeros/packed/1Û
"sequential_15/lstm_36/zeros/packedPack,sequential_15/lstm_36/strided_slice:output:0-sequential_15/lstm_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_15/lstm_36/zeros/packed
!sequential_15/lstm_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_15/lstm_36/zeros/ConstÍ
sequential_15/lstm_36/zerosFill+sequential_15/lstm_36/zeros/packed:output:0*sequential_15/lstm_36/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_15/lstm_36/zeros
#sequential_15/lstm_36/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_15/lstm_36/zeros_1/mul/yÊ
!sequential_15/lstm_36/zeros_1/mulMul,sequential_15/lstm_36/strided_slice:output:0,sequential_15/lstm_36/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_36/zeros_1/mul
$sequential_15/lstm_36/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_15/lstm_36/zeros_1/Less/yÇ
"sequential_15/lstm_36/zeros_1/LessLess%sequential_15/lstm_36/zeros_1/mul:z:0-sequential_15/lstm_36/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_15/lstm_36/zeros_1/Less
&sequential_15/lstm_36/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_15/lstm_36/zeros_1/packed/1á
$sequential_15/lstm_36/zeros_1/packedPack,sequential_15/lstm_36/strided_slice:output:0/sequential_15/lstm_36/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_15/lstm_36/zeros_1/packed
#sequential_15/lstm_36/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_15/lstm_36/zeros_1/ConstÕ
sequential_15/lstm_36/zeros_1Fill-sequential_15/lstm_36/zeros_1/packed:output:0,sequential_15/lstm_36/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_15/lstm_36/zeros_1¡
$sequential_15/lstm_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_15/lstm_36/transpose/perm¾
sequential_15/lstm_36/transpose	Transposeinput_16-sequential_15/lstm_36/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_15/lstm_36/transpose
sequential_15/lstm_36/Shape_1Shape#sequential_15/lstm_36/transpose:y:0*
T0*
_output_shapes
:2
sequential_15/lstm_36/Shape_1¤
+sequential_15/lstm_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_36/strided_slice_1/stack¨
-sequential_15/lstm_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_36/strided_slice_1/stack_1¨
-sequential_15/lstm_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_36/strided_slice_1/stack_2ò
%sequential_15/lstm_36/strided_slice_1StridedSlice&sequential_15/lstm_36/Shape_1:output:04sequential_15/lstm_36/strided_slice_1/stack:output:06sequential_15/lstm_36/strided_slice_1/stack_1:output:06sequential_15/lstm_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_15/lstm_36/strided_slice_1±
1sequential_15/lstm_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_15/lstm_36/TensorArrayV2/element_shape
#sequential_15/lstm_36/TensorArrayV2TensorListReserve:sequential_15/lstm_36/TensorArrayV2/element_shape:output:0.sequential_15/lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_15/lstm_36/TensorArrayV2ë
Ksequential_15/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_15/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_15/lstm_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_15/lstm_36/transpose:y:0Tsequential_15/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_15/lstm_36/TensorArrayUnstack/TensorListFromTensor¤
+sequential_15/lstm_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_36/strided_slice_2/stack¨
-sequential_15/lstm_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_36/strided_slice_2/stack_1¨
-sequential_15/lstm_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_36/strided_slice_2/stack_2
%sequential_15/lstm_36/strided_slice_2StridedSlice#sequential_15/lstm_36/transpose:y:04sequential_15/lstm_36/strided_slice_2/stack:output:06sequential_15/lstm_36/strided_slice_2/stack_1:output:06sequential_15/lstm_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_15/lstm_36/strided_slice_2¼
2sequential_15/lstm_36/lstm_cell_36/ones_like/ShapeShape$sequential_15/lstm_36/zeros:output:0*
T0*
_output_shapes
:24
2sequential_15/lstm_36/lstm_cell_36/ones_like/Shape­
2sequential_15/lstm_36/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2sequential_15/lstm_36/lstm_cell_36/ones_like/Const
,sequential_15/lstm_36/lstm_cell_36/ones_likeFill;sequential_15/lstm_36/lstm_cell_36/ones_like/Shape:output:0;sequential_15/lstm_36/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/lstm_cell_36/ones_likeª
2sequential_15/lstm_36/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_15/lstm_36/lstm_cell_36/split/split_dimô
7sequential_15/lstm_36/lstm_cell_36/split/ReadVariableOpReadVariableOp@sequential_15_lstm_36_lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype029
7sequential_15/lstm_36/lstm_cell_36/split/ReadVariableOp³
(sequential_15/lstm_36/lstm_cell_36/splitSplit;sequential_15/lstm_36/lstm_cell_36/split/split_dim:output:0?sequential_15/lstm_36/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_15/lstm_36/lstm_cell_36/splitõ
)sequential_15/lstm_36/lstm_cell_36/MatMulMatMul.sequential_15/lstm_36/strided_slice_2:output:01sequential_15/lstm_36/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_15/lstm_36/lstm_cell_36/MatMulù
+sequential_15/lstm_36/lstm_cell_36/MatMul_1MatMul.sequential_15/lstm_36/strided_slice_2:output:01sequential_15/lstm_36/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_15/lstm_36/lstm_cell_36/MatMul_1ù
+sequential_15/lstm_36/lstm_cell_36/MatMul_2MatMul.sequential_15/lstm_36/strided_slice_2:output:01sequential_15/lstm_36/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_15/lstm_36/lstm_cell_36/MatMul_2ù
+sequential_15/lstm_36/lstm_cell_36/MatMul_3MatMul.sequential_15/lstm_36/strided_slice_2:output:01sequential_15/lstm_36/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_15/lstm_36/lstm_cell_36/MatMul_3®
4sequential_15/lstm_36/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_15/lstm_36/lstm_cell_36/split_1/split_dimö
9sequential_15/lstm_36/lstm_cell_36/split_1/ReadVariableOpReadVariableOpBsequential_15_lstm_36_lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02;
9sequential_15/lstm_36/lstm_cell_36/split_1/ReadVariableOp«
*sequential_15/lstm_36/lstm_cell_36/split_1Split=sequential_15/lstm_36/lstm_cell_36/split_1/split_dim:output:0Asequential_15/lstm_36/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_15/lstm_36/lstm_cell_36/split_1ÿ
*sequential_15/lstm_36/lstm_cell_36/BiasAddBiasAdd3sequential_15/lstm_36/lstm_cell_36/MatMul:product:03sequential_15/lstm_36/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_15/lstm_36/lstm_cell_36/BiasAdd
,sequential_15/lstm_36/lstm_cell_36/BiasAdd_1BiasAdd5sequential_15/lstm_36/lstm_cell_36/MatMul_1:product:03sequential_15/lstm_36/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/lstm_cell_36/BiasAdd_1
,sequential_15/lstm_36/lstm_cell_36/BiasAdd_2BiasAdd5sequential_15/lstm_36/lstm_cell_36/MatMul_2:product:03sequential_15/lstm_36/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/lstm_cell_36/BiasAdd_2
,sequential_15/lstm_36/lstm_cell_36/BiasAdd_3BiasAdd5sequential_15/lstm_36/lstm_cell_36/MatMul_3:product:03sequential_15/lstm_36/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/lstm_cell_36/BiasAdd_3æ
&sequential_15/lstm_36/lstm_cell_36/mulMul$sequential_15/lstm_36/zeros:output:05sequential_15/lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_15/lstm_36/lstm_cell_36/mulê
(sequential_15/lstm_36/lstm_cell_36/mul_1Mul$sequential_15/lstm_36/zeros:output:05sequential_15/lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/mul_1ê
(sequential_15/lstm_36/lstm_cell_36/mul_2Mul$sequential_15/lstm_36/zeros:output:05sequential_15/lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/mul_2ê
(sequential_15/lstm_36/lstm_cell_36/mul_3Mul$sequential_15/lstm_36/zeros:output:05sequential_15/lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/mul_3â
1sequential_15/lstm_36/lstm_cell_36/ReadVariableOpReadVariableOp:sequential_15_lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype023
1sequential_15/lstm_36/lstm_cell_36/ReadVariableOpÁ
6sequential_15/lstm_36/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_15/lstm_36/lstm_cell_36/strided_slice/stackÅ
8sequential_15/lstm_36/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_15/lstm_36/lstm_cell_36/strided_slice/stack_1Å
8sequential_15/lstm_36/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_15/lstm_36/lstm_cell_36/strided_slice/stack_2Î
0sequential_15/lstm_36/lstm_cell_36/strided_sliceStridedSlice9sequential_15/lstm_36/lstm_cell_36/ReadVariableOp:value:0?sequential_15/lstm_36/lstm_cell_36/strided_slice/stack:output:0Asequential_15/lstm_36/lstm_cell_36/strided_slice/stack_1:output:0Asequential_15/lstm_36/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_15/lstm_36/lstm_cell_36/strided_sliceý
+sequential_15/lstm_36/lstm_cell_36/MatMul_4MatMul*sequential_15/lstm_36/lstm_cell_36/mul:z:09sequential_15/lstm_36/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_15/lstm_36/lstm_cell_36/MatMul_4÷
&sequential_15/lstm_36/lstm_cell_36/addAddV23sequential_15/lstm_36/lstm_cell_36/BiasAdd:output:05sequential_15/lstm_36/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_15/lstm_36/lstm_cell_36/addÁ
*sequential_15/lstm_36/lstm_cell_36/SigmoidSigmoid*sequential_15/lstm_36/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_15/lstm_36/lstm_cell_36/Sigmoidæ
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_1ReadVariableOp:sequential_15_lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_1Å
8sequential_15/lstm_36/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_15/lstm_36/lstm_cell_36/strided_slice_1/stackÉ
:sequential_15/lstm_36/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_15/lstm_36/lstm_cell_36/strided_slice_1/stack_1É
:sequential_15/lstm_36/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_15/lstm_36/lstm_cell_36/strided_slice_1/stack_2Ú
2sequential_15/lstm_36/lstm_cell_36/strided_slice_1StridedSlice;sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_1:value:0Asequential_15/lstm_36/lstm_cell_36/strided_slice_1/stack:output:0Csequential_15/lstm_36/lstm_cell_36/strided_slice_1/stack_1:output:0Csequential_15/lstm_36/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_15/lstm_36/lstm_cell_36/strided_slice_1
+sequential_15/lstm_36/lstm_cell_36/MatMul_5MatMul,sequential_15/lstm_36/lstm_cell_36/mul_1:z:0;sequential_15/lstm_36/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_15/lstm_36/lstm_cell_36/MatMul_5ý
(sequential_15/lstm_36/lstm_cell_36/add_1AddV25sequential_15/lstm_36/lstm_cell_36/BiasAdd_1:output:05sequential_15/lstm_36/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/add_1Ç
,sequential_15/lstm_36/lstm_cell_36/Sigmoid_1Sigmoid,sequential_15/lstm_36/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/lstm_cell_36/Sigmoid_1ç
(sequential_15/lstm_36/lstm_cell_36/mul_4Mul0sequential_15/lstm_36/lstm_cell_36/Sigmoid_1:y:0&sequential_15/lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/mul_4æ
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_2ReadVariableOp:sequential_15_lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_2Å
8sequential_15/lstm_36/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_15/lstm_36/lstm_cell_36/strided_slice_2/stackÉ
:sequential_15/lstm_36/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_15/lstm_36/lstm_cell_36/strided_slice_2/stack_1É
:sequential_15/lstm_36/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_15/lstm_36/lstm_cell_36/strided_slice_2/stack_2Ú
2sequential_15/lstm_36/lstm_cell_36/strided_slice_2StridedSlice;sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_2:value:0Asequential_15/lstm_36/lstm_cell_36/strided_slice_2/stack:output:0Csequential_15/lstm_36/lstm_cell_36/strided_slice_2/stack_1:output:0Csequential_15/lstm_36/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_15/lstm_36/lstm_cell_36/strided_slice_2
+sequential_15/lstm_36/lstm_cell_36/MatMul_6MatMul,sequential_15/lstm_36/lstm_cell_36/mul_2:z:0;sequential_15/lstm_36/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_15/lstm_36/lstm_cell_36/MatMul_6ý
(sequential_15/lstm_36/lstm_cell_36/add_2AddV25sequential_15/lstm_36/lstm_cell_36/BiasAdd_2:output:05sequential_15/lstm_36/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/add_2º
'sequential_15/lstm_36/lstm_cell_36/ReluRelu,sequential_15/lstm_36/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_15/lstm_36/lstm_cell_36/Reluô
(sequential_15/lstm_36/lstm_cell_36/mul_5Mul.sequential_15/lstm_36/lstm_cell_36/Sigmoid:y:05sequential_15/lstm_36/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/mul_5ë
(sequential_15/lstm_36/lstm_cell_36/add_3AddV2,sequential_15/lstm_36/lstm_cell_36/mul_4:z:0,sequential_15/lstm_36/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/add_3æ
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_3ReadVariableOp:sequential_15_lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype025
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_3Å
8sequential_15/lstm_36/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_15/lstm_36/lstm_cell_36/strided_slice_3/stackÉ
:sequential_15/lstm_36/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_15/lstm_36/lstm_cell_36/strided_slice_3/stack_1É
:sequential_15/lstm_36/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_15/lstm_36/lstm_cell_36/strided_slice_3/stack_2Ú
2sequential_15/lstm_36/lstm_cell_36/strided_slice_3StridedSlice;sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_3:value:0Asequential_15/lstm_36/lstm_cell_36/strided_slice_3/stack:output:0Csequential_15/lstm_36/lstm_cell_36/strided_slice_3/stack_1:output:0Csequential_15/lstm_36/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_15/lstm_36/lstm_cell_36/strided_slice_3
+sequential_15/lstm_36/lstm_cell_36/MatMul_7MatMul,sequential_15/lstm_36/lstm_cell_36/mul_3:z:0;sequential_15/lstm_36/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_15/lstm_36/lstm_cell_36/MatMul_7ý
(sequential_15/lstm_36/lstm_cell_36/add_4AddV25sequential_15/lstm_36/lstm_cell_36/BiasAdd_3:output:05sequential_15/lstm_36/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/add_4Ç
,sequential_15/lstm_36/lstm_cell_36/Sigmoid_2Sigmoid,sequential_15/lstm_36/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/lstm_cell_36/Sigmoid_2¾
)sequential_15/lstm_36/lstm_cell_36/Relu_1Relu,sequential_15/lstm_36/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_15/lstm_36/lstm_cell_36/Relu_1ø
(sequential_15/lstm_36/lstm_cell_36/mul_6Mul0sequential_15/lstm_36/lstm_cell_36/Sigmoid_2:y:07sequential_15/lstm_36/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_15/lstm_36/lstm_cell_36/mul_6»
3sequential_15/lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    25
3sequential_15/lstm_36/TensorArrayV2_1/element_shape
%sequential_15/lstm_36/TensorArrayV2_1TensorListReserve<sequential_15/lstm_36/TensorArrayV2_1/element_shape:output:0.sequential_15/lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_15/lstm_36/TensorArrayV2_1z
sequential_15/lstm_36/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_15/lstm_36/time«
.sequential_15/lstm_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_36/while/maximum_iterations
(sequential_15/lstm_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_15/lstm_36/while/loop_counterÍ
sequential_15/lstm_36/whileWhile1sequential_15/lstm_36/while/loop_counter:output:07sequential_15/lstm_36/while/maximum_iterations:output:0#sequential_15/lstm_36/time:output:0.sequential_15/lstm_36/TensorArrayV2_1:handle:0$sequential_15/lstm_36/zeros:output:0&sequential_15/lstm_36/zeros_1:output:0.sequential_15/lstm_36/strided_slice_1:output:0Msequential_15/lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_15_lstm_36_lstm_cell_36_split_readvariableop_resourceBsequential_15_lstm_36_lstm_cell_36_split_1_readvariableop_resource:sequential_15_lstm_36_lstm_cell_36_readvariableop_resource*
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
(sequential_15_lstm_36_while_body_1223037*4
cond,R*
(sequential_15_lstm_36_while_cond_1223036*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_15/lstm_36/whileá
Fsequential_15/lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2H
Fsequential_15/lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_15/lstm_36/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_15/lstm_36/while:output:3Osequential_15/lstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02:
8sequential_15/lstm_36/TensorArrayV2Stack/TensorListStack­
+sequential_15/lstm_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_15/lstm_36/strided_slice_3/stack¨
-sequential_15/lstm_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_15/lstm_36/strided_slice_3/stack_1¨
-sequential_15/lstm_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_36/strided_slice_3/stack_2
%sequential_15/lstm_36/strided_slice_3StridedSliceAsequential_15/lstm_36/TensorArrayV2Stack/TensorListStack:tensor:04sequential_15/lstm_36/strided_slice_3/stack:output:06sequential_15/lstm_36/strided_slice_3/stack_1:output:06sequential_15/lstm_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2'
%sequential_15/lstm_36/strided_slice_3¥
&sequential_15/lstm_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_15/lstm_36/transpose_1/permý
!sequential_15/lstm_36/transpose_1	TransposeAsequential_15/lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_15/lstm_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!sequential_15/lstm_36/transpose_1
sequential_15/lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_15/lstm_36/runtimeÒ
,sequential_15/dense_44/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_44_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02.
,sequential_15/dense_44/MatMul/ReadVariableOpà
sequential_15/dense_44/MatMulMatMul.sequential_15/lstm_36/strided_slice_3:output:04sequential_15/dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_15/dense_44/MatMulÑ
-sequential_15/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_15/dense_44/BiasAdd/ReadVariableOpÝ
sequential_15/dense_44/BiasAddBiasAdd'sequential_15/dense_44/MatMul:product:05sequential_15/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_15/dense_44/BiasAdd
sequential_15/dense_44/ReluRelu'sequential_15/dense_44/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_15/dense_44/ReluÒ
,sequential_15/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_45_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_15/dense_45/MatMul/ReadVariableOpÛ
sequential_15/dense_45/MatMulMatMul)sequential_15/dense_44/Relu:activations:04sequential_15/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/dense_45/MatMulÑ
-sequential_15/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_45/BiasAdd/ReadVariableOpÝ
sequential_15/dense_45/BiasAddBiasAdd'sequential_15/dense_45/MatMul:product:05sequential_15/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_15/dense_45/BiasAdd
sequential_15/reshape_22/ShapeShape'sequential_15/dense_45/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_15/reshape_22/Shape¦
,sequential_15/reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_15/reshape_22/strided_slice/stackª
.sequential_15/reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_15/reshape_22/strided_slice/stack_1ª
.sequential_15/reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_15/reshape_22/strided_slice/stack_2ø
&sequential_15/reshape_22/strided_sliceStridedSlice'sequential_15/reshape_22/Shape:output:05sequential_15/reshape_22/strided_slice/stack:output:07sequential_15/reshape_22/strided_slice/stack_1:output:07sequential_15/reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_15/reshape_22/strided_slice
(sequential_15/reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_15/reshape_22/Reshape/shape/1
(sequential_15/reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_15/reshape_22/Reshape/shape/2
&sequential_15/reshape_22/Reshape/shapePack/sequential_15/reshape_22/strided_slice:output:01sequential_15/reshape_22/Reshape/shape/1:output:01sequential_15/reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_15/reshape_22/Reshape/shapeß
 sequential_15/reshape_22/ReshapeReshape'sequential_15/dense_45/BiasAdd:output:0/sequential_15/reshape_22/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_15/reshape_22/Reshape
IdentityIdentity)sequential_15/reshape_22/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityö
NoOpNoOp.^sequential_15/dense_44/BiasAdd/ReadVariableOp-^sequential_15/dense_44/MatMul/ReadVariableOp.^sequential_15/dense_45/BiasAdd/ReadVariableOp-^sequential_15/dense_45/MatMul/ReadVariableOp2^sequential_15/lstm_36/lstm_cell_36/ReadVariableOp4^sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_14^sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_24^sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_38^sequential_15/lstm_36/lstm_cell_36/split/ReadVariableOp:^sequential_15/lstm_36/lstm_cell_36/split_1/ReadVariableOp^sequential_15/lstm_36/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2^
-sequential_15/dense_44/BiasAdd/ReadVariableOp-sequential_15/dense_44/BiasAdd/ReadVariableOp2\
,sequential_15/dense_44/MatMul/ReadVariableOp,sequential_15/dense_44/MatMul/ReadVariableOp2^
-sequential_15/dense_45/BiasAdd/ReadVariableOp-sequential_15/dense_45/BiasAdd/ReadVariableOp2\
,sequential_15/dense_45/MatMul/ReadVariableOp,sequential_15/dense_45/MatMul/ReadVariableOp2f
1sequential_15/lstm_36/lstm_cell_36/ReadVariableOp1sequential_15/lstm_36/lstm_cell_36/ReadVariableOp2j
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_13sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_12j
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_23sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_22j
3sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_33sequential_15/lstm_36/lstm_cell_36/ReadVariableOp_32r
7sequential_15/lstm_36/lstm_cell_36/split/ReadVariableOp7sequential_15/lstm_36/lstm_cell_36/split/ReadVariableOp2v
9sequential_15/lstm_36/lstm_cell_36/split_1/ReadVariableOp9sequential_15/lstm_36/lstm_cell_36/split_1/ReadVariableOp2:
sequential_15/lstm_36/whilesequential_15/lstm_36/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_16
ý
½
lstm_36_while_body_1225012,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3+
'lstm_36_while_lstm_36_strided_slice_1_0g
clstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_36_while_lstm_cell_36_split_readvariableop_resource_0:	K
<lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0:	G
4lstm_36_while_lstm_cell_36_readvariableop_resource_0:	 
lstm_36_while_identity
lstm_36_while_identity_1
lstm_36_while_identity_2
lstm_36_while_identity_3
lstm_36_while_identity_4
lstm_36_while_identity_5)
%lstm_36_while_lstm_36_strided_slice_1e
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorK
8lstm_36_while_lstm_cell_36_split_readvariableop_resource:	I
:lstm_36_while_lstm_cell_36_split_1_readvariableop_resource:	E
2lstm_36_while_lstm_cell_36_readvariableop_resource:	 ¢)lstm_36/while/lstm_cell_36/ReadVariableOp¢+lstm_36/while/lstm_cell_36/ReadVariableOp_1¢+lstm_36/while/lstm_cell_36/ReadVariableOp_2¢+lstm_36/while/lstm_cell_36/ReadVariableOp_3¢/lstm_36/while/lstm_cell_36/split/ReadVariableOp¢1lstm_36/while/lstm_cell_36/split_1/ReadVariableOpÓ
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0lstm_36_while_placeholderHlstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_36/while/TensorArrayV2Read/TensorListGetItem£
*lstm_36/while/lstm_cell_36/ones_like/ShapeShapelstm_36_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_36/while/lstm_cell_36/ones_like/Shape
*lstm_36/while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_36/while/lstm_cell_36/ones_like/Constð
$lstm_36/while/lstm_cell_36/ones_likeFill3lstm_36/while/lstm_cell_36/ones_like/Shape:output:03lstm_36/while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/ones_like
*lstm_36/while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_36/while/lstm_cell_36/split/split_dimÞ
/lstm_36/while/lstm_cell_36/split/ReadVariableOpReadVariableOp:lstm_36_while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_36/while/lstm_cell_36/split/ReadVariableOp
 lstm_36/while/lstm_cell_36/splitSplit3lstm_36/while/lstm_cell_36/split/split_dim:output:07lstm_36/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_36/while/lstm_cell_36/splitç
!lstm_36/while/lstm_cell_36/MatMulMatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_36/while/lstm_cell_36/MatMulë
#lstm_36/while/lstm_cell_36/MatMul_1MatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_1ë
#lstm_36/while/lstm_cell_36/MatMul_2MatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_2ë
#lstm_36/while/lstm_cell_36/MatMul_3MatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_3
,lstm_36/while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_36/while/lstm_cell_36/split_1/split_dimà
1lstm_36/while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp<lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_36/while/lstm_cell_36/split_1/ReadVariableOp
"lstm_36/while/lstm_cell_36/split_1Split5lstm_36/while/lstm_cell_36/split_1/split_dim:output:09lstm_36/while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_36/while/lstm_cell_36/split_1ß
"lstm_36/while/lstm_cell_36/BiasAddBiasAdd+lstm_36/while/lstm_cell_36/MatMul:product:0+lstm_36/while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/while/lstm_cell_36/BiasAddå
$lstm_36/while/lstm_cell_36/BiasAdd_1BiasAdd-lstm_36/while/lstm_cell_36/MatMul_1:product:0+lstm_36/while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/BiasAdd_1å
$lstm_36/while/lstm_cell_36/BiasAdd_2BiasAdd-lstm_36/while/lstm_cell_36/MatMul_2:product:0+lstm_36/while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/BiasAdd_2å
$lstm_36/while/lstm_cell_36/BiasAdd_3BiasAdd-lstm_36/while/lstm_cell_36/MatMul_3:product:0+lstm_36/while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/BiasAdd_3Å
lstm_36/while/lstm_cell_36/mulMullstm_36_while_placeholder_2-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/while/lstm_cell_36/mulÉ
 lstm_36/while/lstm_cell_36/mul_1Mullstm_36_while_placeholder_2-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_1É
 lstm_36/while/lstm_cell_36/mul_2Mullstm_36_while_placeholder_2-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_2É
 lstm_36/while/lstm_cell_36/mul_3Mullstm_36_while_placeholder_2-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_3Ì
)lstm_36/while/lstm_cell_36/ReadVariableOpReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_36/while/lstm_cell_36/ReadVariableOp±
.lstm_36/while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_36/while/lstm_cell_36/strided_slice/stackµ
0lstm_36/while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_36/while/lstm_cell_36/strided_slice/stack_1µ
0lstm_36/while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_36/while/lstm_cell_36/strided_slice/stack_2
(lstm_36/while/lstm_cell_36/strided_sliceStridedSlice1lstm_36/while/lstm_cell_36/ReadVariableOp:value:07lstm_36/while/lstm_cell_36/strided_slice/stack:output:09lstm_36/while/lstm_cell_36/strided_slice/stack_1:output:09lstm_36/while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_36/while/lstm_cell_36/strided_sliceÝ
#lstm_36/while/lstm_cell_36/MatMul_4MatMul"lstm_36/while/lstm_cell_36/mul:z:01lstm_36/while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_4×
lstm_36/while/lstm_cell_36/addAddV2+lstm_36/while/lstm_cell_36/BiasAdd:output:0-lstm_36/while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/while/lstm_cell_36/add©
"lstm_36/while/lstm_cell_36/SigmoidSigmoid"lstm_36/while/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/while/lstm_cell_36/SigmoidÐ
+lstm_36/while/lstm_cell_36/ReadVariableOp_1ReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_36/while/lstm_cell_36/ReadVariableOp_1µ
0lstm_36/while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_36/while/lstm_cell_36/strided_slice_1/stack¹
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_1¹
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_2ª
*lstm_36/while/lstm_cell_36/strided_slice_1StridedSlice3lstm_36/while/lstm_cell_36/ReadVariableOp_1:value:09lstm_36/while/lstm_cell_36/strided_slice_1/stack:output:0;lstm_36/while/lstm_cell_36/strided_slice_1/stack_1:output:0;lstm_36/while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_36/while/lstm_cell_36/strided_slice_1á
#lstm_36/while/lstm_cell_36/MatMul_5MatMul$lstm_36/while/lstm_cell_36/mul_1:z:03lstm_36/while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_5Ý
 lstm_36/while/lstm_cell_36/add_1AddV2-lstm_36/while/lstm_cell_36/BiasAdd_1:output:0-lstm_36/while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_1¯
$lstm_36/while/lstm_cell_36/Sigmoid_1Sigmoid$lstm_36/while/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/Sigmoid_1Ä
 lstm_36/while/lstm_cell_36/mul_4Mul(lstm_36/while/lstm_cell_36/Sigmoid_1:y:0lstm_36_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_4Ð
+lstm_36/while/lstm_cell_36/ReadVariableOp_2ReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_36/while/lstm_cell_36/ReadVariableOp_2µ
0lstm_36/while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_36/while/lstm_cell_36/strided_slice_2/stack¹
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_1¹
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_2ª
*lstm_36/while/lstm_cell_36/strided_slice_2StridedSlice3lstm_36/while/lstm_cell_36/ReadVariableOp_2:value:09lstm_36/while/lstm_cell_36/strided_slice_2/stack:output:0;lstm_36/while/lstm_cell_36/strided_slice_2/stack_1:output:0;lstm_36/while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_36/while/lstm_cell_36/strided_slice_2á
#lstm_36/while/lstm_cell_36/MatMul_6MatMul$lstm_36/while/lstm_cell_36/mul_2:z:03lstm_36/while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_6Ý
 lstm_36/while/lstm_cell_36/add_2AddV2-lstm_36/while/lstm_cell_36/BiasAdd_2:output:0-lstm_36/while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_2¢
lstm_36/while/lstm_cell_36/ReluRelu$lstm_36/while/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_36/while/lstm_cell_36/ReluÔ
 lstm_36/while/lstm_cell_36/mul_5Mul&lstm_36/while/lstm_cell_36/Sigmoid:y:0-lstm_36/while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_5Ë
 lstm_36/while/lstm_cell_36/add_3AddV2$lstm_36/while/lstm_cell_36/mul_4:z:0$lstm_36/while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_3Ð
+lstm_36/while/lstm_cell_36/ReadVariableOp_3ReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_36/while/lstm_cell_36/ReadVariableOp_3µ
0lstm_36/while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_36/while/lstm_cell_36/strided_slice_3/stack¹
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_1¹
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_2ª
*lstm_36/while/lstm_cell_36/strided_slice_3StridedSlice3lstm_36/while/lstm_cell_36/ReadVariableOp_3:value:09lstm_36/while/lstm_cell_36/strided_slice_3/stack:output:0;lstm_36/while/lstm_cell_36/strided_slice_3/stack_1:output:0;lstm_36/while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_36/while/lstm_cell_36/strided_slice_3á
#lstm_36/while/lstm_cell_36/MatMul_7MatMul$lstm_36/while/lstm_cell_36/mul_3:z:03lstm_36/while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_7Ý
 lstm_36/while/lstm_cell_36/add_4AddV2-lstm_36/while/lstm_cell_36/BiasAdd_3:output:0-lstm_36/while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_4¯
$lstm_36/while/lstm_cell_36/Sigmoid_2Sigmoid$lstm_36/while/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/Sigmoid_2¦
!lstm_36/while/lstm_cell_36/Relu_1Relu$lstm_36/while/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_36/while/lstm_cell_36/Relu_1Ø
 lstm_36/while/lstm_cell_36/mul_6Mul(lstm_36/while/lstm_cell_36/Sigmoid_2:y:0/lstm_36/while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_6
2lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_36_while_placeholder_1lstm_36_while_placeholder$lstm_36/while/lstm_cell_36/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_36/while/TensorArrayV2Write/TensorListSetIteml
lstm_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_36/while/add/y
lstm_36/while/addAddV2lstm_36_while_placeholderlstm_36/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_36/while/addp
lstm_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_36/while/add_1/y
lstm_36/while/add_1AddV2(lstm_36_while_lstm_36_while_loop_counterlstm_36/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_36/while/add_1
lstm_36/while/IdentityIdentitylstm_36/while/add_1:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity¦
lstm_36/while/Identity_1Identity.lstm_36_while_lstm_36_while_maximum_iterations^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity_1
lstm_36/while/Identity_2Identitylstm_36/while/add:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity_2º
lstm_36/while/Identity_3IdentityBlstm_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity_3­
lstm_36/while/Identity_4Identity$lstm_36/while/lstm_cell_36/mul_6:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/while/Identity_4­
lstm_36/while/Identity_5Identity$lstm_36/while/lstm_cell_36/add_3:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/while/Identity_5
lstm_36/while/NoOpNoOp*^lstm_36/while/lstm_cell_36/ReadVariableOp,^lstm_36/while/lstm_cell_36/ReadVariableOp_1,^lstm_36/while/lstm_cell_36/ReadVariableOp_2,^lstm_36/while/lstm_cell_36/ReadVariableOp_30^lstm_36/while/lstm_cell_36/split/ReadVariableOp2^lstm_36/while/lstm_cell_36/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_36/while/NoOp"9
lstm_36_while_identitylstm_36/while/Identity:output:0"=
lstm_36_while_identity_1!lstm_36/while/Identity_1:output:0"=
lstm_36_while_identity_2!lstm_36/while/Identity_2:output:0"=
lstm_36_while_identity_3!lstm_36/while/Identity_3:output:0"=
lstm_36_while_identity_4!lstm_36/while/Identity_4:output:0"=
lstm_36_while_identity_5!lstm_36/while/Identity_5:output:0"P
%lstm_36_while_lstm_36_strided_slice_1'lstm_36_while_lstm_36_strided_slice_1_0"j
2lstm_36_while_lstm_cell_36_readvariableop_resource4lstm_36_while_lstm_cell_36_readvariableop_resource_0"z
:lstm_36_while_lstm_cell_36_split_1_readvariableop_resource<lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0"v
8lstm_36_while_lstm_cell_36_split_readvariableop_resource:lstm_36_while_lstm_cell_36_split_readvariableop_resource_0"È
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_36/while/lstm_cell_36/ReadVariableOp)lstm_36/while/lstm_cell_36/ReadVariableOp2Z
+lstm_36/while/lstm_cell_36/ReadVariableOp_1+lstm_36/while/lstm_cell_36/ReadVariableOp_12Z
+lstm_36/while/lstm_cell_36/ReadVariableOp_2+lstm_36/while/lstm_cell_36/ReadVariableOp_22Z
+lstm_36/while/lstm_cell_36/ReadVariableOp_3+lstm_36/while/lstm_cell_36/ReadVariableOp_32b
/lstm_36/while/lstm_cell_36/split/ReadVariableOp/lstm_36/while/lstm_cell_36/split/ReadVariableOp2f
1lstm_36/while/lstm_cell_36/split_1/ReadVariableOp1lstm_36/while/lstm_cell_36/split_1/ReadVariableOp: 
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
while_body_1223324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_36_1223348_0:	+
while_lstm_cell_36_1223350_0:	/
while_lstm_cell_36_1223352_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_36_1223348:	)
while_lstm_cell_36_1223350:	-
while_lstm_cell_36_1223352:	 ¢*while/lstm_cell_36/StatefulPartitionedCallÃ
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
*while/lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_36_1223348_0while_lstm_cell_36_1223350_0while_lstm_cell_36_1223352_0*
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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_12233102,
*while/lstm_cell_36/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_36/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_36/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_36/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_36/StatefulPartitionedCall*"
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
while_lstm_cell_36_1223348while_lstm_cell_36_1223348_0":
while_lstm_cell_36_1223350while_lstm_cell_36_1223350_0":
while_lstm_cell_36_1223352while_lstm_cell_36_1223352_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_36/StatefulPartitionedCall*while/lstm_cell_36/StatefulPartitionedCall: 
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
/__inference_sequential_15_layer_call_fn_1224883

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
J__inference_sequential_15_layer_call_and_return_conditional_losses_12242942
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
ó

*__inference_dense_45_layer_call_fn_1226693

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
E__inference_dense_45_layer_call_and_return_conditional_losses_12242602
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
R
É
D__inference_lstm_36_layer_call_and_return_conditional_losses_1223399

inputs'
lstm_cell_36_1223311:	#
lstm_cell_36_1223313:	'
lstm_cell_36_1223315:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_36/StatefulPartitionedCall¢whileD
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
$lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_36_1223311lstm_cell_36_1223313lstm_cell_36_1223315*
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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_12233102&
$lstm_cell_36/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_36_1223311lstm_cell_36_1223313lstm_cell_36_1223315*
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
while_body_1223324*
condR
while_cond_1223323*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_36_1223311*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity½
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_36/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_36/StatefulPartitionedCall$lstm_cell_36/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
©
(sequential_15_lstm_36_while_body_1223037H
Dsequential_15_lstm_36_while_sequential_15_lstm_36_while_loop_counterN
Jsequential_15_lstm_36_while_sequential_15_lstm_36_while_maximum_iterations+
'sequential_15_lstm_36_while_placeholder-
)sequential_15_lstm_36_while_placeholder_1-
)sequential_15_lstm_36_while_placeholder_2-
)sequential_15_lstm_36_while_placeholder_3G
Csequential_15_lstm_36_while_sequential_15_lstm_36_strided_slice_1_0
sequential_15_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_36_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_15_lstm_36_while_lstm_cell_36_split_readvariableop_resource_0:	Y
Jsequential_15_lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0:	U
Bsequential_15_lstm_36_while_lstm_cell_36_readvariableop_resource_0:	 (
$sequential_15_lstm_36_while_identity*
&sequential_15_lstm_36_while_identity_1*
&sequential_15_lstm_36_while_identity_2*
&sequential_15_lstm_36_while_identity_3*
&sequential_15_lstm_36_while_identity_4*
&sequential_15_lstm_36_while_identity_5E
Asequential_15_lstm_36_while_sequential_15_lstm_36_strided_slice_1
}sequential_15_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_36_tensorarrayunstack_tensorlistfromtensorY
Fsequential_15_lstm_36_while_lstm_cell_36_split_readvariableop_resource:	W
Hsequential_15_lstm_36_while_lstm_cell_36_split_1_readvariableop_resource:	S
@sequential_15_lstm_36_while_lstm_cell_36_readvariableop_resource:	 ¢7sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp¢9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_1¢9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_2¢9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_3¢=sequential_15/lstm_36/while/lstm_cell_36/split/ReadVariableOp¢?sequential_15/lstm_36/while/lstm_cell_36/split_1/ReadVariableOpï
Msequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_15_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_36_tensorarrayunstack_tensorlistfromtensor_0'sequential_15_lstm_36_while_placeholderVsequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItemÍ
8sequential_15/lstm_36/while/lstm_cell_36/ones_like/ShapeShape)sequential_15_lstm_36_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_15/lstm_36/while/lstm_cell_36/ones_like/Shape¹
8sequential_15/lstm_36/while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_15/lstm_36/while/lstm_cell_36/ones_like/Const¨
2sequential_15/lstm_36/while/lstm_cell_36/ones_likeFillAsequential_15/lstm_36/while/lstm_cell_36/ones_like/Shape:output:0Asequential_15/lstm_36/while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_15/lstm_36/while/lstm_cell_36/ones_like¶
8sequential_15/lstm_36/while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_15/lstm_36/while/lstm_cell_36/split/split_dim
=sequential_15/lstm_36/while/lstm_cell_36/split/ReadVariableOpReadVariableOpHsequential_15_lstm_36_while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02?
=sequential_15/lstm_36/while/lstm_cell_36/split/ReadVariableOpË
.sequential_15/lstm_36/while/lstm_cell_36/splitSplitAsequential_15/lstm_36/while/lstm_cell_36/split/split_dim:output:0Esequential_15/lstm_36/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_15/lstm_36/while/lstm_cell_36/split
/sequential_15/lstm_36/while/lstm_cell_36/MatMulMatMulFsequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_15/lstm_36/while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_15/lstm_36/while/lstm_cell_36/MatMul£
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_1MatMulFsequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_15/lstm_36/while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_1£
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_2MatMulFsequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_15/lstm_36/while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_2£
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_3MatMulFsequential_15/lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_15/lstm_36/while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_3º
:sequential_15/lstm_36/while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_15/lstm_36/while/lstm_cell_36/split_1/split_dim
?sequential_15/lstm_36/while/lstm_cell_36/split_1/ReadVariableOpReadVariableOpJsequential_15_lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02A
?sequential_15/lstm_36/while/lstm_cell_36/split_1/ReadVariableOpÃ
0sequential_15/lstm_36/while/lstm_cell_36/split_1SplitCsequential_15/lstm_36/while/lstm_cell_36/split_1/split_dim:output:0Gsequential_15/lstm_36/while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_15/lstm_36/while/lstm_cell_36/split_1
0sequential_15/lstm_36/while/lstm_cell_36/BiasAddBiasAdd9sequential_15/lstm_36/while/lstm_cell_36/MatMul:product:09sequential_15/lstm_36/while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_15/lstm_36/while/lstm_cell_36/BiasAdd
2sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_1BiasAdd;sequential_15/lstm_36/while/lstm_cell_36/MatMul_1:product:09sequential_15/lstm_36/while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_1
2sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_2BiasAdd;sequential_15/lstm_36/while/lstm_cell_36/MatMul_2:product:09sequential_15/lstm_36/while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_2
2sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_3BiasAdd;sequential_15/lstm_36/while/lstm_cell_36/MatMul_3:product:09sequential_15/lstm_36/while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_3ý
,sequential_15/lstm_36/while/lstm_cell_36/mulMul)sequential_15_lstm_36_while_placeholder_2;sequential_15/lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/while/lstm_cell_36/mul
.sequential_15/lstm_36/while/lstm_cell_36/mul_1Mul)sequential_15_lstm_36_while_placeholder_2;sequential_15/lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/mul_1
.sequential_15/lstm_36/while/lstm_cell_36/mul_2Mul)sequential_15_lstm_36_while_placeholder_2;sequential_15/lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/mul_2
.sequential_15/lstm_36/while/lstm_cell_36/mul_3Mul)sequential_15_lstm_36_while_placeholder_2;sequential_15/lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/mul_3ö
7sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOpReadVariableOpBsequential_15_lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype029
7sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOpÍ
<sequential_15/lstm_36/while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_15/lstm_36/while/lstm_cell_36/strided_slice/stackÑ
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice/stack_1Ñ
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice/stack_2ò
6sequential_15/lstm_36/while/lstm_cell_36/strided_sliceStridedSlice?sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp:value:0Esequential_15/lstm_36/while/lstm_cell_36/strided_slice/stack:output:0Gsequential_15/lstm_36/while/lstm_cell_36/strided_slice/stack_1:output:0Gsequential_15/lstm_36/while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_15/lstm_36/while/lstm_cell_36/strided_slice
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_4MatMul0sequential_15/lstm_36/while/lstm_cell_36/mul:z:0?sequential_15/lstm_36/while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_4
,sequential_15/lstm_36/while/lstm_cell_36/addAddV29sequential_15/lstm_36/while/lstm_cell_36/BiasAdd:output:0;sequential_15/lstm_36/while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_15/lstm_36/while/lstm_cell_36/addÓ
0sequential_15/lstm_36/while/lstm_cell_36/SigmoidSigmoid0sequential_15/lstm_36/while/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_15/lstm_36/while/lstm_cell_36/Sigmoidú
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_1ReadVariableOpBsequential_15_lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_1Ñ
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stackÕ
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stack_1Õ
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stack_2þ
8sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1StridedSliceAsequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_1:value:0Gsequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stack:output:0Isequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stack_1:output:0Isequential_15/lstm_36/while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_15/lstm_36/while/lstm_cell_36/strided_slice_1
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_5MatMul2sequential_15/lstm_36/while/lstm_cell_36/mul_1:z:0Asequential_15/lstm_36/while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_5
.sequential_15/lstm_36/while/lstm_cell_36/add_1AddV2;sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_1:output:0;sequential_15/lstm_36/while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/add_1Ù
2sequential_15/lstm_36/while/lstm_cell_36/Sigmoid_1Sigmoid2sequential_15/lstm_36/while/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_15/lstm_36/while/lstm_cell_36/Sigmoid_1ü
.sequential_15/lstm_36/while/lstm_cell_36/mul_4Mul6sequential_15/lstm_36/while/lstm_cell_36/Sigmoid_1:y:0)sequential_15_lstm_36_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/mul_4ú
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_2ReadVariableOpBsequential_15_lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_2Ñ
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stackÕ
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stack_1Õ
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stack_2þ
8sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2StridedSliceAsequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_2:value:0Gsequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stack:output:0Isequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stack_1:output:0Isequential_15/lstm_36/while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_15/lstm_36/while/lstm_cell_36/strided_slice_2
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_6MatMul2sequential_15/lstm_36/while/lstm_cell_36/mul_2:z:0Asequential_15/lstm_36/while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_6
.sequential_15/lstm_36/while/lstm_cell_36/add_2AddV2;sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_2:output:0;sequential_15/lstm_36/while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/add_2Ì
-sequential_15/lstm_36/while/lstm_cell_36/ReluRelu2sequential_15/lstm_36/while/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_15/lstm_36/while/lstm_cell_36/Relu
.sequential_15/lstm_36/while/lstm_cell_36/mul_5Mul4sequential_15/lstm_36/while/lstm_cell_36/Sigmoid:y:0;sequential_15/lstm_36/while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/mul_5
.sequential_15/lstm_36/while/lstm_cell_36/add_3AddV22sequential_15/lstm_36/while/lstm_cell_36/mul_4:z:02sequential_15/lstm_36/while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/add_3ú
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_3ReadVariableOpBsequential_15_lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02;
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_3Ñ
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stackÕ
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stack_1Õ
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stack_2þ
8sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3StridedSliceAsequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_3:value:0Gsequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stack:output:0Isequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stack_1:output:0Isequential_15/lstm_36/while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_15/lstm_36/while/lstm_cell_36/strided_slice_3
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_7MatMul2sequential_15/lstm_36/while/lstm_cell_36/mul_3:z:0Asequential_15/lstm_36/while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_15/lstm_36/while/lstm_cell_36/MatMul_7
.sequential_15/lstm_36/while/lstm_cell_36/add_4AddV2;sequential_15/lstm_36/while/lstm_cell_36/BiasAdd_3:output:0;sequential_15/lstm_36/while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/add_4Ù
2sequential_15/lstm_36/while/lstm_cell_36/Sigmoid_2Sigmoid2sequential_15/lstm_36/while/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_15/lstm_36/while/lstm_cell_36/Sigmoid_2Ð
/sequential_15/lstm_36/while/lstm_cell_36/Relu_1Relu2sequential_15/lstm_36/while/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_15/lstm_36/while/lstm_cell_36/Relu_1
.sequential_15/lstm_36/while/lstm_cell_36/mul_6Mul6sequential_15/lstm_36/while/lstm_cell_36/Sigmoid_2:y:0=sequential_15/lstm_36/while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_15/lstm_36/while/lstm_cell_36/mul_6Î
@sequential_15/lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_15_lstm_36_while_placeholder_1'sequential_15_lstm_36_while_placeholder2sequential_15/lstm_36/while/lstm_cell_36/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_15/lstm_36/while/TensorArrayV2Write/TensorListSetItem
!sequential_15/lstm_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_15/lstm_36/while/add/yÁ
sequential_15/lstm_36/while/addAddV2'sequential_15_lstm_36_while_placeholder*sequential_15/lstm_36/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_36/while/add
#sequential_15/lstm_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_15/lstm_36/while/add_1/yä
!sequential_15/lstm_36/while/add_1AddV2Dsequential_15_lstm_36_while_sequential_15_lstm_36_while_loop_counter,sequential_15/lstm_36/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_36/while/add_1Ã
$sequential_15/lstm_36/while/IdentityIdentity%sequential_15/lstm_36/while/add_1:z:0!^sequential_15/lstm_36/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_15/lstm_36/while/Identityì
&sequential_15/lstm_36/while/Identity_1IdentityJsequential_15_lstm_36_while_sequential_15_lstm_36_while_maximum_iterations!^sequential_15/lstm_36/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_36/while/Identity_1Å
&sequential_15/lstm_36/while/Identity_2Identity#sequential_15/lstm_36/while/add:z:0!^sequential_15/lstm_36/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_36/while/Identity_2ò
&sequential_15/lstm_36/while/Identity_3IdentityPsequential_15/lstm_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_15/lstm_36/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_36/while/Identity_3å
&sequential_15/lstm_36/while/Identity_4Identity2sequential_15/lstm_36/while/lstm_cell_36/mul_6:z:0!^sequential_15/lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_15/lstm_36/while/Identity_4å
&sequential_15/lstm_36/while/Identity_5Identity2sequential_15/lstm_36/while/lstm_cell_36/add_3:z:0!^sequential_15/lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_15/lstm_36/while/Identity_5ö
 sequential_15/lstm_36/while/NoOpNoOp8^sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp:^sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_1:^sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_2:^sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_3>^sequential_15/lstm_36/while/lstm_cell_36/split/ReadVariableOp@^sequential_15/lstm_36/while/lstm_cell_36/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_15/lstm_36/while/NoOp"U
$sequential_15_lstm_36_while_identity-sequential_15/lstm_36/while/Identity:output:0"Y
&sequential_15_lstm_36_while_identity_1/sequential_15/lstm_36/while/Identity_1:output:0"Y
&sequential_15_lstm_36_while_identity_2/sequential_15/lstm_36/while/Identity_2:output:0"Y
&sequential_15_lstm_36_while_identity_3/sequential_15/lstm_36/while/Identity_3:output:0"Y
&sequential_15_lstm_36_while_identity_4/sequential_15/lstm_36/while/Identity_4:output:0"Y
&sequential_15_lstm_36_while_identity_5/sequential_15/lstm_36/while/Identity_5:output:0"
@sequential_15_lstm_36_while_lstm_cell_36_readvariableop_resourceBsequential_15_lstm_36_while_lstm_cell_36_readvariableop_resource_0"
Hsequential_15_lstm_36_while_lstm_cell_36_split_1_readvariableop_resourceJsequential_15_lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0"
Fsequential_15_lstm_36_while_lstm_cell_36_split_readvariableop_resourceHsequential_15_lstm_36_while_lstm_cell_36_split_readvariableop_resource_0"
Asequential_15_lstm_36_while_sequential_15_lstm_36_strided_slice_1Csequential_15_lstm_36_while_sequential_15_lstm_36_strided_slice_1_0"
}sequential_15_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_36_tensorarrayunstack_tensorlistfromtensorsequential_15_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2r
7sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp7sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp2v
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_19sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_12v
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_29sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_22v
9sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_39sequential_15/lstm_36/while/lstm_cell_36/ReadVariableOp_32~
=sequential_15/lstm_36/while/lstm_cell_36/split/ReadVariableOp=sequential_15/lstm_36/while/lstm_cell_36/split/ReadVariableOp2
?sequential_15/lstm_36/while/lstm_cell_36/split_1/ReadVariableOp?sequential_15/lstm_36/while/lstm_cell_36/split_1/ReadVariableOp: 
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
í
¨
E__inference_dense_45_layer_call_and_return_conditional_losses_1226709

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_45/bias/Regularizer/Square/ReadVariableOp
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
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_45/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¸	
 
%__inference_signature_wrapper_1224864
input_16
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_12231862
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
input_16
¢|

#__inference__traced_restore_1227184
file_prefix2
 assignvariableop_dense_44_kernel:  .
 assignvariableop_1_dense_44_bias: 4
"assignvariableop_2_dense_45_kernel: .
 assignvariableop_3_dense_45_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_36_lstm_cell_36_kernel:	L
9assignvariableop_10_lstm_36_lstm_cell_36_recurrent_kernel:	 <
-assignvariableop_11_lstm_36_lstm_cell_36_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: <
*assignvariableop_14_adam_dense_44_kernel_m:  6
(assignvariableop_15_adam_dense_44_bias_m: <
*assignvariableop_16_adam_dense_45_kernel_m: 6
(assignvariableop_17_adam_dense_45_bias_m:I
6assignvariableop_18_adam_lstm_36_lstm_cell_36_kernel_m:	S
@assignvariableop_19_adam_lstm_36_lstm_cell_36_recurrent_kernel_m:	 C
4assignvariableop_20_adam_lstm_36_lstm_cell_36_bias_m:	<
*assignvariableop_21_adam_dense_44_kernel_v:  6
(assignvariableop_22_adam_dense_44_bias_v: <
*assignvariableop_23_adam_dense_45_kernel_v: 6
(assignvariableop_24_adam_dense_45_bias_v:I
6assignvariableop_25_adam_lstm_36_lstm_cell_36_kernel_v:	S
@assignvariableop_26_adam_lstm_36_lstm_cell_36_recurrent_kernel_v:	 C
4assignvariableop_27_adam_lstm_36_lstm_cell_36_bias_v:	
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
AssignVariableOpAssignVariableOp assignvariableop_dense_44_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_44_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_45_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_45_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_36_lstm_cell_36_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_36_lstm_cell_36_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_36_lstm_cell_36_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_44_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_44_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_45_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_45_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_36_lstm_cell_36_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_36_lstm_cell_36_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_36_lstm_cell_36_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_44_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_44_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_45_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_45_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_36_lstm_cell_36_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_36_lstm_cell_36_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_36_lstm_cell_36_bias_vIdentity_27:output:0"/device:CPU:0*
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
ò+
³
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224294

inputs"
lstm_36_1224220:	
lstm_36_1224222:	"
lstm_36_1224224:	 "
dense_44_1224239:  
dense_44_1224241: "
dense_45_1224261: 
dense_45_1224263:
identity¢ dense_44/StatefulPartitionedCall¢ dense_45/StatefulPartitionedCall¢/dense_45/bias/Regularizer/Square/ReadVariableOp¢lstm_36/StatefulPartitionedCall¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¥
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinputslstm_36_1224220lstm_36_1224222lstm_36_1224224*
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12242192!
lstm_36/StatefulPartitionedCall¹
 dense_44/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0dense_44_1224239dense_44_1224241*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_12242382"
 dense_44/StatefulPartitionedCallº
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_1224261dense_45_1224263*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_12242602"
 dense_45/StatefulPartitionedCall
reshape_22/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
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
G__inference_reshape_22_layer_call_and_return_conditional_losses_12242792
reshape_22/PartitionedCallÏ
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_36_1224220*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/mul¯
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_1224263*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mul
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall0^dense_45/bias/Regularizer/Square/ReadVariableOp ^lstm_36/StatefulPartitionedCall>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2b
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ßR
ì
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1226859

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2,
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
ÏR
ê
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1223310

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2,
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
/__inference_sequential_15_layer_call_fn_1224902

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
J__inference_sequential_15_layer_call_and_return_conditional_losses_12247212
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
ÍB
ã
 __inference__traced_save_1227090
file_prefix.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_36_lstm_cell_36_kernel_read_readvariableopD
@savev2_lstm_36_lstm_cell_36_recurrent_kernel_read_readvariableop8
4savev2_lstm_36_lstm_cell_36_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_44_kernel_m_read_readvariableop3
/savev2_adam_dense_44_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableopA
=savev2_adam_lstm_36_lstm_cell_36_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_36_lstm_cell_36_bias_m_read_readvariableop5
1savev2_adam_dense_44_kernel_v_read_readvariableop3
/savev2_adam_dense_44_bias_v_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableopA
=savev2_adam_lstm_36_lstm_cell_36_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_36_lstm_cell_36_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_36_lstm_cell_36_kernel_read_readvariableop@savev2_lstm_36_lstm_cell_36_recurrent_kernel_read_readvariableop4savev2_lstm_36_lstm_cell_36_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_44_kernel_m_read_readvariableop/savev2_adam_dense_44_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop=savev2_adam_lstm_36_lstm_cell_36_kernel_m_read_readvariableopGsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_36_lstm_cell_36_bias_m_read_readvariableop1savev2_adam_dense_44_kernel_v_read_readvariableop/savev2_adam_dense_44_bias_v_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableop=savev2_adam_lstm_36_lstm_cell_36_kernel_v_read_readvariableopGsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_36_lstm_cell_36_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¸
÷
.__inference_lstm_cell_36_layer_call_fn_1226761

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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_12233102
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
ó

*__inference_dense_44_layer_call_fn_1226667

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
E__inference_dense_44_layer_call_and_return_conditional_losses_12242382
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
Ú
È
while_cond_1225667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1225667___redundant_placeholder05
1while_while_cond_1225667___redundant_placeholder15
1while_while_cond_1225667___redundant_placeholder25
1while_while_cond_1225667___redundant_placeholder3
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
¨
¥	
while_body_1224086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_36_split_readvariableop_resource_0:	C
4while_lstm_cell_36_split_1_readvariableop_resource_0:	?
,while_lstm_cell_36_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_36_split_readvariableop_resource:	A
2while_lstm_cell_36_split_1_readvariableop_resource:	=
*while_lstm_cell_36_readvariableop_resource:	 ¢!while/lstm_cell_36/ReadVariableOp¢#while/lstm_cell_36/ReadVariableOp_1¢#while/lstm_cell_36/ReadVariableOp_2¢#while/lstm_cell_36/ReadVariableOp_3¢'while/lstm_cell_36/split/ReadVariableOp¢)while/lstm_cell_36/split_1/ReadVariableOpÃ
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
"while/lstm_cell_36/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_36/ones_like/Shape
"while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_36/ones_like/ConstÐ
while/lstm_cell_36/ones_likeFill+while/lstm_cell_36/ones_like/Shape:output:0+while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/ones_like
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dimÆ
'while/lstm_cell_36/split/ReadVariableOpReadVariableOp2while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_36/split/ReadVariableOpó
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_36/splitÇ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulË
while/lstm_cell_36/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1Ë
while/lstm_cell_36/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_2Ë
while/lstm_cell_36/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_3
$while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_36/split_1/split_dimÈ
)while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_36/split_1/ReadVariableOpë
while/lstm_cell_36/split_1Split-while/lstm_cell_36/split_1/split_dim:output:01while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_36/split_1¿
while/lstm_cell_36/BiasAddBiasAdd#while/lstm_cell_36/MatMul:product:0#while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAddÅ
while/lstm_cell_36/BiasAdd_1BiasAdd%while/lstm_cell_36/MatMul_1:product:0#while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_1Å
while/lstm_cell_36/BiasAdd_2BiasAdd%while/lstm_cell_36/MatMul_2:product:0#while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_2Å
while/lstm_cell_36/BiasAdd_3BiasAdd%while/lstm_cell_36/MatMul_3:product:0#while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_3¥
while/lstm_cell_36/mulMulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul©
while/lstm_cell_36/mul_1Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/mul_2Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_2©
while/lstm_cell_36/mul_3Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_3´
!while/lstm_cell_36/ReadVariableOpReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_36/ReadVariableOp¡
&while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_36/strided_slice/stack¥
(while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice/stack_1¥
(while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_36/strided_slice/stack_2î
 while/lstm_cell_36/strided_sliceStridedSlice)while/lstm_cell_36/ReadVariableOp:value:0/while/lstm_cell_36/strided_slice/stack:output:01while/lstm_cell_36/strided_slice/stack_1:output:01while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_36/strided_slice½
while/lstm_cell_36/MatMul_4MatMulwhile/lstm_cell_36/mul:z:0)while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_4·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/BiasAdd:output:0%while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add
while/lstm_cell_36/SigmoidSigmoidwhile/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid¸
#while/lstm_cell_36/ReadVariableOp_1ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_1¥
(while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice_1/stack©
*while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_36/strided_slice_1/stack_1©
*while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_1/stack_2ú
"while/lstm_cell_36/strided_slice_1StridedSlice+while/lstm_cell_36/ReadVariableOp_1:value:01while/lstm_cell_36/strided_slice_1/stack:output:03while/lstm_cell_36/strided_slice_1/stack_1:output:03while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_1Á
while/lstm_cell_36/MatMul_5MatMulwhile/lstm_cell_36/mul_1:z:0+while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_5½
while/lstm_cell_36/add_1AddV2%while/lstm_cell_36/BiasAdd_1:output:0%while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_1Sigmoidwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_1¤
while/lstm_cell_36/mul_4Mul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_4¸
#while/lstm_cell_36/ReadVariableOp_2ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_2¥
(while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_36/strided_slice_2/stack©
*while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_36/strided_slice_2/stack_1©
*while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_2/stack_2ú
"while/lstm_cell_36/strided_slice_2StridedSlice+while/lstm_cell_36/ReadVariableOp_2:value:01while/lstm_cell_36/strided_slice_2/stack:output:03while/lstm_cell_36/strided_slice_2/stack_1:output:03while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_2Á
while/lstm_cell_36/MatMul_6MatMulwhile/lstm_cell_36/mul_2:z:0+while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_6½
while/lstm_cell_36/add_2AddV2%while/lstm_cell_36/BiasAdd_2:output:0%while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_2
while/lstm_cell_36/ReluReluwhile/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_5Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_5«
while/lstm_cell_36/add_3AddV2while/lstm_cell_36/mul_4:z:0while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_3¸
#while/lstm_cell_36/ReadVariableOp_3ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_3¥
(while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_36/strided_slice_3/stack©
*while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_36/strided_slice_3/stack_1©
*while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_3/stack_2ú
"while/lstm_cell_36/strided_slice_3StridedSlice+while/lstm_cell_36/ReadVariableOp_3:value:01while/lstm_cell_36/strided_slice_3/stack:output:03while/lstm_cell_36/strided_slice_3/stack_1:output:03while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_3Á
while/lstm_cell_36/MatMul_7MatMulwhile/lstm_cell_36/mul_3:z:0+while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_7½
while/lstm_cell_36/add_4AddV2%while/lstm_cell_36/BiasAdd_3:output:0%while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_4
while/lstm_cell_36/Sigmoid_2Sigmoidwhile/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_6Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_36/ReadVariableOp$^while/lstm_cell_36/ReadVariableOp_1$^while/lstm_cell_36/ReadVariableOp_2$^while/lstm_cell_36/ReadVariableOp_3(^while/lstm_cell_36/split/ReadVariableOp*^while/lstm_cell_36/split_1/ReadVariableOp*"
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
*while_lstm_cell_36_readvariableop_resource,while_lstm_cell_36_readvariableop_resource_0"j
2while_lstm_cell_36_split_1_readvariableop_resource4while_lstm_cell_36_split_1_readvariableop_resource_0"f
0while_lstm_cell_36_split_readvariableop_resource2while_lstm_cell_36_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_36/ReadVariableOp!while/lstm_cell_36/ReadVariableOp2J
#while/lstm_cell_36/ReadVariableOp_1#while/lstm_cell_36/ReadVariableOp_12J
#while/lstm_cell_36/ReadVariableOp_2#while/lstm_cell_36/ReadVariableOp_22J
#while/lstm_cell_36/ReadVariableOp_3#while/lstm_cell_36/ReadVariableOp_32R
'while/lstm_cell_36/split/ReadVariableOp'while/lstm_cell_36/split/ReadVariableOp2V
)while/lstm_cell_36/split_1/ReadVariableOp)while/lstm_cell_36/split_1/ReadVariableOp: 
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
ü²
¥	
while_body_1224492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_36_split_readvariableop_resource_0:	C
4while_lstm_cell_36_split_1_readvariableop_resource_0:	?
,while_lstm_cell_36_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_36_split_readvariableop_resource:	A
2while_lstm_cell_36_split_1_readvariableop_resource:	=
*while_lstm_cell_36_readvariableop_resource:	 ¢!while/lstm_cell_36/ReadVariableOp¢#while/lstm_cell_36/ReadVariableOp_1¢#while/lstm_cell_36/ReadVariableOp_2¢#while/lstm_cell_36/ReadVariableOp_3¢'while/lstm_cell_36/split/ReadVariableOp¢)while/lstm_cell_36/split_1/ReadVariableOpÃ
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
"while/lstm_cell_36/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_36/ones_like/Shape
"while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_36/ones_like/ConstÐ
while/lstm_cell_36/ones_likeFill+while/lstm_cell_36/ones_like/Shape:output:0+while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/ones_like
 while/lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_36/dropout/ConstË
while/lstm_cell_36/dropout/MulMul%while/lstm_cell_36/ones_like:output:0)while/lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_36/dropout/Mul
 while/lstm_cell_36/dropout/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_36/dropout/Shape
7while/lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¯ãñ29
7while/lstm_cell_36/dropout/random_uniform/RandomUniform
)while/lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_36/dropout/GreaterEqual/y
'while/lstm_cell_36/dropout/GreaterEqualGreaterEqual@while/lstm_cell_36/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_36/dropout/GreaterEqual¸
while/lstm_cell_36/dropout/CastCast+while/lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_36/dropout/CastÆ
 while/lstm_cell_36/dropout/Mul_1Mul"while/lstm_cell_36/dropout/Mul:z:0#while/lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout/Mul_1
"while/lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_1/ConstÑ
 while/lstm_cell_36/dropout_1/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_1/Mul
"while/lstm_cell_36/dropout_1/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_1/Shape
9while/lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2²2;
9while/lstm_cell_36/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_1/GreaterEqual/y
)while/lstm_cell_36/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_1/GreaterEqual¾
!while/lstm_cell_36/dropout_1/CastCast-while/lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_1/CastÎ
"while/lstm_cell_36/dropout_1/Mul_1Mul$while/lstm_cell_36/dropout_1/Mul:z:0%while/lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_1/Mul_1
"while/lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_2/ConstÑ
 while/lstm_cell_36/dropout_2/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_2/Mul
"while/lstm_cell_36/dropout_2/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_2/Shape
9while/lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¹Î2;
9while/lstm_cell_36/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_2/GreaterEqual/y
)while/lstm_cell_36/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_2/GreaterEqual¾
!while/lstm_cell_36/dropout_2/CastCast-while/lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_2/CastÎ
"while/lstm_cell_36/dropout_2/Mul_1Mul$while/lstm_cell_36/dropout_2/Mul:z:0%while/lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_2/Mul_1
"while/lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_3/ConstÑ
 while/lstm_cell_36/dropout_3/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_3/Mul
"while/lstm_cell_36/dropout_3/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_3/Shape
9while/lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ãó2;
9while/lstm_cell_36/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_3/GreaterEqual/y
)while/lstm_cell_36/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_3/GreaterEqual¾
!while/lstm_cell_36/dropout_3/CastCast-while/lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_3/CastÎ
"while/lstm_cell_36/dropout_3/Mul_1Mul$while/lstm_cell_36/dropout_3/Mul:z:0%while/lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_3/Mul_1
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dimÆ
'while/lstm_cell_36/split/ReadVariableOpReadVariableOp2while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_36/split/ReadVariableOpó
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_36/splitÇ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulË
while/lstm_cell_36/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1Ë
while/lstm_cell_36/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_2Ë
while/lstm_cell_36/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_3
$while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_36/split_1/split_dimÈ
)while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_36/split_1/ReadVariableOpë
while/lstm_cell_36/split_1Split-while/lstm_cell_36/split_1/split_dim:output:01while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_36/split_1¿
while/lstm_cell_36/BiasAddBiasAdd#while/lstm_cell_36/MatMul:product:0#while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAddÅ
while/lstm_cell_36/BiasAdd_1BiasAdd%while/lstm_cell_36/MatMul_1:product:0#while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_1Å
while/lstm_cell_36/BiasAdd_2BiasAdd%while/lstm_cell_36/MatMul_2:product:0#while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_2Å
while/lstm_cell_36/BiasAdd_3BiasAdd%while/lstm_cell_36/MatMul_3:product:0#while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_3¤
while/lstm_cell_36/mulMulwhile_placeholder_2$while/lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mulª
while/lstm_cell_36/mul_1Mulwhile_placeholder_2&while/lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_1ª
while/lstm_cell_36/mul_2Mulwhile_placeholder_2&while/lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_2ª
while/lstm_cell_36/mul_3Mulwhile_placeholder_2&while/lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_3´
!while/lstm_cell_36/ReadVariableOpReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_36/ReadVariableOp¡
&while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_36/strided_slice/stack¥
(while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice/stack_1¥
(while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_36/strided_slice/stack_2î
 while/lstm_cell_36/strided_sliceStridedSlice)while/lstm_cell_36/ReadVariableOp:value:0/while/lstm_cell_36/strided_slice/stack:output:01while/lstm_cell_36/strided_slice/stack_1:output:01while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_36/strided_slice½
while/lstm_cell_36/MatMul_4MatMulwhile/lstm_cell_36/mul:z:0)while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_4·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/BiasAdd:output:0%while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add
while/lstm_cell_36/SigmoidSigmoidwhile/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid¸
#while/lstm_cell_36/ReadVariableOp_1ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_1¥
(while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice_1/stack©
*while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_36/strided_slice_1/stack_1©
*while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_1/stack_2ú
"while/lstm_cell_36/strided_slice_1StridedSlice+while/lstm_cell_36/ReadVariableOp_1:value:01while/lstm_cell_36/strided_slice_1/stack:output:03while/lstm_cell_36/strided_slice_1/stack_1:output:03while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_1Á
while/lstm_cell_36/MatMul_5MatMulwhile/lstm_cell_36/mul_1:z:0+while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_5½
while/lstm_cell_36/add_1AddV2%while/lstm_cell_36/BiasAdd_1:output:0%while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_1Sigmoidwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_1¤
while/lstm_cell_36/mul_4Mul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_4¸
#while/lstm_cell_36/ReadVariableOp_2ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_2¥
(while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_36/strided_slice_2/stack©
*while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_36/strided_slice_2/stack_1©
*while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_2/stack_2ú
"while/lstm_cell_36/strided_slice_2StridedSlice+while/lstm_cell_36/ReadVariableOp_2:value:01while/lstm_cell_36/strided_slice_2/stack:output:03while/lstm_cell_36/strided_slice_2/stack_1:output:03while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_2Á
while/lstm_cell_36/MatMul_6MatMulwhile/lstm_cell_36/mul_2:z:0+while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_6½
while/lstm_cell_36/add_2AddV2%while/lstm_cell_36/BiasAdd_2:output:0%while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_2
while/lstm_cell_36/ReluReluwhile/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_5Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_5«
while/lstm_cell_36/add_3AddV2while/lstm_cell_36/mul_4:z:0while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_3¸
#while/lstm_cell_36/ReadVariableOp_3ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_3¥
(while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_36/strided_slice_3/stack©
*while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_36/strided_slice_3/stack_1©
*while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_3/stack_2ú
"while/lstm_cell_36/strided_slice_3StridedSlice+while/lstm_cell_36/ReadVariableOp_3:value:01while/lstm_cell_36/strided_slice_3/stack:output:03while/lstm_cell_36/strided_slice_3/stack_1:output:03while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_3Á
while/lstm_cell_36/MatMul_7MatMulwhile/lstm_cell_36/mul_3:z:0+while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_7½
while/lstm_cell_36/add_4AddV2%while/lstm_cell_36/BiasAdd_3:output:0%while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_4
while/lstm_cell_36/Sigmoid_2Sigmoidwhile/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_6Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_36/ReadVariableOp$^while/lstm_cell_36/ReadVariableOp_1$^while/lstm_cell_36/ReadVariableOp_2$^while/lstm_cell_36/ReadVariableOp_3(^while/lstm_cell_36/split/ReadVariableOp*^while/lstm_cell_36/split_1/ReadVariableOp*"
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
*while_lstm_cell_36_readvariableop_resource,while_lstm_cell_36_readvariableop_resource_0"j
2while_lstm_cell_36_split_1_readvariableop_resource4while_lstm_cell_36_split_1_readvariableop_resource_0"f
0while_lstm_cell_36_split_readvariableop_resource2while_lstm_cell_36_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_36/ReadVariableOp!while/lstm_cell_36/ReadVariableOp2J
#while/lstm_cell_36/ReadVariableOp_1#while/lstm_cell_36/ReadVariableOp_12J
#while/lstm_cell_36/ReadVariableOp_2#while/lstm_cell_36/ReadVariableOp_22J
#while/lstm_cell_36/ReadVariableOp_3#while/lstm_cell_36/ReadVariableOp_32R
'while/lstm_cell_36/split/ReadVariableOp'while/lstm_cell_36/split/ReadVariableOp2V
)while/lstm_cell_36/split_1/ReadVariableOp)while/lstm_cell_36/split_1/ReadVariableOp: 
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
J__inference_sequential_15_layer_call_and_return_conditional_losses_1225173

inputsE
2lstm_36_lstm_cell_36_split_readvariableop_resource:	C
4lstm_36_lstm_cell_36_split_1_readvariableop_resource:	?
,lstm_36_lstm_cell_36_readvariableop_resource:	 9
'dense_44_matmul_readvariableop_resource:  6
(dense_44_biasadd_readvariableop_resource: 9
'dense_45_matmul_readvariableop_resource: 6
(dense_45_biasadd_readvariableop_resource:
identity¢dense_44/BiasAdd/ReadVariableOp¢dense_44/MatMul/ReadVariableOp¢dense_45/BiasAdd/ReadVariableOp¢dense_45/MatMul/ReadVariableOp¢/dense_45/bias/Regularizer/Square/ReadVariableOp¢#lstm_36/lstm_cell_36/ReadVariableOp¢%lstm_36/lstm_cell_36/ReadVariableOp_1¢%lstm_36/lstm_cell_36/ReadVariableOp_2¢%lstm_36/lstm_cell_36/ReadVariableOp_3¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢)lstm_36/lstm_cell_36/split/ReadVariableOp¢+lstm_36/lstm_cell_36/split_1/ReadVariableOp¢lstm_36/whileT
lstm_36/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_36/Shape
lstm_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_36/strided_slice/stack
lstm_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_36/strided_slice/stack_1
lstm_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_36/strided_slice/stack_2
lstm_36/strided_sliceStridedSlicelstm_36/Shape:output:0$lstm_36/strided_slice/stack:output:0&lstm_36/strided_slice/stack_1:output:0&lstm_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_36/strided_slicel
lstm_36/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros/mul/y
lstm_36/zeros/mulMullstm_36/strided_slice:output:0lstm_36/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros/mulo
lstm_36/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_36/zeros/Less/y
lstm_36/zeros/LessLesslstm_36/zeros/mul:z:0lstm_36/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros/Lessr
lstm_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros/packed/1£
lstm_36/zeros/packedPacklstm_36/strided_slice:output:0lstm_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_36/zeros/packedo
lstm_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/zeros/Const
lstm_36/zerosFilllstm_36/zeros/packed:output:0lstm_36/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/zerosp
lstm_36/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros_1/mul/y
lstm_36/zeros_1/mulMullstm_36/strided_slice:output:0lstm_36/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros_1/muls
lstm_36/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_36/zeros_1/Less/y
lstm_36/zeros_1/LessLesslstm_36/zeros_1/mul:z:0lstm_36/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros_1/Lessv
lstm_36/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros_1/packed/1©
lstm_36/zeros_1/packedPacklstm_36/strided_slice:output:0!lstm_36/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_36/zeros_1/packeds
lstm_36/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/zeros_1/Const
lstm_36/zeros_1Filllstm_36/zeros_1/packed:output:0lstm_36/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/zeros_1
lstm_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_36/transpose/perm
lstm_36/transpose	Transposeinputslstm_36/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/transposeg
lstm_36/Shape_1Shapelstm_36/transpose:y:0*
T0*
_output_shapes
:2
lstm_36/Shape_1
lstm_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_36/strided_slice_1/stack
lstm_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_1/stack_1
lstm_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_1/stack_2
lstm_36/strided_slice_1StridedSlicelstm_36/Shape_1:output:0&lstm_36/strided_slice_1/stack:output:0(lstm_36/strided_slice_1/stack_1:output:0(lstm_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_36/strided_slice_1
#lstm_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_36/TensorArrayV2/element_shapeÒ
lstm_36/TensorArrayV2TensorListReserve,lstm_36/TensorArrayV2/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_36/TensorArrayV2Ï
=lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_36/transpose:y:0Flstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_36/TensorArrayUnstack/TensorListFromTensor
lstm_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_36/strided_slice_2/stack
lstm_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_2/stack_1
lstm_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_2/stack_2¬
lstm_36/strided_slice_2StridedSlicelstm_36/transpose:y:0&lstm_36/strided_slice_2/stack:output:0(lstm_36/strided_slice_2/stack_1:output:0(lstm_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_36/strided_slice_2
$lstm_36/lstm_cell_36/ones_like/ShapeShapelstm_36/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_36/lstm_cell_36/ones_like/Shape
$lstm_36/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_36/lstm_cell_36/ones_like/ConstØ
lstm_36/lstm_cell_36/ones_likeFill-lstm_36/lstm_cell_36/ones_like/Shape:output:0-lstm_36/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/ones_like
$lstm_36/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_36/lstm_cell_36/split/split_dimÊ
)lstm_36/lstm_cell_36/split/ReadVariableOpReadVariableOp2lstm_36_lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_36/lstm_cell_36/split/ReadVariableOpû
lstm_36/lstm_cell_36/splitSplit-lstm_36/lstm_cell_36/split/split_dim:output:01lstm_36/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_36/lstm_cell_36/split½
lstm_36/lstm_cell_36/MatMulMatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMulÁ
lstm_36/lstm_cell_36/MatMul_1MatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_1Á
lstm_36/lstm_cell_36/MatMul_2MatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_2Á
lstm_36/lstm_cell_36/MatMul_3MatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_3
&lstm_36/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_36/lstm_cell_36/split_1/split_dimÌ
+lstm_36/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4lstm_36_lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_36/lstm_cell_36/split_1/ReadVariableOpó
lstm_36/lstm_cell_36/split_1Split/lstm_36/lstm_cell_36/split_1/split_dim:output:03lstm_36/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_36/lstm_cell_36/split_1Ç
lstm_36/lstm_cell_36/BiasAddBiasAdd%lstm_36/lstm_cell_36/MatMul:product:0%lstm_36/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/BiasAddÍ
lstm_36/lstm_cell_36/BiasAdd_1BiasAdd'lstm_36/lstm_cell_36/MatMul_1:product:0%lstm_36/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/BiasAdd_1Í
lstm_36/lstm_cell_36/BiasAdd_2BiasAdd'lstm_36/lstm_cell_36/MatMul_2:product:0%lstm_36/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/BiasAdd_2Í
lstm_36/lstm_cell_36/BiasAdd_3BiasAdd'lstm_36/lstm_cell_36/MatMul_3:product:0%lstm_36/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/BiasAdd_3®
lstm_36/lstm_cell_36/mulMullstm_36/zeros:output:0'lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul²
lstm_36/lstm_cell_36/mul_1Mullstm_36/zeros:output:0'lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_1²
lstm_36/lstm_cell_36/mul_2Mullstm_36/zeros:output:0'lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_2²
lstm_36/lstm_cell_36/mul_3Mullstm_36/zeros:output:0'lstm_36/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_3¸
#lstm_36/lstm_cell_36/ReadVariableOpReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_36/lstm_cell_36/ReadVariableOp¥
(lstm_36/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_36/lstm_cell_36/strided_slice/stack©
*lstm_36/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_36/lstm_cell_36/strided_slice/stack_1©
*lstm_36/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_36/lstm_cell_36/strided_slice/stack_2ú
"lstm_36/lstm_cell_36/strided_sliceStridedSlice+lstm_36/lstm_cell_36/ReadVariableOp:value:01lstm_36/lstm_cell_36/strided_slice/stack:output:03lstm_36/lstm_cell_36/strided_slice/stack_1:output:03lstm_36/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_36/lstm_cell_36/strided_sliceÅ
lstm_36/lstm_cell_36/MatMul_4MatMullstm_36/lstm_cell_36/mul:z:0+lstm_36/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_4¿
lstm_36/lstm_cell_36/addAddV2%lstm_36/lstm_cell_36/BiasAdd:output:0'lstm_36/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add
lstm_36/lstm_cell_36/SigmoidSigmoidlstm_36/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/Sigmoid¼
%lstm_36/lstm_cell_36/ReadVariableOp_1ReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_36/lstm_cell_36/ReadVariableOp_1©
*lstm_36/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_36/lstm_cell_36/strided_slice_1/stack­
,lstm_36/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_36/lstm_cell_36/strided_slice_1/stack_1­
,lstm_36/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_36/lstm_cell_36/strided_slice_1/stack_2
$lstm_36/lstm_cell_36/strided_slice_1StridedSlice-lstm_36/lstm_cell_36/ReadVariableOp_1:value:03lstm_36/lstm_cell_36/strided_slice_1/stack:output:05lstm_36/lstm_cell_36/strided_slice_1/stack_1:output:05lstm_36/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_36/lstm_cell_36/strided_slice_1É
lstm_36/lstm_cell_36/MatMul_5MatMullstm_36/lstm_cell_36/mul_1:z:0-lstm_36/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_5Å
lstm_36/lstm_cell_36/add_1AddV2'lstm_36/lstm_cell_36/BiasAdd_1:output:0'lstm_36/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_1
lstm_36/lstm_cell_36/Sigmoid_1Sigmoidlstm_36/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/Sigmoid_1¯
lstm_36/lstm_cell_36/mul_4Mul"lstm_36/lstm_cell_36/Sigmoid_1:y:0lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_4¼
%lstm_36/lstm_cell_36/ReadVariableOp_2ReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_36/lstm_cell_36/ReadVariableOp_2©
*lstm_36/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_36/lstm_cell_36/strided_slice_2/stack­
,lstm_36/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_36/lstm_cell_36/strided_slice_2/stack_1­
,lstm_36/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_36/lstm_cell_36/strided_slice_2/stack_2
$lstm_36/lstm_cell_36/strided_slice_2StridedSlice-lstm_36/lstm_cell_36/ReadVariableOp_2:value:03lstm_36/lstm_cell_36/strided_slice_2/stack:output:05lstm_36/lstm_cell_36/strided_slice_2/stack_1:output:05lstm_36/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_36/lstm_cell_36/strided_slice_2É
lstm_36/lstm_cell_36/MatMul_6MatMullstm_36/lstm_cell_36/mul_2:z:0-lstm_36/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_6Å
lstm_36/lstm_cell_36/add_2AddV2'lstm_36/lstm_cell_36/BiasAdd_2:output:0'lstm_36/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_2
lstm_36/lstm_cell_36/ReluRelulstm_36/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/Relu¼
lstm_36/lstm_cell_36/mul_5Mul lstm_36/lstm_cell_36/Sigmoid:y:0'lstm_36/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_5³
lstm_36/lstm_cell_36/add_3AddV2lstm_36/lstm_cell_36/mul_4:z:0lstm_36/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_3¼
%lstm_36/lstm_cell_36/ReadVariableOp_3ReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_36/lstm_cell_36/ReadVariableOp_3©
*lstm_36/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_36/lstm_cell_36/strided_slice_3/stack­
,lstm_36/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_36/lstm_cell_36/strided_slice_3/stack_1­
,lstm_36/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_36/lstm_cell_36/strided_slice_3/stack_2
$lstm_36/lstm_cell_36/strided_slice_3StridedSlice-lstm_36/lstm_cell_36/ReadVariableOp_3:value:03lstm_36/lstm_cell_36/strided_slice_3/stack:output:05lstm_36/lstm_cell_36/strided_slice_3/stack_1:output:05lstm_36/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_36/lstm_cell_36/strided_slice_3É
lstm_36/lstm_cell_36/MatMul_7MatMullstm_36/lstm_cell_36/mul_3:z:0-lstm_36/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_7Å
lstm_36/lstm_cell_36/add_4AddV2'lstm_36/lstm_cell_36/BiasAdd_3:output:0'lstm_36/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_4
lstm_36/lstm_cell_36/Sigmoid_2Sigmoidlstm_36/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/Sigmoid_2
lstm_36/lstm_cell_36/Relu_1Relulstm_36/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/Relu_1À
lstm_36/lstm_cell_36/mul_6Mul"lstm_36/lstm_cell_36/Sigmoid_2:y:0)lstm_36/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_6
%lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_36/TensorArrayV2_1/element_shapeØ
lstm_36/TensorArrayV2_1TensorListReserve.lstm_36/TensorArrayV2_1/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_36/TensorArrayV2_1^
lstm_36/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/time
 lstm_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/maximum_iterationsz
lstm_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/while/loop_counterû
lstm_36/whileWhile#lstm_36/while/loop_counter:output:0)lstm_36/while/maximum_iterations:output:0lstm_36/time:output:0 lstm_36/TensorArrayV2_1:handle:0lstm_36/zeros:output:0lstm_36/zeros_1:output:0 lstm_36/strided_slice_1:output:0?lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_36_lstm_cell_36_split_readvariableop_resource4lstm_36_lstm_cell_36_split_1_readvariableop_resource,lstm_36_lstm_cell_36_readvariableop_resource*
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
lstm_36_while_body_1225012*&
condR
lstm_36_while_cond_1225011*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_36/whileÅ
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_36/TensorArrayV2Stack/TensorListStackTensorListStacklstm_36/while:output:3Alstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_36/TensorArrayV2Stack/TensorListStack
lstm_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_36/strided_slice_3/stack
lstm_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_36/strided_slice_3/stack_1
lstm_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_3/stack_2Ê
lstm_36/strided_slice_3StridedSlice3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_36/strided_slice_3/stack:output:0(lstm_36/strided_slice_3/stack_1:output:0(lstm_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_36/strided_slice_3
lstm_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_36/transpose_1/permÅ
lstm_36/transpose_1	Transpose3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/transpose_1v
lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/runtime¨
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_44/MatMul/ReadVariableOp¨
dense_44/MatMulMatMul lstm_36/strided_slice_3:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_44/MatMul§
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_44/BiasAdd/ReadVariableOp¥
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_44/BiasAdds
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_44/Relu¨
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_45/MatMul/ReadVariableOp£
dense_45/MatMulMatMuldense_44/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_45/MatMul§
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOp¥
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_45/BiasAddm
reshape_22/ShapeShapedense_45/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_22/Shape
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_22/strided_slice/stack
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_22/strided_slice/stack_1
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_22/strided_slice/stack_2¤
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_22/strided_slicez
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_22/Reshape/shape/1z
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_22/Reshape/shape/2×
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_22/Reshape/shape§
reshape_22/ReshapeReshapedense_45/BiasAdd:output:0!reshape_22/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_22/Reshapeò
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_36_lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/mulÇ
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mulz
IdentityIdentityreshape_22/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp0^dense_45/bias/Regularizer/Square/ReadVariableOp$^lstm_36/lstm_cell_36/ReadVariableOp&^lstm_36/lstm_cell_36/ReadVariableOp_1&^lstm_36/lstm_cell_36/ReadVariableOp_2&^lstm_36/lstm_cell_36/ReadVariableOp_3>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp*^lstm_36/lstm_cell_36/split/ReadVariableOp,^lstm_36/lstm_cell_36/split_1/ReadVariableOp^lstm_36/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2b
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp2J
#lstm_36/lstm_cell_36/ReadVariableOp#lstm_36/lstm_cell_36/ReadVariableOp2N
%lstm_36/lstm_cell_36/ReadVariableOp_1%lstm_36/lstm_cell_36/ReadVariableOp_12N
%lstm_36/lstm_cell_36/ReadVariableOp_2%lstm_36/lstm_cell_36/ReadVariableOp_22N
%lstm_36/lstm_cell_36/ReadVariableOp_3%lstm_36/lstm_cell_36/ReadVariableOp_32~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_36/lstm_cell_36/split/ReadVariableOp)lstm_36/lstm_cell_36/split/ReadVariableOp2Z
+lstm_36/lstm_cell_36/split_1/ReadVariableOp+lstm_36/lstm_cell_36/split_1/ReadVariableOp2
lstm_36/whilelstm_36/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
Ë
__inference_loss_fn_1_1226983Y
Flstm_36_lstm_cell_36_kernel_regularizer_square_readvariableop_resource:	
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_36_lstm_cell_36_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muly
IdentityIdentity/lstm_36/lstm_cell_36/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp
é%
ê
while_body_1223621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_36_1223645_0:	+
while_lstm_cell_36_1223647_0:	/
while_lstm_cell_36_1223649_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_36_1223645:	)
while_lstm_cell_36_1223647:	-
while_lstm_cell_36_1223649:	 ¢*while/lstm_cell_36/StatefulPartitionedCallÃ
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
*while/lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_36_1223645_0while_lstm_cell_36_1223647_0while_lstm_cell_36_1223649_0*
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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_12235432,
*while/lstm_cell_36/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_36/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_36/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_36/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_36/StatefulPartitionedCall*"
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
while_lstm_cell_36_1223645while_lstm_cell_36_1223645_0":
while_lstm_cell_36_1223647while_lstm_cell_36_1223647_0":
while_lstm_cell_36_1223649while_lstm_cell_36_1223649_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_36/StatefulPartitionedCall*while/lstm_cell_36/StatefulPartitionedCall: 
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
while_cond_1224085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224085___redundant_placeholder05
1while_while_cond_1224085___redundant_placeholder15
1while_while_cond_1224085___redundant_placeholder25
1while_while_cond_1224085___redundant_placeholder3
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
)__inference_lstm_36_layer_call_fn_1225547

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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12242192
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
¸v
ì
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1226972

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
seed2ÕþÑ2&
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
seed2Á¯2(
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
seed2é§2(
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
seed2¥º2(
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2,
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
ø+
µ
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224825
input_16"
lstm_36_1224794:	
lstm_36_1224796:	"
lstm_36_1224798:	 "
dense_44_1224801:  
dense_44_1224803: "
dense_45_1224806: 
dense_45_1224808:
identity¢ dense_44/StatefulPartitionedCall¢ dense_45/StatefulPartitionedCall¢/dense_45/bias/Regularizer/Square/ReadVariableOp¢lstm_36/StatefulPartitionedCall¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp§
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinput_16lstm_36_1224794lstm_36_1224796lstm_36_1224798*
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12246572!
lstm_36/StatefulPartitionedCall¹
 dense_44/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0dense_44_1224801dense_44_1224803*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_12242382"
 dense_44/StatefulPartitionedCallº
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_1224806dense_45_1224808*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_12242602"
 dense_45/StatefulPartitionedCall
reshape_22/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
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
G__inference_reshape_22_layer_call_and_return_conditional_losses_12242792
reshape_22/PartitionedCallÏ
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_36_1224794*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/mul¯
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_1224808*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mul
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall0^dense_45/bias/Regularizer/Square/ReadVariableOp ^lstm_36/StatefulPartitionedCall>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2b
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_16
¢
ª
D__inference_lstm_36_layer_call_and_return_conditional_losses_1225801
inputs_0=
*lstm_cell_36_split_readvariableop_resource:	;
,lstm_cell_36_split_1_readvariableop_resource:	7
$lstm_cell_36_readvariableop_resource:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_36/ReadVariableOp¢lstm_cell_36/ReadVariableOp_1¢lstm_cell_36/ReadVariableOp_2¢lstm_cell_36/ReadVariableOp_3¢!lstm_cell_36/split/ReadVariableOp¢#lstm_cell_36/split_1/ReadVariableOp¢whileF
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
lstm_cell_36/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_36/ones_like/Shape
lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_36/ones_like/Const¸
lstm_cell_36/ones_likeFill%lstm_cell_36/ones_like/Shape:output:0%lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/ones_like~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dim²
!lstm_cell_36/split/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_36/split/ReadVariableOpÛ
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0)lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_36/split
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul¡
lstm_cell_36/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1¡
lstm_cell_36/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_2¡
lstm_cell_36/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_3
lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_36/split_1/split_dim´
#lstm_cell_36/split_1/ReadVariableOpReadVariableOp,lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_36/split_1/ReadVariableOpÓ
lstm_cell_36/split_1Split'lstm_cell_36/split_1/split_dim:output:0+lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_36/split_1§
lstm_cell_36/BiasAddBiasAddlstm_cell_36/MatMul:product:0lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd­
lstm_cell_36/BiasAdd_1BiasAddlstm_cell_36/MatMul_1:product:0lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_1­
lstm_cell_36/BiasAdd_2BiasAddlstm_cell_36/MatMul_2:product:0lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_2­
lstm_cell_36/BiasAdd_3BiasAddlstm_cell_36/MatMul_3:product:0lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_3
lstm_cell_36/mulMulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul
lstm_cell_36/mul_1Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_1
lstm_cell_36/mul_2Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_2
lstm_cell_36/mul_3Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_3 
lstm_cell_36/ReadVariableOpReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp
 lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_36/strided_slice/stack
"lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice/stack_1
"lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_36/strided_slice/stack_2Ê
lstm_cell_36/strided_sliceStridedSlice#lstm_cell_36/ReadVariableOp:value:0)lstm_cell_36/strided_slice/stack:output:0+lstm_cell_36/strided_slice/stack_1:output:0+lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice¥
lstm_cell_36/MatMul_4MatMullstm_cell_36/mul:z:0#lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_4
lstm_cell_36/addAddV2lstm_cell_36/BiasAdd:output:0lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add
lstm_cell_36/SigmoidSigmoidlstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid¤
lstm_cell_36/ReadVariableOp_1ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_1
"lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice_1/stack
$lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_36/strided_slice_1/stack_1
$lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_1/stack_2Ö
lstm_cell_36/strided_slice_1StridedSlice%lstm_cell_36/ReadVariableOp_1:value:0+lstm_cell_36/strided_slice_1/stack:output:0-lstm_cell_36/strided_slice_1/stack_1:output:0-lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_1©
lstm_cell_36/MatMul_5MatMullstm_cell_36/mul_1:z:0%lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_5¥
lstm_cell_36/add_1AddV2lstm_cell_36/BiasAdd_1:output:0lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mul_4Mullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_4¤
lstm_cell_36/ReadVariableOp_2ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_2
"lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_36/strided_slice_2/stack
$lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_36/strided_slice_2/stack_1
$lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_2/stack_2Ö
lstm_cell_36/strided_slice_2StridedSlice%lstm_cell_36/ReadVariableOp_2:value:0+lstm_cell_36/strided_slice_2/stack:output:0-lstm_cell_36/strided_slice_2/stack_1:output:0-lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_2©
lstm_cell_36/MatMul_6MatMullstm_cell_36/mul_2:z:0%lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_6¥
lstm_cell_36/add_2AddV2lstm_cell_36/BiasAdd_2:output:0lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_2x
lstm_cell_36/ReluRelulstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu
lstm_cell_36/mul_5Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_5
lstm_cell_36/add_3AddV2lstm_cell_36/mul_4:z:0lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_3¤
lstm_cell_36/ReadVariableOp_3ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_3
"lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_36/strided_slice_3/stack
$lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_36/strided_slice_3/stack_1
$lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_3/stack_2Ö
lstm_cell_36/strided_slice_3StridedSlice%lstm_cell_36/ReadVariableOp_3:value:0+lstm_cell_36/strided_slice_3/stack:output:0-lstm_cell_36/strided_slice_3/stack_1:output:0-lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_3©
lstm_cell_36/MatMul_7MatMullstm_cell_36/mul_3:z:0%lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_7¥
lstm_cell_36/add_4AddV2lstm_cell_36/BiasAdd_3:output:0lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_4
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_6Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_36_split_readvariableop_resource,lstm_cell_36_split_1_readvariableop_resource$lstm_cell_36_readvariableop_resource*
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
while_body_1225668*
condR
while_cond_1225667*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_36/ReadVariableOp^lstm_cell_36/ReadVariableOp_1^lstm_cell_36/ReadVariableOp_2^lstm_cell_36/ReadVariableOp_3"^lstm_cell_36/split/ReadVariableOp$^lstm_cell_36/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_36/ReadVariableOplstm_cell_36/ReadVariableOp2>
lstm_cell_36/ReadVariableOp_1lstm_cell_36/ReadVariableOp_12>
lstm_cell_36/ReadVariableOp_2lstm_cell_36/ReadVariableOp_22>
lstm_cell_36/ReadVariableOp_3lstm_cell_36/ReadVariableOp_32F
!lstm_cell_36/split/ReadVariableOp!lstm_cell_36/split/ReadVariableOp2J
#lstm_cell_36/split_1/ReadVariableOp#lstm_cell_36/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÛÏ
¨
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226658

inputs=
*lstm_cell_36_split_readvariableop_resource:	;
,lstm_cell_36_split_1_readvariableop_resource:	7
$lstm_cell_36_readvariableop_resource:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_36/ReadVariableOp¢lstm_cell_36/ReadVariableOp_1¢lstm_cell_36/ReadVariableOp_2¢lstm_cell_36/ReadVariableOp_3¢!lstm_cell_36/split/ReadVariableOp¢#lstm_cell_36/split_1/ReadVariableOp¢whileD
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
lstm_cell_36/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_36/ones_like/Shape
lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_36/ones_like/Const¸
lstm_cell_36/ones_likeFill%lstm_cell_36/ones_like/Shape:output:0%lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/ones_like}
lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout/Const³
lstm_cell_36/dropout/MulMullstm_cell_36/ones_like:output:0#lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Mul
lstm_cell_36/dropout/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout/Shapeø
1lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2â­23
1lstm_cell_36/dropout/random_uniform/RandomUniform
#lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_36/dropout/GreaterEqual/yò
!lstm_cell_36/dropout/GreaterEqualGreaterEqual:lstm_cell_36/dropout/random_uniform/RandomUniform:output:0,lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_36/dropout/GreaterEqual¦
lstm_cell_36/dropout/CastCast%lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Cast®
lstm_cell_36/dropout/Mul_1Mullstm_cell_36/dropout/Mul:z:0lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Mul_1
lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_1/Const¹
lstm_cell_36/dropout_1/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Mul
lstm_cell_36/dropout_1/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_1/Shapeý
3lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ß,25
3lstm_cell_36/dropout_1/random_uniform/RandomUniform
%lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_1/GreaterEqual/yú
#lstm_cell_36/dropout_1/GreaterEqualGreaterEqual<lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_1/GreaterEqual¬
lstm_cell_36/dropout_1/CastCast'lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Cast¶
lstm_cell_36/dropout_1/Mul_1Mullstm_cell_36/dropout_1/Mul:z:0lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Mul_1
lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_2/Const¹
lstm_cell_36/dropout_2/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Mul
lstm_cell_36/dropout_2/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_2/Shapeþ
3lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2±Î«25
3lstm_cell_36/dropout_2/random_uniform/RandomUniform
%lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_2/GreaterEqual/yú
#lstm_cell_36/dropout_2/GreaterEqualGreaterEqual<lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_2/GreaterEqual¬
lstm_cell_36/dropout_2/CastCast'lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Cast¶
lstm_cell_36/dropout_2/Mul_1Mullstm_cell_36/dropout_2/Mul:z:0lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Mul_1
lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_3/Const¹
lstm_cell_36/dropout_3/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Mul
lstm_cell_36/dropout_3/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_3/Shapeþ
3lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¨³Ù25
3lstm_cell_36/dropout_3/random_uniform/RandomUniform
%lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_3/GreaterEqual/yú
#lstm_cell_36/dropout_3/GreaterEqualGreaterEqual<lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_3/GreaterEqual¬
lstm_cell_36/dropout_3/CastCast'lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Cast¶
lstm_cell_36/dropout_3/Mul_1Mullstm_cell_36/dropout_3/Mul:z:0lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Mul_1~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dim²
!lstm_cell_36/split/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_36/split/ReadVariableOpÛ
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0)lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_36/split
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul¡
lstm_cell_36/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1¡
lstm_cell_36/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_2¡
lstm_cell_36/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_3
lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_36/split_1/split_dim´
#lstm_cell_36/split_1/ReadVariableOpReadVariableOp,lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_36/split_1/ReadVariableOpÓ
lstm_cell_36/split_1Split'lstm_cell_36/split_1/split_dim:output:0+lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_36/split_1§
lstm_cell_36/BiasAddBiasAddlstm_cell_36/MatMul:product:0lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd­
lstm_cell_36/BiasAdd_1BiasAddlstm_cell_36/MatMul_1:product:0lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_1­
lstm_cell_36/BiasAdd_2BiasAddlstm_cell_36/MatMul_2:product:0lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_2­
lstm_cell_36/BiasAdd_3BiasAddlstm_cell_36/MatMul_3:product:0lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_3
lstm_cell_36/mulMulzeros:output:0lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul
lstm_cell_36/mul_1Mulzeros:output:0 lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_1
lstm_cell_36/mul_2Mulzeros:output:0 lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_2
lstm_cell_36/mul_3Mulzeros:output:0 lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_3 
lstm_cell_36/ReadVariableOpReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp
 lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_36/strided_slice/stack
"lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice/stack_1
"lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_36/strided_slice/stack_2Ê
lstm_cell_36/strided_sliceStridedSlice#lstm_cell_36/ReadVariableOp:value:0)lstm_cell_36/strided_slice/stack:output:0+lstm_cell_36/strided_slice/stack_1:output:0+lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice¥
lstm_cell_36/MatMul_4MatMullstm_cell_36/mul:z:0#lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_4
lstm_cell_36/addAddV2lstm_cell_36/BiasAdd:output:0lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add
lstm_cell_36/SigmoidSigmoidlstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid¤
lstm_cell_36/ReadVariableOp_1ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_1
"lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice_1/stack
$lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_36/strided_slice_1/stack_1
$lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_1/stack_2Ö
lstm_cell_36/strided_slice_1StridedSlice%lstm_cell_36/ReadVariableOp_1:value:0+lstm_cell_36/strided_slice_1/stack:output:0-lstm_cell_36/strided_slice_1/stack_1:output:0-lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_1©
lstm_cell_36/MatMul_5MatMullstm_cell_36/mul_1:z:0%lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_5¥
lstm_cell_36/add_1AddV2lstm_cell_36/BiasAdd_1:output:0lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mul_4Mullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_4¤
lstm_cell_36/ReadVariableOp_2ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_2
"lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_36/strided_slice_2/stack
$lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_36/strided_slice_2/stack_1
$lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_2/stack_2Ö
lstm_cell_36/strided_slice_2StridedSlice%lstm_cell_36/ReadVariableOp_2:value:0+lstm_cell_36/strided_slice_2/stack:output:0-lstm_cell_36/strided_slice_2/stack_1:output:0-lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_2©
lstm_cell_36/MatMul_6MatMullstm_cell_36/mul_2:z:0%lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_6¥
lstm_cell_36/add_2AddV2lstm_cell_36/BiasAdd_2:output:0lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_2x
lstm_cell_36/ReluRelulstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu
lstm_cell_36/mul_5Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_5
lstm_cell_36/add_3AddV2lstm_cell_36/mul_4:z:0lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_3¤
lstm_cell_36/ReadVariableOp_3ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_3
"lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_36/strided_slice_3/stack
$lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_36/strided_slice_3/stack_1
$lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_3/stack_2Ö
lstm_cell_36/strided_slice_3StridedSlice%lstm_cell_36/ReadVariableOp_3:value:0+lstm_cell_36/strided_slice_3/stack:output:0-lstm_cell_36/strided_slice_3/stack_1:output:0-lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_3©
lstm_cell_36/MatMul_7MatMullstm_cell_36/mul_3:z:0%lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_7¥
lstm_cell_36/add_4AddV2lstm_cell_36/BiasAdd_3:output:0lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_4
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_6Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_36_split_readvariableop_resource,lstm_cell_36_split_1_readvariableop_resource$lstm_cell_36_readvariableop_resource*
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
while_body_1226493*
condR
while_cond_1226492*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_36/ReadVariableOp^lstm_cell_36/ReadVariableOp_1^lstm_cell_36/ReadVariableOp_2^lstm_cell_36/ReadVariableOp_3"^lstm_cell_36/split/ReadVariableOp$^lstm_cell_36/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_36/ReadVariableOplstm_cell_36/ReadVariableOp2>
lstm_cell_36/ReadVariableOp_1lstm_cell_36/ReadVariableOp_12>
lstm_cell_36/ReadVariableOp_2lstm_cell_36/ReadVariableOp_22>
lstm_cell_36/ReadVariableOp_3lstm_cell_36/ReadVariableOp_32F
!lstm_cell_36/split/ReadVariableOp!lstm_cell_36/split/ReadVariableOp2J
#lstm_cell_36/split_1/ReadVariableOp#lstm_cell_36/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïÍ
½
lstm_36_while_body_1225315,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3+
'lstm_36_while_lstm_36_strided_slice_1_0g
clstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_36_while_lstm_cell_36_split_readvariableop_resource_0:	K
<lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0:	G
4lstm_36_while_lstm_cell_36_readvariableop_resource_0:	 
lstm_36_while_identity
lstm_36_while_identity_1
lstm_36_while_identity_2
lstm_36_while_identity_3
lstm_36_while_identity_4
lstm_36_while_identity_5)
%lstm_36_while_lstm_36_strided_slice_1e
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorK
8lstm_36_while_lstm_cell_36_split_readvariableop_resource:	I
:lstm_36_while_lstm_cell_36_split_1_readvariableop_resource:	E
2lstm_36_while_lstm_cell_36_readvariableop_resource:	 ¢)lstm_36/while/lstm_cell_36/ReadVariableOp¢+lstm_36/while/lstm_cell_36/ReadVariableOp_1¢+lstm_36/while/lstm_cell_36/ReadVariableOp_2¢+lstm_36/while/lstm_cell_36/ReadVariableOp_3¢/lstm_36/while/lstm_cell_36/split/ReadVariableOp¢1lstm_36/while/lstm_cell_36/split_1/ReadVariableOpÓ
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0lstm_36_while_placeholderHlstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_36/while/TensorArrayV2Read/TensorListGetItem£
*lstm_36/while/lstm_cell_36/ones_like/ShapeShapelstm_36_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_36/while/lstm_cell_36/ones_like/Shape
*lstm_36/while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_36/while/lstm_cell_36/ones_like/Constð
$lstm_36/while/lstm_cell_36/ones_likeFill3lstm_36/while/lstm_cell_36/ones_like/Shape:output:03lstm_36/while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/ones_like
(lstm_36/while/lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2*
(lstm_36/while/lstm_cell_36/dropout/Constë
&lstm_36/while/lstm_cell_36/dropout/MulMul-lstm_36/while/lstm_cell_36/ones_like:output:01lstm_36/while/lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_36/while/lstm_cell_36/dropout/Mul±
(lstm_36/while/lstm_cell_36/dropout/ShapeShape-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_36/while/lstm_cell_36/dropout/Shape¡
?lstm_36/while/lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform1lstm_36/while/lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2±82A
?lstm_36/while/lstm_cell_36/dropout/random_uniform/RandomUniform«
1lstm_36/while/lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>23
1lstm_36/while/lstm_cell_36/dropout/GreaterEqual/yª
/lstm_36/while/lstm_cell_36/dropout/GreaterEqualGreaterEqualHlstm_36/while/lstm_cell_36/dropout/random_uniform/RandomUniform:output:0:lstm_36/while/lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_36/while/lstm_cell_36/dropout/GreaterEqualÐ
'lstm_36/while/lstm_cell_36/dropout/CastCast3lstm_36/while/lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_36/while/lstm_cell_36/dropout/Castæ
(lstm_36/while/lstm_cell_36/dropout/Mul_1Mul*lstm_36/while/lstm_cell_36/dropout/Mul:z:0+lstm_36/while/lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_36/while/lstm_cell_36/dropout/Mul_1
*lstm_36/while/lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_36/while/lstm_cell_36/dropout_1/Constñ
(lstm_36/while/lstm_cell_36/dropout_1/MulMul-lstm_36/while/lstm_cell_36/ones_like:output:03lstm_36/while/lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_36/while/lstm_cell_36/dropout_1/Mulµ
*lstm_36/while/lstm_cell_36/dropout_1/ShapeShape-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_36/while/lstm_cell_36/dropout_1/Shape¨
Alstm_36/while/lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_36/while/lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ñ2C
Alstm_36/while/lstm_cell_36/dropout_1/random_uniform/RandomUniform¯
3lstm_36/while/lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_36/while/lstm_cell_36/dropout_1/GreaterEqual/y²
1lstm_36/while/lstm_cell_36/dropout_1/GreaterEqualGreaterEqualJlstm_36/while/lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:0<lstm_36/while/lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_36/while/lstm_cell_36/dropout_1/GreaterEqualÖ
)lstm_36/while/lstm_cell_36/dropout_1/CastCast5lstm_36/while/lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_36/while/lstm_cell_36/dropout_1/Castî
*lstm_36/while/lstm_cell_36/dropout_1/Mul_1Mul,lstm_36/while/lstm_cell_36/dropout_1/Mul:z:0-lstm_36/while/lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_36/while/lstm_cell_36/dropout_1/Mul_1
*lstm_36/while/lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_36/while/lstm_cell_36/dropout_2/Constñ
(lstm_36/while/lstm_cell_36/dropout_2/MulMul-lstm_36/while/lstm_cell_36/ones_like:output:03lstm_36/while/lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_36/while/lstm_cell_36/dropout_2/Mulµ
*lstm_36/while/lstm_cell_36/dropout_2/ShapeShape-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_36/while/lstm_cell_36/dropout_2/Shape¨
Alstm_36/while/lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_36/while/lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ò¡2C
Alstm_36/while/lstm_cell_36/dropout_2/random_uniform/RandomUniform¯
3lstm_36/while/lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_36/while/lstm_cell_36/dropout_2/GreaterEqual/y²
1lstm_36/while/lstm_cell_36/dropout_2/GreaterEqualGreaterEqualJlstm_36/while/lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:0<lstm_36/while/lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_36/while/lstm_cell_36/dropout_2/GreaterEqualÖ
)lstm_36/while/lstm_cell_36/dropout_2/CastCast5lstm_36/while/lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_36/while/lstm_cell_36/dropout_2/Castî
*lstm_36/while/lstm_cell_36/dropout_2/Mul_1Mul,lstm_36/while/lstm_cell_36/dropout_2/Mul:z:0-lstm_36/while/lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_36/while/lstm_cell_36/dropout_2/Mul_1
*lstm_36/while/lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2,
*lstm_36/while/lstm_cell_36/dropout_3/Constñ
(lstm_36/while/lstm_cell_36/dropout_3/MulMul-lstm_36/while/lstm_cell_36/ones_like:output:03lstm_36/while/lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_36/while/lstm_cell_36/dropout_3/Mulµ
*lstm_36/while/lstm_cell_36/dropout_3/ShapeShape-lstm_36/while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_36/while/lstm_cell_36/dropout_3/Shape§
Alstm_36/while/lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_36/while/lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÊÊ:2C
Alstm_36/while/lstm_cell_36/dropout_3/random_uniform/RandomUniform¯
3lstm_36/while/lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>25
3lstm_36/while/lstm_cell_36/dropout_3/GreaterEqual/y²
1lstm_36/while/lstm_cell_36/dropout_3/GreaterEqualGreaterEqualJlstm_36/while/lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:0<lstm_36/while/lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1lstm_36/while/lstm_cell_36/dropout_3/GreaterEqualÖ
)lstm_36/while/lstm_cell_36/dropout_3/CastCast5lstm_36/while/lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_36/while/lstm_cell_36/dropout_3/Castî
*lstm_36/while/lstm_cell_36/dropout_3/Mul_1Mul,lstm_36/while/lstm_cell_36/dropout_3/Mul:z:0-lstm_36/while/lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*lstm_36/while/lstm_cell_36/dropout_3/Mul_1
*lstm_36/while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_36/while/lstm_cell_36/split/split_dimÞ
/lstm_36/while/lstm_cell_36/split/ReadVariableOpReadVariableOp:lstm_36_while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_36/while/lstm_cell_36/split/ReadVariableOp
 lstm_36/while/lstm_cell_36/splitSplit3lstm_36/while/lstm_cell_36/split/split_dim:output:07lstm_36/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_36/while/lstm_cell_36/splitç
!lstm_36/while/lstm_cell_36/MatMulMatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_36/while/lstm_cell_36/MatMulë
#lstm_36/while/lstm_cell_36/MatMul_1MatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_1ë
#lstm_36/while/lstm_cell_36/MatMul_2MatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_2ë
#lstm_36/while/lstm_cell_36/MatMul_3MatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_36/while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_3
,lstm_36/while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_36/while/lstm_cell_36/split_1/split_dimà
1lstm_36/while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp<lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_36/while/lstm_cell_36/split_1/ReadVariableOp
"lstm_36/while/lstm_cell_36/split_1Split5lstm_36/while/lstm_cell_36/split_1/split_dim:output:09lstm_36/while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_36/while/lstm_cell_36/split_1ß
"lstm_36/while/lstm_cell_36/BiasAddBiasAdd+lstm_36/while/lstm_cell_36/MatMul:product:0+lstm_36/while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/while/lstm_cell_36/BiasAddå
$lstm_36/while/lstm_cell_36/BiasAdd_1BiasAdd-lstm_36/while/lstm_cell_36/MatMul_1:product:0+lstm_36/while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/BiasAdd_1å
$lstm_36/while/lstm_cell_36/BiasAdd_2BiasAdd-lstm_36/while/lstm_cell_36/MatMul_2:product:0+lstm_36/while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/BiasAdd_2å
$lstm_36/while/lstm_cell_36/BiasAdd_3BiasAdd-lstm_36/while/lstm_cell_36/MatMul_3:product:0+lstm_36/while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/BiasAdd_3Ä
lstm_36/while/lstm_cell_36/mulMullstm_36_while_placeholder_2,lstm_36/while/lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/while/lstm_cell_36/mulÊ
 lstm_36/while/lstm_cell_36/mul_1Mullstm_36_while_placeholder_2.lstm_36/while/lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_1Ê
 lstm_36/while/lstm_cell_36/mul_2Mullstm_36_while_placeholder_2.lstm_36/while/lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_2Ê
 lstm_36/while/lstm_cell_36/mul_3Mullstm_36_while_placeholder_2.lstm_36/while/lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_3Ì
)lstm_36/while/lstm_cell_36/ReadVariableOpReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)lstm_36/while/lstm_cell_36/ReadVariableOp±
.lstm_36/while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_36/while/lstm_cell_36/strided_slice/stackµ
0lstm_36/while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_36/while/lstm_cell_36/strided_slice/stack_1µ
0lstm_36/while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_36/while/lstm_cell_36/strided_slice/stack_2
(lstm_36/while/lstm_cell_36/strided_sliceStridedSlice1lstm_36/while/lstm_cell_36/ReadVariableOp:value:07lstm_36/while/lstm_cell_36/strided_slice/stack:output:09lstm_36/while/lstm_cell_36/strided_slice/stack_1:output:09lstm_36/while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_36/while/lstm_cell_36/strided_sliceÝ
#lstm_36/while/lstm_cell_36/MatMul_4MatMul"lstm_36/while/lstm_cell_36/mul:z:01lstm_36/while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_4×
lstm_36/while/lstm_cell_36/addAddV2+lstm_36/while/lstm_cell_36/BiasAdd:output:0-lstm_36/while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/while/lstm_cell_36/add©
"lstm_36/while/lstm_cell_36/SigmoidSigmoid"lstm_36/while/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/while/lstm_cell_36/SigmoidÐ
+lstm_36/while/lstm_cell_36/ReadVariableOp_1ReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_36/while/lstm_cell_36/ReadVariableOp_1µ
0lstm_36/while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_36/while/lstm_cell_36/strided_slice_1/stack¹
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_1¹
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_36/while/lstm_cell_36/strided_slice_1/stack_2ª
*lstm_36/while/lstm_cell_36/strided_slice_1StridedSlice3lstm_36/while/lstm_cell_36/ReadVariableOp_1:value:09lstm_36/while/lstm_cell_36/strided_slice_1/stack:output:0;lstm_36/while/lstm_cell_36/strided_slice_1/stack_1:output:0;lstm_36/while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_36/while/lstm_cell_36/strided_slice_1á
#lstm_36/while/lstm_cell_36/MatMul_5MatMul$lstm_36/while/lstm_cell_36/mul_1:z:03lstm_36/while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_5Ý
 lstm_36/while/lstm_cell_36/add_1AddV2-lstm_36/while/lstm_cell_36/BiasAdd_1:output:0-lstm_36/while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_1¯
$lstm_36/while/lstm_cell_36/Sigmoid_1Sigmoid$lstm_36/while/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/Sigmoid_1Ä
 lstm_36/while/lstm_cell_36/mul_4Mul(lstm_36/while/lstm_cell_36/Sigmoid_1:y:0lstm_36_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_4Ð
+lstm_36/while/lstm_cell_36/ReadVariableOp_2ReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_36/while/lstm_cell_36/ReadVariableOp_2µ
0lstm_36/while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_36/while/lstm_cell_36/strided_slice_2/stack¹
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_1¹
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_36/while/lstm_cell_36/strided_slice_2/stack_2ª
*lstm_36/while/lstm_cell_36/strided_slice_2StridedSlice3lstm_36/while/lstm_cell_36/ReadVariableOp_2:value:09lstm_36/while/lstm_cell_36/strided_slice_2/stack:output:0;lstm_36/while/lstm_cell_36/strided_slice_2/stack_1:output:0;lstm_36/while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_36/while/lstm_cell_36/strided_slice_2á
#lstm_36/while/lstm_cell_36/MatMul_6MatMul$lstm_36/while/lstm_cell_36/mul_2:z:03lstm_36/while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_6Ý
 lstm_36/while/lstm_cell_36/add_2AddV2-lstm_36/while/lstm_cell_36/BiasAdd_2:output:0-lstm_36/while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_2¢
lstm_36/while/lstm_cell_36/ReluRelu$lstm_36/while/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_36/while/lstm_cell_36/ReluÔ
 lstm_36/while/lstm_cell_36/mul_5Mul&lstm_36/while/lstm_cell_36/Sigmoid:y:0-lstm_36/while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_5Ë
 lstm_36/while/lstm_cell_36/add_3AddV2$lstm_36/while/lstm_cell_36/mul_4:z:0$lstm_36/while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_3Ð
+lstm_36/while/lstm_cell_36/ReadVariableOp_3ReadVariableOp4lstm_36_while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02-
+lstm_36/while/lstm_cell_36/ReadVariableOp_3µ
0lstm_36/while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_36/while/lstm_cell_36/strided_slice_3/stack¹
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_1¹
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_36/while/lstm_cell_36/strided_slice_3/stack_2ª
*lstm_36/while/lstm_cell_36/strided_slice_3StridedSlice3lstm_36/while/lstm_cell_36/ReadVariableOp_3:value:09lstm_36/while/lstm_cell_36/strided_slice_3/stack:output:0;lstm_36/while/lstm_cell_36/strided_slice_3/stack_1:output:0;lstm_36/while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_36/while/lstm_cell_36/strided_slice_3á
#lstm_36/while/lstm_cell_36/MatMul_7MatMul$lstm_36/while/lstm_cell_36/mul_3:z:03lstm_36/while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_7Ý
 lstm_36/while/lstm_cell_36/add_4AddV2-lstm_36/while/lstm_cell_36/BiasAdd_3:output:0-lstm_36/while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/add_4¯
$lstm_36/while/lstm_cell_36/Sigmoid_2Sigmoid$lstm_36/while/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/while/lstm_cell_36/Sigmoid_2¦
!lstm_36/while/lstm_cell_36/Relu_1Relu$lstm_36/while/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_36/while/lstm_cell_36/Relu_1Ø
 lstm_36/while/lstm_cell_36/mul_6Mul(lstm_36/while/lstm_cell_36/Sigmoid_2:y:0/lstm_36/while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/while/lstm_cell_36/mul_6
2lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_36_while_placeholder_1lstm_36_while_placeholder$lstm_36/while/lstm_cell_36/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_36/while/TensorArrayV2Write/TensorListSetIteml
lstm_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_36/while/add/y
lstm_36/while/addAddV2lstm_36_while_placeholderlstm_36/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_36/while/addp
lstm_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_36/while/add_1/y
lstm_36/while/add_1AddV2(lstm_36_while_lstm_36_while_loop_counterlstm_36/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_36/while/add_1
lstm_36/while/IdentityIdentitylstm_36/while/add_1:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity¦
lstm_36/while/Identity_1Identity.lstm_36_while_lstm_36_while_maximum_iterations^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity_1
lstm_36/while/Identity_2Identitylstm_36/while/add:z:0^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity_2º
lstm_36/while/Identity_3IdentityBlstm_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_36/while/NoOp*
T0*
_output_shapes
: 2
lstm_36/while/Identity_3­
lstm_36/while/Identity_4Identity$lstm_36/while/lstm_cell_36/mul_6:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/while/Identity_4­
lstm_36/while/Identity_5Identity$lstm_36/while/lstm_cell_36/add_3:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/while/Identity_5
lstm_36/while/NoOpNoOp*^lstm_36/while/lstm_cell_36/ReadVariableOp,^lstm_36/while/lstm_cell_36/ReadVariableOp_1,^lstm_36/while/lstm_cell_36/ReadVariableOp_2,^lstm_36/while/lstm_cell_36/ReadVariableOp_30^lstm_36/while/lstm_cell_36/split/ReadVariableOp2^lstm_36/while/lstm_cell_36/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_36/while/NoOp"9
lstm_36_while_identitylstm_36/while/Identity:output:0"=
lstm_36_while_identity_1!lstm_36/while/Identity_1:output:0"=
lstm_36_while_identity_2!lstm_36/while/Identity_2:output:0"=
lstm_36_while_identity_3!lstm_36/while/Identity_3:output:0"=
lstm_36_while_identity_4!lstm_36/while/Identity_4:output:0"=
lstm_36_while_identity_5!lstm_36/while/Identity_5:output:0"P
%lstm_36_while_lstm_36_strided_slice_1'lstm_36_while_lstm_36_strided_slice_1_0"j
2lstm_36_while_lstm_cell_36_readvariableop_resource4lstm_36_while_lstm_cell_36_readvariableop_resource_0"z
:lstm_36_while_lstm_cell_36_split_1_readvariableop_resource<lstm_36_while_lstm_cell_36_split_1_readvariableop_resource_0"v
8lstm_36_while_lstm_cell_36_split_readvariableop_resource:lstm_36_while_lstm_cell_36_split_readvariableop_resource_0"È
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)lstm_36/while/lstm_cell_36/ReadVariableOp)lstm_36/while/lstm_cell_36/ReadVariableOp2Z
+lstm_36/while/lstm_cell_36/ReadVariableOp_1+lstm_36/while/lstm_cell_36/ReadVariableOp_12Z
+lstm_36/while/lstm_cell_36/ReadVariableOp_2+lstm_36/while/lstm_cell_36/ReadVariableOp_22Z
+lstm_36/while/lstm_cell_36/ReadVariableOp_3+lstm_36/while/lstm_cell_36/ReadVariableOp_32b
/lstm_36/while/lstm_cell_36/split/ReadVariableOp/lstm_36/while/lstm_cell_36/split/ReadVariableOp2f
1lstm_36/while/lstm_cell_36/split_1/ReadVariableOp1lstm_36/while/lstm_cell_36/split_1/ReadVariableOp: 
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
¨
¥	
while_body_1225668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_36_split_readvariableop_resource_0:	C
4while_lstm_cell_36_split_1_readvariableop_resource_0:	?
,while_lstm_cell_36_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_36_split_readvariableop_resource:	A
2while_lstm_cell_36_split_1_readvariableop_resource:	=
*while_lstm_cell_36_readvariableop_resource:	 ¢!while/lstm_cell_36/ReadVariableOp¢#while/lstm_cell_36/ReadVariableOp_1¢#while/lstm_cell_36/ReadVariableOp_2¢#while/lstm_cell_36/ReadVariableOp_3¢'while/lstm_cell_36/split/ReadVariableOp¢)while/lstm_cell_36/split_1/ReadVariableOpÃ
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
"while/lstm_cell_36/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_36/ones_like/Shape
"while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_36/ones_like/ConstÐ
while/lstm_cell_36/ones_likeFill+while/lstm_cell_36/ones_like/Shape:output:0+while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/ones_like
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dimÆ
'while/lstm_cell_36/split/ReadVariableOpReadVariableOp2while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_36/split/ReadVariableOpó
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_36/splitÇ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulË
while/lstm_cell_36/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1Ë
while/lstm_cell_36/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_2Ë
while/lstm_cell_36/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_3
$while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_36/split_1/split_dimÈ
)while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_36/split_1/ReadVariableOpë
while/lstm_cell_36/split_1Split-while/lstm_cell_36/split_1/split_dim:output:01while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_36/split_1¿
while/lstm_cell_36/BiasAddBiasAdd#while/lstm_cell_36/MatMul:product:0#while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAddÅ
while/lstm_cell_36/BiasAdd_1BiasAdd%while/lstm_cell_36/MatMul_1:product:0#while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_1Å
while/lstm_cell_36/BiasAdd_2BiasAdd%while/lstm_cell_36/MatMul_2:product:0#while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_2Å
while/lstm_cell_36/BiasAdd_3BiasAdd%while/lstm_cell_36/MatMul_3:product:0#while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_3¥
while/lstm_cell_36/mulMulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul©
while/lstm_cell_36/mul_1Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/mul_2Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_2©
while/lstm_cell_36/mul_3Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_3´
!while/lstm_cell_36/ReadVariableOpReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_36/ReadVariableOp¡
&while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_36/strided_slice/stack¥
(while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice/stack_1¥
(while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_36/strided_slice/stack_2î
 while/lstm_cell_36/strided_sliceStridedSlice)while/lstm_cell_36/ReadVariableOp:value:0/while/lstm_cell_36/strided_slice/stack:output:01while/lstm_cell_36/strided_slice/stack_1:output:01while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_36/strided_slice½
while/lstm_cell_36/MatMul_4MatMulwhile/lstm_cell_36/mul:z:0)while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_4·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/BiasAdd:output:0%while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add
while/lstm_cell_36/SigmoidSigmoidwhile/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid¸
#while/lstm_cell_36/ReadVariableOp_1ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_1¥
(while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice_1/stack©
*while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_36/strided_slice_1/stack_1©
*while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_1/stack_2ú
"while/lstm_cell_36/strided_slice_1StridedSlice+while/lstm_cell_36/ReadVariableOp_1:value:01while/lstm_cell_36/strided_slice_1/stack:output:03while/lstm_cell_36/strided_slice_1/stack_1:output:03while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_1Á
while/lstm_cell_36/MatMul_5MatMulwhile/lstm_cell_36/mul_1:z:0+while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_5½
while/lstm_cell_36/add_1AddV2%while/lstm_cell_36/BiasAdd_1:output:0%while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_1Sigmoidwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_1¤
while/lstm_cell_36/mul_4Mul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_4¸
#while/lstm_cell_36/ReadVariableOp_2ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_2¥
(while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_36/strided_slice_2/stack©
*while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_36/strided_slice_2/stack_1©
*while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_2/stack_2ú
"while/lstm_cell_36/strided_slice_2StridedSlice+while/lstm_cell_36/ReadVariableOp_2:value:01while/lstm_cell_36/strided_slice_2/stack:output:03while/lstm_cell_36/strided_slice_2/stack_1:output:03while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_2Á
while/lstm_cell_36/MatMul_6MatMulwhile/lstm_cell_36/mul_2:z:0+while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_6½
while/lstm_cell_36/add_2AddV2%while/lstm_cell_36/BiasAdd_2:output:0%while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_2
while/lstm_cell_36/ReluReluwhile/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_5Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_5«
while/lstm_cell_36/add_3AddV2while/lstm_cell_36/mul_4:z:0while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_3¸
#while/lstm_cell_36/ReadVariableOp_3ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_3¥
(while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_36/strided_slice_3/stack©
*while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_36/strided_slice_3/stack_1©
*while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_3/stack_2ú
"while/lstm_cell_36/strided_slice_3StridedSlice+while/lstm_cell_36/ReadVariableOp_3:value:01while/lstm_cell_36/strided_slice_3/stack:output:03while/lstm_cell_36/strided_slice_3/stack_1:output:03while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_3Á
while/lstm_cell_36/MatMul_7MatMulwhile/lstm_cell_36/mul_3:z:0+while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_7½
while/lstm_cell_36/add_4AddV2%while/lstm_cell_36/BiasAdd_3:output:0%while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_4
while/lstm_cell_36/Sigmoid_2Sigmoidwhile/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_6Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_36/ReadVariableOp$^while/lstm_cell_36/ReadVariableOp_1$^while/lstm_cell_36/ReadVariableOp_2$^while/lstm_cell_36/ReadVariableOp_3(^while/lstm_cell_36/split/ReadVariableOp*^while/lstm_cell_36/split_1/ReadVariableOp*"
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
*while_lstm_cell_36_readvariableop_resource,while_lstm_cell_36_readvariableop_resource_0"j
2while_lstm_cell_36_split_1_readvariableop_resource4while_lstm_cell_36_split_1_readvariableop_resource_0"f
0while_lstm_cell_36_split_readvariableop_resource2while_lstm_cell_36_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_36/ReadVariableOp!while/lstm_cell_36/ReadVariableOp2J
#while/lstm_cell_36/ReadVariableOp_1#while/lstm_cell_36/ReadVariableOp_12J
#while/lstm_cell_36/ReadVariableOp_2#while/lstm_cell_36/ReadVariableOp_22J
#while/lstm_cell_36/ReadVariableOp_3#while/lstm_cell_36/ReadVariableOp_32R
'while/lstm_cell_36/split/ReadVariableOp'while/lstm_cell_36/split/ReadVariableOp2V
)while/lstm_cell_36/split_1/ReadVariableOp)while/lstm_cell_36/split_1/ReadVariableOp: 
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
while_cond_1224491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1224491___redundant_placeholder05
1while_while_cond_1224491___redundant_placeholder15
1while_while_cond_1224491___redundant_placeholder25
1while_while_cond_1224491___redundant_placeholder3
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
while_cond_1226217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1226217___redundant_placeholder05
1while_while_cond_1226217___redundant_placeholder15
1while_while_cond_1226217___redundant_placeholder25
1while_while_cond_1226217___redundant_placeholder3
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226351

inputs=
*lstm_cell_36_split_readvariableop_resource:	;
,lstm_cell_36_split_1_readvariableop_resource:	7
$lstm_cell_36_readvariableop_resource:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_36/ReadVariableOp¢lstm_cell_36/ReadVariableOp_1¢lstm_cell_36/ReadVariableOp_2¢lstm_cell_36/ReadVariableOp_3¢!lstm_cell_36/split/ReadVariableOp¢#lstm_cell_36/split_1/ReadVariableOp¢whileD
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
lstm_cell_36/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_36/ones_like/Shape
lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_36/ones_like/Const¸
lstm_cell_36/ones_likeFill%lstm_cell_36/ones_like/Shape:output:0%lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/ones_like~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dim²
!lstm_cell_36/split/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_36/split/ReadVariableOpÛ
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0)lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_36/split
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul¡
lstm_cell_36/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1¡
lstm_cell_36/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_2¡
lstm_cell_36/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_3
lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_36/split_1/split_dim´
#lstm_cell_36/split_1/ReadVariableOpReadVariableOp,lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_36/split_1/ReadVariableOpÓ
lstm_cell_36/split_1Split'lstm_cell_36/split_1/split_dim:output:0+lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_36/split_1§
lstm_cell_36/BiasAddBiasAddlstm_cell_36/MatMul:product:0lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd­
lstm_cell_36/BiasAdd_1BiasAddlstm_cell_36/MatMul_1:product:0lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_1­
lstm_cell_36/BiasAdd_2BiasAddlstm_cell_36/MatMul_2:product:0lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_2­
lstm_cell_36/BiasAdd_3BiasAddlstm_cell_36/MatMul_3:product:0lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_3
lstm_cell_36/mulMulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul
lstm_cell_36/mul_1Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_1
lstm_cell_36/mul_2Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_2
lstm_cell_36/mul_3Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_3 
lstm_cell_36/ReadVariableOpReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp
 lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_36/strided_slice/stack
"lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice/stack_1
"lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_36/strided_slice/stack_2Ê
lstm_cell_36/strided_sliceStridedSlice#lstm_cell_36/ReadVariableOp:value:0)lstm_cell_36/strided_slice/stack:output:0+lstm_cell_36/strided_slice/stack_1:output:0+lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice¥
lstm_cell_36/MatMul_4MatMullstm_cell_36/mul:z:0#lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_4
lstm_cell_36/addAddV2lstm_cell_36/BiasAdd:output:0lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add
lstm_cell_36/SigmoidSigmoidlstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid¤
lstm_cell_36/ReadVariableOp_1ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_1
"lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice_1/stack
$lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_36/strided_slice_1/stack_1
$lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_1/stack_2Ö
lstm_cell_36/strided_slice_1StridedSlice%lstm_cell_36/ReadVariableOp_1:value:0+lstm_cell_36/strided_slice_1/stack:output:0-lstm_cell_36/strided_slice_1/stack_1:output:0-lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_1©
lstm_cell_36/MatMul_5MatMullstm_cell_36/mul_1:z:0%lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_5¥
lstm_cell_36/add_1AddV2lstm_cell_36/BiasAdd_1:output:0lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mul_4Mullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_4¤
lstm_cell_36/ReadVariableOp_2ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_2
"lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_36/strided_slice_2/stack
$lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_36/strided_slice_2/stack_1
$lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_2/stack_2Ö
lstm_cell_36/strided_slice_2StridedSlice%lstm_cell_36/ReadVariableOp_2:value:0+lstm_cell_36/strided_slice_2/stack:output:0-lstm_cell_36/strided_slice_2/stack_1:output:0-lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_2©
lstm_cell_36/MatMul_6MatMullstm_cell_36/mul_2:z:0%lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_6¥
lstm_cell_36/add_2AddV2lstm_cell_36/BiasAdd_2:output:0lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_2x
lstm_cell_36/ReluRelulstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu
lstm_cell_36/mul_5Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_5
lstm_cell_36/add_3AddV2lstm_cell_36/mul_4:z:0lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_3¤
lstm_cell_36/ReadVariableOp_3ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_3
"lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_36/strided_slice_3/stack
$lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_36/strided_slice_3/stack_1
$lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_3/stack_2Ö
lstm_cell_36/strided_slice_3StridedSlice%lstm_cell_36/ReadVariableOp_3:value:0+lstm_cell_36/strided_slice_3/stack:output:0-lstm_cell_36/strided_slice_3/stack_1:output:0-lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_3©
lstm_cell_36/MatMul_7MatMullstm_cell_36/mul_3:z:0%lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_7¥
lstm_cell_36/add_4AddV2lstm_cell_36/BiasAdd_3:output:0lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_4
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_6Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_36_split_readvariableop_resource,lstm_cell_36_split_1_readvariableop_resource$lstm_cell_36_readvariableop_resource*
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
while_body_1226218*
condR
while_cond_1226217*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_36/ReadVariableOp^lstm_cell_36/ReadVariableOp_1^lstm_cell_36/ReadVariableOp_2^lstm_cell_36/ReadVariableOp_3"^lstm_cell_36/split/ReadVariableOp$^lstm_cell_36/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_36/ReadVariableOplstm_cell_36/ReadVariableOp2>
lstm_cell_36/ReadVariableOp_1lstm_cell_36/ReadVariableOp_12>
lstm_cell_36/ReadVariableOp_2lstm_cell_36/ReadVariableOp_22>
lstm_cell_36/ReadVariableOp_3lstm_cell_36/ReadVariableOp_32F
!lstm_cell_36/split/ReadVariableOp!lstm_cell_36/split/ReadVariableOp2J
#lstm_cell_36/split_1/ReadVariableOp#lstm_cell_36/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú²
¥	
while_body_1225943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_36_split_readvariableop_resource_0:	C
4while_lstm_cell_36_split_1_readvariableop_resource_0:	?
,while_lstm_cell_36_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_36_split_readvariableop_resource:	A
2while_lstm_cell_36_split_1_readvariableop_resource:	=
*while_lstm_cell_36_readvariableop_resource:	 ¢!while/lstm_cell_36/ReadVariableOp¢#while/lstm_cell_36/ReadVariableOp_1¢#while/lstm_cell_36/ReadVariableOp_2¢#while/lstm_cell_36/ReadVariableOp_3¢'while/lstm_cell_36/split/ReadVariableOp¢)while/lstm_cell_36/split_1/ReadVariableOpÃ
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
"while/lstm_cell_36/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_36/ones_like/Shape
"while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_36/ones_like/ConstÐ
while/lstm_cell_36/ones_likeFill+while/lstm_cell_36/ones_like/Shape:output:0+while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/ones_like
 while/lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_36/dropout/ConstË
while/lstm_cell_36/dropout/MulMul%while/lstm_cell_36/ones_like:output:0)while/lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_36/dropout/Mul
 while/lstm_cell_36/dropout/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_36/dropout/Shape
7while/lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2·P29
7while/lstm_cell_36/dropout/random_uniform/RandomUniform
)while/lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_36/dropout/GreaterEqual/y
'while/lstm_cell_36/dropout/GreaterEqualGreaterEqual@while/lstm_cell_36/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_36/dropout/GreaterEqual¸
while/lstm_cell_36/dropout/CastCast+while/lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_36/dropout/CastÆ
 while/lstm_cell_36/dropout/Mul_1Mul"while/lstm_cell_36/dropout/Mul:z:0#while/lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout/Mul_1
"while/lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_1/ConstÑ
 while/lstm_cell_36/dropout_1/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_1/Mul
"while/lstm_cell_36/dropout_1/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_1/Shape
9while/lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2àè£2;
9while/lstm_cell_36/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_1/GreaterEqual/y
)while/lstm_cell_36/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_1/GreaterEqual¾
!while/lstm_cell_36/dropout_1/CastCast-while/lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_1/CastÎ
"while/lstm_cell_36/dropout_1/Mul_1Mul$while/lstm_cell_36/dropout_1/Mul:z:0%while/lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_1/Mul_1
"while/lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_2/ConstÑ
 while/lstm_cell_36/dropout_2/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_2/Mul
"while/lstm_cell_36/dropout_2/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_2/Shape
9while/lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2í·A2;
9while/lstm_cell_36/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_2/GreaterEqual/y
)while/lstm_cell_36/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_2/GreaterEqual¾
!while/lstm_cell_36/dropout_2/CastCast-while/lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_2/CastÎ
"while/lstm_cell_36/dropout_2/Mul_1Mul$while/lstm_cell_36/dropout_2/Mul:z:0%while/lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_2/Mul_1
"while/lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_3/ConstÑ
 while/lstm_cell_36/dropout_3/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_3/Mul
"while/lstm_cell_36/dropout_3/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_3/Shape
9while/lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ìÞ2;
9while/lstm_cell_36/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_3/GreaterEqual/y
)while/lstm_cell_36/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_3/GreaterEqual¾
!while/lstm_cell_36/dropout_3/CastCast-while/lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_3/CastÎ
"while/lstm_cell_36/dropout_3/Mul_1Mul$while/lstm_cell_36/dropout_3/Mul:z:0%while/lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_3/Mul_1
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dimÆ
'while/lstm_cell_36/split/ReadVariableOpReadVariableOp2while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_36/split/ReadVariableOpó
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_36/splitÇ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulË
while/lstm_cell_36/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1Ë
while/lstm_cell_36/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_2Ë
while/lstm_cell_36/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_3
$while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_36/split_1/split_dimÈ
)while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_36/split_1/ReadVariableOpë
while/lstm_cell_36/split_1Split-while/lstm_cell_36/split_1/split_dim:output:01while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_36/split_1¿
while/lstm_cell_36/BiasAddBiasAdd#while/lstm_cell_36/MatMul:product:0#while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAddÅ
while/lstm_cell_36/BiasAdd_1BiasAdd%while/lstm_cell_36/MatMul_1:product:0#while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_1Å
while/lstm_cell_36/BiasAdd_2BiasAdd%while/lstm_cell_36/MatMul_2:product:0#while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_2Å
while/lstm_cell_36/BiasAdd_3BiasAdd%while/lstm_cell_36/MatMul_3:product:0#while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_3¤
while/lstm_cell_36/mulMulwhile_placeholder_2$while/lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mulª
while/lstm_cell_36/mul_1Mulwhile_placeholder_2&while/lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_1ª
while/lstm_cell_36/mul_2Mulwhile_placeholder_2&while/lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_2ª
while/lstm_cell_36/mul_3Mulwhile_placeholder_2&while/lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_3´
!while/lstm_cell_36/ReadVariableOpReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_36/ReadVariableOp¡
&while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_36/strided_slice/stack¥
(while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice/stack_1¥
(while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_36/strided_slice/stack_2î
 while/lstm_cell_36/strided_sliceStridedSlice)while/lstm_cell_36/ReadVariableOp:value:0/while/lstm_cell_36/strided_slice/stack:output:01while/lstm_cell_36/strided_slice/stack_1:output:01while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_36/strided_slice½
while/lstm_cell_36/MatMul_4MatMulwhile/lstm_cell_36/mul:z:0)while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_4·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/BiasAdd:output:0%while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add
while/lstm_cell_36/SigmoidSigmoidwhile/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid¸
#while/lstm_cell_36/ReadVariableOp_1ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_1¥
(while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice_1/stack©
*while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_36/strided_slice_1/stack_1©
*while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_1/stack_2ú
"while/lstm_cell_36/strided_slice_1StridedSlice+while/lstm_cell_36/ReadVariableOp_1:value:01while/lstm_cell_36/strided_slice_1/stack:output:03while/lstm_cell_36/strided_slice_1/stack_1:output:03while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_1Á
while/lstm_cell_36/MatMul_5MatMulwhile/lstm_cell_36/mul_1:z:0+while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_5½
while/lstm_cell_36/add_1AddV2%while/lstm_cell_36/BiasAdd_1:output:0%while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_1Sigmoidwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_1¤
while/lstm_cell_36/mul_4Mul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_4¸
#while/lstm_cell_36/ReadVariableOp_2ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_2¥
(while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_36/strided_slice_2/stack©
*while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_36/strided_slice_2/stack_1©
*while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_2/stack_2ú
"while/lstm_cell_36/strided_slice_2StridedSlice+while/lstm_cell_36/ReadVariableOp_2:value:01while/lstm_cell_36/strided_slice_2/stack:output:03while/lstm_cell_36/strided_slice_2/stack_1:output:03while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_2Á
while/lstm_cell_36/MatMul_6MatMulwhile/lstm_cell_36/mul_2:z:0+while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_6½
while/lstm_cell_36/add_2AddV2%while/lstm_cell_36/BiasAdd_2:output:0%while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_2
while/lstm_cell_36/ReluReluwhile/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_5Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_5«
while/lstm_cell_36/add_3AddV2while/lstm_cell_36/mul_4:z:0while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_3¸
#while/lstm_cell_36/ReadVariableOp_3ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_3¥
(while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_36/strided_slice_3/stack©
*while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_36/strided_slice_3/stack_1©
*while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_3/stack_2ú
"while/lstm_cell_36/strided_slice_3StridedSlice+while/lstm_cell_36/ReadVariableOp_3:value:01while/lstm_cell_36/strided_slice_3/stack:output:03while/lstm_cell_36/strided_slice_3/stack_1:output:03while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_3Á
while/lstm_cell_36/MatMul_7MatMulwhile/lstm_cell_36/mul_3:z:0+while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_7½
while/lstm_cell_36/add_4AddV2%while/lstm_cell_36/BiasAdd_3:output:0%while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_4
while/lstm_cell_36/Sigmoid_2Sigmoidwhile/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_6Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_36/ReadVariableOp$^while/lstm_cell_36/ReadVariableOp_1$^while/lstm_cell_36/ReadVariableOp_2$^while/lstm_cell_36/ReadVariableOp_3(^while/lstm_cell_36/split/ReadVariableOp*^while/lstm_cell_36/split_1/ReadVariableOp*"
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
*while_lstm_cell_36_readvariableop_resource,while_lstm_cell_36_readvariableop_resource_0"j
2while_lstm_cell_36_split_1_readvariableop_resource4while_lstm_cell_36_split_1_readvariableop_resource_0"f
0while_lstm_cell_36_split_readvariableop_resource2while_lstm_cell_36_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_36/ReadVariableOp!while/lstm_cell_36/ReadVariableOp2J
#while/lstm_cell_36/ReadVariableOp_1#while/lstm_cell_36/ReadVariableOp_12J
#while/lstm_cell_36/ReadVariableOp_2#while/lstm_cell_36/ReadVariableOp_22J
#while/lstm_cell_36/ReadVariableOp_3#while/lstm_cell_36/ReadVariableOp_32R
'while/lstm_cell_36/split/ReadVariableOp'while/lstm_cell_36/split/ReadVariableOp2V
)while/lstm_cell_36/split_1/ReadVariableOp)while/lstm_cell_36/split_1/ReadVariableOp: 
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
/__inference_sequential_15_layer_call_fn_1224757
input_16
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_15_layer_call_and_return_conditional_losses_12247212
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
input_16
¡

J__inference_sequential_15_layer_call_and_return_conditional_losses_1225508

inputsE
2lstm_36_lstm_cell_36_split_readvariableop_resource:	C
4lstm_36_lstm_cell_36_split_1_readvariableop_resource:	?
,lstm_36_lstm_cell_36_readvariableop_resource:	 9
'dense_44_matmul_readvariableop_resource:  6
(dense_44_biasadd_readvariableop_resource: 9
'dense_45_matmul_readvariableop_resource: 6
(dense_45_biasadd_readvariableop_resource:
identity¢dense_44/BiasAdd/ReadVariableOp¢dense_44/MatMul/ReadVariableOp¢dense_45/BiasAdd/ReadVariableOp¢dense_45/MatMul/ReadVariableOp¢/dense_45/bias/Regularizer/Square/ReadVariableOp¢#lstm_36/lstm_cell_36/ReadVariableOp¢%lstm_36/lstm_cell_36/ReadVariableOp_1¢%lstm_36/lstm_cell_36/ReadVariableOp_2¢%lstm_36/lstm_cell_36/ReadVariableOp_3¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢)lstm_36/lstm_cell_36/split/ReadVariableOp¢+lstm_36/lstm_cell_36/split_1/ReadVariableOp¢lstm_36/whileT
lstm_36/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_36/Shape
lstm_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_36/strided_slice/stack
lstm_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_36/strided_slice/stack_1
lstm_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_36/strided_slice/stack_2
lstm_36/strided_sliceStridedSlicelstm_36/Shape:output:0$lstm_36/strided_slice/stack:output:0&lstm_36/strided_slice/stack_1:output:0&lstm_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_36/strided_slicel
lstm_36/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros/mul/y
lstm_36/zeros/mulMullstm_36/strided_slice:output:0lstm_36/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros/mulo
lstm_36/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_36/zeros/Less/y
lstm_36/zeros/LessLesslstm_36/zeros/mul:z:0lstm_36/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros/Lessr
lstm_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros/packed/1£
lstm_36/zeros/packedPacklstm_36/strided_slice:output:0lstm_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_36/zeros/packedo
lstm_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/zeros/Const
lstm_36/zerosFilllstm_36/zeros/packed:output:0lstm_36/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/zerosp
lstm_36/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros_1/mul/y
lstm_36/zeros_1/mulMullstm_36/strided_slice:output:0lstm_36/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros_1/muls
lstm_36/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_36/zeros_1/Less/y
lstm_36/zeros_1/LessLesslstm_36/zeros_1/mul:z:0lstm_36/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_36/zeros_1/Lessv
lstm_36/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/zeros_1/packed/1©
lstm_36/zeros_1/packedPacklstm_36/strided_slice:output:0!lstm_36/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_36/zeros_1/packeds
lstm_36/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/zeros_1/Const
lstm_36/zeros_1Filllstm_36/zeros_1/packed:output:0lstm_36/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/zeros_1
lstm_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_36/transpose/perm
lstm_36/transpose	Transposeinputslstm_36/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/transposeg
lstm_36/Shape_1Shapelstm_36/transpose:y:0*
T0*
_output_shapes
:2
lstm_36/Shape_1
lstm_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_36/strided_slice_1/stack
lstm_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_1/stack_1
lstm_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_1/stack_2
lstm_36/strided_slice_1StridedSlicelstm_36/Shape_1:output:0&lstm_36/strided_slice_1/stack:output:0(lstm_36/strided_slice_1/stack_1:output:0(lstm_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_36/strided_slice_1
#lstm_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_36/TensorArrayV2/element_shapeÒ
lstm_36/TensorArrayV2TensorListReserve,lstm_36/TensorArrayV2/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_36/TensorArrayV2Ï
=lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_36/transpose:y:0Flstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_36/TensorArrayUnstack/TensorListFromTensor
lstm_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_36/strided_slice_2/stack
lstm_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_2/stack_1
lstm_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_2/stack_2¬
lstm_36/strided_slice_2StridedSlicelstm_36/transpose:y:0&lstm_36/strided_slice_2/stack:output:0(lstm_36/strided_slice_2/stack_1:output:0(lstm_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_36/strided_slice_2
$lstm_36/lstm_cell_36/ones_like/ShapeShapelstm_36/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_36/lstm_cell_36/ones_like/Shape
$lstm_36/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_36/lstm_cell_36/ones_like/ConstØ
lstm_36/lstm_cell_36/ones_likeFill-lstm_36/lstm_cell_36/ones_like/Shape:output:0-lstm_36/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/ones_like
"lstm_36/lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"lstm_36/lstm_cell_36/dropout/ConstÓ
 lstm_36/lstm_cell_36/dropout/MulMul'lstm_36/lstm_cell_36/ones_like:output:0+lstm_36/lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_36/lstm_cell_36/dropout/Mul
"lstm_36/lstm_cell_36/dropout/ShapeShape'lstm_36/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_36/lstm_cell_36/dropout/Shape
9lstm_36/lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform+lstm_36/lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2àÂ2;
9lstm_36/lstm_cell_36/dropout/random_uniform/RandomUniform
+lstm_36/lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+lstm_36/lstm_cell_36/dropout/GreaterEqual/y
)lstm_36/lstm_cell_36/dropout/GreaterEqualGreaterEqualBlstm_36/lstm_cell_36/dropout/random_uniform/RandomUniform:output:04lstm_36/lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_36/lstm_cell_36/dropout/GreaterEqual¾
!lstm_36/lstm_cell_36/dropout/CastCast-lstm_36/lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_36/lstm_cell_36/dropout/CastÎ
"lstm_36/lstm_cell_36/dropout/Mul_1Mul$lstm_36/lstm_cell_36/dropout/Mul:z:0%lstm_36/lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/lstm_cell_36/dropout/Mul_1
$lstm_36/lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_36/lstm_cell_36/dropout_1/ConstÙ
"lstm_36/lstm_cell_36/dropout_1/MulMul'lstm_36/lstm_cell_36/ones_like:output:0-lstm_36/lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/lstm_cell_36/dropout_1/Mul£
$lstm_36/lstm_cell_36/dropout_1/ShapeShape'lstm_36/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_36/lstm_cell_36/dropout_1/Shape
;lstm_36/lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_36/lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Æá2=
;lstm_36/lstm_cell_36/dropout_1/random_uniform/RandomUniform£
-lstm_36/lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_36/lstm_cell_36/dropout_1/GreaterEqual/y
+lstm_36/lstm_cell_36/dropout_1/GreaterEqualGreaterEqualDlstm_36/lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:06lstm_36/lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_36/lstm_cell_36/dropout_1/GreaterEqualÄ
#lstm_36/lstm_cell_36/dropout_1/CastCast/lstm_36/lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/lstm_cell_36/dropout_1/CastÖ
$lstm_36/lstm_cell_36/dropout_1/Mul_1Mul&lstm_36/lstm_cell_36/dropout_1/Mul:z:0'lstm_36/lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/lstm_cell_36/dropout_1/Mul_1
$lstm_36/lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_36/lstm_cell_36/dropout_2/ConstÙ
"lstm_36/lstm_cell_36/dropout_2/MulMul'lstm_36/lstm_cell_36/ones_like:output:0-lstm_36/lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/lstm_cell_36/dropout_2/Mul£
$lstm_36/lstm_cell_36/dropout_2/ShapeShape'lstm_36/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_36/lstm_cell_36/dropout_2/Shape
;lstm_36/lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_36/lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2êÌÁ2=
;lstm_36/lstm_cell_36/dropout_2/random_uniform/RandomUniform£
-lstm_36/lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_36/lstm_cell_36/dropout_2/GreaterEqual/y
+lstm_36/lstm_cell_36/dropout_2/GreaterEqualGreaterEqualDlstm_36/lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:06lstm_36/lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_36/lstm_cell_36/dropout_2/GreaterEqualÄ
#lstm_36/lstm_cell_36/dropout_2/CastCast/lstm_36/lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/lstm_cell_36/dropout_2/CastÖ
$lstm_36/lstm_cell_36/dropout_2/Mul_1Mul&lstm_36/lstm_cell_36/dropout_2/Mul:z:0'lstm_36/lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/lstm_cell_36/dropout_2/Mul_1
$lstm_36/lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2&
$lstm_36/lstm_cell_36/dropout_3/ConstÙ
"lstm_36/lstm_cell_36/dropout_3/MulMul'lstm_36/lstm_cell_36/ones_like:output:0-lstm_36/lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/lstm_cell_36/dropout_3/Mul£
$lstm_36/lstm_cell_36/dropout_3/ShapeShape'lstm_36/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_36/lstm_cell_36/dropout_3/Shape
;lstm_36/lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_36/lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2¨º2=
;lstm_36/lstm_cell_36/dropout_3/random_uniform/RandomUniform£
-lstm_36/lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2/
-lstm_36/lstm_cell_36/dropout_3/GreaterEqual/y
+lstm_36/lstm_cell_36/dropout_3/GreaterEqualGreaterEqualDlstm_36/lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:06lstm_36/lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+lstm_36/lstm_cell_36/dropout_3/GreaterEqualÄ
#lstm_36/lstm_cell_36/dropout_3/CastCast/lstm_36/lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/lstm_cell_36/dropout_3/CastÖ
$lstm_36/lstm_cell_36/dropout_3/Mul_1Mul&lstm_36/lstm_cell_36/dropout_3/Mul:z:0'lstm_36/lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_36/lstm_cell_36/dropout_3/Mul_1
$lstm_36/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_36/lstm_cell_36/split/split_dimÊ
)lstm_36/lstm_cell_36/split/ReadVariableOpReadVariableOp2lstm_36_lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_36/lstm_cell_36/split/ReadVariableOpû
lstm_36/lstm_cell_36/splitSplit-lstm_36/lstm_cell_36/split/split_dim:output:01lstm_36/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_36/lstm_cell_36/split½
lstm_36/lstm_cell_36/MatMulMatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMulÁ
lstm_36/lstm_cell_36/MatMul_1MatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_1Á
lstm_36/lstm_cell_36/MatMul_2MatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_2Á
lstm_36/lstm_cell_36/MatMul_3MatMul lstm_36/strided_slice_2:output:0#lstm_36/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_3
&lstm_36/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_36/lstm_cell_36/split_1/split_dimÌ
+lstm_36/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4lstm_36_lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_36/lstm_cell_36/split_1/ReadVariableOpó
lstm_36/lstm_cell_36/split_1Split/lstm_36/lstm_cell_36/split_1/split_dim:output:03lstm_36/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_36/lstm_cell_36/split_1Ç
lstm_36/lstm_cell_36/BiasAddBiasAdd%lstm_36/lstm_cell_36/MatMul:product:0%lstm_36/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/BiasAddÍ
lstm_36/lstm_cell_36/BiasAdd_1BiasAdd'lstm_36/lstm_cell_36/MatMul_1:product:0%lstm_36/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/BiasAdd_1Í
lstm_36/lstm_cell_36/BiasAdd_2BiasAdd'lstm_36/lstm_cell_36/MatMul_2:product:0%lstm_36/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/BiasAdd_2Í
lstm_36/lstm_cell_36/BiasAdd_3BiasAdd'lstm_36/lstm_cell_36/MatMul_3:product:0%lstm_36/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/BiasAdd_3­
lstm_36/lstm_cell_36/mulMullstm_36/zeros:output:0&lstm_36/lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul³
lstm_36/lstm_cell_36/mul_1Mullstm_36/zeros:output:0(lstm_36/lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_1³
lstm_36/lstm_cell_36/mul_2Mullstm_36/zeros:output:0(lstm_36/lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_2³
lstm_36/lstm_cell_36/mul_3Mullstm_36/zeros:output:0(lstm_36/lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_3¸
#lstm_36/lstm_cell_36/ReadVariableOpReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_36/lstm_cell_36/ReadVariableOp¥
(lstm_36/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_36/lstm_cell_36/strided_slice/stack©
*lstm_36/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_36/lstm_cell_36/strided_slice/stack_1©
*lstm_36/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_36/lstm_cell_36/strided_slice/stack_2ú
"lstm_36/lstm_cell_36/strided_sliceStridedSlice+lstm_36/lstm_cell_36/ReadVariableOp:value:01lstm_36/lstm_cell_36/strided_slice/stack:output:03lstm_36/lstm_cell_36/strided_slice/stack_1:output:03lstm_36/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_36/lstm_cell_36/strided_sliceÅ
lstm_36/lstm_cell_36/MatMul_4MatMullstm_36/lstm_cell_36/mul:z:0+lstm_36/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_4¿
lstm_36/lstm_cell_36/addAddV2%lstm_36/lstm_cell_36/BiasAdd:output:0'lstm_36/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add
lstm_36/lstm_cell_36/SigmoidSigmoidlstm_36/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/Sigmoid¼
%lstm_36/lstm_cell_36/ReadVariableOp_1ReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_36/lstm_cell_36/ReadVariableOp_1©
*lstm_36/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_36/lstm_cell_36/strided_slice_1/stack­
,lstm_36/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_36/lstm_cell_36/strided_slice_1/stack_1­
,lstm_36/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_36/lstm_cell_36/strided_slice_1/stack_2
$lstm_36/lstm_cell_36/strided_slice_1StridedSlice-lstm_36/lstm_cell_36/ReadVariableOp_1:value:03lstm_36/lstm_cell_36/strided_slice_1/stack:output:05lstm_36/lstm_cell_36/strided_slice_1/stack_1:output:05lstm_36/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_36/lstm_cell_36/strided_slice_1É
lstm_36/lstm_cell_36/MatMul_5MatMullstm_36/lstm_cell_36/mul_1:z:0-lstm_36/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_5Å
lstm_36/lstm_cell_36/add_1AddV2'lstm_36/lstm_cell_36/BiasAdd_1:output:0'lstm_36/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_1
lstm_36/lstm_cell_36/Sigmoid_1Sigmoidlstm_36/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/Sigmoid_1¯
lstm_36/lstm_cell_36/mul_4Mul"lstm_36/lstm_cell_36/Sigmoid_1:y:0lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_4¼
%lstm_36/lstm_cell_36/ReadVariableOp_2ReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_36/lstm_cell_36/ReadVariableOp_2©
*lstm_36/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_36/lstm_cell_36/strided_slice_2/stack­
,lstm_36/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_36/lstm_cell_36/strided_slice_2/stack_1­
,lstm_36/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_36/lstm_cell_36/strided_slice_2/stack_2
$lstm_36/lstm_cell_36/strided_slice_2StridedSlice-lstm_36/lstm_cell_36/ReadVariableOp_2:value:03lstm_36/lstm_cell_36/strided_slice_2/stack:output:05lstm_36/lstm_cell_36/strided_slice_2/stack_1:output:05lstm_36/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_36/lstm_cell_36/strided_slice_2É
lstm_36/lstm_cell_36/MatMul_6MatMullstm_36/lstm_cell_36/mul_2:z:0-lstm_36/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_6Å
lstm_36/lstm_cell_36/add_2AddV2'lstm_36/lstm_cell_36/BiasAdd_2:output:0'lstm_36/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_2
lstm_36/lstm_cell_36/ReluRelulstm_36/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/Relu¼
lstm_36/lstm_cell_36/mul_5Mul lstm_36/lstm_cell_36/Sigmoid:y:0'lstm_36/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_5³
lstm_36/lstm_cell_36/add_3AddV2lstm_36/lstm_cell_36/mul_4:z:0lstm_36/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_3¼
%lstm_36/lstm_cell_36/ReadVariableOp_3ReadVariableOp,lstm_36_lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02'
%lstm_36/lstm_cell_36/ReadVariableOp_3©
*lstm_36/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_36/lstm_cell_36/strided_slice_3/stack­
,lstm_36/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_36/lstm_cell_36/strided_slice_3/stack_1­
,lstm_36/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_36/lstm_cell_36/strided_slice_3/stack_2
$lstm_36/lstm_cell_36/strided_slice_3StridedSlice-lstm_36/lstm_cell_36/ReadVariableOp_3:value:03lstm_36/lstm_cell_36/strided_slice_3/stack:output:05lstm_36/lstm_cell_36/strided_slice_3/stack_1:output:05lstm_36/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_36/lstm_cell_36/strided_slice_3É
lstm_36/lstm_cell_36/MatMul_7MatMullstm_36/lstm_cell_36/mul_3:z:0-lstm_36/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_7Å
lstm_36/lstm_cell_36/add_4AddV2'lstm_36/lstm_cell_36/BiasAdd_3:output:0'lstm_36/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/add_4
lstm_36/lstm_cell_36/Sigmoid_2Sigmoidlstm_36/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/lstm_cell_36/Sigmoid_2
lstm_36/lstm_cell_36/Relu_1Relulstm_36/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/Relu_1À
lstm_36/lstm_cell_36/mul_6Mul"lstm_36/lstm_cell_36/Sigmoid_2:y:0)lstm_36/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/mul_6
%lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_36/TensorArrayV2_1/element_shapeØ
lstm_36/TensorArrayV2_1TensorListReserve.lstm_36/TensorArrayV2_1/element_shape:output:0 lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_36/TensorArrayV2_1^
lstm_36/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/time
 lstm_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/maximum_iterationsz
lstm_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_36/while/loop_counterû
lstm_36/whileWhile#lstm_36/while/loop_counter:output:0)lstm_36/while/maximum_iterations:output:0lstm_36/time:output:0 lstm_36/TensorArrayV2_1:handle:0lstm_36/zeros:output:0lstm_36/zeros_1:output:0 lstm_36/strided_slice_1:output:0?lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_36_lstm_cell_36_split_readvariableop_resource4lstm_36_lstm_cell_36_split_1_readvariableop_resource,lstm_36_lstm_cell_36_readvariableop_resource*
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
lstm_36_while_body_1225315*&
condR
lstm_36_while_cond_1225314*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_36/whileÅ
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_36/TensorArrayV2Stack/TensorListStackTensorListStacklstm_36/while:output:3Alstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_36/TensorArrayV2Stack/TensorListStack
lstm_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_36/strided_slice_3/stack
lstm_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_36/strided_slice_3/stack_1
lstm_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_36/strided_slice_3/stack_2Ê
lstm_36/strided_slice_3StridedSlice3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_36/strided_slice_3/stack:output:0(lstm_36/strided_slice_3/stack_1:output:0(lstm_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_36/strided_slice_3
lstm_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_36/transpose_1/permÅ
lstm_36/transpose_1	Transpose3lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/transpose_1v
lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/runtime¨
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_44/MatMul/ReadVariableOp¨
dense_44/MatMulMatMul lstm_36/strided_slice_3:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_44/MatMul§
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_44/BiasAdd/ReadVariableOp¥
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_44/BiasAdds
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_44/Relu¨
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_45/MatMul/ReadVariableOp£
dense_45/MatMulMatMuldense_44/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_45/MatMul§
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOp¥
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_45/BiasAddm
reshape_22/ShapeShapedense_45/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_22/Shape
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_22/strided_slice/stack
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_22/strided_slice/stack_1
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_22/strided_slice/stack_2¤
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_22/strided_slicez
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_22/Reshape/shape/1z
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_22/Reshape/shape/2×
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_22/Reshape/shape§
reshape_22/ReshapeReshapedense_45/BiasAdd:output:0!reshape_22/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_22/Reshapeò
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_36_lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/mulÇ
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mulz
IdentityIdentityreshape_22/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÎ
NoOpNoOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp0^dense_45/bias/Regularizer/Square/ReadVariableOp$^lstm_36/lstm_cell_36/ReadVariableOp&^lstm_36/lstm_cell_36/ReadVariableOp_1&^lstm_36/lstm_cell_36/ReadVariableOp_2&^lstm_36/lstm_cell_36/ReadVariableOp_3>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp*^lstm_36/lstm_cell_36/split/ReadVariableOp,^lstm_36/lstm_cell_36/split_1/ReadVariableOp^lstm_36/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2b
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp2J
#lstm_36/lstm_cell_36/ReadVariableOp#lstm_36/lstm_cell_36/ReadVariableOp2N
%lstm_36/lstm_cell_36/ReadVariableOp_1%lstm_36/lstm_cell_36/ReadVariableOp_12N
%lstm_36/lstm_cell_36/ReadVariableOp_2%lstm_36/lstm_cell_36/ReadVariableOp_22N
%lstm_36/lstm_cell_36/ReadVariableOp_3%lstm_36/lstm_cell_36/ReadVariableOp_32~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_36/lstm_cell_36/split/ReadVariableOp)lstm_36/lstm_cell_36/split/ReadVariableOp2Z
+lstm_36/lstm_cell_36/split_1/ReadVariableOp+lstm_36/lstm_cell_36/split_1/ReadVariableOp2
lstm_36/whilelstm_36/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
¶
)__inference_lstm_36_layer_call_fn_1225558

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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12246572
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
G__inference_reshape_22_layer_call_and_return_conditional_losses_1226727

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
¨
¥	
while_body_1226218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_36_split_readvariableop_resource_0:	C
4while_lstm_cell_36_split_1_readvariableop_resource_0:	?
,while_lstm_cell_36_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_36_split_readvariableop_resource:	A
2while_lstm_cell_36_split_1_readvariableop_resource:	=
*while_lstm_cell_36_readvariableop_resource:	 ¢!while/lstm_cell_36/ReadVariableOp¢#while/lstm_cell_36/ReadVariableOp_1¢#while/lstm_cell_36/ReadVariableOp_2¢#while/lstm_cell_36/ReadVariableOp_3¢'while/lstm_cell_36/split/ReadVariableOp¢)while/lstm_cell_36/split_1/ReadVariableOpÃ
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
"while/lstm_cell_36/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_36/ones_like/Shape
"while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_36/ones_like/ConstÐ
while/lstm_cell_36/ones_likeFill+while/lstm_cell_36/ones_like/Shape:output:0+while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/ones_like
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dimÆ
'while/lstm_cell_36/split/ReadVariableOpReadVariableOp2while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_36/split/ReadVariableOpó
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_36/splitÇ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulË
while/lstm_cell_36/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1Ë
while/lstm_cell_36/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_2Ë
while/lstm_cell_36/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_3
$while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_36/split_1/split_dimÈ
)while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_36/split_1/ReadVariableOpë
while/lstm_cell_36/split_1Split-while/lstm_cell_36/split_1/split_dim:output:01while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_36/split_1¿
while/lstm_cell_36/BiasAddBiasAdd#while/lstm_cell_36/MatMul:product:0#while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAddÅ
while/lstm_cell_36/BiasAdd_1BiasAdd%while/lstm_cell_36/MatMul_1:product:0#while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_1Å
while/lstm_cell_36/BiasAdd_2BiasAdd%while/lstm_cell_36/MatMul_2:product:0#while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_2Å
while/lstm_cell_36/BiasAdd_3BiasAdd%while/lstm_cell_36/MatMul_3:product:0#while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_3¥
while/lstm_cell_36/mulMulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul©
while/lstm_cell_36/mul_1Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/mul_2Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_2©
while/lstm_cell_36/mul_3Mulwhile_placeholder_2%while/lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_3´
!while/lstm_cell_36/ReadVariableOpReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_36/ReadVariableOp¡
&while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_36/strided_slice/stack¥
(while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice/stack_1¥
(while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_36/strided_slice/stack_2î
 while/lstm_cell_36/strided_sliceStridedSlice)while/lstm_cell_36/ReadVariableOp:value:0/while/lstm_cell_36/strided_slice/stack:output:01while/lstm_cell_36/strided_slice/stack_1:output:01while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_36/strided_slice½
while/lstm_cell_36/MatMul_4MatMulwhile/lstm_cell_36/mul:z:0)while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_4·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/BiasAdd:output:0%while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add
while/lstm_cell_36/SigmoidSigmoidwhile/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid¸
#while/lstm_cell_36/ReadVariableOp_1ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_1¥
(while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice_1/stack©
*while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_36/strided_slice_1/stack_1©
*while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_1/stack_2ú
"while/lstm_cell_36/strided_slice_1StridedSlice+while/lstm_cell_36/ReadVariableOp_1:value:01while/lstm_cell_36/strided_slice_1/stack:output:03while/lstm_cell_36/strided_slice_1/stack_1:output:03while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_1Á
while/lstm_cell_36/MatMul_5MatMulwhile/lstm_cell_36/mul_1:z:0+while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_5½
while/lstm_cell_36/add_1AddV2%while/lstm_cell_36/BiasAdd_1:output:0%while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_1Sigmoidwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_1¤
while/lstm_cell_36/mul_4Mul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_4¸
#while/lstm_cell_36/ReadVariableOp_2ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_2¥
(while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_36/strided_slice_2/stack©
*while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_36/strided_slice_2/stack_1©
*while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_2/stack_2ú
"while/lstm_cell_36/strided_slice_2StridedSlice+while/lstm_cell_36/ReadVariableOp_2:value:01while/lstm_cell_36/strided_slice_2/stack:output:03while/lstm_cell_36/strided_slice_2/stack_1:output:03while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_2Á
while/lstm_cell_36/MatMul_6MatMulwhile/lstm_cell_36/mul_2:z:0+while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_6½
while/lstm_cell_36/add_2AddV2%while/lstm_cell_36/BiasAdd_2:output:0%while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_2
while/lstm_cell_36/ReluReluwhile/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_5Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_5«
while/lstm_cell_36/add_3AddV2while/lstm_cell_36/mul_4:z:0while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_3¸
#while/lstm_cell_36/ReadVariableOp_3ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_3¥
(while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_36/strided_slice_3/stack©
*while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_36/strided_slice_3/stack_1©
*while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_3/stack_2ú
"while/lstm_cell_36/strided_slice_3StridedSlice+while/lstm_cell_36/ReadVariableOp_3:value:01while/lstm_cell_36/strided_slice_3/stack:output:03while/lstm_cell_36/strided_slice_3/stack_1:output:03while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_3Á
while/lstm_cell_36/MatMul_7MatMulwhile/lstm_cell_36/mul_3:z:0+while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_7½
while/lstm_cell_36/add_4AddV2%while/lstm_cell_36/BiasAdd_3:output:0%while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_4
while/lstm_cell_36/Sigmoid_2Sigmoidwhile/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_6Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_36/ReadVariableOp$^while/lstm_cell_36/ReadVariableOp_1$^while/lstm_cell_36/ReadVariableOp_2$^while/lstm_cell_36/ReadVariableOp_3(^while/lstm_cell_36/split/ReadVariableOp*^while/lstm_cell_36/split_1/ReadVariableOp*"
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
*while_lstm_cell_36_readvariableop_resource,while_lstm_cell_36_readvariableop_resource_0"j
2while_lstm_cell_36_split_1_readvariableop_resource4while_lstm_cell_36_split_1_readvariableop_resource_0"f
0while_lstm_cell_36_split_readvariableop_resource2while_lstm_cell_36_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_36/ReadVariableOp!while/lstm_cell_36/ReadVariableOp2J
#while/lstm_cell_36/ReadVariableOp_1#while/lstm_cell_36/ReadVariableOp_12J
#while/lstm_cell_36/ReadVariableOp_2#while/lstm_cell_36/ReadVariableOp_22J
#while/lstm_cell_36/ReadVariableOp_3#while/lstm_cell_36/ReadVariableOp_32R
'while/lstm_cell_36/split/ReadVariableOp'while/lstm_cell_36/split/ReadVariableOp2V
)while/lstm_cell_36/split_1/ReadVariableOp)while/lstm_cell_36/split_1/ReadVariableOp: 
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
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224721

inputs"
lstm_36_1224690:	
lstm_36_1224692:	"
lstm_36_1224694:	 "
dense_44_1224697:  
dense_44_1224699: "
dense_45_1224702: 
dense_45_1224704:
identity¢ dense_44/StatefulPartitionedCall¢ dense_45/StatefulPartitionedCall¢/dense_45/bias/Regularizer/Square/ReadVariableOp¢lstm_36/StatefulPartitionedCall¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¥
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinputslstm_36_1224690lstm_36_1224692lstm_36_1224694*
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12246572!
lstm_36/StatefulPartitionedCall¹
 dense_44/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0dense_44_1224697dense_44_1224699*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_12242382"
 dense_44/StatefulPartitionedCallº
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_1224702dense_45_1224704*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_12242602"
 dense_45/StatefulPartitionedCall
reshape_22/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
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
G__inference_reshape_22_layer_call_and_return_conditional_losses_12242792
reshape_22/PartitionedCallÏ
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_36_1224690*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/mul¯
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_1224704*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mul
IdentityIdentity#reshape_22/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall0^dense_45/bias/Regularizer/Square/ReadVariableOp ^lstm_36/StatefulPartitionedCall>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2b
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
ª
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226108
inputs_0=
*lstm_cell_36_split_readvariableop_resource:	;
,lstm_cell_36_split_1_readvariableop_resource:	7
$lstm_cell_36_readvariableop_resource:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_36/ReadVariableOp¢lstm_cell_36/ReadVariableOp_1¢lstm_cell_36/ReadVariableOp_2¢lstm_cell_36/ReadVariableOp_3¢!lstm_cell_36/split/ReadVariableOp¢#lstm_cell_36/split_1/ReadVariableOp¢whileF
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
lstm_cell_36/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_36/ones_like/Shape
lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_36/ones_like/Const¸
lstm_cell_36/ones_likeFill%lstm_cell_36/ones_like/Shape:output:0%lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/ones_like}
lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout/Const³
lstm_cell_36/dropout/MulMullstm_cell_36/ones_like:output:0#lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Mul
lstm_cell_36/dropout/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout/Shapeø
1lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ô23
1lstm_cell_36/dropout/random_uniform/RandomUniform
#lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_36/dropout/GreaterEqual/yò
!lstm_cell_36/dropout/GreaterEqualGreaterEqual:lstm_cell_36/dropout/random_uniform/RandomUniform:output:0,lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_36/dropout/GreaterEqual¦
lstm_cell_36/dropout/CastCast%lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Cast®
lstm_cell_36/dropout/Mul_1Mullstm_cell_36/dropout/Mul:z:0lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Mul_1
lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_1/Const¹
lstm_cell_36/dropout_1/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Mul
lstm_cell_36/dropout_1/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_1/Shapeþ
3lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2®åõ25
3lstm_cell_36/dropout_1/random_uniform/RandomUniform
%lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_1/GreaterEqual/yú
#lstm_cell_36/dropout_1/GreaterEqualGreaterEqual<lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_1/GreaterEqual¬
lstm_cell_36/dropout_1/CastCast'lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Cast¶
lstm_cell_36/dropout_1/Mul_1Mullstm_cell_36/dropout_1/Mul:z:0lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Mul_1
lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_2/Const¹
lstm_cell_36/dropout_2/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Mul
lstm_cell_36/dropout_2/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_2/Shapeþ
3lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÁÑÞ25
3lstm_cell_36/dropout_2/random_uniform/RandomUniform
%lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_2/GreaterEqual/yú
#lstm_cell_36/dropout_2/GreaterEqualGreaterEqual<lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_2/GreaterEqual¬
lstm_cell_36/dropout_2/CastCast'lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Cast¶
lstm_cell_36/dropout_2/Mul_1Mullstm_cell_36/dropout_2/Mul:z:0lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Mul_1
lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_3/Const¹
lstm_cell_36/dropout_3/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Mul
lstm_cell_36/dropout_3/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_3/Shapeþ
3lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ø25
3lstm_cell_36/dropout_3/random_uniform/RandomUniform
%lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_3/GreaterEqual/yú
#lstm_cell_36/dropout_3/GreaterEqualGreaterEqual<lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_3/GreaterEqual¬
lstm_cell_36/dropout_3/CastCast'lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Cast¶
lstm_cell_36/dropout_3/Mul_1Mullstm_cell_36/dropout_3/Mul:z:0lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Mul_1~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dim²
!lstm_cell_36/split/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_36/split/ReadVariableOpÛ
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0)lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_36/split
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul¡
lstm_cell_36/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1¡
lstm_cell_36/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_2¡
lstm_cell_36/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_3
lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_36/split_1/split_dim´
#lstm_cell_36/split_1/ReadVariableOpReadVariableOp,lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_36/split_1/ReadVariableOpÓ
lstm_cell_36/split_1Split'lstm_cell_36/split_1/split_dim:output:0+lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_36/split_1§
lstm_cell_36/BiasAddBiasAddlstm_cell_36/MatMul:product:0lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd­
lstm_cell_36/BiasAdd_1BiasAddlstm_cell_36/MatMul_1:product:0lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_1­
lstm_cell_36/BiasAdd_2BiasAddlstm_cell_36/MatMul_2:product:0lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_2­
lstm_cell_36/BiasAdd_3BiasAddlstm_cell_36/MatMul_3:product:0lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_3
lstm_cell_36/mulMulzeros:output:0lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul
lstm_cell_36/mul_1Mulzeros:output:0 lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_1
lstm_cell_36/mul_2Mulzeros:output:0 lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_2
lstm_cell_36/mul_3Mulzeros:output:0 lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_3 
lstm_cell_36/ReadVariableOpReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp
 lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_36/strided_slice/stack
"lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice/stack_1
"lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_36/strided_slice/stack_2Ê
lstm_cell_36/strided_sliceStridedSlice#lstm_cell_36/ReadVariableOp:value:0)lstm_cell_36/strided_slice/stack:output:0+lstm_cell_36/strided_slice/stack_1:output:0+lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice¥
lstm_cell_36/MatMul_4MatMullstm_cell_36/mul:z:0#lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_4
lstm_cell_36/addAddV2lstm_cell_36/BiasAdd:output:0lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add
lstm_cell_36/SigmoidSigmoidlstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid¤
lstm_cell_36/ReadVariableOp_1ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_1
"lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice_1/stack
$lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_36/strided_slice_1/stack_1
$lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_1/stack_2Ö
lstm_cell_36/strided_slice_1StridedSlice%lstm_cell_36/ReadVariableOp_1:value:0+lstm_cell_36/strided_slice_1/stack:output:0-lstm_cell_36/strided_slice_1/stack_1:output:0-lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_1©
lstm_cell_36/MatMul_5MatMullstm_cell_36/mul_1:z:0%lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_5¥
lstm_cell_36/add_1AddV2lstm_cell_36/BiasAdd_1:output:0lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mul_4Mullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_4¤
lstm_cell_36/ReadVariableOp_2ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_2
"lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_36/strided_slice_2/stack
$lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_36/strided_slice_2/stack_1
$lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_2/stack_2Ö
lstm_cell_36/strided_slice_2StridedSlice%lstm_cell_36/ReadVariableOp_2:value:0+lstm_cell_36/strided_slice_2/stack:output:0-lstm_cell_36/strided_slice_2/stack_1:output:0-lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_2©
lstm_cell_36/MatMul_6MatMullstm_cell_36/mul_2:z:0%lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_6¥
lstm_cell_36/add_2AddV2lstm_cell_36/BiasAdd_2:output:0lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_2x
lstm_cell_36/ReluRelulstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu
lstm_cell_36/mul_5Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_5
lstm_cell_36/add_3AddV2lstm_cell_36/mul_4:z:0lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_3¤
lstm_cell_36/ReadVariableOp_3ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_3
"lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_36/strided_slice_3/stack
$lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_36/strided_slice_3/stack_1
$lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_3/stack_2Ö
lstm_cell_36/strided_slice_3StridedSlice%lstm_cell_36/ReadVariableOp_3:value:0+lstm_cell_36/strided_slice_3/stack:output:0-lstm_cell_36/strided_slice_3/stack_1:output:0-lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_3©
lstm_cell_36/MatMul_7MatMullstm_cell_36/mul_3:z:0%lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_7¥
lstm_cell_36/add_4AddV2lstm_cell_36/BiasAdd_3:output:0lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_4
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_6Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_36_split_readvariableop_resource,lstm_cell_36_split_1_readvariableop_resource$lstm_cell_36_readvariableop_resource*
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
while_body_1225943*
condR
while_cond_1225942*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_36/ReadVariableOp^lstm_cell_36/ReadVariableOp_1^lstm_cell_36/ReadVariableOp_2^lstm_cell_36/ReadVariableOp_3"^lstm_cell_36/split/ReadVariableOp$^lstm_cell_36/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_36/ReadVariableOplstm_cell_36/ReadVariableOp2>
lstm_cell_36/ReadVariableOp_1lstm_cell_36/ReadVariableOp_12>
lstm_cell_36/ReadVariableOp_2lstm_cell_36/ReadVariableOp_22>
lstm_cell_36/ReadVariableOp_3lstm_cell_36/ReadVariableOp_32F
!lstm_cell_36/split/ReadVariableOp!lstm_cell_36/split/ReadVariableOp2J
#lstm_cell_36/split_1/ReadVariableOp#lstm_cell_36/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ê
H
,__inference_reshape_22_layer_call_fn_1226714

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
G__inference_reshape_22_layer_call_and_return_conditional_losses_12242792
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
Ë

è
lstm_36_while_cond_1225314,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3.
*lstm_36_while_less_lstm_36_strided_slice_1E
Alstm_36_while_lstm_36_while_cond_1225314___redundant_placeholder0E
Alstm_36_while_lstm_36_while_cond_1225314___redundant_placeholder1E
Alstm_36_while_lstm_36_while_cond_1225314___redundant_placeholder2E
Alstm_36_while_lstm_36_while_cond_1225314___redundant_placeholder3
lstm_36_while_identity

lstm_36/while/LessLesslstm_36_while_placeholder*lstm_36_while_less_lstm_36_strided_slice_1*
T0*
_output_shapes
: 2
lstm_36/while/Lessu
lstm_36/while/IdentityIdentitylstm_36/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_36/while/Identity"9
lstm_36_while_identitylstm_36/while/Identity:output:0*(
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
ÜÏ
¨
D__inference_lstm_36_layer_call_and_return_conditional_losses_1224657

inputs=
*lstm_cell_36_split_readvariableop_resource:	;
,lstm_cell_36_split_1_readvariableop_resource:	7
$lstm_cell_36_readvariableop_resource:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_36/ReadVariableOp¢lstm_cell_36/ReadVariableOp_1¢lstm_cell_36/ReadVariableOp_2¢lstm_cell_36/ReadVariableOp_3¢!lstm_cell_36/split/ReadVariableOp¢#lstm_cell_36/split_1/ReadVariableOp¢whileD
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
lstm_cell_36/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_36/ones_like/Shape
lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_36/ones_like/Const¸
lstm_cell_36/ones_likeFill%lstm_cell_36/ones_like/Shape:output:0%lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/ones_like}
lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout/Const³
lstm_cell_36/dropout/MulMullstm_cell_36/ones_like:output:0#lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Mul
lstm_cell_36/dropout/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout/Shapeø
1lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Í23
1lstm_cell_36/dropout/random_uniform/RandomUniform
#lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2%
#lstm_cell_36/dropout/GreaterEqual/yò
!lstm_cell_36/dropout/GreaterEqualGreaterEqual:lstm_cell_36/dropout/random_uniform/RandomUniform:output:0,lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_cell_36/dropout/GreaterEqual¦
lstm_cell_36/dropout/CastCast%lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Cast®
lstm_cell_36/dropout/Mul_1Mullstm_cell_36/dropout/Mul:z:0lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout/Mul_1
lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_1/Const¹
lstm_cell_36/dropout_1/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Mul
lstm_cell_36/dropout_1/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_1/Shapeþ
3lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Òþ25
3lstm_cell_36/dropout_1/random_uniform/RandomUniform
%lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_1/GreaterEqual/yú
#lstm_cell_36/dropout_1/GreaterEqualGreaterEqual<lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_1/GreaterEqual¬
lstm_cell_36/dropout_1/CastCast'lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Cast¶
lstm_cell_36/dropout_1/Mul_1Mullstm_cell_36/dropout_1/Mul:z:0lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_1/Mul_1
lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_2/Const¹
lstm_cell_36/dropout_2/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Mul
lstm_cell_36/dropout_2/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_2/Shapeþ
3lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ð©Á25
3lstm_cell_36/dropout_2/random_uniform/RandomUniform
%lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_2/GreaterEqual/yú
#lstm_cell_36/dropout_2/GreaterEqualGreaterEqual<lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_2/GreaterEqual¬
lstm_cell_36/dropout_2/CastCast'lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Cast¶
lstm_cell_36/dropout_2/Mul_1Mullstm_cell_36/dropout_2/Mul:z:0lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_2/Mul_1
lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
lstm_cell_36/dropout_3/Const¹
lstm_cell_36/dropout_3/MulMullstm_cell_36/ones_like:output:0%lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Mul
lstm_cell_36/dropout_3/ShapeShapelstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_36/dropout_3/Shapeþ
3lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÙÌº25
3lstm_cell_36/dropout_3/random_uniform/RandomUniform
%lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2'
%lstm_cell_36/dropout_3/GreaterEqual/yú
#lstm_cell_36/dropout_3/GreaterEqualGreaterEqual<lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_cell_36/dropout_3/GreaterEqual¬
lstm_cell_36/dropout_3/CastCast'lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Cast¶
lstm_cell_36/dropout_3/Mul_1Mullstm_cell_36/dropout_3/Mul:z:0lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/dropout_3/Mul_1~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dim²
!lstm_cell_36/split/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_36/split/ReadVariableOpÛ
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0)lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_36/split
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul¡
lstm_cell_36/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1¡
lstm_cell_36/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_2¡
lstm_cell_36/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_3
lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_36/split_1/split_dim´
#lstm_cell_36/split_1/ReadVariableOpReadVariableOp,lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_36/split_1/ReadVariableOpÓ
lstm_cell_36/split_1Split'lstm_cell_36/split_1/split_dim:output:0+lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_36/split_1§
lstm_cell_36/BiasAddBiasAddlstm_cell_36/MatMul:product:0lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd­
lstm_cell_36/BiasAdd_1BiasAddlstm_cell_36/MatMul_1:product:0lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_1­
lstm_cell_36/BiasAdd_2BiasAddlstm_cell_36/MatMul_2:product:0lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_2­
lstm_cell_36/BiasAdd_3BiasAddlstm_cell_36/MatMul_3:product:0lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_3
lstm_cell_36/mulMulzeros:output:0lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul
lstm_cell_36/mul_1Mulzeros:output:0 lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_1
lstm_cell_36/mul_2Mulzeros:output:0 lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_2
lstm_cell_36/mul_3Mulzeros:output:0 lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_3 
lstm_cell_36/ReadVariableOpReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp
 lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_36/strided_slice/stack
"lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice/stack_1
"lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_36/strided_slice/stack_2Ê
lstm_cell_36/strided_sliceStridedSlice#lstm_cell_36/ReadVariableOp:value:0)lstm_cell_36/strided_slice/stack:output:0+lstm_cell_36/strided_slice/stack_1:output:0+lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice¥
lstm_cell_36/MatMul_4MatMullstm_cell_36/mul:z:0#lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_4
lstm_cell_36/addAddV2lstm_cell_36/BiasAdd:output:0lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add
lstm_cell_36/SigmoidSigmoidlstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid¤
lstm_cell_36/ReadVariableOp_1ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_1
"lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice_1/stack
$lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_36/strided_slice_1/stack_1
$lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_1/stack_2Ö
lstm_cell_36/strided_slice_1StridedSlice%lstm_cell_36/ReadVariableOp_1:value:0+lstm_cell_36/strided_slice_1/stack:output:0-lstm_cell_36/strided_slice_1/stack_1:output:0-lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_1©
lstm_cell_36/MatMul_5MatMullstm_cell_36/mul_1:z:0%lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_5¥
lstm_cell_36/add_1AddV2lstm_cell_36/BiasAdd_1:output:0lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mul_4Mullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_4¤
lstm_cell_36/ReadVariableOp_2ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_2
"lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_36/strided_slice_2/stack
$lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_36/strided_slice_2/stack_1
$lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_2/stack_2Ö
lstm_cell_36/strided_slice_2StridedSlice%lstm_cell_36/ReadVariableOp_2:value:0+lstm_cell_36/strided_slice_2/stack:output:0-lstm_cell_36/strided_slice_2/stack_1:output:0-lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_2©
lstm_cell_36/MatMul_6MatMullstm_cell_36/mul_2:z:0%lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_6¥
lstm_cell_36/add_2AddV2lstm_cell_36/BiasAdd_2:output:0lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_2x
lstm_cell_36/ReluRelulstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu
lstm_cell_36/mul_5Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_5
lstm_cell_36/add_3AddV2lstm_cell_36/mul_4:z:0lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_3¤
lstm_cell_36/ReadVariableOp_3ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_3
"lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_36/strided_slice_3/stack
$lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_36/strided_slice_3/stack_1
$lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_3/stack_2Ö
lstm_cell_36/strided_slice_3StridedSlice%lstm_cell_36/ReadVariableOp_3:value:0+lstm_cell_36/strided_slice_3/stack:output:0-lstm_cell_36/strided_slice_3/stack_1:output:0-lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_3©
lstm_cell_36/MatMul_7MatMullstm_cell_36/mul_3:z:0%lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_7¥
lstm_cell_36/add_4AddV2lstm_cell_36/BiasAdd_3:output:0lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_4
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_6Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_36_split_readvariableop_resource,lstm_cell_36_split_1_readvariableop_resource$lstm_cell_36_readvariableop_resource*
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
while_body_1224492*
condR
while_cond_1224491*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_36/ReadVariableOp^lstm_cell_36/ReadVariableOp_1^lstm_cell_36/ReadVariableOp_2^lstm_cell_36/ReadVariableOp_3"^lstm_cell_36/split/ReadVariableOp$^lstm_cell_36/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_36/ReadVariableOplstm_cell_36/ReadVariableOp2>
lstm_cell_36/ReadVariableOp_1lstm_cell_36/ReadVariableOp_12>
lstm_cell_36/ReadVariableOp_2lstm_cell_36/ReadVariableOp_22>
lstm_cell_36/ReadVariableOp_3lstm_cell_36/ReadVariableOp_32F
!lstm_cell_36/split/ReadVariableOp!lstm_cell_36/split/ReadVariableOp2J
#lstm_cell_36/split_1/ReadVariableOp#lstm_cell_36/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
ª
/__inference_sequential_15_layer_call_fn_1224311
input_16
unknown:	
	unknown_0:	
	unknown_1:	 
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_15_layer_call_and_return_conditional_losses_12242942
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
input_16
û²
¥	
while_body_1226493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_36_split_readvariableop_resource_0:	C
4while_lstm_cell_36_split_1_readvariableop_resource_0:	?
,while_lstm_cell_36_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_36_split_readvariableop_resource:	A
2while_lstm_cell_36_split_1_readvariableop_resource:	=
*while_lstm_cell_36_readvariableop_resource:	 ¢!while/lstm_cell_36/ReadVariableOp¢#while/lstm_cell_36/ReadVariableOp_1¢#while/lstm_cell_36/ReadVariableOp_2¢#while/lstm_cell_36/ReadVariableOp_3¢'while/lstm_cell_36/split/ReadVariableOp¢)while/lstm_cell_36/split_1/ReadVariableOpÃ
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
"while/lstm_cell_36/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_36/ones_like/Shape
"while/lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_36/ones_like/ConstÐ
while/lstm_cell_36/ones_likeFill+while/lstm_cell_36/ones_like/Shape:output:0+while/lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/ones_like
 while/lstm_cell_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2"
 while/lstm_cell_36/dropout/ConstË
while/lstm_cell_36/dropout/MulMul%while/lstm_cell_36/ones_like:output:0)while/lstm_cell_36/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_36/dropout/Mul
 while/lstm_cell_36/dropout/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_36/dropout/Shape
7while/lstm_cell_36/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_36/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2î29
7while/lstm_cell_36/dropout/random_uniform/RandomUniform
)while/lstm_cell_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2+
)while/lstm_cell_36/dropout/GreaterEqual/y
'while/lstm_cell_36/dropout/GreaterEqualGreaterEqual@while/lstm_cell_36/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'while/lstm_cell_36/dropout/GreaterEqual¸
while/lstm_cell_36/dropout/CastCast+while/lstm_cell_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_36/dropout/CastÆ
 while/lstm_cell_36/dropout/Mul_1Mul"while/lstm_cell_36/dropout/Mul:z:0#while/lstm_cell_36/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout/Mul_1
"while/lstm_cell_36/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_1/ConstÑ
 while/lstm_cell_36/dropout_1/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_1/Mul
"while/lstm_cell_36/dropout_1/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_1/Shape
9while/lstm_cell_36/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2²_2;
9while/lstm_cell_36/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_1/GreaterEqual/y
)while/lstm_cell_36/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_1/GreaterEqual¾
!while/lstm_cell_36/dropout_1/CastCast-while/lstm_cell_36/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_1/CastÎ
"while/lstm_cell_36/dropout_1/Mul_1Mul$while/lstm_cell_36/dropout_1/Mul:z:0%while/lstm_cell_36/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_1/Mul_1
"while/lstm_cell_36/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_2/ConstÑ
 while/lstm_cell_36/dropout_2/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_2/Mul
"while/lstm_cell_36/dropout_2/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_2/Shape
9while/lstm_cell_36/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2ÑÉØ2;
9while/lstm_cell_36/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_2/GreaterEqual/y
)while/lstm_cell_36/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_2/GreaterEqual¾
!while/lstm_cell_36/dropout_2/CastCast-while/lstm_cell_36/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_2/CastÎ
"while/lstm_cell_36/dropout_2/Mul_1Mul$while/lstm_cell_36/dropout_2/Mul:z:0%while/lstm_cell_36/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_2/Mul_1
"while/lstm_cell_36/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2$
"while/lstm_cell_36/dropout_3/ConstÑ
 while/lstm_cell_36/dropout_3/MulMul%while/lstm_cell_36/ones_like:output:0+while/lstm_cell_36/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_36/dropout_3/Mul
"while/lstm_cell_36/dropout_3/ShapeShape%while/lstm_cell_36/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_36/dropout_3/Shape
9while/lstm_cell_36/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_36/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2áÇ¥2;
9while/lstm_cell_36/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_36/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2-
+while/lstm_cell_36/dropout_3/GreaterEqual/y
)while/lstm_cell_36/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_36/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_36/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)while/lstm_cell_36/dropout_3/GreaterEqual¾
!while/lstm_cell_36/dropout_3/CastCast-while/lstm_cell_36/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_36/dropout_3/CastÎ
"while/lstm_cell_36/dropout_3/Mul_1Mul$while/lstm_cell_36/dropout_3/Mul:z:0%while/lstm_cell_36/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"while/lstm_cell_36/dropout_3/Mul_1
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dimÆ
'while/lstm_cell_36/split/ReadVariableOpReadVariableOp2while_lstm_cell_36_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/lstm_cell_36/split/ReadVariableOpó
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0/while/lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_36/splitÇ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulË
while/lstm_cell_36/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1Ë
while/lstm_cell_36/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_2Ë
while/lstm_cell_36/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_3
$while/lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_36/split_1/split_dimÈ
)while/lstm_cell_36/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_36_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_36/split_1/ReadVariableOpë
while/lstm_cell_36/split_1Split-while/lstm_cell_36/split_1/split_dim:output:01while/lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_36/split_1¿
while/lstm_cell_36/BiasAddBiasAdd#while/lstm_cell_36/MatMul:product:0#while/lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAddÅ
while/lstm_cell_36/BiasAdd_1BiasAdd%while/lstm_cell_36/MatMul_1:product:0#while/lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_1Å
while/lstm_cell_36/BiasAdd_2BiasAdd%while/lstm_cell_36/MatMul_2:product:0#while/lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_2Å
while/lstm_cell_36/BiasAdd_3BiasAdd%while/lstm_cell_36/MatMul_3:product:0#while/lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd_3¤
while/lstm_cell_36/mulMulwhile_placeholder_2$while/lstm_cell_36/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mulª
while/lstm_cell_36/mul_1Mulwhile_placeholder_2&while/lstm_cell_36/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_1ª
while/lstm_cell_36/mul_2Mulwhile_placeholder_2&while/lstm_cell_36/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_2ª
while/lstm_cell_36/mul_3Mulwhile_placeholder_2&while/lstm_cell_36/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_3´
!while/lstm_cell_36/ReadVariableOpReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02#
!while/lstm_cell_36/ReadVariableOp¡
&while/lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_36/strided_slice/stack¥
(while/lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice/stack_1¥
(while/lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_36/strided_slice/stack_2î
 while/lstm_cell_36/strided_sliceStridedSlice)while/lstm_cell_36/ReadVariableOp:value:0/while/lstm_cell_36/strided_slice/stack:output:01while/lstm_cell_36/strided_slice/stack_1:output:01while/lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_36/strided_slice½
while/lstm_cell_36/MatMul_4MatMulwhile/lstm_cell_36/mul:z:0)while/lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_4·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/BiasAdd:output:0%while/lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add
while/lstm_cell_36/SigmoidSigmoidwhile/lstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid¸
#while/lstm_cell_36/ReadVariableOp_1ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_1¥
(while/lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_36/strided_slice_1/stack©
*while/lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_36/strided_slice_1/stack_1©
*while/lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_1/stack_2ú
"while/lstm_cell_36/strided_slice_1StridedSlice+while/lstm_cell_36/ReadVariableOp_1:value:01while/lstm_cell_36/strided_slice_1/stack:output:03while/lstm_cell_36/strided_slice_1/stack_1:output:03while/lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_1Á
while/lstm_cell_36/MatMul_5MatMulwhile/lstm_cell_36/mul_1:z:0+while/lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_5½
while/lstm_cell_36/add_1AddV2%while/lstm_cell_36/BiasAdd_1:output:0%while/lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_1Sigmoidwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_1¤
while/lstm_cell_36/mul_4Mul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_4¸
#while/lstm_cell_36/ReadVariableOp_2ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_2¥
(while/lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_36/strided_slice_2/stack©
*while/lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_36/strided_slice_2/stack_1©
*while/lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_2/stack_2ú
"while/lstm_cell_36/strided_slice_2StridedSlice+while/lstm_cell_36/ReadVariableOp_2:value:01while/lstm_cell_36/strided_slice_2/stack:output:03while/lstm_cell_36/strided_slice_2/stack_1:output:03while/lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_2Á
while/lstm_cell_36/MatMul_6MatMulwhile/lstm_cell_36/mul_2:z:0+while/lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_6½
while/lstm_cell_36/add_2AddV2%while/lstm_cell_36/BiasAdd_2:output:0%while/lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_2
while/lstm_cell_36/ReluReluwhile/lstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_5Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_5«
while/lstm_cell_36/add_3AddV2while/lstm_cell_36/mul_4:z:0while/lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_3¸
#while/lstm_cell_36/ReadVariableOp_3ReadVariableOp,while_lstm_cell_36_readvariableop_resource_0*
_output_shapes
:	 *
dtype02%
#while/lstm_cell_36/ReadVariableOp_3¥
(while/lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_36/strided_slice_3/stack©
*while/lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_36/strided_slice_3/stack_1©
*while/lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_36/strided_slice_3/stack_2ú
"while/lstm_cell_36/strided_slice_3StridedSlice+while/lstm_cell_36/ReadVariableOp_3:value:01while/lstm_cell_36/strided_slice_3/stack:output:03while/lstm_cell_36/strided_slice_3/stack_1:output:03while/lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_36/strided_slice_3Á
while/lstm_cell_36/MatMul_7MatMulwhile/lstm_cell_36/mul_3:z:0+while/lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_7½
while/lstm_cell_36/add_4AddV2%while/lstm_cell_36/BiasAdd_3:output:0%while/lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/add_4
while/lstm_cell_36/Sigmoid_2Sigmoidwhile/lstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_6Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_36/ReadVariableOp$^while/lstm_cell_36/ReadVariableOp_1$^while/lstm_cell_36/ReadVariableOp_2$^while/lstm_cell_36/ReadVariableOp_3(^while/lstm_cell_36/split/ReadVariableOp*^while/lstm_cell_36/split_1/ReadVariableOp*"
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
*while_lstm_cell_36_readvariableop_resource,while_lstm_cell_36_readvariableop_resource_0"j
2while_lstm_cell_36_split_1_readvariableop_resource4while_lstm_cell_36_split_1_readvariableop_resource_0"f
0while_lstm_cell_36_split_readvariableop_resource2while_lstm_cell_36_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2F
!while/lstm_cell_36/ReadVariableOp!while/lstm_cell_36/ReadVariableOp2J
#while/lstm_cell_36/ReadVariableOp_1#while/lstm_cell_36/ReadVariableOp_12J
#while/lstm_cell_36/ReadVariableOp_2#while/lstm_cell_36/ReadVariableOp_22J
#while/lstm_cell_36/ReadVariableOp_3#while/lstm_cell_36/ReadVariableOp_32R
'while/lstm_cell_36/split/ReadVariableOp'while/lstm_cell_36/split/ReadVariableOp2V
)while/lstm_cell_36/split_1/ReadVariableOp)while/lstm_cell_36/split_1/ReadVariableOp: 
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
í
¨
E__inference_dense_45_layer_call_and_return_conditional_losses_1224260

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_45/bias/Regularizer/Square/ReadVariableOp
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
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_45/bias/Regularizer/Square/ReadVariableOp*"
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
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ë

è
lstm_36_while_cond_1225011,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3.
*lstm_36_while_less_lstm_36_strided_slice_1E
Alstm_36_while_lstm_36_while_cond_1225011___redundant_placeholder0E
Alstm_36_while_lstm_36_while_cond_1225011___redundant_placeholder1E
Alstm_36_while_lstm_36_while_cond_1225011___redundant_placeholder2E
Alstm_36_while_lstm_36_while_cond_1225011___redundant_placeholder3
lstm_36_while_identity

lstm_36/while/LessLesslstm_36_while_placeholder*lstm_36_while_less_lstm_36_strided_slice_1*
T0*
_output_shapes
: 2
lstm_36/while/Lessu
lstm_36/while/IdentityIdentitylstm_36/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_36/while/Identity"9
lstm_36_while_identitylstm_36/while/Identity:output:0*(
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
§v
ê
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1223543

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	 
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
seed2 Á2&
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
seed2êÏ2(
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
seed2ï¢ä2(
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
dropout_3/ShapeÖ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seedÒ	*
seed2Ê+2(
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2,
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
ð

(sequential_15_lstm_36_while_cond_1223036H
Dsequential_15_lstm_36_while_sequential_15_lstm_36_while_loop_counterN
Jsequential_15_lstm_36_while_sequential_15_lstm_36_while_maximum_iterations+
'sequential_15_lstm_36_while_placeholder-
)sequential_15_lstm_36_while_placeholder_1-
)sequential_15_lstm_36_while_placeholder_2-
)sequential_15_lstm_36_while_placeholder_3J
Fsequential_15_lstm_36_while_less_sequential_15_lstm_36_strided_slice_1a
]sequential_15_lstm_36_while_sequential_15_lstm_36_while_cond_1223036___redundant_placeholder0a
]sequential_15_lstm_36_while_sequential_15_lstm_36_while_cond_1223036___redundant_placeholder1a
]sequential_15_lstm_36_while_sequential_15_lstm_36_while_cond_1223036___redundant_placeholder2a
]sequential_15_lstm_36_while_sequential_15_lstm_36_while_cond_1223036___redundant_placeholder3(
$sequential_15_lstm_36_while_identity
Þ
 sequential_15/lstm_36/while/LessLess'sequential_15_lstm_36_while_placeholderFsequential_15_lstm_36_while_less_sequential_15_lstm_36_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_15/lstm_36/while/Less
$sequential_15/lstm_36/while/IdentityIdentity$sequential_15/lstm_36/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_15/lstm_36/while/Identity"U
$sequential_15_lstm_36_while_identity-sequential_15/lstm_36/while/Identity:output:0*(
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
)__inference_lstm_36_layer_call_fn_1225536
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_12236962
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
á¡
¨
D__inference_lstm_36_layer_call_and_return_conditional_losses_1224219

inputs=
*lstm_cell_36_split_readvariableop_resource:	;
,lstm_cell_36_split_1_readvariableop_resource:	7
$lstm_cell_36_readvariableop_resource:	 
identity¢=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_36/ReadVariableOp¢lstm_cell_36/ReadVariableOp_1¢lstm_cell_36/ReadVariableOp_2¢lstm_cell_36/ReadVariableOp_3¢!lstm_cell_36/split/ReadVariableOp¢#lstm_cell_36/split_1/ReadVariableOp¢whileD
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
lstm_cell_36/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_36/ones_like/Shape
lstm_cell_36/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_36/ones_like/Const¸
lstm_cell_36/ones_likeFill%lstm_cell_36/ones_like/Shape:output:0%lstm_cell_36/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/ones_like~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dim²
!lstm_cell_36/split/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02#
!lstm_cell_36/split/ReadVariableOpÛ
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0)lstm_cell_36/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_36/split
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul¡
lstm_cell_36/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1¡
lstm_cell_36/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_2¡
lstm_cell_36/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_3
lstm_cell_36/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_36/split_1/split_dim´
#lstm_cell_36/split_1/ReadVariableOpReadVariableOp,lstm_cell_36_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_36/split_1/ReadVariableOpÓ
lstm_cell_36/split_1Split'lstm_cell_36/split_1/split_dim:output:0+lstm_cell_36/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_36/split_1§
lstm_cell_36/BiasAddBiasAddlstm_cell_36/MatMul:product:0lstm_cell_36/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd­
lstm_cell_36/BiasAdd_1BiasAddlstm_cell_36/MatMul_1:product:0lstm_cell_36/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_1­
lstm_cell_36/BiasAdd_2BiasAddlstm_cell_36/MatMul_2:product:0lstm_cell_36/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_2­
lstm_cell_36/BiasAdd_3BiasAddlstm_cell_36/MatMul_3:product:0lstm_cell_36/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd_3
lstm_cell_36/mulMulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul
lstm_cell_36/mul_1Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_1
lstm_cell_36/mul_2Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_2
lstm_cell_36/mul_3Mulzeros:output:0lstm_cell_36/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_3 
lstm_cell_36/ReadVariableOpReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp
 lstm_cell_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_36/strided_slice/stack
"lstm_cell_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice/stack_1
"lstm_cell_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_36/strided_slice/stack_2Ê
lstm_cell_36/strided_sliceStridedSlice#lstm_cell_36/ReadVariableOp:value:0)lstm_cell_36/strided_slice/stack:output:0+lstm_cell_36/strided_slice/stack_1:output:0+lstm_cell_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice¥
lstm_cell_36/MatMul_4MatMullstm_cell_36/mul:z:0#lstm_cell_36/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_4
lstm_cell_36/addAddV2lstm_cell_36/BiasAdd:output:0lstm_cell_36/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add
lstm_cell_36/SigmoidSigmoidlstm_cell_36/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid¤
lstm_cell_36/ReadVariableOp_1ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_1
"lstm_cell_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_36/strided_slice_1/stack
$lstm_cell_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_36/strided_slice_1/stack_1
$lstm_cell_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_1/stack_2Ö
lstm_cell_36/strided_slice_1StridedSlice%lstm_cell_36/ReadVariableOp_1:value:0+lstm_cell_36/strided_slice_1/stack:output:0-lstm_cell_36/strided_slice_1/stack_1:output:0-lstm_cell_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_1©
lstm_cell_36/MatMul_5MatMullstm_cell_36/mul_1:z:0%lstm_cell_36/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_5¥
lstm_cell_36/add_1AddV2lstm_cell_36/BiasAdd_1:output:0lstm_cell_36/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mul_4Mullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_4¤
lstm_cell_36/ReadVariableOp_2ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_2
"lstm_cell_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_36/strided_slice_2/stack
$lstm_cell_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_36/strided_slice_2/stack_1
$lstm_cell_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_2/stack_2Ö
lstm_cell_36/strided_slice_2StridedSlice%lstm_cell_36/ReadVariableOp_2:value:0+lstm_cell_36/strided_slice_2/stack:output:0-lstm_cell_36/strided_slice_2/stack_1:output:0-lstm_cell_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_2©
lstm_cell_36/MatMul_6MatMullstm_cell_36/mul_2:z:0%lstm_cell_36/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_6¥
lstm_cell_36/add_2AddV2lstm_cell_36/BiasAdd_2:output:0lstm_cell_36/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_2x
lstm_cell_36/ReluRelulstm_cell_36/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu
lstm_cell_36/mul_5Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_5
lstm_cell_36/add_3AddV2lstm_cell_36/mul_4:z:0lstm_cell_36/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_3¤
lstm_cell_36/ReadVariableOp_3ReadVariableOp$lstm_cell_36_readvariableop_resource*
_output_shapes
:	 *
dtype02
lstm_cell_36/ReadVariableOp_3
"lstm_cell_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_36/strided_slice_3/stack
$lstm_cell_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_36/strided_slice_3/stack_1
$lstm_cell_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_36/strided_slice_3/stack_2Ö
lstm_cell_36/strided_slice_3StridedSlice%lstm_cell_36/ReadVariableOp_3:value:0+lstm_cell_36/strided_slice_3/stack:output:0-lstm_cell_36/strided_slice_3/stack_1:output:0-lstm_cell_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_36/strided_slice_3©
lstm_cell_36/MatMul_7MatMullstm_cell_36/mul_3:z:0%lstm_cell_36/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_7¥
lstm_cell_36/add_4AddV2lstm_cell_36/BiasAdd_3:output:0lstm_cell_36/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add_4
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_6Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/mul_6
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_36_split_readvariableop_resource,lstm_cell_36_split_1_readvariableop_resource$lstm_cell_36_readvariableop_resource*
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
while_body_1224086*
condR
while_cond_1224085*K
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
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_36_split_readvariableop_resource*
_output_shapes
:	*
dtype02?
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_36/lstm_cell_36/kernel/Regularizer/SquareSquareElstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	20
.lstm_36/lstm_cell_36/kernel/Regularizer/Square¯
-lstm_36/lstm_cell_36/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_36/lstm_cell_36/kernel/Regularizer/Constî
+lstm_36/lstm_cell_36/kernel/Regularizer/SumSum2lstm_36/lstm_cell_36/kernel/Regularizer/Square:y:06lstm_36/lstm_cell_36/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/Sum£
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_36/lstm_cell_36/kernel/Regularizer/mul/xð
+lstm_36/lstm_cell_36/kernel/Regularizer/mulMul6lstm_36/lstm_cell_36/kernel/Regularizer/mul/x:output:04lstm_36/lstm_cell_36/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_36/lstm_cell_36/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÞ
NoOpNoOp>^lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_36/ReadVariableOp^lstm_cell_36/ReadVariableOp_1^lstm_cell_36/ReadVariableOp_2^lstm_cell_36/ReadVariableOp_3"^lstm_cell_36/split/ReadVariableOp$^lstm_cell_36/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2~
=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp=lstm_36/lstm_cell_36/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_36/ReadVariableOplstm_cell_36/ReadVariableOp2>
lstm_cell_36/ReadVariableOp_1lstm_cell_36/ReadVariableOp_12>
lstm_cell_36/ReadVariableOp_2lstm_cell_36/ReadVariableOp_22>
lstm_cell_36/ReadVariableOp_3lstm_cell_36/ReadVariableOp_32F
!lstm_cell_36/split/ReadVariableOp!lstm_cell_36/split/ReadVariableOp2J
#lstm_cell_36/split_1/ReadVariableOp#lstm_cell_36/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
È
while_cond_1223323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1223323___redundant_placeholder05
1while_while_cond_1223323___redundant_placeholder15
1while_while_cond_1223323___redundant_placeholder25
1while_while_cond_1223323___redundant_placeholder3
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
__inference_loss_fn_0_1226738F
8dense_45_bias_regularizer_square_readvariableop_resource:
identity¢/dense_45/bias/Regularizer/Square/ReadVariableOp×
/dense_45/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_45_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_45/bias/Regularizer/Square/ReadVariableOp¬
 dense_45/bias/Regularizer/SquareSquare7dense_45/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_45/bias/Regularizer/Square
dense_45/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_45/bias/Regularizer/Const¶
dense_45/bias/Regularizer/SumSum$dense_45/bias/Regularizer/Square:y:0(dense_45/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/Sum
dense_45/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2!
dense_45/bias/Regularizer/mul/x¸
dense_45/bias/Regularizer/mulMul(dense_45/bias/Regularizer/mul/x:output:0&dense_45/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_45/bias/Regularizer/mulk
IdentityIdentity!dense_45/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp0^dense_45/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_45/bias/Regularizer/Square/ReadVariableOp/dense_45/bias/Regularizer/Square/ReadVariableOp
Ú
È
while_cond_1225942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1225942___redundant_placeholder05
1while_while_cond_1225942___redundant_placeholder15
1while_while_cond_1225942___redundant_placeholder25
1while_while_cond_1225942___redundant_placeholder3
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
input_165
serving_default_input_16:0ÿÿÿÿÿÿÿÿÿB

reshape_224
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
!:  2dense_44/kernel
: 2dense_44/bias
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
!: 2dense_45/kernel
:2dense_45/bias
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
.:,	2lstm_36/lstm_cell_36/kernel
8:6	 2%lstm_36/lstm_cell_36/recurrent_kernel
(:&2lstm_36/lstm_cell_36/bias
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
&:$  2Adam/dense_44/kernel/m
 : 2Adam/dense_44/bias/m
&:$ 2Adam/dense_45/kernel/m
 :2Adam/dense_45/bias/m
3:1	2"Adam/lstm_36/lstm_cell_36/kernel/m
=:;	 2,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m
-:+2 Adam/lstm_36/lstm_cell_36/bias/m
&:$  2Adam/dense_44/kernel/v
 : 2Adam/dense_44/bias/v
&:$ 2Adam/dense_45/kernel/v
 :2Adam/dense_45/bias/v
3:1	2"Adam/lstm_36/lstm_cell_36/kernel/v
=:;	 2,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v
-:+2 Adam/lstm_36/lstm_cell_36/bias/v
ÎBË
"__inference__wrapped_model_1223186input_16"
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
/__inference_sequential_15_layer_call_fn_1224311
/__inference_sequential_15_layer_call_fn_1224883
/__inference_sequential_15_layer_call_fn_1224902
/__inference_sequential_15_layer_call_fn_1224757À
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
J__inference_sequential_15_layer_call_and_return_conditional_losses_1225173
J__inference_sequential_15_layer_call_and_return_conditional_losses_1225508
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224791
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224825À
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
)__inference_lstm_36_layer_call_fn_1225525
)__inference_lstm_36_layer_call_fn_1225536
)__inference_lstm_36_layer_call_fn_1225547
)__inference_lstm_36_layer_call_fn_1225558Õ
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_1225801
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226108
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226351
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226658Õ
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
*__inference_dense_44_layer_call_fn_1226667¢
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
E__inference_dense_44_layer_call_and_return_conditional_losses_1226678¢
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
*__inference_dense_45_layer_call_fn_1226693¢
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
E__inference_dense_45_layer_call_and_return_conditional_losses_1226709¢
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
,__inference_reshape_22_layer_call_fn_1226714¢
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
G__inference_reshape_22_layer_call_and_return_conditional_losses_1226727¢
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
__inference_loss_fn_0_1226738
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
%__inference_signature_wrapper_1224864input_16"
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
.__inference_lstm_cell_36_layer_call_fn_1226761
.__inference_lstm_cell_36_layer_call_fn_1226778¾
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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1226859
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1226972¾
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
__inference_loss_fn_1_1226983
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
"__inference__wrapped_model_1223186}&('5¢2
+¢(
&#
input_16ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_22(%

reshape_22ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_44_layer_call_and_return_conditional_losses_1226678\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dense_44_layer_call_fn_1226667O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dense_45_layer_call_and_return_conditional_losses_1226709\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_45_layer_call_fn_1226693O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_1226738¢

¢ 
ª " <
__inference_loss_fn_1_1226983&¢

¢ 
ª " Å
D__inference_lstm_36_layer_call_and_return_conditional_losses_1225801}&('O¢L
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226108}&('O¢L
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226351m&('?¢<
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
D__inference_lstm_36_layer_call_and_return_conditional_losses_1226658m&('?¢<
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
)__inference_lstm_36_layer_call_fn_1225525p&('O¢L
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
)__inference_lstm_36_layer_call_fn_1225536p&('O¢L
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
)__inference_lstm_36_layer_call_fn_1225547`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
)__inference_lstm_36_layer_call_fn_1225558`&('?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ë
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1226859ý&('¢}
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
I__inference_lstm_cell_36_layer_call_and_return_conditional_losses_1226972ý&('¢}
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
.__inference_lstm_cell_36_layer_call_fn_1226761í&('¢}
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
.__inference_lstm_cell_36_layer_call_fn_1226778í&('¢}
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
G__inference_reshape_22_layer_call_and_return_conditional_losses_1226727\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_reshape_22_layer_call_fn_1226714O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÁ
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224791s&('=¢:
3¢0
&#
input_16ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_15_layer_call_and_return_conditional_losses_1224825s&('=¢:
3¢0
&#
input_16ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_15_layer_call_and_return_conditional_losses_1225173q&(';¢8
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
J__inference_sequential_15_layer_call_and_return_conditional_losses_1225508q&(';¢8
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
/__inference_sequential_15_layer_call_fn_1224311f&('=¢:
3¢0
&#
input_16ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_15_layer_call_fn_1224757f&('=¢:
3¢0
&#
input_16ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_15_layer_call_fn_1224883d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_15_layer_call_fn_1224902d&(';¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ³
%__inference_signature_wrapper_1224864&('A¢>
¢ 
7ª4
2
input_16&#
input_16ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_22(%

reshape_22ÿÿÿÿÿÿÿÿÿ