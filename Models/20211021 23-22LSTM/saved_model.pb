??(
??
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??'
?
layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_6/gamma
?
/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_6/gamma*
_output_shapes
:*
dtype0
?
layer_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_6/beta
?
.layer_normalization_6/beta/Read/ReadVariableOpReadVariableOplayer_normalization_6/beta*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:  *
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
: *
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

: *
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
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
lstm_8/lstm_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_8/lstm_cell_8/kernel
?
-lstm_8/lstm_cell_8/kernel/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_8/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_8/lstm_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*4
shared_name%#lstm_8/lstm_cell_8/recurrent_kernel
?
7lstm_8/lstm_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_8/lstm_cell_8/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_8/lstm_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_8/lstm_cell_8/bias
?
+lstm_8/lstm_cell_8/bias/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_8/bias*
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
"Adam/layer_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_6/gamma/m
?
6Adam/layer_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_6/gamma/m*
_output_shapes
:*
dtype0
?
!Adam/layer_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/layer_normalization_6/beta/m
?
5Adam/layer_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_6/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_12/kernel/m
?
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:  *
dtype0
?
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_13/kernel/m
?
*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_8/lstm_cell_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_8/lstm_cell_8/kernel/m
?
4Adam/lstm_8/lstm_cell_8/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_8/lstm_cell_8/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_8/lstm_cell_8/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*;
shared_name,*Adam/lstm_8/lstm_cell_8/recurrent_kernel/m
?
>Adam/lstm_8/lstm_cell_8/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_8/lstm_cell_8/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
Adam/lstm_8/lstm_cell_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_8/lstm_cell_8/bias/m
?
2Adam/lstm_8/lstm_cell_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_8/lstm_cell_8/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/layer_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_6/gamma/v
?
6Adam/layer_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_6/gamma/v*
_output_shapes
:*
dtype0
?
!Adam/layer_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/layer_normalization_6/beta/v
?
5Adam/layer_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_6/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_12/kernel/v
?
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:  *
dtype0
?
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_13/kernel/v
?
*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:*
dtype0
?
 Adam/lstm_8/lstm_cell_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_8/lstm_cell_8/kernel/v
?
4Adam/lstm_8/lstm_cell_8/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_8/lstm_cell_8/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_8/lstm_cell_8/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*;
shared_name,*Adam/lstm_8/lstm_cell_8/recurrent_kernel/v
?
>Adam/lstm_8/lstm_cell_8/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_8/lstm_cell_8/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
Adam/lstm_8/lstm_cell_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_8/lstm_cell_8/bias/v
?
2Adam/lstm_8/lstm_cell_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_8/lstm_cell_8/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?4
value?4B?4 B?4
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
q
axis
	gamma
beta
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
R
%	variables
&regularization_losses
'trainable_variables
(	keras_api
?
)iter

*beta_1

+beta_2
	,decay
-learning_ratem_m`mambmc md.me/mf0mgvhvivjvkvl vm.vn/vo0vp
?
0
1
.2
/3
04
5
6
7
 8
 
?
0
1
.2
/3
04
5
6
7
 8
?
	variables
1non_trainable_variables
regularization_losses
2layer_regularization_losses
	trainable_variables

3layers
4metrics
5layer_metrics
 
 
fd
VARIABLE_VALUElayer_normalization_6/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_6/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
	variables
6non_trainable_variables
7layer_regularization_losses
regularization_losses
trainable_variables

8layers
9metrics
:layer_metrics
?
;
state_size

.kernel
/recurrent_kernel
0bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
 

.0
/1
02
 

.0
/1
02
?
	variables

@states
Anon_trainable_variables
regularization_losses
Blayer_regularization_losses
trainable_variables

Clayers
Dmetrics
Elayer_metrics
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
	variables
Fnon_trainable_variables
Glayer_regularization_losses
regularization_losses
trainable_variables

Hlayers
Imetrics
Jlayer_metrics
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
?
!	variables
Knon_trainable_variables
Llayer_regularization_losses
"regularization_losses
#trainable_variables

Mlayers
Nmetrics
Olayer_metrics
 
 
 
?
%	variables
Pnon_trainable_variables
Qlayer_regularization_losses
&regularization_losses
'trainable_variables

Rlayers
Smetrics
Tlayer_metrics
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
US
VARIABLE_VALUElstm_8/lstm_cell_8/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_8/lstm_cell_8/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_8/lstm_cell_8/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
 
 
#
0
1
2
3
4

U0
 
 
 
 
 
 
 

.0
/1
02
 

.0
/1
02
?
<	variables
Vnon_trainable_variables
Wlayer_regularization_losses
=regularization_losses
>trainable_variables

Xlayers
Ymetrics
Zlayer_metrics
 
 
 

0
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
	[total
	\count
]	variables
^	keras_api
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
[0
\1

]	variables
??
VARIABLE_VALUE"Adam/layer_normalization_6/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/layer_normalization_6/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_8/lstm_cell_8/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_8/lstm_cell_8/recurrent_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_8/lstm_cell_8/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/layer_normalization_6/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/layer_normalization_6/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_8/lstm_cell_8/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_8/lstm_cell_8/recurrent_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_8/lstm_cell_8/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_5Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5layer_normalization_6/gammalayer_normalization_6/betalstm_8/lstm_cell_8/kernellstm_8/lstm_cell_8/bias#lstm_8/lstm_cell_8/recurrent_kerneldense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_220519
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/layer_normalization_6/gamma/Read/ReadVariableOp.layer_normalization_6/beta/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_8/lstm_cell_8/kernel/Read/ReadVariableOp7lstm_8/lstm_cell_8/recurrent_kernel/Read/ReadVariableOp+lstm_8/lstm_cell_8/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp6Adam/layer_normalization_6/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_6/beta/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp4Adam/lstm_8/lstm_cell_8/kernel/m/Read/ReadVariableOp>Adam/lstm_8/lstm_cell_8/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_8/lstm_cell_8/bias/m/Read/ReadVariableOp6Adam/layer_normalization_6/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_6/beta/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp4Adam/lstm_8/lstm_cell_8/kernel/v/Read/ReadVariableOp>Adam/lstm_8/lstm_cell_8/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_8/lstm_cell_8/bias/v/Read/ReadVariableOpConst*/
Tin(
&2$	*
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
__inference__traced_save_222890
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization_6/gammalayer_normalization_6/betadense_12/kerneldense_12/biasdense_13/kerneldense_13/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_8/lstm_cell_8/kernel#lstm_8/lstm_cell_8/recurrent_kernellstm_8/lstm_cell_8/biastotalcount"Adam/layer_normalization_6/gamma/m!Adam/layer_normalization_6/beta/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/m Adam/lstm_8/lstm_cell_8/kernel/m*Adam/lstm_8/lstm_cell_8/recurrent_kernel/mAdam/lstm_8/lstm_cell_8/bias/m"Adam/layer_normalization_6/gamma/v!Adam/layer_normalization_6/beta/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/v Adam/lstm_8/lstm_cell_8/kernel/v*Adam/lstm_8/lstm_cell_8/recurrent_kernel/vAdam/lstm_8/lstm_cell_8/bias/v*.
Tin'
%2#*
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
"__inference__traced_restore_223002џ&
Ε
?
"__inference__traced_restore_223002
file_prefix:
,assignvariableop_layer_normalization_6_gamma:;
-assignvariableop_1_layer_normalization_6_beta:4
"assignvariableop_2_dense_12_kernel:  .
 assignvariableop_3_dense_12_bias: 4
"assignvariableop_4_dense_13_kernel: .
 assignvariableop_5_dense_13_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: @
-assignvariableop_11_lstm_8_lstm_cell_8_kernel:	?J
7assignvariableop_12_lstm_8_lstm_cell_8_recurrent_kernel:	 ?:
+assignvariableop_13_lstm_8_lstm_cell_8_bias:	?#
assignvariableop_14_total: #
assignvariableop_15_count: D
6assignvariableop_16_adam_layer_normalization_6_gamma_m:C
5assignvariableop_17_adam_layer_normalization_6_beta_m:<
*assignvariableop_18_adam_dense_12_kernel_m:  6
(assignvariableop_19_adam_dense_12_bias_m: <
*assignvariableop_20_adam_dense_13_kernel_m: 6
(assignvariableop_21_adam_dense_13_bias_m:G
4assignvariableop_22_adam_lstm_8_lstm_cell_8_kernel_m:	?Q
>assignvariableop_23_adam_lstm_8_lstm_cell_8_recurrent_kernel_m:	 ?A
2assignvariableop_24_adam_lstm_8_lstm_cell_8_bias_m:	?D
6assignvariableop_25_adam_layer_normalization_6_gamma_v:C
5assignvariableop_26_adam_layer_normalization_6_beta_v:<
*assignvariableop_27_adam_dense_12_kernel_v:  6
(assignvariableop_28_adam_dense_12_bias_v: <
*assignvariableop_29_adam_dense_13_kernel_v: 6
(assignvariableop_30_adam_dense_13_bias_v:G
4assignvariableop_31_adam_lstm_8_lstm_cell_8_kernel_v:	?Q
>assignvariableop_32_adam_lstm_8_lstm_cell_8_recurrent_kernel_v:	 ?A
2assignvariableop_33_adam_lstm_8_lstm_cell_8_bias_v:	?
identity_35??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*?
value?B?#B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp,assignvariableop_layer_normalization_6_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp-assignvariableop_1_layer_normalization_6_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_12_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_12_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_13_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_13_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_8_lstm_cell_8_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp7assignvariableop_12_lstm_8_lstm_cell_8_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp+assignvariableop_13_lstm_8_lstm_cell_8_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_adam_layer_normalization_6_gamma_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_adam_layer_normalization_6_beta_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_12_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_12_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_13_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_13_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_8_lstm_cell_8_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_lstm_8_lstm_cell_8_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_lstm_8_lstm_cell_8_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_layer_normalization_6_gamma_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp5assignvariableop_26_adam_layer_normalization_6_beta_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_12_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_12_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_13_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_13_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_8_lstm_cell_8_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_8_lstm_cell_8_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_8_lstm_cell_8_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_339
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_34f
Identity_35IdentityIdentity_34:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_35?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_35Identity_35:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332(
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
??
?	
while_body_222254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_8_split_readvariableop_resource_0:	?B
3while_lstm_cell_8_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_8_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_8_split_readvariableop_resource:	?@
1while_lstm_cell_8_split_1_readvariableop_resource:	?<
)while_lstm_cell_8_readvariableop_resource:	 ??? while/lstm_cell_8/ReadVariableOp?"while/lstm_cell_8/ReadVariableOp_1?"while/lstm_cell_8/ReadVariableOp_2?"while/lstm_cell_8/ReadVariableOp_3?&while/lstm_cell_8/split/ReadVariableOp?(while/lstm_cell_8/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_8/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_8/ones_like/Shape?
!while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_8/ones_like/Const?
while/lstm_cell_8/ones_likeFill*while/lstm_cell_8/ones_like/Shape:output:0*while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/ones_like?
while/lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2!
while/lstm_cell_8/dropout/Const?
while/lstm_cell_8/dropout/MulMul$while/lstm_cell_8/ones_like:output:0(while/lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/dropout/Mul?
while/lstm_cell_8/dropout/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_8/dropout/Shape?
6while/lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_8/dropout/random_uniform/RandomUniform?
(while/lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_8/dropout/GreaterEqual/y?
&while/lstm_cell_8/dropout/GreaterEqualGreaterEqual?while/lstm_cell_8/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_8/dropout/GreaterEqual?
while/lstm_cell_8/dropout/CastCast*while/lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_8/dropout/Cast?
while/lstm_cell_8/dropout/Mul_1Mul!while/lstm_cell_8/dropout/Mul:z:0"while/lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout/Mul_1?
!while/lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_1/Const?
while/lstm_cell_8/dropout_1/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_1/Mul?
!while/lstm_cell_8/dropout_1/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_1/Shape?
8while/lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_8/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_1/GreaterEqual/y?
(while/lstm_cell_8/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_1/GreaterEqual?
 while/lstm_cell_8/dropout_1/CastCast,while/lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_1/Cast?
!while/lstm_cell_8/dropout_1/Mul_1Mul#while/lstm_cell_8/dropout_1/Mul:z:0$while/lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_1/Mul_1?
!while/lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_2/Const?
while/lstm_cell_8/dropout_2/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_2/Mul?
!while/lstm_cell_8/dropout_2/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_2/Shape?
8while/lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_8/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_2/GreaterEqual/y?
(while/lstm_cell_8/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_2/GreaterEqual?
 while/lstm_cell_8/dropout_2/CastCast,while/lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_2/Cast?
!while/lstm_cell_8/dropout_2/Mul_1Mul#while/lstm_cell_8/dropout_2/Mul:z:0$while/lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_2/Mul_1?
!while/lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_3/Const?
while/lstm_cell_8/dropout_3/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_3/Mul?
!while/lstm_cell_8/dropout_3/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_3/Shape?
8while/lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ጽ2:
8while/lstm_cell_8/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_3/GreaterEqual/y?
(while/lstm_cell_8/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_3/GreaterEqual?
 while/lstm_cell_8/dropout_3/CastCast,while/lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_3/Cast?
!while/lstm_cell_8/dropout_3/Mul_1Mul#while/lstm_cell_8/dropout_3/Mul:z:0$while/lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_3/Mul_1?
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_8/split/split_dim?
&while/lstm_cell_8/split/ReadVariableOpReadVariableOp1while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_8/split/ReadVariableOp?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0.while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_8/split?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul?
while/lstm_cell_8/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_1?
while/lstm_cell_8/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_2?
while/lstm_cell_8/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_3?
#while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_8/split_1/split_dim?
(while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_8/split_1/ReadVariableOp?
while/lstm_cell_8/split_1Split,while/lstm_cell_8/split_1/split_dim:output:00while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_8/split_1?
while/lstm_cell_8/BiasAddBiasAdd"while/lstm_cell_8/MatMul:product:0"while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd?
while/lstm_cell_8/BiasAdd_1BiasAdd$while/lstm_cell_8/MatMul_1:product:0"while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_1?
while/lstm_cell_8/BiasAdd_2BiasAdd$while/lstm_cell_8/MatMul_2:product:0"while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_2?
while/lstm_cell_8/BiasAdd_3BiasAdd$while/lstm_cell_8/MatMul_3:product:0"while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_3?
while/lstm_cell_8/mulMulwhile_placeholder_2#while/lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul?
while/lstm_cell_8/mul_1Mulwhile_placeholder_2%while/lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_1?
while/lstm_cell_8/mul_2Mulwhile_placeholder_2%while/lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_2?
while/lstm_cell_8/mul_3Mulwhile_placeholder_2%while/lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_3?
 while/lstm_cell_8/ReadVariableOpReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_8/ReadVariableOp?
%while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_8/strided_slice/stack?
'while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice/stack_1?
'while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_8/strided_slice/stack_2?
while/lstm_cell_8/strided_sliceStridedSlice(while/lstm_cell_8/ReadVariableOp:value:0.while/lstm_cell_8/strided_slice/stack:output:00while/lstm_cell_8/strided_slice/stack_1:output:00while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_8/strided_slice?
while/lstm_cell_8/MatMul_4MatMulwhile/lstm_cell_8/mul:z:0(while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_4?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/BiasAdd:output:0$while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add?
while/lstm_cell_8/SigmoidSigmoidwhile/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid?
"while/lstm_cell_8/ReadVariableOp_1ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_1?
'while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice_1/stack?
)while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_8/strided_slice_1/stack_1?
)while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_1/stack_2?
!while/lstm_cell_8/strided_slice_1StridedSlice*while/lstm_cell_8/ReadVariableOp_1:value:00while/lstm_cell_8/strided_slice_1/stack:output:02while/lstm_cell_8/strided_slice_1/stack_1:output:02while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_1?
while/lstm_cell_8/MatMul_5MatMulwhile/lstm_cell_8/mul_1:z:0*while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_5?
while/lstm_cell_8/add_1AddV2$while/lstm_cell_8/BiasAdd_1:output:0$while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_1?
while/lstm_cell_8/Sigmoid_1Sigmoidwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_1?
while/lstm_cell_8/mul_4Mulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_4?
"while/lstm_cell_8/ReadVariableOp_2ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_2?
'while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_8/strided_slice_2/stack?
)while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_8/strided_slice_2/stack_1?
)while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_2/stack_2?
!while/lstm_cell_8/strided_slice_2StridedSlice*while/lstm_cell_8/ReadVariableOp_2:value:00while/lstm_cell_8/strided_slice_2/stack:output:02while/lstm_cell_8/strided_slice_2/stack_1:output:02while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_2?
while/lstm_cell_8/MatMul_6MatMulwhile/lstm_cell_8/mul_2:z:0*while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_6?
while/lstm_cell_8/add_2AddV2$while/lstm_cell_8/BiasAdd_2:output:0$while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_2?
while/lstm_cell_8/ReluReluwhile/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu?
while/lstm_cell_8/mul_5Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_5?
while/lstm_cell_8/add_3AddV2while/lstm_cell_8/mul_4:z:0while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_3?
"while/lstm_cell_8/ReadVariableOp_3ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_3?
'while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_8/strided_slice_3/stack?
)while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_8/strided_slice_3/stack_1?
)while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_3/stack_2?
!while/lstm_cell_8/strided_slice_3StridedSlice*while/lstm_cell_8/ReadVariableOp_3:value:00while/lstm_cell_8/strided_slice_3/stack:output:02while/lstm_cell_8/strided_slice_3/stack_1:output:02while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_3?
while/lstm_cell_8/MatMul_7MatMulwhile/lstm_cell_8/mul_3:z:0*while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_7?
while/lstm_cell_8/add_4AddV2$while/lstm_cell_8/BiasAdd_3:output:0$while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_4?
while/lstm_cell_8/Sigmoid_2Sigmoidwhile/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_2?
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu_1?
while/lstm_cell_8/mul_6Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_8/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_8/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_8/ReadVariableOp#^while/lstm_cell_8/ReadVariableOp_1#^while/lstm_cell_8/ReadVariableOp_2#^while/lstm_cell_8/ReadVariableOp_3'^while/lstm_cell_8/split/ReadVariableOp)^while/lstm_cell_8/split_1/ReadVariableOp*"
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
)while_lstm_cell_8_readvariableop_resource+while_lstm_cell_8_readvariableop_resource_0"h
1while_lstm_cell_8_split_1_readvariableop_resource3while_lstm_cell_8_split_1_readvariableop_resource_0"d
/while_lstm_cell_8_split_readvariableop_resource1while_lstm_cell_8_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_8/ReadVariableOp while/lstm_cell_8/ReadVariableOp2H
"while/lstm_cell_8/ReadVariableOp_1"while/lstm_cell_8/ReadVariableOp_12H
"while/lstm_cell_8/ReadVariableOp_2"while/lstm_cell_8/ReadVariableOp_22H
"while/lstm_cell_8/ReadVariableOp_3"while/lstm_cell_8/ReadVariableOp_32P
&while/lstm_cell_8/split/ReadVariableOp&while/lstm_cell_8/split/ReadVariableOp2T
(while/lstm_cell_8/split_1/ReadVariableOp(while/lstm_cell_8/split_1/ReadVariableOp: 
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
while_body_218913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_8_218937_0:	?)
while_lstm_cell_8_218939_0:	?-
while_lstm_cell_8_218941_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_8_218937:	?'
while_lstm_cell_8_218939:	?+
while_lstm_cell_8_218941:	 ???)while/lstm_cell_8/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_218937_0while_lstm_cell_8_218939_0while_lstm_cell_8_218941_0*
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_2188992+
)while/lstm_cell_8/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_8/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
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
while_lstm_cell_8_218937while_lstm_cell_8_218937_0"6
while_lstm_cell_8_218939while_lstm_cell_8_218939_0"6
while_lstm_cell_8_218941while_lstm_cell_8_218941_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall: 
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
while_body_219210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_8_219234_0:	?)
while_lstm_cell_8_219236_0:	?-
while_lstm_cell_8_219238_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_8_219234:	?'
while_lstm_cell_8_219236:	?+
while_lstm_cell_8_219238:	 ???)while/lstm_cell_8/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_8_219234_0while_lstm_cell_8_219236_0while_lstm_cell_8_219238_0*
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_2191322+
)while/lstm_cell_8/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_8/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_8/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_8/StatefulPartitionedCall*"
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
while_lstm_cell_8_219234while_lstm_cell_8_219234_0"6
while_lstm_cell_8_219236while_lstm_cell_8_219236_0"6
while_lstm_cell_8_219238while_lstm_cell_8_219238_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_8/StatefulPartitionedCall)while/lstm_cell_8/StatefulPartitionedCall: 
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
,__inference_lstm_cell_8_layer_call_fn_222737

inputs
states_0
states_1
unknown:	?
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_2188992
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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
?
F
*__inference_reshape_6_layer_call_fn_222520

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
GPU 2J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2199192
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
?
?
)__inference_dense_12_layer_call_fn_222483

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
D__inference_dense_12_layer_call_and_return_conditional_losses_2198842
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
??
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_221207

inputsA
3layer_normalization_6_mul_3_readvariableop_resource:?
1layer_normalization_6_add_readvariableop_resource:C
0lstm_8_lstm_cell_8_split_readvariableop_resource:	?A
2lstm_8_lstm_cell_8_split_1_readvariableop_resource:	?=
*lstm_8_lstm_cell_8_readvariableop_resource:	 ?9
'dense_12_matmul_readvariableop_resource:  6
(dense_12_biasadd_readvariableop_resource: 9
'dense_13_matmul_readvariableop_resource: 6
(dense_13_biasadd_readvariableop_resource:
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?(layer_normalization_6/add/ReadVariableOp?*layer_normalization_6/mul_3/ReadVariableOp?!lstm_8/lstm_cell_8/ReadVariableOp?#lstm_8/lstm_cell_8/ReadVariableOp_1?#lstm_8/lstm_cell_8/ReadVariableOp_2?#lstm_8/lstm_cell_8/ReadVariableOp_3?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?'lstm_8/lstm_cell_8/split/ReadVariableOp?)lstm_8/lstm_cell_8/split_1/ReadVariableOp?lstm_8/whilep
layer_normalization_6/ShapeShapeinputs*
T0*
_output_shapes
:2
layer_normalization_6/Shape?
)layer_normalization_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)layer_normalization_6/strided_slice/stack?
+layer_normalization_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice/stack_1?
+layer_normalization_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice/stack_2?
#layer_normalization_6/strided_sliceStridedSlice$layer_normalization_6/Shape:output:02layer_normalization_6/strided_slice/stack:output:04layer_normalization_6/strided_slice/stack_1:output:04layer_normalization_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization_6/strided_slice|
layer_normalization_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_6/mul/x?
layer_normalization_6/mulMul$layer_normalization_6/mul/x:output:0,layer_normalization_6/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_6/mul?
+layer_normalization_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice_1/stack?
-layer_normalization_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_1/stack_1?
-layer_normalization_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_1/stack_2?
%layer_normalization_6/strided_slice_1StridedSlice$layer_normalization_6/Shape:output:04layer_normalization_6/strided_slice_1/stack:output:06layer_normalization_6/strided_slice_1/stack_1:output:06layer_normalization_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_6/strided_slice_1?
layer_normalization_6/mul_1Mullayer_normalization_6/mul:z:0.layer_normalization_6/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_6/mul_1?
+layer_normalization_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice_2/stack?
-layer_normalization_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_2/stack_1?
-layer_normalization_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_2/stack_2?
%layer_normalization_6/strided_slice_2StridedSlice$layer_normalization_6/Shape:output:04layer_normalization_6/strided_slice_2/stack:output:06layer_normalization_6/strided_slice_2/stack_1:output:06layer_normalization_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_6/strided_slice_2?
layer_normalization_6/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_6/mul_2/x?
layer_normalization_6/mul_2Mul&layer_normalization_6/mul_2/x:output:0.layer_normalization_6/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization_6/mul_2?
%layer_normalization_6/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_6/Reshape/shape/0?
%layer_normalization_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_6/Reshape/shape/3?
#layer_normalization_6/Reshape/shapePack.layer_normalization_6/Reshape/shape/0:output:0layer_normalization_6/mul_1:z:0layer_normalization_6/mul_2:z:0.layer_normalization_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#layer_normalization_6/Reshape/shape?
layer_normalization_6/ReshapeReshapeinputs,layer_normalization_6/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_normalization_6/Reshape?
!layer_normalization_6/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!layer_normalization_6/ones/Less/y?
layer_normalization_6/ones/LessLesslayer_normalization_6/mul_1:z:0*layer_normalization_6/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
layer_normalization_6/ones/Less?
!layer_normalization_6/ones/packedPacklayer_normalization_6/mul_1:z:0*
N*
T0*
_output_shapes
:2#
!layer_normalization_6/ones/packed?
 layer_normalization_6/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 layer_normalization_6/ones/Const?
layer_normalization_6/onesFill*layer_normalization_6/ones/packed:output:0)layer_normalization_6/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_6/ones?
"layer_normalization_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"layer_normalization_6/zeros/Less/y?
 layer_normalization_6/zeros/LessLesslayer_normalization_6/mul_1:z:0+layer_normalization_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 layer_normalization_6/zeros/Less?
"layer_normalization_6/zeros/packedPacklayer_normalization_6/mul_1:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_6/zeros/packed?
!layer_normalization_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!layer_normalization_6/zeros/Const?
layer_normalization_6/zerosFill+layer_normalization_6/zeros/packed:output:0*layer_normalization_6/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_6/zeros}
layer_normalization_6/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_6/Const?
layer_normalization_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_6/Const_1?
&layer_normalization_6/FusedBatchNormV3FusedBatchNormV3&layer_normalization_6/Reshape:output:0#layer_normalization_6/ones:output:0$layer_normalization_6/zeros:output:0$layer_normalization_6/Const:output:0&layer_normalization_6/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2(
&layer_normalization_6/FusedBatchNormV3?
layer_normalization_6/Reshape_1Reshape*layer_normalization_6/FusedBatchNormV3:y:0$layer_normalization_6/Shape:output:0*
T0*+
_output_shapes
:?????????2!
layer_normalization_6/Reshape_1?
*layer_normalization_6/mul_3/ReadVariableOpReadVariableOp3layer_normalization_6_mul_3_readvariableop_resource*
_output_shapes
:*
dtype02,
*layer_normalization_6/mul_3/ReadVariableOp?
layer_normalization_6/mul_3Mul(layer_normalization_6/Reshape_1:output:02layer_normalization_6/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
layer_normalization_6/mul_3?
(layer_normalization_6/add/ReadVariableOpReadVariableOp1layer_normalization_6_add_readvariableop_resource*
_output_shapes
:*
dtype02*
(layer_normalization_6/add/ReadVariableOp?
layer_normalization_6/addAddV2layer_normalization_6/mul_3:z:00layer_normalization_6/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
layer_normalization_6/addi
lstm_8/ShapeShapelayer_normalization_6/add:z:0*
T0*
_output_shapes
:2
lstm_8/Shape?
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_8/strided_slice/stack?
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_8/strided_slice/stack_1?
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_8/strided_slice/stack_2?
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_8/strided_slicej
lstm_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros/mul/y?
lstm_8/zeros/mulMullstm_8/strided_slice:output:0lstm_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros/mulm
lstm_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_8/zeros/Less/y?
lstm_8/zeros/LessLesslstm_8/zeros/mul:z:0lstm_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros/Lessp
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros/packed/1?
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_8/zeros/packedm
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_8/zeros/Const?
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/zerosn
lstm_8/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros_1/mul/y?
lstm_8/zeros_1/mulMullstm_8/strided_slice:output:0lstm_8/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros_1/mulq
lstm_8/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_8/zeros_1/Less/y?
lstm_8/zeros_1/LessLesslstm_8/zeros_1/mul:z:0lstm_8/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros_1/Lesst
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros_1/packed/1?
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_8/zeros_1/packedq
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_8/zeros_1/Const?
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/zeros_1?
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_8/transpose/perm?
lstm_8/transpose	Transposelayer_normalization_6/add:z:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_8/transposed
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
:2
lstm_8/Shape_1?
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_8/strided_slice_1/stack?
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_1/stack_1?
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_1/stack_2?
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_8/strided_slice_1?
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_8/TensorArrayV2/element_shape?
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_8/TensorArrayV2?
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_8/TensorArrayUnstack/TensorListFromTensor?
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_8/strided_slice_2/stack?
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_2/stack_1?
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_2/stack_2?
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_8/strided_slice_2?
"lstm_8/lstm_cell_8/ones_like/ShapeShapelstm_8/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_8/lstm_cell_8/ones_like/Shape?
"lstm_8/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_8/lstm_cell_8/ones_like/Const?
lstm_8/lstm_cell_8/ones_likeFill+lstm_8/lstm_cell_8/ones_like/Shape:output:0+lstm_8/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/ones_like?
 lstm_8/lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2"
 lstm_8/lstm_cell_8/dropout/Const?
lstm_8/lstm_cell_8/dropout/MulMul%lstm_8/lstm_cell_8/ones_like:output:0)lstm_8/lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/lstm_cell_8/dropout/Mul?
 lstm_8/lstm_cell_8/dropout/ShapeShape%lstm_8/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_8/lstm_cell_8/dropout/Shape?
7lstm_8/lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform)lstm_8/lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ʯ?29
7lstm_8/lstm_cell_8/dropout/random_uniform/RandomUniform?
)lstm_8/lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)lstm_8/lstm_cell_8/dropout/GreaterEqual/y?
'lstm_8/lstm_cell_8/dropout/GreaterEqualGreaterEqual@lstm_8/lstm_cell_8/dropout/random_uniform/RandomUniform:output:02lstm_8/lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'lstm_8/lstm_cell_8/dropout/GreaterEqual?
lstm_8/lstm_cell_8/dropout/CastCast+lstm_8/lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
lstm_8/lstm_cell_8/dropout/Cast?
 lstm_8/lstm_cell_8/dropout/Mul_1Mul"lstm_8/lstm_cell_8/dropout/Mul:z:0#lstm_8/lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/lstm_cell_8/dropout/Mul_1?
"lstm_8/lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2$
"lstm_8/lstm_cell_8/dropout_1/Const?
 lstm_8/lstm_cell_8/dropout_1/MulMul%lstm_8/lstm_cell_8/ones_like:output:0+lstm_8/lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/lstm_cell_8/dropout_1/Mul?
"lstm_8/lstm_cell_8/dropout_1/ShapeShape%lstm_8/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_8/lstm_cell_8/dropout_1/Shape?
9lstm_8/lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_8/lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2뽡2;
9lstm_8/lstm_cell_8/dropout_1/random_uniform/RandomUniform?
+lstm_8/lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_8/lstm_cell_8/dropout_1/GreaterEqual/y?
)lstm_8/lstm_cell_8/dropout_1/GreaterEqualGreaterEqualBlstm_8/lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:04lstm_8/lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_8/lstm_cell_8/dropout_1/GreaterEqual?
!lstm_8/lstm_cell_8/dropout_1/CastCast-lstm_8/lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_8/lstm_cell_8/dropout_1/Cast?
"lstm_8/lstm_cell_8/dropout_1/Mul_1Mul$lstm_8/lstm_cell_8/dropout_1/Mul:z:0%lstm_8/lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/lstm_cell_8/dropout_1/Mul_1?
"lstm_8/lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2$
"lstm_8/lstm_cell_8/dropout_2/Const?
 lstm_8/lstm_cell_8/dropout_2/MulMul%lstm_8/lstm_cell_8/ones_like:output:0+lstm_8/lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/lstm_cell_8/dropout_2/Mul?
"lstm_8/lstm_cell_8/dropout_2/ShapeShape%lstm_8/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_8/lstm_cell_8/dropout_2/Shape?
9lstm_8/lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_8/lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2;
9lstm_8/lstm_cell_8/dropout_2/random_uniform/RandomUniform?
+lstm_8/lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_8/lstm_cell_8/dropout_2/GreaterEqual/y?
)lstm_8/lstm_cell_8/dropout_2/GreaterEqualGreaterEqualBlstm_8/lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:04lstm_8/lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_8/lstm_cell_8/dropout_2/GreaterEqual?
!lstm_8/lstm_cell_8/dropout_2/CastCast-lstm_8/lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_8/lstm_cell_8/dropout_2/Cast?
"lstm_8/lstm_cell_8/dropout_2/Mul_1Mul$lstm_8/lstm_cell_8/dropout_2/Mul:z:0%lstm_8/lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/lstm_cell_8/dropout_2/Mul_1?
"lstm_8/lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2$
"lstm_8/lstm_cell_8/dropout_3/Const?
 lstm_8/lstm_cell_8/dropout_3/MulMul%lstm_8/lstm_cell_8/ones_like:output:0+lstm_8/lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/lstm_cell_8/dropout_3/Mul?
"lstm_8/lstm_cell_8/dropout_3/ShapeShape%lstm_8/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_8/lstm_cell_8/dropout_3/Shape?
9lstm_8/lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_8/lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2;
9lstm_8/lstm_cell_8/dropout_3/random_uniform/RandomUniform?
+lstm_8/lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_8/lstm_cell_8/dropout_3/GreaterEqual/y?
)lstm_8/lstm_cell_8/dropout_3/GreaterEqualGreaterEqualBlstm_8/lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:04lstm_8/lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_8/lstm_cell_8/dropout_3/GreaterEqual?
!lstm_8/lstm_cell_8/dropout_3/CastCast-lstm_8/lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_8/lstm_cell_8/dropout_3/Cast?
"lstm_8/lstm_cell_8/dropout_3/Mul_1Mul$lstm_8/lstm_cell_8/dropout_3/Mul:z:0%lstm_8/lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/lstm_cell_8/dropout_3/Mul_1?
"lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_8/lstm_cell_8/split/split_dim?
'lstm_8/lstm_cell_8/split/ReadVariableOpReadVariableOp0lstm_8_lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02)
'lstm_8/lstm_cell_8/split/ReadVariableOp?
lstm_8/lstm_cell_8/splitSplit+lstm_8/lstm_cell_8/split/split_dim:output:0/lstm_8/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_8/lstm_cell_8/split?
lstm_8/lstm_cell_8/MatMulMatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul?
lstm_8/lstm_cell_8/MatMul_1MatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_1?
lstm_8/lstm_cell_8/MatMul_2MatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_2?
lstm_8/lstm_cell_8/MatMul_3MatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_3?
$lstm_8/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_8/lstm_cell_8/split_1/split_dim?
)lstm_8/lstm_cell_8/split_1/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_8/lstm_cell_8/split_1/ReadVariableOp?
lstm_8/lstm_cell_8/split_1Split-lstm_8/lstm_cell_8/split_1/split_dim:output:01lstm_8/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_8/lstm_cell_8/split_1?
lstm_8/lstm_cell_8/BiasAddBiasAdd#lstm_8/lstm_cell_8/MatMul:product:0#lstm_8/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd?
lstm_8/lstm_cell_8/BiasAdd_1BiasAdd%lstm_8/lstm_cell_8/MatMul_1:product:0#lstm_8/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd_1?
lstm_8/lstm_cell_8/BiasAdd_2BiasAdd%lstm_8/lstm_cell_8/MatMul_2:product:0#lstm_8/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd_2?
lstm_8/lstm_cell_8/BiasAdd_3BiasAdd%lstm_8/lstm_cell_8/MatMul_3:product:0#lstm_8/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd_3?
lstm_8/lstm_cell_8/mulMullstm_8/zeros:output:0$lstm_8/lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul?
lstm_8/lstm_cell_8/mul_1Mullstm_8/zeros:output:0&lstm_8/lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_1?
lstm_8/lstm_cell_8/mul_2Mullstm_8/zeros:output:0&lstm_8/lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_2?
lstm_8/lstm_cell_8/mul_3Mullstm_8/zeros:output:0&lstm_8/lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_3?
!lstm_8/lstm_cell_8/ReadVariableOpReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_8/lstm_cell_8/ReadVariableOp?
&lstm_8/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_8/lstm_cell_8/strided_slice/stack?
(lstm_8/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_8/lstm_cell_8/strided_slice/stack_1?
(lstm_8/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_8/lstm_cell_8/strided_slice/stack_2?
 lstm_8/lstm_cell_8/strided_sliceStridedSlice)lstm_8/lstm_cell_8/ReadVariableOp:value:0/lstm_8/lstm_cell_8/strided_slice/stack:output:01lstm_8/lstm_cell_8/strided_slice/stack_1:output:01lstm_8/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm_8/lstm_cell_8/strided_slice?
lstm_8/lstm_cell_8/MatMul_4MatMullstm_8/lstm_cell_8/mul:z:0)lstm_8/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_4?
lstm_8/lstm_cell_8/addAddV2#lstm_8/lstm_cell_8/BiasAdd:output:0%lstm_8/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add?
lstm_8/lstm_cell_8/SigmoidSigmoidlstm_8/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Sigmoid?
#lstm_8/lstm_cell_8/ReadVariableOp_1ReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_8/lstm_cell_8/ReadVariableOp_1?
(lstm_8/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_8/lstm_cell_8/strided_slice_1/stack?
*lstm_8/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_8/lstm_cell_8/strided_slice_1/stack_1?
*lstm_8/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_8/lstm_cell_8/strided_slice_1/stack_2?
"lstm_8/lstm_cell_8/strided_slice_1StridedSlice+lstm_8/lstm_cell_8/ReadVariableOp_1:value:01lstm_8/lstm_cell_8/strided_slice_1/stack:output:03lstm_8/lstm_cell_8/strided_slice_1/stack_1:output:03lstm_8/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_8/lstm_cell_8/strided_slice_1?
lstm_8/lstm_cell_8/MatMul_5MatMullstm_8/lstm_cell_8/mul_1:z:0+lstm_8/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_5?
lstm_8/lstm_cell_8/add_1AddV2%lstm_8/lstm_cell_8/BiasAdd_1:output:0%lstm_8/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_1?
lstm_8/lstm_cell_8/Sigmoid_1Sigmoidlstm_8/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Sigmoid_1?
lstm_8/lstm_cell_8/mul_4Mul lstm_8/lstm_cell_8/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_4?
#lstm_8/lstm_cell_8/ReadVariableOp_2ReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_8/lstm_cell_8/ReadVariableOp_2?
(lstm_8/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_8/lstm_cell_8/strided_slice_2/stack?
*lstm_8/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_8/lstm_cell_8/strided_slice_2/stack_1?
*lstm_8/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_8/lstm_cell_8/strided_slice_2/stack_2?
"lstm_8/lstm_cell_8/strided_slice_2StridedSlice+lstm_8/lstm_cell_8/ReadVariableOp_2:value:01lstm_8/lstm_cell_8/strided_slice_2/stack:output:03lstm_8/lstm_cell_8/strided_slice_2/stack_1:output:03lstm_8/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_8/lstm_cell_8/strided_slice_2?
lstm_8/lstm_cell_8/MatMul_6MatMullstm_8/lstm_cell_8/mul_2:z:0+lstm_8/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_6?
lstm_8/lstm_cell_8/add_2AddV2%lstm_8/lstm_cell_8/BiasAdd_2:output:0%lstm_8/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_2?
lstm_8/lstm_cell_8/ReluRelulstm_8/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Relu?
lstm_8/lstm_cell_8/mul_5Mullstm_8/lstm_cell_8/Sigmoid:y:0%lstm_8/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_5?
lstm_8/lstm_cell_8/add_3AddV2lstm_8/lstm_cell_8/mul_4:z:0lstm_8/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_3?
#lstm_8/lstm_cell_8/ReadVariableOp_3ReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_8/lstm_cell_8/ReadVariableOp_3?
(lstm_8/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(lstm_8/lstm_cell_8/strided_slice_3/stack?
*lstm_8/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_8/lstm_cell_8/strided_slice_3/stack_1?
*lstm_8/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_8/lstm_cell_8/strided_slice_3/stack_2?
"lstm_8/lstm_cell_8/strided_slice_3StridedSlice+lstm_8/lstm_cell_8/ReadVariableOp_3:value:01lstm_8/lstm_cell_8/strided_slice_3/stack:output:03lstm_8/lstm_cell_8/strided_slice_3/stack_1:output:03lstm_8/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_8/lstm_cell_8/strided_slice_3?
lstm_8/lstm_cell_8/MatMul_7MatMullstm_8/lstm_cell_8/mul_3:z:0+lstm_8/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_7?
lstm_8/lstm_cell_8/add_4AddV2%lstm_8/lstm_cell_8/BiasAdd_3:output:0%lstm_8/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_4?
lstm_8/lstm_cell_8/Sigmoid_2Sigmoidlstm_8/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Sigmoid_2?
lstm_8/lstm_cell_8/Relu_1Relulstm_8/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Relu_1?
lstm_8/lstm_cell_8/mul_6Mul lstm_8/lstm_cell_8/Sigmoid_2:y:0'lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_6?
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2&
$lstm_8/TensorArrayV2_1/element_shape?
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_8/TensorArrayV2_1\
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/time?
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_8/while/maximum_iterationsx
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/while/loop_counter?
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_8_lstm_cell_8_split_readvariableop_resource2lstm_8_lstm_cell_8_split_1_readvariableop_resource*lstm_8_lstm_cell_8_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_8_while_body_221020*$
condR
lstm_8_while_cond_221019*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_8/while?
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02+
)lstm_8/TensorArrayV2Stack/TensorListStack?
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_8/strided_slice_3/stack?
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_8/strided_slice_3/stack_1?
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_3/stack_2?
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_8/strided_slice_3?
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_8/transpose_1/perm?
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_8/transpose_1t
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_8/runtime?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMullstm_8/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_12/Relu?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/BiasAddk
reshape_6/ShapeShapedense_13/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_6/Shape?
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack?
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1?
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2?
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2?
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape?
reshape_6/ReshapeReshapedense_13/BiasAdd:output:0 reshape_6/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_6/Reshape?
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0lstm_8_lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muly
IdentityIdentityreshape_6/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp)^layer_normalization_6/add/ReadVariableOp+^layer_normalization_6/mul_3/ReadVariableOp"^lstm_8/lstm_cell_8/ReadVariableOp$^lstm_8/lstm_cell_8/ReadVariableOp_1$^lstm_8/lstm_cell_8/ReadVariableOp_2$^lstm_8/lstm_cell_8/ReadVariableOp_3<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp(^lstm_8/lstm_cell_8/split/ReadVariableOp*^lstm_8/lstm_cell_8/split_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2T
(layer_normalization_6/add/ReadVariableOp(layer_normalization_6/add/ReadVariableOp2X
*layer_normalization_6/mul_3/ReadVariableOp*layer_normalization_6/mul_3/ReadVariableOp2F
!lstm_8/lstm_cell_8/ReadVariableOp!lstm_8/lstm_cell_8/ReadVariableOp2J
#lstm_8/lstm_cell_8/ReadVariableOp_1#lstm_8/lstm_cell_8/ReadVariableOp_12J
#lstm_8/lstm_cell_8/ReadVariableOp_2#lstm_8/lstm_cell_8/ReadVariableOp_22J
#lstm_8/lstm_cell_8/ReadVariableOp_3#lstm_8/lstm_cell_8/ReadVariableOp_32z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2R
'lstm_8/lstm_cell_8/split/ReadVariableOp'lstm_8/lstm_cell_8/split/ReadVariableOp2V
)lstm_8/lstm_cell_8/split_1/ReadVariableOp)lstm_8/lstm_cell_8/split_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_4_layer_call_fn_219949
input_5
unknown:
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	 ?
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_2199282
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
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
'__inference_lstm_8_layer_call_fn_222463

inputs
unknown:	?
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2202952
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
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?~
?	
while_body_221429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_8_split_readvariableop_resource_0:	?B
3while_lstm_cell_8_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_8_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_8_split_readvariableop_resource:	?@
1while_lstm_cell_8_split_1_readvariableop_resource:	?<
)while_lstm_cell_8_readvariableop_resource:	 ??? while/lstm_cell_8/ReadVariableOp?"while/lstm_cell_8/ReadVariableOp_1?"while/lstm_cell_8/ReadVariableOp_2?"while/lstm_cell_8/ReadVariableOp_3?&while/lstm_cell_8/split/ReadVariableOp?(while/lstm_cell_8/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_8/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_8/ones_like/Shape?
!while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_8/ones_like/Const?
while/lstm_cell_8/ones_likeFill*while/lstm_cell_8/ones_like/Shape:output:0*while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/ones_like?
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_8/split/split_dim?
&while/lstm_cell_8/split/ReadVariableOpReadVariableOp1while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_8/split/ReadVariableOp?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0.while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_8/split?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul?
while/lstm_cell_8/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_1?
while/lstm_cell_8/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_2?
while/lstm_cell_8/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_3?
#while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_8/split_1/split_dim?
(while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_8/split_1/ReadVariableOp?
while/lstm_cell_8/split_1Split,while/lstm_cell_8/split_1/split_dim:output:00while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_8/split_1?
while/lstm_cell_8/BiasAddBiasAdd"while/lstm_cell_8/MatMul:product:0"while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd?
while/lstm_cell_8/BiasAdd_1BiasAdd$while/lstm_cell_8/MatMul_1:product:0"while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_1?
while/lstm_cell_8/BiasAdd_2BiasAdd$while/lstm_cell_8/MatMul_2:product:0"while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_2?
while/lstm_cell_8/BiasAdd_3BiasAdd$while/lstm_cell_8/MatMul_3:product:0"while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_3?
while/lstm_cell_8/mulMulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul?
while/lstm_cell_8/mul_1Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_1?
while/lstm_cell_8/mul_2Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_2?
while/lstm_cell_8/mul_3Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_3?
 while/lstm_cell_8/ReadVariableOpReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_8/ReadVariableOp?
%while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_8/strided_slice/stack?
'while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice/stack_1?
'while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_8/strided_slice/stack_2?
while/lstm_cell_8/strided_sliceStridedSlice(while/lstm_cell_8/ReadVariableOp:value:0.while/lstm_cell_8/strided_slice/stack:output:00while/lstm_cell_8/strided_slice/stack_1:output:00while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_8/strided_slice?
while/lstm_cell_8/MatMul_4MatMulwhile/lstm_cell_8/mul:z:0(while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_4?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/BiasAdd:output:0$while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add?
while/lstm_cell_8/SigmoidSigmoidwhile/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid?
"while/lstm_cell_8/ReadVariableOp_1ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_1?
'while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice_1/stack?
)while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_8/strided_slice_1/stack_1?
)while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_1/stack_2?
!while/lstm_cell_8/strided_slice_1StridedSlice*while/lstm_cell_8/ReadVariableOp_1:value:00while/lstm_cell_8/strided_slice_1/stack:output:02while/lstm_cell_8/strided_slice_1/stack_1:output:02while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_1?
while/lstm_cell_8/MatMul_5MatMulwhile/lstm_cell_8/mul_1:z:0*while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_5?
while/lstm_cell_8/add_1AddV2$while/lstm_cell_8/BiasAdd_1:output:0$while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_1?
while/lstm_cell_8/Sigmoid_1Sigmoidwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_1?
while/lstm_cell_8/mul_4Mulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_4?
"while/lstm_cell_8/ReadVariableOp_2ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_2?
'while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_8/strided_slice_2/stack?
)while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_8/strided_slice_2/stack_1?
)while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_2/stack_2?
!while/lstm_cell_8/strided_slice_2StridedSlice*while/lstm_cell_8/ReadVariableOp_2:value:00while/lstm_cell_8/strided_slice_2/stack:output:02while/lstm_cell_8/strided_slice_2/stack_1:output:02while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_2?
while/lstm_cell_8/MatMul_6MatMulwhile/lstm_cell_8/mul_2:z:0*while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_6?
while/lstm_cell_8/add_2AddV2$while/lstm_cell_8/BiasAdd_2:output:0$while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_2?
while/lstm_cell_8/ReluReluwhile/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu?
while/lstm_cell_8/mul_5Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_5?
while/lstm_cell_8/add_3AddV2while/lstm_cell_8/mul_4:z:0while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_3?
"while/lstm_cell_8/ReadVariableOp_3ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_3?
'while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_8/strided_slice_3/stack?
)while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_8/strided_slice_3/stack_1?
)while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_3/stack_2?
!while/lstm_cell_8/strided_slice_3StridedSlice*while/lstm_cell_8/ReadVariableOp_3:value:00while/lstm_cell_8/strided_slice_3/stack:output:02while/lstm_cell_8/strided_slice_3/stack_1:output:02while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_3?
while/lstm_cell_8/MatMul_7MatMulwhile/lstm_cell_8/mul_3:z:0*while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_7?
while/lstm_cell_8/add_4AddV2$while/lstm_cell_8/BiasAdd_3:output:0$while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_4?
while/lstm_cell_8/Sigmoid_2Sigmoidwhile/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_2?
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu_1?
while/lstm_cell_8/mul_6Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_8/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_8/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_8/ReadVariableOp#^while/lstm_cell_8/ReadVariableOp_1#^while/lstm_cell_8/ReadVariableOp_2#^while/lstm_cell_8/ReadVariableOp_3'^while/lstm_cell_8/split/ReadVariableOp)^while/lstm_cell_8/split_1/ReadVariableOp*"
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
)while_lstm_cell_8_readvariableop_resource+while_lstm_cell_8_readvariableop_resource_0"h
1while_lstm_cell_8_split_1_readvariableop_resource3while_lstm_cell_8_split_1_readvariableop_resource_0"d
/while_lstm_cell_8_split_readvariableop_resource1while_lstm_cell_8_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_8/ReadVariableOp while/lstm_cell_8/ReadVariableOp2H
"while/lstm_cell_8/ReadVariableOp_1"while/lstm_cell_8/ReadVariableOp_12H
"while/lstm_cell_8/ReadVariableOp_2"while/lstm_cell_8/ReadVariableOp_22H
"while/lstm_cell_8/ReadVariableOp_3"while/lstm_cell_8/ReadVariableOp_32P
&while/lstm_cell_8/split/ReadVariableOp&while/lstm_cell_8/split/ReadVariableOp2T
(while/lstm_cell_8/split_1/ReadVariableOp(while/lstm_cell_8/split_1/ReadVariableOp: 
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
?
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_219617

inputs+
mul_3_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp?mul_3/ReadVariableOpD
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2T
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_2/xb
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y`
	ones/LessLess	mul_1:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yc

zeros/LessLess	mul_1:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3}
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes
:*
dtype02
mul_3/ReadVariableOp}
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
mul_3?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpp
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityz
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_12_layer_call_and_return_conditional_losses_219884

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
?(
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_220482
input_5*
layer_normalization_6_220452:*
layer_normalization_6_220454: 
lstm_8_220457:	?
lstm_8_220459:	? 
lstm_8_220461:	 ?!
dense_12_220464:  
dense_12_220466: !
dense_13_220469: 
dense_13_220471:
identity?? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall?-layer_normalization_6/StatefulPartitionedCall?lstm_8/StatefulPartitionedCall?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCallinput_5layer_normalization_6_220452layer_normalization_6_220454*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2196172/
-layer_normalization_6/StatefulPartitionedCall?
lstm_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0lstm_8_220457lstm_8_220459lstm_8_220461*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2202952 
lstm_8/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_12_220464dense_12_220466*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2198842"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_220469dense_13_220471*
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
D__inference_dense_13_layer_call_and_return_conditional_losses_2199002"
 dense_13/StatefulPartitionedCall?
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2199192
reshape_6/PartitionedCall?
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_8_220457*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/mul?
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_5
?(
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_219928

inputs*
layer_normalization_6_219618:*
layer_normalization_6_219620: 
lstm_8_219866:	?
lstm_8_219868:	? 
lstm_8_219870:	 ?!
dense_12_219885:  
dense_12_219887: !
dense_13_219901: 
dense_13_219903:
identity?? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall?-layer_normalization_6/StatefulPartitionedCall?lstm_8/StatefulPartitionedCall?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCallinputslayer_normalization_6_219618layer_normalization_6_219620*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2196172/
-layer_normalization_6/StatefulPartitionedCall?
lstm_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0lstm_8_219866lstm_8_219868lstm_8_219870*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2198652 
lstm_8/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_12_219885dense_12_219887*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2198842"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_219901dense_13_219903*
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
D__inference_dense_13_layer_call_and_return_conditional_losses_2199002"
 dense_13/StatefulPartitionedCall?
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2199192
reshape_6/PartitionedCall?
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_8_219866*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/mul?
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_220831

inputsA
3layer_normalization_6_mul_3_readvariableop_resource:?
1layer_normalization_6_add_readvariableop_resource:C
0lstm_8_lstm_cell_8_split_readvariableop_resource:	?A
2lstm_8_lstm_cell_8_split_1_readvariableop_resource:	?=
*lstm_8_lstm_cell_8_readvariableop_resource:	 ?9
'dense_12_matmul_readvariableop_resource:  6
(dense_12_biasadd_readvariableop_resource: 9
'dense_13_matmul_readvariableop_resource: 6
(dense_13_biasadd_readvariableop_resource:
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?(layer_normalization_6/add/ReadVariableOp?*layer_normalization_6/mul_3/ReadVariableOp?!lstm_8/lstm_cell_8/ReadVariableOp?#lstm_8/lstm_cell_8/ReadVariableOp_1?#lstm_8/lstm_cell_8/ReadVariableOp_2?#lstm_8/lstm_cell_8/ReadVariableOp_3?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?'lstm_8/lstm_cell_8/split/ReadVariableOp?)lstm_8/lstm_cell_8/split_1/ReadVariableOp?lstm_8/whilep
layer_normalization_6/ShapeShapeinputs*
T0*
_output_shapes
:2
layer_normalization_6/Shape?
)layer_normalization_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)layer_normalization_6/strided_slice/stack?
+layer_normalization_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice/stack_1?
+layer_normalization_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice/stack_2?
#layer_normalization_6/strided_sliceStridedSlice$layer_normalization_6/Shape:output:02layer_normalization_6/strided_slice/stack:output:04layer_normalization_6/strided_slice/stack_1:output:04layer_normalization_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization_6/strided_slice|
layer_normalization_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_6/mul/x?
layer_normalization_6/mulMul$layer_normalization_6/mul/x:output:0,layer_normalization_6/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_6/mul?
+layer_normalization_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice_1/stack?
-layer_normalization_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_1/stack_1?
-layer_normalization_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_1/stack_2?
%layer_normalization_6/strided_slice_1StridedSlice$layer_normalization_6/Shape:output:04layer_normalization_6/strided_slice_1/stack:output:06layer_normalization_6/strided_slice_1/stack_1:output:06layer_normalization_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_6/strided_slice_1?
layer_normalization_6/mul_1Mullayer_normalization_6/mul:z:0.layer_normalization_6/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_6/mul_1?
+layer_normalization_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_6/strided_slice_2/stack?
-layer_normalization_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_2/stack_1?
-layer_normalization_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_6/strided_slice_2/stack_2?
%layer_normalization_6/strided_slice_2StridedSlice$layer_normalization_6/Shape:output:04layer_normalization_6/strided_slice_2/stack:output:06layer_normalization_6/strided_slice_2/stack_1:output:06layer_normalization_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_6/strided_slice_2?
layer_normalization_6/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_6/mul_2/x?
layer_normalization_6/mul_2Mul&layer_normalization_6/mul_2/x:output:0.layer_normalization_6/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization_6/mul_2?
%layer_normalization_6/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_6/Reshape/shape/0?
%layer_normalization_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_6/Reshape/shape/3?
#layer_normalization_6/Reshape/shapePack.layer_normalization_6/Reshape/shape/0:output:0layer_normalization_6/mul_1:z:0layer_normalization_6/mul_2:z:0.layer_normalization_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#layer_normalization_6/Reshape/shape?
layer_normalization_6/ReshapeReshapeinputs,layer_normalization_6/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_normalization_6/Reshape?
!layer_normalization_6/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!layer_normalization_6/ones/Less/y?
layer_normalization_6/ones/LessLesslayer_normalization_6/mul_1:z:0*layer_normalization_6/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
layer_normalization_6/ones/Less?
!layer_normalization_6/ones/packedPacklayer_normalization_6/mul_1:z:0*
N*
T0*
_output_shapes
:2#
!layer_normalization_6/ones/packed?
 layer_normalization_6/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 layer_normalization_6/ones/Const?
layer_normalization_6/onesFill*layer_normalization_6/ones/packed:output:0)layer_normalization_6/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_6/ones?
"layer_normalization_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"layer_normalization_6/zeros/Less/y?
 layer_normalization_6/zeros/LessLesslayer_normalization_6/mul_1:z:0+layer_normalization_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 layer_normalization_6/zeros/Less?
"layer_normalization_6/zeros/packedPacklayer_normalization_6/mul_1:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_6/zeros/packed?
!layer_normalization_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!layer_normalization_6/zeros/Const?
layer_normalization_6/zerosFill+layer_normalization_6/zeros/packed:output:0*layer_normalization_6/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_6/zeros}
layer_normalization_6/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_6/Const?
layer_normalization_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_6/Const_1?
&layer_normalization_6/FusedBatchNormV3FusedBatchNormV3&layer_normalization_6/Reshape:output:0#layer_normalization_6/ones:output:0$layer_normalization_6/zeros:output:0$layer_normalization_6/Const:output:0&layer_normalization_6/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2(
&layer_normalization_6/FusedBatchNormV3?
layer_normalization_6/Reshape_1Reshape*layer_normalization_6/FusedBatchNormV3:y:0$layer_normalization_6/Shape:output:0*
T0*+
_output_shapes
:?????????2!
layer_normalization_6/Reshape_1?
*layer_normalization_6/mul_3/ReadVariableOpReadVariableOp3layer_normalization_6_mul_3_readvariableop_resource*
_output_shapes
:*
dtype02,
*layer_normalization_6/mul_3/ReadVariableOp?
layer_normalization_6/mul_3Mul(layer_normalization_6/Reshape_1:output:02layer_normalization_6/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
layer_normalization_6/mul_3?
(layer_normalization_6/add/ReadVariableOpReadVariableOp1layer_normalization_6_add_readvariableop_resource*
_output_shapes
:*
dtype02*
(layer_normalization_6/add/ReadVariableOp?
layer_normalization_6/addAddV2layer_normalization_6/mul_3:z:00layer_normalization_6/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
layer_normalization_6/addi
lstm_8/ShapeShapelayer_normalization_6/add:z:0*
T0*
_output_shapes
:2
lstm_8/Shape?
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_8/strided_slice/stack?
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_8/strided_slice/stack_1?
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_8/strided_slice/stack_2?
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_8/strided_slicej
lstm_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros/mul/y?
lstm_8/zeros/mulMullstm_8/strided_slice:output:0lstm_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros/mulm
lstm_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_8/zeros/Less/y?
lstm_8/zeros/LessLesslstm_8/zeros/mul:z:0lstm_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros/Lessp
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros/packed/1?
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_8/zeros/packedm
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_8/zeros/Const?
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/zerosn
lstm_8/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros_1/mul/y?
lstm_8/zeros_1/mulMullstm_8/strided_slice:output:0lstm_8/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros_1/mulq
lstm_8/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_8/zeros_1/Less/y?
lstm_8/zeros_1/LessLesslstm_8/zeros_1/mul:z:0lstm_8/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_8/zeros_1/Lesst
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/zeros_1/packed/1?
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_8/zeros_1/packedq
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_8/zeros_1/Const?
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/zeros_1?
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_8/transpose/perm?
lstm_8/transpose	Transposelayer_normalization_6/add:z:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_8/transposed
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
:2
lstm_8/Shape_1?
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_8/strided_slice_1/stack?
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_1/stack_1?
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_1/stack_2?
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_8/strided_slice_1?
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_8/TensorArrayV2/element_shape?
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_8/TensorArrayV2?
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_8/TensorArrayUnstack/TensorListFromTensor?
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_8/strided_slice_2/stack?
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_2/stack_1?
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_2/stack_2?
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_8/strided_slice_2?
"lstm_8/lstm_cell_8/ones_like/ShapeShapelstm_8/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_8/lstm_cell_8/ones_like/Shape?
"lstm_8/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_8/lstm_cell_8/ones_like/Const?
lstm_8/lstm_cell_8/ones_likeFill+lstm_8/lstm_cell_8/ones_like/Shape:output:0+lstm_8/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/ones_like?
"lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_8/lstm_cell_8/split/split_dim?
'lstm_8/lstm_cell_8/split/ReadVariableOpReadVariableOp0lstm_8_lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02)
'lstm_8/lstm_cell_8/split/ReadVariableOp?
lstm_8/lstm_cell_8/splitSplit+lstm_8/lstm_cell_8/split/split_dim:output:0/lstm_8/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_8/lstm_cell_8/split?
lstm_8/lstm_cell_8/MatMulMatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul?
lstm_8/lstm_cell_8/MatMul_1MatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_1?
lstm_8/lstm_cell_8/MatMul_2MatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_2?
lstm_8/lstm_cell_8/MatMul_3MatMullstm_8/strided_slice_2:output:0!lstm_8/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_3?
$lstm_8/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_8/lstm_cell_8/split_1/split_dim?
)lstm_8/lstm_cell_8/split_1/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_8/lstm_cell_8/split_1/ReadVariableOp?
lstm_8/lstm_cell_8/split_1Split-lstm_8/lstm_cell_8/split_1/split_dim:output:01lstm_8/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_8/lstm_cell_8/split_1?
lstm_8/lstm_cell_8/BiasAddBiasAdd#lstm_8/lstm_cell_8/MatMul:product:0#lstm_8/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd?
lstm_8/lstm_cell_8/BiasAdd_1BiasAdd%lstm_8/lstm_cell_8/MatMul_1:product:0#lstm_8/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd_1?
lstm_8/lstm_cell_8/BiasAdd_2BiasAdd%lstm_8/lstm_cell_8/MatMul_2:product:0#lstm_8/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd_2?
lstm_8/lstm_cell_8/BiasAdd_3BiasAdd%lstm_8/lstm_cell_8/MatMul_3:product:0#lstm_8/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/BiasAdd_3?
lstm_8/lstm_cell_8/mulMullstm_8/zeros:output:0%lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul?
lstm_8/lstm_cell_8/mul_1Mullstm_8/zeros:output:0%lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_1?
lstm_8/lstm_cell_8/mul_2Mullstm_8/zeros:output:0%lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_2?
lstm_8/lstm_cell_8/mul_3Mullstm_8/zeros:output:0%lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_3?
!lstm_8/lstm_cell_8/ReadVariableOpReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_8/lstm_cell_8/ReadVariableOp?
&lstm_8/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_8/lstm_cell_8/strided_slice/stack?
(lstm_8/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_8/lstm_cell_8/strided_slice/stack_1?
(lstm_8/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_8/lstm_cell_8/strided_slice/stack_2?
 lstm_8/lstm_cell_8/strided_sliceStridedSlice)lstm_8/lstm_cell_8/ReadVariableOp:value:0/lstm_8/lstm_cell_8/strided_slice/stack:output:01lstm_8/lstm_cell_8/strided_slice/stack_1:output:01lstm_8/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm_8/lstm_cell_8/strided_slice?
lstm_8/lstm_cell_8/MatMul_4MatMullstm_8/lstm_cell_8/mul:z:0)lstm_8/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_4?
lstm_8/lstm_cell_8/addAddV2#lstm_8/lstm_cell_8/BiasAdd:output:0%lstm_8/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add?
lstm_8/lstm_cell_8/SigmoidSigmoidlstm_8/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Sigmoid?
#lstm_8/lstm_cell_8/ReadVariableOp_1ReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_8/lstm_cell_8/ReadVariableOp_1?
(lstm_8/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_8/lstm_cell_8/strided_slice_1/stack?
*lstm_8/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_8/lstm_cell_8/strided_slice_1/stack_1?
*lstm_8/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_8/lstm_cell_8/strided_slice_1/stack_2?
"lstm_8/lstm_cell_8/strided_slice_1StridedSlice+lstm_8/lstm_cell_8/ReadVariableOp_1:value:01lstm_8/lstm_cell_8/strided_slice_1/stack:output:03lstm_8/lstm_cell_8/strided_slice_1/stack_1:output:03lstm_8/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_8/lstm_cell_8/strided_slice_1?
lstm_8/lstm_cell_8/MatMul_5MatMullstm_8/lstm_cell_8/mul_1:z:0+lstm_8/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_5?
lstm_8/lstm_cell_8/add_1AddV2%lstm_8/lstm_cell_8/BiasAdd_1:output:0%lstm_8/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_1?
lstm_8/lstm_cell_8/Sigmoid_1Sigmoidlstm_8/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Sigmoid_1?
lstm_8/lstm_cell_8/mul_4Mul lstm_8/lstm_cell_8/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_4?
#lstm_8/lstm_cell_8/ReadVariableOp_2ReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_8/lstm_cell_8/ReadVariableOp_2?
(lstm_8/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_8/lstm_cell_8/strided_slice_2/stack?
*lstm_8/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_8/lstm_cell_8/strided_slice_2/stack_1?
*lstm_8/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_8/lstm_cell_8/strided_slice_2/stack_2?
"lstm_8/lstm_cell_8/strided_slice_2StridedSlice+lstm_8/lstm_cell_8/ReadVariableOp_2:value:01lstm_8/lstm_cell_8/strided_slice_2/stack:output:03lstm_8/lstm_cell_8/strided_slice_2/stack_1:output:03lstm_8/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_8/lstm_cell_8/strided_slice_2?
lstm_8/lstm_cell_8/MatMul_6MatMullstm_8/lstm_cell_8/mul_2:z:0+lstm_8/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_6?
lstm_8/lstm_cell_8/add_2AddV2%lstm_8/lstm_cell_8/BiasAdd_2:output:0%lstm_8/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_2?
lstm_8/lstm_cell_8/ReluRelulstm_8/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Relu?
lstm_8/lstm_cell_8/mul_5Mullstm_8/lstm_cell_8/Sigmoid:y:0%lstm_8/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_5?
lstm_8/lstm_cell_8/add_3AddV2lstm_8/lstm_cell_8/mul_4:z:0lstm_8/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_3?
#lstm_8/lstm_cell_8/ReadVariableOp_3ReadVariableOp*lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_8/lstm_cell_8/ReadVariableOp_3?
(lstm_8/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(lstm_8/lstm_cell_8/strided_slice_3/stack?
*lstm_8/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_8/lstm_cell_8/strided_slice_3/stack_1?
*lstm_8/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_8/lstm_cell_8/strided_slice_3/stack_2?
"lstm_8/lstm_cell_8/strided_slice_3StridedSlice+lstm_8/lstm_cell_8/ReadVariableOp_3:value:01lstm_8/lstm_cell_8/strided_slice_3/stack:output:03lstm_8/lstm_cell_8/strided_slice_3/stack_1:output:03lstm_8/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_8/lstm_cell_8/strided_slice_3?
lstm_8/lstm_cell_8/MatMul_7MatMullstm_8/lstm_cell_8/mul_3:z:0+lstm_8/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/MatMul_7?
lstm_8/lstm_cell_8/add_4AddV2%lstm_8/lstm_cell_8/BiasAdd_3:output:0%lstm_8/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/add_4?
lstm_8/lstm_cell_8/Sigmoid_2Sigmoidlstm_8/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Sigmoid_2?
lstm_8/lstm_cell_8/Relu_1Relulstm_8/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/Relu_1?
lstm_8/lstm_cell_8/mul_6Mul lstm_8/lstm_cell_8/Sigmoid_2:y:0'lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_8/lstm_cell_8/mul_6?
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2&
$lstm_8/TensorArrayV2_1/element_shape?
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_8/TensorArrayV2_1\
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/time?
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_8/while/maximum_iterationsx
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_8/while/loop_counter?
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_8_lstm_cell_8_split_readvariableop_resource2lstm_8_lstm_cell_8_split_1_readvariableop_resource*lstm_8_lstm_cell_8_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_8_while_body_220676*$
condR
lstm_8_while_cond_220675*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_8/while?
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02+
)lstm_8/TensorArrayV2Stack/TensorListStack?
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_8/strided_slice_3/stack?
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_8/strided_slice_3/stack_1?
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_8/strided_slice_3/stack_2?
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_8/strided_slice_3?
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_8/transpose_1/perm?
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_8/transpose_1t
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_8/runtime?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMullstm_8/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_12/BiasAdds
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_12/Relu?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/MatMul?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOp?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_13/BiasAddk
reshape_6/ShapeShapedense_13/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_6/Shape?
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack?
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1?
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2?
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2?
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape?
reshape_6/ReshapeReshapedense_13/BiasAdd:output:0 reshape_6/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_6/Reshape?
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0lstm_8_lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muly
IdentityIdentityreshape_6/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp)^layer_normalization_6/add/ReadVariableOp+^layer_normalization_6/mul_3/ReadVariableOp"^lstm_8/lstm_cell_8/ReadVariableOp$^lstm_8/lstm_cell_8/ReadVariableOp_1$^lstm_8/lstm_cell_8/ReadVariableOp_2$^lstm_8/lstm_cell_8/ReadVariableOp_3<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp(^lstm_8/lstm_cell_8/split/ReadVariableOp*^lstm_8/lstm_cell_8/split_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2T
(layer_normalization_6/add/ReadVariableOp(layer_normalization_6/add/ReadVariableOp2X
*layer_normalization_6/mul_3/ReadVariableOp*layer_normalization_6/mul_3/ReadVariableOp2F
!lstm_8/lstm_cell_8/ReadVariableOp!lstm_8/lstm_cell_8/ReadVariableOp2J
#lstm_8/lstm_cell_8/ReadVariableOp_1#lstm_8/lstm_cell_8/ReadVariableOp_12J
#lstm_8/lstm_cell_8/ReadVariableOp_2#lstm_8/lstm_cell_8/ReadVariableOp_22J
#lstm_8/lstm_cell_8/ReadVariableOp_3#lstm_8/lstm_cell_8/ReadVariableOp_32z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2R
'lstm_8/lstm_cell_8/split/ReadVariableOp'lstm_8/lstm_cell_8/split/ReadVariableOp2V
)lstm_8/lstm_cell_8/split_1/ReadVariableOp)lstm_8/lstm_cell_8/split_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_221304

inputs+
mul_3_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp?mul_3/ReadVariableOpD
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
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2T
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_2/xb
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y`
	ones/LessLess	mul_1:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yc

zeros/LessLess	mul_1:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3}
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*+
_output_shapes
:?????????2
	Reshape_1?
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes
:*
dtype02
mul_3/ReadVariableOp}
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
mul_3?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpp
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityz
NoOpNoOp^add/ReadVariableOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?R
?
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_218899

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
D__inference_dense_13_layer_call_and_return_conditional_losses_219900

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
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
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
?
while_cond_221703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_221703___redundant_placeholder04
0while_while_cond_221703___redundant_placeholder14
0while_while_cond_221703___redundant_placeholder24
0while_while_cond_221703___redundant_placeholder3
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
a
E__inference_reshape_6_layer_call_and_return_conditional_losses_222515

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
?v
?
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_222720

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
 *UU??2
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
 *UU??2
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
seed2ȉ?2(
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
 *UU??2
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
seed2ꟍ2(
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
 *UU??2
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
?
%sequential_4_lstm_8_while_cond_218625D
@sequential_4_lstm_8_while_sequential_4_lstm_8_while_loop_counterJ
Fsequential_4_lstm_8_while_sequential_4_lstm_8_while_maximum_iterations)
%sequential_4_lstm_8_while_placeholder+
'sequential_4_lstm_8_while_placeholder_1+
'sequential_4_lstm_8_while_placeholder_2+
'sequential_4_lstm_8_while_placeholder_3F
Bsequential_4_lstm_8_while_less_sequential_4_lstm_8_strided_slice_1\
Xsequential_4_lstm_8_while_sequential_4_lstm_8_while_cond_218625___redundant_placeholder0\
Xsequential_4_lstm_8_while_sequential_4_lstm_8_while_cond_218625___redundant_placeholder1\
Xsequential_4_lstm_8_while_sequential_4_lstm_8_while_cond_218625___redundant_placeholder2\
Xsequential_4_lstm_8_while_sequential_4_lstm_8_while_cond_218625___redundant_placeholder3&
"sequential_4_lstm_8_while_identity
?
sequential_4/lstm_8/while/LessLess%sequential_4_lstm_8_while_placeholderBsequential_4_lstm_8_while_less_sequential_4_lstm_8_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_4/lstm_8/while/Less?
"sequential_4/lstm_8/while/IdentityIdentity"sequential_4/lstm_8/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_4/lstm_8/while/Identity"Q
"sequential_4_lstm_8_while_identity+sequential_4/lstm_8/while/Identity:output:0*(
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
while_body_220130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_8_split_readvariableop_resource_0:	?B
3while_lstm_cell_8_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_8_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_8_split_readvariableop_resource:	?@
1while_lstm_cell_8_split_1_readvariableop_resource:	?<
)while_lstm_cell_8_readvariableop_resource:	 ??? while/lstm_cell_8/ReadVariableOp?"while/lstm_cell_8/ReadVariableOp_1?"while/lstm_cell_8/ReadVariableOp_2?"while/lstm_cell_8/ReadVariableOp_3?&while/lstm_cell_8/split/ReadVariableOp?(while/lstm_cell_8/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_8/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_8/ones_like/Shape?
!while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_8/ones_like/Const?
while/lstm_cell_8/ones_likeFill*while/lstm_cell_8/ones_like/Shape:output:0*while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/ones_like?
while/lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2!
while/lstm_cell_8/dropout/Const?
while/lstm_cell_8/dropout/MulMul$while/lstm_cell_8/ones_like:output:0(while/lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/dropout/Mul?
while/lstm_cell_8/dropout/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_8/dropout/Shape?
6while/lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_8/dropout/random_uniform/RandomUniform?
(while/lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_8/dropout/GreaterEqual/y?
&while/lstm_cell_8/dropout/GreaterEqualGreaterEqual?while/lstm_cell_8/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_8/dropout/GreaterEqual?
while/lstm_cell_8/dropout/CastCast*while/lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_8/dropout/Cast?
while/lstm_cell_8/dropout/Mul_1Mul!while/lstm_cell_8/dropout/Mul:z:0"while/lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout/Mul_1?
!while/lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_1/Const?
while/lstm_cell_8/dropout_1/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_1/Mul?
!while/lstm_cell_8/dropout_1/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_1/Shape?
8while/lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_8/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_1/GreaterEqual/y?
(while/lstm_cell_8/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_1/GreaterEqual?
 while/lstm_cell_8/dropout_1/CastCast,while/lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_1/Cast?
!while/lstm_cell_8/dropout_1/Mul_1Mul#while/lstm_cell_8/dropout_1/Mul:z:0$while/lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_1/Mul_1?
!while/lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_2/Const?
while/lstm_cell_8/dropout_2/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_2/Mul?
!while/lstm_cell_8/dropout_2/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_2/Shape?
8while/lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_8/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_2/GreaterEqual/y?
(while/lstm_cell_8/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_2/GreaterEqual?
 while/lstm_cell_8/dropout_2/CastCast,while/lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_2/Cast?
!while/lstm_cell_8/dropout_2/Mul_1Mul#while/lstm_cell_8/dropout_2/Mul:z:0$while/lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_2/Mul_1?
!while/lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_3/Const?
while/lstm_cell_8/dropout_3/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_3/Mul?
!while/lstm_cell_8/dropout_3/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_3/Shape?
8while/lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ɏf2:
8while/lstm_cell_8/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_3/GreaterEqual/y?
(while/lstm_cell_8/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_3/GreaterEqual?
 while/lstm_cell_8/dropout_3/CastCast,while/lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_3/Cast?
!while/lstm_cell_8/dropout_3/Mul_1Mul#while/lstm_cell_8/dropout_3/Mul:z:0$while/lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_3/Mul_1?
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_8/split/split_dim?
&while/lstm_cell_8/split/ReadVariableOpReadVariableOp1while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_8/split/ReadVariableOp?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0.while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_8/split?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul?
while/lstm_cell_8/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_1?
while/lstm_cell_8/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_2?
while/lstm_cell_8/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_3?
#while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_8/split_1/split_dim?
(while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_8/split_1/ReadVariableOp?
while/lstm_cell_8/split_1Split,while/lstm_cell_8/split_1/split_dim:output:00while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_8/split_1?
while/lstm_cell_8/BiasAddBiasAdd"while/lstm_cell_8/MatMul:product:0"while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd?
while/lstm_cell_8/BiasAdd_1BiasAdd$while/lstm_cell_8/MatMul_1:product:0"while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_1?
while/lstm_cell_8/BiasAdd_2BiasAdd$while/lstm_cell_8/MatMul_2:product:0"while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_2?
while/lstm_cell_8/BiasAdd_3BiasAdd$while/lstm_cell_8/MatMul_3:product:0"while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_3?
while/lstm_cell_8/mulMulwhile_placeholder_2#while/lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul?
while/lstm_cell_8/mul_1Mulwhile_placeholder_2%while/lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_1?
while/lstm_cell_8/mul_2Mulwhile_placeholder_2%while/lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_2?
while/lstm_cell_8/mul_3Mulwhile_placeholder_2%while/lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_3?
 while/lstm_cell_8/ReadVariableOpReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_8/ReadVariableOp?
%while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_8/strided_slice/stack?
'while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice/stack_1?
'while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_8/strided_slice/stack_2?
while/lstm_cell_8/strided_sliceStridedSlice(while/lstm_cell_8/ReadVariableOp:value:0.while/lstm_cell_8/strided_slice/stack:output:00while/lstm_cell_8/strided_slice/stack_1:output:00while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_8/strided_slice?
while/lstm_cell_8/MatMul_4MatMulwhile/lstm_cell_8/mul:z:0(while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_4?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/BiasAdd:output:0$while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add?
while/lstm_cell_8/SigmoidSigmoidwhile/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid?
"while/lstm_cell_8/ReadVariableOp_1ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_1?
'while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice_1/stack?
)while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_8/strided_slice_1/stack_1?
)while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_1/stack_2?
!while/lstm_cell_8/strided_slice_1StridedSlice*while/lstm_cell_8/ReadVariableOp_1:value:00while/lstm_cell_8/strided_slice_1/stack:output:02while/lstm_cell_8/strided_slice_1/stack_1:output:02while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_1?
while/lstm_cell_8/MatMul_5MatMulwhile/lstm_cell_8/mul_1:z:0*while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_5?
while/lstm_cell_8/add_1AddV2$while/lstm_cell_8/BiasAdd_1:output:0$while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_1?
while/lstm_cell_8/Sigmoid_1Sigmoidwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_1?
while/lstm_cell_8/mul_4Mulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_4?
"while/lstm_cell_8/ReadVariableOp_2ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_2?
'while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_8/strided_slice_2/stack?
)while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_8/strided_slice_2/stack_1?
)while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_2/stack_2?
!while/lstm_cell_8/strided_slice_2StridedSlice*while/lstm_cell_8/ReadVariableOp_2:value:00while/lstm_cell_8/strided_slice_2/stack:output:02while/lstm_cell_8/strided_slice_2/stack_1:output:02while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_2?
while/lstm_cell_8/MatMul_6MatMulwhile/lstm_cell_8/mul_2:z:0*while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_6?
while/lstm_cell_8/add_2AddV2$while/lstm_cell_8/BiasAdd_2:output:0$while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_2?
while/lstm_cell_8/ReluReluwhile/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu?
while/lstm_cell_8/mul_5Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_5?
while/lstm_cell_8/add_3AddV2while/lstm_cell_8/mul_4:z:0while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_3?
"while/lstm_cell_8/ReadVariableOp_3ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_3?
'while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_8/strided_slice_3/stack?
)while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_8/strided_slice_3/stack_1?
)while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_3/stack_2?
!while/lstm_cell_8/strided_slice_3StridedSlice*while/lstm_cell_8/ReadVariableOp_3:value:00while/lstm_cell_8/strided_slice_3/stack:output:02while/lstm_cell_8/strided_slice_3/stack_1:output:02while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_3?
while/lstm_cell_8/MatMul_7MatMulwhile/lstm_cell_8/mul_3:z:0*while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_7?
while/lstm_cell_8/add_4AddV2$while/lstm_cell_8/BiasAdd_3:output:0$while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_4?
while/lstm_cell_8/Sigmoid_2Sigmoidwhile/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_2?
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu_1?
while/lstm_cell_8/mul_6Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_8/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_8/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_8/ReadVariableOp#^while/lstm_cell_8/ReadVariableOp_1#^while/lstm_cell_8/ReadVariableOp_2#^while/lstm_cell_8/ReadVariableOp_3'^while/lstm_cell_8/split/ReadVariableOp)^while/lstm_cell_8/split_1/ReadVariableOp*"
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
)while_lstm_cell_8_readvariableop_resource+while_lstm_cell_8_readvariableop_resource_0"h
1while_lstm_cell_8_split_1_readvariableop_resource3while_lstm_cell_8_split_1_readvariableop_resource_0"d
/while_lstm_cell_8_split_readvariableop_resource1while_lstm_cell_8_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_8/ReadVariableOp while/lstm_cell_8/ReadVariableOp2H
"while/lstm_cell_8/ReadVariableOp_1"while/lstm_cell_8/ReadVariableOp_12H
"while/lstm_cell_8/ReadVariableOp_2"while/lstm_cell_8/ReadVariableOp_22H
"while/lstm_cell_8/ReadVariableOp_3"while/lstm_cell_8/ReadVariableOp_32P
&while/lstm_cell_8/split/ReadVariableOp&while/lstm_cell_8/split/ReadVariableOp2T
(while/lstm_cell_8/split_1/ReadVariableOp(while/lstm_cell_8/split_1/ReadVariableOp: 
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
?L
?
__inference__traced_save_222890
file_prefix:
6savev2_layer_normalization_6_gamma_read_readvariableop9
5savev2_layer_normalization_6_beta_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_8_lstm_cell_8_kernel_read_readvariableopB
>savev2_lstm_8_lstm_cell_8_recurrent_kernel_read_readvariableop6
2savev2_lstm_8_lstm_cell_8_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopA
=savev2_adam_layer_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_6_beta_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop?
;savev2_adam_lstm_8_lstm_cell_8_kernel_m_read_readvariableopI
Esavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_8_lstm_cell_8_bias_m_read_readvariableopA
=savev2_adam_layer_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_6_beta_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop?
;savev2_adam_lstm_8_lstm_cell_8_kernel_v_read_readvariableopI
Esavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_8_lstm_cell_8_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*?
value?B?#B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_layer_normalization_6_gamma_read_readvariableop5savev2_layer_normalization_6_beta_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_8_lstm_cell_8_kernel_read_readvariableop>savev2_lstm_8_lstm_cell_8_recurrent_kernel_read_readvariableop2savev2_lstm_8_lstm_cell_8_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop=savev2_adam_layer_normalization_6_gamma_m_read_readvariableop<savev2_adam_layer_normalization_6_beta_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop;savev2_adam_lstm_8_lstm_cell_8_kernel_m_read_readvariableopEsavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_8_lstm_cell_8_bias_m_read_readvariableop=savev2_adam_layer_normalization_6_gamma_v_read_readvariableop<savev2_adam_layer_normalization_6_beta_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop;savev2_adam_lstm_8_lstm_cell_8_kernel_v_read_readvariableopEsavev2_adam_lstm_8_lstm_cell_8_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_8_lstm_cell_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :::  : : :: : : : : :	?:	 ?:?: : :::  : : ::	?:	 ?:?:::  : : ::	?:	 ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::% !

_output_shapes
:	?:%!!

_output_shapes
:	 ?:!"

_output_shapes	
:?:#

_output_shapes
: 
??
?
B__inference_lstm_8_layer_call_and_return_conditional_losses_220295

inputs<
)lstm_cell_8_split_readvariableop_resource:	?:
+lstm_cell_8_split_1_readvariableop_resource:	?6
#lstm_cell_8_readvariableop_resource:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_8/ReadVariableOp?lstm_cell_8/ReadVariableOp_1?lstm_cell_8/ReadVariableOp_2?lstm_cell_8/ReadVariableOp_3? lstm_cell_8/split/ReadVariableOp?"lstm_cell_8/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_8/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_8/ones_like/Shape
lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_8/ones_like/Const?
lstm_cell_8/ones_likeFill$lstm_cell_8/ones_like/Shape:output:0$lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/ones_like{
lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout/Const?
lstm_cell_8/dropout/MulMullstm_cell_8/ones_like:output:0"lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Mul?
lstm_cell_8/dropout/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout/Shape?
0lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ݍ?22
0lstm_cell_8/dropout/random_uniform/RandomUniform?
"lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_8/dropout/GreaterEqual/y?
 lstm_cell_8/dropout/GreaterEqualGreaterEqual9lstm_cell_8/dropout/random_uniform/RandomUniform:output:0+lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_8/dropout/GreaterEqual?
lstm_cell_8/dropout/CastCast$lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Cast?
lstm_cell_8/dropout/Mul_1Mullstm_cell_8/dropout/Mul:z:0lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Mul_1
lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_1/Const?
lstm_cell_8/dropout_1/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Mul?
lstm_cell_8/dropout_1/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_1/Shape?
2lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_8/dropout_1/random_uniform/RandomUniform?
$lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_1/GreaterEqual/y?
"lstm_cell_8/dropout_1/GreaterEqualGreaterEqual;lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_1/GreaterEqual?
lstm_cell_8/dropout_1/CastCast&lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Cast?
lstm_cell_8/dropout_1/Mul_1Mullstm_cell_8/dropout_1/Mul:z:0lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Mul_1
lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_2/Const?
lstm_cell_8/dropout_2/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Mul?
lstm_cell_8/dropout_2/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_2/Shape?
2lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_8/dropout_2/random_uniform/RandomUniform?
$lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_2/GreaterEqual/y?
"lstm_cell_8/dropout_2/GreaterEqualGreaterEqual;lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_2/GreaterEqual?
lstm_cell_8/dropout_2/CastCast&lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Cast?
lstm_cell_8/dropout_2/Mul_1Mullstm_cell_8/dropout_2/Mul:z:0lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Mul_1
lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_3/Const?
lstm_cell_8/dropout_3/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Mul?
lstm_cell_8/dropout_3/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_3/Shape?
2lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_8/dropout_3/random_uniform/RandomUniform?
$lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_3/GreaterEqual/y?
"lstm_cell_8/dropout_3/GreaterEqualGreaterEqual;lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_3/GreaterEqual?
lstm_cell_8/dropout_3/CastCast&lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Cast?
lstm_cell_8/dropout_3/Mul_1Mullstm_cell_8/dropout_3/Mul:z:0lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Mul_1|
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_8/split/split_dim?
 lstm_cell_8/split/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_8/split/ReadVariableOp?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0(lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_8/split?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul?
lstm_cell_8/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_1?
lstm_cell_8/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_2?
lstm_cell_8/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_3?
lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_8/split_1/split_dim?
"lstm_cell_8/split_1/ReadVariableOpReadVariableOp+lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_8/split_1/ReadVariableOp?
lstm_cell_8/split_1Split&lstm_cell_8/split_1/split_dim:output:0*lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_8/split_1?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/MatMul:product:0lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd?
lstm_cell_8/BiasAdd_1BiasAddlstm_cell_8/MatMul_1:product:0lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_1?
lstm_cell_8/BiasAdd_2BiasAddlstm_cell_8/MatMul_2:product:0lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_2?
lstm_cell_8/BiasAdd_3BiasAddlstm_cell_8/MatMul_3:product:0lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_3?
lstm_cell_8/mulMulzeros:output:0lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul?
lstm_cell_8/mul_1Mulzeros:output:0lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_1?
lstm_cell_8/mul_2Mulzeros:output:0lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_2?
lstm_cell_8/mul_3Mulzeros:output:0lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_3?
lstm_cell_8/ReadVariableOpReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp?
lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_8/strided_slice/stack?
!lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice/stack_1?
!lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_8/strided_slice/stack_2?
lstm_cell_8/strided_sliceStridedSlice"lstm_cell_8/ReadVariableOp:value:0(lstm_cell_8/strided_slice/stack:output:0*lstm_cell_8/strided_slice/stack_1:output:0*lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice?
lstm_cell_8/MatMul_4MatMullstm_cell_8/mul:z:0"lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_4?
lstm_cell_8/addAddV2lstm_cell_8/BiasAdd:output:0lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add|
lstm_cell_8/SigmoidSigmoidlstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid?
lstm_cell_8/ReadVariableOp_1ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_1?
!lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice_1/stack?
#lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_8/strided_slice_1/stack_1?
#lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_1/stack_2?
lstm_cell_8/strided_slice_1StridedSlice$lstm_cell_8/ReadVariableOp_1:value:0*lstm_cell_8/strided_slice_1/stack:output:0,lstm_cell_8/strided_slice_1/stack_1:output:0,lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_1?
lstm_cell_8/MatMul_5MatMullstm_cell_8/mul_1:z:0$lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_5?
lstm_cell_8/add_1AddV2lstm_cell_8/BiasAdd_1:output:0lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_1?
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_1?
lstm_cell_8/mul_4Mullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_4?
lstm_cell_8/ReadVariableOp_2ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_2?
!lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_8/strided_slice_2/stack?
#lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_8/strided_slice_2/stack_1?
#lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_2/stack_2?
lstm_cell_8/strided_slice_2StridedSlice$lstm_cell_8/ReadVariableOp_2:value:0*lstm_cell_8/strided_slice_2/stack:output:0,lstm_cell_8/strided_slice_2/stack_1:output:0,lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_2?
lstm_cell_8/MatMul_6MatMullstm_cell_8/mul_2:z:0$lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_6?
lstm_cell_8/add_2AddV2lstm_cell_8/BiasAdd_2:output:0lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_2u
lstm_cell_8/ReluRelulstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu?
lstm_cell_8/mul_5Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_5?
lstm_cell_8/add_3AddV2lstm_cell_8/mul_4:z:0lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_3?
lstm_cell_8/ReadVariableOp_3ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_3?
!lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_8/strided_slice_3/stack?
#lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_8/strided_slice_3/stack_1?
#lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_3/stack_2?
lstm_cell_8/strided_slice_3StridedSlice$lstm_cell_8/ReadVariableOp_3:value:0*lstm_cell_8/strided_slice_3/stack:output:0,lstm_cell_8/strided_slice_3/stack_1:output:0,lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_3?
lstm_cell_8/MatMul_7MatMullstm_cell_8/mul_3:z:0$lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_7?
lstm_cell_8/add_4AddV2lstm_cell_8/BiasAdd_3:output:0lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_4?
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_2y
lstm_cell_8/Relu_1Relulstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu_1?
lstm_cell_8/mul_6Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_8_split_readvariableop_resource+lstm_cell_8_split_1_readvariableop_resource#lstm_cell_8_readvariableop_resource*
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
while_body_220130*
condR
while_cond_220129*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_8/ReadVariableOp^lstm_cell_8/ReadVariableOp_1^lstm_cell_8/ReadVariableOp_2^lstm_cell_8/ReadVariableOp_3!^lstm_cell_8/split/ReadVariableOp#^lstm_cell_8/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_8/ReadVariableOplstm_cell_8/ReadVariableOp2<
lstm_cell_8/ReadVariableOp_1lstm_cell_8/ReadVariableOp_12<
lstm_cell_8/ReadVariableOp_2lstm_cell_8/ReadVariableOp_22<
lstm_cell_8/ReadVariableOp_3lstm_cell_8/ReadVariableOp_32D
 lstm_cell_8/split/ReadVariableOp lstm_cell_8/split/ReadVariableOp2H
"lstm_cell_8/split_1/ReadVariableOp"lstm_cell_8/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?Q
?
B__inference_lstm_8_layer_call_and_return_conditional_losses_218988

inputs%
lstm_cell_8_218900:	?!
lstm_cell_8_218902:	?%
lstm_cell_8_218904:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?#lstm_cell_8/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_218900lstm_cell_8_218902lstm_cell_8_218904*
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_2188992%
#lstm_cell_8/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_218900lstm_cell_8_218902lstm_cell_8_218904*
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
while_body_218913*
condR
while_cond_218912*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_8_218900*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_13_layer_call_fn_222502

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
D__inference_dense_13_layer_call_and_return_conditional_losses_2199002
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
??
?
B__inference_lstm_8_layer_call_and_return_conditional_losses_221869
inputs_0<
)lstm_cell_8_split_readvariableop_resource:	?:
+lstm_cell_8_split_1_readvariableop_resource:	?6
#lstm_cell_8_readvariableop_resource:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_8/ReadVariableOp?lstm_cell_8/ReadVariableOp_1?lstm_cell_8/ReadVariableOp_2?lstm_cell_8/ReadVariableOp_3? lstm_cell_8/split/ReadVariableOp?"lstm_cell_8/split_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_8/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_8/ones_like/Shape
lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_8/ones_like/Const?
lstm_cell_8/ones_likeFill$lstm_cell_8/ones_like/Shape:output:0$lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/ones_like{
lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout/Const?
lstm_cell_8/dropout/MulMullstm_cell_8/ones_like:output:0"lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Mul?
lstm_cell_8/dropout/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout/Shape?
0lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell_8/dropout/random_uniform/RandomUniform?
"lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_8/dropout/GreaterEqual/y?
 lstm_cell_8/dropout/GreaterEqualGreaterEqual9lstm_cell_8/dropout/random_uniform/RandomUniform:output:0+lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_8/dropout/GreaterEqual?
lstm_cell_8/dropout/CastCast$lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Cast?
lstm_cell_8/dropout/Mul_1Mullstm_cell_8/dropout/Mul:z:0lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Mul_1
lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_1/Const?
lstm_cell_8/dropout_1/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Mul?
lstm_cell_8/dropout_1/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_1/Shape?
2lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_8/dropout_1/random_uniform/RandomUniform?
$lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_1/GreaterEqual/y?
"lstm_cell_8/dropout_1/GreaterEqualGreaterEqual;lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_1/GreaterEqual?
lstm_cell_8/dropout_1/CastCast&lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Cast?
lstm_cell_8/dropout_1/Mul_1Mullstm_cell_8/dropout_1/Mul:z:0lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Mul_1
lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_2/Const?
lstm_cell_8/dropout_2/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Mul?
lstm_cell_8/dropout_2/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_2/Shape?
2lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?۪24
2lstm_cell_8/dropout_2/random_uniform/RandomUniform?
$lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_2/GreaterEqual/y?
"lstm_cell_8/dropout_2/GreaterEqualGreaterEqual;lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_2/GreaterEqual?
lstm_cell_8/dropout_2/CastCast&lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Cast?
lstm_cell_8/dropout_2/Mul_1Mullstm_cell_8/dropout_2/Mul:z:0lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Mul_1
lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_3/Const?
lstm_cell_8/dropout_3/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Mul?
lstm_cell_8/dropout_3/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_3/Shape?
2lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2Ó?24
2lstm_cell_8/dropout_3/random_uniform/RandomUniform?
$lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_3/GreaterEqual/y?
"lstm_cell_8/dropout_3/GreaterEqualGreaterEqual;lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_3/GreaterEqual?
lstm_cell_8/dropout_3/CastCast&lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Cast?
lstm_cell_8/dropout_3/Mul_1Mullstm_cell_8/dropout_3/Mul:z:0lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Mul_1|
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_8/split/split_dim?
 lstm_cell_8/split/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_8/split/ReadVariableOp?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0(lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_8/split?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul?
lstm_cell_8/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_1?
lstm_cell_8/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_2?
lstm_cell_8/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_3?
lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_8/split_1/split_dim?
"lstm_cell_8/split_1/ReadVariableOpReadVariableOp+lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_8/split_1/ReadVariableOp?
lstm_cell_8/split_1Split&lstm_cell_8/split_1/split_dim:output:0*lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_8/split_1?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/MatMul:product:0lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd?
lstm_cell_8/BiasAdd_1BiasAddlstm_cell_8/MatMul_1:product:0lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_1?
lstm_cell_8/BiasAdd_2BiasAddlstm_cell_8/MatMul_2:product:0lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_2?
lstm_cell_8/BiasAdd_3BiasAddlstm_cell_8/MatMul_3:product:0lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_3?
lstm_cell_8/mulMulzeros:output:0lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul?
lstm_cell_8/mul_1Mulzeros:output:0lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_1?
lstm_cell_8/mul_2Mulzeros:output:0lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_2?
lstm_cell_8/mul_3Mulzeros:output:0lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_3?
lstm_cell_8/ReadVariableOpReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp?
lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_8/strided_slice/stack?
!lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice/stack_1?
!lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_8/strided_slice/stack_2?
lstm_cell_8/strided_sliceStridedSlice"lstm_cell_8/ReadVariableOp:value:0(lstm_cell_8/strided_slice/stack:output:0*lstm_cell_8/strided_slice/stack_1:output:0*lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice?
lstm_cell_8/MatMul_4MatMullstm_cell_8/mul:z:0"lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_4?
lstm_cell_8/addAddV2lstm_cell_8/BiasAdd:output:0lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add|
lstm_cell_8/SigmoidSigmoidlstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid?
lstm_cell_8/ReadVariableOp_1ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_1?
!lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice_1/stack?
#lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_8/strided_slice_1/stack_1?
#lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_1/stack_2?
lstm_cell_8/strided_slice_1StridedSlice$lstm_cell_8/ReadVariableOp_1:value:0*lstm_cell_8/strided_slice_1/stack:output:0,lstm_cell_8/strided_slice_1/stack_1:output:0,lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_1?
lstm_cell_8/MatMul_5MatMullstm_cell_8/mul_1:z:0$lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_5?
lstm_cell_8/add_1AddV2lstm_cell_8/BiasAdd_1:output:0lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_1?
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_1?
lstm_cell_8/mul_4Mullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_4?
lstm_cell_8/ReadVariableOp_2ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_2?
!lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_8/strided_slice_2/stack?
#lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_8/strided_slice_2/stack_1?
#lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_2/stack_2?
lstm_cell_8/strided_slice_2StridedSlice$lstm_cell_8/ReadVariableOp_2:value:0*lstm_cell_8/strided_slice_2/stack:output:0,lstm_cell_8/strided_slice_2/stack_1:output:0,lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_2?
lstm_cell_8/MatMul_6MatMullstm_cell_8/mul_2:z:0$lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_6?
lstm_cell_8/add_2AddV2lstm_cell_8/BiasAdd_2:output:0lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_2u
lstm_cell_8/ReluRelulstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu?
lstm_cell_8/mul_5Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_5?
lstm_cell_8/add_3AddV2lstm_cell_8/mul_4:z:0lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_3?
lstm_cell_8/ReadVariableOp_3ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_3?
!lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_8/strided_slice_3/stack?
#lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_8/strided_slice_3/stack_1?
#lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_3/stack_2?
lstm_cell_8/strided_slice_3StridedSlice$lstm_cell_8/ReadVariableOp_3:value:0*lstm_cell_8/strided_slice_3/stack:output:0,lstm_cell_8/strided_slice_3/stack_1:output:0,lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_3?
lstm_cell_8/MatMul_7MatMullstm_cell_8/mul_3:z:0$lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_7?
lstm_cell_8/add_4AddV2lstm_cell_8/BiasAdd_3:output:0lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_4?
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_2y
lstm_cell_8/Relu_1Relulstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu_1?
lstm_cell_8/mul_6Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_8_split_readvariableop_resource+lstm_cell_8_split_1_readvariableop_resource#lstm_cell_8_readvariableop_resource*
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
while_body_221704*
condR
while_cond_221703*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_8/ReadVariableOp^lstm_cell_8/ReadVariableOp_1^lstm_cell_8/ReadVariableOp_2^lstm_cell_8/ReadVariableOp_3!^lstm_cell_8/split/ReadVariableOp#^lstm_cell_8/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_8/ReadVariableOplstm_cell_8/ReadVariableOp2<
lstm_cell_8/ReadVariableOp_1lstm_cell_8/ReadVariableOp_12<
lstm_cell_8/ReadVariableOp_2lstm_cell_8/ReadVariableOp_22<
lstm_cell_8/ReadVariableOp_3lstm_cell_8/ReadVariableOp_32D
 lstm_cell_8/split/ReadVariableOp lstm_cell_8/split/ReadVariableOp2H
"lstm_cell_8/split_1/ReadVariableOp"lstm_cell_8/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_8_while_cond_221019*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1B
>lstm_8_while_lstm_8_while_cond_221019___redundant_placeholder0B
>lstm_8_while_lstm_8_while_cond_221019___redundant_placeholder1B
>lstm_8_while_lstm_8_while_cond_221019___redundant_placeholder2B
>lstm_8_while_lstm_8_while_cond_221019___redundant_placeholder3
lstm_8_while_identity
?
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: 2
lstm_8/while/Lessr
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_8/while/Identity"7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
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
?

!__inference__wrapped_model_218775
input_5N
@sequential_4_layer_normalization_6_mul_3_readvariableop_resource:L
>sequential_4_layer_normalization_6_add_readvariableop_resource:P
=sequential_4_lstm_8_lstm_cell_8_split_readvariableop_resource:	?N
?sequential_4_lstm_8_lstm_cell_8_split_1_readvariableop_resource:	?J
7sequential_4_lstm_8_lstm_cell_8_readvariableop_resource:	 ?F
4sequential_4_dense_12_matmul_readvariableop_resource:  C
5sequential_4_dense_12_biasadd_readvariableop_resource: F
4sequential_4_dense_13_matmul_readvariableop_resource: C
5sequential_4_dense_13_biasadd_readvariableop_resource:
identity??,sequential_4/dense_12/BiasAdd/ReadVariableOp?+sequential_4/dense_12/MatMul/ReadVariableOp?,sequential_4/dense_13/BiasAdd/ReadVariableOp?+sequential_4/dense_13/MatMul/ReadVariableOp?5sequential_4/layer_normalization_6/add/ReadVariableOp?7sequential_4/layer_normalization_6/mul_3/ReadVariableOp?.sequential_4/lstm_8/lstm_cell_8/ReadVariableOp?0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_1?0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_2?0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_3?4sequential_4/lstm_8/lstm_cell_8/split/ReadVariableOp?6sequential_4/lstm_8/lstm_cell_8/split_1/ReadVariableOp?sequential_4/lstm_8/while?
(sequential_4/layer_normalization_6/ShapeShapeinput_5*
T0*
_output_shapes
:2*
(sequential_4/layer_normalization_6/Shape?
6sequential_4/layer_normalization_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_4/layer_normalization_6/strided_slice/stack?
8sequential_4/layer_normalization_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/layer_normalization_6/strided_slice/stack_1?
8sequential_4/layer_normalization_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/layer_normalization_6/strided_slice/stack_2?
0sequential_4/layer_normalization_6/strided_sliceStridedSlice1sequential_4/layer_normalization_6/Shape:output:0?sequential_4/layer_normalization_6/strided_slice/stack:output:0Asequential_4/layer_normalization_6/strided_slice/stack_1:output:0Asequential_4/layer_normalization_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_4/layer_normalization_6/strided_slice?
(sequential_4/layer_normalization_6/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_4/layer_normalization_6/mul/x?
&sequential_4/layer_normalization_6/mulMul1sequential_4/layer_normalization_6/mul/x:output:09sequential_4/layer_normalization_6/strided_slice:output:0*
T0*
_output_shapes
: 2(
&sequential_4/layer_normalization_6/mul?
8sequential_4/layer_normalization_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/layer_normalization_6/strided_slice_1/stack?
:sequential_4/layer_normalization_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_4/layer_normalization_6/strided_slice_1/stack_1?
:sequential_4/layer_normalization_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_4/layer_normalization_6/strided_slice_1/stack_2?
2sequential_4/layer_normalization_6/strided_slice_1StridedSlice1sequential_4/layer_normalization_6/Shape:output:0Asequential_4/layer_normalization_6/strided_slice_1/stack:output:0Csequential_4/layer_normalization_6/strided_slice_1/stack_1:output:0Csequential_4/layer_normalization_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_4/layer_normalization_6/strided_slice_1?
(sequential_4/layer_normalization_6/mul_1Mul*sequential_4/layer_normalization_6/mul:z:0;sequential_4/layer_normalization_6/strided_slice_1:output:0*
T0*
_output_shapes
: 2*
(sequential_4/layer_normalization_6/mul_1?
8sequential_4/layer_normalization_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/layer_normalization_6/strided_slice_2/stack?
:sequential_4/layer_normalization_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_4/layer_normalization_6/strided_slice_2/stack_1?
:sequential_4/layer_normalization_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_4/layer_normalization_6/strided_slice_2/stack_2?
2sequential_4/layer_normalization_6/strided_slice_2StridedSlice1sequential_4/layer_normalization_6/Shape:output:0Asequential_4/layer_normalization_6/strided_slice_2/stack:output:0Csequential_4/layer_normalization_6/strided_slice_2/stack_1:output:0Csequential_4/layer_normalization_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_4/layer_normalization_6/strided_slice_2?
*sequential_4/layer_normalization_6/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_4/layer_normalization_6/mul_2/x?
(sequential_4/layer_normalization_6/mul_2Mul3sequential_4/layer_normalization_6/mul_2/x:output:0;sequential_4/layer_normalization_6/strided_slice_2:output:0*
T0*
_output_shapes
: 2*
(sequential_4/layer_normalization_6/mul_2?
2sequential_4/layer_normalization_6/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :24
2sequential_4/layer_normalization_6/Reshape/shape/0?
2sequential_4/layer_normalization_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2sequential_4/layer_normalization_6/Reshape/shape/3?
0sequential_4/layer_normalization_6/Reshape/shapePack;sequential_4/layer_normalization_6/Reshape/shape/0:output:0,sequential_4/layer_normalization_6/mul_1:z:0,sequential_4/layer_normalization_6/mul_2:z:0;sequential_4/layer_normalization_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0sequential_4/layer_normalization_6/Reshape/shape?
*sequential_4/layer_normalization_6/ReshapeReshapeinput_59sequential_4/layer_normalization_6/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2,
*sequential_4/layer_normalization_6/Reshape?
.sequential_4/layer_normalization_6/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.sequential_4/layer_normalization_6/ones/Less/y?
,sequential_4/layer_normalization_6/ones/LessLess,sequential_4/layer_normalization_6/mul_1:z:07sequential_4/layer_normalization_6/ones/Less/y:output:0*
T0*
_output_shapes
: 2.
,sequential_4/layer_normalization_6/ones/Less?
.sequential_4/layer_normalization_6/ones/packedPack,sequential_4/layer_normalization_6/mul_1:z:0*
N*
T0*
_output_shapes
:20
.sequential_4/layer_normalization_6/ones/packed?
-sequential_4/layer_normalization_6/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2/
-sequential_4/layer_normalization_6/ones/Const?
'sequential_4/layer_normalization_6/onesFill7sequential_4/layer_normalization_6/ones/packed:output:06sequential_4/layer_normalization_6/ones/Const:output:0*
T0*#
_output_shapes
:?????????2)
'sequential_4/layer_normalization_6/ones?
/sequential_4/layer_normalization_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?21
/sequential_4/layer_normalization_6/zeros/Less/y?
-sequential_4/layer_normalization_6/zeros/LessLess,sequential_4/layer_normalization_6/mul_1:z:08sequential_4/layer_normalization_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-sequential_4/layer_normalization_6/zeros/Less?
/sequential_4/layer_normalization_6/zeros/packedPack,sequential_4/layer_normalization_6/mul_1:z:0*
N*
T0*
_output_shapes
:21
/sequential_4/layer_normalization_6/zeros/packed?
.sequential_4/layer_normalization_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.sequential_4/layer_normalization_6/zeros/Const?
(sequential_4/layer_normalization_6/zerosFill8sequential_4/layer_normalization_6/zeros/packed:output:07sequential_4/layer_normalization_6/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2*
(sequential_4/layer_normalization_6/zeros?
(sequential_4/layer_normalization_6/ConstConst*
_output_shapes
: *
dtype0*
valueB 2*
(sequential_4/layer_normalization_6/Const?
*sequential_4/layer_normalization_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2,
*sequential_4/layer_normalization_6/Const_1?
3sequential_4/layer_normalization_6/FusedBatchNormV3FusedBatchNormV33sequential_4/layer_normalization_6/Reshape:output:00sequential_4/layer_normalization_6/ones:output:01sequential_4/layer_normalization_6/zeros:output:01sequential_4/layer_normalization_6/Const:output:03sequential_4/layer_normalization_6/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:25
3sequential_4/layer_normalization_6/FusedBatchNormV3?
,sequential_4/layer_normalization_6/Reshape_1Reshape7sequential_4/layer_normalization_6/FusedBatchNormV3:y:01sequential_4/layer_normalization_6/Shape:output:0*
T0*+
_output_shapes
:?????????2.
,sequential_4/layer_normalization_6/Reshape_1?
7sequential_4/layer_normalization_6/mul_3/ReadVariableOpReadVariableOp@sequential_4_layer_normalization_6_mul_3_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential_4/layer_normalization_6/mul_3/ReadVariableOp?
(sequential_4/layer_normalization_6/mul_3Mul5sequential_4/layer_normalization_6/Reshape_1:output:0?sequential_4/layer_normalization_6/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2*
(sequential_4/layer_normalization_6/mul_3?
5sequential_4/layer_normalization_6/add/ReadVariableOpReadVariableOp>sequential_4_layer_normalization_6_add_readvariableop_resource*
_output_shapes
:*
dtype027
5sequential_4/layer_normalization_6/add/ReadVariableOp?
&sequential_4/layer_normalization_6/addAddV2,sequential_4/layer_normalization_6/mul_3:z:0=sequential_4/layer_normalization_6/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2(
&sequential_4/layer_normalization_6/add?
sequential_4/lstm_8/ShapeShape*sequential_4/layer_normalization_6/add:z:0*
T0*
_output_shapes
:2
sequential_4/lstm_8/Shape?
'sequential_4/lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/lstm_8/strided_slice/stack?
)sequential_4/lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_8/strided_slice/stack_1?
)sequential_4/lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_8/strided_slice/stack_2?
!sequential_4/lstm_8/strided_sliceStridedSlice"sequential_4/lstm_8/Shape:output:00sequential_4/lstm_8/strided_slice/stack:output:02sequential_4/lstm_8/strided_slice/stack_1:output:02sequential_4/lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_4/lstm_8/strided_slice?
sequential_4/lstm_8/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_4/lstm_8/zeros/mul/y?
sequential_4/lstm_8/zeros/mulMul*sequential_4/lstm_8/strided_slice:output:0(sequential_4/lstm_8/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_4/lstm_8/zeros/mul?
 sequential_4/lstm_8/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_4/lstm_8/zeros/Less/y?
sequential_4/lstm_8/zeros/LessLess!sequential_4/lstm_8/zeros/mul:z:0)sequential_4/lstm_8/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_4/lstm_8/zeros/Less?
"sequential_4/lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_4/lstm_8/zeros/packed/1?
 sequential_4/lstm_8/zeros/packedPack*sequential_4/lstm_8/strided_slice:output:0+sequential_4/lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_4/lstm_8/zeros/packed?
sequential_4/lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_4/lstm_8/zeros/Const?
sequential_4/lstm_8/zerosFill)sequential_4/lstm_8/zeros/packed:output:0(sequential_4/lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_4/lstm_8/zeros?
!sequential_4/lstm_8/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_4/lstm_8/zeros_1/mul/y?
sequential_4/lstm_8/zeros_1/mulMul*sequential_4/lstm_8/strided_slice:output:0*sequential_4/lstm_8/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_8/zeros_1/mul?
"sequential_4/lstm_8/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_4/lstm_8/zeros_1/Less/y?
 sequential_4/lstm_8/zeros_1/LessLess#sequential_4/lstm_8/zeros_1/mul:z:0+sequential_4/lstm_8/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_4/lstm_8/zeros_1/Less?
$sequential_4/lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_4/lstm_8/zeros_1/packed/1?
"sequential_4/lstm_8/zeros_1/packedPack*sequential_4/lstm_8/strided_slice:output:0-sequential_4/lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_4/lstm_8/zeros_1/packed?
!sequential_4/lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_4/lstm_8/zeros_1/Const?
sequential_4/lstm_8/zeros_1Fill+sequential_4/lstm_8/zeros_1/packed:output:0*sequential_4/lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_4/lstm_8/zeros_1?
"sequential_4/lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_4/lstm_8/transpose/perm?
sequential_4/lstm_8/transpose	Transpose*sequential_4/layer_normalization_6/add:z:0+sequential_4/lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
sequential_4/lstm_8/transpose?
sequential_4/lstm_8/Shape_1Shape!sequential_4/lstm_8/transpose:y:0*
T0*
_output_shapes
:2
sequential_4/lstm_8/Shape_1?
)sequential_4/lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_8/strided_slice_1/stack?
+sequential_4/lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_8/strided_slice_1/stack_1?
+sequential_4/lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_8/strided_slice_1/stack_2?
#sequential_4/lstm_8/strided_slice_1StridedSlice$sequential_4/lstm_8/Shape_1:output:02sequential_4/lstm_8/strided_slice_1/stack:output:04sequential_4/lstm_8/strided_slice_1/stack_1:output:04sequential_4/lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_4/lstm_8/strided_slice_1?
/sequential_4/lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_4/lstm_8/TensorArrayV2/element_shape?
!sequential_4/lstm_8/TensorArrayV2TensorListReserve8sequential_4/lstm_8/TensorArrayV2/element_shape:output:0,sequential_4/lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_4/lstm_8/TensorArrayV2?
Isequential_4/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Isequential_4/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_4/lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_4/lstm_8/transpose:y:0Rsequential_4/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_4/lstm_8/TensorArrayUnstack/TensorListFromTensor?
)sequential_4/lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_8/strided_slice_2/stack?
+sequential_4/lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_8/strided_slice_2/stack_1?
+sequential_4/lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_8/strided_slice_2/stack_2?
#sequential_4/lstm_8/strided_slice_2StridedSlice!sequential_4/lstm_8/transpose:y:02sequential_4/lstm_8/strided_slice_2/stack:output:04sequential_4/lstm_8/strided_slice_2/stack_1:output:04sequential_4/lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2%
#sequential_4/lstm_8/strided_slice_2?
/sequential_4/lstm_8/lstm_cell_8/ones_like/ShapeShape"sequential_4/lstm_8/zeros:output:0*
T0*
_output_shapes
:21
/sequential_4/lstm_8/lstm_cell_8/ones_like/Shape?
/sequential_4/lstm_8/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_4/lstm_8/lstm_cell_8/ones_like/Const?
)sequential_4/lstm_8/lstm_cell_8/ones_likeFill8sequential_4/lstm_8/lstm_cell_8/ones_like/Shape:output:08sequential_4/lstm_8/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/lstm_cell_8/ones_like?
/sequential_4/lstm_8/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_4/lstm_8/lstm_cell_8/split/split_dim?
4sequential_4/lstm_8/lstm_cell_8/split/ReadVariableOpReadVariableOp=sequential_4_lstm_8_lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype026
4sequential_4/lstm_8/lstm_cell_8/split/ReadVariableOp?
%sequential_4/lstm_8/lstm_cell_8/splitSplit8sequential_4/lstm_8/lstm_cell_8/split/split_dim:output:0<sequential_4/lstm_8/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2'
%sequential_4/lstm_8/lstm_cell_8/split?
&sequential_4/lstm_8/lstm_cell_8/MatMulMatMul,sequential_4/lstm_8/strided_slice_2:output:0.sequential_4/lstm_8/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_4/lstm_8/lstm_cell_8/MatMul?
(sequential_4/lstm_8/lstm_cell_8/MatMul_1MatMul,sequential_4/lstm_8/strided_slice_2:output:0.sequential_4/lstm_8/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2*
(sequential_4/lstm_8/lstm_cell_8/MatMul_1?
(sequential_4/lstm_8/lstm_cell_8/MatMul_2MatMul,sequential_4/lstm_8/strided_slice_2:output:0.sequential_4/lstm_8/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2*
(sequential_4/lstm_8/lstm_cell_8/MatMul_2?
(sequential_4/lstm_8/lstm_cell_8/MatMul_3MatMul,sequential_4/lstm_8/strided_slice_2:output:0.sequential_4/lstm_8/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2*
(sequential_4/lstm_8/lstm_cell_8/MatMul_3?
1sequential_4/lstm_8/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_4/lstm_8/lstm_cell_8/split_1/split_dim?
6sequential_4/lstm_8/lstm_cell_8/split_1/ReadVariableOpReadVariableOp?sequential_4_lstm_8_lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_4/lstm_8/lstm_cell_8/split_1/ReadVariableOp?
'sequential_4/lstm_8/lstm_cell_8/split_1Split:sequential_4/lstm_8/lstm_cell_8/split_1/split_dim:output:0>sequential_4/lstm_8/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2)
'sequential_4/lstm_8/lstm_cell_8/split_1?
'sequential_4/lstm_8/lstm_cell_8/BiasAddBiasAdd0sequential_4/lstm_8/lstm_cell_8/MatMul:product:00sequential_4/lstm_8/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential_4/lstm_8/lstm_cell_8/BiasAdd?
)sequential_4/lstm_8/lstm_cell_8/BiasAdd_1BiasAdd2sequential_4/lstm_8/lstm_cell_8/MatMul_1:product:00sequential_4/lstm_8/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/lstm_cell_8/BiasAdd_1?
)sequential_4/lstm_8/lstm_cell_8/BiasAdd_2BiasAdd2sequential_4/lstm_8/lstm_cell_8/MatMul_2:product:00sequential_4/lstm_8/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/lstm_cell_8/BiasAdd_2?
)sequential_4/lstm_8/lstm_cell_8/BiasAdd_3BiasAdd2sequential_4/lstm_8/lstm_cell_8/MatMul_3:product:00sequential_4/lstm_8/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/lstm_cell_8/BiasAdd_3?
#sequential_4/lstm_8/lstm_cell_8/mulMul"sequential_4/lstm_8/zeros:output:02sequential_4/lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2%
#sequential_4/lstm_8/lstm_cell_8/mul?
%sequential_4/lstm_8/lstm_cell_8/mul_1Mul"sequential_4/lstm_8/zeros:output:02sequential_4/lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/mul_1?
%sequential_4/lstm_8/lstm_cell_8/mul_2Mul"sequential_4/lstm_8/zeros:output:02sequential_4/lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/mul_2?
%sequential_4/lstm_8/lstm_cell_8/mul_3Mul"sequential_4/lstm_8/zeros:output:02sequential_4/lstm_8/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/mul_3?
.sequential_4/lstm_8/lstm_cell_8/ReadVariableOpReadVariableOp7sequential_4_lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.sequential_4/lstm_8/lstm_cell_8/ReadVariableOp?
3sequential_4/lstm_8/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_4/lstm_8/lstm_cell_8/strided_slice/stack?
5sequential_4/lstm_8/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_4/lstm_8/lstm_cell_8/strided_slice/stack_1?
5sequential_4/lstm_8/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_4/lstm_8/lstm_cell_8/strided_slice/stack_2?
-sequential_4/lstm_8/lstm_cell_8/strided_sliceStridedSlice6sequential_4/lstm_8/lstm_cell_8/ReadVariableOp:value:0<sequential_4/lstm_8/lstm_cell_8/strided_slice/stack:output:0>sequential_4/lstm_8/lstm_cell_8/strided_slice/stack_1:output:0>sequential_4/lstm_8/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2/
-sequential_4/lstm_8/lstm_cell_8/strided_slice?
(sequential_4/lstm_8/lstm_cell_8/MatMul_4MatMul'sequential_4/lstm_8/lstm_cell_8/mul:z:06sequential_4/lstm_8/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_4/lstm_8/lstm_cell_8/MatMul_4?
#sequential_4/lstm_8/lstm_cell_8/addAddV20sequential_4/lstm_8/lstm_cell_8/BiasAdd:output:02sequential_4/lstm_8/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2%
#sequential_4/lstm_8/lstm_cell_8/add?
'sequential_4/lstm_8/lstm_cell_8/SigmoidSigmoid'sequential_4/lstm_8/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_4/lstm_8/lstm_cell_8/Sigmoid?
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_1ReadVariableOp7sequential_4_lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_1?
5sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack?
7sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   29
7sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack_1?
7sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack_2?
/sequential_4/lstm_8/lstm_cell_8/strided_slice_1StridedSlice8sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_1:value:0>sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack:output:0@sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack_1:output:0@sequential_4/lstm_8/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_4/lstm_8/lstm_cell_8/strided_slice_1?
(sequential_4/lstm_8/lstm_cell_8/MatMul_5MatMul)sequential_4/lstm_8/lstm_cell_8/mul_1:z:08sequential_4/lstm_8/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_4/lstm_8/lstm_cell_8/MatMul_5?
%sequential_4/lstm_8/lstm_cell_8/add_1AddV22sequential_4/lstm_8/lstm_cell_8/BiasAdd_1:output:02sequential_4/lstm_8/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/add_1?
)sequential_4/lstm_8/lstm_cell_8/Sigmoid_1Sigmoid)sequential_4/lstm_8/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/lstm_cell_8/Sigmoid_1?
%sequential_4/lstm_8/lstm_cell_8/mul_4Mul-sequential_4/lstm_8/lstm_cell_8/Sigmoid_1:y:0$sequential_4/lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/mul_4?
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_2ReadVariableOp7sequential_4_lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_2?
5sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack?
7sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   29
7sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack_1?
7sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack_2?
/sequential_4/lstm_8/lstm_cell_8/strided_slice_2StridedSlice8sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_2:value:0>sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack:output:0@sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack_1:output:0@sequential_4/lstm_8/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_4/lstm_8/lstm_cell_8/strided_slice_2?
(sequential_4/lstm_8/lstm_cell_8/MatMul_6MatMul)sequential_4/lstm_8/lstm_cell_8/mul_2:z:08sequential_4/lstm_8/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_4/lstm_8/lstm_cell_8/MatMul_6?
%sequential_4/lstm_8/lstm_cell_8/add_2AddV22sequential_4/lstm_8/lstm_cell_8/BiasAdd_2:output:02sequential_4/lstm_8/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/add_2?
$sequential_4/lstm_8/lstm_cell_8/ReluRelu)sequential_4/lstm_8/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2&
$sequential_4/lstm_8/lstm_cell_8/Relu?
%sequential_4/lstm_8/lstm_cell_8/mul_5Mul+sequential_4/lstm_8/lstm_cell_8/Sigmoid:y:02sequential_4/lstm_8/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/mul_5?
%sequential_4/lstm_8/lstm_cell_8/add_3AddV2)sequential_4/lstm_8/lstm_cell_8/mul_4:z:0)sequential_4/lstm_8/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/add_3?
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_3ReadVariableOp7sequential_4_lstm_8_lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_3?
5sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   27
5sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack?
7sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack_1?
7sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack_2?
/sequential_4/lstm_8/lstm_cell_8/strided_slice_3StridedSlice8sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_3:value:0>sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack:output:0@sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack_1:output:0@sequential_4/lstm_8/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_4/lstm_8/lstm_cell_8/strided_slice_3?
(sequential_4/lstm_8/lstm_cell_8/MatMul_7MatMul)sequential_4/lstm_8/lstm_cell_8/mul_3:z:08sequential_4/lstm_8/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_4/lstm_8/lstm_cell_8/MatMul_7?
%sequential_4/lstm_8/lstm_cell_8/add_4AddV22sequential_4/lstm_8/lstm_cell_8/BiasAdd_3:output:02sequential_4/lstm_8/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/add_4?
)sequential_4/lstm_8/lstm_cell_8/Sigmoid_2Sigmoid)sequential_4/lstm_8/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/lstm_cell_8/Sigmoid_2?
&sequential_4/lstm_8/lstm_cell_8/Relu_1Relu)sequential_4/lstm_8/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2(
&sequential_4/lstm_8/lstm_cell_8/Relu_1?
%sequential_4/lstm_8/lstm_cell_8/mul_6Mul-sequential_4/lstm_8/lstm_cell_8/Sigmoid_2:y:04sequential_4/lstm_8/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2'
%sequential_4/lstm_8/lstm_cell_8/mul_6?
1sequential_4/lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    23
1sequential_4/lstm_8/TensorArrayV2_1/element_shape?
#sequential_4/lstm_8/TensorArrayV2_1TensorListReserve:sequential_4/lstm_8/TensorArrayV2_1/element_shape:output:0,sequential_4/lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_4/lstm_8/TensorArrayV2_1v
sequential_4/lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_4/lstm_8/time?
,sequential_4/lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_4/lstm_8/while/maximum_iterations?
&sequential_4/lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_4/lstm_8/while/loop_counter?
sequential_4/lstm_8/whileWhile/sequential_4/lstm_8/while/loop_counter:output:05sequential_4/lstm_8/while/maximum_iterations:output:0!sequential_4/lstm_8/time:output:0,sequential_4/lstm_8/TensorArrayV2_1:handle:0"sequential_4/lstm_8/zeros:output:0$sequential_4/lstm_8/zeros_1:output:0,sequential_4/lstm_8/strided_slice_1:output:0Ksequential_4/lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_4_lstm_8_lstm_cell_8_split_readvariableop_resource?sequential_4_lstm_8_lstm_cell_8_split_1_readvariableop_resource7sequential_4_lstm_8_lstm_cell_8_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :????????? :????????? : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_4_lstm_8_while_body_218626*1
cond)R'
%sequential_4_lstm_8_while_cond_218625*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_4/lstm_8/while?
Dsequential_4/lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2F
Dsequential_4/lstm_8/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_4/lstm_8/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_4/lstm_8/while:output:3Msequential_4/lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype028
6sequential_4/lstm_8/TensorArrayV2Stack/TensorListStack?
)sequential_4/lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_4/lstm_8/strided_slice_3/stack?
+sequential_4/lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_4/lstm_8/strided_slice_3/stack_1?
+sequential_4/lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_8/strided_slice_3/stack_2?
#sequential_4/lstm_8/strided_slice_3StridedSlice?sequential_4/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:02sequential_4/lstm_8/strided_slice_3/stack:output:04sequential_4/lstm_8/strided_slice_3/stack_1:output:04sequential_4/lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2%
#sequential_4/lstm_8/strided_slice_3?
$sequential_4/lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_4/lstm_8/transpose_1/perm?
sequential_4/lstm_8/transpose_1	Transpose?sequential_4/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_4/lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2!
sequential_4/lstm_8/transpose_1?
sequential_4/lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_4/lstm_8/runtime?
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential_4/dense_12/MatMul/ReadVariableOp?
sequential_4/dense_12/MatMulMatMul,sequential_4/lstm_8/strided_slice_3:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_4/dense_12/MatMul?
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_4/dense_12/BiasAdd/ReadVariableOp?
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_4/dense_12/BiasAdd?
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_4/dense_12/Relu?
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_4/dense_13/MatMul/ReadVariableOp?
sequential_4/dense_13/MatMulMatMul(sequential_4/dense_12/Relu:activations:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_13/MatMul?
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_4/dense_13/BiasAdd/ReadVariableOp?
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_13/BiasAdd?
sequential_4/reshape_6/ShapeShape&sequential_4/dense_13/BiasAdd:output:0*
T0*
_output_shapes
:2
sequential_4/reshape_6/Shape?
*sequential_4/reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_4/reshape_6/strided_slice/stack?
,sequential_4/reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_6/strided_slice/stack_1?
,sequential_4/reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_6/strided_slice/stack_2?
$sequential_4/reshape_6/strided_sliceStridedSlice%sequential_4/reshape_6/Shape:output:03sequential_4/reshape_6/strided_slice/stack:output:05sequential_4/reshape_6/strided_slice/stack_1:output:05sequential_4/reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_4/reshape_6/strided_slice?
&sequential_4/reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_6/Reshape/shape/1?
&sequential_4/reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_6/Reshape/shape/2?
$sequential_4/reshape_6/Reshape/shapePack-sequential_4/reshape_6/strided_slice:output:0/sequential_4/reshape_6/Reshape/shape/1:output:0/sequential_4/reshape_6/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_4/reshape_6/Reshape/shape?
sequential_4/reshape_6/ReshapeReshape&sequential_4/dense_13/BiasAdd:output:0-sequential_4/reshape_6/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2 
sequential_4/reshape_6/Reshape?
IdentityIdentity'sequential_4/reshape_6/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp-^sequential_4/dense_12/BiasAdd/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp6^sequential_4/layer_normalization_6/add/ReadVariableOp8^sequential_4/layer_normalization_6/mul_3/ReadVariableOp/^sequential_4/lstm_8/lstm_cell_8/ReadVariableOp1^sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_11^sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_21^sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_35^sequential_4/lstm_8/lstm_cell_8/split/ReadVariableOp7^sequential_4/lstm_8/lstm_cell_8/split_1/ReadVariableOp^sequential_4/lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp2n
5sequential_4/layer_normalization_6/add/ReadVariableOp5sequential_4/layer_normalization_6/add/ReadVariableOp2r
7sequential_4/layer_normalization_6/mul_3/ReadVariableOp7sequential_4/layer_normalization_6/mul_3/ReadVariableOp2`
.sequential_4/lstm_8/lstm_cell_8/ReadVariableOp.sequential_4/lstm_8/lstm_cell_8/ReadVariableOp2d
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_10sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_12d
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_20sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_22d
0sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_30sequential_4/lstm_8/lstm_cell_8/ReadVariableOp_32l
4sequential_4/lstm_8/lstm_cell_8/split/ReadVariableOp4sequential_4/lstm_8/lstm_cell_8/split/ReadVariableOp2p
6sequential_4/lstm_8/lstm_cell_8/split_1/ReadVariableOp6sequential_4/lstm_8/lstm_cell_8/split_1/ReadVariableOp26
sequential_4/lstm_8/whilesequential_4/lstm_8/while:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
while_cond_219731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_219731___redundant_placeholder04
0while_while_cond_219731___redundant_placeholder14
0while_while_cond_219731___redundant_placeholder24
0while_while_cond_219731___redundant_placeholder3
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
'__inference_lstm_8_layer_call_fn_222441
inputs_0
unknown:	?
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2192852
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
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
-__inference_sequential_4_layer_call_fn_220416
input_5
unknown:
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	 ?
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_2203722
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
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
while_cond_221428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_221428___redundant_placeholder04
0while_while_cond_221428___redundant_placeholder14
0while_while_cond_221428___redundant_placeholder24
0while_while_cond_221428___redundant_placeholder3
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
?Q
?
B__inference_lstm_8_layer_call_and_return_conditional_losses_219285

inputs%
lstm_cell_8_219197:	?!
lstm_cell_8_219199:	?%
lstm_cell_8_219201:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?#lstm_cell_8/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_8_219197lstm_cell_8_219199lstm_cell_8_219201*
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_2191322%
#lstm_cell_8/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_8_219197lstm_cell_8_219199lstm_cell_8_219201*
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
while_body_219210*
condR
while_cond_219209*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_8_219197*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_8/StatefulPartitionedCall#lstm_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_220129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_220129___redundant_placeholder04
0while_while_cond_220129___redundant_placeholder14
0while_while_cond_220129___redundant_placeholder24
0while_while_cond_220129___redundant_placeholder3
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
-__inference_sequential_4_layer_call_fn_221253

inputs
unknown:
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	 ?
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_2203722
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
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_219209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_219209___redundant_placeholder04
0while_while_cond_219209___redundant_placeholder14
0while_while_cond_219209___redundant_placeholder24
0while_while_cond_219209___redundant_placeholder3
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
B__inference_lstm_8_layer_call_and_return_conditional_losses_222419

inputs<
)lstm_cell_8_split_readvariableop_resource:	?:
+lstm_cell_8_split_1_readvariableop_resource:	?6
#lstm_cell_8_readvariableop_resource:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_8/ReadVariableOp?lstm_cell_8/ReadVariableOp_1?lstm_cell_8/ReadVariableOp_2?lstm_cell_8/ReadVariableOp_3? lstm_cell_8/split/ReadVariableOp?"lstm_cell_8/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_8/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_8/ones_like/Shape
lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_8/ones_like/Const?
lstm_cell_8/ones_likeFill$lstm_cell_8/ones_like/Shape:output:0$lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/ones_like{
lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout/Const?
lstm_cell_8/dropout/MulMullstm_cell_8/ones_like:output:0"lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Mul?
lstm_cell_8/dropout/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout/Shape?
0lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??22
0lstm_cell_8/dropout/random_uniform/RandomUniform?
"lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_8/dropout/GreaterEqual/y?
 lstm_cell_8/dropout/GreaterEqualGreaterEqual9lstm_cell_8/dropout/random_uniform/RandomUniform:output:0+lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_8/dropout/GreaterEqual?
lstm_cell_8/dropout/CastCast$lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Cast?
lstm_cell_8/dropout/Mul_1Mullstm_cell_8/dropout/Mul:z:0lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout/Mul_1
lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_1/Const?
lstm_cell_8/dropout_1/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Mul?
lstm_cell_8/dropout_1/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_1/Shape?
2lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_8/dropout_1/random_uniform/RandomUniform?
$lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_1/GreaterEqual/y?
"lstm_cell_8/dropout_1/GreaterEqualGreaterEqual;lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_1/GreaterEqual?
lstm_cell_8/dropout_1/CastCast&lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Cast?
lstm_cell_8/dropout_1/Mul_1Mullstm_cell_8/dropout_1/Mul:z:0lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_1/Mul_1
lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_2/Const?
lstm_cell_8/dropout_2/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Mul?
lstm_cell_8/dropout_2/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_2/Shape?
2lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_8/dropout_2/random_uniform/RandomUniform?
$lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_2/GreaterEqual/y?
"lstm_cell_8/dropout_2/GreaterEqualGreaterEqual;lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_2/GreaterEqual?
lstm_cell_8/dropout_2/CastCast&lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Cast?
lstm_cell_8/dropout_2/Mul_1Mullstm_cell_8/dropout_2/Mul:z:0lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_2/Mul_1
lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_8/dropout_3/Const?
lstm_cell_8/dropout_3/MulMullstm_cell_8/ones_like:output:0$lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Mul?
lstm_cell_8/dropout_3/ShapeShapelstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_8/dropout_3/Shape?
2lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ڐ24
2lstm_cell_8/dropout_3/random_uniform/RandomUniform?
$lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_8/dropout_3/GreaterEqual/y?
"lstm_cell_8/dropout_3/GreaterEqualGreaterEqual;lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_8/dropout_3/GreaterEqual?
lstm_cell_8/dropout_3/CastCast&lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Cast?
lstm_cell_8/dropout_3/Mul_1Mullstm_cell_8/dropout_3/Mul:z:0lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/dropout_3/Mul_1|
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_8/split/split_dim?
 lstm_cell_8/split/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_8/split/ReadVariableOp?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0(lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_8/split?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul?
lstm_cell_8/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_1?
lstm_cell_8/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_2?
lstm_cell_8/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_3?
lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_8/split_1/split_dim?
"lstm_cell_8/split_1/ReadVariableOpReadVariableOp+lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_8/split_1/ReadVariableOp?
lstm_cell_8/split_1Split&lstm_cell_8/split_1/split_dim:output:0*lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_8/split_1?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/MatMul:product:0lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd?
lstm_cell_8/BiasAdd_1BiasAddlstm_cell_8/MatMul_1:product:0lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_1?
lstm_cell_8/BiasAdd_2BiasAddlstm_cell_8/MatMul_2:product:0lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_2?
lstm_cell_8/BiasAdd_3BiasAddlstm_cell_8/MatMul_3:product:0lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_3?
lstm_cell_8/mulMulzeros:output:0lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul?
lstm_cell_8/mul_1Mulzeros:output:0lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_1?
lstm_cell_8/mul_2Mulzeros:output:0lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_2?
lstm_cell_8/mul_3Mulzeros:output:0lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_3?
lstm_cell_8/ReadVariableOpReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp?
lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_8/strided_slice/stack?
!lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice/stack_1?
!lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_8/strided_slice/stack_2?
lstm_cell_8/strided_sliceStridedSlice"lstm_cell_8/ReadVariableOp:value:0(lstm_cell_8/strided_slice/stack:output:0*lstm_cell_8/strided_slice/stack_1:output:0*lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice?
lstm_cell_8/MatMul_4MatMullstm_cell_8/mul:z:0"lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_4?
lstm_cell_8/addAddV2lstm_cell_8/BiasAdd:output:0lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add|
lstm_cell_8/SigmoidSigmoidlstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid?
lstm_cell_8/ReadVariableOp_1ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_1?
!lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice_1/stack?
#lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_8/strided_slice_1/stack_1?
#lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_1/stack_2?
lstm_cell_8/strided_slice_1StridedSlice$lstm_cell_8/ReadVariableOp_1:value:0*lstm_cell_8/strided_slice_1/stack:output:0,lstm_cell_8/strided_slice_1/stack_1:output:0,lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_1?
lstm_cell_8/MatMul_5MatMullstm_cell_8/mul_1:z:0$lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_5?
lstm_cell_8/add_1AddV2lstm_cell_8/BiasAdd_1:output:0lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_1?
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_1?
lstm_cell_8/mul_4Mullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_4?
lstm_cell_8/ReadVariableOp_2ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_2?
!lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_8/strided_slice_2/stack?
#lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_8/strided_slice_2/stack_1?
#lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_2/stack_2?
lstm_cell_8/strided_slice_2StridedSlice$lstm_cell_8/ReadVariableOp_2:value:0*lstm_cell_8/strided_slice_2/stack:output:0,lstm_cell_8/strided_slice_2/stack_1:output:0,lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_2?
lstm_cell_8/MatMul_6MatMullstm_cell_8/mul_2:z:0$lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_6?
lstm_cell_8/add_2AddV2lstm_cell_8/BiasAdd_2:output:0lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_2u
lstm_cell_8/ReluRelulstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu?
lstm_cell_8/mul_5Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_5?
lstm_cell_8/add_3AddV2lstm_cell_8/mul_4:z:0lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_3?
lstm_cell_8/ReadVariableOp_3ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_3?
!lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_8/strided_slice_3/stack?
#lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_8/strided_slice_3/stack_1?
#lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_3/stack_2?
lstm_cell_8/strided_slice_3StridedSlice$lstm_cell_8/ReadVariableOp_3:value:0*lstm_cell_8/strided_slice_3/stack:output:0,lstm_cell_8/strided_slice_3/stack_1:output:0,lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_3?
lstm_cell_8/MatMul_7MatMullstm_cell_8/mul_3:z:0$lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_7?
lstm_cell_8/add_4AddV2lstm_cell_8/BiasAdd_3:output:0lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_4?
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_2y
lstm_cell_8/Relu_1Relulstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu_1?
lstm_cell_8/mul_6Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_8_split_readvariableop_resource+lstm_cell_8_split_1_readvariableop_resource#lstm_cell_8_readvariableop_resource*
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
while_body_222254*
condR
while_cond_222253*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_8/ReadVariableOp^lstm_cell_8/ReadVariableOp_1^lstm_cell_8/ReadVariableOp_2^lstm_cell_8/ReadVariableOp_3!^lstm_cell_8/split/ReadVariableOp#^lstm_cell_8/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_8/ReadVariableOplstm_cell_8/ReadVariableOp2<
lstm_cell_8/ReadVariableOp_1lstm_cell_8/ReadVariableOp_12<
lstm_cell_8/ReadVariableOp_2lstm_cell_8/ReadVariableOp_22<
lstm_cell_8/ReadVariableOp_3lstm_cell_8/ReadVariableOp_32D
 lstm_cell_8/split/ReadVariableOp lstm_cell_8/split/ReadVariableOp2H
"lstm_cell_8/split_1/ReadVariableOp"lstm_cell_8/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ן
?
B__inference_lstm_8_layer_call_and_return_conditional_losses_222112

inputs<
)lstm_cell_8_split_readvariableop_resource:	?:
+lstm_cell_8_split_1_readvariableop_resource:	?6
#lstm_cell_8_readvariableop_resource:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_8/ReadVariableOp?lstm_cell_8/ReadVariableOp_1?lstm_cell_8/ReadVariableOp_2?lstm_cell_8/ReadVariableOp_3? lstm_cell_8/split/ReadVariableOp?"lstm_cell_8/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_8/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_8/ones_like/Shape
lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_8/ones_like/Const?
lstm_cell_8/ones_likeFill$lstm_cell_8/ones_like/Shape:output:0$lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/ones_like|
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_8/split/split_dim?
 lstm_cell_8/split/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_8/split/ReadVariableOp?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0(lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_8/split?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul?
lstm_cell_8/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_1?
lstm_cell_8/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_2?
lstm_cell_8/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_3?
lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_8/split_1/split_dim?
"lstm_cell_8/split_1/ReadVariableOpReadVariableOp+lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_8/split_1/ReadVariableOp?
lstm_cell_8/split_1Split&lstm_cell_8/split_1/split_dim:output:0*lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_8/split_1?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/MatMul:product:0lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd?
lstm_cell_8/BiasAdd_1BiasAddlstm_cell_8/MatMul_1:product:0lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_1?
lstm_cell_8/BiasAdd_2BiasAddlstm_cell_8/MatMul_2:product:0lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_2?
lstm_cell_8/BiasAdd_3BiasAddlstm_cell_8/MatMul_3:product:0lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_3?
lstm_cell_8/mulMulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul?
lstm_cell_8/mul_1Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_1?
lstm_cell_8/mul_2Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_2?
lstm_cell_8/mul_3Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_3?
lstm_cell_8/ReadVariableOpReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp?
lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_8/strided_slice/stack?
!lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice/stack_1?
!lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_8/strided_slice/stack_2?
lstm_cell_8/strided_sliceStridedSlice"lstm_cell_8/ReadVariableOp:value:0(lstm_cell_8/strided_slice/stack:output:0*lstm_cell_8/strided_slice/stack_1:output:0*lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice?
lstm_cell_8/MatMul_4MatMullstm_cell_8/mul:z:0"lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_4?
lstm_cell_8/addAddV2lstm_cell_8/BiasAdd:output:0lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add|
lstm_cell_8/SigmoidSigmoidlstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid?
lstm_cell_8/ReadVariableOp_1ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_1?
!lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice_1/stack?
#lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_8/strided_slice_1/stack_1?
#lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_1/stack_2?
lstm_cell_8/strided_slice_1StridedSlice$lstm_cell_8/ReadVariableOp_1:value:0*lstm_cell_8/strided_slice_1/stack:output:0,lstm_cell_8/strided_slice_1/stack_1:output:0,lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_1?
lstm_cell_8/MatMul_5MatMullstm_cell_8/mul_1:z:0$lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_5?
lstm_cell_8/add_1AddV2lstm_cell_8/BiasAdd_1:output:0lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_1?
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_1?
lstm_cell_8/mul_4Mullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_4?
lstm_cell_8/ReadVariableOp_2ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_2?
!lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_8/strided_slice_2/stack?
#lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_8/strided_slice_2/stack_1?
#lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_2/stack_2?
lstm_cell_8/strided_slice_2StridedSlice$lstm_cell_8/ReadVariableOp_2:value:0*lstm_cell_8/strided_slice_2/stack:output:0,lstm_cell_8/strided_slice_2/stack_1:output:0,lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_2?
lstm_cell_8/MatMul_6MatMullstm_cell_8/mul_2:z:0$lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_6?
lstm_cell_8/add_2AddV2lstm_cell_8/BiasAdd_2:output:0lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_2u
lstm_cell_8/ReluRelulstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu?
lstm_cell_8/mul_5Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_5?
lstm_cell_8/add_3AddV2lstm_cell_8/mul_4:z:0lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_3?
lstm_cell_8/ReadVariableOp_3ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_3?
!lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_8/strided_slice_3/stack?
#lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_8/strided_slice_3/stack_1?
#lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_3/stack_2?
lstm_cell_8/strided_slice_3StridedSlice$lstm_cell_8/ReadVariableOp_3:value:0*lstm_cell_8/strided_slice_3/stack:output:0,lstm_cell_8/strided_slice_3/stack_1:output:0,lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_3?
lstm_cell_8/MatMul_7MatMullstm_cell_8/mul_3:z:0$lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_7?
lstm_cell_8/add_4AddV2lstm_cell_8/BiasAdd_3:output:0lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_4?
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_2y
lstm_cell_8/Relu_1Relulstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu_1?
lstm_cell_8/mul_6Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_8_split_readvariableop_resource+lstm_cell_8_split_1_readvariableop_resource#lstm_cell_8_readvariableop_resource*
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
while_body_221979*
condR
while_cond_221978*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_8/ReadVariableOp^lstm_cell_8/ReadVariableOp_1^lstm_cell_8/ReadVariableOp_2^lstm_cell_8/ReadVariableOp_3!^lstm_cell_8/split/ReadVariableOp#^lstm_cell_8/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_8/ReadVariableOplstm_cell_8/ReadVariableOp2<
lstm_cell_8/ReadVariableOp_1lstm_cell_8/ReadVariableOp_12<
lstm_cell_8/ReadVariableOp_2lstm_cell_8/ReadVariableOp_22<
lstm_cell_8/ReadVariableOp_3lstm_cell_8/ReadVariableOp_32D
 lstm_cell_8/split/ReadVariableOp lstm_cell_8/split/ReadVariableOp2H
"lstm_cell_8/split_1/ReadVariableOp"lstm_cell_8/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_8_layer_call_fn_222430
inputs_0
unknown:	?
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2189882
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
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
lstm_8_while_body_221020*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_8_while_lstm_cell_8_split_readvariableop_resource_0:	?I
:lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0:	?E
2lstm_8_while_lstm_cell_8_readvariableop_resource_0:	 ?
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorI
6lstm_8_while_lstm_cell_8_split_readvariableop_resource:	?G
8lstm_8_while_lstm_cell_8_split_1_readvariableop_resource:	?C
0lstm_8_while_lstm_cell_8_readvariableop_resource:	 ???'lstm_8/while/lstm_cell_8/ReadVariableOp?)lstm_8/while/lstm_cell_8/ReadVariableOp_1?)lstm_8/while/lstm_cell_8/ReadVariableOp_2?)lstm_8/while/lstm_cell_8/ReadVariableOp_3?-lstm_8/while/lstm_cell_8/split/ReadVariableOp?/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp?
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_8/while/TensorArrayV2Read/TensorListGetItem?
(lstm_8/while/lstm_cell_8/ones_like/ShapeShapelstm_8_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_8/while/lstm_cell_8/ones_like/Shape?
(lstm_8/while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_8/while/lstm_cell_8/ones_like/Const?
"lstm_8/while/lstm_cell_8/ones_likeFill1lstm_8/while/lstm_cell_8/ones_like/Shape:output:01lstm_8/while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/ones_like?
&lstm_8/while/lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2(
&lstm_8/while/lstm_cell_8/dropout/Const?
$lstm_8/while/lstm_cell_8/dropout/MulMul+lstm_8/while/lstm_cell_8/ones_like:output:0/lstm_8/while/lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_8/while/lstm_cell_8/dropout/Mul?
&lstm_8/while/lstm_cell_8/dropout/ShapeShape+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_8/while/lstm_cell_8/dropout/Shape?
=lstm_8/while/lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform/lstm_8/while/lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2?
=lstm_8/while/lstm_cell_8/dropout/random_uniform/RandomUniform?
/lstm_8/while/lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>21
/lstm_8/while/lstm_cell_8/dropout/GreaterEqual/y?
-lstm_8/while/lstm_cell_8/dropout/GreaterEqualGreaterEqualFlstm_8/while/lstm_cell_8/dropout/random_uniform/RandomUniform:output:08lstm_8/while/lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-lstm_8/while/lstm_cell_8/dropout/GreaterEqual?
%lstm_8/while/lstm_cell_8/dropout/CastCast1lstm_8/while/lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%lstm_8/while/lstm_cell_8/dropout/Cast?
&lstm_8/while/lstm_cell_8/dropout/Mul_1Mul(lstm_8/while/lstm_cell_8/dropout/Mul:z:0)lstm_8/while/lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&lstm_8/while/lstm_cell_8/dropout/Mul_1?
(lstm_8/while/lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2*
(lstm_8/while/lstm_cell_8/dropout_1/Const?
&lstm_8/while/lstm_cell_8/dropout_1/MulMul+lstm_8/while/lstm_cell_8/ones_like:output:01lstm_8/while/lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_8/while/lstm_cell_8/dropout_1/Mul?
(lstm_8/while/lstm_cell_8/dropout_1/ShapeShape+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_8/while/lstm_cell_8/dropout_1/Shape?
?lstm_8/while/lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_8/while/lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2A
?lstm_8/while/lstm_cell_8/dropout_1/random_uniform/RandomUniform?
1lstm_8/while/lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_8/while/lstm_cell_8/dropout_1/GreaterEqual/y?
/lstm_8/while/lstm_cell_8/dropout_1/GreaterEqualGreaterEqualHlstm_8/while/lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:0:lstm_8/while/lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_8/while/lstm_cell_8/dropout_1/GreaterEqual?
'lstm_8/while/lstm_cell_8/dropout_1/CastCast3lstm_8/while/lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_8/while/lstm_cell_8/dropout_1/Cast?
(lstm_8/while/lstm_cell_8/dropout_1/Mul_1Mul*lstm_8/while/lstm_cell_8/dropout_1/Mul:z:0+lstm_8/while/lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_8/while/lstm_cell_8/dropout_1/Mul_1?
(lstm_8/while/lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2*
(lstm_8/while/lstm_cell_8/dropout_2/Const?
&lstm_8/while/lstm_cell_8/dropout_2/MulMul+lstm_8/while/lstm_cell_8/ones_like:output:01lstm_8/while/lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_8/while/lstm_cell_8/dropout_2/Mul?
(lstm_8/while/lstm_cell_8/dropout_2/ShapeShape+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_8/while/lstm_cell_8/dropout_2/Shape?
?lstm_8/while/lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_8/while/lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2A
?lstm_8/while/lstm_cell_8/dropout_2/random_uniform/RandomUniform?
1lstm_8/while/lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_8/while/lstm_cell_8/dropout_2/GreaterEqual/y?
/lstm_8/while/lstm_cell_8/dropout_2/GreaterEqualGreaterEqualHlstm_8/while/lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:0:lstm_8/while/lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_8/while/lstm_cell_8/dropout_2/GreaterEqual?
'lstm_8/while/lstm_cell_8/dropout_2/CastCast3lstm_8/while/lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_8/while/lstm_cell_8/dropout_2/Cast?
(lstm_8/while/lstm_cell_8/dropout_2/Mul_1Mul*lstm_8/while/lstm_cell_8/dropout_2/Mul:z:0+lstm_8/while/lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_8/while/lstm_cell_8/dropout_2/Mul_1?
(lstm_8/while/lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2*
(lstm_8/while/lstm_cell_8/dropout_3/Const?
&lstm_8/while/lstm_cell_8/dropout_3/MulMul+lstm_8/while/lstm_cell_8/ones_like:output:01lstm_8/while/lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_8/while/lstm_cell_8/dropout_3/Mul?
(lstm_8/while/lstm_cell_8/dropout_3/ShapeShape+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_8/while/lstm_cell_8/dropout_3/Shape?
?lstm_8/while/lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_8/while/lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??2A
?lstm_8/while/lstm_cell_8/dropout_3/random_uniform/RandomUniform?
1lstm_8/while/lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_8/while/lstm_cell_8/dropout_3/GreaterEqual/y?
/lstm_8/while/lstm_cell_8/dropout_3/GreaterEqualGreaterEqualHlstm_8/while/lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:0:lstm_8/while/lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_8/while/lstm_cell_8/dropout_3/GreaterEqual?
'lstm_8/while/lstm_cell_8/dropout_3/CastCast3lstm_8/while/lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_8/while/lstm_cell_8/dropout_3/Cast?
(lstm_8/while/lstm_cell_8/dropout_3/Mul_1Mul*lstm_8/while/lstm_cell_8/dropout_3/Mul:z:0+lstm_8/while/lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_8/while/lstm_cell_8/dropout_3/Mul_1?
(lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_8/while/lstm_cell_8/split/split_dim?
-lstm_8/while/lstm_cell_8/split/ReadVariableOpReadVariableOp8lstm_8_while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02/
-lstm_8/while/lstm_cell_8/split/ReadVariableOp?
lstm_8/while/lstm_cell_8/splitSplit1lstm_8/while/lstm_cell_8/split/split_dim:output:05lstm_8/while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_8/while/lstm_cell_8/split?
lstm_8/while/lstm_cell_8/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2!
lstm_8/while/lstm_cell_8/MatMul?
!lstm_8/while/lstm_cell_8/MatMul_1MatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_1?
!lstm_8/while/lstm_cell_8/MatMul_2MatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_2?
!lstm_8/while/lstm_cell_8/MatMul_3MatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_3?
*lstm_8/while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_8/while/lstm_cell_8/split_1/split_dim?
/lstm_8/while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp?
 lstm_8/while/lstm_cell_8/split_1Split3lstm_8/while/lstm_cell_8/split_1/split_dim:output:07lstm_8/while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2"
 lstm_8/while/lstm_cell_8/split_1?
 lstm_8/while/lstm_cell_8/BiasAddBiasAdd)lstm_8/while/lstm_cell_8/MatMul:product:0)lstm_8/while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/while/lstm_cell_8/BiasAdd?
"lstm_8/while/lstm_cell_8/BiasAdd_1BiasAdd+lstm_8/while/lstm_cell_8/MatMul_1:product:0)lstm_8/while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/BiasAdd_1?
"lstm_8/while/lstm_cell_8/BiasAdd_2BiasAdd+lstm_8/while/lstm_cell_8/MatMul_2:product:0)lstm_8/while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/BiasAdd_2?
"lstm_8/while/lstm_cell_8/BiasAdd_3BiasAdd+lstm_8/while/lstm_cell_8/MatMul_3:product:0)lstm_8/while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/BiasAdd_3?
lstm_8/while/lstm_cell_8/mulMullstm_8_while_placeholder_2*lstm_8/while/lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/while/lstm_cell_8/mul?
lstm_8/while/lstm_cell_8/mul_1Mullstm_8_while_placeholder_2,lstm_8/while/lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_1?
lstm_8/while/lstm_cell_8/mul_2Mullstm_8_while_placeholder_2,lstm_8/while/lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_2?
lstm_8/while/lstm_cell_8/mul_3Mullstm_8_while_placeholder_2,lstm_8/while/lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_3?
'lstm_8/while/lstm_cell_8/ReadVariableOpReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm_8/while/lstm_cell_8/ReadVariableOp?
,lstm_8/while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_8/while/lstm_cell_8/strided_slice/stack?
.lstm_8/while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_8/while/lstm_cell_8/strided_slice/stack_1?
.lstm_8/while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_8/while/lstm_cell_8/strided_slice/stack_2?
&lstm_8/while/lstm_cell_8/strided_sliceStridedSlice/lstm_8/while/lstm_cell_8/ReadVariableOp:value:05lstm_8/while/lstm_cell_8/strided_slice/stack:output:07lstm_8/while/lstm_cell_8/strided_slice/stack_1:output:07lstm_8/while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_8/while/lstm_cell_8/strided_slice?
!lstm_8/while/lstm_cell_8/MatMul_4MatMul lstm_8/while/lstm_cell_8/mul:z:0/lstm_8/while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_4?
lstm_8/while/lstm_cell_8/addAddV2)lstm_8/while/lstm_cell_8/BiasAdd:output:0+lstm_8/while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/while/lstm_cell_8/add?
 lstm_8/while/lstm_cell_8/SigmoidSigmoid lstm_8/while/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/while/lstm_cell_8/Sigmoid?
)lstm_8/while/lstm_cell_8/ReadVariableOp_1ReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_8/while/lstm_cell_8/ReadVariableOp_1?
.lstm_8/while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_8/while/lstm_cell_8/strided_slice_1/stack?
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_1?
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_2?
(lstm_8/while/lstm_cell_8/strided_slice_1StridedSlice1lstm_8/while/lstm_cell_8/ReadVariableOp_1:value:07lstm_8/while/lstm_cell_8/strided_slice_1/stack:output:09lstm_8/while/lstm_cell_8/strided_slice_1/stack_1:output:09lstm_8/while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_8/while/lstm_cell_8/strided_slice_1?
!lstm_8/while/lstm_cell_8/MatMul_5MatMul"lstm_8/while/lstm_cell_8/mul_1:z:01lstm_8/while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_5?
lstm_8/while/lstm_cell_8/add_1AddV2+lstm_8/while/lstm_cell_8/BiasAdd_1:output:0+lstm_8/while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_1?
"lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid"lstm_8/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/Sigmoid_1?
lstm_8/while/lstm_cell_8/mul_4Mul&lstm_8/while/lstm_cell_8/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_4?
)lstm_8/while/lstm_cell_8/ReadVariableOp_2ReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_8/while/lstm_cell_8/ReadVariableOp_2?
.lstm_8/while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_8/while/lstm_cell_8/strided_slice_2/stack?
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_1?
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_2?
(lstm_8/while/lstm_cell_8/strided_slice_2StridedSlice1lstm_8/while/lstm_cell_8/ReadVariableOp_2:value:07lstm_8/while/lstm_cell_8/strided_slice_2/stack:output:09lstm_8/while/lstm_cell_8/strided_slice_2/stack_1:output:09lstm_8/while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_8/while/lstm_cell_8/strided_slice_2?
!lstm_8/while/lstm_cell_8/MatMul_6MatMul"lstm_8/while/lstm_cell_8/mul_2:z:01lstm_8/while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_6?
lstm_8/while/lstm_cell_8/add_2AddV2+lstm_8/while/lstm_cell_8/BiasAdd_2:output:0+lstm_8/while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_2?
lstm_8/while/lstm_cell_8/ReluRelu"lstm_8/while/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/while/lstm_cell_8/Relu?
lstm_8/while/lstm_cell_8/mul_5Mul$lstm_8/while/lstm_cell_8/Sigmoid:y:0+lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_5?
lstm_8/while/lstm_cell_8/add_3AddV2"lstm_8/while/lstm_cell_8/mul_4:z:0"lstm_8/while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_3?
)lstm_8/while/lstm_cell_8/ReadVariableOp_3ReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_8/while/lstm_cell_8/ReadVariableOp_3?
.lstm_8/while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_8/while/lstm_cell_8/strided_slice_3/stack?
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_1?
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_2?
(lstm_8/while/lstm_cell_8/strided_slice_3StridedSlice1lstm_8/while/lstm_cell_8/ReadVariableOp_3:value:07lstm_8/while/lstm_cell_8/strided_slice_3/stack:output:09lstm_8/while/lstm_cell_8/strided_slice_3/stack_1:output:09lstm_8/while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_8/while/lstm_cell_8/strided_slice_3?
!lstm_8/while/lstm_cell_8/MatMul_7MatMul"lstm_8/while/lstm_cell_8/mul_3:z:01lstm_8/while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_7?
lstm_8/while/lstm_cell_8/add_4AddV2+lstm_8/while/lstm_cell_8/BiasAdd_3:output:0+lstm_8/while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_4?
"lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid"lstm_8/while/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/Sigmoid_2?
lstm_8/while/lstm_cell_8/Relu_1Relu"lstm_8/while/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_8/while/lstm_cell_8/Relu_1?
lstm_8/while/lstm_cell_8/mul_6Mul&lstm_8/while/lstm_cell_8/Sigmoid_2:y:0-lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_6?
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1lstm_8_while_placeholder"lstm_8/while/lstm_cell_8/mul_6:z:0*
_output_shapes
: *
element_dtype023
1lstm_8/while/TensorArrayV2Write/TensorListSetItemj
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_8/while/add/y?
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_8/while/addn
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_8/while/add_1/y?
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_8/while/add_1?
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity?
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity_1?
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity_2?
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity_3?
lstm_8/while/Identity_4Identity"lstm_8/while/lstm_cell_8/mul_6:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_8/while/Identity_4?
lstm_8/while/Identity_5Identity"lstm_8/while/lstm_cell_8/add_3:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_8/while/Identity_5?
lstm_8/while/NoOpNoOp(^lstm_8/while/lstm_cell_8/ReadVariableOp*^lstm_8/while/lstm_cell_8/ReadVariableOp_1*^lstm_8/while/lstm_cell_8/ReadVariableOp_2*^lstm_8/while/lstm_cell_8/ReadVariableOp_3.^lstm_8/while/lstm_cell_8/split/ReadVariableOp0^lstm_8/while/lstm_cell_8/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_8/while/NoOp"7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"f
0lstm_8_while_lstm_cell_8_readvariableop_resource2lstm_8_while_lstm_cell_8_readvariableop_resource_0"v
8lstm_8_while_lstm_cell_8_split_1_readvariableop_resource:lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0"r
6lstm_8_while_lstm_cell_8_split_readvariableop_resource8lstm_8_while_lstm_cell_8_split_readvariableop_resource_0"?
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'lstm_8/while/lstm_cell_8/ReadVariableOp'lstm_8/while/lstm_cell_8/ReadVariableOp2V
)lstm_8/while/lstm_cell_8/ReadVariableOp_1)lstm_8/while/lstm_cell_8/ReadVariableOp_12V
)lstm_8/while/lstm_cell_8/ReadVariableOp_2)lstm_8/while/lstm_cell_8/ReadVariableOp_22V
)lstm_8/while/lstm_cell_8/ReadVariableOp_3)lstm_8/while/lstm_cell_8/ReadVariableOp_32^
-lstm_8/while/lstm_cell_8/split/ReadVariableOp-lstm_8/while/lstm_cell_8/split/ReadVariableOp2b
/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp: 
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
$__inference_signature_wrapper_220519
input_5
unknown:
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	 ?
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2187752
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
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_5
ϐ
?
lstm_8_while_body_220676*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_8_while_lstm_cell_8_split_readvariableop_resource_0:	?I
:lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0:	?E
2lstm_8_while_lstm_cell_8_readvariableop_resource_0:	 ?
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorI
6lstm_8_while_lstm_cell_8_split_readvariableop_resource:	?G
8lstm_8_while_lstm_cell_8_split_1_readvariableop_resource:	?C
0lstm_8_while_lstm_cell_8_readvariableop_resource:	 ???'lstm_8/while/lstm_cell_8/ReadVariableOp?)lstm_8/while/lstm_cell_8/ReadVariableOp_1?)lstm_8/while/lstm_cell_8/ReadVariableOp_2?)lstm_8/while/lstm_cell_8/ReadVariableOp_3?-lstm_8/while/lstm_cell_8/split/ReadVariableOp?/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp?
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_8/while/TensorArrayV2Read/TensorListGetItem?
(lstm_8/while/lstm_cell_8/ones_like/ShapeShapelstm_8_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_8/while/lstm_cell_8/ones_like/Shape?
(lstm_8/while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_8/while/lstm_cell_8/ones_like/Const?
"lstm_8/while/lstm_cell_8/ones_likeFill1lstm_8/while/lstm_cell_8/ones_like/Shape:output:01lstm_8/while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/ones_like?
(lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_8/while/lstm_cell_8/split/split_dim?
-lstm_8/while/lstm_cell_8/split/ReadVariableOpReadVariableOp8lstm_8_while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02/
-lstm_8/while/lstm_cell_8/split/ReadVariableOp?
lstm_8/while/lstm_cell_8/splitSplit1lstm_8/while/lstm_cell_8/split/split_dim:output:05lstm_8/while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_8/while/lstm_cell_8/split?
lstm_8/while/lstm_cell_8/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2!
lstm_8/while/lstm_cell_8/MatMul?
!lstm_8/while/lstm_cell_8/MatMul_1MatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_1?
!lstm_8/while/lstm_cell_8/MatMul_2MatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_2?
!lstm_8/while/lstm_cell_8/MatMul_3MatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_8/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_3?
*lstm_8/while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_8/while/lstm_cell_8/split_1/split_dim?
/lstm_8/while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp?
 lstm_8/while/lstm_cell_8/split_1Split3lstm_8/while/lstm_cell_8/split_1/split_dim:output:07lstm_8/while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2"
 lstm_8/while/lstm_cell_8/split_1?
 lstm_8/while/lstm_cell_8/BiasAddBiasAdd)lstm_8/while/lstm_cell_8/MatMul:product:0)lstm_8/while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/while/lstm_cell_8/BiasAdd?
"lstm_8/while/lstm_cell_8/BiasAdd_1BiasAdd+lstm_8/while/lstm_cell_8/MatMul_1:product:0)lstm_8/while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/BiasAdd_1?
"lstm_8/while/lstm_cell_8/BiasAdd_2BiasAdd+lstm_8/while/lstm_cell_8/MatMul_2:product:0)lstm_8/while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/BiasAdd_2?
"lstm_8/while/lstm_cell_8/BiasAdd_3BiasAdd+lstm_8/while/lstm_cell_8/MatMul_3:product:0)lstm_8/while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/BiasAdd_3?
lstm_8/while/lstm_cell_8/mulMullstm_8_while_placeholder_2+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_8/while/lstm_cell_8/mul?
lstm_8/while/lstm_cell_8/mul_1Mullstm_8_while_placeholder_2+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_1?
lstm_8/while/lstm_cell_8/mul_2Mullstm_8_while_placeholder_2+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_2?
lstm_8/while/lstm_cell_8/mul_3Mullstm_8_while_placeholder_2+lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_3?
'lstm_8/while/lstm_cell_8/ReadVariableOpReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm_8/while/lstm_cell_8/ReadVariableOp?
,lstm_8/while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_8/while/lstm_cell_8/strided_slice/stack?
.lstm_8/while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_8/while/lstm_cell_8/strided_slice/stack_1?
.lstm_8/while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_8/while/lstm_cell_8/strided_slice/stack_2?
&lstm_8/while/lstm_cell_8/strided_sliceStridedSlice/lstm_8/while/lstm_cell_8/ReadVariableOp:value:05lstm_8/while/lstm_cell_8/strided_slice/stack:output:07lstm_8/while/lstm_cell_8/strided_slice/stack_1:output:07lstm_8/while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_8/while/lstm_cell_8/strided_slice?
!lstm_8/while/lstm_cell_8/MatMul_4MatMul lstm_8/while/lstm_cell_8/mul:z:0/lstm_8/while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_4?
lstm_8/while/lstm_cell_8/addAddV2)lstm_8/while/lstm_cell_8/BiasAdd:output:0+lstm_8/while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_8/while/lstm_cell_8/add?
 lstm_8/while/lstm_cell_8/SigmoidSigmoid lstm_8/while/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_8/while/lstm_cell_8/Sigmoid?
)lstm_8/while/lstm_cell_8/ReadVariableOp_1ReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_8/while/lstm_cell_8/ReadVariableOp_1?
.lstm_8/while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_8/while/lstm_cell_8/strided_slice_1/stack?
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_1?
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_8/while/lstm_cell_8/strided_slice_1/stack_2?
(lstm_8/while/lstm_cell_8/strided_slice_1StridedSlice1lstm_8/while/lstm_cell_8/ReadVariableOp_1:value:07lstm_8/while/lstm_cell_8/strided_slice_1/stack:output:09lstm_8/while/lstm_cell_8/strided_slice_1/stack_1:output:09lstm_8/while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_8/while/lstm_cell_8/strided_slice_1?
!lstm_8/while/lstm_cell_8/MatMul_5MatMul"lstm_8/while/lstm_cell_8/mul_1:z:01lstm_8/while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_5?
lstm_8/while/lstm_cell_8/add_1AddV2+lstm_8/while/lstm_cell_8/BiasAdd_1:output:0+lstm_8/while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_1?
"lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid"lstm_8/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/Sigmoid_1?
lstm_8/while/lstm_cell_8/mul_4Mul&lstm_8/while/lstm_cell_8/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_4?
)lstm_8/while/lstm_cell_8/ReadVariableOp_2ReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_8/while/lstm_cell_8/ReadVariableOp_2?
.lstm_8/while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_8/while/lstm_cell_8/strided_slice_2/stack?
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_1?
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_8/while/lstm_cell_8/strided_slice_2/stack_2?
(lstm_8/while/lstm_cell_8/strided_slice_2StridedSlice1lstm_8/while/lstm_cell_8/ReadVariableOp_2:value:07lstm_8/while/lstm_cell_8/strided_slice_2/stack:output:09lstm_8/while/lstm_cell_8/strided_slice_2/stack_1:output:09lstm_8/while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_8/while/lstm_cell_8/strided_slice_2?
!lstm_8/while/lstm_cell_8/MatMul_6MatMul"lstm_8/while/lstm_cell_8/mul_2:z:01lstm_8/while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_6?
lstm_8/while/lstm_cell_8/add_2AddV2+lstm_8/while/lstm_cell_8/BiasAdd_2:output:0+lstm_8/while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_2?
lstm_8/while/lstm_cell_8/ReluRelu"lstm_8/while/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_8/while/lstm_cell_8/Relu?
lstm_8/while/lstm_cell_8/mul_5Mul$lstm_8/while/lstm_cell_8/Sigmoid:y:0+lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_5?
lstm_8/while/lstm_cell_8/add_3AddV2"lstm_8/while/lstm_cell_8/mul_4:z:0"lstm_8/while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_3?
)lstm_8/while/lstm_cell_8/ReadVariableOp_3ReadVariableOp2lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_8/while/lstm_cell_8/ReadVariableOp_3?
.lstm_8/while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_8/while/lstm_cell_8/strided_slice_3/stack?
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_1?
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_8/while/lstm_cell_8/strided_slice_3/stack_2?
(lstm_8/while/lstm_cell_8/strided_slice_3StridedSlice1lstm_8/while/lstm_cell_8/ReadVariableOp_3:value:07lstm_8/while/lstm_cell_8/strided_slice_3/stack:output:09lstm_8/while/lstm_cell_8/strided_slice_3/stack_1:output:09lstm_8/while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_8/while/lstm_cell_8/strided_slice_3?
!lstm_8/while/lstm_cell_8/MatMul_7MatMul"lstm_8/while/lstm_cell_8/mul_3:z:01lstm_8/while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_8/while/lstm_cell_8/MatMul_7?
lstm_8/while/lstm_cell_8/add_4AddV2+lstm_8/while/lstm_cell_8/BiasAdd_3:output:0+lstm_8/while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/add_4?
"lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid"lstm_8/while/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_8/while/lstm_cell_8/Sigmoid_2?
lstm_8/while/lstm_cell_8/Relu_1Relu"lstm_8/while/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_8/while/lstm_cell_8/Relu_1?
lstm_8/while/lstm_cell_8/mul_6Mul&lstm_8/while/lstm_cell_8/Sigmoid_2:y:0-lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_8/while/lstm_cell_8/mul_6?
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1lstm_8_while_placeholder"lstm_8/while/lstm_cell_8/mul_6:z:0*
_output_shapes
: *
element_dtype023
1lstm_8/while/TensorArrayV2Write/TensorListSetItemj
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_8/while/add/y?
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_8/while/addn
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_8/while/add_1/y?
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_8/while/add_1?
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity?
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity_1?
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity_2?
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: 2
lstm_8/while/Identity_3?
lstm_8/while/Identity_4Identity"lstm_8/while/lstm_cell_8/mul_6:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_8/while/Identity_4?
lstm_8/while/Identity_5Identity"lstm_8/while/lstm_cell_8/add_3:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_8/while/Identity_5?
lstm_8/while/NoOpNoOp(^lstm_8/while/lstm_cell_8/ReadVariableOp*^lstm_8/while/lstm_cell_8/ReadVariableOp_1*^lstm_8/while/lstm_cell_8/ReadVariableOp_2*^lstm_8/while/lstm_cell_8/ReadVariableOp_3.^lstm_8/while/lstm_cell_8/split/ReadVariableOp0^lstm_8/while/lstm_cell_8/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_8/while/NoOp"7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"f
0lstm_8_while_lstm_cell_8_readvariableop_resource2lstm_8_while_lstm_cell_8_readvariableop_resource_0"v
8lstm_8_while_lstm_cell_8_split_1_readvariableop_resource:lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0"r
6lstm_8_while_lstm_cell_8_split_readvariableop_resource8lstm_8_while_lstm_cell_8_split_readvariableop_resource_0"?
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'lstm_8/while/lstm_cell_8/ReadVariableOp'lstm_8/while/lstm_cell_8/ReadVariableOp2V
)lstm_8/while/lstm_cell_8/ReadVariableOp_1)lstm_8/while/lstm_cell_8/ReadVariableOp_12V
)lstm_8/while/lstm_cell_8/ReadVariableOp_2)lstm_8/while/lstm_cell_8/ReadVariableOp_22V
)lstm_8/while/lstm_cell_8/ReadVariableOp_3)lstm_8/while/lstm_cell_8/ReadVariableOp_32^
-lstm_8/while/lstm_cell_8/split/ReadVariableOp-lstm_8/while/lstm_cell_8/split/ReadVariableOp2b
/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp: 
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
-__inference_sequential_4_layer_call_fn_221230

inputs
unknown:
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	 ?
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_2199282
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
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?(
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_220449
input_5*
layer_normalization_6_220419:*
layer_normalization_6_220421: 
lstm_8_220424:	?
lstm_8_220426:	? 
lstm_8_220428:	 ?!
dense_12_220431:  
dense_12_220433: !
dense_13_220436: 
dense_13_220438:
identity?? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall?-layer_normalization_6/StatefulPartitionedCall?lstm_8/StatefulPartitionedCall?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCallinput_5layer_normalization_6_220419layer_normalization_6_220421*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2196172/
-layer_normalization_6/StatefulPartitionedCall?
lstm_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0lstm_8_220424lstm_8_220426lstm_8_220428*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2198652 
lstm_8/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_12_220431dense_12_220433*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2198842"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_220436dense_13_220438*
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
D__inference_dense_13_layer_call_and_return_conditional_losses_2199002"
 dense_13/StatefulPartitionedCall?
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2199192
reshape_6/PartitionedCall?
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_8_220424*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/mul?
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_5
?
a
E__inference_reshape_6_layer_call_and_return_conditional_losses_219919

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
?v
?
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_219132

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
 *UU??2
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
 *UU??2
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
seed2??{2(
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
 *UU??2
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
seed???)*
seed2??A2(
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
 *UU??2
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
while_cond_221978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_221978___redundant_placeholder04
0while_while_cond_221978___redundant_placeholder14
0while_while_cond_221978___redundant_placeholder24
0while_while_cond_221978___redundant_placeholder3
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
while_body_221979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_8_split_readvariableop_resource_0:	?B
3while_lstm_cell_8_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_8_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_8_split_readvariableop_resource:	?@
1while_lstm_cell_8_split_1_readvariableop_resource:	?<
)while_lstm_cell_8_readvariableop_resource:	 ??? while/lstm_cell_8/ReadVariableOp?"while/lstm_cell_8/ReadVariableOp_1?"while/lstm_cell_8/ReadVariableOp_2?"while/lstm_cell_8/ReadVariableOp_3?&while/lstm_cell_8/split/ReadVariableOp?(while/lstm_cell_8/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_8/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_8/ones_like/Shape?
!while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_8/ones_like/Const?
while/lstm_cell_8/ones_likeFill*while/lstm_cell_8/ones_like/Shape:output:0*while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/ones_like?
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_8/split/split_dim?
&while/lstm_cell_8/split/ReadVariableOpReadVariableOp1while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_8/split/ReadVariableOp?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0.while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_8/split?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul?
while/lstm_cell_8/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_1?
while/lstm_cell_8/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_2?
while/lstm_cell_8/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_3?
#while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_8/split_1/split_dim?
(while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_8/split_1/ReadVariableOp?
while/lstm_cell_8/split_1Split,while/lstm_cell_8/split_1/split_dim:output:00while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_8/split_1?
while/lstm_cell_8/BiasAddBiasAdd"while/lstm_cell_8/MatMul:product:0"while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd?
while/lstm_cell_8/BiasAdd_1BiasAdd$while/lstm_cell_8/MatMul_1:product:0"while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_1?
while/lstm_cell_8/BiasAdd_2BiasAdd$while/lstm_cell_8/MatMul_2:product:0"while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_2?
while/lstm_cell_8/BiasAdd_3BiasAdd$while/lstm_cell_8/MatMul_3:product:0"while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_3?
while/lstm_cell_8/mulMulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul?
while/lstm_cell_8/mul_1Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_1?
while/lstm_cell_8/mul_2Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_2?
while/lstm_cell_8/mul_3Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_3?
 while/lstm_cell_8/ReadVariableOpReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_8/ReadVariableOp?
%while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_8/strided_slice/stack?
'while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice/stack_1?
'while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_8/strided_slice/stack_2?
while/lstm_cell_8/strided_sliceStridedSlice(while/lstm_cell_8/ReadVariableOp:value:0.while/lstm_cell_8/strided_slice/stack:output:00while/lstm_cell_8/strided_slice/stack_1:output:00while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_8/strided_slice?
while/lstm_cell_8/MatMul_4MatMulwhile/lstm_cell_8/mul:z:0(while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_4?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/BiasAdd:output:0$while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add?
while/lstm_cell_8/SigmoidSigmoidwhile/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid?
"while/lstm_cell_8/ReadVariableOp_1ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_1?
'while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice_1/stack?
)while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_8/strided_slice_1/stack_1?
)while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_1/stack_2?
!while/lstm_cell_8/strided_slice_1StridedSlice*while/lstm_cell_8/ReadVariableOp_1:value:00while/lstm_cell_8/strided_slice_1/stack:output:02while/lstm_cell_8/strided_slice_1/stack_1:output:02while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_1?
while/lstm_cell_8/MatMul_5MatMulwhile/lstm_cell_8/mul_1:z:0*while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_5?
while/lstm_cell_8/add_1AddV2$while/lstm_cell_8/BiasAdd_1:output:0$while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_1?
while/lstm_cell_8/Sigmoid_1Sigmoidwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_1?
while/lstm_cell_8/mul_4Mulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_4?
"while/lstm_cell_8/ReadVariableOp_2ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_2?
'while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_8/strided_slice_2/stack?
)while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_8/strided_slice_2/stack_1?
)while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_2/stack_2?
!while/lstm_cell_8/strided_slice_2StridedSlice*while/lstm_cell_8/ReadVariableOp_2:value:00while/lstm_cell_8/strided_slice_2/stack:output:02while/lstm_cell_8/strided_slice_2/stack_1:output:02while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_2?
while/lstm_cell_8/MatMul_6MatMulwhile/lstm_cell_8/mul_2:z:0*while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_6?
while/lstm_cell_8/add_2AddV2$while/lstm_cell_8/BiasAdd_2:output:0$while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_2?
while/lstm_cell_8/ReluReluwhile/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu?
while/lstm_cell_8/mul_5Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_5?
while/lstm_cell_8/add_3AddV2while/lstm_cell_8/mul_4:z:0while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_3?
"while/lstm_cell_8/ReadVariableOp_3ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_3?
'while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_8/strided_slice_3/stack?
)while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_8/strided_slice_3/stack_1?
)while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_3/stack_2?
!while/lstm_cell_8/strided_slice_3StridedSlice*while/lstm_cell_8/ReadVariableOp_3:value:00while/lstm_cell_8/strided_slice_3/stack:output:02while/lstm_cell_8/strided_slice_3/stack_1:output:02while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_3?
while/lstm_cell_8/MatMul_7MatMulwhile/lstm_cell_8/mul_3:z:0*while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_7?
while/lstm_cell_8/add_4AddV2$while/lstm_cell_8/BiasAdd_3:output:0$while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_4?
while/lstm_cell_8/Sigmoid_2Sigmoidwhile/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_2?
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu_1?
while/lstm_cell_8/mul_6Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_8/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_8/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_8/ReadVariableOp#^while/lstm_cell_8/ReadVariableOp_1#^while/lstm_cell_8/ReadVariableOp_2#^while/lstm_cell_8/ReadVariableOp_3'^while/lstm_cell_8/split/ReadVariableOp)^while/lstm_cell_8/split_1/ReadVariableOp*"
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
)while_lstm_cell_8_readvariableop_resource+while_lstm_cell_8_readvariableop_resource_0"h
1while_lstm_cell_8_split_1_readvariableop_resource3while_lstm_cell_8_split_1_readvariableop_resource_0"d
/while_lstm_cell_8_split_readvariableop_resource1while_lstm_cell_8_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_8/ReadVariableOp while/lstm_cell_8/ReadVariableOp2H
"while/lstm_cell_8/ReadVariableOp_1"while/lstm_cell_8/ReadVariableOp_12H
"while/lstm_cell_8/ReadVariableOp_2"while/lstm_cell_8/ReadVariableOp_22H
"while/lstm_cell_8/ReadVariableOp_3"while/lstm_cell_8/ReadVariableOp_32P
&while/lstm_cell_8/split/ReadVariableOp&while/lstm_cell_8/split/ReadVariableOp2T
(while/lstm_cell_8/split_1/ReadVariableOp(while/lstm_cell_8/split_1/ReadVariableOp: 
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
?(
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_220372

inputs*
layer_normalization_6_220342:*
layer_normalization_6_220344: 
lstm_8_220347:	?
lstm_8_220349:	? 
lstm_8_220351:	 ?!
dense_12_220354:  
dense_12_220356: !
dense_13_220359: 
dense_13_220361:
identity?? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall?-layer_normalization_6/StatefulPartitionedCall?lstm_8/StatefulPartitionedCall?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCallinputslayer_normalization_6_220342layer_normalization_6_220344*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2196172/
-layer_normalization_6/StatefulPartitionedCall?
lstm_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0lstm_8_220347lstm_8_220349lstm_8_220351*
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2202952 
lstm_8/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0dense_12_220354dense_12_220356*
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
D__inference_dense_12_layer_call_and_return_conditional_losses_2198842"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_220359dense_13_220361*
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
D__inference_dense_13_layer_call_and_return_conditional_losses_2199002"
 dense_13/StatefulPartitionedCall?
reshape_6/PartitionedCallPartitionedCall)dense_13/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_reshape_6_layer_call_and_return_conditional_losses_2199192
reshape_6/PartitionedCall?
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_8_220347*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/mul?
IdentityIdentity"reshape_6/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_222765W
Dlstm_8_lstm_cell_8_kernel_regularizer_square_readvariableop_resource:	?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpDlstm_8_lstm_cell_8_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/mulw
IdentityIdentity-lstm_8/lstm_cell_8/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp
?

?
D__inference_dense_13_layer_call_and_return_conditional_losses_222493

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
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
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

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
ן
?
B__inference_lstm_8_layer_call_and_return_conditional_losses_219865

inputs<
)lstm_cell_8_split_readvariableop_resource:	?:
+lstm_cell_8_split_1_readvariableop_resource:	?6
#lstm_cell_8_readvariableop_resource:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_8/ReadVariableOp?lstm_cell_8/ReadVariableOp_1?lstm_cell_8/ReadVariableOp_2?lstm_cell_8/ReadVariableOp_3? lstm_cell_8/split/ReadVariableOp?"lstm_cell_8/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_8/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_8/ones_like/Shape
lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_8/ones_like/Const?
lstm_cell_8/ones_likeFill$lstm_cell_8/ones_like/Shape:output:0$lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/ones_like|
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_8/split/split_dim?
 lstm_cell_8/split/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_8/split/ReadVariableOp?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0(lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_8/split?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul?
lstm_cell_8/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_1?
lstm_cell_8/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_2?
lstm_cell_8/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_3?
lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_8/split_1/split_dim?
"lstm_cell_8/split_1/ReadVariableOpReadVariableOp+lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_8/split_1/ReadVariableOp?
lstm_cell_8/split_1Split&lstm_cell_8/split_1/split_dim:output:0*lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_8/split_1?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/MatMul:product:0lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd?
lstm_cell_8/BiasAdd_1BiasAddlstm_cell_8/MatMul_1:product:0lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_1?
lstm_cell_8/BiasAdd_2BiasAddlstm_cell_8/MatMul_2:product:0lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_2?
lstm_cell_8/BiasAdd_3BiasAddlstm_cell_8/MatMul_3:product:0lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_3?
lstm_cell_8/mulMulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul?
lstm_cell_8/mul_1Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_1?
lstm_cell_8/mul_2Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_2?
lstm_cell_8/mul_3Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_3?
lstm_cell_8/ReadVariableOpReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp?
lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_8/strided_slice/stack?
!lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice/stack_1?
!lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_8/strided_slice/stack_2?
lstm_cell_8/strided_sliceStridedSlice"lstm_cell_8/ReadVariableOp:value:0(lstm_cell_8/strided_slice/stack:output:0*lstm_cell_8/strided_slice/stack_1:output:0*lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice?
lstm_cell_8/MatMul_4MatMullstm_cell_8/mul:z:0"lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_4?
lstm_cell_8/addAddV2lstm_cell_8/BiasAdd:output:0lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add|
lstm_cell_8/SigmoidSigmoidlstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid?
lstm_cell_8/ReadVariableOp_1ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_1?
!lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice_1/stack?
#lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_8/strided_slice_1/stack_1?
#lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_1/stack_2?
lstm_cell_8/strided_slice_1StridedSlice$lstm_cell_8/ReadVariableOp_1:value:0*lstm_cell_8/strided_slice_1/stack:output:0,lstm_cell_8/strided_slice_1/stack_1:output:0,lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_1?
lstm_cell_8/MatMul_5MatMullstm_cell_8/mul_1:z:0$lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_5?
lstm_cell_8/add_1AddV2lstm_cell_8/BiasAdd_1:output:0lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_1?
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_1?
lstm_cell_8/mul_4Mullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_4?
lstm_cell_8/ReadVariableOp_2ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_2?
!lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_8/strided_slice_2/stack?
#lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_8/strided_slice_2/stack_1?
#lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_2/stack_2?
lstm_cell_8/strided_slice_2StridedSlice$lstm_cell_8/ReadVariableOp_2:value:0*lstm_cell_8/strided_slice_2/stack:output:0,lstm_cell_8/strided_slice_2/stack_1:output:0,lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_2?
lstm_cell_8/MatMul_6MatMullstm_cell_8/mul_2:z:0$lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_6?
lstm_cell_8/add_2AddV2lstm_cell_8/BiasAdd_2:output:0lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_2u
lstm_cell_8/ReluRelulstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu?
lstm_cell_8/mul_5Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_5?
lstm_cell_8/add_3AddV2lstm_cell_8/mul_4:z:0lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_3?
lstm_cell_8/ReadVariableOp_3ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_3?
!lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_8/strided_slice_3/stack?
#lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_8/strided_slice_3/stack_1?
#lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_3/stack_2?
lstm_cell_8/strided_slice_3StridedSlice$lstm_cell_8/ReadVariableOp_3:value:0*lstm_cell_8/strided_slice_3/stack:output:0,lstm_cell_8/strided_slice_3/stack_1:output:0,lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_3?
lstm_cell_8/MatMul_7MatMullstm_cell_8/mul_3:z:0$lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_7?
lstm_cell_8/add_4AddV2lstm_cell_8/BiasAdd_3:output:0lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_4?
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_2y
lstm_cell_8/Relu_1Relulstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu_1?
lstm_cell_8/mul_6Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_8_split_readvariableop_resource+lstm_cell_8_split_1_readvariableop_resource#lstm_cell_8_readvariableop_resource*
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
while_body_219732*
condR
while_cond_219731*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_8/ReadVariableOp^lstm_cell_8/ReadVariableOp_1^lstm_cell_8/ReadVariableOp_2^lstm_cell_8/ReadVariableOp_3!^lstm_cell_8/split/ReadVariableOp#^lstm_cell_8/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_8/ReadVariableOplstm_cell_8/ReadVariableOp2<
lstm_cell_8/ReadVariableOp_1lstm_cell_8/ReadVariableOp_12<
lstm_cell_8/ReadVariableOp_2lstm_cell_8/ReadVariableOp_22<
lstm_cell_8/ReadVariableOp_3lstm_cell_8/ReadVariableOp_32D
 lstm_cell_8/split/ReadVariableOp lstm_cell_8/split/ReadVariableOp2H
"lstm_cell_8/split_1/ReadVariableOp"lstm_cell_8/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_222253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_222253___redundant_placeholder04
0while_while_cond_222253___redundant_placeholder14
0while_while_cond_222253___redundant_placeholder24
0while_while_cond_222253___redundant_placeholder3
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
lstm_8_while_cond_220675*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1B
>lstm_8_while_lstm_8_while_cond_220675___redundant_placeholder0B
>lstm_8_while_lstm_8_while_cond_220675___redundant_placeholder1B
>lstm_8_while_lstm_8_while_cond_220675___redundant_placeholder2B
>lstm_8_while_lstm_8_while_cond_220675___redundant_placeholder3
lstm_8_while_identity
?
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: 2
lstm_8/while/Lessr
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_8/while/Identity"7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
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
?
%sequential_4_lstm_8_while_body_218626D
@sequential_4_lstm_8_while_sequential_4_lstm_8_while_loop_counterJ
Fsequential_4_lstm_8_while_sequential_4_lstm_8_while_maximum_iterations)
%sequential_4_lstm_8_while_placeholder+
'sequential_4_lstm_8_while_placeholder_1+
'sequential_4_lstm_8_while_placeholder_2+
'sequential_4_lstm_8_while_placeholder_3C
?sequential_4_lstm_8_while_sequential_4_lstm_8_strided_slice_1_0
{sequential_4_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_8_tensorarrayunstack_tensorlistfromtensor_0X
Esequential_4_lstm_8_while_lstm_cell_8_split_readvariableop_resource_0:	?V
Gsequential_4_lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0:	?R
?sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource_0:	 ?&
"sequential_4_lstm_8_while_identity(
$sequential_4_lstm_8_while_identity_1(
$sequential_4_lstm_8_while_identity_2(
$sequential_4_lstm_8_while_identity_3(
$sequential_4_lstm_8_while_identity_4(
$sequential_4_lstm_8_while_identity_5A
=sequential_4_lstm_8_while_sequential_4_lstm_8_strided_slice_1}
ysequential_4_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_8_tensorarrayunstack_tensorlistfromtensorV
Csequential_4_lstm_8_while_lstm_cell_8_split_readvariableop_resource:	?T
Esequential_4_lstm_8_while_lstm_cell_8_split_1_readvariableop_resource:	?P
=sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource:	 ???4sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp?6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_1?6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_2?6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_3?:sequential_4/lstm_8/while/lstm_cell_8/split/ReadVariableOp?<sequential_4/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp?
Ksequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_4_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_8_tensorarrayunstack_tensorlistfromtensor_0%sequential_4_lstm_8_while_placeholderTsequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02?
=sequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem?
5sequential_4/lstm_8/while/lstm_cell_8/ones_like/ShapeShape'sequential_4_lstm_8_while_placeholder_2*
T0*
_output_shapes
:27
5sequential_4/lstm_8/while/lstm_cell_8/ones_like/Shape?
5sequential_4/lstm_8/while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5sequential_4/lstm_8/while/lstm_cell_8/ones_like/Const?
/sequential_4/lstm_8/while/lstm_cell_8/ones_likeFill>sequential_4/lstm_8/while/lstm_cell_8/ones_like/Shape:output:0>sequential_4/lstm_8/while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_4/lstm_8/while/lstm_cell_8/ones_like?
5sequential_4/lstm_8/while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_4/lstm_8/while/lstm_cell_8/split/split_dim?
:sequential_4/lstm_8/while/lstm_cell_8/split/ReadVariableOpReadVariableOpEsequential_4_lstm_8_while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02<
:sequential_4/lstm_8/while/lstm_cell_8/split/ReadVariableOp?
+sequential_4/lstm_8/while/lstm_cell_8/splitSplit>sequential_4/lstm_8/while/lstm_cell_8/split/split_dim:output:0Bsequential_4/lstm_8/while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2-
+sequential_4/lstm_8/while/lstm_cell_8/split?
,sequential_4/lstm_8/while/lstm_cell_8/MatMulMatMulDsequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_4/lstm_8/while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_4/lstm_8/while/lstm_cell_8/MatMul?
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_1MatMulDsequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_4/lstm_8/while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 20
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_1?
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_2MatMulDsequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_4/lstm_8/while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 20
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_2?
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_3MatMulDsequential_4/lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_4/lstm_8/while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 20
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_3?
7sequential_4/lstm_8/while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_4/lstm_8/while/lstm_cell_8/split_1/split_dim?
<sequential_4/lstm_8/while/lstm_cell_8/split_1/ReadVariableOpReadVariableOpGsequential_4_lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_4/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp?
-sequential_4/lstm_8/while/lstm_cell_8/split_1Split@sequential_4/lstm_8/while/lstm_cell_8/split_1/split_dim:output:0Dsequential_4/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2/
-sequential_4/lstm_8/while/lstm_cell_8/split_1?
-sequential_4/lstm_8/while/lstm_cell_8/BiasAddBiasAdd6sequential_4/lstm_8/while/lstm_cell_8/MatMul:product:06sequential_4/lstm_8/while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2/
-sequential_4/lstm_8/while/lstm_cell_8/BiasAdd?
/sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_1BiasAdd8sequential_4/lstm_8/while/lstm_cell_8/MatMul_1:product:06sequential_4/lstm_8/while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 21
/sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_1?
/sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_2BiasAdd8sequential_4/lstm_8/while/lstm_cell_8/MatMul_2:product:06sequential_4/lstm_8/while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 21
/sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_2?
/sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_3BiasAdd8sequential_4/lstm_8/while/lstm_cell_8/MatMul_3:product:06sequential_4/lstm_8/while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 21
/sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_3?
)sequential_4/lstm_8/while/lstm_cell_8/mulMul'sequential_4_lstm_8_while_placeholder_28sequential_4/lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/while/lstm_cell_8/mul?
+sequential_4/lstm_8/while/lstm_cell_8/mul_1Mul'sequential_4_lstm_8_while_placeholder_28sequential_4/lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/mul_1?
+sequential_4/lstm_8/while/lstm_cell_8/mul_2Mul'sequential_4_lstm_8_while_placeholder_28sequential_4/lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/mul_2?
+sequential_4/lstm_8/while/lstm_cell_8/mul_3Mul'sequential_4_lstm_8_while_placeholder_28sequential_4/lstm_8/while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/mul_3?
4sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOpReadVariableOp?sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp?
9sequential_4/lstm_8/while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack?
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack_1?
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack_2?
3sequential_4/lstm_8/while/lstm_cell_8/strided_sliceStridedSlice<sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp:value:0Bsequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack:output:0Dsequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack_1:output:0Dsequential_4/lstm_8/while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask25
3sequential_4/lstm_8/while/lstm_cell_8/strided_slice?
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_4MatMul-sequential_4/lstm_8/while/lstm_cell_8/mul:z:0<sequential_4/lstm_8/while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_4?
)sequential_4/lstm_8/while/lstm_cell_8/addAddV26sequential_4/lstm_8/while/lstm_cell_8/BiasAdd:output:08sequential_4/lstm_8/while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2+
)sequential_4/lstm_8/while/lstm_cell_8/add?
-sequential_4/lstm_8/while/lstm_cell_8/SigmoidSigmoid-sequential_4/lstm_8/while/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_4/lstm_8/while/lstm_cell_8/Sigmoid?
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_1ReadVariableOp?sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_1?
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack_1?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack_2?
5sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1StridedSlice>sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_1:value:0Dsequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack:output:0Fsequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack_1:output:0Fsequential_4/lstm_8/while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1?
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_5MatMul/sequential_4/lstm_8/while/lstm_cell_8/mul_1:z:0>sequential_4/lstm_8/while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_5?
+sequential_4/lstm_8/while/lstm_cell_8/add_1AddV28sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_1:output:08sequential_4/lstm_8/while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/add_1?
/sequential_4/lstm_8/while/lstm_cell_8/Sigmoid_1Sigmoid/sequential_4/lstm_8/while/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_4/lstm_8/while/lstm_cell_8/Sigmoid_1?
+sequential_4/lstm_8/while/lstm_cell_8/mul_4Mul3sequential_4/lstm_8/while/lstm_cell_8/Sigmoid_1:y:0'sequential_4_lstm_8_while_placeholder_3*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/mul_4?
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_2ReadVariableOp?sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_2?
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2=
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack_1?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack_2?
5sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2StridedSlice>sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_2:value:0Dsequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack:output:0Fsequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack_1:output:0Fsequential_4/lstm_8/while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2?
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_6MatMul/sequential_4/lstm_8/while/lstm_cell_8/mul_2:z:0>sequential_4/lstm_8/while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_6?
+sequential_4/lstm_8/while/lstm_cell_8/add_2AddV28sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_2:output:08sequential_4/lstm_8/while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/add_2?
*sequential_4/lstm_8/while/lstm_cell_8/ReluRelu/sequential_4/lstm_8/while/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_4/lstm_8/while/lstm_cell_8/Relu?
+sequential_4/lstm_8/while/lstm_cell_8/mul_5Mul1sequential_4/lstm_8/while/lstm_cell_8/Sigmoid:y:08sequential_4/lstm_8/while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/mul_5?
+sequential_4/lstm_8/while/lstm_cell_8/add_3AddV2/sequential_4/lstm_8/while/lstm_cell_8/mul_4:z:0/sequential_4/lstm_8/while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/add_3?
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_3ReadVariableOp?sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_3?
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2=
;sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack_1?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack_2?
5sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3StridedSlice>sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_3:value:0Dsequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack:output:0Fsequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack_1:output:0Fsequential_4/lstm_8/while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3?
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_7MatMul/sequential_4/lstm_8/while/lstm_cell_8/mul_3:z:0>sequential_4/lstm_8/while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_4/lstm_8/while/lstm_cell_8/MatMul_7?
+sequential_4/lstm_8/while/lstm_cell_8/add_4AddV28sequential_4/lstm_8/while/lstm_cell_8/BiasAdd_3:output:08sequential_4/lstm_8/while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/add_4?
/sequential_4/lstm_8/while/lstm_cell_8/Sigmoid_2Sigmoid/sequential_4/lstm_8/while/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_4/lstm_8/while/lstm_cell_8/Sigmoid_2?
,sequential_4/lstm_8/while/lstm_cell_8/Relu_1Relu/sequential_4/lstm_8/while/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_4/lstm_8/while/lstm_cell_8/Relu_1?
+sequential_4/lstm_8/while/lstm_cell_8/mul_6Mul3sequential_4/lstm_8/while/lstm_cell_8/Sigmoid_2:y:0:sequential_4/lstm_8/while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2-
+sequential_4/lstm_8/while/lstm_cell_8/mul_6?
>sequential_4/lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_4_lstm_8_while_placeholder_1%sequential_4_lstm_8_while_placeholder/sequential_4/lstm_8/while/lstm_cell_8/mul_6:z:0*
_output_shapes
: *
element_dtype02@
>sequential_4/lstm_8/while/TensorArrayV2Write/TensorListSetItem?
sequential_4/lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_4/lstm_8/while/add/y?
sequential_4/lstm_8/while/addAddV2%sequential_4_lstm_8_while_placeholder(sequential_4/lstm_8/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_4/lstm_8/while/add?
!sequential_4/lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_4/lstm_8/while/add_1/y?
sequential_4/lstm_8/while/add_1AddV2@sequential_4_lstm_8_while_sequential_4_lstm_8_while_loop_counter*sequential_4/lstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_8/while/add_1?
"sequential_4/lstm_8/while/IdentityIdentity#sequential_4/lstm_8/while/add_1:z:0^sequential_4/lstm_8/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_4/lstm_8/while/Identity?
$sequential_4/lstm_8/while/Identity_1IdentityFsequential_4_lstm_8_while_sequential_4_lstm_8_while_maximum_iterations^sequential_4/lstm_8/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_8/while/Identity_1?
$sequential_4/lstm_8/while/Identity_2Identity!sequential_4/lstm_8/while/add:z:0^sequential_4/lstm_8/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_8/while/Identity_2?
$sequential_4/lstm_8/while/Identity_3IdentityNsequential_4/lstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_4/lstm_8/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_8/while/Identity_3?
$sequential_4/lstm_8/while/Identity_4Identity/sequential_4/lstm_8/while/lstm_cell_8/mul_6:z:0^sequential_4/lstm_8/while/NoOp*
T0*'
_output_shapes
:????????? 2&
$sequential_4/lstm_8/while/Identity_4?
$sequential_4/lstm_8/while/Identity_5Identity/sequential_4/lstm_8/while/lstm_cell_8/add_3:z:0^sequential_4/lstm_8/while/NoOp*
T0*'
_output_shapes
:????????? 2&
$sequential_4/lstm_8/while/Identity_5?
sequential_4/lstm_8/while/NoOpNoOp5^sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp7^sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_17^sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_27^sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_3;^sequential_4/lstm_8/while/lstm_cell_8/split/ReadVariableOp=^sequential_4/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_4/lstm_8/while/NoOp"Q
"sequential_4_lstm_8_while_identity+sequential_4/lstm_8/while/Identity:output:0"U
$sequential_4_lstm_8_while_identity_1-sequential_4/lstm_8/while/Identity_1:output:0"U
$sequential_4_lstm_8_while_identity_2-sequential_4/lstm_8/while/Identity_2:output:0"U
$sequential_4_lstm_8_while_identity_3-sequential_4/lstm_8/while/Identity_3:output:0"U
$sequential_4_lstm_8_while_identity_4-sequential_4/lstm_8/while/Identity_4:output:0"U
$sequential_4_lstm_8_while_identity_5-sequential_4/lstm_8/while/Identity_5:output:0"?
=sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource?sequential_4_lstm_8_while_lstm_cell_8_readvariableop_resource_0"?
Esequential_4_lstm_8_while_lstm_cell_8_split_1_readvariableop_resourceGsequential_4_lstm_8_while_lstm_cell_8_split_1_readvariableop_resource_0"?
Csequential_4_lstm_8_while_lstm_cell_8_split_readvariableop_resourceEsequential_4_lstm_8_while_lstm_cell_8_split_readvariableop_resource_0"?
=sequential_4_lstm_8_while_sequential_4_lstm_8_strided_slice_1?sequential_4_lstm_8_while_sequential_4_lstm_8_strided_slice_1_0"?
ysequential_4_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_8_tensorarrayunstack_tensorlistfromtensor{sequential_4_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2l
4sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp4sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp2p
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_16sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_12p
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_26sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_22p
6sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_36sequential_4/lstm_8/while/lstm_cell_8/ReadVariableOp_32x
:sequential_4/lstm_8/while/lstm_cell_8/split/ReadVariableOp:sequential_4/lstm_8/while/lstm_cell_8/split/ReadVariableOp2|
<sequential_4/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp<sequential_4/lstm_8/while/lstm_cell_8/split_1/ReadVariableOp: 
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
B__inference_lstm_8_layer_call_and_return_conditional_losses_221562
inputs_0<
)lstm_cell_8_split_readvariableop_resource:	?:
+lstm_cell_8_split_1_readvariableop_resource:	?6
#lstm_cell_8_readvariableop_resource:	 ?
identity??;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_8/ReadVariableOp?lstm_cell_8/ReadVariableOp_1?lstm_cell_8/ReadVariableOp_2?lstm_cell_8/ReadVariableOp_3? lstm_cell_8/split/ReadVariableOp?"lstm_cell_8/split_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_8/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_8/ones_like/Shape
lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_8/ones_like/Const?
lstm_cell_8/ones_likeFill$lstm_cell_8/ones_like/Shape:output:0$lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/ones_like|
lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_8/split/split_dim?
 lstm_cell_8/split/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_8/split/ReadVariableOp?
lstm_cell_8/splitSplit$lstm_cell_8/split/split_dim:output:0(lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_8/split?
lstm_cell_8/MatMulMatMulstrided_slice_2:output:0lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul?
lstm_cell_8/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_1?
lstm_cell_8/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_2?
lstm_cell_8/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_3?
lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_8/split_1/split_dim?
"lstm_cell_8/split_1/ReadVariableOpReadVariableOp+lstm_cell_8_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_8/split_1/ReadVariableOp?
lstm_cell_8/split_1Split&lstm_cell_8/split_1/split_dim:output:0*lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_8/split_1?
lstm_cell_8/BiasAddBiasAddlstm_cell_8/MatMul:product:0lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd?
lstm_cell_8/BiasAdd_1BiasAddlstm_cell_8/MatMul_1:product:0lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_1?
lstm_cell_8/BiasAdd_2BiasAddlstm_cell_8/MatMul_2:product:0lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_2?
lstm_cell_8/BiasAdd_3BiasAddlstm_cell_8/MatMul_3:product:0lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/BiasAdd_3?
lstm_cell_8/mulMulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul?
lstm_cell_8/mul_1Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_1?
lstm_cell_8/mul_2Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_2?
lstm_cell_8/mul_3Mulzeros:output:0lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_3?
lstm_cell_8/ReadVariableOpReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp?
lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_8/strided_slice/stack?
!lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice/stack_1?
!lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_8/strided_slice/stack_2?
lstm_cell_8/strided_sliceStridedSlice"lstm_cell_8/ReadVariableOp:value:0(lstm_cell_8/strided_slice/stack:output:0*lstm_cell_8/strided_slice/stack_1:output:0*lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice?
lstm_cell_8/MatMul_4MatMullstm_cell_8/mul:z:0"lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_4?
lstm_cell_8/addAddV2lstm_cell_8/BiasAdd:output:0lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add|
lstm_cell_8/SigmoidSigmoidlstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid?
lstm_cell_8/ReadVariableOp_1ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_1?
!lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_8/strided_slice_1/stack?
#lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_8/strided_slice_1/stack_1?
#lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_1/stack_2?
lstm_cell_8/strided_slice_1StridedSlice$lstm_cell_8/ReadVariableOp_1:value:0*lstm_cell_8/strided_slice_1/stack:output:0,lstm_cell_8/strided_slice_1/stack_1:output:0,lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_1?
lstm_cell_8/MatMul_5MatMullstm_cell_8/mul_1:z:0$lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_5?
lstm_cell_8/add_1AddV2lstm_cell_8/BiasAdd_1:output:0lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_1?
lstm_cell_8/Sigmoid_1Sigmoidlstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_1?
lstm_cell_8/mul_4Mullstm_cell_8/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_4?
lstm_cell_8/ReadVariableOp_2ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_2?
!lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_8/strided_slice_2/stack?
#lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_8/strided_slice_2/stack_1?
#lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_2/stack_2?
lstm_cell_8/strided_slice_2StridedSlice$lstm_cell_8/ReadVariableOp_2:value:0*lstm_cell_8/strided_slice_2/stack:output:0,lstm_cell_8/strided_slice_2/stack_1:output:0,lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_2?
lstm_cell_8/MatMul_6MatMullstm_cell_8/mul_2:z:0$lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_6?
lstm_cell_8/add_2AddV2lstm_cell_8/BiasAdd_2:output:0lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_2u
lstm_cell_8/ReluRelulstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu?
lstm_cell_8/mul_5Mullstm_cell_8/Sigmoid:y:0lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_5?
lstm_cell_8/add_3AddV2lstm_cell_8/mul_4:z:0lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_3?
lstm_cell_8/ReadVariableOp_3ReadVariableOp#lstm_cell_8_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_8/ReadVariableOp_3?
!lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_8/strided_slice_3/stack?
#lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_8/strided_slice_3/stack_1?
#lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_8/strided_slice_3/stack_2?
lstm_cell_8/strided_slice_3StridedSlice$lstm_cell_8/ReadVariableOp_3:value:0*lstm_cell_8/strided_slice_3/stack:output:0,lstm_cell_8/strided_slice_3/stack_1:output:0,lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_8/strided_slice_3?
lstm_cell_8/MatMul_7MatMullstm_cell_8/mul_3:z:0$lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/MatMul_7?
lstm_cell_8/add_4AddV2lstm_cell_8/BiasAdd_3:output:0lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/add_4?
lstm_cell_8/Sigmoid_2Sigmoidlstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Sigmoid_2y
lstm_cell_8/Relu_1Relulstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/Relu_1?
lstm_cell_8/mul_6Mullstm_cell_8/Sigmoid_2:y:0 lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_8/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_8_split_readvariableop_resource+lstm_cell_8_split_1_readvariableop_resource#lstm_cell_8_readvariableop_resource*
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
while_body_221429*
condR
while_cond_221428*K
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_8_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_8/ReadVariableOp^lstm_cell_8/ReadVariableOp_1^lstm_cell_8/ReadVariableOp_2^lstm_cell_8/ReadVariableOp_3!^lstm_cell_8/split/ReadVariableOp#^lstm_cell_8/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_8/ReadVariableOplstm_cell_8/ReadVariableOp2<
lstm_cell_8/ReadVariableOp_1lstm_cell_8/ReadVariableOp_12<
lstm_cell_8/ReadVariableOp_2lstm_cell_8/ReadVariableOp_22<
lstm_cell_8/ReadVariableOp_3lstm_cell_8/ReadVariableOp_32D
 lstm_cell_8/split/ReadVariableOp lstm_cell_8/split/ReadVariableOp2H
"lstm_cell_8/split_1/ReadVariableOp"lstm_cell_8/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?	
while_body_221704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_8_split_readvariableop_resource_0:	?B
3while_lstm_cell_8_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_8_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_8_split_readvariableop_resource:	?@
1while_lstm_cell_8_split_1_readvariableop_resource:	?<
)while_lstm_cell_8_readvariableop_resource:	 ??? while/lstm_cell_8/ReadVariableOp?"while/lstm_cell_8/ReadVariableOp_1?"while/lstm_cell_8/ReadVariableOp_2?"while/lstm_cell_8/ReadVariableOp_3?&while/lstm_cell_8/split/ReadVariableOp?(while/lstm_cell_8/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_8/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_8/ones_like/Shape?
!while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_8/ones_like/Const?
while/lstm_cell_8/ones_likeFill*while/lstm_cell_8/ones_like/Shape:output:0*while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/ones_like?
while/lstm_cell_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2!
while/lstm_cell_8/dropout/Const?
while/lstm_cell_8/dropout/MulMul$while/lstm_cell_8/ones_like:output:0(while/lstm_cell_8/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/dropout/Mul?
while/lstm_cell_8/dropout/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_8/dropout/Shape?
6while/lstm_cell_8/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_8/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_8/dropout/random_uniform/RandomUniform?
(while/lstm_cell_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_8/dropout/GreaterEqual/y?
&while/lstm_cell_8/dropout/GreaterEqualGreaterEqual?while/lstm_cell_8/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_8/dropout/GreaterEqual?
while/lstm_cell_8/dropout/CastCast*while/lstm_cell_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_8/dropout/Cast?
while/lstm_cell_8/dropout/Mul_1Mul!while/lstm_cell_8/dropout/Mul:z:0"while/lstm_cell_8/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout/Mul_1?
!while/lstm_cell_8/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_1/Const?
while/lstm_cell_8/dropout_1/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_1/Mul?
!while/lstm_cell_8/dropout_1/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_1/Shape?
8while/lstm_cell_8/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_8/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_1/GreaterEqual/y?
(while/lstm_cell_8/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_1/GreaterEqual?
 while/lstm_cell_8/dropout_1/CastCast,while/lstm_cell_8/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_1/Cast?
!while/lstm_cell_8/dropout_1/Mul_1Mul#while/lstm_cell_8/dropout_1/Mul:z:0$while/lstm_cell_8/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_1/Mul_1?
!while/lstm_cell_8/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_2/Const?
while/lstm_cell_8/dropout_2/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_2/Mul?
!while/lstm_cell_8/dropout_2/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_2/Shape?
8while/lstm_cell_8/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_8/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_2/GreaterEqual/y?
(while/lstm_cell_8/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_2/GreaterEqual?
 while/lstm_cell_8/dropout_2/CastCast,while/lstm_cell_8/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_2/Cast?
!while/lstm_cell_8/dropout_2/Mul_1Mul#while/lstm_cell_8/dropout_2/Mul:z:0$while/lstm_cell_8/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_2/Mul_1?
!while/lstm_cell_8/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_8/dropout_3/Const?
while/lstm_cell_8/dropout_3/MulMul$while/lstm_cell_8/ones_like:output:0*while/lstm_cell_8/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_8/dropout_3/Mul?
!while/lstm_cell_8/dropout_3/ShapeShape$while/lstm_cell_8/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_8/dropout_3/Shape?
8while/lstm_cell_8/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_8/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_8/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_8/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_8/dropout_3/GreaterEqual/y?
(while/lstm_cell_8/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_8/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_8/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_8/dropout_3/GreaterEqual?
 while/lstm_cell_8/dropout_3/CastCast,while/lstm_cell_8/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_8/dropout_3/Cast?
!while/lstm_cell_8/dropout_3/Mul_1Mul#while/lstm_cell_8/dropout_3/Mul:z:0$while/lstm_cell_8/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_8/dropout_3/Mul_1?
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_8/split/split_dim?
&while/lstm_cell_8/split/ReadVariableOpReadVariableOp1while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_8/split/ReadVariableOp?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0.while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_8/split?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul?
while/lstm_cell_8/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_1?
while/lstm_cell_8/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_2?
while/lstm_cell_8/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_3?
#while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_8/split_1/split_dim?
(while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_8/split_1/ReadVariableOp?
while/lstm_cell_8/split_1Split,while/lstm_cell_8/split_1/split_dim:output:00while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_8/split_1?
while/lstm_cell_8/BiasAddBiasAdd"while/lstm_cell_8/MatMul:product:0"while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd?
while/lstm_cell_8/BiasAdd_1BiasAdd$while/lstm_cell_8/MatMul_1:product:0"while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_1?
while/lstm_cell_8/BiasAdd_2BiasAdd$while/lstm_cell_8/MatMul_2:product:0"while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_2?
while/lstm_cell_8/BiasAdd_3BiasAdd$while/lstm_cell_8/MatMul_3:product:0"while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_3?
while/lstm_cell_8/mulMulwhile_placeholder_2#while/lstm_cell_8/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul?
while/lstm_cell_8/mul_1Mulwhile_placeholder_2%while/lstm_cell_8/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_1?
while/lstm_cell_8/mul_2Mulwhile_placeholder_2%while/lstm_cell_8/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_2?
while/lstm_cell_8/mul_3Mulwhile_placeholder_2%while/lstm_cell_8/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_3?
 while/lstm_cell_8/ReadVariableOpReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_8/ReadVariableOp?
%while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_8/strided_slice/stack?
'while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice/stack_1?
'while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_8/strided_slice/stack_2?
while/lstm_cell_8/strided_sliceStridedSlice(while/lstm_cell_8/ReadVariableOp:value:0.while/lstm_cell_8/strided_slice/stack:output:00while/lstm_cell_8/strided_slice/stack_1:output:00while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_8/strided_slice?
while/lstm_cell_8/MatMul_4MatMulwhile/lstm_cell_8/mul:z:0(while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_4?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/BiasAdd:output:0$while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add?
while/lstm_cell_8/SigmoidSigmoidwhile/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid?
"while/lstm_cell_8/ReadVariableOp_1ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_1?
'while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice_1/stack?
)while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_8/strided_slice_1/stack_1?
)while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_1/stack_2?
!while/lstm_cell_8/strided_slice_1StridedSlice*while/lstm_cell_8/ReadVariableOp_1:value:00while/lstm_cell_8/strided_slice_1/stack:output:02while/lstm_cell_8/strided_slice_1/stack_1:output:02while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_1?
while/lstm_cell_8/MatMul_5MatMulwhile/lstm_cell_8/mul_1:z:0*while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_5?
while/lstm_cell_8/add_1AddV2$while/lstm_cell_8/BiasAdd_1:output:0$while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_1?
while/lstm_cell_8/Sigmoid_1Sigmoidwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_1?
while/lstm_cell_8/mul_4Mulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_4?
"while/lstm_cell_8/ReadVariableOp_2ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_2?
'while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_8/strided_slice_2/stack?
)while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_8/strided_slice_2/stack_1?
)while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_2/stack_2?
!while/lstm_cell_8/strided_slice_2StridedSlice*while/lstm_cell_8/ReadVariableOp_2:value:00while/lstm_cell_8/strided_slice_2/stack:output:02while/lstm_cell_8/strided_slice_2/stack_1:output:02while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_2?
while/lstm_cell_8/MatMul_6MatMulwhile/lstm_cell_8/mul_2:z:0*while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_6?
while/lstm_cell_8/add_2AddV2$while/lstm_cell_8/BiasAdd_2:output:0$while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_2?
while/lstm_cell_8/ReluReluwhile/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu?
while/lstm_cell_8/mul_5Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_5?
while/lstm_cell_8/add_3AddV2while/lstm_cell_8/mul_4:z:0while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_3?
"while/lstm_cell_8/ReadVariableOp_3ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_3?
'while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_8/strided_slice_3/stack?
)while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_8/strided_slice_3/stack_1?
)while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_3/stack_2?
!while/lstm_cell_8/strided_slice_3StridedSlice*while/lstm_cell_8/ReadVariableOp_3:value:00while/lstm_cell_8/strided_slice_3/stack:output:02while/lstm_cell_8/strided_slice_3/stack_1:output:02while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_3?
while/lstm_cell_8/MatMul_7MatMulwhile/lstm_cell_8/mul_3:z:0*while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_7?
while/lstm_cell_8/add_4AddV2$while/lstm_cell_8/BiasAdd_3:output:0$while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_4?
while/lstm_cell_8/Sigmoid_2Sigmoidwhile/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_2?
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu_1?
while/lstm_cell_8/mul_6Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_8/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_8/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_8/ReadVariableOp#^while/lstm_cell_8/ReadVariableOp_1#^while/lstm_cell_8/ReadVariableOp_2#^while/lstm_cell_8/ReadVariableOp_3'^while/lstm_cell_8/split/ReadVariableOp)^while/lstm_cell_8/split_1/ReadVariableOp*"
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
)while_lstm_cell_8_readvariableop_resource+while_lstm_cell_8_readvariableop_resource_0"h
1while_lstm_cell_8_split_1_readvariableop_resource3while_lstm_cell_8_split_1_readvariableop_resource_0"d
/while_lstm_cell_8_split_readvariableop_resource1while_lstm_cell_8_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_8/ReadVariableOp while/lstm_cell_8/ReadVariableOp2H
"while/lstm_cell_8/ReadVariableOp_1"while/lstm_cell_8/ReadVariableOp_12H
"while/lstm_cell_8/ReadVariableOp_2"while/lstm_cell_8/ReadVariableOp_22H
"while/lstm_cell_8/ReadVariableOp_3"while/lstm_cell_8/ReadVariableOp_32P
&while/lstm_cell_8/split/ReadVariableOp&while/lstm_cell_8/split/ReadVariableOp2T
(while/lstm_cell_8/split_1/ReadVariableOp(while/lstm_cell_8/split_1/ReadVariableOp: 
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
,__inference_lstm_cell_8_layer_call_fn_222754

inputs
states_0
states_1
unknown:	?
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_2191322
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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
'__inference_lstm_8_layer_call_fn_222452

inputs
unknown:	?
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
GPU 2J 8? *K
fFRD
B__inference_lstm_8_layer_call_and_return_conditional_losses_2198652
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
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_12_layer_call_and_return_conditional_losses_222474

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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_222607

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp?
,lstm_8/lstm_cell_8/kernel/Regularizer/SquareSquareClstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_8/lstm_cell_8/kernel/Regularizer/Square?
+lstm_8/lstm_cell_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_8/lstm_cell_8/kernel/Regularizer/Const?
)lstm_8/lstm_cell_8/kernel/Regularizer/SumSum0lstm_8/lstm_cell_8/kernel/Regularizer/Square:y:04lstm_8/lstm_cell_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/Sum?
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_8/lstm_cell_8/kernel/Regularizer/mul/x?
)lstm_8/lstm_cell_8/kernel/Regularizer/mulMul4lstm_8/lstm_cell_8/kernel/Regularizer/mul/x:output:02lstm_8/lstm_cell_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_8/lstm_cell_8/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp;lstm_8/lstm_cell_8/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
while_cond_218912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_218912___redundant_placeholder04
0while_while_cond_218912___redundant_placeholder14
0while_while_cond_218912___redundant_placeholder24
0while_while_cond_218912___redundant_placeholder3
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
6__inference_layer_normalization_6_layer_call_fn_221313

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2196172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?~
?	
while_body_219732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_8_split_readvariableop_resource_0:	?B
3while_lstm_cell_8_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_8_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_8_split_readvariableop_resource:	?@
1while_lstm_cell_8_split_1_readvariableop_resource:	?<
)while_lstm_cell_8_readvariableop_resource:	 ??? while/lstm_cell_8/ReadVariableOp?"while/lstm_cell_8/ReadVariableOp_1?"while/lstm_cell_8/ReadVariableOp_2?"while/lstm_cell_8/ReadVariableOp_3?&while/lstm_cell_8/split/ReadVariableOp?(while/lstm_cell_8/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_8/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_8/ones_like/Shape?
!while/lstm_cell_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_8/ones_like/Const?
while/lstm_cell_8/ones_likeFill*while/lstm_cell_8/ones_like/Shape:output:0*while/lstm_cell_8/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/ones_like?
!while/lstm_cell_8/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_8/split/split_dim?
&while/lstm_cell_8/split/ReadVariableOpReadVariableOp1while_lstm_cell_8_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_8/split/ReadVariableOp?
while/lstm_cell_8/splitSplit*while/lstm_cell_8/split/split_dim:output:0.while/lstm_cell_8/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_8/split?
while/lstm_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul?
while/lstm_cell_8/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_1?
while/lstm_cell_8/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_2?
while/lstm_cell_8/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_8/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_3?
#while/lstm_cell_8/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_8/split_1/split_dim?
(while/lstm_cell_8/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_8_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_8/split_1/ReadVariableOp?
while/lstm_cell_8/split_1Split,while/lstm_cell_8/split_1/split_dim:output:00while/lstm_cell_8/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_8/split_1?
while/lstm_cell_8/BiasAddBiasAdd"while/lstm_cell_8/MatMul:product:0"while/lstm_cell_8/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd?
while/lstm_cell_8/BiasAdd_1BiasAdd$while/lstm_cell_8/MatMul_1:product:0"while/lstm_cell_8/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_1?
while/lstm_cell_8/BiasAdd_2BiasAdd$while/lstm_cell_8/MatMul_2:product:0"while/lstm_cell_8/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_2?
while/lstm_cell_8/BiasAdd_3BiasAdd$while/lstm_cell_8/MatMul_3:product:0"while/lstm_cell_8/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/BiasAdd_3?
while/lstm_cell_8/mulMulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul?
while/lstm_cell_8/mul_1Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_1?
while/lstm_cell_8/mul_2Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_2?
while/lstm_cell_8/mul_3Mulwhile_placeholder_2$while/lstm_cell_8/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_3?
 while/lstm_cell_8/ReadVariableOpReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_8/ReadVariableOp?
%while/lstm_cell_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_8/strided_slice/stack?
'while/lstm_cell_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice/stack_1?
'while/lstm_cell_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_8/strided_slice/stack_2?
while/lstm_cell_8/strided_sliceStridedSlice(while/lstm_cell_8/ReadVariableOp:value:0.while/lstm_cell_8/strided_slice/stack:output:00while/lstm_cell_8/strided_slice/stack_1:output:00while/lstm_cell_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_8/strided_slice?
while/lstm_cell_8/MatMul_4MatMulwhile/lstm_cell_8/mul:z:0(while/lstm_cell_8/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_4?
while/lstm_cell_8/addAddV2"while/lstm_cell_8/BiasAdd:output:0$while/lstm_cell_8/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add?
while/lstm_cell_8/SigmoidSigmoidwhile/lstm_cell_8/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid?
"while/lstm_cell_8/ReadVariableOp_1ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_1?
'while/lstm_cell_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_8/strided_slice_1/stack?
)while/lstm_cell_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_8/strided_slice_1/stack_1?
)while/lstm_cell_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_1/stack_2?
!while/lstm_cell_8/strided_slice_1StridedSlice*while/lstm_cell_8/ReadVariableOp_1:value:00while/lstm_cell_8/strided_slice_1/stack:output:02while/lstm_cell_8/strided_slice_1/stack_1:output:02while/lstm_cell_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_1?
while/lstm_cell_8/MatMul_5MatMulwhile/lstm_cell_8/mul_1:z:0*while/lstm_cell_8/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_5?
while/lstm_cell_8/add_1AddV2$while/lstm_cell_8/BiasAdd_1:output:0$while/lstm_cell_8/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_1?
while/lstm_cell_8/Sigmoid_1Sigmoidwhile/lstm_cell_8/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_1?
while/lstm_cell_8/mul_4Mulwhile/lstm_cell_8/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_4?
"while/lstm_cell_8/ReadVariableOp_2ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_2?
'while/lstm_cell_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_8/strided_slice_2/stack?
)while/lstm_cell_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_8/strided_slice_2/stack_1?
)while/lstm_cell_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_2/stack_2?
!while/lstm_cell_8/strided_slice_2StridedSlice*while/lstm_cell_8/ReadVariableOp_2:value:00while/lstm_cell_8/strided_slice_2/stack:output:02while/lstm_cell_8/strided_slice_2/stack_1:output:02while/lstm_cell_8/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_2?
while/lstm_cell_8/MatMul_6MatMulwhile/lstm_cell_8/mul_2:z:0*while/lstm_cell_8/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_6?
while/lstm_cell_8/add_2AddV2$while/lstm_cell_8/BiasAdd_2:output:0$while/lstm_cell_8/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_2?
while/lstm_cell_8/ReluReluwhile/lstm_cell_8/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu?
while/lstm_cell_8/mul_5Mulwhile/lstm_cell_8/Sigmoid:y:0$while/lstm_cell_8/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_5?
while/lstm_cell_8/add_3AddV2while/lstm_cell_8/mul_4:z:0while/lstm_cell_8/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_3?
"while/lstm_cell_8/ReadVariableOp_3ReadVariableOp+while_lstm_cell_8_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_8/ReadVariableOp_3?
'while/lstm_cell_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_8/strided_slice_3/stack?
)while/lstm_cell_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_8/strided_slice_3/stack_1?
)while/lstm_cell_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_8/strided_slice_3/stack_2?
!while/lstm_cell_8/strided_slice_3StridedSlice*while/lstm_cell_8/ReadVariableOp_3:value:00while/lstm_cell_8/strided_slice_3/stack:output:02while/lstm_cell_8/strided_slice_3/stack_1:output:02while/lstm_cell_8/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_8/strided_slice_3?
while/lstm_cell_8/MatMul_7MatMulwhile/lstm_cell_8/mul_3:z:0*while/lstm_cell_8/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/MatMul_7?
while/lstm_cell_8/add_4AddV2$while/lstm_cell_8/BiasAdd_3:output:0$while/lstm_cell_8/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/add_4?
while/lstm_cell_8/Sigmoid_2Sigmoidwhile/lstm_cell_8/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Sigmoid_2?
while/lstm_cell_8/Relu_1Reluwhile/lstm_cell_8/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/Relu_1?
while/lstm_cell_8/mul_6Mulwhile/lstm_cell_8/Sigmoid_2:y:0&while/lstm_cell_8/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_8/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_8/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_8/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_8/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_8/ReadVariableOp#^while/lstm_cell_8/ReadVariableOp_1#^while/lstm_cell_8/ReadVariableOp_2#^while/lstm_cell_8/ReadVariableOp_3'^while/lstm_cell_8/split/ReadVariableOp)^while/lstm_cell_8/split_1/ReadVariableOp*"
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
)while_lstm_cell_8_readvariableop_resource+while_lstm_cell_8_readvariableop_resource_0"h
1while_lstm_cell_8_split_1_readvariableop_resource3while_lstm_cell_8_split_1_readvariableop_resource_0"d
/while_lstm_cell_8_split_readvariableop_resource1while_lstm_cell_8_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_8/ReadVariableOp while/lstm_cell_8/ReadVariableOp2H
"while/lstm_cell_8/ReadVariableOp_1"while/lstm_cell_8/ReadVariableOp_12H
"while/lstm_cell_8/ReadVariableOp_2"while/lstm_cell_8/ReadVariableOp_22H
"while/lstm_cell_8/ReadVariableOp_3"while/lstm_cell_8/ReadVariableOp_32P
&while/lstm_cell_8/split/ReadVariableOp&while/lstm_cell_8/split/ReadVariableOp2T
(while/lstm_cell_8/split_1/ReadVariableOp(while/lstm_cell_8/split_1/ReadVariableOp: 
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_54
serving_default_input_5:0?????????A
	reshape_64
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ޏ
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
*q&call_and_return_all_conditional_losses
r_default_save_signature
s__call__"
_tf_keras_sequential
?
axis
	gamma
beta
	variables
regularization_losses
trainable_variables
	keras_api
*t&call_and_return_all_conditional_losses
u__call__"
_tf_keras_layer
?
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*v&call_and_return_all_conditional_losses
w__call__"
_tf_keras_rnn_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*x&call_and_return_all_conditional_losses
y__call__"
_tf_keras_layer
?

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
*z&call_and_return_all_conditional_losses
{__call__"
_tf_keras_layer
?
%	variables
&regularization_losses
'trainable_variables
(	keras_api
*|&call_and_return_all_conditional_losses
}__call__"
_tf_keras_layer
?
)iter

*beta_1

+beta_2
	,decay
-learning_ratem_m`mambmc md.me/mf0mgvhvivjvkvl vm.vn/vo0vp"
	optimizer
_
0
1
.2
/3
04
5
6
7
 8"
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
.2
/3
04
5
6
7
 8"
trackable_list_wrapper
?
	variables
1non_trainable_variables
regularization_losses
2layer_regularization_losses
	trainable_variables

3layers
4metrics
5layer_metrics
s__call__
r_default_save_signature
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
,
~serving_default"
signature_map
 "
trackable_list_wrapper
):'2layer_normalization_6/gamma
(:&2layer_normalization_6/beta
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
	variables
6non_trainable_variables
7layer_regularization_losses
regularization_losses
trainable_variables

8layers
9metrics
:layer_metrics
u__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
?
;
state_size

.kernel
/recurrent_kernel
0bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
*&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
?
	variables

@states
Anon_trainable_variables
regularization_losses
Blayer_regularization_losses
trainable_variables

Clayers
Dmetrics
Elayer_metrics
w__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
!:  2dense_12/kernel
: 2dense_12/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
	variables
Fnon_trainable_variables
Glayer_regularization_losses
regularization_losses
trainable_variables

Hlayers
Imetrics
Jlayer_metrics
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_13/kernel
:2dense_13/bias
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
!	variables
Knon_trainable_variables
Llayer_regularization_losses
"regularization_losses
#trainable_variables

Mlayers
Nmetrics
Olayer_metrics
{__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
%	variables
Pnon_trainable_variables
Qlayer_regularization_losses
&regularization_losses
'trainable_variables

Rlayers
Smetrics
Tlayer_metrics
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	?2lstm_8/lstm_cell_8/kernel
6:4	 ?2#lstm_8/lstm_cell_8/recurrent_kernel
&:$?2lstm_8/lstm_cell_8/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
'
U0"
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
5
.0
/1
02"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
?
<	variables
Vnon_trainable_variables
Wlayer_regularization_losses
=regularization_losses
>trainable_variables

Xlayers
Ymetrics
Zlayer_metrics
?__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	[total
	\count
]	variables
^	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
[0
\1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
.:,2"Adam/layer_normalization_6/gamma/m
-:+2!Adam/layer_normalization_6/beta/m
&:$  2Adam/dense_12/kernel/m
 : 2Adam/dense_12/bias/m
&:$ 2Adam/dense_13/kernel/m
 :2Adam/dense_13/bias/m
1:/	?2 Adam/lstm_8/lstm_cell_8/kernel/m
;:9	 ?2*Adam/lstm_8/lstm_cell_8/recurrent_kernel/m
+:)?2Adam/lstm_8/lstm_cell_8/bias/m
.:,2"Adam/layer_normalization_6/gamma/v
-:+2!Adam/layer_normalization_6/beta/v
&:$  2Adam/dense_12/kernel/v
 : 2Adam/dense_12/bias/v
&:$ 2Adam/dense_13/kernel/v
 :2Adam/dense_13/bias/v
1:/	?2 Adam/lstm_8/lstm_cell_8/kernel/v
;:9	 ?2*Adam/lstm_8/lstm_cell_8/recurrent_kernel/v
+:)?2Adam/lstm_8/lstm_cell_8/bias/v
?2?
H__inference_sequential_4_layer_call_and_return_conditional_losses_220831
H__inference_sequential_4_layer_call_and_return_conditional_losses_221207
H__inference_sequential_4_layer_call_and_return_conditional_losses_220449
H__inference_sequential_4_layer_call_and_return_conditional_losses_220482?
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
!__inference__wrapped_model_218775input_5"?
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
?2?
-__inference_sequential_4_layer_call_fn_219949
-__inference_sequential_4_layer_call_fn_221230
-__inference_sequential_4_layer_call_fn_221253
-__inference_sequential_4_layer_call_fn_220416?
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
?2?
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_221304?
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
6__inference_layer_normalization_6_layer_call_fn_221313?
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
?2?
B__inference_lstm_8_layer_call_and_return_conditional_losses_221562
B__inference_lstm_8_layer_call_and_return_conditional_losses_221869
B__inference_lstm_8_layer_call_and_return_conditional_losses_222112
B__inference_lstm_8_layer_call_and_return_conditional_losses_222419?
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
?2?
'__inference_lstm_8_layer_call_fn_222430
'__inference_lstm_8_layer_call_fn_222441
'__inference_lstm_8_layer_call_fn_222452
'__inference_lstm_8_layer_call_fn_222463?
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
D__inference_dense_12_layer_call_and_return_conditional_losses_222474?
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
)__inference_dense_12_layer_call_fn_222483?
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
D__inference_dense_13_layer_call_and_return_conditional_losses_222493?
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
)__inference_dense_13_layer_call_fn_222502?
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
E__inference_reshape_6_layer_call_and_return_conditional_losses_222515?
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
*__inference_reshape_6_layer_call_fn_222520?
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
?B?
$__inference_signature_wrapper_220519input_5"?
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_222607
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_222720?
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
,__inference_lstm_cell_8_layer_call_fn_222737
,__inference_lstm_cell_8_layer_call_fn_222754?
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
__inference_loss_fn_0_222765?
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
!__inference__wrapped_model_218775|	.0/ 4?1
*?'
%?"
input_5?????????
? "9?6
4
	reshape_6'?$
	reshape_6??????????
D__inference_dense_12_layer_call_and_return_conditional_losses_222474\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? |
)__inference_dense_12_layer_call_fn_222483O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
D__inference_dense_13_layer_call_and_return_conditional_losses_222493\ /?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? |
)__inference_dense_13_layer_call_fn_222502O /?,
%?"
 ?
inputs????????? 
? "???????????
Q__inference_layer_normalization_6_layer_call_and_return_conditional_losses_221304d3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????
? ?
6__inference_layer_normalization_6_layer_call_fn_221313W3?0
)?&
$?!
inputs?????????
? "??????????;
__inference_loss_fn_0_222765.?

? 
? "? ?
B__inference_lstm_8_layer_call_and_return_conditional_losses_221562}.0/O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0????????? 
? ?
B__inference_lstm_8_layer_call_and_return_conditional_losses_221869}.0/O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0????????? 
? ?
B__inference_lstm_8_layer_call_and_return_conditional_losses_222112m.0/??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0????????? 
? ?
B__inference_lstm_8_layer_call_and_return_conditional_losses_222419m.0/??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0????????? 
? ?
'__inference_lstm_8_layer_call_fn_222430p.0/O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "?????????? ?
'__inference_lstm_8_layer_call_fn_222441p.0/O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "?????????? ?
'__inference_lstm_8_layer_call_fn_222452`.0/??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
'__inference_lstm_8_layer_call_fn_222463`.0/??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_222607?.0/??}
v?s
 ?
inputs?????????
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
G__inference_lstm_cell_8_layer_call_and_return_conditional_losses_222720?.0/??}
v?s
 ?
inputs?????????
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
,__inference_lstm_cell_8_layer_call_fn_222737?.0/??}
v?s
 ?
inputs?????????
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
,__inference_lstm_cell_8_layer_call_fn_222754?.0/??}
v?s
 ?
inputs?????????
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
E__inference_reshape_6_layer_call_and_return_conditional_losses_222515\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? }
*__inference_reshape_6_layer_call_fn_222520O/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_sequential_4_layer_call_and_return_conditional_losses_220449t	.0/ <?9
2?/
%?"
input_5?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_220482t	.0/ <?9
2?/
%?"
input_5?????????
p

 
? ")?&
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_220831s	.0/ ;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_221207s	.0/ ;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
-__inference_sequential_4_layer_call_fn_219949g	.0/ <?9
2?/
%?"
input_5?????????
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_220416g	.0/ <?9
2?/
%?"
input_5?????????
p

 
? "???????????
-__inference_sequential_4_layer_call_fn_221230f	.0/ ;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_221253f	.0/ ;?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_220519?	.0/ ??<
? 
5?2
0
input_5%?"
input_5?????????"9?6
4
	reshape_6'?$
	reshape_6?????????