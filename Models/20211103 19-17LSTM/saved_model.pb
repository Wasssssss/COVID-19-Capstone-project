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
dense_116/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_116/kernel
u
$dense_116/kernel/Read/ReadVariableOpReadVariableOpdense_116/kernel*
_output_shapes

:  *
dtype0
t
dense_116/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_116/bias
m
"dense_116/bias/Read/ReadVariableOpReadVariableOpdense_116/bias*
_output_shapes
: *
dtype0
|
dense_117/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_117/kernel
u
$dense_117/kernel/Read/ReadVariableOpReadVariableOpdense_117/kernel*
_output_shapes

: *
dtype0
t
dense_117/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_117/bias
m
"dense_117/bias/Read/ReadVariableOpReadVariableOpdense_117/bias*
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
lstm_96/lstm_cell_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_96/lstm_cell_96/kernel
?
/lstm_96/lstm_cell_96/kernel/Read/ReadVariableOpReadVariableOplstm_96/lstm_cell_96/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_96/lstm_cell_96/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*6
shared_name'%lstm_96/lstm_cell_96/recurrent_kernel
?
9lstm_96/lstm_cell_96/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_96/lstm_cell_96/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_96/lstm_cell_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_96/lstm_cell_96/bias
?
-lstm_96/lstm_cell_96/bias/Read/ReadVariableOpReadVariableOplstm_96/lstm_cell_96/bias*
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
Adam/dense_116/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_116/kernel/m
?
+Adam/dense_116/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_116/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_116/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_116/bias/m
{
)Adam/dense_116/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_116/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_117/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_117/kernel/m
?
+Adam/dense_117/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_117/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_117/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_117/bias/m
{
)Adam/dense_117/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_117/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_96/lstm_cell_96/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_96/lstm_cell_96/kernel/m
?
6Adam/lstm_96/lstm_cell_96/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_96/lstm_cell_96/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_96/lstm_cell_96/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m
?
@Adam/lstm_96/lstm_cell_96/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_96/lstm_cell_96/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_96/lstm_cell_96/bias/m
?
4Adam/lstm_96/lstm_cell_96/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_96/lstm_cell_96/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_116/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_116/kernel/v
?
+Adam/dense_116/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_116/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_116/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_116/bias/v
{
)Adam/dense_116/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_116/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_117/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_117/kernel/v
?
+Adam/dense_117/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_117/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_117/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_117/bias/v
{
)Adam/dense_117/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_117/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_96/lstm_cell_96/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_96/lstm_cell_96/kernel/v
?
6Adam/lstm_96/lstm_cell_96/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_96/lstm_cell_96/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_96/lstm_cell_96/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*=
shared_name.,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v
?
@Adam/lstm_96/lstm_cell_96/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
 Adam/lstm_96/lstm_cell_96/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_96/lstm_cell_96/bias/v
?
4Adam/lstm_96/lstm_cell_96/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_96/lstm_cell_96/bias/v*
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
VARIABLE_VALUEdense_116/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_116/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_117/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_117/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_96/lstm_cell_96/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_96/lstm_cell_96/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_96/lstm_cell_96/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEAdam/dense_116/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_116/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_117/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_117/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_96/lstm_cell_96/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_96/lstm_cell_96/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_96/lstm_cell_96/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_116/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_116/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_117/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_117/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_96/lstm_cell_96/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_96/lstm_cell_96/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_96/lstm_cell_96/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_40Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_40lstm_96/lstm_cell_96/kernellstm_96/lstm_cell_96/bias%lstm_96/lstm_cell_96/recurrent_kerneldense_116/kerneldense_116/biasdense_117/kerneldense_117/bias*
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
%__inference_signature_wrapper_3085944
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_116/kernel/Read/ReadVariableOp"dense_116/bias/Read/ReadVariableOp$dense_117/kernel/Read/ReadVariableOp"dense_117/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_96/lstm_cell_96/kernel/Read/ReadVariableOp9lstm_96/lstm_cell_96/recurrent_kernel/Read/ReadVariableOp-lstm_96/lstm_cell_96/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_116/kernel/m/Read/ReadVariableOp)Adam/dense_116/bias/m/Read/ReadVariableOp+Adam/dense_117/kernel/m/Read/ReadVariableOp)Adam/dense_117/bias/m/Read/ReadVariableOp6Adam/lstm_96/lstm_cell_96/kernel/m/Read/ReadVariableOp@Adam/lstm_96/lstm_cell_96/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_96/lstm_cell_96/bias/m/Read/ReadVariableOp+Adam/dense_116/kernel/v/Read/ReadVariableOp)Adam/dense_116/bias/v/Read/ReadVariableOp+Adam/dense_117/kernel/v/Read/ReadVariableOp)Adam/dense_117/bias/v/Read/ReadVariableOp6Adam/lstm_96/lstm_cell_96/kernel/v/Read/ReadVariableOp@Adam/lstm_96/lstm_cell_96/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_96/lstm_cell_96/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_3088170
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_116/kerneldense_116/biasdense_117/kerneldense_117/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_96/lstm_cell_96/kernel%lstm_96/lstm_cell_96/recurrent_kernellstm_96/lstm_cell_96/biastotalcountAdam/dense_116/kernel/mAdam/dense_116/bias/mAdam/dense_117/kernel/mAdam/dense_117/bias/m"Adam/lstm_96/lstm_cell_96/kernel/m,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m Adam/lstm_96/lstm_cell_96/bias/mAdam/dense_116/kernel/vAdam/dense_116/bias/vAdam/dense_117/kernel/vAdam/dense_117/bias/v"Adam/lstm_96/lstm_cell_96/kernel/v,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v Adam/lstm_96/lstm_cell_96/bias/v*(
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
#__inference__traced_restore_3088264??$
?R
?
D__inference_lstm_96_layer_call_and_return_conditional_losses_3084479

inputs'
lstm_cell_96_3084391:	?#
lstm_cell_96_3084393:	?'
lstm_cell_96_3084395:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_96/StatefulPartitionedCall?whileD
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
$lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_96_3084391lstm_cell_96_3084393lstm_cell_96_3084395*
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_30843902&
$lstm_cell_96/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_96_3084391lstm_cell_96_3084393lstm_cell_96_3084395*
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
while_body_3084404*
condR
while_cond_3084403*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_96_3084391*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_96/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_96/StatefulPartitionedCall$lstm_cell_96/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_96_while_cond_3086091,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3.
*lstm_96_while_less_lstm_96_strided_slice_1E
Alstm_96_while_lstm_96_while_cond_3086091___redundant_placeholder0E
Alstm_96_while_lstm_96_while_cond_3086091___redundant_placeholder1E
Alstm_96_while_lstm_96_while_cond_3086091___redundant_placeholder2E
Alstm_96_while_lstm_96_while_cond_3086091___redundant_placeholder3
lstm_96_while_identity
?
lstm_96/while/LessLesslstm_96_while_placeholder*lstm_96_while_less_lstm_96_strided_slice_1*
T0*
_output_shapes
: 2
lstm_96/while/Lessu
lstm_96/while/IdentityIdentitylstm_96/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_96/while/Identity"9
lstm_96_while_identitylstm_96/while/Identity:output:0*(
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
while_cond_3086747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3086747___redundant_placeholder05
1while_while_cond_3086747___redundant_placeholder15
1while_while_cond_3086747___redundant_placeholder25
1while_while_cond_3086747___redundant_placeholder3
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
while_body_3084701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_96_3084725_0:	?+
while_lstm_cell_96_3084727_0:	?/
while_lstm_cell_96_3084729_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_96_3084725:	?)
while_lstm_cell_96_3084727:	?-
while_lstm_cell_96_3084729:	 ???*while/lstm_cell_96/StatefulPartitionedCall?
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
*while/lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_96_3084725_0while_lstm_cell_96_3084727_0while_lstm_cell_96_3084729_0*
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_30846232,
*while/lstm_cell_96/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_96/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_96/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_96/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_96/StatefulPartitionedCall*"
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
while_lstm_cell_96_3084725while_lstm_cell_96_3084725_0":
while_lstm_cell_96_3084727while_lstm_cell_96_3084727_0":
while_lstm_cell_96_3084729while_lstm_cell_96_3084729_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_96/StatefulPartitionedCall*while/lstm_cell_96/StatefulPartitionedCall: 
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
while_cond_3085165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3085165___redundant_placeholder05
1while_while_cond_3085165___redundant_placeholder15
1while_while_cond_3085165___redundant_placeholder25
1while_while_cond_3085165___redundant_placeholder3
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
)__inference_lstm_96_layer_call_fn_3086616
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30847762
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
?
?
+__inference_dense_116_layer_call_fn_3087747

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
F__inference_dense_116_layer_call_and_return_conditional_losses_30853182
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
?	
while_body_3087573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_96_split_readvariableop_resource_0:	?C
4while_lstm_cell_96_split_1_readvariableop_resource_0:	??
,while_lstm_cell_96_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_96_split_readvariableop_resource:	?A
2while_lstm_cell_96_split_1_readvariableop_resource:	?=
*while_lstm_cell_96_readvariableop_resource:	 ???!while/lstm_cell_96/ReadVariableOp?#while/lstm_cell_96/ReadVariableOp_1?#while/lstm_cell_96/ReadVariableOp_2?#while/lstm_cell_96/ReadVariableOp_3?'while/lstm_cell_96/split/ReadVariableOp?)while/lstm_cell_96/split_1/ReadVariableOp?
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
"while/lstm_cell_96/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_96/ones_like/Shape?
"while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_96/ones_like/Const?
while/lstm_cell_96/ones_likeFill+while/lstm_cell_96/ones_like/Shape:output:0+while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/ones_like?
 while/lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_96/dropout/Const?
while/lstm_cell_96/dropout/MulMul%while/lstm_cell_96/ones_like:output:0)while/lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_96/dropout/Mul?
 while/lstm_cell_96/dropout/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_96/dropout/Shape?
7while/lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_96/dropout/random_uniform/RandomUniform?
)while/lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_96/dropout/GreaterEqual/y?
'while/lstm_cell_96/dropout/GreaterEqualGreaterEqual@while/lstm_cell_96/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_96/dropout/GreaterEqual?
while/lstm_cell_96/dropout/CastCast+while/lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_96/dropout/Cast?
 while/lstm_cell_96/dropout/Mul_1Mul"while/lstm_cell_96/dropout/Mul:z:0#while/lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout/Mul_1?
"while/lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_1/Const?
 while/lstm_cell_96/dropout_1/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_1/Mul?
"while/lstm_cell_96/dropout_1/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_1/Shape?
9while/lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_96/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_1/GreaterEqual/y?
)while/lstm_cell_96/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_1/GreaterEqual?
!while/lstm_cell_96/dropout_1/CastCast-while/lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_1/Cast?
"while/lstm_cell_96/dropout_1/Mul_1Mul$while/lstm_cell_96/dropout_1/Mul:z:0%while/lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_1/Mul_1?
"while/lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_2/Const?
 while/lstm_cell_96/dropout_2/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_2/Mul?
"while/lstm_cell_96/dropout_2/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_2/Shape?
9while/lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2̷2;
9while/lstm_cell_96/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_2/GreaterEqual/y?
)while/lstm_cell_96/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_2/GreaterEqual?
!while/lstm_cell_96/dropout_2/CastCast-while/lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_2/Cast?
"while/lstm_cell_96/dropout_2/Mul_1Mul$while/lstm_cell_96/dropout_2/Mul:z:0%while/lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_2/Mul_1?
"while/lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_3/Const?
 while/lstm_cell_96/dropout_3/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_3/Mul?
"while/lstm_cell_96/dropout_3/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_3/Shape?
9while/lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_96/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_3/GreaterEqual/y?
)while/lstm_cell_96/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_3/GreaterEqual?
!while/lstm_cell_96/dropout_3/CastCast-while/lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_3/Cast?
"while/lstm_cell_96/dropout_3/Mul_1Mul$while/lstm_cell_96/dropout_3/Mul:z:0%while/lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_3/Mul_1?
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_96/split/split_dim?
'while/lstm_cell_96/split/ReadVariableOpReadVariableOp2while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_96/split/ReadVariableOp?
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_96/split?
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul?
while/lstm_cell_96/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_1?
while/lstm_cell_96/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_2?
while/lstm_cell_96/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_3?
$while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_96/split_1/split_dim?
)while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_96/split_1/ReadVariableOp?
while/lstm_cell_96/split_1Split-while/lstm_cell_96/split_1/split_dim:output:01while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_96/split_1?
while/lstm_cell_96/BiasAddBiasAdd#while/lstm_cell_96/MatMul:product:0#while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd?
while/lstm_cell_96/BiasAdd_1BiasAdd%while/lstm_cell_96/MatMul_1:product:0#while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_1?
while/lstm_cell_96/BiasAdd_2BiasAdd%while/lstm_cell_96/MatMul_2:product:0#while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_2?
while/lstm_cell_96/BiasAdd_3BiasAdd%while/lstm_cell_96/MatMul_3:product:0#while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_3?
while/lstm_cell_96/mulMulwhile_placeholder_2$while/lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul?
while/lstm_cell_96/mul_1Mulwhile_placeholder_2&while/lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_1?
while/lstm_cell_96/mul_2Mulwhile_placeholder_2&while/lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_2?
while/lstm_cell_96/mul_3Mulwhile_placeholder_2&while/lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_3?
!while/lstm_cell_96/ReadVariableOpReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_96/ReadVariableOp?
&while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_96/strided_slice/stack?
(while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice/stack_1?
(while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_96/strided_slice/stack_2?
 while/lstm_cell_96/strided_sliceStridedSlice)while/lstm_cell_96/ReadVariableOp:value:0/while/lstm_cell_96/strided_slice/stack:output:01while/lstm_cell_96/strided_slice/stack_1:output:01while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_96/strided_slice?
while/lstm_cell_96/MatMul_4MatMulwhile/lstm_cell_96/mul:z:0)while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_4?
while/lstm_cell_96/addAddV2#while/lstm_cell_96/BiasAdd:output:0%while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add?
while/lstm_cell_96/SigmoidSigmoidwhile/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid?
#while/lstm_cell_96/ReadVariableOp_1ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_1?
(while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice_1/stack?
*while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_96/strided_slice_1/stack_1?
*while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_1/stack_2?
"while/lstm_cell_96/strided_slice_1StridedSlice+while/lstm_cell_96/ReadVariableOp_1:value:01while/lstm_cell_96/strided_slice_1/stack:output:03while/lstm_cell_96/strided_slice_1/stack_1:output:03while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_1?
while/lstm_cell_96/MatMul_5MatMulwhile/lstm_cell_96/mul_1:z:0+while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_5?
while/lstm_cell_96/add_1AddV2%while/lstm_cell_96/BiasAdd_1:output:0%while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_1?
while/lstm_cell_96/Sigmoid_1Sigmoidwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_1?
while/lstm_cell_96/mul_4Mul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_4?
#while/lstm_cell_96/ReadVariableOp_2ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_2?
(while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_96/strided_slice_2/stack?
*while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_96/strided_slice_2/stack_1?
*while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_2/stack_2?
"while/lstm_cell_96/strided_slice_2StridedSlice+while/lstm_cell_96/ReadVariableOp_2:value:01while/lstm_cell_96/strided_slice_2/stack:output:03while/lstm_cell_96/strided_slice_2/stack_1:output:03while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_2?
while/lstm_cell_96/MatMul_6MatMulwhile/lstm_cell_96/mul_2:z:0+while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_6?
while/lstm_cell_96/add_2AddV2%while/lstm_cell_96/BiasAdd_2:output:0%while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_2?
while/lstm_cell_96/ReluReluwhile/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu?
while/lstm_cell_96/mul_5Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_5?
while/lstm_cell_96/add_3AddV2while/lstm_cell_96/mul_4:z:0while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_3?
#while/lstm_cell_96/ReadVariableOp_3ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_3?
(while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_96/strided_slice_3/stack?
*while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_96/strided_slice_3/stack_1?
*while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_3/stack_2?
"while/lstm_cell_96/strided_slice_3StridedSlice+while/lstm_cell_96/ReadVariableOp_3:value:01while/lstm_cell_96/strided_slice_3/stack:output:03while/lstm_cell_96/strided_slice_3/stack_1:output:03while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_3?
while/lstm_cell_96/MatMul_7MatMulwhile/lstm_cell_96/mul_3:z:0+while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_7?
while/lstm_cell_96/add_4AddV2%while/lstm_cell_96/BiasAdd_3:output:0%while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_4?
while/lstm_cell_96/Sigmoid_2Sigmoidwhile/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_2?
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu_1?
while/lstm_cell_96/mul_6Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_96/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_96/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_96/ReadVariableOp$^while/lstm_cell_96/ReadVariableOp_1$^while/lstm_cell_96/ReadVariableOp_2$^while/lstm_cell_96/ReadVariableOp_3(^while/lstm_cell_96/split/ReadVariableOp*^while/lstm_cell_96/split_1/ReadVariableOp*"
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
*while_lstm_cell_96_readvariableop_resource,while_lstm_cell_96_readvariableop_resource_0"j
2while_lstm_cell_96_split_1_readvariableop_resource4while_lstm_cell_96_split_1_readvariableop_resource_0"f
0while_lstm_cell_96_split_readvariableop_resource2while_lstm_cell_96_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_96/ReadVariableOp!while/lstm_cell_96/ReadVariableOp2J
#while/lstm_cell_96/ReadVariableOp_1#while/lstm_cell_96/ReadVariableOp_12J
#while/lstm_cell_96/ReadVariableOp_2#while/lstm_cell_96/ReadVariableOp_22J
#while/lstm_cell_96/ReadVariableOp_3#while/lstm_cell_96/ReadVariableOp_32R
'while/lstm_cell_96/split/ReadVariableOp'while/lstm_cell_96/split/ReadVariableOp2V
)while/lstm_cell_96/split_1/ReadVariableOp)while/lstm_cell_96/split_1/ReadVariableOp: 
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
c
G__inference_reshape_58_layer_call_and_return_conditional_losses_3085359

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
/__inference_sequential_39_layer_call_fn_3085963

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
J__inference_sequential_39_layer_call_and_return_conditional_losses_30853742
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
?%
?
while_body_3084404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_96_3084428_0:	?+
while_lstm_cell_96_3084430_0:	?/
while_lstm_cell_96_3084432_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_96_3084428:	?)
while_lstm_cell_96_3084430:	?-
while_lstm_cell_96_3084432:	 ???*while/lstm_cell_96/StatefulPartitionedCall?
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
*while/lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_96_3084428_0while_lstm_cell_96_3084430_0while_lstm_cell_96_3084432_0*
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_30843902,
*while/lstm_cell_96/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_96/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_96/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_96/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_96/StatefulPartitionedCall*"
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
while_lstm_cell_96_3084428while_lstm_cell_96_3084428_0":
while_lstm_cell_96_3084430while_lstm_cell_96_3084430_0":
while_lstm_cell_96_3084432while_lstm_cell_96_3084432_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2X
*while/lstm_cell_96/StatefulPartitionedCall*while/lstm_cell_96/StatefulPartitionedCall: 
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
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085374

inputs"
lstm_96_3085300:	?
lstm_96_3085302:	?"
lstm_96_3085304:	 ?#
dense_116_3085319:  
dense_116_3085321: #
dense_117_3085341: 
dense_117_3085343:
identity??!dense_116/StatefulPartitionedCall?!dense_117/StatefulPartitionedCall?0dense_117/bias/Regularizer/Square/ReadVariableOp?lstm_96/StatefulPartitionedCall?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
lstm_96/StatefulPartitionedCallStatefulPartitionedCallinputslstm_96_3085300lstm_96_3085302lstm_96_3085304*
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30852992!
lstm_96/StatefulPartitionedCall?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0dense_116_3085319dense_116_3085321*
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
F__inference_dense_116_layer_call_and_return_conditional_losses_30853182#
!dense_116/StatefulPartitionedCall?
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_3085341dense_117_3085343*
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
F__inference_dense_117_layer_call_and_return_conditional_losses_30853402#
!dense_117/StatefulPartitionedCall?
reshape_58/PartitionedCallPartitionedCall*dense_117/StatefulPartitionedCall:output:0*
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
G__inference_reshape_58_layer_call_and_return_conditional_losses_30853592
reshape_58/PartitionedCall?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_96_3085300*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/mul?
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_3085343*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mul?
IdentityIdentity#reshape_58/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_116/StatefulPartitionedCall"^dense_117/StatefulPartitionedCall1^dense_117/bias/Regularizer/Square/ReadVariableOp ^lstm_96/StatefulPartitionedCall>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2d
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?R
?
D__inference_lstm_96_layer_call_and_return_conditional_losses_3084776

inputs'
lstm_cell_96_3084688:	?#
lstm_cell_96_3084690:	?'
lstm_cell_96_3084692:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?$lstm_cell_96/StatefulPartitionedCall?whileD
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
$lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_96_3084688lstm_cell_96_3084690lstm_cell_96_3084692*
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_30846232&
$lstm_cell_96/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_96_3084688lstm_cell_96_3084690lstm_cell_96_3084692*
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
while_body_3084701*
condR
while_cond_3084700*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_96_3084688*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_96/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_96/StatefulPartitionedCall$lstm_cell_96/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
(sequential_39_lstm_96_while_cond_3084116H
Dsequential_39_lstm_96_while_sequential_39_lstm_96_while_loop_counterN
Jsequential_39_lstm_96_while_sequential_39_lstm_96_while_maximum_iterations+
'sequential_39_lstm_96_while_placeholder-
)sequential_39_lstm_96_while_placeholder_1-
)sequential_39_lstm_96_while_placeholder_2-
)sequential_39_lstm_96_while_placeholder_3J
Fsequential_39_lstm_96_while_less_sequential_39_lstm_96_strided_slice_1a
]sequential_39_lstm_96_while_sequential_39_lstm_96_while_cond_3084116___redundant_placeholder0a
]sequential_39_lstm_96_while_sequential_39_lstm_96_while_cond_3084116___redundant_placeholder1a
]sequential_39_lstm_96_while_sequential_39_lstm_96_while_cond_3084116___redundant_placeholder2a
]sequential_39_lstm_96_while_sequential_39_lstm_96_while_cond_3084116___redundant_placeholder3(
$sequential_39_lstm_96_while_identity
?
 sequential_39/lstm_96/while/LessLess'sequential_39_lstm_96_while_placeholderFsequential_39_lstm_96_while_less_sequential_39_lstm_96_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_39/lstm_96/while/Less?
$sequential_39/lstm_96/while/IdentityIdentity$sequential_39/lstm_96/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_39/lstm_96/while/Identity"U
$sequential_39_lstm_96_while_identity-sequential_39/lstm_96/while/Identity:output:0*(
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
while_body_3085166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_96_split_readvariableop_resource_0:	?C
4while_lstm_cell_96_split_1_readvariableop_resource_0:	??
,while_lstm_cell_96_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_96_split_readvariableop_resource:	?A
2while_lstm_cell_96_split_1_readvariableop_resource:	?=
*while_lstm_cell_96_readvariableop_resource:	 ???!while/lstm_cell_96/ReadVariableOp?#while/lstm_cell_96/ReadVariableOp_1?#while/lstm_cell_96/ReadVariableOp_2?#while/lstm_cell_96/ReadVariableOp_3?'while/lstm_cell_96/split/ReadVariableOp?)while/lstm_cell_96/split_1/ReadVariableOp?
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
"while/lstm_cell_96/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_96/ones_like/Shape?
"while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_96/ones_like/Const?
while/lstm_cell_96/ones_likeFill+while/lstm_cell_96/ones_like/Shape:output:0+while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/ones_like?
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_96/split/split_dim?
'while/lstm_cell_96/split/ReadVariableOpReadVariableOp2while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_96/split/ReadVariableOp?
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_96/split?
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul?
while/lstm_cell_96/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_1?
while/lstm_cell_96/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_2?
while/lstm_cell_96/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_3?
$while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_96/split_1/split_dim?
)while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_96/split_1/ReadVariableOp?
while/lstm_cell_96/split_1Split-while/lstm_cell_96/split_1/split_dim:output:01while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_96/split_1?
while/lstm_cell_96/BiasAddBiasAdd#while/lstm_cell_96/MatMul:product:0#while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd?
while/lstm_cell_96/BiasAdd_1BiasAdd%while/lstm_cell_96/MatMul_1:product:0#while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_1?
while/lstm_cell_96/BiasAdd_2BiasAdd%while/lstm_cell_96/MatMul_2:product:0#while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_2?
while/lstm_cell_96/BiasAdd_3BiasAdd%while/lstm_cell_96/MatMul_3:product:0#while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_3?
while/lstm_cell_96/mulMulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul?
while/lstm_cell_96/mul_1Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_1?
while/lstm_cell_96/mul_2Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_2?
while/lstm_cell_96/mul_3Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_3?
!while/lstm_cell_96/ReadVariableOpReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_96/ReadVariableOp?
&while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_96/strided_slice/stack?
(while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice/stack_1?
(while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_96/strided_slice/stack_2?
 while/lstm_cell_96/strided_sliceStridedSlice)while/lstm_cell_96/ReadVariableOp:value:0/while/lstm_cell_96/strided_slice/stack:output:01while/lstm_cell_96/strided_slice/stack_1:output:01while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_96/strided_slice?
while/lstm_cell_96/MatMul_4MatMulwhile/lstm_cell_96/mul:z:0)while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_4?
while/lstm_cell_96/addAddV2#while/lstm_cell_96/BiasAdd:output:0%while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add?
while/lstm_cell_96/SigmoidSigmoidwhile/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid?
#while/lstm_cell_96/ReadVariableOp_1ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_1?
(while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice_1/stack?
*while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_96/strided_slice_1/stack_1?
*while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_1/stack_2?
"while/lstm_cell_96/strided_slice_1StridedSlice+while/lstm_cell_96/ReadVariableOp_1:value:01while/lstm_cell_96/strided_slice_1/stack:output:03while/lstm_cell_96/strided_slice_1/stack_1:output:03while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_1?
while/lstm_cell_96/MatMul_5MatMulwhile/lstm_cell_96/mul_1:z:0+while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_5?
while/lstm_cell_96/add_1AddV2%while/lstm_cell_96/BiasAdd_1:output:0%while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_1?
while/lstm_cell_96/Sigmoid_1Sigmoidwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_1?
while/lstm_cell_96/mul_4Mul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_4?
#while/lstm_cell_96/ReadVariableOp_2ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_2?
(while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_96/strided_slice_2/stack?
*while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_96/strided_slice_2/stack_1?
*while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_2/stack_2?
"while/lstm_cell_96/strided_slice_2StridedSlice+while/lstm_cell_96/ReadVariableOp_2:value:01while/lstm_cell_96/strided_slice_2/stack:output:03while/lstm_cell_96/strided_slice_2/stack_1:output:03while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_2?
while/lstm_cell_96/MatMul_6MatMulwhile/lstm_cell_96/mul_2:z:0+while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_6?
while/lstm_cell_96/add_2AddV2%while/lstm_cell_96/BiasAdd_2:output:0%while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_2?
while/lstm_cell_96/ReluReluwhile/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu?
while/lstm_cell_96/mul_5Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_5?
while/lstm_cell_96/add_3AddV2while/lstm_cell_96/mul_4:z:0while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_3?
#while/lstm_cell_96/ReadVariableOp_3ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_3?
(while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_96/strided_slice_3/stack?
*while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_96/strided_slice_3/stack_1?
*while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_3/stack_2?
"while/lstm_cell_96/strided_slice_3StridedSlice+while/lstm_cell_96/ReadVariableOp_3:value:01while/lstm_cell_96/strided_slice_3/stack:output:03while/lstm_cell_96/strided_slice_3/stack_1:output:03while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_3?
while/lstm_cell_96/MatMul_7MatMulwhile/lstm_cell_96/mul_3:z:0+while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_7?
while/lstm_cell_96/add_4AddV2%while/lstm_cell_96/BiasAdd_3:output:0%while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_4?
while/lstm_cell_96/Sigmoid_2Sigmoidwhile/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_2?
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu_1?
while/lstm_cell_96/mul_6Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_96/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_96/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_96/ReadVariableOp$^while/lstm_cell_96/ReadVariableOp_1$^while/lstm_cell_96/ReadVariableOp_2$^while/lstm_cell_96/ReadVariableOp_3(^while/lstm_cell_96/split/ReadVariableOp*^while/lstm_cell_96/split_1/ReadVariableOp*"
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
*while_lstm_cell_96_readvariableop_resource,while_lstm_cell_96_readvariableop_resource_0"j
2while_lstm_cell_96_split_1_readvariableop_resource4while_lstm_cell_96_split_1_readvariableop_resource_0"f
0while_lstm_cell_96_split_readvariableop_resource2while_lstm_cell_96_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_96/ReadVariableOp!while/lstm_cell_96/ReadVariableOp2J
#while/lstm_cell_96/ReadVariableOp_1#while/lstm_cell_96/ReadVariableOp_12J
#while/lstm_cell_96/ReadVariableOp_2#while/lstm_cell_96/ReadVariableOp_22J
#while/lstm_cell_96/ReadVariableOp_3#while/lstm_cell_96/ReadVariableOp_32R
'while/lstm_cell_96/split/ReadVariableOp'while/lstm_cell_96/split/ReadVariableOp2V
)while/lstm_cell_96/split_1/ReadVariableOp)while/lstm_cell_96/split_1/ReadVariableOp: 
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
/__inference_sequential_39_layer_call_fn_3085837
input_40
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_40unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_39_layer_call_and_return_conditional_losses_30858012
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
input_40
?|
?
#__inference__traced_restore_3088264
file_prefix3
!assignvariableop_dense_116_kernel:  /
!assignvariableop_1_dense_116_bias: 5
#assignvariableop_2_dense_117_kernel: /
!assignvariableop_3_dense_117_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_96_lstm_cell_96_kernel:	?L
9assignvariableop_10_lstm_96_lstm_cell_96_recurrent_kernel:	 ?<
-assignvariableop_11_lstm_96_lstm_cell_96_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: =
+assignvariableop_14_adam_dense_116_kernel_m:  7
)assignvariableop_15_adam_dense_116_bias_m: =
+assignvariableop_16_adam_dense_117_kernel_m: 7
)assignvariableop_17_adam_dense_117_bias_m:I
6assignvariableop_18_adam_lstm_96_lstm_cell_96_kernel_m:	?S
@assignvariableop_19_adam_lstm_96_lstm_cell_96_recurrent_kernel_m:	 ?C
4assignvariableop_20_adam_lstm_96_lstm_cell_96_bias_m:	?=
+assignvariableop_21_adam_dense_116_kernel_v:  7
)assignvariableop_22_adam_dense_116_bias_v: =
+assignvariableop_23_adam_dense_117_kernel_v: 7
)assignvariableop_24_adam_dense_117_bias_v:I
6assignvariableop_25_adam_lstm_96_lstm_cell_96_kernel_v:	?S
@assignvariableop_26_adam_lstm_96_lstm_cell_96_recurrent_kernel_v:	 ?C
4assignvariableop_27_adam_lstm_96_lstm_cell_96_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_116_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_116_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_117_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_117_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_96_lstm_cell_96_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_96_lstm_cell_96_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_96_lstm_cell_96_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_116_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_116_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_117_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_117_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_96_lstm_cell_96_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_96_lstm_cell_96_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_96_lstm_cell_96_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_116_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_116_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_117_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_117_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_96_lstm_cell_96_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_96_lstm_cell_96_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_96_lstm_cell_96_bias_vIdentity_27:output:0"/device:CPU:0*
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
)__inference_lstm_96_layer_call_fn_3086627

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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30852992
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
?v
?
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3084623

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
seed2??2&
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
seed2???2(
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2,
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
while_cond_3087572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3087572___redundant_placeholder05
1while_while_cond_3087572___redundant_placeholder15
1while_while_cond_3087572___redundant_placeholder25
1while_while_cond_3087572___redundant_placeholder3
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
J__inference_sequential_39_layer_call_and_return_conditional_losses_3086253

inputsE
2lstm_96_lstm_cell_96_split_readvariableop_resource:	?C
4lstm_96_lstm_cell_96_split_1_readvariableop_resource:	??
,lstm_96_lstm_cell_96_readvariableop_resource:	 ?:
(dense_116_matmul_readvariableop_resource:  7
)dense_116_biasadd_readvariableop_resource: :
(dense_117_matmul_readvariableop_resource: 7
)dense_117_biasadd_readvariableop_resource:
identity?? dense_116/BiasAdd/ReadVariableOp?dense_116/MatMul/ReadVariableOp? dense_117/BiasAdd/ReadVariableOp?dense_117/MatMul/ReadVariableOp?0dense_117/bias/Regularizer/Square/ReadVariableOp?#lstm_96/lstm_cell_96/ReadVariableOp?%lstm_96/lstm_cell_96/ReadVariableOp_1?%lstm_96/lstm_cell_96/ReadVariableOp_2?%lstm_96/lstm_cell_96/ReadVariableOp_3?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?)lstm_96/lstm_cell_96/split/ReadVariableOp?+lstm_96/lstm_cell_96/split_1/ReadVariableOp?lstm_96/whileT
lstm_96/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_96/Shape?
lstm_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_96/strided_slice/stack?
lstm_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_96/strided_slice/stack_1?
lstm_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_96/strided_slice/stack_2?
lstm_96/strided_sliceStridedSlicelstm_96/Shape:output:0$lstm_96/strided_slice/stack:output:0&lstm_96/strided_slice/stack_1:output:0&lstm_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_96/strided_slicel
lstm_96/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros/mul/y?
lstm_96/zeros/mulMullstm_96/strided_slice:output:0lstm_96/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros/mulo
lstm_96/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_96/zeros/Less/y?
lstm_96/zeros/LessLesslstm_96/zeros/mul:z:0lstm_96/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros/Lessr
lstm_96/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros/packed/1?
lstm_96/zeros/packedPacklstm_96/strided_slice:output:0lstm_96/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_96/zeros/packedo
lstm_96/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_96/zeros/Const?
lstm_96/zerosFilllstm_96/zeros/packed:output:0lstm_96/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/zerosp
lstm_96/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros_1/mul/y?
lstm_96/zeros_1/mulMullstm_96/strided_slice:output:0lstm_96/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros_1/muls
lstm_96/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_96/zeros_1/Less/y?
lstm_96/zeros_1/LessLesslstm_96/zeros_1/mul:z:0lstm_96/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros_1/Lessv
lstm_96/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros_1/packed/1?
lstm_96/zeros_1/packedPacklstm_96/strided_slice:output:0!lstm_96/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_96/zeros_1/packeds
lstm_96/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_96/zeros_1/Const?
lstm_96/zeros_1Filllstm_96/zeros_1/packed:output:0lstm_96/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/zeros_1?
lstm_96/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_96/transpose/perm?
lstm_96/transpose	Transposeinputslstm_96/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_96/transposeg
lstm_96/Shape_1Shapelstm_96/transpose:y:0*
T0*
_output_shapes
:2
lstm_96/Shape_1?
lstm_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_96/strided_slice_1/stack?
lstm_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_1/stack_1?
lstm_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_1/stack_2?
lstm_96/strided_slice_1StridedSlicelstm_96/Shape_1:output:0&lstm_96/strided_slice_1/stack:output:0(lstm_96/strided_slice_1/stack_1:output:0(lstm_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_96/strided_slice_1?
#lstm_96/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_96/TensorArrayV2/element_shape?
lstm_96/TensorArrayV2TensorListReserve,lstm_96/TensorArrayV2/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_96/TensorArrayV2?
=lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_96/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_96/transpose:y:0Flstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_96/TensorArrayUnstack/TensorListFromTensor?
lstm_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_96/strided_slice_2/stack?
lstm_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_2/stack_1?
lstm_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_2/stack_2?
lstm_96/strided_slice_2StridedSlicelstm_96/transpose:y:0&lstm_96/strided_slice_2/stack:output:0(lstm_96/strided_slice_2/stack_1:output:0(lstm_96/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_96/strided_slice_2?
$lstm_96/lstm_cell_96/ones_like/ShapeShapelstm_96/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_96/lstm_cell_96/ones_like/Shape?
$lstm_96/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_96/lstm_cell_96/ones_like/Const?
lstm_96/lstm_cell_96/ones_likeFill-lstm_96/lstm_cell_96/ones_like/Shape:output:0-lstm_96/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/ones_like?
$lstm_96/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_96/lstm_cell_96/split/split_dim?
)lstm_96/lstm_cell_96/split/ReadVariableOpReadVariableOp2lstm_96_lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_96/lstm_cell_96/split/ReadVariableOp?
lstm_96/lstm_cell_96/splitSplit-lstm_96/lstm_cell_96/split/split_dim:output:01lstm_96/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_96/lstm_cell_96/split?
lstm_96/lstm_cell_96/MatMulMatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul?
lstm_96/lstm_cell_96/MatMul_1MatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_1?
lstm_96/lstm_cell_96/MatMul_2MatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_2?
lstm_96/lstm_cell_96/MatMul_3MatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_3?
&lstm_96/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_96/lstm_cell_96/split_1/split_dim?
+lstm_96/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4lstm_96_lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_96/lstm_cell_96/split_1/ReadVariableOp?
lstm_96/lstm_cell_96/split_1Split/lstm_96/lstm_cell_96/split_1/split_dim:output:03lstm_96/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_96/lstm_cell_96/split_1?
lstm_96/lstm_cell_96/BiasAddBiasAdd%lstm_96/lstm_cell_96/MatMul:product:0%lstm_96/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/BiasAdd?
lstm_96/lstm_cell_96/BiasAdd_1BiasAdd'lstm_96/lstm_cell_96/MatMul_1:product:0%lstm_96/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/BiasAdd_1?
lstm_96/lstm_cell_96/BiasAdd_2BiasAdd'lstm_96/lstm_cell_96/MatMul_2:product:0%lstm_96/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/BiasAdd_2?
lstm_96/lstm_cell_96/BiasAdd_3BiasAdd'lstm_96/lstm_cell_96/MatMul_3:product:0%lstm_96/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/BiasAdd_3?
lstm_96/lstm_cell_96/mulMullstm_96/zeros:output:0'lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul?
lstm_96/lstm_cell_96/mul_1Mullstm_96/zeros:output:0'lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_1?
lstm_96/lstm_cell_96/mul_2Mullstm_96/zeros:output:0'lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_2?
lstm_96/lstm_cell_96/mul_3Mullstm_96/zeros:output:0'lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_3?
#lstm_96/lstm_cell_96/ReadVariableOpReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_96/lstm_cell_96/ReadVariableOp?
(lstm_96/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_96/lstm_cell_96/strided_slice/stack?
*lstm_96/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_96/lstm_cell_96/strided_slice/stack_1?
*lstm_96/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_96/lstm_cell_96/strided_slice/stack_2?
"lstm_96/lstm_cell_96/strided_sliceStridedSlice+lstm_96/lstm_cell_96/ReadVariableOp:value:01lstm_96/lstm_cell_96/strided_slice/stack:output:03lstm_96/lstm_cell_96/strided_slice/stack_1:output:03lstm_96/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_96/lstm_cell_96/strided_slice?
lstm_96/lstm_cell_96/MatMul_4MatMullstm_96/lstm_cell_96/mul:z:0+lstm_96/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_4?
lstm_96/lstm_cell_96/addAddV2%lstm_96/lstm_cell_96/BiasAdd:output:0'lstm_96/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add?
lstm_96/lstm_cell_96/SigmoidSigmoidlstm_96/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/Sigmoid?
%lstm_96/lstm_cell_96/ReadVariableOp_1ReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_96/lstm_cell_96/ReadVariableOp_1?
*lstm_96/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_96/lstm_cell_96/strided_slice_1/stack?
,lstm_96/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_96/lstm_cell_96/strided_slice_1/stack_1?
,lstm_96/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_96/lstm_cell_96/strided_slice_1/stack_2?
$lstm_96/lstm_cell_96/strided_slice_1StridedSlice-lstm_96/lstm_cell_96/ReadVariableOp_1:value:03lstm_96/lstm_cell_96/strided_slice_1/stack:output:05lstm_96/lstm_cell_96/strided_slice_1/stack_1:output:05lstm_96/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_96/lstm_cell_96/strided_slice_1?
lstm_96/lstm_cell_96/MatMul_5MatMullstm_96/lstm_cell_96/mul_1:z:0-lstm_96/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_5?
lstm_96/lstm_cell_96/add_1AddV2'lstm_96/lstm_cell_96/BiasAdd_1:output:0'lstm_96/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_1?
lstm_96/lstm_cell_96/Sigmoid_1Sigmoidlstm_96/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/Sigmoid_1?
lstm_96/lstm_cell_96/mul_4Mul"lstm_96/lstm_cell_96/Sigmoid_1:y:0lstm_96/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_4?
%lstm_96/lstm_cell_96/ReadVariableOp_2ReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_96/lstm_cell_96/ReadVariableOp_2?
*lstm_96/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_96/lstm_cell_96/strided_slice_2/stack?
,lstm_96/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_96/lstm_cell_96/strided_slice_2/stack_1?
,lstm_96/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_96/lstm_cell_96/strided_slice_2/stack_2?
$lstm_96/lstm_cell_96/strided_slice_2StridedSlice-lstm_96/lstm_cell_96/ReadVariableOp_2:value:03lstm_96/lstm_cell_96/strided_slice_2/stack:output:05lstm_96/lstm_cell_96/strided_slice_2/stack_1:output:05lstm_96/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_96/lstm_cell_96/strided_slice_2?
lstm_96/lstm_cell_96/MatMul_6MatMullstm_96/lstm_cell_96/mul_2:z:0-lstm_96/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_6?
lstm_96/lstm_cell_96/add_2AddV2'lstm_96/lstm_cell_96/BiasAdd_2:output:0'lstm_96/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_2?
lstm_96/lstm_cell_96/ReluRelulstm_96/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/Relu?
lstm_96/lstm_cell_96/mul_5Mul lstm_96/lstm_cell_96/Sigmoid:y:0'lstm_96/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_5?
lstm_96/lstm_cell_96/add_3AddV2lstm_96/lstm_cell_96/mul_4:z:0lstm_96/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_3?
%lstm_96/lstm_cell_96/ReadVariableOp_3ReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_96/lstm_cell_96/ReadVariableOp_3?
*lstm_96/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_96/lstm_cell_96/strided_slice_3/stack?
,lstm_96/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_96/lstm_cell_96/strided_slice_3/stack_1?
,lstm_96/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_96/lstm_cell_96/strided_slice_3/stack_2?
$lstm_96/lstm_cell_96/strided_slice_3StridedSlice-lstm_96/lstm_cell_96/ReadVariableOp_3:value:03lstm_96/lstm_cell_96/strided_slice_3/stack:output:05lstm_96/lstm_cell_96/strided_slice_3/stack_1:output:05lstm_96/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_96/lstm_cell_96/strided_slice_3?
lstm_96/lstm_cell_96/MatMul_7MatMullstm_96/lstm_cell_96/mul_3:z:0-lstm_96/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_7?
lstm_96/lstm_cell_96/add_4AddV2'lstm_96/lstm_cell_96/BiasAdd_3:output:0'lstm_96/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_4?
lstm_96/lstm_cell_96/Sigmoid_2Sigmoidlstm_96/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/Sigmoid_2?
lstm_96/lstm_cell_96/Relu_1Relulstm_96/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/Relu_1?
lstm_96/lstm_cell_96/mul_6Mul"lstm_96/lstm_cell_96/Sigmoid_2:y:0)lstm_96/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_6?
%lstm_96/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_96/TensorArrayV2_1/element_shape?
lstm_96/TensorArrayV2_1TensorListReserve.lstm_96/TensorArrayV2_1/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_96/TensorArrayV2_1^
lstm_96/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/time?
 lstm_96/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_96/while/maximum_iterationsz
lstm_96/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/while/loop_counter?
lstm_96/whileWhile#lstm_96/while/loop_counter:output:0)lstm_96/while/maximum_iterations:output:0lstm_96/time:output:0 lstm_96/TensorArrayV2_1:handle:0lstm_96/zeros:output:0lstm_96/zeros_1:output:0 lstm_96/strided_slice_1:output:0?lstm_96/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_96_lstm_cell_96_split_readvariableop_resource4lstm_96_lstm_cell_96_split_1_readvariableop_resource,lstm_96_lstm_cell_96_readvariableop_resource*
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
lstm_96_while_body_3086092*&
condR
lstm_96_while_cond_3086091*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_96/while?
8lstm_96/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_96/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_96/TensorArrayV2Stack/TensorListStackTensorListStacklstm_96/while:output:3Alstm_96/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_96/TensorArrayV2Stack/TensorListStack?
lstm_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_96/strided_slice_3/stack?
lstm_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_96/strided_slice_3/stack_1?
lstm_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_3/stack_2?
lstm_96/strided_slice_3StridedSlice3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_96/strided_slice_3/stack:output:0(lstm_96/strided_slice_3/stack_1:output:0(lstm_96/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_96/strided_slice_3?
lstm_96/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_96/transpose_1/perm?
lstm_96/transpose_1	Transpose3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_96/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_96/transpose_1v
lstm_96/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_96/runtime?
dense_116/MatMul/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_116/MatMul/ReadVariableOp?
dense_116/MatMulMatMul lstm_96/strided_slice_3:output:0'dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_116/MatMul?
 dense_116/BiasAdd/ReadVariableOpReadVariableOp)dense_116_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_116/BiasAdd/ReadVariableOp?
dense_116/BiasAddBiasAdddense_116/MatMul:product:0(dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_116/BiasAddv
dense_116/ReluReludense_116/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_116/Relu?
dense_117/MatMul/ReadVariableOpReadVariableOp(dense_117_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_117/MatMul/ReadVariableOp?
dense_117/MatMulMatMuldense_116/Relu:activations:0'dense_117/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_117/MatMul?
 dense_117/BiasAdd/ReadVariableOpReadVariableOp)dense_117_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_117/BiasAdd/ReadVariableOp?
dense_117/BiasAddBiasAdddense_117/MatMul:product:0(dense_117/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_117/BiasAddn
reshape_58/ShapeShapedense_117/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_58/Shape?
reshape_58/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_58/strided_slice/stack?
 reshape_58/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_58/strided_slice/stack_1?
 reshape_58/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_58/strided_slice/stack_2?
reshape_58/strided_sliceStridedSlicereshape_58/Shape:output:0'reshape_58/strided_slice/stack:output:0)reshape_58/strided_slice/stack_1:output:0)reshape_58/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_58/strided_slicez
reshape_58/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_58/Reshape/shape/1z
reshape_58/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_58/Reshape/shape/2?
reshape_58/Reshape/shapePack!reshape_58/strided_slice:output:0#reshape_58/Reshape/shape/1:output:0#reshape_58/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_58/Reshape/shape?
reshape_58/ReshapeReshapedense_117/BiasAdd:output:0!reshape_58/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_58/Reshape?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_96_lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/mul?
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_117_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mulz
IdentityIdentityreshape_58/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_116/BiasAdd/ReadVariableOp ^dense_116/MatMul/ReadVariableOp!^dense_117/BiasAdd/ReadVariableOp ^dense_117/MatMul/ReadVariableOp1^dense_117/bias/Regularizer/Square/ReadVariableOp$^lstm_96/lstm_cell_96/ReadVariableOp&^lstm_96/lstm_cell_96/ReadVariableOp_1&^lstm_96/lstm_cell_96/ReadVariableOp_2&^lstm_96/lstm_cell_96/ReadVariableOp_3>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp*^lstm_96/lstm_cell_96/split/ReadVariableOp,^lstm_96/lstm_cell_96/split_1/ReadVariableOp^lstm_96/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_116/BiasAdd/ReadVariableOp dense_116/BiasAdd/ReadVariableOp2B
dense_116/MatMul/ReadVariableOpdense_116/MatMul/ReadVariableOp2D
 dense_117/BiasAdd/ReadVariableOp dense_117/BiasAdd/ReadVariableOp2B
dense_117/MatMul/ReadVariableOpdense_117/MatMul/ReadVariableOp2d
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp2J
#lstm_96/lstm_cell_96/ReadVariableOp#lstm_96/lstm_cell_96/ReadVariableOp2N
%lstm_96/lstm_cell_96/ReadVariableOp_1%lstm_96/lstm_cell_96/ReadVariableOp_12N
%lstm_96/lstm_cell_96/ReadVariableOp_2%lstm_96/lstm_cell_96/ReadVariableOp_22N
%lstm_96/lstm_cell_96/ReadVariableOp_3%lstm_96/lstm_cell_96/ReadVariableOp_32~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_96/lstm_cell_96/split/ReadVariableOp)lstm_96/lstm_cell_96/split/ReadVariableOp2Z
+lstm_96/lstm_cell_96/split_1/ReadVariableOp+lstm_96/lstm_cell_96/split_1/ReadVariableOp2
lstm_96/whilelstm_96/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3084700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3084700___redundant_placeholder05
1while_while_cond_3084700___redundant_placeholder15
1while_while_cond_3084700___redundant_placeholder25
1while_while_cond_3084700___redundant_placeholder3
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
while_body_3086748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_96_split_readvariableop_resource_0:	?C
4while_lstm_cell_96_split_1_readvariableop_resource_0:	??
,while_lstm_cell_96_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_96_split_readvariableop_resource:	?A
2while_lstm_cell_96_split_1_readvariableop_resource:	?=
*while_lstm_cell_96_readvariableop_resource:	 ???!while/lstm_cell_96/ReadVariableOp?#while/lstm_cell_96/ReadVariableOp_1?#while/lstm_cell_96/ReadVariableOp_2?#while/lstm_cell_96/ReadVariableOp_3?'while/lstm_cell_96/split/ReadVariableOp?)while/lstm_cell_96/split_1/ReadVariableOp?
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
"while/lstm_cell_96/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_96/ones_like/Shape?
"while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_96/ones_like/Const?
while/lstm_cell_96/ones_likeFill+while/lstm_cell_96/ones_like/Shape:output:0+while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/ones_like?
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_96/split/split_dim?
'while/lstm_cell_96/split/ReadVariableOpReadVariableOp2while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_96/split/ReadVariableOp?
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_96/split?
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul?
while/lstm_cell_96/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_1?
while/lstm_cell_96/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_2?
while/lstm_cell_96/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_3?
$while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_96/split_1/split_dim?
)while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_96/split_1/ReadVariableOp?
while/lstm_cell_96/split_1Split-while/lstm_cell_96/split_1/split_dim:output:01while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_96/split_1?
while/lstm_cell_96/BiasAddBiasAdd#while/lstm_cell_96/MatMul:product:0#while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd?
while/lstm_cell_96/BiasAdd_1BiasAdd%while/lstm_cell_96/MatMul_1:product:0#while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_1?
while/lstm_cell_96/BiasAdd_2BiasAdd%while/lstm_cell_96/MatMul_2:product:0#while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_2?
while/lstm_cell_96/BiasAdd_3BiasAdd%while/lstm_cell_96/MatMul_3:product:0#while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_3?
while/lstm_cell_96/mulMulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul?
while/lstm_cell_96/mul_1Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_1?
while/lstm_cell_96/mul_2Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_2?
while/lstm_cell_96/mul_3Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_3?
!while/lstm_cell_96/ReadVariableOpReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_96/ReadVariableOp?
&while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_96/strided_slice/stack?
(while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice/stack_1?
(while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_96/strided_slice/stack_2?
 while/lstm_cell_96/strided_sliceStridedSlice)while/lstm_cell_96/ReadVariableOp:value:0/while/lstm_cell_96/strided_slice/stack:output:01while/lstm_cell_96/strided_slice/stack_1:output:01while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_96/strided_slice?
while/lstm_cell_96/MatMul_4MatMulwhile/lstm_cell_96/mul:z:0)while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_4?
while/lstm_cell_96/addAddV2#while/lstm_cell_96/BiasAdd:output:0%while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add?
while/lstm_cell_96/SigmoidSigmoidwhile/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid?
#while/lstm_cell_96/ReadVariableOp_1ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_1?
(while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice_1/stack?
*while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_96/strided_slice_1/stack_1?
*while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_1/stack_2?
"while/lstm_cell_96/strided_slice_1StridedSlice+while/lstm_cell_96/ReadVariableOp_1:value:01while/lstm_cell_96/strided_slice_1/stack:output:03while/lstm_cell_96/strided_slice_1/stack_1:output:03while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_1?
while/lstm_cell_96/MatMul_5MatMulwhile/lstm_cell_96/mul_1:z:0+while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_5?
while/lstm_cell_96/add_1AddV2%while/lstm_cell_96/BiasAdd_1:output:0%while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_1?
while/lstm_cell_96/Sigmoid_1Sigmoidwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_1?
while/lstm_cell_96/mul_4Mul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_4?
#while/lstm_cell_96/ReadVariableOp_2ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_2?
(while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_96/strided_slice_2/stack?
*while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_96/strided_slice_2/stack_1?
*while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_2/stack_2?
"while/lstm_cell_96/strided_slice_2StridedSlice+while/lstm_cell_96/ReadVariableOp_2:value:01while/lstm_cell_96/strided_slice_2/stack:output:03while/lstm_cell_96/strided_slice_2/stack_1:output:03while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_2?
while/lstm_cell_96/MatMul_6MatMulwhile/lstm_cell_96/mul_2:z:0+while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_6?
while/lstm_cell_96/add_2AddV2%while/lstm_cell_96/BiasAdd_2:output:0%while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_2?
while/lstm_cell_96/ReluReluwhile/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu?
while/lstm_cell_96/mul_5Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_5?
while/lstm_cell_96/add_3AddV2while/lstm_cell_96/mul_4:z:0while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_3?
#while/lstm_cell_96/ReadVariableOp_3ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_3?
(while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_96/strided_slice_3/stack?
*while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_96/strided_slice_3/stack_1?
*while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_3/stack_2?
"while/lstm_cell_96/strided_slice_3StridedSlice+while/lstm_cell_96/ReadVariableOp_3:value:01while/lstm_cell_96/strided_slice_3/stack:output:03while/lstm_cell_96/strided_slice_3/stack_1:output:03while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_3?
while/lstm_cell_96/MatMul_7MatMulwhile/lstm_cell_96/mul_3:z:0+while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_7?
while/lstm_cell_96/add_4AddV2%while/lstm_cell_96/BiasAdd_3:output:0%while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_4?
while/lstm_cell_96/Sigmoid_2Sigmoidwhile/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_2?
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu_1?
while/lstm_cell_96/mul_6Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_96/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_96/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_96/ReadVariableOp$^while/lstm_cell_96/ReadVariableOp_1$^while/lstm_cell_96/ReadVariableOp_2$^while/lstm_cell_96/ReadVariableOp_3(^while/lstm_cell_96/split/ReadVariableOp*^while/lstm_cell_96/split_1/ReadVariableOp*"
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
*while_lstm_cell_96_readvariableop_resource,while_lstm_cell_96_readvariableop_resource_0"j
2while_lstm_cell_96_split_1_readvariableop_resource4while_lstm_cell_96_split_1_readvariableop_resource_0"f
0while_lstm_cell_96_split_readvariableop_resource2while_lstm_cell_96_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_96/ReadVariableOp!while/lstm_cell_96/ReadVariableOp2J
#while/lstm_cell_96/ReadVariableOp_1#while/lstm_cell_96/ReadVariableOp_12J
#while/lstm_cell_96/ReadVariableOp_2#while/lstm_cell_96/ReadVariableOp_22J
#while/lstm_cell_96/ReadVariableOp_3#while/lstm_cell_96/ReadVariableOp_32R
'while/lstm_cell_96/split/ReadVariableOp'while/lstm_cell_96/split/ReadVariableOp2V
)while/lstm_cell_96/split_1/ReadVariableOp)while/lstm_cell_96/split_1/ReadVariableOp: 
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3085299

inputs=
*lstm_cell_96_split_readvariableop_resource:	?;
,lstm_cell_96_split_1_readvariableop_resource:	?7
$lstm_cell_96_readvariableop_resource:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_96/ReadVariableOp?lstm_cell_96/ReadVariableOp_1?lstm_cell_96/ReadVariableOp_2?lstm_cell_96/ReadVariableOp_3?!lstm_cell_96/split/ReadVariableOp?#lstm_cell_96/split_1/ReadVariableOp?whileD
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
lstm_cell_96/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_96/ones_like/Shape?
lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_96/ones_like/Const?
lstm_cell_96/ones_likeFill%lstm_cell_96/ones_like/Shape:output:0%lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/ones_like~
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_96/split/split_dim?
!lstm_cell_96/split/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_96/split/ReadVariableOp?
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0)lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_96/split?
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul?
lstm_cell_96/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_1?
lstm_cell_96/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_2?
lstm_cell_96/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_3?
lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_96/split_1/split_dim?
#lstm_cell_96/split_1/ReadVariableOpReadVariableOp,lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_96/split_1/ReadVariableOp?
lstm_cell_96/split_1Split'lstm_cell_96/split_1/split_dim:output:0+lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_96/split_1?
lstm_cell_96/BiasAddBiasAddlstm_cell_96/MatMul:product:0lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd?
lstm_cell_96/BiasAdd_1BiasAddlstm_cell_96/MatMul_1:product:0lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_1?
lstm_cell_96/BiasAdd_2BiasAddlstm_cell_96/MatMul_2:product:0lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_2?
lstm_cell_96/BiasAdd_3BiasAddlstm_cell_96/MatMul_3:product:0lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_3?
lstm_cell_96/mulMulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul?
lstm_cell_96/mul_1Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_1?
lstm_cell_96/mul_2Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_2?
lstm_cell_96/mul_3Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_3?
lstm_cell_96/ReadVariableOpReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp?
 lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_96/strided_slice/stack?
"lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice/stack_1?
"lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_96/strided_slice/stack_2?
lstm_cell_96/strided_sliceStridedSlice#lstm_cell_96/ReadVariableOp:value:0)lstm_cell_96/strided_slice/stack:output:0+lstm_cell_96/strided_slice/stack_1:output:0+lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice?
lstm_cell_96/MatMul_4MatMullstm_cell_96/mul:z:0#lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_4?
lstm_cell_96/addAddV2lstm_cell_96/BiasAdd:output:0lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add
lstm_cell_96/SigmoidSigmoidlstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid?
lstm_cell_96/ReadVariableOp_1ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_1?
"lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice_1/stack?
$lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_96/strided_slice_1/stack_1?
$lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_1/stack_2?
lstm_cell_96/strided_slice_1StridedSlice%lstm_cell_96/ReadVariableOp_1:value:0+lstm_cell_96/strided_slice_1/stack:output:0-lstm_cell_96/strided_slice_1/stack_1:output:0-lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_1?
lstm_cell_96/MatMul_5MatMullstm_cell_96/mul_1:z:0%lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_5?
lstm_cell_96/add_1AddV2lstm_cell_96/BiasAdd_1:output:0lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_1?
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_1?
lstm_cell_96/mul_4Mullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_4?
lstm_cell_96/ReadVariableOp_2ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_2?
"lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_96/strided_slice_2/stack?
$lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_96/strided_slice_2/stack_1?
$lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_2/stack_2?
lstm_cell_96/strided_slice_2StridedSlice%lstm_cell_96/ReadVariableOp_2:value:0+lstm_cell_96/strided_slice_2/stack:output:0-lstm_cell_96/strided_slice_2/stack_1:output:0-lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_2?
lstm_cell_96/MatMul_6MatMullstm_cell_96/mul_2:z:0%lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_6?
lstm_cell_96/add_2AddV2lstm_cell_96/BiasAdd_2:output:0lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_2x
lstm_cell_96/ReluRelulstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu?
lstm_cell_96/mul_5Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_5?
lstm_cell_96/add_3AddV2lstm_cell_96/mul_4:z:0lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_3?
lstm_cell_96/ReadVariableOp_3ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_3?
"lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_96/strided_slice_3/stack?
$lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_96/strided_slice_3/stack_1?
$lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_3/stack_2?
lstm_cell_96/strided_slice_3StridedSlice%lstm_cell_96/ReadVariableOp_3:value:0+lstm_cell_96/strided_slice_3/stack:output:0-lstm_cell_96/strided_slice_3/stack_1:output:0-lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_3?
lstm_cell_96/MatMul_7MatMullstm_cell_96/mul_3:z:0%lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_7?
lstm_cell_96/add_4AddV2lstm_cell_96/BiasAdd_3:output:0lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_4?
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_2|
lstm_cell_96/Relu_1Relulstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu_1?
lstm_cell_96/mul_6Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_96_split_readvariableop_resource,lstm_cell_96_split_1_readvariableop_resource$lstm_cell_96_readvariableop_resource*
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
while_body_3085166*
condR
while_cond_3085165*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_96/ReadVariableOp^lstm_cell_96/ReadVariableOp_1^lstm_cell_96/ReadVariableOp_2^lstm_cell_96/ReadVariableOp_3"^lstm_cell_96/split/ReadVariableOp$^lstm_cell_96/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_96/ReadVariableOplstm_cell_96/ReadVariableOp2>
lstm_cell_96/ReadVariableOp_1lstm_cell_96/ReadVariableOp_12>
lstm_cell_96/ReadVariableOp_2lstm_cell_96/ReadVariableOp_22>
lstm_cell_96/ReadVariableOp_3lstm_cell_96/ReadVariableOp_32F
!lstm_cell_96/split/ReadVariableOp!lstm_cell_96/split/ReadVariableOp2J
#lstm_cell_96/split_1/ReadVariableOp#lstm_cell_96/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_96_while_cond_3086394,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3.
*lstm_96_while_less_lstm_96_strided_slice_1E
Alstm_96_while_lstm_96_while_cond_3086394___redundant_placeholder0E
Alstm_96_while_lstm_96_while_cond_3086394___redundant_placeholder1E
Alstm_96_while_lstm_96_while_cond_3086394___redundant_placeholder2E
Alstm_96_while_lstm_96_while_cond_3086394___redundant_placeholder3
lstm_96_while_identity
?
lstm_96/while/LessLesslstm_96_while_placeholder*lstm_96_while_less_lstm_96_strided_slice_1*
T0*
_output_shapes
: 2
lstm_96/while/Lessu
lstm_96/while/IdentityIdentitylstm_96/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_96/while/Identity"9
lstm_96_while_identitylstm_96/while/Identity:output:0*(
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3086881
inputs_0=
*lstm_cell_96_split_readvariableop_resource:	?;
,lstm_cell_96_split_1_readvariableop_resource:	?7
$lstm_cell_96_readvariableop_resource:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_96/ReadVariableOp?lstm_cell_96/ReadVariableOp_1?lstm_cell_96/ReadVariableOp_2?lstm_cell_96/ReadVariableOp_3?!lstm_cell_96/split/ReadVariableOp?#lstm_cell_96/split_1/ReadVariableOp?whileF
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
lstm_cell_96/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_96/ones_like/Shape?
lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_96/ones_like/Const?
lstm_cell_96/ones_likeFill%lstm_cell_96/ones_like/Shape:output:0%lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/ones_like~
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_96/split/split_dim?
!lstm_cell_96/split/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_96/split/ReadVariableOp?
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0)lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_96/split?
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul?
lstm_cell_96/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_1?
lstm_cell_96/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_2?
lstm_cell_96/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_3?
lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_96/split_1/split_dim?
#lstm_cell_96/split_1/ReadVariableOpReadVariableOp,lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_96/split_1/ReadVariableOp?
lstm_cell_96/split_1Split'lstm_cell_96/split_1/split_dim:output:0+lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_96/split_1?
lstm_cell_96/BiasAddBiasAddlstm_cell_96/MatMul:product:0lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd?
lstm_cell_96/BiasAdd_1BiasAddlstm_cell_96/MatMul_1:product:0lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_1?
lstm_cell_96/BiasAdd_2BiasAddlstm_cell_96/MatMul_2:product:0lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_2?
lstm_cell_96/BiasAdd_3BiasAddlstm_cell_96/MatMul_3:product:0lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_3?
lstm_cell_96/mulMulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul?
lstm_cell_96/mul_1Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_1?
lstm_cell_96/mul_2Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_2?
lstm_cell_96/mul_3Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_3?
lstm_cell_96/ReadVariableOpReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp?
 lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_96/strided_slice/stack?
"lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice/stack_1?
"lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_96/strided_slice/stack_2?
lstm_cell_96/strided_sliceStridedSlice#lstm_cell_96/ReadVariableOp:value:0)lstm_cell_96/strided_slice/stack:output:0+lstm_cell_96/strided_slice/stack_1:output:0+lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice?
lstm_cell_96/MatMul_4MatMullstm_cell_96/mul:z:0#lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_4?
lstm_cell_96/addAddV2lstm_cell_96/BiasAdd:output:0lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add
lstm_cell_96/SigmoidSigmoidlstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid?
lstm_cell_96/ReadVariableOp_1ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_1?
"lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice_1/stack?
$lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_96/strided_slice_1/stack_1?
$lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_1/stack_2?
lstm_cell_96/strided_slice_1StridedSlice%lstm_cell_96/ReadVariableOp_1:value:0+lstm_cell_96/strided_slice_1/stack:output:0-lstm_cell_96/strided_slice_1/stack_1:output:0-lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_1?
lstm_cell_96/MatMul_5MatMullstm_cell_96/mul_1:z:0%lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_5?
lstm_cell_96/add_1AddV2lstm_cell_96/BiasAdd_1:output:0lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_1?
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_1?
lstm_cell_96/mul_4Mullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_4?
lstm_cell_96/ReadVariableOp_2ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_2?
"lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_96/strided_slice_2/stack?
$lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_96/strided_slice_2/stack_1?
$lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_2/stack_2?
lstm_cell_96/strided_slice_2StridedSlice%lstm_cell_96/ReadVariableOp_2:value:0+lstm_cell_96/strided_slice_2/stack:output:0-lstm_cell_96/strided_slice_2/stack_1:output:0-lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_2?
lstm_cell_96/MatMul_6MatMullstm_cell_96/mul_2:z:0%lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_6?
lstm_cell_96/add_2AddV2lstm_cell_96/BiasAdd_2:output:0lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_2x
lstm_cell_96/ReluRelulstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu?
lstm_cell_96/mul_5Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_5?
lstm_cell_96/add_3AddV2lstm_cell_96/mul_4:z:0lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_3?
lstm_cell_96/ReadVariableOp_3ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_3?
"lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_96/strided_slice_3/stack?
$lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_96/strided_slice_3/stack_1?
$lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_3/stack_2?
lstm_cell_96/strided_slice_3StridedSlice%lstm_cell_96/ReadVariableOp_3:value:0+lstm_cell_96/strided_slice_3/stack:output:0-lstm_cell_96/strided_slice_3/stack_1:output:0-lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_3?
lstm_cell_96/MatMul_7MatMullstm_cell_96/mul_3:z:0%lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_7?
lstm_cell_96/add_4AddV2lstm_cell_96/BiasAdd_3:output:0lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_4?
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_2|
lstm_cell_96/Relu_1Relulstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu_1?
lstm_cell_96/mul_6Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_96_split_readvariableop_resource,lstm_cell_96_split_1_readvariableop_resource$lstm_cell_96_readvariableop_resource*
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
while_body_3086748*
condR
while_cond_3086747*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_96/ReadVariableOp^lstm_cell_96/ReadVariableOp_1^lstm_cell_96/ReadVariableOp_2^lstm_cell_96/ReadVariableOp_3"^lstm_cell_96/split/ReadVariableOp$^lstm_cell_96/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_96/ReadVariableOplstm_cell_96/ReadVariableOp2>
lstm_cell_96/ReadVariableOp_1lstm_cell_96/ReadVariableOp_12>
lstm_cell_96/ReadVariableOp_2lstm_cell_96/ReadVariableOp_22>
lstm_cell_96/ReadVariableOp_3lstm_cell_96/ReadVariableOp_32F
!lstm_cell_96/split/ReadVariableOp!lstm_cell_96/split/ReadVariableOp2J
#lstm_cell_96/split_1/ReadVariableOp#lstm_cell_96/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3087297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3087297___redundant_placeholder05
1while_while_cond_3087297___redundant_placeholder15
1while_while_cond_3087297___redundant_placeholder25
1while_while_cond_3087297___redundant_placeholder3
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
+__inference_dense_117_layer_call_fn_3087773

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
F__inference_dense_117_layer_call_and_return_conditional_losses_30853402
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
c
G__inference_reshape_58_layer_call_and_return_conditional_losses_3087807

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
?
__inference_loss_fn_0_3087818G
9dense_117_bias_regularizer_square_readvariableop_resource:
identity??0dense_117/bias/Regularizer/Square/ReadVariableOp?
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOp9dense_117_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mull
IdentityIdentity"dense_117/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_117/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp
?
?
while_cond_3085571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3085571___redundant_placeholder05
1while_while_cond_3085571___redundant_placeholder15
1while_while_cond_3085571___redundant_placeholder25
1while_while_cond_3085571___redundant_placeholder3
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3085737

inputs=
*lstm_cell_96_split_readvariableop_resource:	?;
,lstm_cell_96_split_1_readvariableop_resource:	?7
$lstm_cell_96_readvariableop_resource:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_96/ReadVariableOp?lstm_cell_96/ReadVariableOp_1?lstm_cell_96/ReadVariableOp_2?lstm_cell_96/ReadVariableOp_3?!lstm_cell_96/split/ReadVariableOp?#lstm_cell_96/split_1/ReadVariableOp?whileD
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
lstm_cell_96/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_96/ones_like/Shape?
lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_96/ones_like/Const?
lstm_cell_96/ones_likeFill%lstm_cell_96/ones_like/Shape:output:0%lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/ones_like}
lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout/Const?
lstm_cell_96/dropout/MulMullstm_cell_96/ones_like:output:0#lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Mul?
lstm_cell_96/dropout/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout/Shape?
1lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2زq23
1lstm_cell_96/dropout/random_uniform/RandomUniform?
#lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_96/dropout/GreaterEqual/y?
!lstm_cell_96/dropout/GreaterEqualGreaterEqual:lstm_cell_96/dropout/random_uniform/RandomUniform:output:0,lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_96/dropout/GreaterEqual?
lstm_cell_96/dropout/CastCast%lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Cast?
lstm_cell_96/dropout/Mul_1Mullstm_cell_96/dropout/Mul:z:0lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Mul_1?
lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_1/Const?
lstm_cell_96/dropout_1/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Mul?
lstm_cell_96/dropout_1/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_1/Shape?
3lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_96/dropout_1/random_uniform/RandomUniform?
%lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_1/GreaterEqual/y?
#lstm_cell_96/dropout_1/GreaterEqualGreaterEqual<lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_1/GreaterEqual?
lstm_cell_96/dropout_1/CastCast'lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Cast?
lstm_cell_96/dropout_1/Mul_1Mullstm_cell_96/dropout_1/Mul:z:0lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Mul_1?
lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_2/Const?
lstm_cell_96/dropout_2/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Mul?
lstm_cell_96/dropout_2/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_2/Shape?
3lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??d25
3lstm_cell_96/dropout_2/random_uniform/RandomUniform?
%lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_2/GreaterEqual/y?
#lstm_cell_96/dropout_2/GreaterEqualGreaterEqual<lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_2/GreaterEqual?
lstm_cell_96/dropout_2/CastCast'lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Cast?
lstm_cell_96/dropout_2/Mul_1Mullstm_cell_96/dropout_2/Mul:z:0lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Mul_1?
lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_3/Const?
lstm_cell_96/dropout_3/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Mul?
lstm_cell_96/dropout_3/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_3/Shape?
3lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_96/dropout_3/random_uniform/RandomUniform?
%lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_3/GreaterEqual/y?
#lstm_cell_96/dropout_3/GreaterEqualGreaterEqual<lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_3/GreaterEqual?
lstm_cell_96/dropout_3/CastCast'lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Cast?
lstm_cell_96/dropout_3/Mul_1Mullstm_cell_96/dropout_3/Mul:z:0lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Mul_1~
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_96/split/split_dim?
!lstm_cell_96/split/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_96/split/ReadVariableOp?
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0)lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_96/split?
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul?
lstm_cell_96/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_1?
lstm_cell_96/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_2?
lstm_cell_96/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_3?
lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_96/split_1/split_dim?
#lstm_cell_96/split_1/ReadVariableOpReadVariableOp,lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_96/split_1/ReadVariableOp?
lstm_cell_96/split_1Split'lstm_cell_96/split_1/split_dim:output:0+lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_96/split_1?
lstm_cell_96/BiasAddBiasAddlstm_cell_96/MatMul:product:0lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd?
lstm_cell_96/BiasAdd_1BiasAddlstm_cell_96/MatMul_1:product:0lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_1?
lstm_cell_96/BiasAdd_2BiasAddlstm_cell_96/MatMul_2:product:0lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_2?
lstm_cell_96/BiasAdd_3BiasAddlstm_cell_96/MatMul_3:product:0lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_3?
lstm_cell_96/mulMulzeros:output:0lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul?
lstm_cell_96/mul_1Mulzeros:output:0 lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_1?
lstm_cell_96/mul_2Mulzeros:output:0 lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_2?
lstm_cell_96/mul_3Mulzeros:output:0 lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_3?
lstm_cell_96/ReadVariableOpReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp?
 lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_96/strided_slice/stack?
"lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice/stack_1?
"lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_96/strided_slice/stack_2?
lstm_cell_96/strided_sliceStridedSlice#lstm_cell_96/ReadVariableOp:value:0)lstm_cell_96/strided_slice/stack:output:0+lstm_cell_96/strided_slice/stack_1:output:0+lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice?
lstm_cell_96/MatMul_4MatMullstm_cell_96/mul:z:0#lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_4?
lstm_cell_96/addAddV2lstm_cell_96/BiasAdd:output:0lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add
lstm_cell_96/SigmoidSigmoidlstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid?
lstm_cell_96/ReadVariableOp_1ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_1?
"lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice_1/stack?
$lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_96/strided_slice_1/stack_1?
$lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_1/stack_2?
lstm_cell_96/strided_slice_1StridedSlice%lstm_cell_96/ReadVariableOp_1:value:0+lstm_cell_96/strided_slice_1/stack:output:0-lstm_cell_96/strided_slice_1/stack_1:output:0-lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_1?
lstm_cell_96/MatMul_5MatMullstm_cell_96/mul_1:z:0%lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_5?
lstm_cell_96/add_1AddV2lstm_cell_96/BiasAdd_1:output:0lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_1?
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_1?
lstm_cell_96/mul_4Mullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_4?
lstm_cell_96/ReadVariableOp_2ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_2?
"lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_96/strided_slice_2/stack?
$lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_96/strided_slice_2/stack_1?
$lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_2/stack_2?
lstm_cell_96/strided_slice_2StridedSlice%lstm_cell_96/ReadVariableOp_2:value:0+lstm_cell_96/strided_slice_2/stack:output:0-lstm_cell_96/strided_slice_2/stack_1:output:0-lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_2?
lstm_cell_96/MatMul_6MatMullstm_cell_96/mul_2:z:0%lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_6?
lstm_cell_96/add_2AddV2lstm_cell_96/BiasAdd_2:output:0lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_2x
lstm_cell_96/ReluRelulstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu?
lstm_cell_96/mul_5Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_5?
lstm_cell_96/add_3AddV2lstm_cell_96/mul_4:z:0lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_3?
lstm_cell_96/ReadVariableOp_3ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_3?
"lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_96/strided_slice_3/stack?
$lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_96/strided_slice_3/stack_1?
$lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_3/stack_2?
lstm_cell_96/strided_slice_3StridedSlice%lstm_cell_96/ReadVariableOp_3:value:0+lstm_cell_96/strided_slice_3/stack:output:0-lstm_cell_96/strided_slice_3/stack_1:output:0-lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_3?
lstm_cell_96/MatMul_7MatMullstm_cell_96/mul_3:z:0%lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_7?
lstm_cell_96/add_4AddV2lstm_cell_96/BiasAdd_3:output:0lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_4?
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_2|
lstm_cell_96/Relu_1Relulstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu_1?
lstm_cell_96/mul_6Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_96_split_readvariableop_resource,lstm_cell_96_split_1_readvariableop_resource$lstm_cell_96_readvariableop_resource*
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
while_body_3085572*
condR
while_cond_3085571*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_96/ReadVariableOp^lstm_cell_96/ReadVariableOp_1^lstm_cell_96/ReadVariableOp_2^lstm_cell_96/ReadVariableOp_3"^lstm_cell_96/split/ReadVariableOp$^lstm_cell_96/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_96/ReadVariableOplstm_cell_96/ReadVariableOp2>
lstm_cell_96/ReadVariableOp_1lstm_cell_96/ReadVariableOp_12>
lstm_cell_96/ReadVariableOp_2lstm_cell_96/ReadVariableOp_22>
lstm_cell_96/ReadVariableOp_3lstm_cell_96/ReadVariableOp_32F
!lstm_cell_96/split/ReadVariableOp!lstm_cell_96/split/ReadVariableOp2J
#lstm_cell_96/split_1/ReadVariableOp#lstm_cell_96/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
"__inference__wrapped_model_3084266
input_40S
@sequential_39_lstm_96_lstm_cell_96_split_readvariableop_resource:	?Q
Bsequential_39_lstm_96_lstm_cell_96_split_1_readvariableop_resource:	?M
:sequential_39_lstm_96_lstm_cell_96_readvariableop_resource:	 ?H
6sequential_39_dense_116_matmul_readvariableop_resource:  E
7sequential_39_dense_116_biasadd_readvariableop_resource: H
6sequential_39_dense_117_matmul_readvariableop_resource: E
7sequential_39_dense_117_biasadd_readvariableop_resource:
identity??.sequential_39/dense_116/BiasAdd/ReadVariableOp?-sequential_39/dense_116/MatMul/ReadVariableOp?.sequential_39/dense_117/BiasAdd/ReadVariableOp?-sequential_39/dense_117/MatMul/ReadVariableOp?1sequential_39/lstm_96/lstm_cell_96/ReadVariableOp?3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_1?3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_2?3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_3?7sequential_39/lstm_96/lstm_cell_96/split/ReadVariableOp?9sequential_39/lstm_96/lstm_cell_96/split_1/ReadVariableOp?sequential_39/lstm_96/whiler
sequential_39/lstm_96/ShapeShapeinput_40*
T0*
_output_shapes
:2
sequential_39/lstm_96/Shape?
)sequential_39/lstm_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_39/lstm_96/strided_slice/stack?
+sequential_39/lstm_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_39/lstm_96/strided_slice/stack_1?
+sequential_39/lstm_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_39/lstm_96/strided_slice/stack_2?
#sequential_39/lstm_96/strided_sliceStridedSlice$sequential_39/lstm_96/Shape:output:02sequential_39/lstm_96/strided_slice/stack:output:04sequential_39/lstm_96/strided_slice/stack_1:output:04sequential_39/lstm_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_39/lstm_96/strided_slice?
!sequential_39/lstm_96/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_39/lstm_96/zeros/mul/y?
sequential_39/lstm_96/zeros/mulMul,sequential_39/lstm_96/strided_slice:output:0*sequential_39/lstm_96/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_39/lstm_96/zeros/mul?
"sequential_39/lstm_96/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_39/lstm_96/zeros/Less/y?
 sequential_39/lstm_96/zeros/LessLess#sequential_39/lstm_96/zeros/mul:z:0+sequential_39/lstm_96/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_39/lstm_96/zeros/Less?
$sequential_39/lstm_96/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_39/lstm_96/zeros/packed/1?
"sequential_39/lstm_96/zeros/packedPack,sequential_39/lstm_96/strided_slice:output:0-sequential_39/lstm_96/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_39/lstm_96/zeros/packed?
!sequential_39/lstm_96/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_39/lstm_96/zeros/Const?
sequential_39/lstm_96/zerosFill+sequential_39/lstm_96/zeros/packed:output:0*sequential_39/lstm_96/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_39/lstm_96/zeros?
#sequential_39/lstm_96/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_39/lstm_96/zeros_1/mul/y?
!sequential_39/lstm_96/zeros_1/mulMul,sequential_39/lstm_96/strided_slice:output:0,sequential_39/lstm_96/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_39/lstm_96/zeros_1/mul?
$sequential_39/lstm_96/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_39/lstm_96/zeros_1/Less/y?
"sequential_39/lstm_96/zeros_1/LessLess%sequential_39/lstm_96/zeros_1/mul:z:0-sequential_39/lstm_96/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_39/lstm_96/zeros_1/Less?
&sequential_39/lstm_96/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_39/lstm_96/zeros_1/packed/1?
$sequential_39/lstm_96/zeros_1/packedPack,sequential_39/lstm_96/strided_slice:output:0/sequential_39/lstm_96/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_39/lstm_96/zeros_1/packed?
#sequential_39/lstm_96/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_39/lstm_96/zeros_1/Const?
sequential_39/lstm_96/zeros_1Fill-sequential_39/lstm_96/zeros_1/packed:output:0,sequential_39/lstm_96/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_39/lstm_96/zeros_1?
$sequential_39/lstm_96/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_39/lstm_96/transpose/perm?
sequential_39/lstm_96/transpose	Transposeinput_40-sequential_39/lstm_96/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2!
sequential_39/lstm_96/transpose?
sequential_39/lstm_96/Shape_1Shape#sequential_39/lstm_96/transpose:y:0*
T0*
_output_shapes
:2
sequential_39/lstm_96/Shape_1?
+sequential_39/lstm_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_39/lstm_96/strided_slice_1/stack?
-sequential_39/lstm_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_39/lstm_96/strided_slice_1/stack_1?
-sequential_39/lstm_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_39/lstm_96/strided_slice_1/stack_2?
%sequential_39/lstm_96/strided_slice_1StridedSlice&sequential_39/lstm_96/Shape_1:output:04sequential_39/lstm_96/strided_slice_1/stack:output:06sequential_39/lstm_96/strided_slice_1/stack_1:output:06sequential_39/lstm_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_39/lstm_96/strided_slice_1?
1sequential_39/lstm_96/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_39/lstm_96/TensorArrayV2/element_shape?
#sequential_39/lstm_96/TensorArrayV2TensorListReserve:sequential_39/lstm_96/TensorArrayV2/element_shape:output:0.sequential_39/lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_39/lstm_96/TensorArrayV2?
Ksequential_39/lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_39/lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_39/lstm_96/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_39/lstm_96/transpose:y:0Tsequential_39/lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_39/lstm_96/TensorArrayUnstack/TensorListFromTensor?
+sequential_39/lstm_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_39/lstm_96/strided_slice_2/stack?
-sequential_39/lstm_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_39/lstm_96/strided_slice_2/stack_1?
-sequential_39/lstm_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_39/lstm_96/strided_slice_2/stack_2?
%sequential_39/lstm_96/strided_slice_2StridedSlice#sequential_39/lstm_96/transpose:y:04sequential_39/lstm_96/strided_slice_2/stack:output:06sequential_39/lstm_96/strided_slice_2/stack_1:output:06sequential_39/lstm_96/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_39/lstm_96/strided_slice_2?
2sequential_39/lstm_96/lstm_cell_96/ones_like/ShapeShape$sequential_39/lstm_96/zeros:output:0*
T0*
_output_shapes
:24
2sequential_39/lstm_96/lstm_cell_96/ones_like/Shape?
2sequential_39/lstm_96/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2sequential_39/lstm_96/lstm_cell_96/ones_like/Const?
,sequential_39/lstm_96/lstm_cell_96/ones_likeFill;sequential_39/lstm_96/lstm_cell_96/ones_like/Shape:output:0;sequential_39/lstm_96/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/lstm_cell_96/ones_like?
2sequential_39/lstm_96/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_39/lstm_96/lstm_cell_96/split/split_dim?
7sequential_39/lstm_96/lstm_cell_96/split/ReadVariableOpReadVariableOp@sequential_39_lstm_96_lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_39/lstm_96/lstm_cell_96/split/ReadVariableOp?
(sequential_39/lstm_96/lstm_cell_96/splitSplit;sequential_39/lstm_96/lstm_cell_96/split/split_dim:output:0?sequential_39/lstm_96/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_39/lstm_96/lstm_cell_96/split?
)sequential_39/lstm_96/lstm_cell_96/MatMulMatMul.sequential_39/lstm_96/strided_slice_2:output:01sequential_39/lstm_96/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_39/lstm_96/lstm_cell_96/MatMul?
+sequential_39/lstm_96/lstm_cell_96/MatMul_1MatMul.sequential_39/lstm_96/strided_slice_2:output:01sequential_39/lstm_96/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2-
+sequential_39/lstm_96/lstm_cell_96/MatMul_1?
+sequential_39/lstm_96/lstm_cell_96/MatMul_2MatMul.sequential_39/lstm_96/strided_slice_2:output:01sequential_39/lstm_96/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2-
+sequential_39/lstm_96/lstm_cell_96/MatMul_2?
+sequential_39/lstm_96/lstm_cell_96/MatMul_3MatMul.sequential_39/lstm_96/strided_slice_2:output:01sequential_39/lstm_96/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2-
+sequential_39/lstm_96/lstm_cell_96/MatMul_3?
4sequential_39/lstm_96/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential_39/lstm_96/lstm_cell_96/split_1/split_dim?
9sequential_39/lstm_96/lstm_cell_96/split_1/ReadVariableOpReadVariableOpBsequential_39_lstm_96_lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_39/lstm_96/lstm_cell_96/split_1/ReadVariableOp?
*sequential_39/lstm_96/lstm_cell_96/split_1Split=sequential_39/lstm_96/lstm_cell_96/split_1/split_dim:output:0Asequential_39/lstm_96/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2,
*sequential_39/lstm_96/lstm_cell_96/split_1?
*sequential_39/lstm_96/lstm_cell_96/BiasAddBiasAdd3sequential_39/lstm_96/lstm_cell_96/MatMul:product:03sequential_39/lstm_96/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_39/lstm_96/lstm_cell_96/BiasAdd?
,sequential_39/lstm_96/lstm_cell_96/BiasAdd_1BiasAdd5sequential_39/lstm_96/lstm_cell_96/MatMul_1:product:03sequential_39/lstm_96/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/lstm_cell_96/BiasAdd_1?
,sequential_39/lstm_96/lstm_cell_96/BiasAdd_2BiasAdd5sequential_39/lstm_96/lstm_cell_96/MatMul_2:product:03sequential_39/lstm_96/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/lstm_cell_96/BiasAdd_2?
,sequential_39/lstm_96/lstm_cell_96/BiasAdd_3BiasAdd5sequential_39/lstm_96/lstm_cell_96/MatMul_3:product:03sequential_39/lstm_96/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/lstm_cell_96/BiasAdd_3?
&sequential_39/lstm_96/lstm_cell_96/mulMul$sequential_39/lstm_96/zeros:output:05sequential_39/lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_39/lstm_96/lstm_cell_96/mul?
(sequential_39/lstm_96/lstm_cell_96/mul_1Mul$sequential_39/lstm_96/zeros:output:05sequential_39/lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/mul_1?
(sequential_39/lstm_96/lstm_cell_96/mul_2Mul$sequential_39/lstm_96/zeros:output:05sequential_39/lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/mul_2?
(sequential_39/lstm_96/lstm_cell_96/mul_3Mul$sequential_39/lstm_96/zeros:output:05sequential_39/lstm_96/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/mul_3?
1sequential_39/lstm_96/lstm_cell_96/ReadVariableOpReadVariableOp:sequential_39_lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1sequential_39/lstm_96/lstm_cell_96/ReadVariableOp?
6sequential_39/lstm_96/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_39/lstm_96/lstm_cell_96/strided_slice/stack?
8sequential_39/lstm_96/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_39/lstm_96/lstm_cell_96/strided_slice/stack_1?
8sequential_39/lstm_96/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_39/lstm_96/lstm_cell_96/strided_slice/stack_2?
0sequential_39/lstm_96/lstm_cell_96/strided_sliceStridedSlice9sequential_39/lstm_96/lstm_cell_96/ReadVariableOp:value:0?sequential_39/lstm_96/lstm_cell_96/strided_slice/stack:output:0Asequential_39/lstm_96/lstm_cell_96/strided_slice/stack_1:output:0Asequential_39/lstm_96/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask22
0sequential_39/lstm_96/lstm_cell_96/strided_slice?
+sequential_39/lstm_96/lstm_cell_96/MatMul_4MatMul*sequential_39/lstm_96/lstm_cell_96/mul:z:09sequential_39/lstm_96/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_39/lstm_96/lstm_cell_96/MatMul_4?
&sequential_39/lstm_96/lstm_cell_96/addAddV23sequential_39/lstm_96/lstm_cell_96/BiasAdd:output:05sequential_39/lstm_96/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2(
&sequential_39/lstm_96/lstm_cell_96/add?
*sequential_39/lstm_96/lstm_cell_96/SigmoidSigmoid*sequential_39/lstm_96/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_39/lstm_96/lstm_cell_96/Sigmoid?
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_1ReadVariableOp:sequential_39_lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_1?
8sequential_39/lstm_96/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack?
:sequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2<
:sequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack_1?
:sequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack_2?
2sequential_39/lstm_96/lstm_cell_96/strided_slice_1StridedSlice;sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_1:value:0Asequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack:output:0Csequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack_1:output:0Csequential_39/lstm_96/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_39/lstm_96/lstm_cell_96/strided_slice_1?
+sequential_39/lstm_96/lstm_cell_96/MatMul_5MatMul,sequential_39/lstm_96/lstm_cell_96/mul_1:z:0;sequential_39/lstm_96/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_39/lstm_96/lstm_cell_96/MatMul_5?
(sequential_39/lstm_96/lstm_cell_96/add_1AddV25sequential_39/lstm_96/lstm_cell_96/BiasAdd_1:output:05sequential_39/lstm_96/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/add_1?
,sequential_39/lstm_96/lstm_cell_96/Sigmoid_1Sigmoid,sequential_39/lstm_96/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/lstm_cell_96/Sigmoid_1?
(sequential_39/lstm_96/lstm_cell_96/mul_4Mul0sequential_39/lstm_96/lstm_cell_96/Sigmoid_1:y:0&sequential_39/lstm_96/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/mul_4?
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_2ReadVariableOp:sequential_39_lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_2?
8sequential_39/lstm_96/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2:
8sequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack?
:sequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2<
:sequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack_1?
:sequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack_2?
2sequential_39/lstm_96/lstm_cell_96/strided_slice_2StridedSlice;sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_2:value:0Asequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack:output:0Csequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack_1:output:0Csequential_39/lstm_96/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_39/lstm_96/lstm_cell_96/strided_slice_2?
+sequential_39/lstm_96/lstm_cell_96/MatMul_6MatMul,sequential_39/lstm_96/lstm_cell_96/mul_2:z:0;sequential_39/lstm_96/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_39/lstm_96/lstm_cell_96/MatMul_6?
(sequential_39/lstm_96/lstm_cell_96/add_2AddV25sequential_39/lstm_96/lstm_cell_96/BiasAdd_2:output:05sequential_39/lstm_96/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/add_2?
'sequential_39/lstm_96/lstm_cell_96/ReluRelu,sequential_39/lstm_96/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_39/lstm_96/lstm_cell_96/Relu?
(sequential_39/lstm_96/lstm_cell_96/mul_5Mul.sequential_39/lstm_96/lstm_cell_96/Sigmoid:y:05sequential_39/lstm_96/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/mul_5?
(sequential_39/lstm_96/lstm_cell_96/add_3AddV2,sequential_39/lstm_96/lstm_cell_96/mul_4:z:0,sequential_39/lstm_96/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/add_3?
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_3ReadVariableOp:sequential_39_lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype025
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_3?
8sequential_39/lstm_96/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2:
8sequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack?
:sequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack_1?
:sequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack_2?
2sequential_39/lstm_96/lstm_cell_96/strided_slice_3StridedSlice;sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_3:value:0Asequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack:output:0Csequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack_1:output:0Csequential_39/lstm_96/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask24
2sequential_39/lstm_96/lstm_cell_96/strided_slice_3?
+sequential_39/lstm_96/lstm_cell_96/MatMul_7MatMul,sequential_39/lstm_96/lstm_cell_96/mul_3:z:0;sequential_39/lstm_96/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_39/lstm_96/lstm_cell_96/MatMul_7?
(sequential_39/lstm_96/lstm_cell_96/add_4AddV25sequential_39/lstm_96/lstm_cell_96/BiasAdd_3:output:05sequential_39/lstm_96/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/add_4?
,sequential_39/lstm_96/lstm_cell_96/Sigmoid_2Sigmoid,sequential_39/lstm_96/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/lstm_cell_96/Sigmoid_2?
)sequential_39/lstm_96/lstm_cell_96/Relu_1Relu,sequential_39/lstm_96/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_39/lstm_96/lstm_cell_96/Relu_1?
(sequential_39/lstm_96/lstm_cell_96/mul_6Mul0sequential_39/lstm_96/lstm_cell_96/Sigmoid_2:y:07sequential_39/lstm_96/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2*
(sequential_39/lstm_96/lstm_cell_96/mul_6?
3sequential_39/lstm_96/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    25
3sequential_39/lstm_96/TensorArrayV2_1/element_shape?
%sequential_39/lstm_96/TensorArrayV2_1TensorListReserve<sequential_39/lstm_96/TensorArrayV2_1/element_shape:output:0.sequential_39/lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_39/lstm_96/TensorArrayV2_1z
sequential_39/lstm_96/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_39/lstm_96/time?
.sequential_39/lstm_96/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_39/lstm_96/while/maximum_iterations?
(sequential_39/lstm_96/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_39/lstm_96/while/loop_counter?
sequential_39/lstm_96/whileWhile1sequential_39/lstm_96/while/loop_counter:output:07sequential_39/lstm_96/while/maximum_iterations:output:0#sequential_39/lstm_96/time:output:0.sequential_39/lstm_96/TensorArrayV2_1:handle:0$sequential_39/lstm_96/zeros:output:0&sequential_39/lstm_96/zeros_1:output:0.sequential_39/lstm_96/strided_slice_1:output:0Msequential_39/lstm_96/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_39_lstm_96_lstm_cell_96_split_readvariableop_resourceBsequential_39_lstm_96_lstm_cell_96_split_1_readvariableop_resource:sequential_39_lstm_96_lstm_cell_96_readvariableop_resource*
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
(sequential_39_lstm_96_while_body_3084117*4
cond,R*
(sequential_39_lstm_96_while_cond_3084116*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_39/lstm_96/while?
Fsequential_39/lstm_96/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2H
Fsequential_39/lstm_96/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_39/lstm_96/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_39/lstm_96/while:output:3Osequential_39/lstm_96/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02:
8sequential_39/lstm_96/TensorArrayV2Stack/TensorListStack?
+sequential_39/lstm_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_39/lstm_96/strided_slice_3/stack?
-sequential_39/lstm_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_39/lstm_96/strided_slice_3/stack_1?
-sequential_39/lstm_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_39/lstm_96/strided_slice_3/stack_2?
%sequential_39/lstm_96/strided_slice_3StridedSliceAsequential_39/lstm_96/TensorArrayV2Stack/TensorListStack:tensor:04sequential_39/lstm_96/strided_slice_3/stack:output:06sequential_39/lstm_96/strided_slice_3/stack_1:output:06sequential_39/lstm_96/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2'
%sequential_39/lstm_96/strided_slice_3?
&sequential_39/lstm_96/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_39/lstm_96/transpose_1/perm?
!sequential_39/lstm_96/transpose_1	TransposeAsequential_39/lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_39/lstm_96/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2#
!sequential_39/lstm_96/transpose_1?
sequential_39/lstm_96/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_39/lstm_96/runtime?
-sequential_39/dense_116/MatMul/ReadVariableOpReadVariableOp6sequential_39_dense_116_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_39/dense_116/MatMul/ReadVariableOp?
sequential_39/dense_116/MatMulMatMul.sequential_39/lstm_96/strided_slice_3:output:05sequential_39/dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_39/dense_116/MatMul?
.sequential_39/dense_116/BiasAdd/ReadVariableOpReadVariableOp7sequential_39_dense_116_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_39/dense_116/BiasAdd/ReadVariableOp?
sequential_39/dense_116/BiasAddBiasAdd(sequential_39/dense_116/MatMul:product:06sequential_39/dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2!
sequential_39/dense_116/BiasAdd?
sequential_39/dense_116/ReluRelu(sequential_39/dense_116/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_39/dense_116/Relu?
-sequential_39/dense_117/MatMul/ReadVariableOpReadVariableOp6sequential_39_dense_117_matmul_readvariableop_resource*
_output_shapes

: *
dtype02/
-sequential_39/dense_117/MatMul/ReadVariableOp?
sequential_39/dense_117/MatMulMatMul*sequential_39/dense_116/Relu:activations:05sequential_39/dense_117/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_39/dense_117/MatMul?
.sequential_39/dense_117/BiasAdd/ReadVariableOpReadVariableOp7sequential_39_dense_117_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_39/dense_117/BiasAdd/ReadVariableOp?
sequential_39/dense_117/BiasAddBiasAdd(sequential_39/dense_117/MatMul:product:06sequential_39/dense_117/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_39/dense_117/BiasAdd?
sequential_39/reshape_58/ShapeShape(sequential_39/dense_117/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_39/reshape_58/Shape?
,sequential_39/reshape_58/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_39/reshape_58/strided_slice/stack?
.sequential_39/reshape_58/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_39/reshape_58/strided_slice/stack_1?
.sequential_39/reshape_58/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_39/reshape_58/strided_slice/stack_2?
&sequential_39/reshape_58/strided_sliceStridedSlice'sequential_39/reshape_58/Shape:output:05sequential_39/reshape_58/strided_slice/stack:output:07sequential_39/reshape_58/strided_slice/stack_1:output:07sequential_39/reshape_58/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_39/reshape_58/strided_slice?
(sequential_39/reshape_58/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_39/reshape_58/Reshape/shape/1?
(sequential_39/reshape_58/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_39/reshape_58/Reshape/shape/2?
&sequential_39/reshape_58/Reshape/shapePack/sequential_39/reshape_58/strided_slice:output:01sequential_39/reshape_58/Reshape/shape/1:output:01sequential_39/reshape_58/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_39/reshape_58/Reshape/shape?
 sequential_39/reshape_58/ReshapeReshape(sequential_39/dense_117/BiasAdd:output:0/sequential_39/reshape_58/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_39/reshape_58/Reshape?
IdentityIdentity)sequential_39/reshape_58/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp/^sequential_39/dense_116/BiasAdd/ReadVariableOp.^sequential_39/dense_116/MatMul/ReadVariableOp/^sequential_39/dense_117/BiasAdd/ReadVariableOp.^sequential_39/dense_117/MatMul/ReadVariableOp2^sequential_39/lstm_96/lstm_cell_96/ReadVariableOp4^sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_14^sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_24^sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_38^sequential_39/lstm_96/lstm_cell_96/split/ReadVariableOp:^sequential_39/lstm_96/lstm_cell_96/split_1/ReadVariableOp^sequential_39/lstm_96/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2`
.sequential_39/dense_116/BiasAdd/ReadVariableOp.sequential_39/dense_116/BiasAdd/ReadVariableOp2^
-sequential_39/dense_116/MatMul/ReadVariableOp-sequential_39/dense_116/MatMul/ReadVariableOp2`
.sequential_39/dense_117/BiasAdd/ReadVariableOp.sequential_39/dense_117/BiasAdd/ReadVariableOp2^
-sequential_39/dense_117/MatMul/ReadVariableOp-sequential_39/dense_117/MatMul/ReadVariableOp2f
1sequential_39/lstm_96/lstm_cell_96/ReadVariableOp1sequential_39/lstm_96/lstm_cell_96/ReadVariableOp2j
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_13sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_12j
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_23sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_22j
3sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_33sequential_39/lstm_96/lstm_cell_96/ReadVariableOp_32r
7sequential_39/lstm_96/lstm_cell_96/split/ReadVariableOp7sequential_39/lstm_96/lstm_cell_96/split/ReadVariableOp2v
9sequential_39/lstm_96/lstm_cell_96/split_1/ReadVariableOp9sequential_39/lstm_96/lstm_cell_96/split_1/ReadVariableOp2:
sequential_39/lstm_96/whilesequential_39/lstm_96/while:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_40
??
?
(sequential_39_lstm_96_while_body_3084117H
Dsequential_39_lstm_96_while_sequential_39_lstm_96_while_loop_counterN
Jsequential_39_lstm_96_while_sequential_39_lstm_96_while_maximum_iterations+
'sequential_39_lstm_96_while_placeholder-
)sequential_39_lstm_96_while_placeholder_1-
)sequential_39_lstm_96_while_placeholder_2-
)sequential_39_lstm_96_while_placeholder_3G
Csequential_39_lstm_96_while_sequential_39_lstm_96_strided_slice_1_0?
sequential_39_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_39_lstm_96_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_39_lstm_96_while_lstm_cell_96_split_readvariableop_resource_0:	?Y
Jsequential_39_lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0:	?U
Bsequential_39_lstm_96_while_lstm_cell_96_readvariableop_resource_0:	 ?(
$sequential_39_lstm_96_while_identity*
&sequential_39_lstm_96_while_identity_1*
&sequential_39_lstm_96_while_identity_2*
&sequential_39_lstm_96_while_identity_3*
&sequential_39_lstm_96_while_identity_4*
&sequential_39_lstm_96_while_identity_5E
Asequential_39_lstm_96_while_sequential_39_lstm_96_strided_slice_1?
}sequential_39_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_39_lstm_96_tensorarrayunstack_tensorlistfromtensorY
Fsequential_39_lstm_96_while_lstm_cell_96_split_readvariableop_resource:	?W
Hsequential_39_lstm_96_while_lstm_cell_96_split_1_readvariableop_resource:	?S
@sequential_39_lstm_96_while_lstm_cell_96_readvariableop_resource:	 ???7sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp?9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_1?9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_2?9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_3?=sequential_39/lstm_96/while/lstm_cell_96/split/ReadVariableOp??sequential_39/lstm_96/while/lstm_cell_96/split_1/ReadVariableOp?
Msequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_39_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_39_lstm_96_tensorarrayunstack_tensorlistfromtensor_0'sequential_39_lstm_96_while_placeholderVsequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem?
8sequential_39/lstm_96/while/lstm_cell_96/ones_like/ShapeShape)sequential_39_lstm_96_while_placeholder_2*
T0*
_output_shapes
:2:
8sequential_39/lstm_96/while/lstm_cell_96/ones_like/Shape?
8sequential_39/lstm_96/while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8sequential_39/lstm_96/while/lstm_cell_96/ones_like/Const?
2sequential_39/lstm_96/while/lstm_cell_96/ones_likeFillAsequential_39/lstm_96/while/lstm_cell_96/ones_like/Shape:output:0Asequential_39/lstm_96/while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 24
2sequential_39/lstm_96/while/lstm_cell_96/ones_like?
8sequential_39/lstm_96/while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_39/lstm_96/while/lstm_cell_96/split/split_dim?
=sequential_39/lstm_96/while/lstm_cell_96/split/ReadVariableOpReadVariableOpHsequential_39_lstm_96_while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02?
=sequential_39/lstm_96/while/lstm_cell_96/split/ReadVariableOp?
.sequential_39/lstm_96/while/lstm_cell_96/splitSplitAsequential_39/lstm_96/while/lstm_cell_96/split/split_dim:output:0Esequential_39/lstm_96/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_39/lstm_96/while/lstm_cell_96/split?
/sequential_39/lstm_96/while/lstm_cell_96/MatMulMatMulFsequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_39/lstm_96/while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_39/lstm_96/while/lstm_cell_96/MatMul?
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_1MatMulFsequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_39/lstm_96/while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 23
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_1?
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_2MatMulFsequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_39/lstm_96/while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 23
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_2?
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_3MatMulFsequential_39/lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_39/lstm_96/while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 23
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_3?
:sequential_39/lstm_96/while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential_39/lstm_96/while/lstm_cell_96/split_1/split_dim?
?sequential_39/lstm_96/while/lstm_cell_96/split_1/ReadVariableOpReadVariableOpJsequential_39_lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_39/lstm_96/while/lstm_cell_96/split_1/ReadVariableOp?
0sequential_39/lstm_96/while/lstm_cell_96/split_1SplitCsequential_39/lstm_96/while/lstm_cell_96/split_1/split_dim:output:0Gsequential_39/lstm_96/while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split22
0sequential_39/lstm_96/while/lstm_cell_96/split_1?
0sequential_39/lstm_96/while/lstm_cell_96/BiasAddBiasAdd9sequential_39/lstm_96/while/lstm_cell_96/MatMul:product:09sequential_39/lstm_96/while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 22
0sequential_39/lstm_96/while/lstm_cell_96/BiasAdd?
2sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_1BiasAdd;sequential_39/lstm_96/while/lstm_cell_96/MatMul_1:product:09sequential_39/lstm_96/while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 24
2sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_1?
2sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_2BiasAdd;sequential_39/lstm_96/while/lstm_cell_96/MatMul_2:product:09sequential_39/lstm_96/while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 24
2sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_2?
2sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_3BiasAdd;sequential_39/lstm_96/while/lstm_cell_96/MatMul_3:product:09sequential_39/lstm_96/while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 24
2sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_3?
,sequential_39/lstm_96/while/lstm_cell_96/mulMul)sequential_39_lstm_96_while_placeholder_2;sequential_39/lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/while/lstm_cell_96/mul?
.sequential_39/lstm_96/while/lstm_cell_96/mul_1Mul)sequential_39_lstm_96_while_placeholder_2;sequential_39/lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/mul_1?
.sequential_39/lstm_96/while/lstm_cell_96/mul_2Mul)sequential_39_lstm_96_while_placeholder_2;sequential_39/lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/mul_2?
.sequential_39/lstm_96/while/lstm_cell_96/mul_3Mul)sequential_39_lstm_96_while_placeholder_2;sequential_39/lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/mul_3?
7sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOpReadVariableOpBsequential_39_lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype029
7sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp?
<sequential_39/lstm_96/while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack?
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack_1?
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack_2?
6sequential_39/lstm_96/while/lstm_cell_96/strided_sliceStridedSlice?sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp:value:0Esequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack:output:0Gsequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack_1:output:0Gsequential_39/lstm_96/while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask28
6sequential_39/lstm_96/while/lstm_cell_96/strided_slice?
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_4MatMul0sequential_39/lstm_96/while/lstm_cell_96/mul:z:0?sequential_39/lstm_96/while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_4?
,sequential_39/lstm_96/while/lstm_cell_96/addAddV29sequential_39/lstm_96/while/lstm_cell_96/BiasAdd:output:0;sequential_39/lstm_96/while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2.
,sequential_39/lstm_96/while/lstm_cell_96/add?
0sequential_39/lstm_96/while/lstm_cell_96/SigmoidSigmoid0sequential_39/lstm_96/while/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 22
0sequential_39/lstm_96/while/lstm_cell_96/Sigmoid?
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_1ReadVariableOpBsequential_39_lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_1?
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack?
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2B
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack_1?
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack_2?
8sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1StridedSliceAsequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_1:value:0Gsequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack:output:0Isequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack_1:output:0Isequential_39/lstm_96/while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_39/lstm_96/while/lstm_cell_96/strided_slice_1?
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_5MatMul2sequential_39/lstm_96/while/lstm_cell_96/mul_1:z:0Asequential_39/lstm_96/while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_5?
.sequential_39/lstm_96/while/lstm_cell_96/add_1AddV2;sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_1:output:0;sequential_39/lstm_96/while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/add_1?
2sequential_39/lstm_96/while/lstm_cell_96/Sigmoid_1Sigmoid2sequential_39/lstm_96/while/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_39/lstm_96/while/lstm_cell_96/Sigmoid_1?
.sequential_39/lstm_96/while/lstm_cell_96/mul_4Mul6sequential_39/lstm_96/while/lstm_cell_96/Sigmoid_1:y:0)sequential_39_lstm_96_while_placeholder_3*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/mul_4?
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_2ReadVariableOpBsequential_39_lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_2?
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack?
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2B
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack_1?
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack_2?
8sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2StridedSliceAsequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_2:value:0Gsequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack:output:0Isequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack_1:output:0Isequential_39/lstm_96/while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_39/lstm_96/while/lstm_cell_96/strided_slice_2?
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_6MatMul2sequential_39/lstm_96/while/lstm_cell_96/mul_2:z:0Asequential_39/lstm_96/while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_6?
.sequential_39/lstm_96/while/lstm_cell_96/add_2AddV2;sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_2:output:0;sequential_39/lstm_96/while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/add_2?
-sequential_39/lstm_96/while/lstm_cell_96/ReluRelu2sequential_39/lstm_96/while/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_39/lstm_96/while/lstm_cell_96/Relu?
.sequential_39/lstm_96/while/lstm_cell_96/mul_5Mul4sequential_39/lstm_96/while/lstm_cell_96/Sigmoid:y:0;sequential_39/lstm_96/while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/mul_5?
.sequential_39/lstm_96/while/lstm_cell_96/add_3AddV22sequential_39/lstm_96/while/lstm_cell_96/mul_4:z:02sequential_39/lstm_96/while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/add_3?
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_3ReadVariableOpBsequential_39_lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02;
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_3?
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2@
>sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack?
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2B
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack_1?
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack_2?
8sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3StridedSliceAsequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_3:value:0Gsequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack:output:0Isequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack_1:output:0Isequential_39/lstm_96/while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2:
8sequential_39/lstm_96/while/lstm_cell_96/strided_slice_3?
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_7MatMul2sequential_39/lstm_96/while/lstm_cell_96/mul_3:z:0Asequential_39/lstm_96/while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 23
1sequential_39/lstm_96/while/lstm_cell_96/MatMul_7?
.sequential_39/lstm_96/while/lstm_cell_96/add_4AddV2;sequential_39/lstm_96/while/lstm_cell_96/BiasAdd_3:output:0;sequential_39/lstm_96/while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/add_4?
2sequential_39/lstm_96/while/lstm_cell_96/Sigmoid_2Sigmoid2sequential_39/lstm_96/while/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 24
2sequential_39/lstm_96/while/lstm_cell_96/Sigmoid_2?
/sequential_39/lstm_96/while/lstm_cell_96/Relu_1Relu2sequential_39/lstm_96/while/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_39/lstm_96/while/lstm_cell_96/Relu_1?
.sequential_39/lstm_96/while/lstm_cell_96/mul_6Mul6sequential_39/lstm_96/while/lstm_cell_96/Sigmoid_2:y:0=sequential_39/lstm_96/while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 20
.sequential_39/lstm_96/while/lstm_cell_96/mul_6?
@sequential_39/lstm_96/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_39_lstm_96_while_placeholder_1'sequential_39_lstm_96_while_placeholder2sequential_39/lstm_96/while/lstm_cell_96/mul_6:z:0*
_output_shapes
: *
element_dtype02B
@sequential_39/lstm_96/while/TensorArrayV2Write/TensorListSetItem?
!sequential_39/lstm_96/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_39/lstm_96/while/add/y?
sequential_39/lstm_96/while/addAddV2'sequential_39_lstm_96_while_placeholder*sequential_39/lstm_96/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_39/lstm_96/while/add?
#sequential_39/lstm_96/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_39/lstm_96/while/add_1/y?
!sequential_39/lstm_96/while/add_1AddV2Dsequential_39_lstm_96_while_sequential_39_lstm_96_while_loop_counter,sequential_39/lstm_96/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_39/lstm_96/while/add_1?
$sequential_39/lstm_96/while/IdentityIdentity%sequential_39/lstm_96/while/add_1:z:0!^sequential_39/lstm_96/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_39/lstm_96/while/Identity?
&sequential_39/lstm_96/while/Identity_1IdentityJsequential_39_lstm_96_while_sequential_39_lstm_96_while_maximum_iterations!^sequential_39/lstm_96/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_39/lstm_96/while/Identity_1?
&sequential_39/lstm_96/while/Identity_2Identity#sequential_39/lstm_96/while/add:z:0!^sequential_39/lstm_96/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_39/lstm_96/while/Identity_2?
&sequential_39/lstm_96/while/Identity_3IdentityPsequential_39/lstm_96/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_39/lstm_96/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_39/lstm_96/while/Identity_3?
&sequential_39/lstm_96/while/Identity_4Identity2sequential_39/lstm_96/while/lstm_cell_96/mul_6:z:0!^sequential_39/lstm_96/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_39/lstm_96/while/Identity_4?
&sequential_39/lstm_96/while/Identity_5Identity2sequential_39/lstm_96/while/lstm_cell_96/add_3:z:0!^sequential_39/lstm_96/while/NoOp*
T0*'
_output_shapes
:????????? 2(
&sequential_39/lstm_96/while/Identity_5?
 sequential_39/lstm_96/while/NoOpNoOp8^sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp:^sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_1:^sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_2:^sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_3>^sequential_39/lstm_96/while/lstm_cell_96/split/ReadVariableOp@^sequential_39/lstm_96/while/lstm_cell_96/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_39/lstm_96/while/NoOp"U
$sequential_39_lstm_96_while_identity-sequential_39/lstm_96/while/Identity:output:0"Y
&sequential_39_lstm_96_while_identity_1/sequential_39/lstm_96/while/Identity_1:output:0"Y
&sequential_39_lstm_96_while_identity_2/sequential_39/lstm_96/while/Identity_2:output:0"Y
&sequential_39_lstm_96_while_identity_3/sequential_39/lstm_96/while/Identity_3:output:0"Y
&sequential_39_lstm_96_while_identity_4/sequential_39/lstm_96/while/Identity_4:output:0"Y
&sequential_39_lstm_96_while_identity_5/sequential_39/lstm_96/while/Identity_5:output:0"?
@sequential_39_lstm_96_while_lstm_cell_96_readvariableop_resourceBsequential_39_lstm_96_while_lstm_cell_96_readvariableop_resource_0"?
Hsequential_39_lstm_96_while_lstm_cell_96_split_1_readvariableop_resourceJsequential_39_lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0"?
Fsequential_39_lstm_96_while_lstm_cell_96_split_readvariableop_resourceHsequential_39_lstm_96_while_lstm_cell_96_split_readvariableop_resource_0"?
Asequential_39_lstm_96_while_sequential_39_lstm_96_strided_slice_1Csequential_39_lstm_96_while_sequential_39_lstm_96_strided_slice_1_0"?
}sequential_39_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_39_lstm_96_tensorarrayunstack_tensorlistfromtensorsequential_39_lstm_96_while_tensorarrayv2read_tensorlistgetitem_sequential_39_lstm_96_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2r
7sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp7sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp2v
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_19sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_12v
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_29sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_22v
9sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_39sequential_39/lstm_96/while/lstm_cell_96/ReadVariableOp_32~
=sequential_39/lstm_96/while/lstm_cell_96/split/ReadVariableOp=sequential_39/lstm_96/while/lstm_cell_96/split/ReadVariableOp2?
?sequential_39/lstm_96/while/lstm_cell_96/split_1/ReadVariableOp?sequential_39/lstm_96/while/lstm_cell_96/split_1/ReadVariableOp: 
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087188
inputs_0=
*lstm_cell_96_split_readvariableop_resource:	?;
,lstm_cell_96_split_1_readvariableop_resource:	?7
$lstm_cell_96_readvariableop_resource:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_96/ReadVariableOp?lstm_cell_96/ReadVariableOp_1?lstm_cell_96/ReadVariableOp_2?lstm_cell_96/ReadVariableOp_3?!lstm_cell_96/split/ReadVariableOp?#lstm_cell_96/split_1/ReadVariableOp?whileF
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
lstm_cell_96/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_96/ones_like/Shape?
lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_96/ones_like/Const?
lstm_cell_96/ones_likeFill%lstm_cell_96/ones_like/Shape:output:0%lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/ones_like}
lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout/Const?
lstm_cell_96/dropout/MulMullstm_cell_96/ones_like:output:0#lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Mul?
lstm_cell_96/dropout/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout/Shape?
1lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???23
1lstm_cell_96/dropout/random_uniform/RandomUniform?
#lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_96/dropout/GreaterEqual/y?
!lstm_cell_96/dropout/GreaterEqualGreaterEqual:lstm_cell_96/dropout/random_uniform/RandomUniform:output:0,lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_96/dropout/GreaterEqual?
lstm_cell_96/dropout/CastCast%lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Cast?
lstm_cell_96/dropout/Mul_1Mullstm_cell_96/dropout/Mul:z:0lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Mul_1?
lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_1/Const?
lstm_cell_96/dropout_1/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Mul?
lstm_cell_96/dropout_1/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_1/Shape?
3lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_96/dropout_1/random_uniform/RandomUniform?
%lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_1/GreaterEqual/y?
#lstm_cell_96/dropout_1/GreaterEqualGreaterEqual<lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_1/GreaterEqual?
lstm_cell_96/dropout_1/CastCast'lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Cast?
lstm_cell_96/dropout_1/Mul_1Mullstm_cell_96/dropout_1/Mul:z:0lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Mul_1?
lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_2/Const?
lstm_cell_96/dropout_2/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Mul?
lstm_cell_96/dropout_2/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_2/Shape?
3lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_96/dropout_2/random_uniform/RandomUniform?
%lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_2/GreaterEqual/y?
#lstm_cell_96/dropout_2/GreaterEqualGreaterEqual<lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_2/GreaterEqual?
lstm_cell_96/dropout_2/CastCast'lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Cast?
lstm_cell_96/dropout_2/Mul_1Mullstm_cell_96/dropout_2/Mul:z:0lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Mul_1?
lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_3/Const?
lstm_cell_96/dropout_3/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Mul?
lstm_cell_96/dropout_3/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_3/Shape?
3lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ƈ?25
3lstm_cell_96/dropout_3/random_uniform/RandomUniform?
%lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_3/GreaterEqual/y?
#lstm_cell_96/dropout_3/GreaterEqualGreaterEqual<lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_3/GreaterEqual?
lstm_cell_96/dropout_3/CastCast'lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Cast?
lstm_cell_96/dropout_3/Mul_1Mullstm_cell_96/dropout_3/Mul:z:0lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Mul_1~
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_96/split/split_dim?
!lstm_cell_96/split/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_96/split/ReadVariableOp?
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0)lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_96/split?
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul?
lstm_cell_96/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_1?
lstm_cell_96/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_2?
lstm_cell_96/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_3?
lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_96/split_1/split_dim?
#lstm_cell_96/split_1/ReadVariableOpReadVariableOp,lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_96/split_1/ReadVariableOp?
lstm_cell_96/split_1Split'lstm_cell_96/split_1/split_dim:output:0+lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_96/split_1?
lstm_cell_96/BiasAddBiasAddlstm_cell_96/MatMul:product:0lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd?
lstm_cell_96/BiasAdd_1BiasAddlstm_cell_96/MatMul_1:product:0lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_1?
lstm_cell_96/BiasAdd_2BiasAddlstm_cell_96/MatMul_2:product:0lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_2?
lstm_cell_96/BiasAdd_3BiasAddlstm_cell_96/MatMul_3:product:0lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_3?
lstm_cell_96/mulMulzeros:output:0lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul?
lstm_cell_96/mul_1Mulzeros:output:0 lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_1?
lstm_cell_96/mul_2Mulzeros:output:0 lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_2?
lstm_cell_96/mul_3Mulzeros:output:0 lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_3?
lstm_cell_96/ReadVariableOpReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp?
 lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_96/strided_slice/stack?
"lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice/stack_1?
"lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_96/strided_slice/stack_2?
lstm_cell_96/strided_sliceStridedSlice#lstm_cell_96/ReadVariableOp:value:0)lstm_cell_96/strided_slice/stack:output:0+lstm_cell_96/strided_slice/stack_1:output:0+lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice?
lstm_cell_96/MatMul_4MatMullstm_cell_96/mul:z:0#lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_4?
lstm_cell_96/addAddV2lstm_cell_96/BiasAdd:output:0lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add
lstm_cell_96/SigmoidSigmoidlstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid?
lstm_cell_96/ReadVariableOp_1ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_1?
"lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice_1/stack?
$lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_96/strided_slice_1/stack_1?
$lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_1/stack_2?
lstm_cell_96/strided_slice_1StridedSlice%lstm_cell_96/ReadVariableOp_1:value:0+lstm_cell_96/strided_slice_1/stack:output:0-lstm_cell_96/strided_slice_1/stack_1:output:0-lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_1?
lstm_cell_96/MatMul_5MatMullstm_cell_96/mul_1:z:0%lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_5?
lstm_cell_96/add_1AddV2lstm_cell_96/BiasAdd_1:output:0lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_1?
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_1?
lstm_cell_96/mul_4Mullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_4?
lstm_cell_96/ReadVariableOp_2ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_2?
"lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_96/strided_slice_2/stack?
$lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_96/strided_slice_2/stack_1?
$lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_2/stack_2?
lstm_cell_96/strided_slice_2StridedSlice%lstm_cell_96/ReadVariableOp_2:value:0+lstm_cell_96/strided_slice_2/stack:output:0-lstm_cell_96/strided_slice_2/stack_1:output:0-lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_2?
lstm_cell_96/MatMul_6MatMullstm_cell_96/mul_2:z:0%lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_6?
lstm_cell_96/add_2AddV2lstm_cell_96/BiasAdd_2:output:0lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_2x
lstm_cell_96/ReluRelulstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu?
lstm_cell_96/mul_5Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_5?
lstm_cell_96/add_3AddV2lstm_cell_96/mul_4:z:0lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_3?
lstm_cell_96/ReadVariableOp_3ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_3?
"lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_96/strided_slice_3/stack?
$lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_96/strided_slice_3/stack_1?
$lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_3/stack_2?
lstm_cell_96/strided_slice_3StridedSlice%lstm_cell_96/ReadVariableOp_3:value:0+lstm_cell_96/strided_slice_3/stack:output:0-lstm_cell_96/strided_slice_3/stack_1:output:0-lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_3?
lstm_cell_96/MatMul_7MatMullstm_cell_96/mul_3:z:0%lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_7?
lstm_cell_96/add_4AddV2lstm_cell_96/BiasAdd_3:output:0lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_4?
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_2|
lstm_cell_96/Relu_1Relulstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu_1?
lstm_cell_96/mul_6Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_96_split_readvariableop_resource,lstm_cell_96_split_1_readvariableop_resource$lstm_cell_96_readvariableop_resource*
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
while_body_3087023*
condR
while_cond_3087022*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_96/ReadVariableOp^lstm_cell_96/ReadVariableOp_1^lstm_cell_96/ReadVariableOp_2^lstm_cell_96/ReadVariableOp_3"^lstm_cell_96/split/ReadVariableOp$^lstm_cell_96/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_96/ReadVariableOplstm_cell_96/ReadVariableOp2>
lstm_cell_96/ReadVariableOp_1lstm_cell_96/ReadVariableOp_12>
lstm_cell_96/ReadVariableOp_2lstm_cell_96/ReadVariableOp_22>
lstm_cell_96/ReadVariableOp_3lstm_cell_96/ReadVariableOp_32F
!lstm_cell_96/split/ReadVariableOp!lstm_cell_96/split/ReadVariableOp2J
#lstm_cell_96/split_1/ReadVariableOp#lstm_cell_96/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
%__inference_signature_wrapper_3085944
input_40
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_40unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_30842662
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
input_40
?,
?
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085905
input_40"
lstm_96_3085874:	?
lstm_96_3085876:	?"
lstm_96_3085878:	 ?#
dense_116_3085881:  
dense_116_3085883: #
dense_117_3085886: 
dense_117_3085888:
identity??!dense_116/StatefulPartitionedCall?!dense_117/StatefulPartitionedCall?0dense_117/bias/Regularizer/Square/ReadVariableOp?lstm_96/StatefulPartitionedCall?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
lstm_96/StatefulPartitionedCallStatefulPartitionedCallinput_40lstm_96_3085874lstm_96_3085876lstm_96_3085878*
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30857372!
lstm_96/StatefulPartitionedCall?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0dense_116_3085881dense_116_3085883*
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
F__inference_dense_116_layer_call_and_return_conditional_losses_30853182#
!dense_116/StatefulPartitionedCall?
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_3085886dense_117_3085888*
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
F__inference_dense_117_layer_call_and_return_conditional_losses_30853402#
!dense_117/StatefulPartitionedCall?
reshape_58/PartitionedCallPartitionedCall*dense_117/StatefulPartitionedCall:output:0*
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
G__inference_reshape_58_layer_call_and_return_conditional_losses_30853592
reshape_58/PartitionedCall?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_96_3085874*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/mul?
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_3085888*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mul?
IdentityIdentity#reshape_58/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_116/StatefulPartitionedCall"^dense_117/StatefulPartitionedCall1^dense_117/bias/Regularizer/Square/ReadVariableOp ^lstm_96/StatefulPartitionedCall>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2d
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_40
?
?
.__inference_lstm_cell_96_layer_call_fn_3087841

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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_30843902
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
?,
?
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085871
input_40"
lstm_96_3085840:	?
lstm_96_3085842:	?"
lstm_96_3085844:	 ?#
dense_116_3085847:  
dense_116_3085849: #
dense_117_3085852: 
dense_117_3085854:
identity??!dense_116/StatefulPartitionedCall?!dense_117/StatefulPartitionedCall?0dense_117/bias/Regularizer/Square/ReadVariableOp?lstm_96/StatefulPartitionedCall?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
lstm_96/StatefulPartitionedCallStatefulPartitionedCallinput_40lstm_96_3085840lstm_96_3085842lstm_96_3085844*
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30852992!
lstm_96/StatefulPartitionedCall?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0dense_116_3085847dense_116_3085849*
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
F__inference_dense_116_layer_call_and_return_conditional_losses_30853182#
!dense_116/StatefulPartitionedCall?
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_3085852dense_117_3085854*
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
F__inference_dense_117_layer_call_and_return_conditional_losses_30853402#
!dense_117/StatefulPartitionedCall?
reshape_58/PartitionedCallPartitionedCall*dense_117/StatefulPartitionedCall:output:0*
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
G__inference_reshape_58_layer_call_and_return_conditional_losses_30853592
reshape_58/PartitionedCall?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_96_3085840*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/mul?
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_3085854*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mul?
IdentityIdentity#reshape_58/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_116/StatefulPartitionedCall"^dense_117/StatefulPartitionedCall1^dense_117/bias/Regularizer/Square/ReadVariableOp ^lstm_96/StatefulPartitionedCall>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2d
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_40
??
?
J__inference_sequential_39_layer_call_and_return_conditional_losses_3086588

inputsE
2lstm_96_lstm_cell_96_split_readvariableop_resource:	?C
4lstm_96_lstm_cell_96_split_1_readvariableop_resource:	??
,lstm_96_lstm_cell_96_readvariableop_resource:	 ?:
(dense_116_matmul_readvariableop_resource:  7
)dense_116_biasadd_readvariableop_resource: :
(dense_117_matmul_readvariableop_resource: 7
)dense_117_biasadd_readvariableop_resource:
identity?? dense_116/BiasAdd/ReadVariableOp?dense_116/MatMul/ReadVariableOp? dense_117/BiasAdd/ReadVariableOp?dense_117/MatMul/ReadVariableOp?0dense_117/bias/Regularizer/Square/ReadVariableOp?#lstm_96/lstm_cell_96/ReadVariableOp?%lstm_96/lstm_cell_96/ReadVariableOp_1?%lstm_96/lstm_cell_96/ReadVariableOp_2?%lstm_96/lstm_cell_96/ReadVariableOp_3?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?)lstm_96/lstm_cell_96/split/ReadVariableOp?+lstm_96/lstm_cell_96/split_1/ReadVariableOp?lstm_96/whileT
lstm_96/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_96/Shape?
lstm_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_96/strided_slice/stack?
lstm_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_96/strided_slice/stack_1?
lstm_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_96/strided_slice/stack_2?
lstm_96/strided_sliceStridedSlicelstm_96/Shape:output:0$lstm_96/strided_slice/stack:output:0&lstm_96/strided_slice/stack_1:output:0&lstm_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_96/strided_slicel
lstm_96/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros/mul/y?
lstm_96/zeros/mulMullstm_96/strided_slice:output:0lstm_96/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros/mulo
lstm_96/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_96/zeros/Less/y?
lstm_96/zeros/LessLesslstm_96/zeros/mul:z:0lstm_96/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros/Lessr
lstm_96/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros/packed/1?
lstm_96/zeros/packedPacklstm_96/strided_slice:output:0lstm_96/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_96/zeros/packedo
lstm_96/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_96/zeros/Const?
lstm_96/zerosFilllstm_96/zeros/packed:output:0lstm_96/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/zerosp
lstm_96/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros_1/mul/y?
lstm_96/zeros_1/mulMullstm_96/strided_slice:output:0lstm_96/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros_1/muls
lstm_96/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_96/zeros_1/Less/y?
lstm_96/zeros_1/LessLesslstm_96/zeros_1/mul:z:0lstm_96/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_96/zeros_1/Lessv
lstm_96/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/zeros_1/packed/1?
lstm_96/zeros_1/packedPacklstm_96/strided_slice:output:0!lstm_96/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_96/zeros_1/packeds
lstm_96/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_96/zeros_1/Const?
lstm_96/zeros_1Filllstm_96/zeros_1/packed:output:0lstm_96/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/zeros_1?
lstm_96/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_96/transpose/perm?
lstm_96/transpose	Transposeinputslstm_96/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_96/transposeg
lstm_96/Shape_1Shapelstm_96/transpose:y:0*
T0*
_output_shapes
:2
lstm_96/Shape_1?
lstm_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_96/strided_slice_1/stack?
lstm_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_1/stack_1?
lstm_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_1/stack_2?
lstm_96/strided_slice_1StridedSlicelstm_96/Shape_1:output:0&lstm_96/strided_slice_1/stack:output:0(lstm_96/strided_slice_1/stack_1:output:0(lstm_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_96/strided_slice_1?
#lstm_96/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_96/TensorArrayV2/element_shape?
lstm_96/TensorArrayV2TensorListReserve,lstm_96/TensorArrayV2/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_96/TensorArrayV2?
=lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_96/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_96/transpose:y:0Flstm_96/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_96/TensorArrayUnstack/TensorListFromTensor?
lstm_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_96/strided_slice_2/stack?
lstm_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_2/stack_1?
lstm_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_2/stack_2?
lstm_96/strided_slice_2StridedSlicelstm_96/transpose:y:0&lstm_96/strided_slice_2/stack:output:0(lstm_96/strided_slice_2/stack_1:output:0(lstm_96/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_96/strided_slice_2?
$lstm_96/lstm_cell_96/ones_like/ShapeShapelstm_96/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_96/lstm_cell_96/ones_like/Shape?
$lstm_96/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_96/lstm_cell_96/ones_like/Const?
lstm_96/lstm_cell_96/ones_likeFill-lstm_96/lstm_cell_96/ones_like/Shape:output:0-lstm_96/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/ones_like?
"lstm_96/lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"lstm_96/lstm_cell_96/dropout/Const?
 lstm_96/lstm_cell_96/dropout/MulMul'lstm_96/lstm_cell_96/ones_like:output:0+lstm_96/lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/lstm_cell_96/dropout/Mul?
"lstm_96/lstm_cell_96/dropout/ShapeShape'lstm_96/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_96/lstm_cell_96/dropout/Shape?
9lstm_96/lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform+lstm_96/lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9lstm_96/lstm_cell_96/dropout/random_uniform/RandomUniform?
+lstm_96/lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_96/lstm_cell_96/dropout/GreaterEqual/y?
)lstm_96/lstm_cell_96/dropout/GreaterEqualGreaterEqualBlstm_96/lstm_cell_96/dropout/random_uniform/RandomUniform:output:04lstm_96/lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_96/lstm_cell_96/dropout/GreaterEqual?
!lstm_96/lstm_cell_96/dropout/CastCast-lstm_96/lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_96/lstm_cell_96/dropout/Cast?
"lstm_96/lstm_cell_96/dropout/Mul_1Mul$lstm_96/lstm_cell_96/dropout/Mul:z:0%lstm_96/lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/lstm_cell_96/dropout/Mul_1?
$lstm_96/lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_96/lstm_cell_96/dropout_1/Const?
"lstm_96/lstm_cell_96/dropout_1/MulMul'lstm_96/lstm_cell_96/ones_like:output:0-lstm_96/lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/lstm_cell_96/dropout_1/Mul?
$lstm_96/lstm_cell_96/dropout_1/ShapeShape'lstm_96/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_96/lstm_cell_96/dropout_1/Shape?
;lstm_96/lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_96/lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??/2=
;lstm_96/lstm_cell_96/dropout_1/random_uniform/RandomUniform?
-lstm_96/lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_96/lstm_cell_96/dropout_1/GreaterEqual/y?
+lstm_96/lstm_cell_96/dropout_1/GreaterEqualGreaterEqualDlstm_96/lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:06lstm_96/lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_96/lstm_cell_96/dropout_1/GreaterEqual?
#lstm_96/lstm_cell_96/dropout_1/CastCast/lstm_96/lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_96/lstm_cell_96/dropout_1/Cast?
$lstm_96/lstm_cell_96/dropout_1/Mul_1Mul&lstm_96/lstm_cell_96/dropout_1/Mul:z:0'lstm_96/lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/lstm_cell_96/dropout_1/Mul_1?
$lstm_96/lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_96/lstm_cell_96/dropout_2/Const?
"lstm_96/lstm_cell_96/dropout_2/MulMul'lstm_96/lstm_cell_96/ones_like:output:0-lstm_96/lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/lstm_cell_96/dropout_2/Mul?
$lstm_96/lstm_cell_96/dropout_2/ShapeShape'lstm_96/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_96/lstm_cell_96/dropout_2/Shape?
;lstm_96/lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_96/lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_96/lstm_cell_96/dropout_2/random_uniform/RandomUniform?
-lstm_96/lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_96/lstm_cell_96/dropout_2/GreaterEqual/y?
+lstm_96/lstm_cell_96/dropout_2/GreaterEqualGreaterEqualDlstm_96/lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:06lstm_96/lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_96/lstm_cell_96/dropout_2/GreaterEqual?
#lstm_96/lstm_cell_96/dropout_2/CastCast/lstm_96/lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_96/lstm_cell_96/dropout_2/Cast?
$lstm_96/lstm_cell_96/dropout_2/Mul_1Mul&lstm_96/lstm_cell_96/dropout_2/Mul:z:0'lstm_96/lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/lstm_cell_96/dropout_2/Mul_1?
$lstm_96/lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2&
$lstm_96/lstm_cell_96/dropout_3/Const?
"lstm_96/lstm_cell_96/dropout_3/MulMul'lstm_96/lstm_cell_96/ones_like:output:0-lstm_96/lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/lstm_cell_96/dropout_3/Mul?
$lstm_96/lstm_cell_96/dropout_3/ShapeShape'lstm_96/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_96/lstm_cell_96/dropout_3/Shape?
;lstm_96/lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_96/lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2=
;lstm_96/lstm_cell_96/dropout_3/random_uniform/RandomUniform?
-lstm_96/lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2/
-lstm_96/lstm_cell_96/dropout_3/GreaterEqual/y?
+lstm_96/lstm_cell_96/dropout_3/GreaterEqualGreaterEqualDlstm_96/lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:06lstm_96/lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2-
+lstm_96/lstm_cell_96/dropout_3/GreaterEqual?
#lstm_96/lstm_cell_96/dropout_3/CastCast/lstm_96/lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2%
#lstm_96/lstm_cell_96/dropout_3/Cast?
$lstm_96/lstm_cell_96/dropout_3/Mul_1Mul&lstm_96/lstm_cell_96/dropout_3/Mul:z:0'lstm_96/lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/lstm_cell_96/dropout_3/Mul_1?
$lstm_96/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_96/lstm_cell_96/split/split_dim?
)lstm_96/lstm_cell_96/split/ReadVariableOpReadVariableOp2lstm_96_lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)lstm_96/lstm_cell_96/split/ReadVariableOp?
lstm_96/lstm_cell_96/splitSplit-lstm_96/lstm_cell_96/split/split_dim:output:01lstm_96/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_96/lstm_cell_96/split?
lstm_96/lstm_cell_96/MatMulMatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul?
lstm_96/lstm_cell_96/MatMul_1MatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_1?
lstm_96/lstm_cell_96/MatMul_2MatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_2?
lstm_96/lstm_cell_96/MatMul_3MatMul lstm_96/strided_slice_2:output:0#lstm_96/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_3?
&lstm_96/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_96/lstm_cell_96/split_1/split_dim?
+lstm_96/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4lstm_96_lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_96/lstm_cell_96/split_1/ReadVariableOp?
lstm_96/lstm_cell_96/split_1Split/lstm_96/lstm_cell_96/split_1/split_dim:output:03lstm_96/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_96/lstm_cell_96/split_1?
lstm_96/lstm_cell_96/BiasAddBiasAdd%lstm_96/lstm_cell_96/MatMul:product:0%lstm_96/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/BiasAdd?
lstm_96/lstm_cell_96/BiasAdd_1BiasAdd'lstm_96/lstm_cell_96/MatMul_1:product:0%lstm_96/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/BiasAdd_1?
lstm_96/lstm_cell_96/BiasAdd_2BiasAdd'lstm_96/lstm_cell_96/MatMul_2:product:0%lstm_96/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/BiasAdd_2?
lstm_96/lstm_cell_96/BiasAdd_3BiasAdd'lstm_96/lstm_cell_96/MatMul_3:product:0%lstm_96/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/BiasAdd_3?
lstm_96/lstm_cell_96/mulMullstm_96/zeros:output:0&lstm_96/lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul?
lstm_96/lstm_cell_96/mul_1Mullstm_96/zeros:output:0(lstm_96/lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_1?
lstm_96/lstm_cell_96/mul_2Mullstm_96/zeros:output:0(lstm_96/lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_2?
lstm_96/lstm_cell_96/mul_3Mullstm_96/zeros:output:0(lstm_96/lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_3?
#lstm_96/lstm_cell_96/ReadVariableOpReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_96/lstm_cell_96/ReadVariableOp?
(lstm_96/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_96/lstm_cell_96/strided_slice/stack?
*lstm_96/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_96/lstm_cell_96/strided_slice/stack_1?
*lstm_96/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_96/lstm_cell_96/strided_slice/stack_2?
"lstm_96/lstm_cell_96/strided_sliceStridedSlice+lstm_96/lstm_cell_96/ReadVariableOp:value:01lstm_96/lstm_cell_96/strided_slice/stack:output:03lstm_96/lstm_cell_96/strided_slice/stack_1:output:03lstm_96/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_96/lstm_cell_96/strided_slice?
lstm_96/lstm_cell_96/MatMul_4MatMullstm_96/lstm_cell_96/mul:z:0+lstm_96/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_4?
lstm_96/lstm_cell_96/addAddV2%lstm_96/lstm_cell_96/BiasAdd:output:0'lstm_96/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add?
lstm_96/lstm_cell_96/SigmoidSigmoidlstm_96/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/Sigmoid?
%lstm_96/lstm_cell_96/ReadVariableOp_1ReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_96/lstm_cell_96/ReadVariableOp_1?
*lstm_96/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_96/lstm_cell_96/strided_slice_1/stack?
,lstm_96/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2.
,lstm_96/lstm_cell_96/strided_slice_1/stack_1?
,lstm_96/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_96/lstm_cell_96/strided_slice_1/stack_2?
$lstm_96/lstm_cell_96/strided_slice_1StridedSlice-lstm_96/lstm_cell_96/ReadVariableOp_1:value:03lstm_96/lstm_cell_96/strided_slice_1/stack:output:05lstm_96/lstm_cell_96/strided_slice_1/stack_1:output:05lstm_96/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_96/lstm_cell_96/strided_slice_1?
lstm_96/lstm_cell_96/MatMul_5MatMullstm_96/lstm_cell_96/mul_1:z:0-lstm_96/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_5?
lstm_96/lstm_cell_96/add_1AddV2'lstm_96/lstm_cell_96/BiasAdd_1:output:0'lstm_96/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_1?
lstm_96/lstm_cell_96/Sigmoid_1Sigmoidlstm_96/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/Sigmoid_1?
lstm_96/lstm_cell_96/mul_4Mul"lstm_96/lstm_cell_96/Sigmoid_1:y:0lstm_96/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_4?
%lstm_96/lstm_cell_96/ReadVariableOp_2ReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_96/lstm_cell_96/ReadVariableOp_2?
*lstm_96/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_96/lstm_cell_96/strided_slice_2/stack?
,lstm_96/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2.
,lstm_96/lstm_cell_96/strided_slice_2/stack_1?
,lstm_96/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_96/lstm_cell_96/strided_slice_2/stack_2?
$lstm_96/lstm_cell_96/strided_slice_2StridedSlice-lstm_96/lstm_cell_96/ReadVariableOp_2:value:03lstm_96/lstm_cell_96/strided_slice_2/stack:output:05lstm_96/lstm_cell_96/strided_slice_2/stack_1:output:05lstm_96/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_96/lstm_cell_96/strided_slice_2?
lstm_96/lstm_cell_96/MatMul_6MatMullstm_96/lstm_cell_96/mul_2:z:0-lstm_96/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_6?
lstm_96/lstm_cell_96/add_2AddV2'lstm_96/lstm_cell_96/BiasAdd_2:output:0'lstm_96/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_2?
lstm_96/lstm_cell_96/ReluRelulstm_96/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/Relu?
lstm_96/lstm_cell_96/mul_5Mul lstm_96/lstm_cell_96/Sigmoid:y:0'lstm_96/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_5?
lstm_96/lstm_cell_96/add_3AddV2lstm_96/lstm_cell_96/mul_4:z:0lstm_96/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_3?
%lstm_96/lstm_cell_96/ReadVariableOp_3ReadVariableOp,lstm_96_lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02'
%lstm_96/lstm_cell_96/ReadVariableOp_3?
*lstm_96/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_96/lstm_cell_96/strided_slice_3/stack?
,lstm_96/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_96/lstm_cell_96/strided_slice_3/stack_1?
,lstm_96/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_96/lstm_cell_96/strided_slice_3/stack_2?
$lstm_96/lstm_cell_96/strided_slice_3StridedSlice-lstm_96/lstm_cell_96/ReadVariableOp_3:value:03lstm_96/lstm_cell_96/strided_slice_3/stack:output:05lstm_96/lstm_cell_96/strided_slice_3/stack_1:output:05lstm_96/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2&
$lstm_96/lstm_cell_96/strided_slice_3?
lstm_96/lstm_cell_96/MatMul_7MatMullstm_96/lstm_cell_96/mul_3:z:0-lstm_96/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/MatMul_7?
lstm_96/lstm_cell_96/add_4AddV2'lstm_96/lstm_cell_96/BiasAdd_3:output:0'lstm_96/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/add_4?
lstm_96/lstm_cell_96/Sigmoid_2Sigmoidlstm_96/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/lstm_cell_96/Sigmoid_2?
lstm_96/lstm_cell_96/Relu_1Relulstm_96/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/Relu_1?
lstm_96/lstm_cell_96/mul_6Mul"lstm_96/lstm_cell_96/Sigmoid_2:y:0)lstm_96/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_96/lstm_cell_96/mul_6?
%lstm_96/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2'
%lstm_96/TensorArrayV2_1/element_shape?
lstm_96/TensorArrayV2_1TensorListReserve.lstm_96/TensorArrayV2_1/element_shape:output:0 lstm_96/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_96/TensorArrayV2_1^
lstm_96/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/time?
 lstm_96/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_96/while/maximum_iterationsz
lstm_96/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_96/while/loop_counter?
lstm_96/whileWhile#lstm_96/while/loop_counter:output:0)lstm_96/while/maximum_iterations:output:0lstm_96/time:output:0 lstm_96/TensorArrayV2_1:handle:0lstm_96/zeros:output:0lstm_96/zeros_1:output:0 lstm_96/strided_slice_1:output:0?lstm_96/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_96_lstm_cell_96_split_readvariableop_resource4lstm_96_lstm_cell_96_split_1_readvariableop_resource,lstm_96_lstm_cell_96_readvariableop_resource*
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
lstm_96_while_body_3086395*&
condR
lstm_96_while_cond_3086394*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_96/while?
8lstm_96/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2:
8lstm_96/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_96/TensorArrayV2Stack/TensorListStackTensorListStacklstm_96/while:output:3Alstm_96/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02,
*lstm_96/TensorArrayV2Stack/TensorListStack?
lstm_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_96/strided_slice_3/stack?
lstm_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_96/strided_slice_3/stack_1?
lstm_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_96/strided_slice_3/stack_2?
lstm_96/strided_slice_3StridedSlice3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_96/strided_slice_3/stack:output:0(lstm_96/strided_slice_3/stack_1:output:0(lstm_96/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_96/strided_slice_3?
lstm_96/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_96/transpose_1/perm?
lstm_96/transpose_1	Transpose3lstm_96/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_96/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_96/transpose_1v
lstm_96/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_96/runtime?
dense_116/MatMul/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02!
dense_116/MatMul/ReadVariableOp?
dense_116/MatMulMatMul lstm_96/strided_slice_3:output:0'dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_116/MatMul?
 dense_116/BiasAdd/ReadVariableOpReadVariableOp)dense_116_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_116/BiasAdd/ReadVariableOp?
dense_116/BiasAddBiasAdddense_116/MatMul:product:0(dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_116/BiasAddv
dense_116/ReluReludense_116/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_116/Relu?
dense_117/MatMul/ReadVariableOpReadVariableOp(dense_117_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_117/MatMul/ReadVariableOp?
dense_117/MatMulMatMuldense_116/Relu:activations:0'dense_117/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_117/MatMul?
 dense_117/BiasAdd/ReadVariableOpReadVariableOp)dense_117_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_117/BiasAdd/ReadVariableOp?
dense_117/BiasAddBiasAdddense_117/MatMul:product:0(dense_117/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_117/BiasAddn
reshape_58/ShapeShapedense_117/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_58/Shape?
reshape_58/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_58/strided_slice/stack?
 reshape_58/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_58/strided_slice/stack_1?
 reshape_58/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_58/strided_slice/stack_2?
reshape_58/strided_sliceStridedSlicereshape_58/Shape:output:0'reshape_58/strided_slice/stack:output:0)reshape_58/strided_slice/stack_1:output:0)reshape_58/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_58/strided_slicez
reshape_58/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_58/Reshape/shape/1z
reshape_58/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_58/Reshape/shape/2?
reshape_58/Reshape/shapePack!reshape_58/strided_slice:output:0#reshape_58/Reshape/shape/1:output:0#reshape_58/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_58/Reshape/shape?
reshape_58/ReshapeReshapedense_117/BiasAdd:output:0!reshape_58/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_58/Reshape?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_96_lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/mul?
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOp)dense_117_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mulz
IdentityIdentityreshape_58/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_116/BiasAdd/ReadVariableOp ^dense_116/MatMul/ReadVariableOp!^dense_117/BiasAdd/ReadVariableOp ^dense_117/MatMul/ReadVariableOp1^dense_117/bias/Regularizer/Square/ReadVariableOp$^lstm_96/lstm_cell_96/ReadVariableOp&^lstm_96/lstm_cell_96/ReadVariableOp_1&^lstm_96/lstm_cell_96/ReadVariableOp_2&^lstm_96/lstm_cell_96/ReadVariableOp_3>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp*^lstm_96/lstm_cell_96/split/ReadVariableOp,^lstm_96/lstm_cell_96/split_1/ReadVariableOp^lstm_96/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_116/BiasAdd/ReadVariableOp dense_116/BiasAdd/ReadVariableOp2B
dense_116/MatMul/ReadVariableOpdense_116/MatMul/ReadVariableOp2D
 dense_117/BiasAdd/ReadVariableOp dense_117/BiasAdd/ReadVariableOp2B
dense_117/MatMul/ReadVariableOpdense_117/MatMul/ReadVariableOp2d
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp2J
#lstm_96/lstm_cell_96/ReadVariableOp#lstm_96/lstm_cell_96/ReadVariableOp2N
%lstm_96/lstm_cell_96/ReadVariableOp_1%lstm_96/lstm_cell_96/ReadVariableOp_12N
%lstm_96/lstm_cell_96/ReadVariableOp_2%lstm_96/lstm_cell_96/ReadVariableOp_22N
%lstm_96/lstm_cell_96/ReadVariableOp_3%lstm_96/lstm_cell_96/ReadVariableOp_32~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_96/lstm_cell_96/split/ReadVariableOp)lstm_96/lstm_cell_96/split/ReadVariableOp2Z
+lstm_96/lstm_cell_96/split_1/ReadVariableOp+lstm_96/lstm_cell_96/split_1/ReadVariableOp2
lstm_96/whilelstm_96/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_lstm_cell_96_layer_call_fn_3087858

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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_30846232
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
?R
?
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3087939

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2,
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
?
/__inference_sequential_39_layer_call_fn_3085391
input_40
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_40unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_39_layer_call_and_return_conditional_losses_30853742
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
input_40
?
?
)__inference_lstm_96_layer_call_fn_3086605
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30844792
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
while_cond_3087022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3087022___redundant_placeholder05
1while_while_cond_3087022___redundant_placeholder15
1while_while_cond_3087022___redundant_placeholder25
1while_while_cond_3087022___redundant_placeholder3
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
while_body_3087298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_96_split_readvariableop_resource_0:	?C
4while_lstm_cell_96_split_1_readvariableop_resource_0:	??
,while_lstm_cell_96_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_96_split_readvariableop_resource:	?A
2while_lstm_cell_96_split_1_readvariableop_resource:	?=
*while_lstm_cell_96_readvariableop_resource:	 ???!while/lstm_cell_96/ReadVariableOp?#while/lstm_cell_96/ReadVariableOp_1?#while/lstm_cell_96/ReadVariableOp_2?#while/lstm_cell_96/ReadVariableOp_3?'while/lstm_cell_96/split/ReadVariableOp?)while/lstm_cell_96/split_1/ReadVariableOp?
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
"while/lstm_cell_96/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_96/ones_like/Shape?
"while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_96/ones_like/Const?
while/lstm_cell_96/ones_likeFill+while/lstm_cell_96/ones_like/Shape:output:0+while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/ones_like?
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_96/split/split_dim?
'while/lstm_cell_96/split/ReadVariableOpReadVariableOp2while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_96/split/ReadVariableOp?
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_96/split?
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul?
while/lstm_cell_96/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_1?
while/lstm_cell_96/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_2?
while/lstm_cell_96/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_3?
$while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_96/split_1/split_dim?
)while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_96/split_1/ReadVariableOp?
while/lstm_cell_96/split_1Split-while/lstm_cell_96/split_1/split_dim:output:01while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_96/split_1?
while/lstm_cell_96/BiasAddBiasAdd#while/lstm_cell_96/MatMul:product:0#while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd?
while/lstm_cell_96/BiasAdd_1BiasAdd%while/lstm_cell_96/MatMul_1:product:0#while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_1?
while/lstm_cell_96/BiasAdd_2BiasAdd%while/lstm_cell_96/MatMul_2:product:0#while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_2?
while/lstm_cell_96/BiasAdd_3BiasAdd%while/lstm_cell_96/MatMul_3:product:0#while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_3?
while/lstm_cell_96/mulMulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul?
while/lstm_cell_96/mul_1Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_1?
while/lstm_cell_96/mul_2Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_2?
while/lstm_cell_96/mul_3Mulwhile_placeholder_2%while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_3?
!while/lstm_cell_96/ReadVariableOpReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_96/ReadVariableOp?
&while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_96/strided_slice/stack?
(while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice/stack_1?
(while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_96/strided_slice/stack_2?
 while/lstm_cell_96/strided_sliceStridedSlice)while/lstm_cell_96/ReadVariableOp:value:0/while/lstm_cell_96/strided_slice/stack:output:01while/lstm_cell_96/strided_slice/stack_1:output:01while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_96/strided_slice?
while/lstm_cell_96/MatMul_4MatMulwhile/lstm_cell_96/mul:z:0)while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_4?
while/lstm_cell_96/addAddV2#while/lstm_cell_96/BiasAdd:output:0%while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add?
while/lstm_cell_96/SigmoidSigmoidwhile/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid?
#while/lstm_cell_96/ReadVariableOp_1ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_1?
(while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice_1/stack?
*while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_96/strided_slice_1/stack_1?
*while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_1/stack_2?
"while/lstm_cell_96/strided_slice_1StridedSlice+while/lstm_cell_96/ReadVariableOp_1:value:01while/lstm_cell_96/strided_slice_1/stack:output:03while/lstm_cell_96/strided_slice_1/stack_1:output:03while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_1?
while/lstm_cell_96/MatMul_5MatMulwhile/lstm_cell_96/mul_1:z:0+while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_5?
while/lstm_cell_96/add_1AddV2%while/lstm_cell_96/BiasAdd_1:output:0%while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_1?
while/lstm_cell_96/Sigmoid_1Sigmoidwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_1?
while/lstm_cell_96/mul_4Mul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_4?
#while/lstm_cell_96/ReadVariableOp_2ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_2?
(while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_96/strided_slice_2/stack?
*while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_96/strided_slice_2/stack_1?
*while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_2/stack_2?
"while/lstm_cell_96/strided_slice_2StridedSlice+while/lstm_cell_96/ReadVariableOp_2:value:01while/lstm_cell_96/strided_slice_2/stack:output:03while/lstm_cell_96/strided_slice_2/stack_1:output:03while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_2?
while/lstm_cell_96/MatMul_6MatMulwhile/lstm_cell_96/mul_2:z:0+while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_6?
while/lstm_cell_96/add_2AddV2%while/lstm_cell_96/BiasAdd_2:output:0%while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_2?
while/lstm_cell_96/ReluReluwhile/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu?
while/lstm_cell_96/mul_5Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_5?
while/lstm_cell_96/add_3AddV2while/lstm_cell_96/mul_4:z:0while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_3?
#while/lstm_cell_96/ReadVariableOp_3ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_3?
(while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_96/strided_slice_3/stack?
*while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_96/strided_slice_3/stack_1?
*while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_3/stack_2?
"while/lstm_cell_96/strided_slice_3StridedSlice+while/lstm_cell_96/ReadVariableOp_3:value:01while/lstm_cell_96/strided_slice_3/stack:output:03while/lstm_cell_96/strided_slice_3/stack_1:output:03while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_3?
while/lstm_cell_96/MatMul_7MatMulwhile/lstm_cell_96/mul_3:z:0+while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_7?
while/lstm_cell_96/add_4AddV2%while/lstm_cell_96/BiasAdd_3:output:0%while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_4?
while/lstm_cell_96/Sigmoid_2Sigmoidwhile/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_2?
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu_1?
while/lstm_cell_96/mul_6Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_96/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_96/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_96/ReadVariableOp$^while/lstm_cell_96/ReadVariableOp_1$^while/lstm_cell_96/ReadVariableOp_2$^while/lstm_cell_96/ReadVariableOp_3(^while/lstm_cell_96/split/ReadVariableOp*^while/lstm_cell_96/split_1/ReadVariableOp*"
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
*while_lstm_cell_96_readvariableop_resource,while_lstm_cell_96_readvariableop_resource_0"j
2while_lstm_cell_96_split_1_readvariableop_resource4while_lstm_cell_96_split_1_readvariableop_resource_0"f
0while_lstm_cell_96_split_readvariableop_resource2while_lstm_cell_96_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_96/ReadVariableOp!while/lstm_cell_96/ReadVariableOp2J
#while/lstm_cell_96/ReadVariableOp_1#while/lstm_cell_96/ReadVariableOp_12J
#while/lstm_cell_96/ReadVariableOp_2#while/lstm_cell_96/ReadVariableOp_22J
#while/lstm_cell_96/ReadVariableOp_3#while/lstm_cell_96/ReadVariableOp_32R
'while/lstm_cell_96/split/ReadVariableOp'while/lstm_cell_96/split/ReadVariableOp2V
)while/lstm_cell_96/split_1/ReadVariableOp)while/lstm_cell_96/split_1/ReadVariableOp: 
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
/__inference_sequential_39_layer_call_fn_3085982

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
J__inference_sequential_39_layer_call_and_return_conditional_losses_30858012
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
?,
?
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085801

inputs"
lstm_96_3085770:	?
lstm_96_3085772:	?"
lstm_96_3085774:	 ?#
dense_116_3085777:  
dense_116_3085779: #
dense_117_3085782: 
dense_117_3085784:
identity??!dense_116/StatefulPartitionedCall?!dense_117/StatefulPartitionedCall?0dense_117/bias/Regularizer/Square/ReadVariableOp?lstm_96/StatefulPartitionedCall?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
lstm_96/StatefulPartitionedCallStatefulPartitionedCallinputslstm_96_3085770lstm_96_3085772lstm_96_3085774*
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30857372!
lstm_96/StatefulPartitionedCall?
!dense_116/StatefulPartitionedCallStatefulPartitionedCall(lstm_96/StatefulPartitionedCall:output:0dense_116_3085777dense_116_3085779*
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
F__inference_dense_116_layer_call_and_return_conditional_losses_30853182#
!dense_116/StatefulPartitionedCall?
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_3085782dense_117_3085784*
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
F__inference_dense_117_layer_call_and_return_conditional_losses_30853402#
!dense_117/StatefulPartitionedCall?
reshape_58/PartitionedCallPartitionedCall*dense_117/StatefulPartitionedCall:output:0*
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
G__inference_reshape_58_layer_call_and_return_conditional_losses_30853592
reshape_58/PartitionedCall?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_96_3085770*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/mul?
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_3085784*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mul?
IdentityIdentity#reshape_58/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp"^dense_116/StatefulPartitionedCall"^dense_117/StatefulPartitionedCall1^dense_117/bias/Regularizer/Square/ReadVariableOp ^lstm_96/StatefulPartitionedCall>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2d
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp2B
lstm_96/StatefulPartitionedCalllstm_96/StatefulPartitionedCall2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_dense_117_layer_call_and_return_conditional_losses_3085340

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_117/bias/Regularizer/Square/ReadVariableOp?
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
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_117/bias/Regularizer/Square/ReadVariableOp*"
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
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
F__inference_dense_116_layer_call_and_return_conditional_losses_3085318

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
while_body_3085572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_96_split_readvariableop_resource_0:	?C
4while_lstm_cell_96_split_1_readvariableop_resource_0:	??
,while_lstm_cell_96_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_96_split_readvariableop_resource:	?A
2while_lstm_cell_96_split_1_readvariableop_resource:	?=
*while_lstm_cell_96_readvariableop_resource:	 ???!while/lstm_cell_96/ReadVariableOp?#while/lstm_cell_96/ReadVariableOp_1?#while/lstm_cell_96/ReadVariableOp_2?#while/lstm_cell_96/ReadVariableOp_3?'while/lstm_cell_96/split/ReadVariableOp?)while/lstm_cell_96/split_1/ReadVariableOp?
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
"while/lstm_cell_96/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_96/ones_like/Shape?
"while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_96/ones_like/Const?
while/lstm_cell_96/ones_likeFill+while/lstm_cell_96/ones_like/Shape:output:0+while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/ones_like?
 while/lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_96/dropout/Const?
while/lstm_cell_96/dropout/MulMul%while/lstm_cell_96/ones_like:output:0)while/lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_96/dropout/Mul?
 while/lstm_cell_96/dropout/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_96/dropout/Shape?
7while/lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???29
7while/lstm_cell_96/dropout/random_uniform/RandomUniform?
)while/lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_96/dropout/GreaterEqual/y?
'while/lstm_cell_96/dropout/GreaterEqualGreaterEqual@while/lstm_cell_96/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_96/dropout/GreaterEqual?
while/lstm_cell_96/dropout/CastCast+while/lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_96/dropout/Cast?
 while/lstm_cell_96/dropout/Mul_1Mul"while/lstm_cell_96/dropout/Mul:z:0#while/lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout/Mul_1?
"while/lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_1/Const?
 while/lstm_cell_96/dropout_1/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_1/Mul?
"while/lstm_cell_96/dropout_1/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_1/Shape?
9while/lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_96/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_1/GreaterEqual/y?
)while/lstm_cell_96/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_1/GreaterEqual?
!while/lstm_cell_96/dropout_1/CastCast-while/lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_1/Cast?
"while/lstm_cell_96/dropout_1/Mul_1Mul$while/lstm_cell_96/dropout_1/Mul:z:0%while/lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_1/Mul_1?
"while/lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_2/Const?
 while/lstm_cell_96/dropout_2/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_2/Mul?
"while/lstm_cell_96/dropout_2/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_2/Shape?
9while/lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2먽2;
9while/lstm_cell_96/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_2/GreaterEqual/y?
)while/lstm_cell_96/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_2/GreaterEqual?
!while/lstm_cell_96/dropout_2/CastCast-while/lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_2/Cast?
"while/lstm_cell_96/dropout_2/Mul_1Mul$while/lstm_cell_96/dropout_2/Mul:z:0%while/lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_2/Mul_1?
"while/lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_3/Const?
 while/lstm_cell_96/dropout_3/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_3/Mul?
"while/lstm_cell_96/dropout_3/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_3/Shape?
9while/lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_96/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_3/GreaterEqual/y?
)while/lstm_cell_96/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_3/GreaterEqual?
!while/lstm_cell_96/dropout_3/CastCast-while/lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_3/Cast?
"while/lstm_cell_96/dropout_3/Mul_1Mul$while/lstm_cell_96/dropout_3/Mul:z:0%while/lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_3/Mul_1?
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_96/split/split_dim?
'while/lstm_cell_96/split/ReadVariableOpReadVariableOp2while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_96/split/ReadVariableOp?
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_96/split?
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul?
while/lstm_cell_96/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_1?
while/lstm_cell_96/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_2?
while/lstm_cell_96/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_3?
$while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_96/split_1/split_dim?
)while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_96/split_1/ReadVariableOp?
while/lstm_cell_96/split_1Split-while/lstm_cell_96/split_1/split_dim:output:01while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_96/split_1?
while/lstm_cell_96/BiasAddBiasAdd#while/lstm_cell_96/MatMul:product:0#while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd?
while/lstm_cell_96/BiasAdd_1BiasAdd%while/lstm_cell_96/MatMul_1:product:0#while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_1?
while/lstm_cell_96/BiasAdd_2BiasAdd%while/lstm_cell_96/MatMul_2:product:0#while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_2?
while/lstm_cell_96/BiasAdd_3BiasAdd%while/lstm_cell_96/MatMul_3:product:0#while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_3?
while/lstm_cell_96/mulMulwhile_placeholder_2$while/lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul?
while/lstm_cell_96/mul_1Mulwhile_placeholder_2&while/lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_1?
while/lstm_cell_96/mul_2Mulwhile_placeholder_2&while/lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_2?
while/lstm_cell_96/mul_3Mulwhile_placeholder_2&while/lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_3?
!while/lstm_cell_96/ReadVariableOpReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_96/ReadVariableOp?
&while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_96/strided_slice/stack?
(while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice/stack_1?
(while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_96/strided_slice/stack_2?
 while/lstm_cell_96/strided_sliceStridedSlice)while/lstm_cell_96/ReadVariableOp:value:0/while/lstm_cell_96/strided_slice/stack:output:01while/lstm_cell_96/strided_slice/stack_1:output:01while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_96/strided_slice?
while/lstm_cell_96/MatMul_4MatMulwhile/lstm_cell_96/mul:z:0)while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_4?
while/lstm_cell_96/addAddV2#while/lstm_cell_96/BiasAdd:output:0%while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add?
while/lstm_cell_96/SigmoidSigmoidwhile/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid?
#while/lstm_cell_96/ReadVariableOp_1ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_1?
(while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice_1/stack?
*while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_96/strided_slice_1/stack_1?
*while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_1/stack_2?
"while/lstm_cell_96/strided_slice_1StridedSlice+while/lstm_cell_96/ReadVariableOp_1:value:01while/lstm_cell_96/strided_slice_1/stack:output:03while/lstm_cell_96/strided_slice_1/stack_1:output:03while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_1?
while/lstm_cell_96/MatMul_5MatMulwhile/lstm_cell_96/mul_1:z:0+while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_5?
while/lstm_cell_96/add_1AddV2%while/lstm_cell_96/BiasAdd_1:output:0%while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_1?
while/lstm_cell_96/Sigmoid_1Sigmoidwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_1?
while/lstm_cell_96/mul_4Mul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_4?
#while/lstm_cell_96/ReadVariableOp_2ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_2?
(while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_96/strided_slice_2/stack?
*while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_96/strided_slice_2/stack_1?
*while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_2/stack_2?
"while/lstm_cell_96/strided_slice_2StridedSlice+while/lstm_cell_96/ReadVariableOp_2:value:01while/lstm_cell_96/strided_slice_2/stack:output:03while/lstm_cell_96/strided_slice_2/stack_1:output:03while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_2?
while/lstm_cell_96/MatMul_6MatMulwhile/lstm_cell_96/mul_2:z:0+while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_6?
while/lstm_cell_96/add_2AddV2%while/lstm_cell_96/BiasAdd_2:output:0%while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_2?
while/lstm_cell_96/ReluReluwhile/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu?
while/lstm_cell_96/mul_5Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_5?
while/lstm_cell_96/add_3AddV2while/lstm_cell_96/mul_4:z:0while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_3?
#while/lstm_cell_96/ReadVariableOp_3ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_3?
(while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_96/strided_slice_3/stack?
*while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_96/strided_slice_3/stack_1?
*while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_3/stack_2?
"while/lstm_cell_96/strided_slice_3StridedSlice+while/lstm_cell_96/ReadVariableOp_3:value:01while/lstm_cell_96/strided_slice_3/stack:output:03while/lstm_cell_96/strided_slice_3/stack_1:output:03while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_3?
while/lstm_cell_96/MatMul_7MatMulwhile/lstm_cell_96/mul_3:z:0+while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_7?
while/lstm_cell_96/add_4AddV2%while/lstm_cell_96/BiasAdd_3:output:0%while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_4?
while/lstm_cell_96/Sigmoid_2Sigmoidwhile/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_2?
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu_1?
while/lstm_cell_96/mul_6Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_96/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_96/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_96/ReadVariableOp$^while/lstm_cell_96/ReadVariableOp_1$^while/lstm_cell_96/ReadVariableOp_2$^while/lstm_cell_96/ReadVariableOp_3(^while/lstm_cell_96/split/ReadVariableOp*^while/lstm_cell_96/split_1/ReadVariableOp*"
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
*while_lstm_cell_96_readvariableop_resource,while_lstm_cell_96_readvariableop_resource_0"j
2while_lstm_cell_96_split_1_readvariableop_resource4while_lstm_cell_96_split_1_readvariableop_resource_0"f
0while_lstm_cell_96_split_readvariableop_resource2while_lstm_cell_96_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_96/ReadVariableOp!while/lstm_cell_96/ReadVariableOp2J
#while/lstm_cell_96/ReadVariableOp_1#while/lstm_cell_96/ReadVariableOp_12J
#while/lstm_cell_96/ReadVariableOp_2#while/lstm_cell_96/ReadVariableOp_22J
#while/lstm_cell_96/ReadVariableOp_3#while/lstm_cell_96/ReadVariableOp_32R
'while/lstm_cell_96/split/ReadVariableOp'while/lstm_cell_96/split/ReadVariableOp2V
)while/lstm_cell_96/split_1/ReadVariableOp)while/lstm_cell_96/split_1/ReadVariableOp: 
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
while_body_3087023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_96_split_readvariableop_resource_0:	?C
4while_lstm_cell_96_split_1_readvariableop_resource_0:	??
,while_lstm_cell_96_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_96_split_readvariableop_resource:	?A
2while_lstm_cell_96_split_1_readvariableop_resource:	?=
*while_lstm_cell_96_readvariableop_resource:	 ???!while/lstm_cell_96/ReadVariableOp?#while/lstm_cell_96/ReadVariableOp_1?#while/lstm_cell_96/ReadVariableOp_2?#while/lstm_cell_96/ReadVariableOp_3?'while/lstm_cell_96/split/ReadVariableOp?)while/lstm_cell_96/split_1/ReadVariableOp?
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
"while/lstm_cell_96/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_96/ones_like/Shape?
"while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_96/ones_like/Const?
while/lstm_cell_96/ones_likeFill+while/lstm_cell_96/ones_like/Shape:output:0+while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/ones_like?
 while/lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2"
 while/lstm_cell_96/dropout/Const?
while/lstm_cell_96/dropout/MulMul%while/lstm_cell_96/ones_like:output:0)while/lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
while/lstm_cell_96/dropout/Mul?
 while/lstm_cell_96/dropout/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_96/dropout/Shape?
7while/lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ہ?29
7while/lstm_cell_96/dropout/random_uniform/RandomUniform?
)while/lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)while/lstm_cell_96/dropout/GreaterEqual/y?
'while/lstm_cell_96/dropout/GreaterEqualGreaterEqual@while/lstm_cell_96/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'while/lstm_cell_96/dropout/GreaterEqual?
while/lstm_cell_96/dropout/CastCast+while/lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
while/lstm_cell_96/dropout/Cast?
 while/lstm_cell_96/dropout/Mul_1Mul"while/lstm_cell_96/dropout/Mul:z:0#while/lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout/Mul_1?
"while/lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_1/Const?
 while/lstm_cell_96/dropout_1/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_1/Mul?
"while/lstm_cell_96/dropout_1/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_1/Shape?
9while/lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ϙw2;
9while/lstm_cell_96/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_1/GreaterEqual/y?
)while/lstm_cell_96/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_1/GreaterEqual?
!while/lstm_cell_96/dropout_1/CastCast-while/lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_1/Cast?
"while/lstm_cell_96/dropout_1/Mul_1Mul$while/lstm_cell_96/dropout_1/Mul:z:0%while/lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_1/Mul_1?
"while/lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_2/Const?
 while/lstm_cell_96/dropout_2/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_2/Mul?
"while/lstm_cell_96/dropout_2/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_2/Shape?
9while/lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_96/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_2/GreaterEqual/y?
)while/lstm_cell_96/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_2/GreaterEqual?
!while/lstm_cell_96/dropout_2/CastCast-while/lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_2/Cast?
"while/lstm_cell_96/dropout_2/Mul_1Mul$while/lstm_cell_96/dropout_2/Mul:z:0%while/lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_2/Mul_1?
"while/lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2$
"while/lstm_cell_96/dropout_3/Const?
 while/lstm_cell_96/dropout_3/MulMul%while/lstm_cell_96/ones_like:output:0+while/lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 while/lstm_cell_96/dropout_3/Mul?
"while/lstm_cell_96/dropout_3/ShapeShape%while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_96/dropout_3/Shape?
9while/lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2;
9while/lstm_cell_96/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+while/lstm_cell_96/dropout_3/GreaterEqual/y?
)while/lstm_cell_96/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)while/lstm_cell_96/dropout_3/GreaterEqual?
!while/lstm_cell_96/dropout_3/CastCast-while/lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!while/lstm_cell_96/dropout_3/Cast?
"while/lstm_cell_96/dropout_3/Mul_1Mul$while/lstm_cell_96/dropout_3/Mul:z:0%while/lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"while/lstm_cell_96/dropout_3/Mul_1?
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_96/split/split_dim?
'while/lstm_cell_96/split/ReadVariableOpReadVariableOp2while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_96/split/ReadVariableOp?
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_96/split?
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul?
while/lstm_cell_96/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_1?
while/lstm_cell_96/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_2?
while/lstm_cell_96/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_3?
$while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_96/split_1/split_dim?
)while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_96/split_1/ReadVariableOp?
while/lstm_cell_96/split_1Split-while/lstm_cell_96/split_1/split_dim:output:01while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_96/split_1?
while/lstm_cell_96/BiasAddBiasAdd#while/lstm_cell_96/MatMul:product:0#while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd?
while/lstm_cell_96/BiasAdd_1BiasAdd%while/lstm_cell_96/MatMul_1:product:0#while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_1?
while/lstm_cell_96/BiasAdd_2BiasAdd%while/lstm_cell_96/MatMul_2:product:0#while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_2?
while/lstm_cell_96/BiasAdd_3BiasAdd%while/lstm_cell_96/MatMul_3:product:0#while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/BiasAdd_3?
while/lstm_cell_96/mulMulwhile_placeholder_2$while/lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul?
while/lstm_cell_96/mul_1Mulwhile_placeholder_2&while/lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_1?
while/lstm_cell_96/mul_2Mulwhile_placeholder_2&while/lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_2?
while/lstm_cell_96/mul_3Mulwhile_placeholder_2&while/lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_3?
!while/lstm_cell_96/ReadVariableOpReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02#
!while/lstm_cell_96/ReadVariableOp?
&while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_96/strided_slice/stack?
(while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice/stack_1?
(while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_96/strided_slice/stack_2?
 while/lstm_cell_96/strided_sliceStridedSlice)while/lstm_cell_96/ReadVariableOp:value:0/while/lstm_cell_96/strided_slice/stack:output:01while/lstm_cell_96/strided_slice/stack_1:output:01while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 while/lstm_cell_96/strided_slice?
while/lstm_cell_96/MatMul_4MatMulwhile/lstm_cell_96/mul:z:0)while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_4?
while/lstm_cell_96/addAddV2#while/lstm_cell_96/BiasAdd:output:0%while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add?
while/lstm_cell_96/SigmoidSigmoidwhile/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid?
#while/lstm_cell_96/ReadVariableOp_1ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_1?
(while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(while/lstm_cell_96/strided_slice_1/stack?
*while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*while/lstm_cell_96/strided_slice_1/stack_1?
*while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_1/stack_2?
"while/lstm_cell_96/strided_slice_1StridedSlice+while/lstm_cell_96/ReadVariableOp_1:value:01while/lstm_cell_96/strided_slice_1/stack:output:03while/lstm_cell_96/strided_slice_1/stack_1:output:03while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_1?
while/lstm_cell_96/MatMul_5MatMulwhile/lstm_cell_96/mul_1:z:0+while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_5?
while/lstm_cell_96/add_1AddV2%while/lstm_cell_96/BiasAdd_1:output:0%while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_1?
while/lstm_cell_96/Sigmoid_1Sigmoidwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_1?
while/lstm_cell_96/mul_4Mul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_4?
#while/lstm_cell_96/ReadVariableOp_2ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_2?
(while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_96/strided_slice_2/stack?
*while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*while/lstm_cell_96/strided_slice_2/stack_1?
*while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_2/stack_2?
"while/lstm_cell_96/strided_slice_2StridedSlice+while/lstm_cell_96/ReadVariableOp_2:value:01while/lstm_cell_96/strided_slice_2/stack:output:03while/lstm_cell_96/strided_slice_2/stack_1:output:03while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_2?
while/lstm_cell_96/MatMul_6MatMulwhile/lstm_cell_96/mul_2:z:0+while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_6?
while/lstm_cell_96/add_2AddV2%while/lstm_cell_96/BiasAdd_2:output:0%while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_2?
while/lstm_cell_96/ReluReluwhile/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu?
while/lstm_cell_96/mul_5Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_5?
while/lstm_cell_96/add_3AddV2while/lstm_cell_96/mul_4:z:0while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_3?
#while/lstm_cell_96/ReadVariableOp_3ReadVariableOp,while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02%
#while/lstm_cell_96/ReadVariableOp_3?
(while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(while/lstm_cell_96/strided_slice_3/stack?
*while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_96/strided_slice_3/stack_1?
*while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_96/strided_slice_3/stack_2?
"while/lstm_cell_96/strided_slice_3StridedSlice+while/lstm_cell_96/ReadVariableOp_3:value:01while/lstm_cell_96/strided_slice_3/stack:output:03while/lstm_cell_96/strided_slice_3/stack_1:output:03while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"while/lstm_cell_96/strided_slice_3?
while/lstm_cell_96/MatMul_7MatMulwhile/lstm_cell_96/mul_3:z:0+while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/MatMul_7?
while/lstm_cell_96/add_4AddV2%while/lstm_cell_96/BiasAdd_3:output:0%while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/add_4?
while/lstm_cell_96/Sigmoid_2Sigmoidwhile/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Sigmoid_2?
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/Relu_1?
while/lstm_cell_96/mul_6Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_96/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_96/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_96/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp"^while/lstm_cell_96/ReadVariableOp$^while/lstm_cell_96/ReadVariableOp_1$^while/lstm_cell_96/ReadVariableOp_2$^while/lstm_cell_96/ReadVariableOp_3(^while/lstm_cell_96/split/ReadVariableOp*^while/lstm_cell_96/split_1/ReadVariableOp*"
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
*while_lstm_cell_96_readvariableop_resource,while_lstm_cell_96_readvariableop_resource_0"j
2while_lstm_cell_96_split_1_readvariableop_resource4while_lstm_cell_96_split_1_readvariableop_resource_0"f
0while_lstm_cell_96_split_readvariableop_resource2while_lstm_cell_96_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2F
!while/lstm_cell_96/ReadVariableOp!while/lstm_cell_96/ReadVariableOp2J
#while/lstm_cell_96/ReadVariableOp_1#while/lstm_cell_96/ReadVariableOp_12J
#while/lstm_cell_96/ReadVariableOp_2#while/lstm_cell_96/ReadVariableOp_22J
#while/lstm_cell_96/ReadVariableOp_3#while/lstm_cell_96/ReadVariableOp_32R
'while/lstm_cell_96/split/ReadVariableOp'while/lstm_cell_96/split/ReadVariableOp2V
)while/lstm_cell_96/split_1/ReadVariableOp)while/lstm_cell_96/split_1/ReadVariableOp: 
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
?
H
,__inference_reshape_58_layer_call_fn_3087794

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
G__inference_reshape_58_layer_call_and_return_conditional_losses_30853592
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
?B
?
 __inference__traced_save_3088170
file_prefix/
+savev2_dense_116_kernel_read_readvariableop-
)savev2_dense_116_bias_read_readvariableop/
+savev2_dense_117_kernel_read_readvariableop-
)savev2_dense_117_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_96_lstm_cell_96_kernel_read_readvariableopD
@savev2_lstm_96_lstm_cell_96_recurrent_kernel_read_readvariableop8
4savev2_lstm_96_lstm_cell_96_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_116_kernel_m_read_readvariableop4
0savev2_adam_dense_116_bias_m_read_readvariableop6
2savev2_adam_dense_117_kernel_m_read_readvariableop4
0savev2_adam_dense_117_bias_m_read_readvariableopA
=savev2_adam_lstm_96_lstm_cell_96_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_96_lstm_cell_96_bias_m_read_readvariableop6
2savev2_adam_dense_116_kernel_v_read_readvariableop4
0savev2_adam_dense_116_bias_v_read_readvariableop6
2savev2_adam_dense_117_kernel_v_read_readvariableop4
0savev2_adam_dense_117_bias_v_read_readvariableopA
=savev2_adam_lstm_96_lstm_cell_96_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_96_lstm_cell_96_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_116_kernel_read_readvariableop)savev2_dense_116_bias_read_readvariableop+savev2_dense_117_kernel_read_readvariableop)savev2_dense_117_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_96_lstm_cell_96_kernel_read_readvariableop@savev2_lstm_96_lstm_cell_96_recurrent_kernel_read_readvariableop4savev2_lstm_96_lstm_cell_96_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_116_kernel_m_read_readvariableop0savev2_adam_dense_116_bias_m_read_readvariableop2savev2_adam_dense_117_kernel_m_read_readvariableop0savev2_adam_dense_117_bias_m_read_readvariableop=savev2_adam_lstm_96_lstm_cell_96_kernel_m_read_readvariableopGsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_96_lstm_cell_96_bias_m_read_readvariableop2savev2_adam_dense_116_kernel_v_read_readvariableop0savev2_adam_dense_116_bias_v_read_readvariableop2savev2_adam_dense_117_kernel_v_read_readvariableop0savev2_adam_dense_117_bias_v_read_readvariableop=savev2_adam_lstm_96_lstm_cell_96_kernel_v_read_readvariableopGsavev2_adam_lstm_96_lstm_cell_96_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_96_lstm_cell_96_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
lstm_96_while_body_3086092,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3+
'lstm_96_while_lstm_96_strided_slice_1_0g
clstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_96_while_lstm_cell_96_split_readvariableop_resource_0:	?K
<lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0:	?G
4lstm_96_while_lstm_cell_96_readvariableop_resource_0:	 ?
lstm_96_while_identity
lstm_96_while_identity_1
lstm_96_while_identity_2
lstm_96_while_identity_3
lstm_96_while_identity_4
lstm_96_while_identity_5)
%lstm_96_while_lstm_96_strided_slice_1e
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorK
8lstm_96_while_lstm_cell_96_split_readvariableop_resource:	?I
:lstm_96_while_lstm_cell_96_split_1_readvariableop_resource:	?E
2lstm_96_while_lstm_cell_96_readvariableop_resource:	 ???)lstm_96/while/lstm_cell_96/ReadVariableOp?+lstm_96/while/lstm_cell_96/ReadVariableOp_1?+lstm_96/while/lstm_cell_96/ReadVariableOp_2?+lstm_96/while/lstm_cell_96/ReadVariableOp_3?/lstm_96/while/lstm_cell_96/split/ReadVariableOp?1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp?
?lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_96/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0lstm_96_while_placeholderHlstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_96/while/TensorArrayV2Read/TensorListGetItem?
*lstm_96/while/lstm_cell_96/ones_like/ShapeShapelstm_96_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_96/while/lstm_cell_96/ones_like/Shape?
*lstm_96/while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_96/while/lstm_cell_96/ones_like/Const?
$lstm_96/while/lstm_cell_96/ones_likeFill3lstm_96/while/lstm_cell_96/ones_like/Shape:output:03lstm_96/while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/ones_like?
*lstm_96/while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_96/while/lstm_cell_96/split/split_dim?
/lstm_96/while/lstm_cell_96/split/ReadVariableOpReadVariableOp:lstm_96_while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_96/while/lstm_cell_96/split/ReadVariableOp?
 lstm_96/while/lstm_cell_96/splitSplit3lstm_96/while/lstm_cell_96/split/split_dim:output:07lstm_96/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_96/while/lstm_cell_96/split?
!lstm_96/while/lstm_cell_96/MatMulMatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_96/while/lstm_cell_96/MatMul?
#lstm_96/while/lstm_cell_96/MatMul_1MatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_1?
#lstm_96/while/lstm_cell_96/MatMul_2MatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_2?
#lstm_96/while/lstm_cell_96/MatMul_3MatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_3?
,lstm_96/while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_96/while/lstm_cell_96/split_1/split_dim?
1lstm_96/while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp<lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp?
"lstm_96/while/lstm_cell_96/split_1Split5lstm_96/while/lstm_cell_96/split_1/split_dim:output:09lstm_96/while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_96/while/lstm_cell_96/split_1?
"lstm_96/while/lstm_cell_96/BiasAddBiasAdd+lstm_96/while/lstm_cell_96/MatMul:product:0+lstm_96/while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/while/lstm_cell_96/BiasAdd?
$lstm_96/while/lstm_cell_96/BiasAdd_1BiasAdd-lstm_96/while/lstm_cell_96/MatMul_1:product:0+lstm_96/while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/BiasAdd_1?
$lstm_96/while/lstm_cell_96/BiasAdd_2BiasAdd-lstm_96/while/lstm_cell_96/MatMul_2:product:0+lstm_96/while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/BiasAdd_2?
$lstm_96/while/lstm_cell_96/BiasAdd_3BiasAdd-lstm_96/while/lstm_cell_96/MatMul_3:product:0+lstm_96/while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/BiasAdd_3?
lstm_96/while/lstm_cell_96/mulMullstm_96_while_placeholder_2-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/while/lstm_cell_96/mul?
 lstm_96/while/lstm_cell_96/mul_1Mullstm_96_while_placeholder_2-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_1?
 lstm_96/while/lstm_cell_96/mul_2Mullstm_96_while_placeholder_2-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_2?
 lstm_96/while/lstm_cell_96/mul_3Mullstm_96_while_placeholder_2-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_3?
)lstm_96/while/lstm_cell_96/ReadVariableOpReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_96/while/lstm_cell_96/ReadVariableOp?
.lstm_96/while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_96/while/lstm_cell_96/strided_slice/stack?
0lstm_96/while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_96/while/lstm_cell_96/strided_slice/stack_1?
0lstm_96/while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_96/while/lstm_cell_96/strided_slice/stack_2?
(lstm_96/while/lstm_cell_96/strided_sliceStridedSlice1lstm_96/while/lstm_cell_96/ReadVariableOp:value:07lstm_96/while/lstm_cell_96/strided_slice/stack:output:09lstm_96/while/lstm_cell_96/strided_slice/stack_1:output:09lstm_96/while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_96/while/lstm_cell_96/strided_slice?
#lstm_96/while/lstm_cell_96/MatMul_4MatMul"lstm_96/while/lstm_cell_96/mul:z:01lstm_96/while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_4?
lstm_96/while/lstm_cell_96/addAddV2+lstm_96/while/lstm_cell_96/BiasAdd:output:0-lstm_96/while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/while/lstm_cell_96/add?
"lstm_96/while/lstm_cell_96/SigmoidSigmoid"lstm_96/while/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/while/lstm_cell_96/Sigmoid?
+lstm_96/while/lstm_cell_96/ReadVariableOp_1ReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_96/while/lstm_cell_96/ReadVariableOp_1?
0lstm_96/while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_96/while/lstm_cell_96/strided_slice_1/stack?
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_1?
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_2?
*lstm_96/while/lstm_cell_96/strided_slice_1StridedSlice3lstm_96/while/lstm_cell_96/ReadVariableOp_1:value:09lstm_96/while/lstm_cell_96/strided_slice_1/stack:output:0;lstm_96/while/lstm_cell_96/strided_slice_1/stack_1:output:0;lstm_96/while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_96/while/lstm_cell_96/strided_slice_1?
#lstm_96/while/lstm_cell_96/MatMul_5MatMul$lstm_96/while/lstm_cell_96/mul_1:z:03lstm_96/while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_5?
 lstm_96/while/lstm_cell_96/add_1AddV2-lstm_96/while/lstm_cell_96/BiasAdd_1:output:0-lstm_96/while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_1?
$lstm_96/while/lstm_cell_96/Sigmoid_1Sigmoid$lstm_96/while/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/Sigmoid_1?
 lstm_96/while/lstm_cell_96/mul_4Mul(lstm_96/while/lstm_cell_96/Sigmoid_1:y:0lstm_96_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_4?
+lstm_96/while/lstm_cell_96/ReadVariableOp_2ReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_96/while/lstm_cell_96/ReadVariableOp_2?
0lstm_96/while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_96/while/lstm_cell_96/strided_slice_2/stack?
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_1?
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_2?
*lstm_96/while/lstm_cell_96/strided_slice_2StridedSlice3lstm_96/while/lstm_cell_96/ReadVariableOp_2:value:09lstm_96/while/lstm_cell_96/strided_slice_2/stack:output:0;lstm_96/while/lstm_cell_96/strided_slice_2/stack_1:output:0;lstm_96/while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_96/while/lstm_cell_96/strided_slice_2?
#lstm_96/while/lstm_cell_96/MatMul_6MatMul$lstm_96/while/lstm_cell_96/mul_2:z:03lstm_96/while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_6?
 lstm_96/while/lstm_cell_96/add_2AddV2-lstm_96/while/lstm_cell_96/BiasAdd_2:output:0-lstm_96/while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_2?
lstm_96/while/lstm_cell_96/ReluRelu$lstm_96/while/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_96/while/lstm_cell_96/Relu?
 lstm_96/while/lstm_cell_96/mul_5Mul&lstm_96/while/lstm_cell_96/Sigmoid:y:0-lstm_96/while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_5?
 lstm_96/while/lstm_cell_96/add_3AddV2$lstm_96/while/lstm_cell_96/mul_4:z:0$lstm_96/while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_3?
+lstm_96/while/lstm_cell_96/ReadVariableOp_3ReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_96/while/lstm_cell_96/ReadVariableOp_3?
0lstm_96/while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_96/while/lstm_cell_96/strided_slice_3/stack?
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_1?
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_2?
*lstm_96/while/lstm_cell_96/strided_slice_3StridedSlice3lstm_96/while/lstm_cell_96/ReadVariableOp_3:value:09lstm_96/while/lstm_cell_96/strided_slice_3/stack:output:0;lstm_96/while/lstm_cell_96/strided_slice_3/stack_1:output:0;lstm_96/while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_96/while/lstm_cell_96/strided_slice_3?
#lstm_96/while/lstm_cell_96/MatMul_7MatMul$lstm_96/while/lstm_cell_96/mul_3:z:03lstm_96/while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_7?
 lstm_96/while/lstm_cell_96/add_4AddV2-lstm_96/while/lstm_cell_96/BiasAdd_3:output:0-lstm_96/while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_4?
$lstm_96/while/lstm_cell_96/Sigmoid_2Sigmoid$lstm_96/while/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/Sigmoid_2?
!lstm_96/while/lstm_cell_96/Relu_1Relu$lstm_96/while/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_96/while/lstm_cell_96/Relu_1?
 lstm_96/while/lstm_cell_96/mul_6Mul(lstm_96/while/lstm_cell_96/Sigmoid_2:y:0/lstm_96/while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_6?
2lstm_96/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_96_while_placeholder_1lstm_96_while_placeholder$lstm_96/while/lstm_cell_96/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_96/while/TensorArrayV2Write/TensorListSetIteml
lstm_96/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_96/while/add/y?
lstm_96/while/addAddV2lstm_96_while_placeholderlstm_96/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_96/while/addp
lstm_96/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_96/while/add_1/y?
lstm_96/while/add_1AddV2(lstm_96_while_lstm_96_while_loop_counterlstm_96/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_96/while/add_1?
lstm_96/while/IdentityIdentitylstm_96/while/add_1:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity?
lstm_96/while/Identity_1Identity.lstm_96_while_lstm_96_while_maximum_iterations^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity_1?
lstm_96/while/Identity_2Identitylstm_96/while/add:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity_2?
lstm_96/while/Identity_3IdentityBlstm_96/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity_3?
lstm_96/while/Identity_4Identity$lstm_96/while/lstm_cell_96/mul_6:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_96/while/Identity_4?
lstm_96/while/Identity_5Identity$lstm_96/while/lstm_cell_96/add_3:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_96/while/Identity_5?
lstm_96/while/NoOpNoOp*^lstm_96/while/lstm_cell_96/ReadVariableOp,^lstm_96/while/lstm_cell_96/ReadVariableOp_1,^lstm_96/while/lstm_cell_96/ReadVariableOp_2,^lstm_96/while/lstm_cell_96/ReadVariableOp_30^lstm_96/while/lstm_cell_96/split/ReadVariableOp2^lstm_96/while/lstm_cell_96/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_96/while/NoOp"9
lstm_96_while_identitylstm_96/while/Identity:output:0"=
lstm_96_while_identity_1!lstm_96/while/Identity_1:output:0"=
lstm_96_while_identity_2!lstm_96/while/Identity_2:output:0"=
lstm_96_while_identity_3!lstm_96/while/Identity_3:output:0"=
lstm_96_while_identity_4!lstm_96/while/Identity_4:output:0"=
lstm_96_while_identity_5!lstm_96/while/Identity_5:output:0"P
%lstm_96_while_lstm_96_strided_slice_1'lstm_96_while_lstm_96_strided_slice_1_0"j
2lstm_96_while_lstm_cell_96_readvariableop_resource4lstm_96_while_lstm_cell_96_readvariableop_resource_0"z
:lstm_96_while_lstm_cell_96_split_1_readvariableop_resource<lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0"v
8lstm_96_while_lstm_cell_96_split_readvariableop_resource:lstm_96_while_lstm_cell_96_split_readvariableop_resource_0"?
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_96/while/lstm_cell_96/ReadVariableOp)lstm_96/while/lstm_cell_96/ReadVariableOp2Z
+lstm_96/while/lstm_cell_96/ReadVariableOp_1+lstm_96/while/lstm_cell_96/ReadVariableOp_12Z
+lstm_96/while/lstm_cell_96/ReadVariableOp_2+lstm_96/while/lstm_cell_96/ReadVariableOp_22Z
+lstm_96/while/lstm_cell_96/ReadVariableOp_3+lstm_96/while/lstm_cell_96/ReadVariableOp_32b
/lstm_96/while/lstm_cell_96/split/ReadVariableOp/lstm_96/while/lstm_cell_96/split/ReadVariableOp2f
1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp: 
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
)__inference_lstm_96_layer_call_fn_3086638

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
D__inference_lstm_96_layer_call_and_return_conditional_losses_30857372
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087431

inputs=
*lstm_cell_96_split_readvariableop_resource:	?;
,lstm_cell_96_split_1_readvariableop_resource:	?7
$lstm_cell_96_readvariableop_resource:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_96/ReadVariableOp?lstm_cell_96/ReadVariableOp_1?lstm_cell_96/ReadVariableOp_2?lstm_cell_96/ReadVariableOp_3?!lstm_cell_96/split/ReadVariableOp?#lstm_cell_96/split_1/ReadVariableOp?whileD
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
lstm_cell_96/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_96/ones_like/Shape?
lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_96/ones_like/Const?
lstm_cell_96/ones_likeFill%lstm_cell_96/ones_like/Shape:output:0%lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/ones_like~
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_96/split/split_dim?
!lstm_cell_96/split/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_96/split/ReadVariableOp?
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0)lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_96/split?
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul?
lstm_cell_96/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_1?
lstm_cell_96/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_2?
lstm_cell_96/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_3?
lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_96/split_1/split_dim?
#lstm_cell_96/split_1/ReadVariableOpReadVariableOp,lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_96/split_1/ReadVariableOp?
lstm_cell_96/split_1Split'lstm_cell_96/split_1/split_dim:output:0+lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_96/split_1?
lstm_cell_96/BiasAddBiasAddlstm_cell_96/MatMul:product:0lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd?
lstm_cell_96/BiasAdd_1BiasAddlstm_cell_96/MatMul_1:product:0lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_1?
lstm_cell_96/BiasAdd_2BiasAddlstm_cell_96/MatMul_2:product:0lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_2?
lstm_cell_96/BiasAdd_3BiasAddlstm_cell_96/MatMul_3:product:0lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_3?
lstm_cell_96/mulMulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul?
lstm_cell_96/mul_1Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_1?
lstm_cell_96/mul_2Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_2?
lstm_cell_96/mul_3Mulzeros:output:0lstm_cell_96/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_3?
lstm_cell_96/ReadVariableOpReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp?
 lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_96/strided_slice/stack?
"lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice/stack_1?
"lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_96/strided_slice/stack_2?
lstm_cell_96/strided_sliceStridedSlice#lstm_cell_96/ReadVariableOp:value:0)lstm_cell_96/strided_slice/stack:output:0+lstm_cell_96/strided_slice/stack_1:output:0+lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice?
lstm_cell_96/MatMul_4MatMullstm_cell_96/mul:z:0#lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_4?
lstm_cell_96/addAddV2lstm_cell_96/BiasAdd:output:0lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add
lstm_cell_96/SigmoidSigmoidlstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid?
lstm_cell_96/ReadVariableOp_1ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_1?
"lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice_1/stack?
$lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_96/strided_slice_1/stack_1?
$lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_1/stack_2?
lstm_cell_96/strided_slice_1StridedSlice%lstm_cell_96/ReadVariableOp_1:value:0+lstm_cell_96/strided_slice_1/stack:output:0-lstm_cell_96/strided_slice_1/stack_1:output:0-lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_1?
lstm_cell_96/MatMul_5MatMullstm_cell_96/mul_1:z:0%lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_5?
lstm_cell_96/add_1AddV2lstm_cell_96/BiasAdd_1:output:0lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_1?
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_1?
lstm_cell_96/mul_4Mullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_4?
lstm_cell_96/ReadVariableOp_2ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_2?
"lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_96/strided_slice_2/stack?
$lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_96/strided_slice_2/stack_1?
$lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_2/stack_2?
lstm_cell_96/strided_slice_2StridedSlice%lstm_cell_96/ReadVariableOp_2:value:0+lstm_cell_96/strided_slice_2/stack:output:0-lstm_cell_96/strided_slice_2/stack_1:output:0-lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_2?
lstm_cell_96/MatMul_6MatMullstm_cell_96/mul_2:z:0%lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_6?
lstm_cell_96/add_2AddV2lstm_cell_96/BiasAdd_2:output:0lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_2x
lstm_cell_96/ReluRelulstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu?
lstm_cell_96/mul_5Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_5?
lstm_cell_96/add_3AddV2lstm_cell_96/mul_4:z:0lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_3?
lstm_cell_96/ReadVariableOp_3ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_3?
"lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_96/strided_slice_3/stack?
$lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_96/strided_slice_3/stack_1?
$lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_3/stack_2?
lstm_cell_96/strided_slice_3StridedSlice%lstm_cell_96/ReadVariableOp_3:value:0+lstm_cell_96/strided_slice_3/stack:output:0-lstm_cell_96/strided_slice_3/stack_1:output:0-lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_3?
lstm_cell_96/MatMul_7MatMullstm_cell_96/mul_3:z:0%lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_7?
lstm_cell_96/add_4AddV2lstm_cell_96/BiasAdd_3:output:0lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_4?
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_2|
lstm_cell_96/Relu_1Relulstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu_1?
lstm_cell_96/mul_6Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_96_split_readvariableop_resource,lstm_cell_96_split_1_readvariableop_resource$lstm_cell_96_readvariableop_resource*
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
while_body_3087298*
condR
while_cond_3087297*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_96/ReadVariableOp^lstm_cell_96/ReadVariableOp_1^lstm_cell_96/ReadVariableOp_2^lstm_cell_96/ReadVariableOp_3"^lstm_cell_96/split/ReadVariableOp$^lstm_cell_96/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_96/ReadVariableOplstm_cell_96/ReadVariableOp2>
lstm_cell_96/ReadVariableOp_1lstm_cell_96/ReadVariableOp_12>
lstm_cell_96/ReadVariableOp_2lstm_cell_96/ReadVariableOp_22>
lstm_cell_96/ReadVariableOp_3lstm_cell_96/ReadVariableOp_32F
!lstm_cell_96/split/ReadVariableOp!lstm_cell_96/split/ReadVariableOp2J
#lstm_cell_96/split_1/ReadVariableOp#lstm_cell_96/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
lstm_96_while_body_3086395,
(lstm_96_while_lstm_96_while_loop_counter2
.lstm_96_while_lstm_96_while_maximum_iterations
lstm_96_while_placeholder
lstm_96_while_placeholder_1
lstm_96_while_placeholder_2
lstm_96_while_placeholder_3+
'lstm_96_while_lstm_96_strided_slice_1_0g
clstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_96_while_lstm_cell_96_split_readvariableop_resource_0:	?K
<lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0:	?G
4lstm_96_while_lstm_cell_96_readvariableop_resource_0:	 ?
lstm_96_while_identity
lstm_96_while_identity_1
lstm_96_while_identity_2
lstm_96_while_identity_3
lstm_96_while_identity_4
lstm_96_while_identity_5)
%lstm_96_while_lstm_96_strided_slice_1e
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorK
8lstm_96_while_lstm_cell_96_split_readvariableop_resource:	?I
:lstm_96_while_lstm_cell_96_split_1_readvariableop_resource:	?E
2lstm_96_while_lstm_cell_96_readvariableop_resource:	 ???)lstm_96/while/lstm_cell_96/ReadVariableOp?+lstm_96/while/lstm_cell_96/ReadVariableOp_1?+lstm_96/while/lstm_cell_96/ReadVariableOp_2?+lstm_96/while/lstm_cell_96/ReadVariableOp_3?/lstm_96/while/lstm_cell_96/split/ReadVariableOp?1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp?
?lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_96/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0lstm_96_while_placeholderHlstm_96/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_96/while/TensorArrayV2Read/TensorListGetItem?
*lstm_96/while/lstm_cell_96/ones_like/ShapeShapelstm_96_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_96/while/lstm_cell_96/ones_like/Shape?
*lstm_96/while/lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_96/while/lstm_cell_96/ones_like/Const?
$lstm_96/while/lstm_cell_96/ones_likeFill3lstm_96/while/lstm_cell_96/ones_like/Shape:output:03lstm_96/while/lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/ones_like?
(lstm_96/while/lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2*
(lstm_96/while/lstm_cell_96/dropout/Const?
&lstm_96/while/lstm_cell_96/dropout/MulMul-lstm_96/while/lstm_cell_96/ones_like:output:01lstm_96/while/lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_96/while/lstm_cell_96/dropout/Mul?
(lstm_96/while/lstm_cell_96/dropout/ShapeShape-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_96/while/lstm_cell_96/dropout/Shape?
?lstm_96/while/lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform1lstm_96/while/lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2A
?lstm_96/while/lstm_cell_96/dropout/random_uniform/RandomUniform?
1lstm_96/while/lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_96/while/lstm_cell_96/dropout/GreaterEqual/y?
/lstm_96/while/lstm_cell_96/dropout/GreaterEqualGreaterEqualHlstm_96/while/lstm_cell_96/dropout/random_uniform/RandomUniform:output:0:lstm_96/while/lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_96/while/lstm_cell_96/dropout/GreaterEqual?
'lstm_96/while/lstm_cell_96/dropout/CastCast3lstm_96/while/lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_96/while/lstm_cell_96/dropout/Cast?
(lstm_96/while/lstm_cell_96/dropout/Mul_1Mul*lstm_96/while/lstm_cell_96/dropout/Mul:z:0+lstm_96/while/lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_96/while/lstm_cell_96/dropout/Mul_1?
*lstm_96/while/lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_96/while/lstm_cell_96/dropout_1/Const?
(lstm_96/while/lstm_cell_96/dropout_1/MulMul-lstm_96/while/lstm_cell_96/ones_like:output:03lstm_96/while/lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_96/while/lstm_cell_96/dropout_1/Mul?
*lstm_96/while/lstm_cell_96/dropout_1/ShapeShape-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_96/while/lstm_cell_96/dropout_1/Shape?
Alstm_96/while/lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_96/while/lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_96/while/lstm_cell_96/dropout_1/random_uniform/RandomUniform?
3lstm_96/while/lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_96/while/lstm_cell_96/dropout_1/GreaterEqual/y?
1lstm_96/while/lstm_cell_96/dropout_1/GreaterEqualGreaterEqualJlstm_96/while/lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:0<lstm_96/while/lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_96/while/lstm_cell_96/dropout_1/GreaterEqual?
)lstm_96/while/lstm_cell_96/dropout_1/CastCast5lstm_96/while/lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_96/while/lstm_cell_96/dropout_1/Cast?
*lstm_96/while/lstm_cell_96/dropout_1/Mul_1Mul,lstm_96/while/lstm_cell_96/dropout_1/Mul:z:0-lstm_96/while/lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_96/while/lstm_cell_96/dropout_1/Mul_1?
*lstm_96/while/lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_96/while/lstm_cell_96/dropout_2/Const?
(lstm_96/while/lstm_cell_96/dropout_2/MulMul-lstm_96/while/lstm_cell_96/ones_like:output:03lstm_96/while/lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_96/while/lstm_cell_96/dropout_2/Mul?
*lstm_96/while/lstm_cell_96/dropout_2/ShapeShape-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_96/while/lstm_cell_96/dropout_2/Shape?
Alstm_96/while/lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_96/while/lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_96/while/lstm_cell_96/dropout_2/random_uniform/RandomUniform?
3lstm_96/while/lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_96/while/lstm_cell_96/dropout_2/GreaterEqual/y?
1lstm_96/while/lstm_cell_96/dropout_2/GreaterEqualGreaterEqualJlstm_96/while/lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:0<lstm_96/while/lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_96/while/lstm_cell_96/dropout_2/GreaterEqual?
)lstm_96/while/lstm_cell_96/dropout_2/CastCast5lstm_96/while/lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_96/while/lstm_cell_96/dropout_2/Cast?
*lstm_96/while/lstm_cell_96/dropout_2/Mul_1Mul,lstm_96/while/lstm_cell_96/dropout_2/Mul:z:0-lstm_96/while/lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_96/while/lstm_cell_96/dropout_2/Mul_1?
*lstm_96/while/lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2,
*lstm_96/while/lstm_cell_96/dropout_3/Const?
(lstm_96/while/lstm_cell_96/dropout_3/MulMul-lstm_96/while/lstm_cell_96/ones_like:output:03lstm_96/while/lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2*
(lstm_96/while/lstm_cell_96/dropout_3/Mul?
*lstm_96/while/lstm_cell_96/dropout_3/ShapeShape-lstm_96/while/lstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_96/while/lstm_cell_96/dropout_3/Shape?
Alstm_96/while/lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_96/while/lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???2C
Alstm_96/while/lstm_cell_96/dropout_3/random_uniform/RandomUniform?
3lstm_96/while/lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>25
3lstm_96/while/lstm_cell_96/dropout_3/GreaterEqual/y?
1lstm_96/while/lstm_cell_96/dropout_3/GreaterEqualGreaterEqualJlstm_96/while/lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:0<lstm_96/while/lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 23
1lstm_96/while/lstm_cell_96/dropout_3/GreaterEqual?
)lstm_96/while/lstm_cell_96/dropout_3/CastCast5lstm_96/while/lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2+
)lstm_96/while/lstm_cell_96/dropout_3/Cast?
*lstm_96/while/lstm_cell_96/dropout_3/Mul_1Mul,lstm_96/while/lstm_cell_96/dropout_3/Mul:z:0-lstm_96/while/lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2,
*lstm_96/while/lstm_cell_96/dropout_3/Mul_1?
*lstm_96/while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_96/while/lstm_cell_96/split/split_dim?
/lstm_96/while/lstm_cell_96/split/ReadVariableOpReadVariableOp:lstm_96_while_lstm_cell_96_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype021
/lstm_96/while/lstm_cell_96/split/ReadVariableOp?
 lstm_96/while/lstm_cell_96/splitSplit3lstm_96/while/lstm_cell_96/split/split_dim:output:07lstm_96/while/lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_96/while/lstm_cell_96/split?
!lstm_96/while/lstm_cell_96/MatMulMatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_96/while/lstm_cell_96/MatMul?
#lstm_96/while/lstm_cell_96/MatMul_1MatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_1?
#lstm_96/while/lstm_cell_96/MatMul_2MatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_2?
#lstm_96/while/lstm_cell_96/MatMul_3MatMul8lstm_96/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_96/while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_3?
,lstm_96/while/lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_96/while/lstm_cell_96/split_1/split_dim?
1lstm_96/while/lstm_cell_96/split_1/ReadVariableOpReadVariableOp<lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp?
"lstm_96/while/lstm_cell_96/split_1Split5lstm_96/while/lstm_cell_96/split_1/split_dim:output:09lstm_96/while/lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2$
"lstm_96/while/lstm_cell_96/split_1?
"lstm_96/while/lstm_cell_96/BiasAddBiasAdd+lstm_96/while/lstm_cell_96/MatMul:product:0+lstm_96/while/lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/while/lstm_cell_96/BiasAdd?
$lstm_96/while/lstm_cell_96/BiasAdd_1BiasAdd-lstm_96/while/lstm_cell_96/MatMul_1:product:0+lstm_96/while/lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/BiasAdd_1?
$lstm_96/while/lstm_cell_96/BiasAdd_2BiasAdd-lstm_96/while/lstm_cell_96/MatMul_2:product:0+lstm_96/while/lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/BiasAdd_2?
$lstm_96/while/lstm_cell_96/BiasAdd_3BiasAdd-lstm_96/while/lstm_cell_96/MatMul_3:product:0+lstm_96/while/lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/BiasAdd_3?
lstm_96/while/lstm_cell_96/mulMullstm_96_while_placeholder_2,lstm_96/while/lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/while/lstm_cell_96/mul?
 lstm_96/while/lstm_cell_96/mul_1Mullstm_96_while_placeholder_2.lstm_96/while/lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_1?
 lstm_96/while/lstm_cell_96/mul_2Mullstm_96_while_placeholder_2.lstm_96/while/lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_2?
 lstm_96/while/lstm_cell_96/mul_3Mullstm_96_while_placeholder_2.lstm_96/while/lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_3?
)lstm_96/while/lstm_cell_96/ReadVariableOpReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_96/while/lstm_cell_96/ReadVariableOp?
.lstm_96/while/lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_96/while/lstm_cell_96/strided_slice/stack?
0lstm_96/while/lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_96/while/lstm_cell_96/strided_slice/stack_1?
0lstm_96/while/lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_96/while/lstm_cell_96/strided_slice/stack_2?
(lstm_96/while/lstm_cell_96/strided_sliceStridedSlice1lstm_96/while/lstm_cell_96/ReadVariableOp:value:07lstm_96/while/lstm_cell_96/strided_slice/stack:output:09lstm_96/while/lstm_cell_96/strided_slice/stack_1:output:09lstm_96/while/lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_96/while/lstm_cell_96/strided_slice?
#lstm_96/while/lstm_cell_96/MatMul_4MatMul"lstm_96/while/lstm_cell_96/mul:z:01lstm_96/while/lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_4?
lstm_96/while/lstm_cell_96/addAddV2+lstm_96/while/lstm_cell_96/BiasAdd:output:0-lstm_96/while/lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_96/while/lstm_cell_96/add?
"lstm_96/while/lstm_cell_96/SigmoidSigmoid"lstm_96/while/lstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_96/while/lstm_cell_96/Sigmoid?
+lstm_96/while/lstm_cell_96/ReadVariableOp_1ReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_96/while/lstm_cell_96/ReadVariableOp_1?
0lstm_96/while/lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_96/while/lstm_cell_96/strided_slice_1/stack?
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   24
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_1?
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_96/while/lstm_cell_96/strided_slice_1/stack_2?
*lstm_96/while/lstm_cell_96/strided_slice_1StridedSlice3lstm_96/while/lstm_cell_96/ReadVariableOp_1:value:09lstm_96/while/lstm_cell_96/strided_slice_1/stack:output:0;lstm_96/while/lstm_cell_96/strided_slice_1/stack_1:output:0;lstm_96/while/lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_96/while/lstm_cell_96/strided_slice_1?
#lstm_96/while/lstm_cell_96/MatMul_5MatMul$lstm_96/while/lstm_cell_96/mul_1:z:03lstm_96/while/lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_5?
 lstm_96/while/lstm_cell_96/add_1AddV2-lstm_96/while/lstm_cell_96/BiasAdd_1:output:0-lstm_96/while/lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_1?
$lstm_96/while/lstm_cell_96/Sigmoid_1Sigmoid$lstm_96/while/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/Sigmoid_1?
 lstm_96/while/lstm_cell_96/mul_4Mul(lstm_96/while/lstm_cell_96/Sigmoid_1:y:0lstm_96_while_placeholder_3*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_4?
+lstm_96/while/lstm_cell_96/ReadVariableOp_2ReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_96/while/lstm_cell_96/ReadVariableOp_2?
0lstm_96/while/lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_96/while/lstm_cell_96/strided_slice_2/stack?
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   24
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_1?
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_96/while/lstm_cell_96/strided_slice_2/stack_2?
*lstm_96/while/lstm_cell_96/strided_slice_2StridedSlice3lstm_96/while/lstm_cell_96/ReadVariableOp_2:value:09lstm_96/while/lstm_cell_96/strided_slice_2/stack:output:0;lstm_96/while/lstm_cell_96/strided_slice_2/stack_1:output:0;lstm_96/while/lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_96/while/lstm_cell_96/strided_slice_2?
#lstm_96/while/lstm_cell_96/MatMul_6MatMul$lstm_96/while/lstm_cell_96/mul_2:z:03lstm_96/while/lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_6?
 lstm_96/while/lstm_cell_96/add_2AddV2-lstm_96/while/lstm_cell_96/BiasAdd_2:output:0-lstm_96/while/lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_2?
lstm_96/while/lstm_cell_96/ReluRelu$lstm_96/while/lstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_96/while/lstm_cell_96/Relu?
 lstm_96/while/lstm_cell_96/mul_5Mul&lstm_96/while/lstm_cell_96/Sigmoid:y:0-lstm_96/while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_5?
 lstm_96/while/lstm_cell_96/add_3AddV2$lstm_96/while/lstm_cell_96/mul_4:z:0$lstm_96/while/lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_3?
+lstm_96/while/lstm_cell_96/ReadVariableOp_3ReadVariableOp4lstm_96_while_lstm_cell_96_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02-
+lstm_96/while/lstm_cell_96/ReadVariableOp_3?
0lstm_96/while/lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_96/while/lstm_cell_96/strided_slice_3/stack?
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_1?
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_96/while/lstm_cell_96/strided_slice_3/stack_2?
*lstm_96/while/lstm_cell_96/strided_slice_3StridedSlice3lstm_96/while/lstm_cell_96/ReadVariableOp_3:value:09lstm_96/while/lstm_cell_96/strided_slice_3/stack:output:0;lstm_96/while/lstm_cell_96/strided_slice_3/stack_1:output:0;lstm_96/while/lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2,
*lstm_96/while/lstm_cell_96/strided_slice_3?
#lstm_96/while/lstm_cell_96/MatMul_7MatMul$lstm_96/while/lstm_cell_96/mul_3:z:03lstm_96/while/lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_96/while/lstm_cell_96/MatMul_7?
 lstm_96/while/lstm_cell_96/add_4AddV2-lstm_96/while/lstm_cell_96/BiasAdd_3:output:0-lstm_96/while/lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/add_4?
$lstm_96/while/lstm_cell_96/Sigmoid_2Sigmoid$lstm_96/while/lstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2&
$lstm_96/while/lstm_cell_96/Sigmoid_2?
!lstm_96/while/lstm_cell_96/Relu_1Relu$lstm_96/while/lstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2#
!lstm_96/while/lstm_cell_96/Relu_1?
 lstm_96/while/lstm_cell_96/mul_6Mul(lstm_96/while/lstm_cell_96/Sigmoid_2:y:0/lstm_96/while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2"
 lstm_96/while/lstm_cell_96/mul_6?
2lstm_96/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_96_while_placeholder_1lstm_96_while_placeholder$lstm_96/while/lstm_cell_96/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_96/while/TensorArrayV2Write/TensorListSetIteml
lstm_96/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_96/while/add/y?
lstm_96/while/addAddV2lstm_96_while_placeholderlstm_96/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_96/while/addp
lstm_96/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_96/while/add_1/y?
lstm_96/while/add_1AddV2(lstm_96_while_lstm_96_while_loop_counterlstm_96/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_96/while/add_1?
lstm_96/while/IdentityIdentitylstm_96/while/add_1:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity?
lstm_96/while/Identity_1Identity.lstm_96_while_lstm_96_while_maximum_iterations^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity_1?
lstm_96/while/Identity_2Identitylstm_96/while/add:z:0^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity_2?
lstm_96/while/Identity_3IdentityBlstm_96/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_96/while/NoOp*
T0*
_output_shapes
: 2
lstm_96/while/Identity_3?
lstm_96/while/Identity_4Identity$lstm_96/while/lstm_cell_96/mul_6:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_96/while/Identity_4?
lstm_96/while/Identity_5Identity$lstm_96/while/lstm_cell_96/add_3:z:0^lstm_96/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_96/while/Identity_5?
lstm_96/while/NoOpNoOp*^lstm_96/while/lstm_cell_96/ReadVariableOp,^lstm_96/while/lstm_cell_96/ReadVariableOp_1,^lstm_96/while/lstm_cell_96/ReadVariableOp_2,^lstm_96/while/lstm_cell_96/ReadVariableOp_30^lstm_96/while/lstm_cell_96/split/ReadVariableOp2^lstm_96/while/lstm_cell_96/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_96/while/NoOp"9
lstm_96_while_identitylstm_96/while/Identity:output:0"=
lstm_96_while_identity_1!lstm_96/while/Identity_1:output:0"=
lstm_96_while_identity_2!lstm_96/while/Identity_2:output:0"=
lstm_96_while_identity_3!lstm_96/while/Identity_3:output:0"=
lstm_96_while_identity_4!lstm_96/while/Identity_4:output:0"=
lstm_96_while_identity_5!lstm_96/while/Identity_5:output:0"P
%lstm_96_while_lstm_96_strided_slice_1'lstm_96_while_lstm_96_strided_slice_1_0"j
2lstm_96_while_lstm_cell_96_readvariableop_resource4lstm_96_while_lstm_cell_96_readvariableop_resource_0"z
:lstm_96_while_lstm_cell_96_split_1_readvariableop_resource<lstm_96_while_lstm_cell_96_split_1_readvariableop_resource_0"v
8lstm_96_while_lstm_cell_96_split_readvariableop_resource:lstm_96_while_lstm_cell_96_split_readvariableop_resource_0"?
alstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensorclstm_96_while_tensorarrayv2read_tensorlistgetitem_lstm_96_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)lstm_96/while/lstm_cell_96/ReadVariableOp)lstm_96/while/lstm_cell_96/ReadVariableOp2Z
+lstm_96/while/lstm_cell_96/ReadVariableOp_1+lstm_96/while/lstm_cell_96/ReadVariableOp_12Z
+lstm_96/while/lstm_cell_96/ReadVariableOp_2+lstm_96/while/lstm_cell_96/ReadVariableOp_22Z
+lstm_96/while/lstm_cell_96/ReadVariableOp_3+lstm_96/while/lstm_cell_96/ReadVariableOp_32b
/lstm_96/while/lstm_cell_96/split/ReadVariableOp/lstm_96/while/lstm_cell_96/split/ReadVariableOp2f
1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp1lstm_96/while/lstm_cell_96/split_1/ReadVariableOp: 
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3084390

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2,
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3088052

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
seed2??;2(
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
seed2خ?2(
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2,
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
?
while_cond_3084403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3084403___redundant_placeholder05
1while_while_cond_3084403___redundant_placeholder15
1while_while_cond_3084403___redundant_placeholder25
1while_while_cond_3084403___redundant_placeholder3
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
?
?
F__inference_dense_117_layer_call_and_return_conditional_losses_3087789

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_117/bias/Regularizer/Square/ReadVariableOp?
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
0dense_117/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0dense_117/bias/Regularizer/Square/ReadVariableOp?
!dense_117/bias/Regularizer/SquareSquare8dense_117/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!dense_117/bias/Regularizer/Square?
 dense_117/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dense_117/bias/Regularizer/Const?
dense_117/bias/Regularizer/SumSum%dense_117/bias/Regularizer/Square:y:0)dense_117/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/Sum?
 dense_117/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_117/bias/Regularizer/mul/x?
dense_117/bias/Regularizer/mulMul)dense_117/bias/Regularizer/mul/x:output:0'dense_117/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_117/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_117/bias/Regularizer/Square/ReadVariableOp*"
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
0dense_117/bias/Regularizer/Square/ReadVariableOp0dense_117/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_3088063Y
Flstm_96_lstm_cell_96_kernel_regularizer_square_readvariableop_resource:	?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_96_lstm_cell_96_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muly
IdentityIdentity/lstm_96/lstm_cell_96/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp
??
?
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087738

inputs=
*lstm_cell_96_split_readvariableop_resource:	?;
,lstm_cell_96_split_1_readvariableop_resource:	?7
$lstm_cell_96_readvariableop_resource:	 ?
identity??=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_96/ReadVariableOp?lstm_cell_96/ReadVariableOp_1?lstm_cell_96/ReadVariableOp_2?lstm_cell_96/ReadVariableOp_3?!lstm_cell_96/split/ReadVariableOp?#lstm_cell_96/split_1/ReadVariableOp?whileD
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
lstm_cell_96/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_96/ones_like/Shape?
lstm_cell_96/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_96/ones_like/Const?
lstm_cell_96/ones_likeFill%lstm_cell_96/ones_like/Shape:output:0%lstm_cell_96/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/ones_like}
lstm_cell_96/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout/Const?
lstm_cell_96/dropout/MulMullstm_cell_96/ones_like:output:0#lstm_cell_96/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Mul?
lstm_cell_96/dropout/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout/Shape?
1lstm_cell_96/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_96/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2??q23
1lstm_cell_96/dropout/random_uniform/RandomUniform?
#lstm_cell_96/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2%
#lstm_cell_96/dropout/GreaterEqual/y?
!lstm_cell_96/dropout/GreaterEqualGreaterEqual:lstm_cell_96/dropout/random_uniform/RandomUniform:output:0,lstm_cell_96/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_cell_96/dropout/GreaterEqual?
lstm_cell_96/dropout/CastCast%lstm_cell_96/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Cast?
lstm_cell_96/dropout/Mul_1Mullstm_cell_96/dropout/Mul:z:0lstm_cell_96/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout/Mul_1?
lstm_cell_96/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_1/Const?
lstm_cell_96/dropout_1/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Mul?
lstm_cell_96/dropout_1/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_1/Shape?
3lstm_cell_96/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2ֺ?25
3lstm_cell_96/dropout_1/random_uniform/RandomUniform?
%lstm_cell_96/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_1/GreaterEqual/y?
#lstm_cell_96/dropout_1/GreaterEqualGreaterEqual<lstm_cell_96/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_1/GreaterEqual?
lstm_cell_96/dropout_1/CastCast'lstm_cell_96/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Cast?
lstm_cell_96/dropout_1/Mul_1Mullstm_cell_96/dropout_1/Mul:z:0lstm_cell_96/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_1/Mul_1?
lstm_cell_96/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_2/Const?
lstm_cell_96/dropout_2/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Mul?
lstm_cell_96/dropout_2/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_2/Shape?
3lstm_cell_96/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2Ҍ?25
3lstm_cell_96/dropout_2/random_uniform/RandomUniform?
%lstm_cell_96/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_2/GreaterEqual/y?
#lstm_cell_96/dropout_2/GreaterEqualGreaterEqual<lstm_cell_96/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_2/GreaterEqual?
lstm_cell_96/dropout_2/CastCast'lstm_cell_96/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Cast?
lstm_cell_96/dropout_2/Mul_1Mullstm_cell_96/dropout_2/Mul:z:0lstm_cell_96/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_2/Mul_1?
lstm_cell_96/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
lstm_cell_96/dropout_3/Const?
lstm_cell_96/dropout_3/MulMullstm_cell_96/ones_like:output:0%lstm_cell_96/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Mul?
lstm_cell_96/dropout_3/ShapeShapelstm_cell_96/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_96/dropout_3/Shape?
3lstm_cell_96/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_96/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed?	*
seed2???25
3lstm_cell_96/dropout_3/random_uniform/RandomUniform?
%lstm_cell_96/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2'
%lstm_cell_96/dropout_3/GreaterEqual/y?
#lstm_cell_96/dropout_3/GreaterEqualGreaterEqual<lstm_cell_96/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_96/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2%
#lstm_cell_96/dropout_3/GreaterEqual?
lstm_cell_96/dropout_3/CastCast'lstm_cell_96/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Cast?
lstm_cell_96/dropout_3/Mul_1Mullstm_cell_96/dropout_3/Mul:z:0lstm_cell_96/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/dropout_3/Mul_1~
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_96/split/split_dim?
!lstm_cell_96/split/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_96/split/ReadVariableOp?
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0)lstm_cell_96/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_96/split?
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0lstm_cell_96/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul?
lstm_cell_96/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_96/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_1?
lstm_cell_96/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_96/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_2?
lstm_cell_96/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_96/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_3?
lstm_cell_96/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_96/split_1/split_dim?
#lstm_cell_96/split_1/ReadVariableOpReadVariableOp,lstm_cell_96_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_96/split_1/ReadVariableOp?
lstm_cell_96/split_1Split'lstm_cell_96/split_1/split_dim:output:0+lstm_cell_96/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_96/split_1?
lstm_cell_96/BiasAddBiasAddlstm_cell_96/MatMul:product:0lstm_cell_96/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd?
lstm_cell_96/BiasAdd_1BiasAddlstm_cell_96/MatMul_1:product:0lstm_cell_96/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_1?
lstm_cell_96/BiasAdd_2BiasAddlstm_cell_96/MatMul_2:product:0lstm_cell_96/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_2?
lstm_cell_96/BiasAdd_3BiasAddlstm_cell_96/MatMul_3:product:0lstm_cell_96/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/BiasAdd_3?
lstm_cell_96/mulMulzeros:output:0lstm_cell_96/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul?
lstm_cell_96/mul_1Mulzeros:output:0 lstm_cell_96/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_1?
lstm_cell_96/mul_2Mulzeros:output:0 lstm_cell_96/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_2?
lstm_cell_96/mul_3Mulzeros:output:0 lstm_cell_96/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_3?
lstm_cell_96/ReadVariableOpReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp?
 lstm_cell_96/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_96/strided_slice/stack?
"lstm_cell_96/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice/stack_1?
"lstm_cell_96/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_96/strided_slice/stack_2?
lstm_cell_96/strided_sliceStridedSlice#lstm_cell_96/ReadVariableOp:value:0)lstm_cell_96/strided_slice/stack:output:0+lstm_cell_96/strided_slice/stack_1:output:0+lstm_cell_96/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice?
lstm_cell_96/MatMul_4MatMullstm_cell_96/mul:z:0#lstm_cell_96/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_4?
lstm_cell_96/addAddV2lstm_cell_96/BiasAdd:output:0lstm_cell_96/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add
lstm_cell_96/SigmoidSigmoidlstm_cell_96/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid?
lstm_cell_96/ReadVariableOp_1ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_1?
"lstm_cell_96/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm_cell_96/strided_slice_1/stack?
$lstm_cell_96/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_cell_96/strided_slice_1/stack_1?
$lstm_cell_96/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_1/stack_2?
lstm_cell_96/strided_slice_1StridedSlice%lstm_cell_96/ReadVariableOp_1:value:0+lstm_cell_96/strided_slice_1/stack:output:0-lstm_cell_96/strided_slice_1/stack_1:output:0-lstm_cell_96/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_1?
lstm_cell_96/MatMul_5MatMullstm_cell_96/mul_1:z:0%lstm_cell_96/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_5?
lstm_cell_96/add_1AddV2lstm_cell_96/BiasAdd_1:output:0lstm_cell_96/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_1?
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_1?
lstm_cell_96/mul_4Mullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_4?
lstm_cell_96/ReadVariableOp_2ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_2?
"lstm_cell_96/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_96/strided_slice_2/stack?
$lstm_cell_96/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2&
$lstm_cell_96/strided_slice_2/stack_1?
$lstm_cell_96/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_2/stack_2?
lstm_cell_96/strided_slice_2StridedSlice%lstm_cell_96/ReadVariableOp_2:value:0+lstm_cell_96/strided_slice_2/stack:output:0-lstm_cell_96/strided_slice_2/stack_1:output:0-lstm_cell_96/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_2?
lstm_cell_96/MatMul_6MatMullstm_cell_96/mul_2:z:0%lstm_cell_96/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_6?
lstm_cell_96/add_2AddV2lstm_cell_96/BiasAdd_2:output:0lstm_cell_96/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_2x
lstm_cell_96/ReluRelulstm_cell_96/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu?
lstm_cell_96/mul_5Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_5?
lstm_cell_96/add_3AddV2lstm_cell_96/mul_4:z:0lstm_cell_96/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_3?
lstm_cell_96/ReadVariableOp_3ReadVariableOp$lstm_cell_96_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_96/ReadVariableOp_3?
"lstm_cell_96/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2$
"lstm_cell_96/strided_slice_3/stack?
$lstm_cell_96/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_96/strided_slice_3/stack_1?
$lstm_cell_96/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_96/strided_slice_3/stack_2?
lstm_cell_96/strided_slice_3StridedSlice%lstm_cell_96/ReadVariableOp_3:value:0+lstm_cell_96/strided_slice_3/stack:output:0-lstm_cell_96/strided_slice_3/stack_1:output:0-lstm_cell_96/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_96/strided_slice_3?
lstm_cell_96/MatMul_7MatMullstm_cell_96/mul_3:z:0%lstm_cell_96/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/MatMul_7?
lstm_cell_96/add_4AddV2lstm_cell_96/BiasAdd_3:output:0lstm_cell_96/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/add_4?
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Sigmoid_2|
lstm_cell_96/Relu_1Relulstm_cell_96/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/Relu_1?
lstm_cell_96/mul_6Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_96/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_96_split_readvariableop_resource,lstm_cell_96_split_1_readvariableop_resource$lstm_cell_96_readvariableop_resource*
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
while_body_3087573*
condR
while_cond_3087572*K
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
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_96_split_readvariableop_resource*
_output_shapes
:	?*
dtype02?
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp?
.lstm_96/lstm_cell_96/kernel/Regularizer/SquareSquareElstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?20
.lstm_96/lstm_cell_96/kernel/Regularizer/Square?
-lstm_96/lstm_cell_96/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_96/lstm_cell_96/kernel/Regularizer/Const?
+lstm_96/lstm_cell_96/kernel/Regularizer/SumSum2lstm_96/lstm_cell_96/kernel/Regularizer/Square:y:06lstm_96/lstm_cell_96/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/Sum?
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82/
-lstm_96/lstm_cell_96/kernel/Regularizer/mul/x?
+lstm_96/lstm_cell_96/kernel/Regularizer/mulMul6lstm_96/lstm_cell_96/kernel/Regularizer/mul/x:output:04lstm_96/lstm_cell_96/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_96/lstm_cell_96/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp>^lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_96/ReadVariableOp^lstm_cell_96/ReadVariableOp_1^lstm_cell_96/ReadVariableOp_2^lstm_cell_96/ReadVariableOp_3"^lstm_cell_96/split/ReadVariableOp$^lstm_cell_96/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2~
=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp=lstm_96/lstm_cell_96/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_96/ReadVariableOplstm_cell_96/ReadVariableOp2>
lstm_cell_96/ReadVariableOp_1lstm_cell_96/ReadVariableOp_12>
lstm_cell_96/ReadVariableOp_2lstm_cell_96/ReadVariableOp_22>
lstm_cell_96/ReadVariableOp_3lstm_cell_96/ReadVariableOp_32F
!lstm_cell_96/split/ReadVariableOp!lstm_cell_96/split/ReadVariableOp2J
#lstm_cell_96/split_1/ReadVariableOp#lstm_cell_96/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_dense_116_layer_call_and_return_conditional_losses_3087758

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
A
input_405
serving_default_input_40:0?????????B

reshape_584
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
":   2dense_116/kernel
: 2dense_116/bias
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
":  2dense_117/kernel
:2dense_117/bias
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
.:,	?2lstm_96/lstm_cell_96/kernel
8:6	 ?2%lstm_96/lstm_cell_96/recurrent_kernel
(:&?2lstm_96/lstm_cell_96/bias
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
':%  2Adam/dense_116/kernel/m
!: 2Adam/dense_116/bias/m
':% 2Adam/dense_117/kernel/m
!:2Adam/dense_117/bias/m
3:1	?2"Adam/lstm_96/lstm_cell_96/kernel/m
=:;	 ?2,Adam/lstm_96/lstm_cell_96/recurrent_kernel/m
-:+?2 Adam/lstm_96/lstm_cell_96/bias/m
':%  2Adam/dense_116/kernel/v
!: 2Adam/dense_116/bias/v
':% 2Adam/dense_117/kernel/v
!:2Adam/dense_117/bias/v
3:1	?2"Adam/lstm_96/lstm_cell_96/kernel/v
=:;	 ?2,Adam/lstm_96/lstm_cell_96/recurrent_kernel/v
-:+?2 Adam/lstm_96/lstm_cell_96/bias/v
?B?
"__inference__wrapped_model_3084266input_40"?
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
/__inference_sequential_39_layer_call_fn_3085391
/__inference_sequential_39_layer_call_fn_3085963
/__inference_sequential_39_layer_call_fn_3085982
/__inference_sequential_39_layer_call_fn_3085837?
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
J__inference_sequential_39_layer_call_and_return_conditional_losses_3086253
J__inference_sequential_39_layer_call_and_return_conditional_losses_3086588
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085871
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085905?
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
)__inference_lstm_96_layer_call_fn_3086605
)__inference_lstm_96_layer_call_fn_3086616
)__inference_lstm_96_layer_call_fn_3086627
)__inference_lstm_96_layer_call_fn_3086638?
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3086881
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087188
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087431
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087738?
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
+__inference_dense_116_layer_call_fn_3087747?
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
F__inference_dense_116_layer_call_and_return_conditional_losses_3087758?
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
+__inference_dense_117_layer_call_fn_3087773?
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
F__inference_dense_117_layer_call_and_return_conditional_losses_3087789?
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
,__inference_reshape_58_layer_call_fn_3087794?
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
G__inference_reshape_58_layer_call_and_return_conditional_losses_3087807?
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
__inference_loss_fn_0_3087818?
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
%__inference_signature_wrapper_3085944input_40"?
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
.__inference_lstm_cell_96_layer_call_fn_3087841
.__inference_lstm_cell_96_layer_call_fn_3087858?
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3087939
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3088052?
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
__inference_loss_fn_1_3088063?
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
"__inference__wrapped_model_3084266}&('5?2
+?(
&?#
input_40?????????
? ";?8
6

reshape_58(?%

reshape_58??????????
F__inference_dense_116_layer_call_and_return_conditional_losses_3087758\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? ~
+__inference_dense_116_layer_call_fn_3087747O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
F__inference_dense_117_layer_call_and_return_conditional_losses_3087789\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
+__inference_dense_117_layer_call_fn_3087773O/?,
%?"
 ?
inputs????????? 
? "??????????<
__inference_loss_fn_0_3087818?

? 
? "? <
__inference_loss_fn_1_3088063&?

? 
? "? ?
D__inference_lstm_96_layer_call_and_return_conditional_losses_3086881}&('O?L
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087188}&('O?L
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087431m&('??<
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
D__inference_lstm_96_layer_call_and_return_conditional_losses_3087738m&('??<
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
)__inference_lstm_96_layer_call_fn_3086605p&('O?L
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
)__inference_lstm_96_layer_call_fn_3086616p&('O?L
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
)__inference_lstm_96_layer_call_fn_3086627`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
)__inference_lstm_96_layer_call_fn_3086638`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3087939?&('??}
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
I__inference_lstm_cell_96_layer_call_and_return_conditional_losses_3088052?&('??}
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
.__inference_lstm_cell_96_layer_call_fn_3087841?&('??}
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
.__inference_lstm_cell_96_layer_call_fn_3087858?&('??}
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
G__inference_reshape_58_layer_call_and_return_conditional_losses_3087807\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? 
,__inference_reshape_58_layer_call_fn_3087794O/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085871s&('=?:
3?0
&?#
input_40?????????
p 

 
? ")?&
?
0?????????
? ?
J__inference_sequential_39_layer_call_and_return_conditional_losses_3085905s&('=?:
3?0
&?#
input_40?????????
p

 
? ")?&
?
0?????????
? ?
J__inference_sequential_39_layer_call_and_return_conditional_losses_3086253q&(';?8
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
J__inference_sequential_39_layer_call_and_return_conditional_losses_3086588q&(';?8
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
/__inference_sequential_39_layer_call_fn_3085391f&('=?:
3?0
&?#
input_40?????????
p 

 
? "???????????
/__inference_sequential_39_layer_call_fn_3085837f&('=?:
3?0
&?#
input_40?????????
p

 
? "???????????
/__inference_sequential_39_layer_call_fn_3085963d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_39_layer_call_fn_3085982d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3085944?&('A?>
? 
7?4
2
input_40&?#
input_40?????????";?8
6

reshape_58(?%

reshape_58?????????