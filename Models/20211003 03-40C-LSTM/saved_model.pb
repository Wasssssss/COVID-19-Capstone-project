«,
è
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8¶*
~
conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_8/kernel
w
#conv1d_8/kernel/Read/ReadVariableOpReadVariableOpconv1d_8/kernel*"
_output_shapes
: *
dtype0
r
conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_8/bias
k
!conv1d_8/bias/Read/ReadVariableOpReadVariableOpconv1d_8/bias*
_output_shapes
: *
dtype0
~
conv1d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv1d_9/kernel
w
#conv1d_9/kernel/Read/ReadVariableOpReadVariableOpconv1d_9/kernel*"
_output_shapes
: @*
dtype0
r
conv1d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_9/bias
k
!conv1d_9/bias/Read/ReadVariableOpReadVariableOpconv1d_9/bias*
_output_shapes
:@*
dtype0
z
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_40/kernel
s
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes

:*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:*
dtype0
z
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

:*
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
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

lstm_40/lstm_cell_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *,
shared_namelstm_40/lstm_cell_40/kernel

/lstm_40/lstm_cell_40/kernel/Read/ReadVariableOpReadVariableOplstm_40/lstm_cell_40/kernel*
_output_shapes

:@ *
dtype0
¦
%lstm_40/lstm_cell_40/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_40/lstm_cell_40/recurrent_kernel

9lstm_40/lstm_cell_40/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_40/lstm_cell_40/recurrent_kernel*
_output_shapes

: *
dtype0

lstm_40/lstm_cell_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_40/lstm_cell_40/bias

-lstm_40/lstm_cell_40/bias/Read/ReadVariableOpReadVariableOplstm_40/lstm_cell_40/bias*
_output_shapes
: *
dtype0

lstm_41/lstm_cell_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_41/lstm_cell_41/kernel

/lstm_41/lstm_cell_41/kernel/Read/ReadVariableOpReadVariableOplstm_41/lstm_cell_41/kernel*
_output_shapes

: *
dtype0
¦
%lstm_41/lstm_cell_41/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_41/lstm_cell_41/recurrent_kernel

9lstm_41/lstm_cell_41/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_41/lstm_cell_41/recurrent_kernel*
_output_shapes

: *
dtype0

lstm_41/lstm_cell_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_41/lstm_cell_41/bias

-lstm_41/lstm_cell_41/bias/Read/ReadVariableOpReadVariableOplstm_41/lstm_cell_41/bias*
_output_shapes
: *
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

Adam/conv1d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_8/kernel/m

*Adam/conv1d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/m*"
_output_shapes
: *
dtype0

Adam/conv1d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_8/bias/m
y
(Adam/conv1d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/m*
_output_shapes
: *
dtype0

Adam/conv1d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_9/kernel/m

*Adam/conv1d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/kernel/m*"
_output_shapes
: @*
dtype0

Adam/conv1d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_9/bias/m
y
(Adam/conv1d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_40/kernel/m

*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:*
dtype0

Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_41/kernel/m

*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_40/lstm_cell_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *3
shared_name$"Adam/lstm_40/lstm_cell_40/kernel/m

6Adam/lstm_40/lstm_cell_40/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_40/lstm_cell_40/kernel/m*
_output_shapes

:@ *
dtype0
´
,Adam/lstm_40/lstm_cell_40/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_40/lstm_cell_40/recurrent_kernel/m
­
@Adam/lstm_40/lstm_cell_40/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_40/lstm_cell_40/recurrent_kernel/m*
_output_shapes

: *
dtype0

 Adam/lstm_40/lstm_cell_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_40/lstm_cell_40/bias/m

4Adam/lstm_40/lstm_cell_40/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_40/lstm_cell_40/bias/m*
_output_shapes
: *
dtype0
 
"Adam/lstm_41/lstm_cell_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_41/lstm_cell_41/kernel/m

6Adam/lstm_41/lstm_cell_41/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_41/lstm_cell_41/kernel/m*
_output_shapes

: *
dtype0
´
,Adam/lstm_41/lstm_cell_41/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_41/lstm_cell_41/recurrent_kernel/m
­
@Adam/lstm_41/lstm_cell_41/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_41/lstm_cell_41/recurrent_kernel/m*
_output_shapes

: *
dtype0

 Adam/lstm_41/lstm_cell_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_41/lstm_cell_41/bias/m

4Adam/lstm_41/lstm_cell_41/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_41/lstm_cell_41/bias/m*
_output_shapes
: *
dtype0

Adam/conv1d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_8/kernel/v

*Adam/conv1d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/v*"
_output_shapes
: *
dtype0

Adam/conv1d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_8/bias/v
y
(Adam/conv1d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/v*
_output_shapes
: *
dtype0

Adam/conv1d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_9/kernel/v

*Adam/conv1d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/kernel/v*"
_output_shapes
: @*
dtype0

Adam/conv1d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_9/bias/v
y
(Adam/conv1d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_40/kernel/v

*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
:*
dtype0

Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_41/kernel/v

*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_40/lstm_cell_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *3
shared_name$"Adam/lstm_40/lstm_cell_40/kernel/v

6Adam/lstm_40/lstm_cell_40/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_40/lstm_cell_40/kernel/v*
_output_shapes

:@ *
dtype0
´
,Adam/lstm_40/lstm_cell_40/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_40/lstm_cell_40/recurrent_kernel/v
­
@Adam/lstm_40/lstm_cell_40/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_40/lstm_cell_40/recurrent_kernel/v*
_output_shapes

: *
dtype0

 Adam/lstm_40/lstm_cell_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_40/lstm_cell_40/bias/v

4Adam/lstm_40/lstm_cell_40/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_40/lstm_cell_40/bias/v*
_output_shapes
: *
dtype0
 
"Adam/lstm_41/lstm_cell_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_41/lstm_cell_41/kernel/v

6Adam/lstm_41/lstm_cell_41/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_41/lstm_cell_41/kernel/v*
_output_shapes

: *
dtype0
´
,Adam/lstm_41/lstm_cell_41/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_41/lstm_cell_41/recurrent_kernel/v
­
@Adam/lstm_41/lstm_cell_41/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_41/lstm_cell_41/recurrent_kernel/v*
_output_shapes

: *
dtype0

 Adam/lstm_41/lstm_cell_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_41/lstm_cell_41/bias/v

4Adam/lstm_41/lstm_cell_41/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_41/lstm_cell_41/bias/v*
_output_shapes
: *
dtype0

NoOpNoOp
§U
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*âT
valueØTBÕT BÎT

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
 	keras_api
l
!cell
"
state_spec
#regularization_losses
$trainable_variables
%	variables
&	keras_api
R
'regularization_losses
(trainable_variables
)	variables
*	keras_api
l
+cell
,
state_spec
-regularization_losses
.trainable_variables
/	variables
0	keras_api
R
1regularization_losses
2trainable_variables
3	variables
4	keras_api
h

5kernel
6bias
7regularization_losses
8trainable_variables
9	variables
:	keras_api
h

;kernel
<bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
R
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
Ø
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratem¢m£m¤m¥5m¦6m§;m¨<m©JmªKm«Lm¬Mm­Nm®Om¯v°v±v²v³5v´6vµ;v¶<v·Jv¸Kv¹LvºMv»Nv¼Ov½
 
f
0
1
2
3
J4
K5
L6
M7
N8
O9
510
611
;12
<13
f
0
1
2
3
J4
K5
L6
M7
N8
O9
510
611
;12
<13
­
Player_regularization_losses
regularization_losses
Qlayer_metrics
trainable_variables

Rlayers
Snon_trainable_variables
Tmetrics
	variables
 
[Y
VARIABLE_VALUEconv1d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Ulayer_regularization_losses
regularization_losses
Vlayer_metrics
trainable_variables

Wlayers
Xnon_trainable_variables
Ymetrics
	variables
[Y
VARIABLE_VALUEconv1d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Zlayer_regularization_losses
regularization_losses
[layer_metrics
trainable_variables

\layers
]non_trainable_variables
^metrics
	variables
 
 
 
­
_layer_regularization_losses
regularization_losses
`layer_metrics
trainable_variables

alayers
bnon_trainable_variables
cmetrics
	variables

d
state_size

Jkernel
Krecurrent_kernel
Lbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
 
 

J0
K1
L2

J0
K1
L2
¹
ilayer_regularization_losses
#regularization_losses
jlayer_metrics
$trainable_variables

klayers

lstates
mnon_trainable_variables
nmetrics
%	variables
 
 
 
­
olayer_regularization_losses
'regularization_losses
player_metrics
(trainable_variables

qlayers
rnon_trainable_variables
smetrics
)	variables

t
state_size

Mkernel
Nrecurrent_kernel
Obias
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
 
 

M0
N1
O2

M0
N1
O2
¹
ylayer_regularization_losses
-regularization_losses
zlayer_metrics
.trainable_variables

{layers

|states
}non_trainable_variables
~metrics
/	variables
 
 
 
±
layer_regularization_losses
1regularization_losses
layer_metrics
2trainable_variables
layers
non_trainable_variables
metrics
3	variables
[Y
VARIABLE_VALUEdense_40/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_40/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
²
 layer_regularization_losses
7regularization_losses
layer_metrics
8trainable_variables
layers
non_trainable_variables
metrics
9	variables
[Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_41/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

;0
<1
²
 layer_regularization_losses
=regularization_losses
layer_metrics
>trainable_variables
layers
non_trainable_variables
metrics
?	variables
 
 
 
²
 layer_regularization_losses
Aregularization_losses
layer_metrics
Btrainable_variables
layers
non_trainable_variables
metrics
C	variables
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
VARIABLE_VALUElstm_40/lstm_cell_40/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_40/lstm_cell_40/recurrent_kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_40/lstm_cell_40/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_41/lstm_cell_41/kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_41/lstm_cell_41/recurrent_kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_41/lstm_cell_41/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
 
 
F
0
1
2
3
4
5
6
7
	8

9
 

0
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

J0
K1
L2

J0
K1
L2
²
 layer_regularization_losses
eregularization_losses
layer_metrics
ftrainable_variables
layers
non_trainable_variables
metrics
g	variables
 
 

!0
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

M0
N1
O2

M0
N1
O2
²
 layer_regularization_losses
uregularization_losses
layer_metrics
vtrainable_variables
layers
non_trainable_variables
metrics
w	variables
 
 

+0
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
 
 
 
8

total

count
 	variables
¡	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

 	variables
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_9/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_40/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_40/lstm_cell_40/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_40/lstm_cell_40/recurrent_kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_40/lstm_cell_40/bias/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_41/lstm_cell_41/kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_41/lstm_cell_41/recurrent_kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_41/lstm_cell_41/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_9/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_40/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_40/lstm_cell_40/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_40/lstm_cell_40/recurrent_kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_40/lstm_cell_40/bias/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_41/lstm_cell_41/kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_41/lstm_cell_41/recurrent_kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_41/lstm_cell_41/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv1d_8_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_8_inputconv1d_8/kernelconv1d_8/biasconv1d_9/kernelconv1d_9/biaslstm_40/lstm_cell_40/kernel%lstm_40/lstm_cell_40/recurrent_kernellstm_40/lstm_cell_40/biaslstm_41/lstm_cell_41/kernel%lstm_41/lstm_cell_41/recurrent_kernellstm_41/lstm_cell_41/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_376425
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ñ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_8/kernel/Read/ReadVariableOp!conv1d_8/bias/Read/ReadVariableOp#conv1d_9/kernel/Read/ReadVariableOp!conv1d_9/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_40/lstm_cell_40/kernel/Read/ReadVariableOp9lstm_40/lstm_cell_40/recurrent_kernel/Read/ReadVariableOp-lstm_40/lstm_cell_40/bias/Read/ReadVariableOp/lstm_41/lstm_cell_41/kernel/Read/ReadVariableOp9lstm_41/lstm_cell_41/recurrent_kernel/Read/ReadVariableOp-lstm_41/lstm_cell_41/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_8/kernel/m/Read/ReadVariableOp(Adam/conv1d_8/bias/m/Read/ReadVariableOp*Adam/conv1d_9/kernel/m/Read/ReadVariableOp(Adam/conv1d_9/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp6Adam/lstm_40/lstm_cell_40/kernel/m/Read/ReadVariableOp@Adam/lstm_40/lstm_cell_40/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_40/lstm_cell_40/bias/m/Read/ReadVariableOp6Adam/lstm_41/lstm_cell_41/kernel/m/Read/ReadVariableOp@Adam/lstm_41/lstm_cell_41/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_41/lstm_cell_41/bias/m/Read/ReadVariableOp*Adam/conv1d_8/kernel/v/Read/ReadVariableOp(Adam/conv1d_8/bias/v/Read/ReadVariableOp*Adam/conv1d_9/kernel/v/Read/ReadVariableOp(Adam/conv1d_9/bias/v/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOp6Adam/lstm_40/lstm_cell_40/kernel/v/Read/ReadVariableOp@Adam/lstm_40/lstm_cell_40/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_40/lstm_cell_40/bias/v/Read/ReadVariableOp6Adam/lstm_41/lstm_cell_41/kernel/v/Read/ReadVariableOp@Adam/lstm_41/lstm_cell_41/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_41/lstm_cell_41/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_379054

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_8/kernelconv1d_8/biasconv1d_9/kernelconv1d_9/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_40/lstm_cell_40/kernel%lstm_40/lstm_cell_40/recurrent_kernellstm_40/lstm_cell_40/biaslstm_41/lstm_cell_41/kernel%lstm_41/lstm_cell_41/recurrent_kernellstm_41/lstm_cell_41/biastotalcountAdam/conv1d_8/kernel/mAdam/conv1d_8/bias/mAdam/conv1d_9/kernel/mAdam/conv1d_9/bias/mAdam/dense_40/kernel/mAdam/dense_40/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/m"Adam/lstm_40/lstm_cell_40/kernel/m,Adam/lstm_40/lstm_cell_40/recurrent_kernel/m Adam/lstm_40/lstm_cell_40/bias/m"Adam/lstm_41/lstm_cell_41/kernel/m,Adam/lstm_41/lstm_cell_41/recurrent_kernel/m Adam/lstm_41/lstm_cell_41/bias/mAdam/conv1d_8/kernel/vAdam/conv1d_8/bias/vAdam/conv1d_9/kernel/vAdam/conv1d_9/bias/vAdam/dense_40/kernel/vAdam/dense_40/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/v"Adam/lstm_40/lstm_cell_40/kernel/v,Adam/lstm_40/lstm_cell_40/recurrent_kernel/v Adam/lstm_40/lstm_cell_40/bias/v"Adam/lstm_41/lstm_cell_41/kernel/v,Adam/lstm_41/lstm_cell_41/recurrent_kernel/v Adam/lstm_41/lstm_cell_41/bias/v*=
Tin6
422*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_379211 ¤(
£
²
(__inference_lstm_41_layer_call_fn_378000

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3759292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

õ
D__inference_dense_40_layer_call_and_return_conditional_losses_378651

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

õ
D__inference_dense_41_layer_call_and_return_conditional_losses_375663

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«

D__inference_conv1d_8_layer_call_and_return_conditional_losses_377230

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü[

C__inference_lstm_41_layer_call_and_return_conditional_losses_378453

inputs=
+lstm_cell_41_matmul_readvariableop_resource: ?
-lstm_cell_41_matmul_1_readvariableop_resource: :
,lstm_cell_41_biasadd_readvariableop_resource: 
identity¢#lstm_cell_41/BiasAdd/ReadVariableOp¢"lstm_cell_41/MatMul/ReadVariableOp¢$lstm_cell_41/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp¬
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMulº
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp¨
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMul_1
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/add³
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp¬
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dimó
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_41/split
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_1
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_1
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/add_1
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu_1 
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_378369*
condR
while_cond_378368*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_377694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_40_matmul_readvariableop_resource_0:@ G
5while_lstm_cell_40_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_40_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_40_matmul_readvariableop_resource:@ E
3while_lstm_cell_40_matmul_1_readvariableop_resource: @
2while_lstm_cell_40_biasadd_readvariableop_resource: ¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOpÖ
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMulÎ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp¿
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMul_1·
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/addÇ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÄ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/BiasAdd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu´
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_1©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_2
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu_1¸
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
È
G
+__inference_reshape_20_layer_call_fn_378675

inputs
identityÈ
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
GPU 2J 8 *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_3756822
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
Ö
´
(__inference_lstm_40_layer_call_fn_377292
inputs_0
unknown:@ 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3741442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
¯
Ø
I__inference_sequential_14_layer_call_and_return_conditional_losses_376841

inputsJ
4conv1d_8_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_8_biasadd_readvariableop_resource: J
4conv1d_9_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_9_biasadd_readvariableop_resource:@E
3lstm_40_lstm_cell_40_matmul_readvariableop_resource:@ G
5lstm_40_lstm_cell_40_matmul_1_readvariableop_resource: B
4lstm_40_lstm_cell_40_biasadd_readvariableop_resource: E
3lstm_41_lstm_cell_41_matmul_readvariableop_resource: G
5lstm_41_lstm_cell_41_matmul_1_readvariableop_resource: B
4lstm_41_lstm_cell_41_biasadd_readvariableop_resource: 9
'dense_40_matmul_readvariableop_resource:6
(dense_40_biasadd_readvariableop_resource:9
'dense_41_matmul_readvariableop_resource:6
(dense_41_biasadd_readvariableop_resource:
identity¢conv1d_8/BiasAdd/ReadVariableOp¢+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_9/BiasAdd/ReadVariableOp¢+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp¢dense_40/BiasAdd/ReadVariableOp¢dense_40/MatMul/ReadVariableOp¢dense_41/BiasAdd/ReadVariableOp¢dense_41/MatMul/ReadVariableOp¢+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp¢*lstm_40/lstm_cell_40/MatMul/ReadVariableOp¢,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp¢lstm_40/while¢+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp¢*lstm_41/lstm_cell_41/MatMul/ReadVariableOp¢,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp¢lstm_41/while
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_8/conv1d/ExpandDims/dim±
conv1d_8/conv1d/ExpandDims
ExpandDimsinputs'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/ExpandDimsÓ
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dimÛ
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_8/conv1d/ExpandDims_1Ú
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d_8/conv1d­
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/Squeeze§
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_8/BiasAdd/ReadVariableOp°
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/BiasAddw
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/Relu
conv1d_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_9/conv1d/ExpandDims/dimÆ
conv1d_9/conv1d/ExpandDims
ExpandDimsconv1d_8/Relu:activations:0'conv1d_9/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_9/conv1d/ExpandDimsÓ
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_9/conv1d/ExpandDims_1/dimÛ
conv1d_9/conv1d/ExpandDims_1
ExpandDims3conv1d_9/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_9/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_9/conv1d/ExpandDims_1Ú
conv1d_9/conv1dConv2D#conv1d_9/conv1d/ExpandDims:output:0%conv1d_9/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d_9/conv1d­
conv1d_9/conv1d/SqueezeSqueezeconv1d_9/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_9/conv1d/Squeeze§
conv1d_9/BiasAdd/ReadVariableOpReadVariableOp(conv1d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_9/BiasAdd/ReadVariableOp°
conv1d_9/BiasAddBiasAdd conv1d_9/conv1d/Squeeze:output:0'conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_9/BiasAddw
conv1d_9/ReluReluconv1d_9/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_9/Relu
max_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_3/ExpandDims/dimÆ
max_pooling1d_3/ExpandDims
ExpandDimsconv1d_9/Relu:activations:0'max_pooling1d_3/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
max_pooling1d_3/ExpandDimsÎ
max_pooling1d_3/MaxPoolMaxPool#max_pooling1d_3/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2
max_pooling1d_3/MaxPool¬
max_pooling1d_3/SqueezeSqueeze max_pooling1d_3/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_3/Squeezen
lstm_40/ShapeShape max_pooling1d_3/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_40/Shape
lstm_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_40/strided_slice/stack
lstm_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_40/strided_slice/stack_1
lstm_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_40/strided_slice/stack_2
lstm_40/strided_sliceStridedSlicelstm_40/Shape:output:0$lstm_40/strided_slice/stack:output:0&lstm_40/strided_slice/stack_1:output:0&lstm_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_40/strided_slicel
lstm_40/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros/mul/y
lstm_40/zeros/mulMullstm_40/strided_slice:output:0lstm_40/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros/mulo
lstm_40/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_40/zeros/Less/y
lstm_40/zeros/LessLesslstm_40/zeros/mul:z:0lstm_40/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros/Lessr
lstm_40/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros/packed/1£
lstm_40/zeros/packedPacklstm_40/strided_slice:output:0lstm_40/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_40/zeros/packedo
lstm_40/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_40/zeros/Const
lstm_40/zerosFilllstm_40/zeros/packed:output:0lstm_40/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/zerosp
lstm_40/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros_1/mul/y
lstm_40/zeros_1/mulMullstm_40/strided_slice:output:0lstm_40/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros_1/muls
lstm_40/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_40/zeros_1/Less/y
lstm_40/zeros_1/LessLesslstm_40/zeros_1/mul:z:0lstm_40/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros_1/Lessv
lstm_40/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros_1/packed/1©
lstm_40/zeros_1/packedPacklstm_40/strided_slice:output:0!lstm_40/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_40/zeros_1/packeds
lstm_40/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_40/zeros_1/Const
lstm_40/zeros_1Filllstm_40/zeros_1/packed:output:0lstm_40/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/zeros_1
lstm_40/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_40/transpose/perm¬
lstm_40/transpose	Transpose max_pooling1d_3/Squeeze:output:0lstm_40/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_40/transposeg
lstm_40/Shape_1Shapelstm_40/transpose:y:0*
T0*
_output_shapes
:2
lstm_40/Shape_1
lstm_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_40/strided_slice_1/stack
lstm_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_1/stack_1
lstm_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_1/stack_2
lstm_40/strided_slice_1StridedSlicelstm_40/Shape_1:output:0&lstm_40/strided_slice_1/stack:output:0(lstm_40/strided_slice_1/stack_1:output:0(lstm_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_40/strided_slice_1
#lstm_40/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_40/TensorArrayV2/element_shapeÒ
lstm_40/TensorArrayV2TensorListReserve,lstm_40/TensorArrayV2/element_shape:output:0 lstm_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_40/TensorArrayV2Ï
=lstm_40/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_40/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_40/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_40/transpose:y:0Flstm_40/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_40/TensorArrayUnstack/TensorListFromTensor
lstm_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_40/strided_slice_2/stack
lstm_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_2/stack_1
lstm_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_2/stack_2¬
lstm_40/strided_slice_2StridedSlicelstm_40/transpose:y:0&lstm_40/strided_slice_2/stack:output:0(lstm_40/strided_slice_2/stack_1:output:0(lstm_40/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_40/strided_slice_2Ì
*lstm_40/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3lstm_40_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02,
*lstm_40/lstm_cell_40/MatMul/ReadVariableOpÌ
lstm_40/lstm_cell_40/MatMulMatMul lstm_40/strided_slice_2:output:02lstm_40/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/MatMulÒ
,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5lstm_40_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOpÈ
lstm_40/lstm_cell_40/MatMul_1MatMullstm_40/zeros:output:04lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/MatMul_1¿
lstm_40/lstm_cell_40/addAddV2%lstm_40/lstm_cell_40/MatMul:product:0'lstm_40/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/addË
+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4lstm_40_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOpÌ
lstm_40/lstm_cell_40/BiasAddBiasAddlstm_40/lstm_cell_40/add:z:03lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/BiasAdd
$lstm_40/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_40/lstm_cell_40/split/split_dim
lstm_40/lstm_cell_40/splitSplit-lstm_40/lstm_cell_40/split/split_dim:output:0%lstm_40/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_40/lstm_cell_40/split
lstm_40/lstm_cell_40/SigmoidSigmoid#lstm_40/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/Sigmoid¢
lstm_40/lstm_cell_40/Sigmoid_1Sigmoid#lstm_40/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_40/lstm_cell_40/Sigmoid_1«
lstm_40/lstm_cell_40/mulMul"lstm_40/lstm_cell_40/Sigmoid_1:y:0lstm_40/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/mul
lstm_40/lstm_cell_40/ReluRelu#lstm_40/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/Relu¼
lstm_40/lstm_cell_40/mul_1Mul lstm_40/lstm_cell_40/Sigmoid:y:0'lstm_40/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/mul_1±
lstm_40/lstm_cell_40/add_1AddV2lstm_40/lstm_cell_40/mul:z:0lstm_40/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/add_1¢
lstm_40/lstm_cell_40/Sigmoid_2Sigmoid#lstm_40/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_40/lstm_cell_40/Sigmoid_2
lstm_40/lstm_cell_40/Relu_1Relulstm_40/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/Relu_1À
lstm_40/lstm_cell_40/mul_2Mul"lstm_40/lstm_cell_40/Sigmoid_2:y:0)lstm_40/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/mul_2
%lstm_40/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_40/TensorArrayV2_1/element_shapeØ
lstm_40/TensorArrayV2_1TensorListReserve.lstm_40/TensorArrayV2_1/element_shape:output:0 lstm_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_40/TensorArrayV2_1^
lstm_40/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_40/time
 lstm_40/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/maximum_iterationsz
lstm_40/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_40/while/loop_counter
lstm_40/whileWhile#lstm_40/while/loop_counter:output:0)lstm_40/while/maximum_iterations:output:0lstm_40/time:output:0 lstm_40/TensorArrayV2_1:handle:0lstm_40/zeros:output:0lstm_40/zeros_1:output:0 lstm_40/strided_slice_1:output:0?lstm_40/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_40_lstm_cell_40_matmul_readvariableop_resource5lstm_40_lstm_cell_40_matmul_1_readvariableop_resource4lstm_40_lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_40_while_body_376586*%
condR
lstm_40_while_cond_376585*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_40/whileÅ
8lstm_40/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_40/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_40/TensorArrayV2Stack/TensorListStackTensorListStacklstm_40/while:output:3Alstm_40/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_40/TensorArrayV2Stack/TensorListStack
lstm_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_40/strided_slice_3/stack
lstm_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_40/strided_slice_3/stack_1
lstm_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_3/stack_2Ê
lstm_40/strided_slice_3StridedSlice3lstm_40/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_40/strided_slice_3/stack:output:0(lstm_40/strided_slice_3/stack_1:output:0(lstm_40/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_40/strided_slice_3
lstm_40/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_40/transpose_1/permÅ
lstm_40/transpose_1	Transpose3lstm_40/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_40/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/transpose_1v
lstm_40/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_40/runtime
dropout_22/IdentityIdentitylstm_40/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_22/Identityj
lstm_41/ShapeShapedropout_22/Identity:output:0*
T0*
_output_shapes
:2
lstm_41/Shape
lstm_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_41/strided_slice/stack
lstm_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_41/strided_slice/stack_1
lstm_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_41/strided_slice/stack_2
lstm_41/strided_sliceStridedSlicelstm_41/Shape:output:0$lstm_41/strided_slice/stack:output:0&lstm_41/strided_slice/stack_1:output:0&lstm_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_41/strided_slicel
lstm_41/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros/mul/y
lstm_41/zeros/mulMullstm_41/strided_slice:output:0lstm_41/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros/mulo
lstm_41/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_41/zeros/Less/y
lstm_41/zeros/LessLesslstm_41/zeros/mul:z:0lstm_41/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros/Lessr
lstm_41/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros/packed/1£
lstm_41/zeros/packedPacklstm_41/strided_slice:output:0lstm_41/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_41/zeros/packedo
lstm_41/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_41/zeros/Const
lstm_41/zerosFilllstm_41/zeros/packed:output:0lstm_41/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/zerosp
lstm_41/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros_1/mul/y
lstm_41/zeros_1/mulMullstm_41/strided_slice:output:0lstm_41/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros_1/muls
lstm_41/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_41/zeros_1/Less/y
lstm_41/zeros_1/LessLesslstm_41/zeros_1/mul:z:0lstm_41/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros_1/Lessv
lstm_41/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros_1/packed/1©
lstm_41/zeros_1/packedPacklstm_41/strided_slice:output:0!lstm_41/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_41/zeros_1/packeds
lstm_41/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_41/zeros_1/Const
lstm_41/zeros_1Filllstm_41/zeros_1/packed:output:0lstm_41/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/zeros_1
lstm_41/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_41/transpose/perm¨
lstm_41/transpose	Transposedropout_22/Identity:output:0lstm_41/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/transposeg
lstm_41/Shape_1Shapelstm_41/transpose:y:0*
T0*
_output_shapes
:2
lstm_41/Shape_1
lstm_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_41/strided_slice_1/stack
lstm_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_1/stack_1
lstm_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_1/stack_2
lstm_41/strided_slice_1StridedSlicelstm_41/Shape_1:output:0&lstm_41/strided_slice_1/stack:output:0(lstm_41/strided_slice_1/stack_1:output:0(lstm_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_41/strided_slice_1
#lstm_41/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_41/TensorArrayV2/element_shapeÒ
lstm_41/TensorArrayV2TensorListReserve,lstm_41/TensorArrayV2/element_shape:output:0 lstm_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_41/TensorArrayV2Ï
=lstm_41/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_41/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_41/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_41/transpose:y:0Flstm_41/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_41/TensorArrayUnstack/TensorListFromTensor
lstm_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_41/strided_slice_2/stack
lstm_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_2/stack_1
lstm_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_2/stack_2¬
lstm_41/strided_slice_2StridedSlicelstm_41/transpose:y:0&lstm_41/strided_slice_2/stack:output:0(lstm_41/strided_slice_2/stack_1:output:0(lstm_41/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_41/strided_slice_2Ì
*lstm_41/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3lstm_41_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*lstm_41/lstm_cell_41/MatMul/ReadVariableOpÌ
lstm_41/lstm_cell_41/MatMulMatMul lstm_41/strided_slice_2:output:02lstm_41/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/MatMulÒ
,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5lstm_41_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOpÈ
lstm_41/lstm_cell_41/MatMul_1MatMullstm_41/zeros:output:04lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/MatMul_1¿
lstm_41/lstm_cell_41/addAddV2%lstm_41/lstm_cell_41/MatMul:product:0'lstm_41/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/addË
+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4lstm_41_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOpÌ
lstm_41/lstm_cell_41/BiasAddBiasAddlstm_41/lstm_cell_41/add:z:03lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/BiasAdd
$lstm_41/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_41/lstm_cell_41/split/split_dim
lstm_41/lstm_cell_41/splitSplit-lstm_41/lstm_cell_41/split/split_dim:output:0%lstm_41/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_41/lstm_cell_41/split
lstm_41/lstm_cell_41/SigmoidSigmoid#lstm_41/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/Sigmoid¢
lstm_41/lstm_cell_41/Sigmoid_1Sigmoid#lstm_41/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_41/lstm_cell_41/Sigmoid_1«
lstm_41/lstm_cell_41/mulMul"lstm_41/lstm_cell_41/Sigmoid_1:y:0lstm_41/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/mul
lstm_41/lstm_cell_41/ReluRelu#lstm_41/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/Relu¼
lstm_41/lstm_cell_41/mul_1Mul lstm_41/lstm_cell_41/Sigmoid:y:0'lstm_41/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/mul_1±
lstm_41/lstm_cell_41/add_1AddV2lstm_41/lstm_cell_41/mul:z:0lstm_41/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/add_1¢
lstm_41/lstm_cell_41/Sigmoid_2Sigmoid#lstm_41/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_41/lstm_cell_41/Sigmoid_2
lstm_41/lstm_cell_41/Relu_1Relulstm_41/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/Relu_1À
lstm_41/lstm_cell_41/mul_2Mul"lstm_41/lstm_cell_41/Sigmoid_2:y:0)lstm_41/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/mul_2
%lstm_41/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_41/TensorArrayV2_1/element_shapeØ
lstm_41/TensorArrayV2_1TensorListReserve.lstm_41/TensorArrayV2_1/element_shape:output:0 lstm_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_41/TensorArrayV2_1^
lstm_41/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_41/time
 lstm_41/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/maximum_iterationsz
lstm_41/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_41/while/loop_counter
lstm_41/whileWhile#lstm_41/while/loop_counter:output:0)lstm_41/while/maximum_iterations:output:0lstm_41/time:output:0 lstm_41/TensorArrayV2_1:handle:0lstm_41/zeros:output:0lstm_41/zeros_1:output:0 lstm_41/strided_slice_1:output:0?lstm_41/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_41_lstm_cell_41_matmul_readvariableop_resource5lstm_41_lstm_cell_41_matmul_1_readvariableop_resource4lstm_41_lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_41_while_body_376734*%
condR
lstm_41_while_cond_376733*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_41/whileÅ
8lstm_41/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_41/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_41/TensorArrayV2Stack/TensorListStackTensorListStacklstm_41/while:output:3Alstm_41/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_41/TensorArrayV2Stack/TensorListStack
lstm_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_41/strided_slice_3/stack
lstm_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_41/strided_slice_3/stack_1
lstm_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_3/stack_2Ê
lstm_41/strided_slice_3StridedSlice3lstm_41/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_41/strided_slice_3/stack:output:0(lstm_41/strided_slice_3/stack_1:output:0(lstm_41/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_41/strided_slice_3
lstm_41/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_41/transpose_1/permÅ
lstm_41/transpose_1	Transpose3lstm_41/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_41/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/transpose_1v
lstm_41/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_41/runtime
dropout_23/IdentityIdentity lstm_41/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/Identity¨
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_40/MatMul/ReadVariableOp¤
dense_40/MatMulMatMuldropout_23/Identity:output:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_40/MatMul§
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_40/BiasAdd/ReadVariableOp¥
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_40/BiasAdds
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_40/Relu¨
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_41/MatMul/ReadVariableOp£
dense_41/MatMulMatMuldense_40/Relu:activations:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/MatMul§
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_41/BiasAdd/ReadVariableOp¥
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/BiasAddm
reshape_20/ShapeShapedense_41/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_20/Shape
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2¤
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/1z
reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/2×
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0#reshape_20/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape§
reshape_20/ReshapeReshapedense_41/BiasAdd:output:0!reshape_20/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_20/Reshapez
IdentityIdentityreshape_20/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_9/BiasAdd/ReadVariableOp,^conv1d_9/conv1d/ExpandDims_1/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp,^lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp+^lstm_40/lstm_cell_40/MatMul/ReadVariableOp-^lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_40/while,^lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp+^lstm_41/lstm_cell_41/MatMul/ReadVariableOp-^lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp^lstm_41/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_9/BiasAdd/ReadVariableOpconv1d_9/BiasAdd/ReadVariableOp2Z
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2Z
+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp2X
*lstm_40/lstm_cell_40/MatMul/ReadVariableOp*lstm_40/lstm_cell_40/MatMul/ReadVariableOp2\
,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp2
lstm_40/whilelstm_40/while2Z
+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp2X
*lstm_41/lstm_cell_41/MatMul/ReadVariableOp*lstm_41/lstm_cell_41/MatMul/ReadVariableOp2\
,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp2
lstm_41/whilelstm_41/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_378619

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦/

I__inference_sequential_14_layer_call_and_return_conditional_losses_375685

inputs%
conv1d_8_375270: 
conv1d_8_375272: %
conv1d_9_375292: @
conv1d_9_375294:@ 
lstm_40_375457:@  
lstm_40_375459: 
lstm_40_375461:  
lstm_41_375622:  
lstm_41_375624: 
lstm_41_375626: !
dense_40_375648:
dense_40_375650:!
dense_41_375664:
dense_41_375666:
identity¢ conv1d_8/StatefulPartitionedCall¢ conv1d_9/StatefulPartitionedCall¢ dense_40/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢lstm_40/StatefulPartitionedCall¢lstm_41/StatefulPartitionedCall
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_8_375270conv1d_8_375272*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_8_layer_call_and_return_conditional_losses_3752692"
 conv1d_8/StatefulPartitionedCall»
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0conv1d_9_375292conv1d_9_375294*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_9_layer_call_and_return_conditional_losses_3752912"
 conv1d_9/StatefulPartitionedCall
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_3753042!
max_pooling1d_3/PartitionedCallÇ
lstm_40/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_3/PartitionedCall:output:0lstm_40_375457lstm_40_375459lstm_40_375461*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3754562!
lstm_40/StatefulPartitionedCall
dropout_22/PartitionedCallPartitionedCall(lstm_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_3754692
dropout_22/PartitionedCall¾
lstm_41/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0lstm_41_375622lstm_41_375624lstm_41_375626*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3756212!
lstm_41/StatefulPartitionedCallü
dropout_23/PartitionedCallPartitionedCall(lstm_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_3756342
dropout_23/PartitionedCall±
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_40_375648dense_40_375650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_3756472"
 dense_40/StatefulPartitionedCall·
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_375664dense_41_375666*
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
GPU 2J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_3756632"
 dense_41/StatefulPartitionedCall
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_3756822
reshape_20/PartitionedCall
IdentityIdentity#reshape_20/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_8/StatefulPartitionedCall!^conv1d_9/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall ^lstm_40/StatefulPartitionedCall ^lstm_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2B
lstm_40/StatefulPartitionedCalllstm_40/StatefulPartitionedCall2B
lstm_41/StatefulPartitionedCalllstm_41/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_377844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377844___redundant_placeholder04
0while_while_cond_377844___redundant_placeholder14
0while_while_cond_377844___redundant_placeholder24
0while_while_cond_377844___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
\

C__inference_lstm_40_layer_call_and_return_conditional_losses_377476
inputs_0=
+lstm_cell_40_matmul_readvariableop_resource:@ ?
-lstm_cell_40_matmul_1_readvariableop_resource: :
,lstm_cell_40_biasadd_readvariableop_resource: 
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp¬
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMulº
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp¨
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMul_1
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/add³
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp¬
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_1
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu_1 
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_377392*
condR
while_cond_377391*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
ÜÖ
 
"__inference__traced_restore_379211
file_prefix6
 assignvariableop_conv1d_8_kernel: .
 assignvariableop_1_conv1d_8_bias: 8
"assignvariableop_2_conv1d_9_kernel: @.
 assignvariableop_3_conv1d_9_bias:@4
"assignvariableop_4_dense_40_kernel:.
 assignvariableop_5_dense_40_bias:4
"assignvariableop_6_dense_41_kernel:.
 assignvariableop_7_dense_41_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: A
/assignvariableop_13_lstm_40_lstm_cell_40_kernel:@ K
9assignvariableop_14_lstm_40_lstm_cell_40_recurrent_kernel: ;
-assignvariableop_15_lstm_40_lstm_cell_40_bias: A
/assignvariableop_16_lstm_41_lstm_cell_41_kernel: K
9assignvariableop_17_lstm_41_lstm_cell_41_recurrent_kernel: ;
-assignvariableop_18_lstm_41_lstm_cell_41_bias: #
assignvariableop_19_total: #
assignvariableop_20_count: @
*assignvariableop_21_adam_conv1d_8_kernel_m: 6
(assignvariableop_22_adam_conv1d_8_bias_m: @
*assignvariableop_23_adam_conv1d_9_kernel_m: @6
(assignvariableop_24_adam_conv1d_9_bias_m:@<
*assignvariableop_25_adam_dense_40_kernel_m:6
(assignvariableop_26_adam_dense_40_bias_m:<
*assignvariableop_27_adam_dense_41_kernel_m:6
(assignvariableop_28_adam_dense_41_bias_m:H
6assignvariableop_29_adam_lstm_40_lstm_cell_40_kernel_m:@ R
@assignvariableop_30_adam_lstm_40_lstm_cell_40_recurrent_kernel_m: B
4assignvariableop_31_adam_lstm_40_lstm_cell_40_bias_m: H
6assignvariableop_32_adam_lstm_41_lstm_cell_41_kernel_m: R
@assignvariableop_33_adam_lstm_41_lstm_cell_41_recurrent_kernel_m: B
4assignvariableop_34_adam_lstm_41_lstm_cell_41_bias_m: @
*assignvariableop_35_adam_conv1d_8_kernel_v: 6
(assignvariableop_36_adam_conv1d_8_bias_v: @
*assignvariableop_37_adam_conv1d_9_kernel_v: @6
(assignvariableop_38_adam_conv1d_9_bias_v:@<
*assignvariableop_39_adam_dense_40_kernel_v:6
(assignvariableop_40_adam_dense_40_bias_v:<
*assignvariableop_41_adam_dense_41_kernel_v:6
(assignvariableop_42_adam_dense_41_bias_v:H
6assignvariableop_43_adam_lstm_40_lstm_cell_40_kernel_v:@ R
@assignvariableop_44_adam_lstm_40_lstm_cell_40_recurrent_kernel_v: B
4assignvariableop_45_adam_lstm_40_lstm_cell_40_bias_v: H
6assignvariableop_46_adam_lstm_41_lstm_cell_41_kernel_v: R
@assignvariableop_47_adam_lstm_41_lstm_cell_41_recurrent_kernel_v: B
4assignvariableop_48_adam_lstm_41_lstm_cell_41_bias_v: 
identity_50¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9´
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*À
value¶B³2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesò
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¨
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Þ
_output_shapesË
È::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv1d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_40_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_40_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_41_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_41_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8¡
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¦
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12®
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13·
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_40_lstm_cell_40_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Á
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_40_lstm_cell_40_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15µ
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_40_lstm_cell_40_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16·
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_41_lstm_cell_41_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Á
AssignVariableOp_17AssignVariableOp9assignvariableop_17_lstm_41_lstm_cell_41_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18µ
AssignVariableOp_18AssignVariableOp-assignvariableop_18_lstm_41_lstm_cell_41_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¡
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¡
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv1d_8_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv1d_8_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv1d_9_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv1d_9_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_40_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_40_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_41_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_41_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¾
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_40_lstm_cell_40_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30È
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_lstm_40_lstm_cell_40_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¼
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_40_lstm_cell_40_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¾
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_41_lstm_cell_41_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33È
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_lstm_41_lstm_cell_41_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¼
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_41_lstm_cell_41_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv1d_8_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_8_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv1d_9_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv1d_9_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_40_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_40_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_41_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_41_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¾
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_40_lstm_cell_40_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44È
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_lstm_40_lstm_cell_40_recurrent_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¼
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_40_lstm_cell_40_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¾
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_lstm_41_lstm_cell_41_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47È
AssignVariableOp_47AssignVariableOp@assignvariableop_47_adam_lstm_41_lstm_cell_41_recurrent_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48¼
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_lstm_41_lstm_cell_41_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_489
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_49f
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_50ü
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
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
¤
g
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_375304

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

ExpandDims
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2	
MaxPool|
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2	
Squeezeh
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
\

C__inference_lstm_40_layer_call_and_return_conditional_losses_377627
inputs_0=
+lstm_cell_40_matmul_readvariableop_resource:@ ?
-lstm_cell_40_matmul_1_readvariableop_resource: :
,lstm_cell_40_biasadd_readvariableop_resource: 
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp¬
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMulº
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp¨
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMul_1
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/add³
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp¬
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_1
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu_1 
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_377543*
condR
while_cond_377542*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
é

H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_374061

inputs

states
states_10
matmul_readvariableop_resource:@ 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
»
´
(__inference_lstm_41_layer_call_fn_377978
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3749842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ò%
Ý
while_body_374075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_40_374099_0:@ -
while_lstm_cell_40_374101_0: )
while_lstm_cell_40_374103_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_40_374099:@ +
while_lstm_cell_40_374101: '
while_lstm_cell_40_374103: ¢*while/lstm_cell_40/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_374099_0while_lstm_cell_40_374101_0while_lstm_cell_40_374103_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3740612,
*while/lstm_cell_40/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_40/StatefulPartitionedCall*"
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
while_lstm_cell_40_374099while_lstm_cell_40_374099_0"8
while_lstm_cell_40_374101while_lstm_cell_40_374101_0"8
while_lstm_cell_40_374103while_lstm_cell_40_374103_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ü[

C__inference_lstm_41_layer_call_and_return_conditional_losses_375929

inputs=
+lstm_cell_41_matmul_readvariableop_resource: ?
-lstm_cell_41_matmul_1_readvariableop_resource: :
,lstm_cell_41_biasadd_readvariableop_resource: 
identity¢#lstm_cell_41/BiasAdd/ReadVariableOp¢"lstm_cell_41/MatMul/ReadVariableOp¢$lstm_cell_41/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp¬
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMulº
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp¨
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMul_1
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/add³
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp¬
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dimó
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_41/split
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_1
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_1
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/add_1
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu_1 
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_375845*
condR
while_cond_375844*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_375844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375844___redundant_placeholder04
0while_while_cond_375844___redundant_placeholder14
0while_while_cond_375844___redundant_placeholder24
0while_while_cond_375844___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
×[

C__inference_lstm_40_layer_call_and_return_conditional_losses_375456

inputs=
+lstm_cell_40_matmul_readvariableop_resource:@ ?
-lstm_cell_40_matmul_1_readvariableop_resource: :
,lstm_cell_40_biasadd_readvariableop_resource: 
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp¬
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMulº
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp¨
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMul_1
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/add³
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp¬
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_1
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu_1 
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_375372*
condR
while_cond_375371*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
?
Ê
while_body_375372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_40_matmul_readvariableop_resource_0:@ G
5while_lstm_cell_40_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_40_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_40_matmul_readvariableop_resource:@ E
3while_lstm_cell_40_matmul_1_readvariableop_resource: @
2while_lstm_cell_40_biasadd_readvariableop_resource: ¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOpÖ
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMulÎ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp¿
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMul_1·
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/addÇ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÄ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/BiasAdd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu´
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_1©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_2
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu_1¸
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
?
Ê
while_body_375845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0: G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_41_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource: E
3while_lstm_cell_41_matmul_1_readvariableop_resource: @
2while_lstm_cell_41_biasadd_readvariableop_resource: ¢)while/lstm_cell_41/BiasAdd/ReadVariableOp¢(while/lstm_cell_41/MatMul/ReadVariableOp¢*while/lstm_cell_41/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOpÖ
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMulÎ
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp¿
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMul_1·
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/addÇ
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOpÄ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/BiasAdd
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_41/split
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_1 
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu´
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_1©
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/add_1
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_2
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu_1¸
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
­
ö
.__inference_sequential_14_layer_call_fn_376300
conv1d_8_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_3762362
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
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_8_input
³
ó
-__inference_lstm_cell_40_layer_call_fn_378722

inputs
states_0
states_1
unknown:@ 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3742072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ò%
Ý
while_body_374705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_41_374729_0: -
while_lstm_cell_41_374731_0: )
while_lstm_cell_41_374733_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_41_374729: +
while_lstm_cell_41_374731: '
while_lstm_cell_41_374733: ¢*while/lstm_cell_41/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_41_374729_0while_lstm_cell_41_374731_0while_lstm_cell_41_374733_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3746912,
*while/lstm_cell_41/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_41/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_41/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_41/StatefulPartitionedCall*"
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
while_lstm_cell_41_374729while_lstm_cell_41_374729_0"8
while_lstm_cell_41_374731while_lstm_cell_41_374731_0"8
while_lstm_cell_41_374733while_lstm_cell_41_374733_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_41/StatefulPartitionedCall*while/lstm_cell_41/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¬
e
F__inference_dropout_23_layer_call_and_return_conditional_losses_375762

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_374914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_374914___redundant_placeholder04
0while_while_cond_374914___redundant_placeholder14
0while_while_cond_374914___redundant_placeholder24
0while_while_cond_374914___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¿­
Ø
I__inference_sequential_14_layer_call_and_return_conditional_losses_377205

inputsJ
4conv1d_8_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_8_biasadd_readvariableop_resource: J
4conv1d_9_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_9_biasadd_readvariableop_resource:@E
3lstm_40_lstm_cell_40_matmul_readvariableop_resource:@ G
5lstm_40_lstm_cell_40_matmul_1_readvariableop_resource: B
4lstm_40_lstm_cell_40_biasadd_readvariableop_resource: E
3lstm_41_lstm_cell_41_matmul_readvariableop_resource: G
5lstm_41_lstm_cell_41_matmul_1_readvariableop_resource: B
4lstm_41_lstm_cell_41_biasadd_readvariableop_resource: 9
'dense_40_matmul_readvariableop_resource:6
(dense_40_biasadd_readvariableop_resource:9
'dense_41_matmul_readvariableop_resource:6
(dense_41_biasadd_readvariableop_resource:
identity¢conv1d_8/BiasAdd/ReadVariableOp¢+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_9/BiasAdd/ReadVariableOp¢+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp¢dense_40/BiasAdd/ReadVariableOp¢dense_40/MatMul/ReadVariableOp¢dense_41/BiasAdd/ReadVariableOp¢dense_41/MatMul/ReadVariableOp¢+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp¢*lstm_40/lstm_cell_40/MatMul/ReadVariableOp¢,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp¢lstm_40/while¢+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp¢*lstm_41/lstm_cell_41/MatMul/ReadVariableOp¢,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp¢lstm_41/while
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_8/conv1d/ExpandDims/dim±
conv1d_8/conv1d/ExpandDims
ExpandDimsinputs'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/ExpandDimsÓ
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dimÛ
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_8/conv1d/ExpandDims_1Ú
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d_8/conv1d­
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/Squeeze§
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_8/BiasAdd/ReadVariableOp°
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/BiasAddw
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_8/Relu
conv1d_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_9/conv1d/ExpandDims/dimÆ
conv1d_9/conv1d/ExpandDims
ExpandDimsconv1d_8/Relu:activations:0'conv1d_9/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_9/conv1d/ExpandDimsÓ
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_9/conv1d/ExpandDims_1/dimÛ
conv1d_9/conv1d/ExpandDims_1
ExpandDims3conv1d_9/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_9/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_9/conv1d/ExpandDims_1Ú
conv1d_9/conv1dConv2D#conv1d_9/conv1d/ExpandDims:output:0%conv1d_9/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d_9/conv1d­
conv1d_9/conv1d/SqueezeSqueezeconv1d_9/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_9/conv1d/Squeeze§
conv1d_9/BiasAdd/ReadVariableOpReadVariableOp(conv1d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_9/BiasAdd/ReadVariableOp°
conv1d_9/BiasAddBiasAdd conv1d_9/conv1d/Squeeze:output:0'conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_9/BiasAddw
conv1d_9/ReluReluconv1d_9/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_9/Relu
max_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_3/ExpandDims/dimÆ
max_pooling1d_3/ExpandDims
ExpandDimsconv1d_9/Relu:activations:0'max_pooling1d_3/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
max_pooling1d_3/ExpandDimsÎ
max_pooling1d_3/MaxPoolMaxPool#max_pooling1d_3/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2
max_pooling1d_3/MaxPool¬
max_pooling1d_3/SqueezeSqueeze max_pooling1d_3/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_3/Squeezen
lstm_40/ShapeShape max_pooling1d_3/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_40/Shape
lstm_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_40/strided_slice/stack
lstm_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_40/strided_slice/stack_1
lstm_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_40/strided_slice/stack_2
lstm_40/strided_sliceStridedSlicelstm_40/Shape:output:0$lstm_40/strided_slice/stack:output:0&lstm_40/strided_slice/stack_1:output:0&lstm_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_40/strided_slicel
lstm_40/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros/mul/y
lstm_40/zeros/mulMullstm_40/strided_slice:output:0lstm_40/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros/mulo
lstm_40/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_40/zeros/Less/y
lstm_40/zeros/LessLesslstm_40/zeros/mul:z:0lstm_40/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros/Lessr
lstm_40/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros/packed/1£
lstm_40/zeros/packedPacklstm_40/strided_slice:output:0lstm_40/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_40/zeros/packedo
lstm_40/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_40/zeros/Const
lstm_40/zerosFilllstm_40/zeros/packed:output:0lstm_40/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/zerosp
lstm_40/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros_1/mul/y
lstm_40/zeros_1/mulMullstm_40/strided_slice:output:0lstm_40/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros_1/muls
lstm_40/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_40/zeros_1/Less/y
lstm_40/zeros_1/LessLesslstm_40/zeros_1/mul:z:0lstm_40/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_40/zeros_1/Lessv
lstm_40/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/zeros_1/packed/1©
lstm_40/zeros_1/packedPacklstm_40/strided_slice:output:0!lstm_40/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_40/zeros_1/packeds
lstm_40/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_40/zeros_1/Const
lstm_40/zeros_1Filllstm_40/zeros_1/packed:output:0lstm_40/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/zeros_1
lstm_40/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_40/transpose/perm¬
lstm_40/transpose	Transpose max_pooling1d_3/Squeeze:output:0lstm_40/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_40/transposeg
lstm_40/Shape_1Shapelstm_40/transpose:y:0*
T0*
_output_shapes
:2
lstm_40/Shape_1
lstm_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_40/strided_slice_1/stack
lstm_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_1/stack_1
lstm_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_1/stack_2
lstm_40/strided_slice_1StridedSlicelstm_40/Shape_1:output:0&lstm_40/strided_slice_1/stack:output:0(lstm_40/strided_slice_1/stack_1:output:0(lstm_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_40/strided_slice_1
#lstm_40/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_40/TensorArrayV2/element_shapeÒ
lstm_40/TensorArrayV2TensorListReserve,lstm_40/TensorArrayV2/element_shape:output:0 lstm_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_40/TensorArrayV2Ï
=lstm_40/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_40/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_40/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_40/transpose:y:0Flstm_40/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_40/TensorArrayUnstack/TensorListFromTensor
lstm_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_40/strided_slice_2/stack
lstm_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_2/stack_1
lstm_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_2/stack_2¬
lstm_40/strided_slice_2StridedSlicelstm_40/transpose:y:0&lstm_40/strided_slice_2/stack:output:0(lstm_40/strided_slice_2/stack_1:output:0(lstm_40/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_40/strided_slice_2Ì
*lstm_40/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3lstm_40_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02,
*lstm_40/lstm_cell_40/MatMul/ReadVariableOpÌ
lstm_40/lstm_cell_40/MatMulMatMul lstm_40/strided_slice_2:output:02lstm_40/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/MatMulÒ
,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5lstm_40_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOpÈ
lstm_40/lstm_cell_40/MatMul_1MatMullstm_40/zeros:output:04lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/MatMul_1¿
lstm_40/lstm_cell_40/addAddV2%lstm_40/lstm_cell_40/MatMul:product:0'lstm_40/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/addË
+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4lstm_40_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOpÌ
lstm_40/lstm_cell_40/BiasAddBiasAddlstm_40/lstm_cell_40/add:z:03lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_40/lstm_cell_40/BiasAdd
$lstm_40/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_40/lstm_cell_40/split/split_dim
lstm_40/lstm_cell_40/splitSplit-lstm_40/lstm_cell_40/split/split_dim:output:0%lstm_40/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_40/lstm_cell_40/split
lstm_40/lstm_cell_40/SigmoidSigmoid#lstm_40/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/Sigmoid¢
lstm_40/lstm_cell_40/Sigmoid_1Sigmoid#lstm_40/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_40/lstm_cell_40/Sigmoid_1«
lstm_40/lstm_cell_40/mulMul"lstm_40/lstm_cell_40/Sigmoid_1:y:0lstm_40/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/mul
lstm_40/lstm_cell_40/ReluRelu#lstm_40/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/Relu¼
lstm_40/lstm_cell_40/mul_1Mul lstm_40/lstm_cell_40/Sigmoid:y:0'lstm_40/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/mul_1±
lstm_40/lstm_cell_40/add_1AddV2lstm_40/lstm_cell_40/mul:z:0lstm_40/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/add_1¢
lstm_40/lstm_cell_40/Sigmoid_2Sigmoid#lstm_40/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_40/lstm_cell_40/Sigmoid_2
lstm_40/lstm_cell_40/Relu_1Relulstm_40/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/Relu_1À
lstm_40/lstm_cell_40/mul_2Mul"lstm_40/lstm_cell_40/Sigmoid_2:y:0)lstm_40/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/lstm_cell_40/mul_2
%lstm_40/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_40/TensorArrayV2_1/element_shapeØ
lstm_40/TensorArrayV2_1TensorListReserve.lstm_40/TensorArrayV2_1/element_shape:output:0 lstm_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_40/TensorArrayV2_1^
lstm_40/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_40/time
 lstm_40/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/maximum_iterationsz
lstm_40/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_40/while/loop_counter
lstm_40/whileWhile#lstm_40/while/loop_counter:output:0)lstm_40/while/maximum_iterations:output:0lstm_40/time:output:0 lstm_40/TensorArrayV2_1:handle:0lstm_40/zeros:output:0lstm_40/zeros_1:output:0 lstm_40/strided_slice_1:output:0?lstm_40/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_40_lstm_cell_40_matmul_readvariableop_resource5lstm_40_lstm_cell_40_matmul_1_readvariableop_resource4lstm_40_lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_40_while_body_376936*%
condR
lstm_40_while_cond_376935*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_40/whileÅ
8lstm_40/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_40/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_40/TensorArrayV2Stack/TensorListStackTensorListStacklstm_40/while:output:3Alstm_40/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_40/TensorArrayV2Stack/TensorListStack
lstm_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_40/strided_slice_3/stack
lstm_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_40/strided_slice_3/stack_1
lstm_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_40/strided_slice_3/stack_2Ê
lstm_40/strided_slice_3StridedSlice3lstm_40/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_40/strided_slice_3/stack:output:0(lstm_40/strided_slice_3/stack_1:output:0(lstm_40/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_40/strided_slice_3
lstm_40/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_40/transpose_1/permÅ
lstm_40/transpose_1	Transpose3lstm_40/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_40/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/transpose_1v
lstm_40/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_40/runtimey
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_22/dropout/Const©
dropout_22/dropout/MulMullstm_40/transpose_1:y:0!dropout_22/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_22/dropout/Mul{
dropout_22/dropout/ShapeShapelstm_40/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_22/dropout/ShapeÙ
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_22/dropout/random_uniform/RandomUniform
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_22/dropout/GreaterEqual/yî
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_22/dropout/GreaterEqual¤
dropout_22/dropout/CastCast#dropout_22/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_22/dropout/Castª
dropout_22/dropout/Mul_1Muldropout_22/dropout/Mul:z:0dropout_22/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_22/dropout/Mul_1j
lstm_41/ShapeShapedropout_22/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_41/Shape
lstm_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_41/strided_slice/stack
lstm_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_41/strided_slice/stack_1
lstm_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_41/strided_slice/stack_2
lstm_41/strided_sliceStridedSlicelstm_41/Shape:output:0$lstm_41/strided_slice/stack:output:0&lstm_41/strided_slice/stack_1:output:0&lstm_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_41/strided_slicel
lstm_41/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros/mul/y
lstm_41/zeros/mulMullstm_41/strided_slice:output:0lstm_41/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros/mulo
lstm_41/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_41/zeros/Less/y
lstm_41/zeros/LessLesslstm_41/zeros/mul:z:0lstm_41/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros/Lessr
lstm_41/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros/packed/1£
lstm_41/zeros/packedPacklstm_41/strided_slice:output:0lstm_41/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_41/zeros/packedo
lstm_41/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_41/zeros/Const
lstm_41/zerosFilllstm_41/zeros/packed:output:0lstm_41/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/zerosp
lstm_41/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros_1/mul/y
lstm_41/zeros_1/mulMullstm_41/strided_slice:output:0lstm_41/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros_1/muls
lstm_41/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_41/zeros_1/Less/y
lstm_41/zeros_1/LessLesslstm_41/zeros_1/mul:z:0lstm_41/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_41/zeros_1/Lessv
lstm_41/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/zeros_1/packed/1©
lstm_41/zeros_1/packedPacklstm_41/strided_slice:output:0!lstm_41/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_41/zeros_1/packeds
lstm_41/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_41/zeros_1/Const
lstm_41/zeros_1Filllstm_41/zeros_1/packed:output:0lstm_41/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/zeros_1
lstm_41/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_41/transpose/perm¨
lstm_41/transpose	Transposedropout_22/dropout/Mul_1:z:0lstm_41/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/transposeg
lstm_41/Shape_1Shapelstm_41/transpose:y:0*
T0*
_output_shapes
:2
lstm_41/Shape_1
lstm_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_41/strided_slice_1/stack
lstm_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_1/stack_1
lstm_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_1/stack_2
lstm_41/strided_slice_1StridedSlicelstm_41/Shape_1:output:0&lstm_41/strided_slice_1/stack:output:0(lstm_41/strided_slice_1/stack_1:output:0(lstm_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_41/strided_slice_1
#lstm_41/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_41/TensorArrayV2/element_shapeÒ
lstm_41/TensorArrayV2TensorListReserve,lstm_41/TensorArrayV2/element_shape:output:0 lstm_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_41/TensorArrayV2Ï
=lstm_41/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_41/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_41/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_41/transpose:y:0Flstm_41/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_41/TensorArrayUnstack/TensorListFromTensor
lstm_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_41/strided_slice_2/stack
lstm_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_2/stack_1
lstm_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_2/stack_2¬
lstm_41/strided_slice_2StridedSlicelstm_41/transpose:y:0&lstm_41/strided_slice_2/stack:output:0(lstm_41/strided_slice_2/stack_1:output:0(lstm_41/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_41/strided_slice_2Ì
*lstm_41/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3lstm_41_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*lstm_41/lstm_cell_41/MatMul/ReadVariableOpÌ
lstm_41/lstm_cell_41/MatMulMatMul lstm_41/strided_slice_2:output:02lstm_41/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/MatMulÒ
,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5lstm_41_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOpÈ
lstm_41/lstm_cell_41/MatMul_1MatMullstm_41/zeros:output:04lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/MatMul_1¿
lstm_41/lstm_cell_41/addAddV2%lstm_41/lstm_cell_41/MatMul:product:0'lstm_41/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/addË
+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4lstm_41_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOpÌ
lstm_41/lstm_cell_41/BiasAddBiasAddlstm_41/lstm_cell_41/add:z:03lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_41/lstm_cell_41/BiasAdd
$lstm_41/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_41/lstm_cell_41/split/split_dim
lstm_41/lstm_cell_41/splitSplit-lstm_41/lstm_cell_41/split/split_dim:output:0%lstm_41/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_41/lstm_cell_41/split
lstm_41/lstm_cell_41/SigmoidSigmoid#lstm_41/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/Sigmoid¢
lstm_41/lstm_cell_41/Sigmoid_1Sigmoid#lstm_41/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_41/lstm_cell_41/Sigmoid_1«
lstm_41/lstm_cell_41/mulMul"lstm_41/lstm_cell_41/Sigmoid_1:y:0lstm_41/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/mul
lstm_41/lstm_cell_41/ReluRelu#lstm_41/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/Relu¼
lstm_41/lstm_cell_41/mul_1Mul lstm_41/lstm_cell_41/Sigmoid:y:0'lstm_41/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/mul_1±
lstm_41/lstm_cell_41/add_1AddV2lstm_41/lstm_cell_41/mul:z:0lstm_41/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/add_1¢
lstm_41/lstm_cell_41/Sigmoid_2Sigmoid#lstm_41/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_41/lstm_cell_41/Sigmoid_2
lstm_41/lstm_cell_41/Relu_1Relulstm_41/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/Relu_1À
lstm_41/lstm_cell_41/mul_2Mul"lstm_41/lstm_cell_41/Sigmoid_2:y:0)lstm_41/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/lstm_cell_41/mul_2
%lstm_41/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_41/TensorArrayV2_1/element_shapeØ
lstm_41/TensorArrayV2_1TensorListReserve.lstm_41/TensorArrayV2_1/element_shape:output:0 lstm_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_41/TensorArrayV2_1^
lstm_41/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_41/time
 lstm_41/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/maximum_iterationsz
lstm_41/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_41/while/loop_counter
lstm_41/whileWhile#lstm_41/while/loop_counter:output:0)lstm_41/while/maximum_iterations:output:0lstm_41/time:output:0 lstm_41/TensorArrayV2_1:handle:0lstm_41/zeros:output:0lstm_41/zeros_1:output:0 lstm_41/strided_slice_1:output:0?lstm_41/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_41_lstm_cell_41_matmul_readvariableop_resource5lstm_41_lstm_cell_41_matmul_1_readvariableop_resource4lstm_41_lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_41_while_body_377091*%
condR
lstm_41_while_cond_377090*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_41/whileÅ
8lstm_41/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_41/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_41/TensorArrayV2Stack/TensorListStackTensorListStacklstm_41/while:output:3Alstm_41/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_41/TensorArrayV2Stack/TensorListStack
lstm_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_41/strided_slice_3/stack
lstm_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_41/strided_slice_3/stack_1
lstm_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_41/strided_slice_3/stack_2Ê
lstm_41/strided_slice_3StridedSlice3lstm_41/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_41/strided_slice_3/stack:output:0(lstm_41/strided_slice_3/stack_1:output:0(lstm_41/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_41/strided_slice_3
lstm_41/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_41/transpose_1/permÅ
lstm_41/transpose_1	Transpose3lstm_41/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_41/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/transpose_1v
lstm_41/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_41/runtimey
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_23/dropout/Const®
dropout_23/dropout/MulMul lstm_41/strided_slice_3:output:0!dropout_23/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/dropout/Mul
dropout_23/dropout/ShapeShape lstm_41/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_23/dropout/ShapeÕ
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_23/dropout/random_uniform/RandomUniform
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_23/dropout/GreaterEqual/yê
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_23/dropout/GreaterEqual 
dropout_23/dropout/CastCast#dropout_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/dropout/Cast¦
dropout_23/dropout/Mul_1Muldropout_23/dropout/Mul:z:0dropout_23/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_23/dropout/Mul_1¨
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_40/MatMul/ReadVariableOp¤
dense_40/MatMulMatMuldropout_23/dropout/Mul_1:z:0&dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_40/MatMul§
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_40/BiasAdd/ReadVariableOp¥
dense_40/BiasAddBiasAdddense_40/MatMul:product:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_40/BiasAdds
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_40/Relu¨
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_41/MatMul/ReadVariableOp£
dense_41/MatMulMatMuldense_40/Relu:activations:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/MatMul§
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_41/BiasAdd/ReadVariableOp¥
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/BiasAddm
reshape_20/ShapeShapedense_41/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_20/Shape
reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_20/strided_slice/stack
 reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_1
 reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_20/strided_slice/stack_2¤
reshape_20/strided_sliceStridedSlicereshape_20/Shape:output:0'reshape_20/strided_slice/stack:output:0)reshape_20/strided_slice/stack_1:output:0)reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_20/strided_slicez
reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/1z
reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_20/Reshape/shape/2×
reshape_20/Reshape/shapePack!reshape_20/strided_slice:output:0#reshape_20/Reshape/shape/1:output:0#reshape_20/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_20/Reshape/shape§
reshape_20/ReshapeReshapedense_41/BiasAdd:output:0!reshape_20/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_20/Reshapez
IdentityIdentityreshape_20/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¨
NoOpNoOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_9/BiasAdd/ReadVariableOp,^conv1d_9/conv1d/ExpandDims_1/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp,^lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp+^lstm_40/lstm_cell_40/MatMul/ReadVariableOp-^lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_40/while,^lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp+^lstm_41/lstm_cell_41/MatMul/ReadVariableOp-^lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp^lstm_41/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_9/BiasAdd/ReadVariableOpconv1d_9/BiasAdd/ReadVariableOp2Z
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2Z
+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp+lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp2X
*lstm_40/lstm_cell_40/MatMul/ReadVariableOp*lstm_40/lstm_cell_40/MatMul/ReadVariableOp2\
,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp,lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp2
lstm_40/whilelstm_40/while2Z
+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp+lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp2X
*lstm_41/lstm_cell_41/MatMul/ReadVariableOp*lstm_41/lstm_cell_41/MatMul/ReadVariableOp2\
,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp,lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp2
lstm_41/whilelstm_41/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×[

C__inference_lstm_40_layer_call_and_return_conditional_losses_377778

inputs=
+lstm_cell_40_matmul_readvariableop_resource:@ ?
-lstm_cell_40_matmul_1_readvariableop_resource: :
,lstm_cell_40_biasadd_readvariableop_resource: 
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp¬
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMulº
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp¨
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMul_1
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/add³
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp¬
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_1
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu_1 
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_377694*
condR
while_cond_377693*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Õ
Ã
while_cond_378368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378368___redundant_placeholder04
0while_while_cond_378368___redundant_placeholder14
0while_while_cond_378368___redundant_placeholder24
0while_while_cond_378368___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¬
e
F__inference_dropout_23_layer_call_and_return_conditional_losses_378631

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_374285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_40_374309_0:@ -
while_lstm_cell_40_374311_0: )
while_lstm_cell_40_374313_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_40_374309:@ +
while_lstm_cell_40_374311: '
while_lstm_cell_40_374313: ¢*while/lstm_cell_40/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_374309_0while_lstm_cell_40_374311_0while_lstm_cell_40_374313_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3742072,
*while/lstm_cell_40/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_40/StatefulPartitionedCall*"
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
while_lstm_cell_40_374309while_lstm_cell_40_374309_0"8
while_lstm_cell_40_374311while_lstm_cell_40_374311_0"8
while_lstm_cell_40_374313while_lstm_cell_40_374313_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_378519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378519___redundant_placeholder04
0while_while_cond_378519___redundant_placeholder14
0while_while_cond_378519___redundant_placeholder24
0while_while_cond_378519___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
«

D__inference_conv1d_8_layer_call_and_return_conditional_losses_375269

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÀJ
Ê

lstm_40_while_body_376936,
(lstm_40_while_lstm_40_while_loop_counter2
.lstm_40_while_lstm_40_while_maximum_iterations
lstm_40_while_placeholder
lstm_40_while_placeholder_1
lstm_40_while_placeholder_2
lstm_40_while_placeholder_3+
'lstm_40_while_lstm_40_strided_slice_1_0g
clstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0:@ O
=lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0: J
<lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0: 
lstm_40_while_identity
lstm_40_while_identity_1
lstm_40_while_identity_2
lstm_40_while_identity_3
lstm_40_while_identity_4
lstm_40_while_identity_5)
%lstm_40_while_lstm_40_strided_slice_1e
alstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensorK
9lstm_40_while_lstm_cell_40_matmul_readvariableop_resource:@ M
;lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource: H
:lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource: ¢1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp¢0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp¢2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpÓ
?lstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_40/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensor_0lstm_40_while_placeholderHlstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_40/while/TensorArrayV2Read/TensorListGetItemà
0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp;lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype022
0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOpö
!lstm_40/while/lstm_cell_40/MatMulMatMul8lstm_40/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_40/while/lstm_cell_40/MatMulæ
2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp=lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpß
#lstm_40/while/lstm_cell_40/MatMul_1MatMullstm_40_while_placeholder_2:lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_40/while/lstm_cell_40/MatMul_1×
lstm_40/while/lstm_cell_40/addAddV2+lstm_40/while/lstm_cell_40/MatMul:product:0-lstm_40/while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_40/while/lstm_cell_40/addß
1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp<lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOpä
"lstm_40/while/lstm_cell_40/BiasAddBiasAdd"lstm_40/while/lstm_cell_40/add:z:09lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_40/while/lstm_cell_40/BiasAdd
*lstm_40/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_40/while/lstm_cell_40/split/split_dim«
 lstm_40/while/lstm_cell_40/splitSplit3lstm_40/while/lstm_cell_40/split/split_dim:output:0+lstm_40/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_40/while/lstm_cell_40/split°
"lstm_40/while/lstm_cell_40/SigmoidSigmoid)lstm_40/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_40/while/lstm_cell_40/Sigmoid´
$lstm_40/while/lstm_cell_40/Sigmoid_1Sigmoid)lstm_40/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_40/while/lstm_cell_40/Sigmoid_1À
lstm_40/while/lstm_cell_40/mulMul(lstm_40/while/lstm_cell_40/Sigmoid_1:y:0lstm_40_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_40/while/lstm_cell_40/mul§
lstm_40/while/lstm_cell_40/ReluRelu)lstm_40/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_40/while/lstm_cell_40/ReluÔ
 lstm_40/while/lstm_cell_40/mul_1Mul&lstm_40/while/lstm_cell_40/Sigmoid:y:0-lstm_40/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/lstm_cell_40/mul_1É
 lstm_40/while/lstm_cell_40/add_1AddV2"lstm_40/while/lstm_cell_40/mul:z:0$lstm_40/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/lstm_cell_40/add_1´
$lstm_40/while/lstm_cell_40/Sigmoid_2Sigmoid)lstm_40/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_40/while/lstm_cell_40/Sigmoid_2¦
!lstm_40/while/lstm_cell_40/Relu_1Relu$lstm_40/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_40/while/lstm_cell_40/Relu_1Ø
 lstm_40/while/lstm_cell_40/mul_2Mul(lstm_40/while/lstm_cell_40/Sigmoid_2:y:0/lstm_40/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/lstm_cell_40/mul_2
2lstm_40/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_40_while_placeholder_1lstm_40_while_placeholder$lstm_40/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_40/while/TensorArrayV2Write/TensorListSetIteml
lstm_40/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/while/add/y
lstm_40/while/addAddV2lstm_40_while_placeholderlstm_40/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_40/while/addp
lstm_40/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/while/add_1/y
lstm_40/while/add_1AddV2(lstm_40_while_lstm_40_while_loop_counterlstm_40/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_40/while/add_1
lstm_40/while/IdentityIdentitylstm_40/while/add_1:z:0^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity¦
lstm_40/while/Identity_1Identity.lstm_40_while_lstm_40_while_maximum_iterations^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity_1
lstm_40/while/Identity_2Identitylstm_40/while/add:z:0^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity_2º
lstm_40/while/Identity_3IdentityBlstm_40/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity_3­
lstm_40/while/Identity_4Identity$lstm_40/while/lstm_cell_40/mul_2:z:0^lstm_40/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/while/Identity_4­
lstm_40/while/Identity_5Identity$lstm_40/while/lstm_cell_40/add_1:z:0^lstm_40/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/while/Identity_5
lstm_40/while/NoOpNoOp2^lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_40/while/NoOp"9
lstm_40_while_identitylstm_40/while/Identity:output:0"=
lstm_40_while_identity_1!lstm_40/while/Identity_1:output:0"=
lstm_40_while_identity_2!lstm_40/while/Identity_2:output:0"=
lstm_40_while_identity_3!lstm_40/while/Identity_3:output:0"=
lstm_40_while_identity_4!lstm_40/while/Identity_4:output:0"=
lstm_40_while_identity_5!lstm_40/while/Identity_5:output:0"P
%lstm_40_while_lstm_40_strided_slice_1'lstm_40_while_lstm_40_strided_slice_1_0"z
:lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource<lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0"|
;lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource=lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0"x
9lstm_40_while_lstm_cell_40_matmul_readvariableop_resource;lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0"È
alstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensorclstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp2d
0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp2h
2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_374284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_374284___redundant_placeholder04
0while_while_cond_374284___redundant_placeholder14
0while_while_cond_374284___redundant_placeholder24
0while_while_cond_374284___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÀJ
Ê

lstm_40_while_body_376586,
(lstm_40_while_lstm_40_while_loop_counter2
.lstm_40_while_lstm_40_while_maximum_iterations
lstm_40_while_placeholder
lstm_40_while_placeholder_1
lstm_40_while_placeholder_2
lstm_40_while_placeholder_3+
'lstm_40_while_lstm_40_strided_slice_1_0g
clstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0:@ O
=lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0: J
<lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0: 
lstm_40_while_identity
lstm_40_while_identity_1
lstm_40_while_identity_2
lstm_40_while_identity_3
lstm_40_while_identity_4
lstm_40_while_identity_5)
%lstm_40_while_lstm_40_strided_slice_1e
alstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensorK
9lstm_40_while_lstm_cell_40_matmul_readvariableop_resource:@ M
;lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource: H
:lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource: ¢1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp¢0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp¢2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpÓ
?lstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_40/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensor_0lstm_40_while_placeholderHlstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_40/while/TensorArrayV2Read/TensorListGetItemà
0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp;lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype022
0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOpö
!lstm_40/while/lstm_cell_40/MatMulMatMul8lstm_40/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_40/while/lstm_cell_40/MatMulæ
2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp=lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpß
#lstm_40/while/lstm_cell_40/MatMul_1MatMullstm_40_while_placeholder_2:lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_40/while/lstm_cell_40/MatMul_1×
lstm_40/while/lstm_cell_40/addAddV2+lstm_40/while/lstm_cell_40/MatMul:product:0-lstm_40/while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_40/while/lstm_cell_40/addß
1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp<lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOpä
"lstm_40/while/lstm_cell_40/BiasAddBiasAdd"lstm_40/while/lstm_cell_40/add:z:09lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_40/while/lstm_cell_40/BiasAdd
*lstm_40/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_40/while/lstm_cell_40/split/split_dim«
 lstm_40/while/lstm_cell_40/splitSplit3lstm_40/while/lstm_cell_40/split/split_dim:output:0+lstm_40/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_40/while/lstm_cell_40/split°
"lstm_40/while/lstm_cell_40/SigmoidSigmoid)lstm_40/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_40/while/lstm_cell_40/Sigmoid´
$lstm_40/while/lstm_cell_40/Sigmoid_1Sigmoid)lstm_40/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_40/while/lstm_cell_40/Sigmoid_1À
lstm_40/while/lstm_cell_40/mulMul(lstm_40/while/lstm_cell_40/Sigmoid_1:y:0lstm_40_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_40/while/lstm_cell_40/mul§
lstm_40/while/lstm_cell_40/ReluRelu)lstm_40/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_40/while/lstm_cell_40/ReluÔ
 lstm_40/while/lstm_cell_40/mul_1Mul&lstm_40/while/lstm_cell_40/Sigmoid:y:0-lstm_40/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/lstm_cell_40/mul_1É
 lstm_40/while/lstm_cell_40/add_1AddV2"lstm_40/while/lstm_cell_40/mul:z:0$lstm_40/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/lstm_cell_40/add_1´
$lstm_40/while/lstm_cell_40/Sigmoid_2Sigmoid)lstm_40/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_40/while/lstm_cell_40/Sigmoid_2¦
!lstm_40/while/lstm_cell_40/Relu_1Relu$lstm_40/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_40/while/lstm_cell_40/Relu_1Ø
 lstm_40/while/lstm_cell_40/mul_2Mul(lstm_40/while/lstm_cell_40/Sigmoid_2:y:0/lstm_40/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_40/while/lstm_cell_40/mul_2
2lstm_40/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_40_while_placeholder_1lstm_40_while_placeholder$lstm_40/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_40/while/TensorArrayV2Write/TensorListSetIteml
lstm_40/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/while/add/y
lstm_40/while/addAddV2lstm_40_while_placeholderlstm_40/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_40/while/addp
lstm_40/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_40/while/add_1/y
lstm_40/while/add_1AddV2(lstm_40_while_lstm_40_while_loop_counterlstm_40/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_40/while/add_1
lstm_40/while/IdentityIdentitylstm_40/while/add_1:z:0^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity¦
lstm_40/while/Identity_1Identity.lstm_40_while_lstm_40_while_maximum_iterations^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity_1
lstm_40/while/Identity_2Identitylstm_40/while/add:z:0^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity_2º
lstm_40/while/Identity_3IdentityBlstm_40/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_40/while/NoOp*
T0*
_output_shapes
: 2
lstm_40/while/Identity_3­
lstm_40/while/Identity_4Identity$lstm_40/while/lstm_cell_40/mul_2:z:0^lstm_40/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/while/Identity_4­
lstm_40/while/Identity_5Identity$lstm_40/while/lstm_cell_40/add_1:z:0^lstm_40/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_40/while/Identity_5
lstm_40/while/NoOpNoOp2^lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_40/while/NoOp"9
lstm_40_while_identitylstm_40/while/Identity:output:0"=
lstm_40_while_identity_1!lstm_40/while/Identity_1:output:0"=
lstm_40_while_identity_2!lstm_40/while/Identity_2:output:0"=
lstm_40_while_identity_3!lstm_40/while/Identity_3:output:0"=
lstm_40_while_identity_4!lstm_40/while/Identity_4:output:0"=
lstm_40_while_identity_5!lstm_40/while/Identity_5:output:0"P
%lstm_40_while_lstm_40_strided_slice_1'lstm_40_while_lstm_40_strided_slice_1_0"z
:lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource<lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0"|
;lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource=lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0"x
9lstm_40_while_lstm_cell_40_matmul_readvariableop_resource;lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0"È
alstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensorclstm_40_while_tensorarrayv2read_tensorlistgetitem_lstm_40_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp1lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp2d
0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp0lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp2h
2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp2lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Æ

ã
lstm_41_while_cond_377090,
(lstm_41_while_lstm_41_while_loop_counter2
.lstm_41_while_lstm_41_while_maximum_iterations
lstm_41_while_placeholder
lstm_41_while_placeholder_1
lstm_41_while_placeholder_2
lstm_41_while_placeholder_3.
*lstm_41_while_less_lstm_41_strided_slice_1D
@lstm_41_while_lstm_41_while_cond_377090___redundant_placeholder0D
@lstm_41_while_lstm_41_while_cond_377090___redundant_placeholder1D
@lstm_41_while_lstm_41_while_cond_377090___redundant_placeholder2D
@lstm_41_while_lstm_41_while_cond_377090___redundant_placeholder3
lstm_41_while_identity

lstm_41/while/LessLesslstm_41_while_placeholder*lstm_41_while_less_lstm_41_strided_slice_1*
T0*
_output_shapes
: 2
lstm_41/while/Lessu
lstm_41/while/IdentityIdentitylstm_41/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_41/while/Identity"9
lstm_41_while_identitylstm_41/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
é

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_374691

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates


)__inference_conv1d_9_layer_call_fn_377239

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_9_layer_call_and_return_conditional_losses_3752912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
?
Ê
while_body_375537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0: G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_41_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource: E
3while_lstm_cell_41_matmul_1_readvariableop_resource: @
2while_lstm_cell_41_biasadd_readvariableop_resource: ¢)while/lstm_cell_41/BiasAdd/ReadVariableOp¢(while/lstm_cell_41/MatMul/ReadVariableOp¢*while/lstm_cell_41/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOpÖ
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMulÎ
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp¿
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMul_1·
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/addÇ
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOpÄ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/BiasAdd
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_41/split
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_1 
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu´
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_1©
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/add_1
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_2
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu_1¸
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
À
G
+__inference_dropout_23_layer_call_fn_378609

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_3756342
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü[

C__inference_lstm_41_layer_call_and_return_conditional_losses_378604

inputs=
+lstm_cell_41_matmul_readvariableop_resource: ?
-lstm_cell_41_matmul_1_readvariableop_resource: :
,lstm_cell_41_biasadd_readvariableop_resource: 
identity¢#lstm_cell_41/BiasAdd/ReadVariableOp¢"lstm_cell_41/MatMul/ReadVariableOp¢$lstm_cell_41/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp¬
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMulº
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp¨
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMul_1
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/add³
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp¬
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dimó
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_41/split
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_1
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_1
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/add_1
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu_1 
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_378520*
condR
while_cond_378519*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ

ã
lstm_40_while_cond_376935,
(lstm_40_while_lstm_40_while_loop_counter2
.lstm_40_while_lstm_40_while_maximum_iterations
lstm_40_while_placeholder
lstm_40_while_placeholder_1
lstm_40_while_placeholder_2
lstm_40_while_placeholder_3.
*lstm_40_while_less_lstm_40_strided_slice_1D
@lstm_40_while_lstm_40_while_cond_376935___redundant_placeholder0D
@lstm_40_while_lstm_40_while_cond_376935___redundant_placeholder1D
@lstm_40_while_lstm_40_while_cond_376935___redundant_placeholder2D
@lstm_40_while_lstm_40_while_cond_376935___redundant_placeholder3
lstm_40_while_identity

lstm_40/while/LessLesslstm_40_while_placeholder*lstm_40_while_less_lstm_40_strided_slice_1*
T0*
_output_shapes
: 2
lstm_40/while/Lessu
lstm_40/while/IdentityIdentitylstm_40/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_40/while/Identity"9
lstm_40_while_identitylstm_40/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_376041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_40_matmul_readvariableop_resource_0:@ G
5while_lstm_cell_40_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_40_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_40_matmul_readvariableop_resource:@ E
3while_lstm_cell_40_matmul_1_readvariableop_resource: @
2while_lstm_cell_40_biasadd_readvariableop_resource: ¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOpÖ
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMulÎ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp¿
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMul_1·
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/addÇ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÄ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/BiasAdd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu´
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_1©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_2
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu_1¸
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_377542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377542___redundant_placeholder04
0while_while_cond_377542___redundant_placeholder14
0while_while_cond_377542___redundant_placeholder24
0while_while_cond_377542___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ñ

)__inference_dense_41_layer_call_fn_378660

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallô
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
GPU 2J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_3756632
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
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
û
'sequential_14_lstm_40_while_cond_373702H
Dsequential_14_lstm_40_while_sequential_14_lstm_40_while_loop_counterN
Jsequential_14_lstm_40_while_sequential_14_lstm_40_while_maximum_iterations+
'sequential_14_lstm_40_while_placeholder-
)sequential_14_lstm_40_while_placeholder_1-
)sequential_14_lstm_40_while_placeholder_2-
)sequential_14_lstm_40_while_placeholder_3J
Fsequential_14_lstm_40_while_less_sequential_14_lstm_40_strided_slice_1`
\sequential_14_lstm_40_while_sequential_14_lstm_40_while_cond_373702___redundant_placeholder0`
\sequential_14_lstm_40_while_sequential_14_lstm_40_while_cond_373702___redundant_placeholder1`
\sequential_14_lstm_40_while_sequential_14_lstm_40_while_cond_373702___redundant_placeholder2`
\sequential_14_lstm_40_while_sequential_14_lstm_40_while_cond_373702___redundant_placeholder3(
$sequential_14_lstm_40_while_identity
Þ
 sequential_14/lstm_40/while/LessLess'sequential_14_lstm_40_while_placeholderFsequential_14_lstm_40_while_less_sequential_14_lstm_40_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_14/lstm_40/while/Less
$sequential_14/lstm_40/while/IdentityIdentity$sequential_14/lstm_40/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_14/lstm_40/while/Identity"U
$sequential_14_lstm_40_while_identity-sequential_14/lstm_40/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_376040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_376040___redundant_placeholder04
0while_while_cond_376040___redundant_placeholder14
0while_while_cond_376040___redundant_placeholder24
0while_while_cond_376040___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

d
F__inference_dropout_22_layer_call_and_return_conditional_losses_375469

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
F

C__inference_lstm_40_layer_call_and_return_conditional_losses_374144

inputs%
lstm_cell_40_374062:@ %
lstm_cell_40_374064: !
lstm_cell_40_374066: 
identity¢$lstm_cell_40/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_374062lstm_cell_40_374064lstm_cell_40_374066*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3740612&
$lstm_cell_40/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_374062lstm_cell_40_374064lstm_cell_40_374066*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_374075*
condR
while_cond_374074*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
»
´
(__inference_lstm_41_layer_call_fn_377967
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3747742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ÀJ
Ê

lstm_41_while_body_376734,
(lstm_41_while_lstm_41_while_loop_counter2
.lstm_41_while_lstm_41_while_maximum_iterations
lstm_41_while_placeholder
lstm_41_while_placeholder_1
lstm_41_while_placeholder_2
lstm_41_while_placeholder_3+
'lstm_41_while_lstm_41_strided_slice_1_0g
clstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0: O
=lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0: J
<lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0: 
lstm_41_while_identity
lstm_41_while_identity_1
lstm_41_while_identity_2
lstm_41_while_identity_3
lstm_41_while_identity_4
lstm_41_while_identity_5)
%lstm_41_while_lstm_41_strided_slice_1e
alstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensorK
9lstm_41_while_lstm_cell_41_matmul_readvariableop_resource: M
;lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource: H
:lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource: ¢1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp¢0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp¢2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpÓ
?lstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_41/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensor_0lstm_41_while_placeholderHlstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_41/while/TensorArrayV2Read/TensorListGetItemà
0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp;lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype022
0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOpö
!lstm_41/while/lstm_cell_41/MatMulMatMul8lstm_41/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_41/while/lstm_cell_41/MatMulæ
2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp=lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpß
#lstm_41/while/lstm_cell_41/MatMul_1MatMullstm_41_while_placeholder_2:lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_41/while/lstm_cell_41/MatMul_1×
lstm_41/while/lstm_cell_41/addAddV2+lstm_41/while/lstm_cell_41/MatMul:product:0-lstm_41/while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_41/while/lstm_cell_41/addß
1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp<lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOpä
"lstm_41/while/lstm_cell_41/BiasAddBiasAdd"lstm_41/while/lstm_cell_41/add:z:09lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_41/while/lstm_cell_41/BiasAdd
*lstm_41/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_41/while/lstm_cell_41/split/split_dim«
 lstm_41/while/lstm_cell_41/splitSplit3lstm_41/while/lstm_cell_41/split/split_dim:output:0+lstm_41/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_41/while/lstm_cell_41/split°
"lstm_41/while/lstm_cell_41/SigmoidSigmoid)lstm_41/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_41/while/lstm_cell_41/Sigmoid´
$lstm_41/while/lstm_cell_41/Sigmoid_1Sigmoid)lstm_41/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_41/while/lstm_cell_41/Sigmoid_1À
lstm_41/while/lstm_cell_41/mulMul(lstm_41/while/lstm_cell_41/Sigmoid_1:y:0lstm_41_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_41/while/lstm_cell_41/mul§
lstm_41/while/lstm_cell_41/ReluRelu)lstm_41/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_41/while/lstm_cell_41/ReluÔ
 lstm_41/while/lstm_cell_41/mul_1Mul&lstm_41/while/lstm_cell_41/Sigmoid:y:0-lstm_41/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/lstm_cell_41/mul_1É
 lstm_41/while/lstm_cell_41/add_1AddV2"lstm_41/while/lstm_cell_41/mul:z:0$lstm_41/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/lstm_cell_41/add_1´
$lstm_41/while/lstm_cell_41/Sigmoid_2Sigmoid)lstm_41/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_41/while/lstm_cell_41/Sigmoid_2¦
!lstm_41/while/lstm_cell_41/Relu_1Relu$lstm_41/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_41/while/lstm_cell_41/Relu_1Ø
 lstm_41/while/lstm_cell_41/mul_2Mul(lstm_41/while/lstm_cell_41/Sigmoid_2:y:0/lstm_41/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/lstm_cell_41/mul_2
2lstm_41/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_41_while_placeholder_1lstm_41_while_placeholder$lstm_41/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_41/while/TensorArrayV2Write/TensorListSetIteml
lstm_41/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/while/add/y
lstm_41/while/addAddV2lstm_41_while_placeholderlstm_41/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_41/while/addp
lstm_41/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/while/add_1/y
lstm_41/while/add_1AddV2(lstm_41_while_lstm_41_while_loop_counterlstm_41/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_41/while/add_1
lstm_41/while/IdentityIdentitylstm_41/while/add_1:z:0^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity¦
lstm_41/while/Identity_1Identity.lstm_41_while_lstm_41_while_maximum_iterations^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity_1
lstm_41/while/Identity_2Identitylstm_41/while/add:z:0^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity_2º
lstm_41/while/Identity_3IdentityBlstm_41/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity_3­
lstm_41/while/Identity_4Identity$lstm_41/while/lstm_cell_41/mul_2:z:0^lstm_41/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/while/Identity_4­
lstm_41/while/Identity_5Identity$lstm_41/while/lstm_cell_41/add_1:z:0^lstm_41/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/while/Identity_5
lstm_41/while/NoOpNoOp2^lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp1^lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp3^lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_41/while/NoOp"9
lstm_41_while_identitylstm_41/while/Identity:output:0"=
lstm_41_while_identity_1!lstm_41/while/Identity_1:output:0"=
lstm_41_while_identity_2!lstm_41/while/Identity_2:output:0"=
lstm_41_while_identity_3!lstm_41/while/Identity_3:output:0"=
lstm_41_while_identity_4!lstm_41/while/Identity_4:output:0"=
lstm_41_while_identity_5!lstm_41/while/Identity_5:output:0"P
%lstm_41_while_lstm_41_strided_slice_1'lstm_41_while_lstm_41_strided_slice_1_0"z
:lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource<lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0"|
;lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource=lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0"x
9lstm_41_while_lstm_cell_41_matmul_readvariableop_resource;lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0"È
alstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensorclstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp2d
0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp2h
2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
F

C__inference_lstm_41_layer_call_and_return_conditional_losses_374774

inputs%
lstm_cell_41_374692: %
lstm_cell_41_374694: !
lstm_cell_41_374696: 
identity¢$lstm_cell_41/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_41_374692lstm_cell_41_374694lstm_cell_41_374696*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3746912&
$lstm_cell_41/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_41_374692lstm_cell_41_374694lstm_cell_41_374696*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_374705*
condR
while_cond_374704*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_41/StatefulPartitionedCall$lstm_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
G
+__inference_dropout_22_layer_call_fn_377934

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_3754692
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_374915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_41_374939_0: -
while_lstm_cell_41_374941_0: )
while_lstm_cell_41_374943_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_41_374939: +
while_lstm_cell_41_374941: '
while_lstm_cell_41_374943: ¢*while/lstm_cell_41/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_41_374939_0while_lstm_cell_41_374941_0while_lstm_cell_41_374943_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3748372,
*while/lstm_cell_41/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_41/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_41/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_41/StatefulPartitionedCall*"
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
while_lstm_cell_41_374939while_lstm_cell_41_374939_0"8
while_lstm_cell_41_374941while_lstm_cell_41_374941_0"8
while_lstm_cell_41_374943while_lstm_cell_41_374943_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_41/StatefulPartitionedCall*while/lstm_cell_41/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

b
F__inference_reshape_20_layer_call_and_return_conditional_losses_375682

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
ïh
¬
__inference__traced_save_379054
file_prefix.
*savev2_conv1d_8_kernel_read_readvariableop,
(savev2_conv1d_8_bias_read_readvariableop.
*savev2_conv1d_9_kernel_read_readvariableop,
(savev2_conv1d_9_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_40_lstm_cell_40_kernel_read_readvariableopD
@savev2_lstm_40_lstm_cell_40_recurrent_kernel_read_readvariableop8
4savev2_lstm_40_lstm_cell_40_bias_read_readvariableop:
6savev2_lstm_41_lstm_cell_41_kernel_read_readvariableopD
@savev2_lstm_41_lstm_cell_41_recurrent_kernel_read_readvariableop8
4savev2_lstm_41_lstm_cell_41_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_8_kernel_m_read_readvariableop3
/savev2_adam_conv1d_8_bias_m_read_readvariableop5
1savev2_adam_conv1d_9_kernel_m_read_readvariableop3
/savev2_adam_conv1d_9_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableopA
=savev2_adam_lstm_40_lstm_cell_40_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_40_lstm_cell_40_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_40_lstm_cell_40_bias_m_read_readvariableopA
=savev2_adam_lstm_41_lstm_cell_41_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_41_lstm_cell_41_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_41_lstm_cell_41_bias_m_read_readvariableop5
1savev2_adam_conv1d_8_kernel_v_read_readvariableop3
/savev2_adam_conv1d_8_bias_v_read_readvariableop5
1savev2_adam_conv1d_9_kernel_v_read_readvariableop3
/savev2_adam_conv1d_9_bias_v_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableopA
=savev2_adam_lstm_40_lstm_cell_40_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_40_lstm_cell_40_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_40_lstm_cell_40_bias_v_read_readvariableopA
=savev2_adam_lstm_41_lstm_cell_41_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_41_lstm_cell_41_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_41_lstm_cell_41_bias_v_read_readvariableop
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
ShardedFilename®
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*À
value¶B³2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesì
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_8_kernel_read_readvariableop(savev2_conv1d_8_bias_read_readvariableop*savev2_conv1d_9_kernel_read_readvariableop(savev2_conv1d_9_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_40_lstm_cell_40_kernel_read_readvariableop@savev2_lstm_40_lstm_cell_40_recurrent_kernel_read_readvariableop4savev2_lstm_40_lstm_cell_40_bias_read_readvariableop6savev2_lstm_41_lstm_cell_41_kernel_read_readvariableop@savev2_lstm_41_lstm_cell_41_recurrent_kernel_read_readvariableop4savev2_lstm_41_lstm_cell_41_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_8_kernel_m_read_readvariableop/savev2_adam_conv1d_8_bias_m_read_readvariableop1savev2_adam_conv1d_9_kernel_m_read_readvariableop/savev2_adam_conv1d_9_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop=savev2_adam_lstm_40_lstm_cell_40_kernel_m_read_readvariableopGsavev2_adam_lstm_40_lstm_cell_40_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_40_lstm_cell_40_bias_m_read_readvariableop=savev2_adam_lstm_41_lstm_cell_41_kernel_m_read_readvariableopGsavev2_adam_lstm_41_lstm_cell_41_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_41_lstm_cell_41_bias_m_read_readvariableop1savev2_adam_conv1d_8_kernel_v_read_readvariableop/savev2_adam_conv1d_8_bias_v_read_readvariableop1savev2_adam_conv1d_9_kernel_v_read_readvariableop/savev2_adam_conv1d_9_bias_v_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableop=savev2_adam_lstm_40_lstm_cell_40_kernel_v_read_readvariableopGsavev2_adam_lstm_40_lstm_cell_40_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_40_lstm_cell_40_bias_v_read_readvariableop=savev2_adam_lstm_41_lstm_cell_41_kernel_v_read_readvariableopGsavev2_adam_lstm_41_lstm_cell_41_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_41_lstm_cell_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	2
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

identity_1Identity_1:output:0*
_input_shapes
: : : : @:@::::: : : : : :@ : : : : : : : : : : @:@:::::@ : : : : : : : : @:@:::::@ : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@ :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@ :$ 

_output_shapes

: :  

_output_shapes
: :$! 

_output_shapes

: :$" 

_output_shapes

: : #

_output_shapes
: :($$
"
_output_shapes
: : %

_output_shapes
: :(&$
"
_output_shapes
: @: '

_output_shapes
:@:$( 

_output_shapes

:: )

_output_shapes
::$* 

_output_shapes

:: +

_output_shapes
::$, 

_output_shapes

:@ :$- 

_output_shapes

: : .

_output_shapes
: :$/ 

_output_shapes

: :$0 

_output_shapes

: : 1

_output_shapes
: :2

_output_shapes
: 
é

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_374837

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
F

C__inference_lstm_40_layer_call_and_return_conditional_losses_374354

inputs%
lstm_cell_40_374272:@ %
lstm_cell_40_374274: !
lstm_cell_40_374276: 
identity¢$lstm_cell_40/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_374272lstm_cell_40_374274lstm_cell_40_374276*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3742072&
$lstm_cell_40/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_374272lstm_cell_40_374274lstm_cell_40_374276*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_374285*
condR
while_cond_374284*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
«
²
(__inference_lstm_40_layer_call_fn_377314

inputs
unknown:@ 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3754562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ó
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_375634

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_377543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_40_matmul_readvariableop_resource_0:@ G
5while_lstm_cell_40_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_40_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_40_matmul_readvariableop_resource:@ E
3while_lstm_cell_40_matmul_1_readvariableop_resource: @
2while_lstm_cell_40_biasadd_readvariableop_resource: ¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOpÖ
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMulÎ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp¿
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMul_1·
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/addÇ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÄ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/BiasAdd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu´
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_1©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_2
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu_1¸
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
?
Ê
while_body_378520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0: G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_41_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource: E
3while_lstm_cell_41_matmul_1_readvariableop_resource: @
2while_lstm_cell_41_biasadd_readvariableop_resource: ¢)while/lstm_cell_41/BiasAdd/ReadVariableOp¢(while/lstm_cell_41/MatMul/ReadVariableOp¢*while/lstm_cell_41/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOpÖ
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMulÎ
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp¿
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMul_1·
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/addÇ
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOpÄ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/BiasAdd
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_41/split
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_1 
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu´
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_1©
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/add_1
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_2
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu_1¸
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_375536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375536___redundant_placeholder04
0while_while_cond_375536___redundant_placeholder14
0while_while_cond_375536___redundant_placeholder24
0while_while_cond_375536___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_377845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_40_matmul_readvariableop_resource_0:@ G
5while_lstm_cell_40_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_40_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_40_matmul_readvariableop_resource:@ E
3while_lstm_cell_40_matmul_1_readvariableop_resource: @
2while_lstm_cell_40_biasadd_readvariableop_resource: ¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOpÖ
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMulÎ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp¿
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMul_1·
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/addÇ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÄ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/BiasAdd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu´
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_1©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_2
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu_1¸
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
\

C__inference_lstm_41_layer_call_and_return_conditional_losses_378151
inputs_0=
+lstm_cell_41_matmul_readvariableop_resource: ?
-lstm_cell_41_matmul_1_readvariableop_resource: :
,lstm_cell_41_biasadd_readvariableop_resource: 
identity¢#lstm_cell_41/BiasAdd/ReadVariableOp¢"lstm_cell_41/MatMul/ReadVariableOp¢$lstm_cell_41/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp¬
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMulº
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp¨
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMul_1
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/add³
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp¬
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dimó
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_41/split
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_1
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_1
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/add_1
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu_1 
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_378067*
condR
while_cond_378066*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_374704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_374704___redundant_placeholder04
0while_while_cond_374704___redundant_placeholder14
0while_while_cond_374704___redundant_placeholder24
0while_while_cond_374704___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

d
F__inference_dropout_22_layer_call_and_return_conditional_losses_377944

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

)__inference_dense_40_layer_call_fn_378640

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_3756472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿^

'sequential_14_lstm_41_while_body_373851H
Dsequential_14_lstm_41_while_sequential_14_lstm_41_while_loop_counterN
Jsequential_14_lstm_41_while_sequential_14_lstm_41_while_maximum_iterations+
'sequential_14_lstm_41_while_placeholder-
)sequential_14_lstm_41_while_placeholder_1-
)sequential_14_lstm_41_while_placeholder_2-
)sequential_14_lstm_41_while_placeholder_3G
Csequential_14_lstm_41_while_sequential_14_lstm_41_strided_slice_1_0
sequential_14_lstm_41_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_41_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_14_lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0: ]
Ksequential_14_lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0: X
Jsequential_14_lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0: (
$sequential_14_lstm_41_while_identity*
&sequential_14_lstm_41_while_identity_1*
&sequential_14_lstm_41_while_identity_2*
&sequential_14_lstm_41_while_identity_3*
&sequential_14_lstm_41_while_identity_4*
&sequential_14_lstm_41_while_identity_5E
Asequential_14_lstm_41_while_sequential_14_lstm_41_strided_slice_1
}sequential_14_lstm_41_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_41_tensorarrayunstack_tensorlistfromtensorY
Gsequential_14_lstm_41_while_lstm_cell_41_matmul_readvariableop_resource: [
Isequential_14_lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource: V
Hsequential_14_lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource: ¢?sequential_14/lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp¢>sequential_14/lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp¢@sequential_14/lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpï
Msequential_14/lstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_14/lstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_14/lstm_41/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_14_lstm_41_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_41_tensorarrayunstack_tensorlistfromtensor_0'sequential_14_lstm_41_while_placeholderVsequential_14/lstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_14/lstm_41/while/TensorArrayV2Read/TensorListGetItem
>sequential_14/lstm_41/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOpIsequential_14_lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02@
>sequential_14/lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp®
/sequential_14/lstm_41/while/lstm_cell_41/MatMulMatMulFsequential_14/lstm_41/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_14/lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_14/lstm_41/while/lstm_cell_41/MatMul
@sequential_14/lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOpKsequential_14_lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02B
@sequential_14/lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp
1sequential_14/lstm_41/while/lstm_cell_41/MatMul_1MatMul)sequential_14_lstm_41_while_placeholder_2Hsequential_14/lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_14/lstm_41/while/lstm_cell_41/MatMul_1
,sequential_14/lstm_41/while/lstm_cell_41/addAddV29sequential_14/lstm_41/while/lstm_cell_41/MatMul:product:0;sequential_14/lstm_41/while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_14/lstm_41/while/lstm_cell_41/add
?sequential_14/lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOpJsequential_14_lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02A
?sequential_14/lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp
0sequential_14/lstm_41/while/lstm_cell_41/BiasAddBiasAdd0sequential_14/lstm_41/while/lstm_cell_41/add:z:0Gsequential_14/lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_14/lstm_41/while/lstm_cell_41/BiasAdd¶
8sequential_14/lstm_41/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_14/lstm_41/while/lstm_cell_41/split/split_dimã
.sequential_14/lstm_41/while/lstm_cell_41/splitSplitAsequential_14/lstm_41/while/lstm_cell_41/split/split_dim:output:09sequential_14/lstm_41/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_14/lstm_41/while/lstm_cell_41/splitÚ
0sequential_14/lstm_41/while/lstm_cell_41/SigmoidSigmoid7sequential_14/lstm_41/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_14/lstm_41/while/lstm_cell_41/SigmoidÞ
2sequential_14/lstm_41/while/lstm_cell_41/Sigmoid_1Sigmoid7sequential_14/lstm_41/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_14/lstm_41/while/lstm_cell_41/Sigmoid_1ø
,sequential_14/lstm_41/while/lstm_cell_41/mulMul6sequential_14/lstm_41/while/lstm_cell_41/Sigmoid_1:y:0)sequential_14_lstm_41_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_14/lstm_41/while/lstm_cell_41/mulÑ
-sequential_14/lstm_41/while/lstm_cell_41/ReluRelu7sequential_14/lstm_41/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_14/lstm_41/while/lstm_cell_41/Relu
.sequential_14/lstm_41/while/lstm_cell_41/mul_1Mul4sequential_14/lstm_41/while/lstm_cell_41/Sigmoid:y:0;sequential_14/lstm_41/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_41/while/lstm_cell_41/mul_1
.sequential_14/lstm_41/while/lstm_cell_41/add_1AddV20sequential_14/lstm_41/while/lstm_cell_41/mul:z:02sequential_14/lstm_41/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_41/while/lstm_cell_41/add_1Þ
2sequential_14/lstm_41/while/lstm_cell_41/Sigmoid_2Sigmoid7sequential_14/lstm_41/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_14/lstm_41/while/lstm_cell_41/Sigmoid_2Ð
/sequential_14/lstm_41/while/lstm_cell_41/Relu_1Relu2sequential_14/lstm_41/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_14/lstm_41/while/lstm_cell_41/Relu_1
.sequential_14/lstm_41/while/lstm_cell_41/mul_2Mul6sequential_14/lstm_41/while/lstm_cell_41/Sigmoid_2:y:0=sequential_14/lstm_41/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_41/while/lstm_cell_41/mul_2Î
@sequential_14/lstm_41/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_14_lstm_41_while_placeholder_1'sequential_14_lstm_41_while_placeholder2sequential_14/lstm_41/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_14/lstm_41/while/TensorArrayV2Write/TensorListSetItem
!sequential_14/lstm_41/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_14/lstm_41/while/add/yÁ
sequential_14/lstm_41/while/addAddV2'sequential_14_lstm_41_while_placeholder*sequential_14/lstm_41/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_14/lstm_41/while/add
#sequential_14/lstm_41/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_14/lstm_41/while/add_1/yä
!sequential_14/lstm_41/while/add_1AddV2Dsequential_14_lstm_41_while_sequential_14_lstm_41_while_loop_counter,sequential_14/lstm_41/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_14/lstm_41/while/add_1Ã
$sequential_14/lstm_41/while/IdentityIdentity%sequential_14/lstm_41/while/add_1:z:0!^sequential_14/lstm_41/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_14/lstm_41/while/Identityì
&sequential_14/lstm_41/while/Identity_1IdentityJsequential_14_lstm_41_while_sequential_14_lstm_41_while_maximum_iterations!^sequential_14/lstm_41/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_41/while/Identity_1Å
&sequential_14/lstm_41/while/Identity_2Identity#sequential_14/lstm_41/while/add:z:0!^sequential_14/lstm_41/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_41/while/Identity_2ò
&sequential_14/lstm_41/while/Identity_3IdentityPsequential_14/lstm_41/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_14/lstm_41/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_41/while/Identity_3å
&sequential_14/lstm_41/while/Identity_4Identity2sequential_14/lstm_41/while/lstm_cell_41/mul_2:z:0!^sequential_14/lstm_41/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_14/lstm_41/while/Identity_4å
&sequential_14/lstm_41/while/Identity_5Identity2sequential_14/lstm_41/while/lstm_cell_41/add_1:z:0!^sequential_14/lstm_41/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_14/lstm_41/while/Identity_5Ì
 sequential_14/lstm_41/while/NoOpNoOp@^sequential_14/lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp?^sequential_14/lstm_41/while/lstm_cell_41/MatMul/ReadVariableOpA^sequential_14/lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_14/lstm_41/while/NoOp"U
$sequential_14_lstm_41_while_identity-sequential_14/lstm_41/while/Identity:output:0"Y
&sequential_14_lstm_41_while_identity_1/sequential_14/lstm_41/while/Identity_1:output:0"Y
&sequential_14_lstm_41_while_identity_2/sequential_14/lstm_41/while/Identity_2:output:0"Y
&sequential_14_lstm_41_while_identity_3/sequential_14/lstm_41/while/Identity_3:output:0"Y
&sequential_14_lstm_41_while_identity_4/sequential_14/lstm_41/while/Identity_4:output:0"Y
&sequential_14_lstm_41_while_identity_5/sequential_14/lstm_41/while/Identity_5:output:0"
Hsequential_14_lstm_41_while_lstm_cell_41_biasadd_readvariableop_resourceJsequential_14_lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0"
Isequential_14_lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resourceKsequential_14_lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0"
Gsequential_14_lstm_41_while_lstm_cell_41_matmul_readvariableop_resourceIsequential_14_lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0"
Asequential_14_lstm_41_while_sequential_14_lstm_41_strided_slice_1Csequential_14_lstm_41_while_sequential_14_lstm_41_strided_slice_1_0"
}sequential_14_lstm_41_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_41_tensorarrayunstack_tensorlistfromtensorsequential_14_lstm_41_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_41_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_14/lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp?sequential_14/lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp2
>sequential_14/lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp>sequential_14/lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp2
@sequential_14/lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp@sequential_14/lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¦

õ
D__inference_dense_41_layer_call_and_return_conditional_losses_378670

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_377693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377693___redundant_placeholder04
0while_while_cond_377693___redundant_placeholder14
0while_while_cond_377693___redundant_placeholder24
0while_while_cond_377693___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
³
ó
-__inference_lstm_cell_40_layer_call_fn_378705

inputs
states_0
states_1
unknown:@ 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3740612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¢
d
+__inference_dropout_23_layer_call_fn_378614

inputs
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_3757622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_374207

inputs

states
states_10
matmul_readvariableop_resource:@ 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¾/

I__inference_sequential_14_layer_call_and_return_conditional_losses_376342
conv1d_8_input%
conv1d_8_376303: 
conv1d_8_376305: %
conv1d_9_376308: @
conv1d_9_376310:@ 
lstm_40_376314:@  
lstm_40_376316: 
lstm_40_376318:  
lstm_41_376322:  
lstm_41_376324: 
lstm_41_376326: !
dense_40_376330:
dense_40_376332:!
dense_41_376335:
dense_41_376337:
identity¢ conv1d_8/StatefulPartitionedCall¢ conv1d_9/StatefulPartitionedCall¢ dense_40/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢lstm_40/StatefulPartitionedCall¢lstm_41/StatefulPartitionedCall 
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputconv1d_8_376303conv1d_8_376305*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_8_layer_call_and_return_conditional_losses_3752692"
 conv1d_8/StatefulPartitionedCall»
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0conv1d_9_376308conv1d_9_376310*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_9_layer_call_and_return_conditional_losses_3752912"
 conv1d_9/StatefulPartitionedCall
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_3753042!
max_pooling1d_3/PartitionedCallÇ
lstm_40/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_3/PartitionedCall:output:0lstm_40_376314lstm_40_376316lstm_40_376318*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3754562!
lstm_40/StatefulPartitionedCall
dropout_22/PartitionedCallPartitionedCall(lstm_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_3754692
dropout_22/PartitionedCall¾
lstm_41/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0lstm_41_376322lstm_41_376324lstm_41_376326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3756212!
lstm_41/StatefulPartitionedCallü
dropout_23/PartitionedCallPartitionedCall(lstm_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_3756342
dropout_23/PartitionedCall±
 dense_40/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_40_376330dense_40_376332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_3756472"
 dense_40/StatefulPartitionedCall·
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_376335dense_41_376337*
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
GPU 2J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_3756632"
 dense_41/StatefulPartitionedCall
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_3756822
reshape_20/PartitionedCall
IdentityIdentity#reshape_20/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_8/StatefulPartitionedCall!^conv1d_9/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall ^lstm_40/StatefulPartitionedCall ^lstm_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2B
lstm_40/StatefulPartitionedCalllstm_40/StatefulPartitionedCall2B
lstm_41/StatefulPartitionedCalllstm_41/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_8_input
³2
Ö
I__inference_sequential_14_layer_call_and_return_conditional_losses_376236

inputs%
conv1d_8_376197: 
conv1d_8_376199: %
conv1d_9_376202: @
conv1d_9_376204:@ 
lstm_40_376208:@  
lstm_40_376210: 
lstm_40_376212:  
lstm_41_376216:  
lstm_41_376218: 
lstm_41_376220: !
dense_40_376224:
dense_40_376226:!
dense_41_376229:
dense_41_376231:
identity¢ conv1d_8/StatefulPartitionedCall¢ conv1d_9/StatefulPartitionedCall¢ dense_40/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢"dropout_22/StatefulPartitionedCall¢"dropout_23/StatefulPartitionedCall¢lstm_40/StatefulPartitionedCall¢lstm_41/StatefulPartitionedCall
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_8_376197conv1d_8_376199*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_8_layer_call_and_return_conditional_losses_3752692"
 conv1d_8/StatefulPartitionedCall»
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0conv1d_9_376202conv1d_9_376204*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_9_layer_call_and_return_conditional_losses_3752912"
 conv1d_9/StatefulPartitionedCall
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_3753042!
max_pooling1d_3/PartitionedCallÇ
lstm_40/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_3/PartitionedCall:output:0lstm_40_376208lstm_40_376210lstm_40_376212*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3761252!
lstm_40/StatefulPartitionedCall
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_3759582$
"dropout_22/StatefulPartitionedCallÆ
lstm_41/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0lstm_41_376216lstm_41_376218lstm_41_376220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3759292!
lstm_41/StatefulPartitionedCall¹
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_41/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_3757622$
"dropout_23/StatefulPartitionedCall¹
 dense_40/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_40_376224dense_40_376226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_3756472"
 dense_40/StatefulPartitionedCall·
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_376229dense_41_376231*
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
GPU 2J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_3756632"
 dense_41/StatefulPartitionedCall
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_3756822
reshape_20/PartitionedCall
IdentityIdentity#reshape_20/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityè
NoOpNoOp!^conv1d_8/StatefulPartitionedCall!^conv1d_9/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall ^lstm_40/StatefulPartitionedCall ^lstm_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2B
lstm_40/StatefulPartitionedCalllstm_40/StatefulPartitionedCall2B
lstm_41/StatefulPartitionedCalllstm_41/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_378067
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0: G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_41_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource: E
3while_lstm_cell_41_matmul_1_readvariableop_resource: @
2while_lstm_cell_41_biasadd_readvariableop_resource: ¢)while/lstm_cell_41/BiasAdd/ReadVariableOp¢(while/lstm_cell_41/MatMul/ReadVariableOp¢*while/lstm_cell_41/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOpÖ
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMulÎ
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp¿
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMul_1·
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/addÇ
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOpÄ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/BiasAdd
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_41/split
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_1 
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu´
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_1©
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/add_1
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_2
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu_1¸
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ú
L
0__inference_max_pooling1d_3_layer_call_fn_377265

inputs
identityÍ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_3753042
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Õ
Ã
while_cond_377391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_377391___redundant_placeholder04
0while_while_cond_377391___redundant_placeholder14
0while_while_cond_377391___redundant_placeholder24
0while_while_cond_377391___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ñ

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_378884

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
û
ì
$__inference_signature_wrapper_376425
conv1d_8_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_3739582
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
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_8_input
«

D__inference_conv1d_9_layer_call_and_return_conditional_losses_377255

inputsA
+conv1d_expanddims_1_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Æ

ã
lstm_40_while_cond_376585,
(lstm_40_while_lstm_40_while_loop_counter2
.lstm_40_while_lstm_40_while_maximum_iterations
lstm_40_while_placeholder
lstm_40_while_placeholder_1
lstm_40_while_placeholder_2
lstm_40_while_placeholder_3.
*lstm_40_while_less_lstm_40_strided_slice_1D
@lstm_40_while_lstm_40_while_cond_376585___redundant_placeholder0D
@lstm_40_while_lstm_40_while_cond_376585___redundant_placeholder1D
@lstm_40_while_lstm_40_while_cond_376585___redundant_placeholder2D
@lstm_40_while_lstm_40_while_cond_376585___redundant_placeholder3
lstm_40_while_identity

lstm_40/while/LessLesslstm_40_while_placeholder*lstm_40_while_less_lstm_40_strided_slice_1*
T0*
_output_shapes
: 2
lstm_40/while/Lessu
lstm_40/while/IdentityIdentitylstm_40/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_40/while/Identity"9
lstm_40_while_identitylstm_40/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_375371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_375371___redundant_placeholder04
0while_while_cond_375371___redundant_placeholder14
0while_while_cond_375371___redundant_placeholder24
0while_while_cond_375371___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ë
û
'sequential_14_lstm_41_while_cond_373850H
Dsequential_14_lstm_41_while_sequential_14_lstm_41_while_loop_counterN
Jsequential_14_lstm_41_while_sequential_14_lstm_41_while_maximum_iterations+
'sequential_14_lstm_41_while_placeholder-
)sequential_14_lstm_41_while_placeholder_1-
)sequential_14_lstm_41_while_placeholder_2-
)sequential_14_lstm_41_while_placeholder_3J
Fsequential_14_lstm_41_while_less_sequential_14_lstm_41_strided_slice_1`
\sequential_14_lstm_41_while_sequential_14_lstm_41_while_cond_373850___redundant_placeholder0`
\sequential_14_lstm_41_while_sequential_14_lstm_41_while_cond_373850___redundant_placeholder1`
\sequential_14_lstm_41_while_sequential_14_lstm_41_while_cond_373850___redundant_placeholder2`
\sequential_14_lstm_41_while_sequential_14_lstm_41_while_cond_373850___redundant_placeholder3(
$sequential_14_lstm_41_while_identity
Þ
 sequential_14/lstm_41/while/LessLess'sequential_14_lstm_41_while_placeholderFsequential_14_lstm_41_while_less_sequential_14_lstm_41_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_14/lstm_41/while/Less
$sequential_14/lstm_41/while/IdentityIdentity$sequential_14/lstm_41/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_14/lstm_41/while/Identity"U
$sequential_14_lstm_41_while_identity-sequential_14/lstm_41/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
F

C__inference_lstm_41_layer_call_and_return_conditional_losses_374984

inputs%
lstm_cell_41_374902: %
lstm_cell_41_374904: !
lstm_cell_41_374906: 
identity¢$lstm_cell_41/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_41_374902lstm_cell_41_374904lstm_cell_41_374906*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3748372&
$lstm_cell_41/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_41_374902lstm_cell_41_374904lstm_cell_41_374906*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_374915*
condR
while_cond_374914*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_41/StatefulPartitionedCall$lstm_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_373970

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDims°
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2	
MaxPool
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
Ü
!__inference__wrapped_model_373958
conv1d_8_inputX
Bsequential_14_conv1d_8_conv1d_expanddims_1_readvariableop_resource: D
6sequential_14_conv1d_8_biasadd_readvariableop_resource: X
Bsequential_14_conv1d_9_conv1d_expanddims_1_readvariableop_resource: @D
6sequential_14_conv1d_9_biasadd_readvariableop_resource:@S
Asequential_14_lstm_40_lstm_cell_40_matmul_readvariableop_resource:@ U
Csequential_14_lstm_40_lstm_cell_40_matmul_1_readvariableop_resource: P
Bsequential_14_lstm_40_lstm_cell_40_biasadd_readvariableop_resource: S
Asequential_14_lstm_41_lstm_cell_41_matmul_readvariableop_resource: U
Csequential_14_lstm_41_lstm_cell_41_matmul_1_readvariableop_resource: P
Bsequential_14_lstm_41_lstm_cell_41_biasadd_readvariableop_resource: G
5sequential_14_dense_40_matmul_readvariableop_resource:D
6sequential_14_dense_40_biasadd_readvariableop_resource:G
5sequential_14_dense_41_matmul_readvariableop_resource:D
6sequential_14_dense_41_biasadd_readvariableop_resource:
identity¢-sequential_14/conv1d_8/BiasAdd/ReadVariableOp¢9sequential_14/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢-sequential_14/conv1d_9/BiasAdd/ReadVariableOp¢9sequential_14/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp¢-sequential_14/dense_40/BiasAdd/ReadVariableOp¢,sequential_14/dense_40/MatMul/ReadVariableOp¢-sequential_14/dense_41/BiasAdd/ReadVariableOp¢,sequential_14/dense_41/MatMul/ReadVariableOp¢9sequential_14/lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp¢8sequential_14/lstm_40/lstm_cell_40/MatMul/ReadVariableOp¢:sequential_14/lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp¢sequential_14/lstm_40/while¢9sequential_14/lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp¢8sequential_14/lstm_41/lstm_cell_41/MatMul/ReadVariableOp¢:sequential_14/lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp¢sequential_14/lstm_41/while§
,sequential_14/conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2.
,sequential_14/conv1d_8/conv1d/ExpandDims/dimã
(sequential_14/conv1d_8/conv1d/ExpandDims
ExpandDimsconv1d_8_input5sequential_14/conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_14/conv1d_8/conv1d/ExpandDimsý
9sequential_14/conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_14_conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02;
9sequential_14/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢
.sequential_14/conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_14/conv1d_8/conv1d/ExpandDims_1/dim
*sequential_14/conv1d_8/conv1d/ExpandDims_1
ExpandDimsAsequential_14/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:07sequential_14/conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2,
*sequential_14/conv1d_8/conv1d/ExpandDims_1
sequential_14/conv1d_8/conv1dConv2D1sequential_14/conv1d_8/conv1d/ExpandDims:output:03sequential_14/conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
sequential_14/conv1d_8/conv1d×
%sequential_14/conv1d_8/conv1d/SqueezeSqueeze&sequential_14/conv1d_8/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2'
%sequential_14/conv1d_8/conv1d/SqueezeÑ
-sequential_14/conv1d_8/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_conv1d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_14/conv1d_8/BiasAdd/ReadVariableOpè
sequential_14/conv1d_8/BiasAddBiasAdd.sequential_14/conv1d_8/conv1d/Squeeze:output:05sequential_14/conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_14/conv1d_8/BiasAdd¡
sequential_14/conv1d_8/ReluRelu'sequential_14/conv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_14/conv1d_8/Relu§
,sequential_14/conv1d_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2.
,sequential_14/conv1d_9/conv1d/ExpandDims/dimþ
(sequential_14/conv1d_9/conv1d/ExpandDims
ExpandDims)sequential_14/conv1d_8/Relu:activations:05sequential_14/conv1d_9/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_14/conv1d_9/conv1d/ExpandDimsý
9sequential_14/conv1d_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_14_conv1d_9_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02;
9sequential_14/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp¢
.sequential_14/conv1d_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_14/conv1d_9/conv1d/ExpandDims_1/dim
*sequential_14/conv1d_9/conv1d/ExpandDims_1
ExpandDimsAsequential_14/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp:value:07sequential_14/conv1d_9/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2,
*sequential_14/conv1d_9/conv1d/ExpandDims_1
sequential_14/conv1d_9/conv1dConv2D1sequential_14/conv1d_9/conv1d/ExpandDims:output:03sequential_14/conv1d_9/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
sequential_14/conv1d_9/conv1d×
%sequential_14/conv1d_9/conv1d/SqueezeSqueeze&sequential_14/conv1d_9/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2'
%sequential_14/conv1d_9/conv1d/SqueezeÑ
-sequential_14/conv1d_9/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_conv1d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_14/conv1d_9/BiasAdd/ReadVariableOpè
sequential_14/conv1d_9/BiasAddBiasAdd.sequential_14/conv1d_9/conv1d/Squeeze:output:05sequential_14/conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_14/conv1d_9/BiasAdd¡
sequential_14/conv1d_9/ReluRelu'sequential_14/conv1d_9/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_14/conv1d_9/Relu
,sequential_14/max_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_14/max_pooling1d_3/ExpandDims/dimþ
(sequential_14/max_pooling1d_3/ExpandDims
ExpandDims)sequential_14/conv1d_9/Relu:activations:05sequential_14/max_pooling1d_3/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(sequential_14/max_pooling1d_3/ExpandDimsø
%sequential_14/max_pooling1d_3/MaxPoolMaxPool1sequential_14/max_pooling1d_3/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2'
%sequential_14/max_pooling1d_3/MaxPoolÖ
%sequential_14/max_pooling1d_3/SqueezeSqueeze.sequential_14/max_pooling1d_3/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2'
%sequential_14/max_pooling1d_3/Squeeze
sequential_14/lstm_40/ShapeShape.sequential_14/max_pooling1d_3/Squeeze:output:0*
T0*
_output_shapes
:2
sequential_14/lstm_40/Shape 
)sequential_14/lstm_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_14/lstm_40/strided_slice/stack¤
+sequential_14/lstm_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_14/lstm_40/strided_slice/stack_1¤
+sequential_14/lstm_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_14/lstm_40/strided_slice/stack_2æ
#sequential_14/lstm_40/strided_sliceStridedSlice$sequential_14/lstm_40/Shape:output:02sequential_14/lstm_40/strided_slice/stack:output:04sequential_14/lstm_40/strided_slice/stack_1:output:04sequential_14/lstm_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_14/lstm_40/strided_slice
!sequential_14/lstm_40/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_14/lstm_40/zeros/mul/yÄ
sequential_14/lstm_40/zeros/mulMul,sequential_14/lstm_40/strided_slice:output:0*sequential_14/lstm_40/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_14/lstm_40/zeros/mul
"sequential_14/lstm_40/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_14/lstm_40/zeros/Less/y¿
 sequential_14/lstm_40/zeros/LessLess#sequential_14/lstm_40/zeros/mul:z:0+sequential_14/lstm_40/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_14/lstm_40/zeros/Less
$sequential_14/lstm_40/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_14/lstm_40/zeros/packed/1Û
"sequential_14/lstm_40/zeros/packedPack,sequential_14/lstm_40/strided_slice:output:0-sequential_14/lstm_40/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_14/lstm_40/zeros/packed
!sequential_14/lstm_40/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_14/lstm_40/zeros/ConstÍ
sequential_14/lstm_40/zerosFill+sequential_14/lstm_40/zeros/packed:output:0*sequential_14/lstm_40/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_14/lstm_40/zeros
#sequential_14/lstm_40/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_14/lstm_40/zeros_1/mul/yÊ
!sequential_14/lstm_40/zeros_1/mulMul,sequential_14/lstm_40/strided_slice:output:0,sequential_14/lstm_40/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_14/lstm_40/zeros_1/mul
$sequential_14/lstm_40/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_14/lstm_40/zeros_1/Less/yÇ
"sequential_14/lstm_40/zeros_1/LessLess%sequential_14/lstm_40/zeros_1/mul:z:0-sequential_14/lstm_40/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_14/lstm_40/zeros_1/Less
&sequential_14/lstm_40/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_14/lstm_40/zeros_1/packed/1á
$sequential_14/lstm_40/zeros_1/packedPack,sequential_14/lstm_40/strided_slice:output:0/sequential_14/lstm_40/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_14/lstm_40/zeros_1/packed
#sequential_14/lstm_40/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_14/lstm_40/zeros_1/ConstÕ
sequential_14/lstm_40/zeros_1Fill-sequential_14/lstm_40/zeros_1/packed:output:0,sequential_14/lstm_40/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_14/lstm_40/zeros_1¡
$sequential_14/lstm_40/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_14/lstm_40/transpose/permä
sequential_14/lstm_40/transpose	Transpose.sequential_14/max_pooling1d_3/Squeeze:output:0-sequential_14/lstm_40/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_14/lstm_40/transpose
sequential_14/lstm_40/Shape_1Shape#sequential_14/lstm_40/transpose:y:0*
T0*
_output_shapes
:2
sequential_14/lstm_40/Shape_1¤
+sequential_14/lstm_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_14/lstm_40/strided_slice_1/stack¨
-sequential_14/lstm_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_40/strided_slice_1/stack_1¨
-sequential_14/lstm_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_40/strided_slice_1/stack_2ò
%sequential_14/lstm_40/strided_slice_1StridedSlice&sequential_14/lstm_40/Shape_1:output:04sequential_14/lstm_40/strided_slice_1/stack:output:06sequential_14/lstm_40/strided_slice_1/stack_1:output:06sequential_14/lstm_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_14/lstm_40/strided_slice_1±
1sequential_14/lstm_40/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_14/lstm_40/TensorArrayV2/element_shape
#sequential_14/lstm_40/TensorArrayV2TensorListReserve:sequential_14/lstm_40/TensorArrayV2/element_shape:output:0.sequential_14/lstm_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_14/lstm_40/TensorArrayV2ë
Ksequential_14/lstm_40/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2M
Ksequential_14/lstm_40/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_14/lstm_40/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_14/lstm_40/transpose:y:0Tsequential_14/lstm_40/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_14/lstm_40/TensorArrayUnstack/TensorListFromTensor¤
+sequential_14/lstm_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_14/lstm_40/strided_slice_2/stack¨
-sequential_14/lstm_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_40/strided_slice_2/stack_1¨
-sequential_14/lstm_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_40/strided_slice_2/stack_2
%sequential_14/lstm_40/strided_slice_2StridedSlice#sequential_14/lstm_40/transpose:y:04sequential_14/lstm_40/strided_slice_2/stack:output:06sequential_14/lstm_40/strided_slice_2/stack_1:output:06sequential_14/lstm_40/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2'
%sequential_14/lstm_40/strided_slice_2ö
8sequential_14/lstm_40/lstm_cell_40/MatMul/ReadVariableOpReadVariableOpAsequential_14_lstm_40_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02:
8sequential_14/lstm_40/lstm_cell_40/MatMul/ReadVariableOp
)sequential_14/lstm_40/lstm_cell_40/MatMulMatMul.sequential_14/lstm_40/strided_slice_2:output:0@sequential_14/lstm_40/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_14/lstm_40/lstm_cell_40/MatMulü
:sequential_14/lstm_40/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpCsequential_14_lstm_40_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02<
:sequential_14/lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp
+sequential_14/lstm_40/lstm_cell_40/MatMul_1MatMul$sequential_14/lstm_40/zeros:output:0Bsequential_14/lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_14/lstm_40/lstm_cell_40/MatMul_1÷
&sequential_14/lstm_40/lstm_cell_40/addAddV23sequential_14/lstm_40/lstm_cell_40/MatMul:product:05sequential_14/lstm_40/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_14/lstm_40/lstm_cell_40/addõ
9sequential_14/lstm_40/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpBsequential_14_lstm_40_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_14/lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp
*sequential_14/lstm_40/lstm_cell_40/BiasAddBiasAdd*sequential_14/lstm_40/lstm_cell_40/add:z:0Asequential_14/lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_14/lstm_40/lstm_cell_40/BiasAddª
2sequential_14/lstm_40/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_14/lstm_40/lstm_cell_40/split/split_dimË
(sequential_14/lstm_40/lstm_cell_40/splitSplit;sequential_14/lstm_40/lstm_cell_40/split/split_dim:output:03sequential_14/lstm_40/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_14/lstm_40/lstm_cell_40/splitÈ
*sequential_14/lstm_40/lstm_cell_40/SigmoidSigmoid1sequential_14/lstm_40/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_14/lstm_40/lstm_cell_40/SigmoidÌ
,sequential_14/lstm_40/lstm_cell_40/Sigmoid_1Sigmoid1sequential_14/lstm_40/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_14/lstm_40/lstm_cell_40/Sigmoid_1ã
&sequential_14/lstm_40/lstm_cell_40/mulMul0sequential_14/lstm_40/lstm_cell_40/Sigmoid_1:y:0&sequential_14/lstm_40/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_14/lstm_40/lstm_cell_40/mul¿
'sequential_14/lstm_40/lstm_cell_40/ReluRelu1sequential_14/lstm_40/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_14/lstm_40/lstm_cell_40/Reluô
(sequential_14/lstm_40/lstm_cell_40/mul_1Mul.sequential_14/lstm_40/lstm_cell_40/Sigmoid:y:05sequential_14/lstm_40/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_14/lstm_40/lstm_cell_40/mul_1é
(sequential_14/lstm_40/lstm_cell_40/add_1AddV2*sequential_14/lstm_40/lstm_cell_40/mul:z:0,sequential_14/lstm_40/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_14/lstm_40/lstm_cell_40/add_1Ì
,sequential_14/lstm_40/lstm_cell_40/Sigmoid_2Sigmoid1sequential_14/lstm_40/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_14/lstm_40/lstm_cell_40/Sigmoid_2¾
)sequential_14/lstm_40/lstm_cell_40/Relu_1Relu,sequential_14/lstm_40/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_14/lstm_40/lstm_cell_40/Relu_1ø
(sequential_14/lstm_40/lstm_cell_40/mul_2Mul0sequential_14/lstm_40/lstm_cell_40/Sigmoid_2:y:07sequential_14/lstm_40/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_14/lstm_40/lstm_cell_40/mul_2»
3sequential_14/lstm_40/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_14/lstm_40/TensorArrayV2_1/element_shape
%sequential_14/lstm_40/TensorArrayV2_1TensorListReserve<sequential_14/lstm_40/TensorArrayV2_1/element_shape:output:0.sequential_14/lstm_40/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_14/lstm_40/TensorArrayV2_1z
sequential_14/lstm_40/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_14/lstm_40/time«
.sequential_14/lstm_40/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_40/while/maximum_iterations
(sequential_14/lstm_40/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_14/lstm_40/while/loop_counterÕ
sequential_14/lstm_40/whileWhile1sequential_14/lstm_40/while/loop_counter:output:07sequential_14/lstm_40/while/maximum_iterations:output:0#sequential_14/lstm_40/time:output:0.sequential_14/lstm_40/TensorArrayV2_1:handle:0$sequential_14/lstm_40/zeros:output:0&sequential_14/lstm_40/zeros_1:output:0.sequential_14/lstm_40/strided_slice_1:output:0Msequential_14/lstm_40/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_14_lstm_40_lstm_cell_40_matmul_readvariableop_resourceCsequential_14_lstm_40_lstm_cell_40_matmul_1_readvariableop_resourceBsequential_14_lstm_40_lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_14_lstm_40_while_body_373703*3
cond+R)
'sequential_14_lstm_40_while_cond_373702*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_14/lstm_40/whileá
Fsequential_14/lstm_40/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_14/lstm_40/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_14/lstm_40/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_14/lstm_40/while:output:3Osequential_14/lstm_40/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_14/lstm_40/TensorArrayV2Stack/TensorListStack­
+sequential_14/lstm_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_14/lstm_40/strided_slice_3/stack¨
-sequential_14/lstm_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_14/lstm_40/strided_slice_3/stack_1¨
-sequential_14/lstm_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_40/strided_slice_3/stack_2
%sequential_14/lstm_40/strided_slice_3StridedSliceAsequential_14/lstm_40/TensorArrayV2Stack/TensorListStack:tensor:04sequential_14/lstm_40/strided_slice_3/stack:output:06sequential_14/lstm_40/strided_slice_3/stack_1:output:06sequential_14/lstm_40/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_14/lstm_40/strided_slice_3¥
&sequential_14/lstm_40/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_14/lstm_40/transpose_1/permý
!sequential_14/lstm_40/transpose_1	TransposeAsequential_14/lstm_40/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_14/lstm_40/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_14/lstm_40/transpose_1
sequential_14/lstm_40/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_14/lstm_40/runtime¯
!sequential_14/dropout_22/IdentityIdentity%sequential_14/lstm_40/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_14/dropout_22/Identity
sequential_14/lstm_41/ShapeShape*sequential_14/dropout_22/Identity:output:0*
T0*
_output_shapes
:2
sequential_14/lstm_41/Shape 
)sequential_14/lstm_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_14/lstm_41/strided_slice/stack¤
+sequential_14/lstm_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_14/lstm_41/strided_slice/stack_1¤
+sequential_14/lstm_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_14/lstm_41/strided_slice/stack_2æ
#sequential_14/lstm_41/strided_sliceStridedSlice$sequential_14/lstm_41/Shape:output:02sequential_14/lstm_41/strided_slice/stack:output:04sequential_14/lstm_41/strided_slice/stack_1:output:04sequential_14/lstm_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_14/lstm_41/strided_slice
!sequential_14/lstm_41/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_14/lstm_41/zeros/mul/yÄ
sequential_14/lstm_41/zeros/mulMul,sequential_14/lstm_41/strided_slice:output:0*sequential_14/lstm_41/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_14/lstm_41/zeros/mul
"sequential_14/lstm_41/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_14/lstm_41/zeros/Less/y¿
 sequential_14/lstm_41/zeros/LessLess#sequential_14/lstm_41/zeros/mul:z:0+sequential_14/lstm_41/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_14/lstm_41/zeros/Less
$sequential_14/lstm_41/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_14/lstm_41/zeros/packed/1Û
"sequential_14/lstm_41/zeros/packedPack,sequential_14/lstm_41/strided_slice:output:0-sequential_14/lstm_41/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_14/lstm_41/zeros/packed
!sequential_14/lstm_41/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_14/lstm_41/zeros/ConstÍ
sequential_14/lstm_41/zerosFill+sequential_14/lstm_41/zeros/packed:output:0*sequential_14/lstm_41/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_14/lstm_41/zeros
#sequential_14/lstm_41/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_14/lstm_41/zeros_1/mul/yÊ
!sequential_14/lstm_41/zeros_1/mulMul,sequential_14/lstm_41/strided_slice:output:0,sequential_14/lstm_41/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_14/lstm_41/zeros_1/mul
$sequential_14/lstm_41/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_14/lstm_41/zeros_1/Less/yÇ
"sequential_14/lstm_41/zeros_1/LessLess%sequential_14/lstm_41/zeros_1/mul:z:0-sequential_14/lstm_41/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_14/lstm_41/zeros_1/Less
&sequential_14/lstm_41/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_14/lstm_41/zeros_1/packed/1á
$sequential_14/lstm_41/zeros_1/packedPack,sequential_14/lstm_41/strided_slice:output:0/sequential_14/lstm_41/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_14/lstm_41/zeros_1/packed
#sequential_14/lstm_41/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_14/lstm_41/zeros_1/ConstÕ
sequential_14/lstm_41/zeros_1Fill-sequential_14/lstm_41/zeros_1/packed:output:0,sequential_14/lstm_41/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_14/lstm_41/zeros_1¡
$sequential_14/lstm_41/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_14/lstm_41/transpose/permà
sequential_14/lstm_41/transpose	Transpose*sequential_14/dropout_22/Identity:output:0-sequential_14/lstm_41/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_14/lstm_41/transpose
sequential_14/lstm_41/Shape_1Shape#sequential_14/lstm_41/transpose:y:0*
T0*
_output_shapes
:2
sequential_14/lstm_41/Shape_1¤
+sequential_14/lstm_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_14/lstm_41/strided_slice_1/stack¨
-sequential_14/lstm_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_41/strided_slice_1/stack_1¨
-sequential_14/lstm_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_41/strided_slice_1/stack_2ò
%sequential_14/lstm_41/strided_slice_1StridedSlice&sequential_14/lstm_41/Shape_1:output:04sequential_14/lstm_41/strided_slice_1/stack:output:06sequential_14/lstm_41/strided_slice_1/stack_1:output:06sequential_14/lstm_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_14/lstm_41/strided_slice_1±
1sequential_14/lstm_41/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_14/lstm_41/TensorArrayV2/element_shape
#sequential_14/lstm_41/TensorArrayV2TensorListReserve:sequential_14/lstm_41/TensorArrayV2/element_shape:output:0.sequential_14/lstm_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_14/lstm_41/TensorArrayV2ë
Ksequential_14/lstm_41/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_14/lstm_41/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_14/lstm_41/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_14/lstm_41/transpose:y:0Tsequential_14/lstm_41/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_14/lstm_41/TensorArrayUnstack/TensorListFromTensor¤
+sequential_14/lstm_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_14/lstm_41/strided_slice_2/stack¨
-sequential_14/lstm_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_41/strided_slice_2/stack_1¨
-sequential_14/lstm_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_41/strided_slice_2/stack_2
%sequential_14/lstm_41/strided_slice_2StridedSlice#sequential_14/lstm_41/transpose:y:04sequential_14/lstm_41/strided_slice_2/stack:output:06sequential_14/lstm_41/strided_slice_2/stack_1:output:06sequential_14/lstm_41/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_14/lstm_41/strided_slice_2ö
8sequential_14/lstm_41/lstm_cell_41/MatMul/ReadVariableOpReadVariableOpAsequential_14_lstm_41_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02:
8sequential_14/lstm_41/lstm_cell_41/MatMul/ReadVariableOp
)sequential_14/lstm_41/lstm_cell_41/MatMulMatMul.sequential_14/lstm_41/strided_slice_2:output:0@sequential_14/lstm_41/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_14/lstm_41/lstm_cell_41/MatMulü
:sequential_14/lstm_41/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOpCsequential_14_lstm_41_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02<
:sequential_14/lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp
+sequential_14/lstm_41/lstm_cell_41/MatMul_1MatMul$sequential_14/lstm_41/zeros:output:0Bsequential_14/lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_14/lstm_41/lstm_cell_41/MatMul_1÷
&sequential_14/lstm_41/lstm_cell_41/addAddV23sequential_14/lstm_41/lstm_cell_41/MatMul:product:05sequential_14/lstm_41/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_14/lstm_41/lstm_cell_41/addõ
9sequential_14/lstm_41/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOpBsequential_14_lstm_41_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_14/lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp
*sequential_14/lstm_41/lstm_cell_41/BiasAddBiasAdd*sequential_14/lstm_41/lstm_cell_41/add:z:0Asequential_14/lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_14/lstm_41/lstm_cell_41/BiasAddª
2sequential_14/lstm_41/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_14/lstm_41/lstm_cell_41/split/split_dimË
(sequential_14/lstm_41/lstm_cell_41/splitSplit;sequential_14/lstm_41/lstm_cell_41/split/split_dim:output:03sequential_14/lstm_41/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_14/lstm_41/lstm_cell_41/splitÈ
*sequential_14/lstm_41/lstm_cell_41/SigmoidSigmoid1sequential_14/lstm_41/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_14/lstm_41/lstm_cell_41/SigmoidÌ
,sequential_14/lstm_41/lstm_cell_41/Sigmoid_1Sigmoid1sequential_14/lstm_41/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_14/lstm_41/lstm_cell_41/Sigmoid_1ã
&sequential_14/lstm_41/lstm_cell_41/mulMul0sequential_14/lstm_41/lstm_cell_41/Sigmoid_1:y:0&sequential_14/lstm_41/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_14/lstm_41/lstm_cell_41/mul¿
'sequential_14/lstm_41/lstm_cell_41/ReluRelu1sequential_14/lstm_41/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_14/lstm_41/lstm_cell_41/Reluô
(sequential_14/lstm_41/lstm_cell_41/mul_1Mul.sequential_14/lstm_41/lstm_cell_41/Sigmoid:y:05sequential_14/lstm_41/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_14/lstm_41/lstm_cell_41/mul_1é
(sequential_14/lstm_41/lstm_cell_41/add_1AddV2*sequential_14/lstm_41/lstm_cell_41/mul:z:0,sequential_14/lstm_41/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_14/lstm_41/lstm_cell_41/add_1Ì
,sequential_14/lstm_41/lstm_cell_41/Sigmoid_2Sigmoid1sequential_14/lstm_41/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_14/lstm_41/lstm_cell_41/Sigmoid_2¾
)sequential_14/lstm_41/lstm_cell_41/Relu_1Relu,sequential_14/lstm_41/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_14/lstm_41/lstm_cell_41/Relu_1ø
(sequential_14/lstm_41/lstm_cell_41/mul_2Mul0sequential_14/lstm_41/lstm_cell_41/Sigmoid_2:y:07sequential_14/lstm_41/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_14/lstm_41/lstm_cell_41/mul_2»
3sequential_14/lstm_41/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_14/lstm_41/TensorArrayV2_1/element_shape
%sequential_14/lstm_41/TensorArrayV2_1TensorListReserve<sequential_14/lstm_41/TensorArrayV2_1/element_shape:output:0.sequential_14/lstm_41/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_14/lstm_41/TensorArrayV2_1z
sequential_14/lstm_41/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_14/lstm_41/time«
.sequential_14/lstm_41/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_41/while/maximum_iterations
(sequential_14/lstm_41/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_14/lstm_41/while/loop_counterÕ
sequential_14/lstm_41/whileWhile1sequential_14/lstm_41/while/loop_counter:output:07sequential_14/lstm_41/while/maximum_iterations:output:0#sequential_14/lstm_41/time:output:0.sequential_14/lstm_41/TensorArrayV2_1:handle:0$sequential_14/lstm_41/zeros:output:0&sequential_14/lstm_41/zeros_1:output:0.sequential_14/lstm_41/strided_slice_1:output:0Msequential_14/lstm_41/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_14_lstm_41_lstm_cell_41_matmul_readvariableop_resourceCsequential_14_lstm_41_lstm_cell_41_matmul_1_readvariableop_resourceBsequential_14_lstm_41_lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_14_lstm_41_while_body_373851*3
cond+R)
'sequential_14_lstm_41_while_cond_373850*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_14/lstm_41/whileá
Fsequential_14/lstm_41/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_14/lstm_41/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_14/lstm_41/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_14/lstm_41/while:output:3Osequential_14/lstm_41/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_14/lstm_41/TensorArrayV2Stack/TensorListStack­
+sequential_14/lstm_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_14/lstm_41/strided_slice_3/stack¨
-sequential_14/lstm_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_14/lstm_41/strided_slice_3/stack_1¨
-sequential_14/lstm_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_41/strided_slice_3/stack_2
%sequential_14/lstm_41/strided_slice_3StridedSliceAsequential_14/lstm_41/TensorArrayV2Stack/TensorListStack:tensor:04sequential_14/lstm_41/strided_slice_3/stack:output:06sequential_14/lstm_41/strided_slice_3/stack_1:output:06sequential_14/lstm_41/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_14/lstm_41/strided_slice_3¥
&sequential_14/lstm_41/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_14/lstm_41/transpose_1/permý
!sequential_14/lstm_41/transpose_1	TransposeAsequential_14/lstm_41/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_14/lstm_41/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_14/lstm_41/transpose_1
sequential_14/lstm_41/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_14/lstm_41/runtime´
!sequential_14/dropout_23/IdentityIdentity.sequential_14/lstm_41/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_14/dropout_23/IdentityÒ
,sequential_14/dense_40/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_40_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_14/dense_40/MatMul/ReadVariableOpÜ
sequential_14/dense_40/MatMulMatMul*sequential_14/dropout_23/Identity:output:04sequential_14/dense_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_14/dense_40/MatMulÑ
-sequential_14/dense_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_14/dense_40/BiasAdd/ReadVariableOpÝ
sequential_14/dense_40/BiasAddBiasAdd'sequential_14/dense_40/MatMul:product:05sequential_14/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_14/dense_40/BiasAdd
sequential_14/dense_40/ReluRelu'sequential_14/dense_40/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_14/dense_40/ReluÒ
,sequential_14/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_41_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_14/dense_41/MatMul/ReadVariableOpÛ
sequential_14/dense_41/MatMulMatMul)sequential_14/dense_40/Relu:activations:04sequential_14/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_14/dense_41/MatMulÑ
-sequential_14/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_14/dense_41/BiasAdd/ReadVariableOpÝ
sequential_14/dense_41/BiasAddBiasAdd'sequential_14/dense_41/MatMul:product:05sequential_14/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_14/dense_41/BiasAdd
sequential_14/reshape_20/ShapeShape'sequential_14/dense_41/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_14/reshape_20/Shape¦
,sequential_14/reshape_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_14/reshape_20/strided_slice/stackª
.sequential_14/reshape_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_14/reshape_20/strided_slice/stack_1ª
.sequential_14/reshape_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_14/reshape_20/strided_slice/stack_2ø
&sequential_14/reshape_20/strided_sliceStridedSlice'sequential_14/reshape_20/Shape:output:05sequential_14/reshape_20/strided_slice/stack:output:07sequential_14/reshape_20/strided_slice/stack_1:output:07sequential_14/reshape_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_14/reshape_20/strided_slice
(sequential_14/reshape_20/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_14/reshape_20/Reshape/shape/1
(sequential_14/reshape_20/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_14/reshape_20/Reshape/shape/2
&sequential_14/reshape_20/Reshape/shapePack/sequential_14/reshape_20/strided_slice:output:01sequential_14/reshape_20/Reshape/shape/1:output:01sequential_14/reshape_20/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_14/reshape_20/Reshape/shapeß
 sequential_14/reshape_20/ReshapeReshape'sequential_14/dense_41/BiasAdd:output:0/sequential_14/reshape_20/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_14/reshape_20/Reshape
IdentityIdentity)sequential_14/reshape_20/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp.^sequential_14/conv1d_8/BiasAdd/ReadVariableOp:^sequential_14/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp.^sequential_14/conv1d_9/BiasAdd/ReadVariableOp:^sequential_14/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp.^sequential_14/dense_40/BiasAdd/ReadVariableOp-^sequential_14/dense_40/MatMul/ReadVariableOp.^sequential_14/dense_41/BiasAdd/ReadVariableOp-^sequential_14/dense_41/MatMul/ReadVariableOp:^sequential_14/lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp9^sequential_14/lstm_40/lstm_cell_40/MatMul/ReadVariableOp;^sequential_14/lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp^sequential_14/lstm_40/while:^sequential_14/lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp9^sequential_14/lstm_41/lstm_cell_41/MatMul/ReadVariableOp;^sequential_14/lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp^sequential_14/lstm_41/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2^
-sequential_14/conv1d_8/BiasAdd/ReadVariableOp-sequential_14/conv1d_8/BiasAdd/ReadVariableOp2v
9sequential_14/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp9sequential_14/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_14/conv1d_9/BiasAdd/ReadVariableOp-sequential_14/conv1d_9/BiasAdd/ReadVariableOp2v
9sequential_14/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp9sequential_14/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_14/dense_40/BiasAdd/ReadVariableOp-sequential_14/dense_40/BiasAdd/ReadVariableOp2\
,sequential_14/dense_40/MatMul/ReadVariableOp,sequential_14/dense_40/MatMul/ReadVariableOp2^
-sequential_14/dense_41/BiasAdd/ReadVariableOp-sequential_14/dense_41/BiasAdd/ReadVariableOp2\
,sequential_14/dense_41/MatMul/ReadVariableOp,sequential_14/dense_41/MatMul/ReadVariableOp2v
9sequential_14/lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp9sequential_14/lstm_40/lstm_cell_40/BiasAdd/ReadVariableOp2t
8sequential_14/lstm_40/lstm_cell_40/MatMul/ReadVariableOp8sequential_14/lstm_40/lstm_cell_40/MatMul/ReadVariableOp2x
:sequential_14/lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp:sequential_14/lstm_40/lstm_cell_40/MatMul_1/ReadVariableOp2:
sequential_14/lstm_40/whilesequential_14/lstm_40/while2v
9sequential_14/lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp9sequential_14/lstm_41/lstm_cell_41/BiasAdd/ReadVariableOp2t
8sequential_14/lstm_41/lstm_cell_41/MatMul/ReadVariableOp8sequential_14/lstm_41/lstm_cell_41/MatMul/ReadVariableOp2x
:sequential_14/lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp:sequential_14/lstm_41/lstm_cell_41/MatMul_1/ReadVariableOp2:
sequential_14/lstm_41/whilesequential_14/lstm_41/while:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_8_input
?
Ê
while_body_378369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0: G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_41_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource: E
3while_lstm_cell_41_matmul_1_readvariableop_resource: @
2while_lstm_cell_41_biasadd_readvariableop_resource: ¢)while/lstm_cell_41/BiasAdd/ReadVariableOp¢(while/lstm_cell_41/MatMul/ReadVariableOp¢*while/lstm_cell_41/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOpÖ
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMulÎ
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp¿
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMul_1·
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/addÇ
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOpÄ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/BiasAdd
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_41/split
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_1 
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu´
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_1©
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/add_1
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_2
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu_1¸
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


)__inference_conv1d_8_layer_call_fn_377214

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_8_layer_call_and_return_conditional_losses_3752692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«

D__inference_conv1d_9_layer_call_and_return_conditional_losses_375291

inputsA
+conv1d_expanddims_1_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1¶
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¤
g
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_377281

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

ExpandDims
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2	
MaxPool|
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2	
Squeezeh
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
×[

C__inference_lstm_40_layer_call_and_return_conditional_losses_377929

inputs=
+lstm_cell_40_matmul_readvariableop_resource:@ ?
-lstm_cell_40_matmul_1_readvariableop_resource: :
,lstm_cell_40_biasadd_readvariableop_resource: 
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp¬
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMulº
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp¨
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMul_1
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/add³
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp¬
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_1
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu_1 
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_377845*
condR
while_cond_377844*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­
ö
.__inference_sequential_14_layer_call_fn_375716
conv1d_8_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_3756852
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
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_8_input
Æ

ã
lstm_41_while_cond_376733,
(lstm_41_while_lstm_41_while_loop_counter2
.lstm_41_while_lstm_41_while_maximum_iterations
lstm_41_while_placeholder
lstm_41_while_placeholder_1
lstm_41_while_placeholder_2
lstm_41_while_placeholder_3.
*lstm_41_while_less_lstm_41_strided_slice_1D
@lstm_41_while_lstm_41_while_cond_376733___redundant_placeholder0D
@lstm_41_while_lstm_41_while_cond_376733___redundant_placeholder1D
@lstm_41_while_lstm_41_while_cond_376733___redundant_placeholder2D
@lstm_41_while_lstm_41_while_cond_376733___redundant_placeholder3
lstm_41_while_identity

lstm_41/while/LessLesslstm_41_while_placeholder*lstm_41_while_less_lstm_41_strided_slice_1*
T0*
_output_shapes
: 2
lstm_41/while/Lessu
lstm_41/while/IdentityIdentitylstm_41/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_41/while/Identity"9
lstm_41_while_identitylstm_41/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_378218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_41_matmul_readvariableop_resource_0: G
5while_lstm_cell_41_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_41_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_41_matmul_readvariableop_resource: E
3while_lstm_cell_41_matmul_1_readvariableop_resource: @
2while_lstm_cell_41_biasadd_readvariableop_resource: ¢)while/lstm_cell_41/BiasAdd/ReadVariableOp¢(while/lstm_cell_41/MatMul/ReadVariableOp¢*while/lstm_cell_41/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOpÖ
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMulÎ
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp¿
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/MatMul_1·
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/addÇ
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOpÄ
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_41/BiasAdd
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_41/split
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_1 
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu´
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_1©
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/add_1
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Sigmoid_2
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/Relu_1¸
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_41/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

õ
D__inference_dense_40_layer_call_and_return_conditional_losses_375647

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\

C__inference_lstm_41_layer_call_and_return_conditional_losses_378302
inputs_0=
+lstm_cell_41_matmul_readvariableop_resource: ?
-lstm_cell_41_matmul_1_readvariableop_resource: :
,lstm_cell_41_biasadd_readvariableop_resource: 
identity¢#lstm_cell_41/BiasAdd/ReadVariableOp¢"lstm_cell_41/MatMul/ReadVariableOp¢$lstm_cell_41/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp¬
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMulº
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp¨
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMul_1
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/add³
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp¬
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dimó
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_41/split
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_1
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_1
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/add_1
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu_1 
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_378218*
condR
while_cond_378217*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ñ

H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_378852

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ë2
Þ
I__inference_sequential_14_layer_call_and_return_conditional_losses_376384
conv1d_8_input%
conv1d_8_376345: 
conv1d_8_376347: %
conv1d_9_376350: @
conv1d_9_376352:@ 
lstm_40_376356:@  
lstm_40_376358: 
lstm_40_376360:  
lstm_41_376364:  
lstm_41_376366: 
lstm_41_376368: !
dense_40_376372:
dense_40_376374:!
dense_41_376377:
dense_41_376379:
identity¢ conv1d_8/StatefulPartitionedCall¢ conv1d_9/StatefulPartitionedCall¢ dense_40/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢"dropout_22/StatefulPartitionedCall¢"dropout_23/StatefulPartitionedCall¢lstm_40/StatefulPartitionedCall¢lstm_41/StatefulPartitionedCall 
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputconv1d_8_376345conv1d_8_376347*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_8_layer_call_and_return_conditional_losses_3752692"
 conv1d_8/StatefulPartitionedCall»
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0conv1d_9_376350conv1d_9_376352*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_9_layer_call_and_return_conditional_losses_3752912"
 conv1d_9/StatefulPartitionedCall
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_3753042!
max_pooling1d_3/PartitionedCallÇ
lstm_40/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_3/PartitionedCall:output:0lstm_40_376356lstm_40_376358lstm_40_376360*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3761252!
lstm_40/StatefulPartitionedCall
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_3759582$
"dropout_22/StatefulPartitionedCallÆ
lstm_41/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0lstm_41_376364lstm_41_376366lstm_41_376368*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3759292!
lstm_41/StatefulPartitionedCall¹
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_41/StatefulPartitionedCall:output:0#^dropout_22/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_3757622$
"dropout_23/StatefulPartitionedCall¹
 dense_40/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_40_376372dense_40_376374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_3756472"
 dense_40/StatefulPartitionedCall·
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_376377dense_41_376379*
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
GPU 2J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_3756632"
 dense_41/StatefulPartitionedCall
reshape_20/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *O
fJRH
F__inference_reshape_20_layer_call_and_return_conditional_losses_3756822
reshape_20/PartitionedCall
IdentityIdentity#reshape_20/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityè
NoOpNoOp!^conv1d_8/StatefulPartitionedCall!^conv1d_9/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall ^lstm_40/StatefulPartitionedCall ^lstm_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2B
lstm_40/StatefulPartitionedCalllstm_40/StatefulPartitionedCall2B
lstm_41/StatefulPartitionedCalllstm_41/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_8_input
¿^

'sequential_14_lstm_40_while_body_373703H
Dsequential_14_lstm_40_while_sequential_14_lstm_40_while_loop_counterN
Jsequential_14_lstm_40_while_sequential_14_lstm_40_while_maximum_iterations+
'sequential_14_lstm_40_while_placeholder-
)sequential_14_lstm_40_while_placeholder_1-
)sequential_14_lstm_40_while_placeholder_2-
)sequential_14_lstm_40_while_placeholder_3G
Csequential_14_lstm_40_while_sequential_14_lstm_40_strided_slice_1_0
sequential_14_lstm_40_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_40_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_14_lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0:@ ]
Ksequential_14_lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0: X
Jsequential_14_lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0: (
$sequential_14_lstm_40_while_identity*
&sequential_14_lstm_40_while_identity_1*
&sequential_14_lstm_40_while_identity_2*
&sequential_14_lstm_40_while_identity_3*
&sequential_14_lstm_40_while_identity_4*
&sequential_14_lstm_40_while_identity_5E
Asequential_14_lstm_40_while_sequential_14_lstm_40_strided_slice_1
}sequential_14_lstm_40_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_40_tensorarrayunstack_tensorlistfromtensorY
Gsequential_14_lstm_40_while_lstm_cell_40_matmul_readvariableop_resource:@ [
Isequential_14_lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource: V
Hsequential_14_lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource: ¢?sequential_14/lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp¢>sequential_14/lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp¢@sequential_14/lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpï
Msequential_14/lstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2O
Msequential_14/lstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_14/lstm_40/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_14_lstm_40_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_40_tensorarrayunstack_tensorlistfromtensor_0'sequential_14_lstm_40_while_placeholderVsequential_14/lstm_40/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02A
?sequential_14/lstm_40/while/TensorArrayV2Read/TensorListGetItem
>sequential_14/lstm_40/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOpIsequential_14_lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype02@
>sequential_14/lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp®
/sequential_14/lstm_40/while/lstm_cell_40/MatMulMatMulFsequential_14/lstm_40/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_14/lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_14/lstm_40/while/lstm_cell_40/MatMul
@sequential_14/lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpKsequential_14_lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02B
@sequential_14/lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp
1sequential_14/lstm_40/while/lstm_cell_40/MatMul_1MatMul)sequential_14_lstm_40_while_placeholder_2Hsequential_14/lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_14/lstm_40/while/lstm_cell_40/MatMul_1
,sequential_14/lstm_40/while/lstm_cell_40/addAddV29sequential_14/lstm_40/while/lstm_cell_40/MatMul:product:0;sequential_14/lstm_40/while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_14/lstm_40/while/lstm_cell_40/add
?sequential_14/lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpJsequential_14_lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02A
?sequential_14/lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp
0sequential_14/lstm_40/while/lstm_cell_40/BiasAddBiasAdd0sequential_14/lstm_40/while/lstm_cell_40/add:z:0Gsequential_14/lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_14/lstm_40/while/lstm_cell_40/BiasAdd¶
8sequential_14/lstm_40/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_14/lstm_40/while/lstm_cell_40/split/split_dimã
.sequential_14/lstm_40/while/lstm_cell_40/splitSplitAsequential_14/lstm_40/while/lstm_cell_40/split/split_dim:output:09sequential_14/lstm_40/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_14/lstm_40/while/lstm_cell_40/splitÚ
0sequential_14/lstm_40/while/lstm_cell_40/SigmoidSigmoid7sequential_14/lstm_40/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_14/lstm_40/while/lstm_cell_40/SigmoidÞ
2sequential_14/lstm_40/while/lstm_cell_40/Sigmoid_1Sigmoid7sequential_14/lstm_40/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_14/lstm_40/while/lstm_cell_40/Sigmoid_1ø
,sequential_14/lstm_40/while/lstm_cell_40/mulMul6sequential_14/lstm_40/while/lstm_cell_40/Sigmoid_1:y:0)sequential_14_lstm_40_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_14/lstm_40/while/lstm_cell_40/mulÑ
-sequential_14/lstm_40/while/lstm_cell_40/ReluRelu7sequential_14/lstm_40/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_14/lstm_40/while/lstm_cell_40/Relu
.sequential_14/lstm_40/while/lstm_cell_40/mul_1Mul4sequential_14/lstm_40/while/lstm_cell_40/Sigmoid:y:0;sequential_14/lstm_40/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_40/while/lstm_cell_40/mul_1
.sequential_14/lstm_40/while/lstm_cell_40/add_1AddV20sequential_14/lstm_40/while/lstm_cell_40/mul:z:02sequential_14/lstm_40/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_40/while/lstm_cell_40/add_1Þ
2sequential_14/lstm_40/while/lstm_cell_40/Sigmoid_2Sigmoid7sequential_14/lstm_40/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_14/lstm_40/while/lstm_cell_40/Sigmoid_2Ð
/sequential_14/lstm_40/while/lstm_cell_40/Relu_1Relu2sequential_14/lstm_40/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_14/lstm_40/while/lstm_cell_40/Relu_1
.sequential_14/lstm_40/while/lstm_cell_40/mul_2Mul6sequential_14/lstm_40/while/lstm_cell_40/Sigmoid_2:y:0=sequential_14/lstm_40/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_14/lstm_40/while/lstm_cell_40/mul_2Î
@sequential_14/lstm_40/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_14_lstm_40_while_placeholder_1'sequential_14_lstm_40_while_placeholder2sequential_14/lstm_40/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_14/lstm_40/while/TensorArrayV2Write/TensorListSetItem
!sequential_14/lstm_40/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_14/lstm_40/while/add/yÁ
sequential_14/lstm_40/while/addAddV2'sequential_14_lstm_40_while_placeholder*sequential_14/lstm_40/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_14/lstm_40/while/add
#sequential_14/lstm_40/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_14/lstm_40/while/add_1/yä
!sequential_14/lstm_40/while/add_1AddV2Dsequential_14_lstm_40_while_sequential_14_lstm_40_while_loop_counter,sequential_14/lstm_40/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_14/lstm_40/while/add_1Ã
$sequential_14/lstm_40/while/IdentityIdentity%sequential_14/lstm_40/while/add_1:z:0!^sequential_14/lstm_40/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_14/lstm_40/while/Identityì
&sequential_14/lstm_40/while/Identity_1IdentityJsequential_14_lstm_40_while_sequential_14_lstm_40_while_maximum_iterations!^sequential_14/lstm_40/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_40/while/Identity_1Å
&sequential_14/lstm_40/while/Identity_2Identity#sequential_14/lstm_40/while/add:z:0!^sequential_14/lstm_40/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_40/while/Identity_2ò
&sequential_14/lstm_40/while/Identity_3IdentityPsequential_14/lstm_40/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_14/lstm_40/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_40/while/Identity_3å
&sequential_14/lstm_40/while/Identity_4Identity2sequential_14/lstm_40/while/lstm_cell_40/mul_2:z:0!^sequential_14/lstm_40/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_14/lstm_40/while/Identity_4å
&sequential_14/lstm_40/while/Identity_5Identity2sequential_14/lstm_40/while/lstm_cell_40/add_1:z:0!^sequential_14/lstm_40/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_14/lstm_40/while/Identity_5Ì
 sequential_14/lstm_40/while/NoOpNoOp@^sequential_14/lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp?^sequential_14/lstm_40/while/lstm_cell_40/MatMul/ReadVariableOpA^sequential_14/lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_14/lstm_40/while/NoOp"U
$sequential_14_lstm_40_while_identity-sequential_14/lstm_40/while/Identity:output:0"Y
&sequential_14_lstm_40_while_identity_1/sequential_14/lstm_40/while/Identity_1:output:0"Y
&sequential_14_lstm_40_while_identity_2/sequential_14/lstm_40/while/Identity_2:output:0"Y
&sequential_14_lstm_40_while_identity_3/sequential_14/lstm_40/while/Identity_3:output:0"Y
&sequential_14_lstm_40_while_identity_4/sequential_14/lstm_40/while/Identity_4:output:0"Y
&sequential_14_lstm_40_while_identity_5/sequential_14/lstm_40/while/Identity_5:output:0"
Hsequential_14_lstm_40_while_lstm_cell_40_biasadd_readvariableop_resourceJsequential_14_lstm_40_while_lstm_cell_40_biasadd_readvariableop_resource_0"
Isequential_14_lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resourceKsequential_14_lstm_40_while_lstm_cell_40_matmul_1_readvariableop_resource_0"
Gsequential_14_lstm_40_while_lstm_cell_40_matmul_readvariableop_resourceIsequential_14_lstm_40_while_lstm_cell_40_matmul_readvariableop_resource_0"
Asequential_14_lstm_40_while_sequential_14_lstm_40_strided_slice_1Csequential_14_lstm_40_while_sequential_14_lstm_40_strided_slice_1_0"
}sequential_14_lstm_40_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_40_tensorarrayunstack_tensorlistfromtensorsequential_14_lstm_40_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_40_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_14/lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp?sequential_14/lstm_40/while/lstm_cell_40/BiasAdd/ReadVariableOp2
>sequential_14/lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp>sequential_14/lstm_40/while/lstm_cell_40/MatMul/ReadVariableOp2
@sequential_14/lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp@sequential_14/lstm_40/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_378066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378066___redundant_placeholder04
0while_while_cond_378066___redundant_placeholder14
0while_while_cond_378066___redundant_placeholder24
0while_while_cond_378066___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
×[

C__inference_lstm_40_layer_call_and_return_conditional_losses_376125

inputs=
+lstm_cell_40_matmul_readvariableop_resource:@ ?
-lstm_cell_40_matmul_1_readvariableop_resource: :
,lstm_cell_40_biasadd_readvariableop_resource: 
identity¢#lstm_cell_40/BiasAdd/ReadVariableOp¢"lstm_cell_40/MatMul/ReadVariableOp¢$lstm_cell_40/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
valueB"ÿÿÿÿ@   27
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
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp¬
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMulº
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp¨
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/MatMul_1
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/add³
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp¬
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dimó
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_40/split
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_1
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_1
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/add_1
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/Relu_1 
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_40/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_376041*
condR
while_cond_376040*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
«
²
(__inference_lstm_40_layer_call_fn_377325

inputs
unknown:@ 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3761252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Í
e
F__inference_dropout_22_layer_call_and_return_conditional_losses_377956

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¸
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yÂ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

î
.__inference_sequential_14_layer_call_fn_376458

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_3756852
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
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_378217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_378217___redundant_placeholder04
0while_while_cond_378217___redundant_placeholder14
0while_while_cond_378217___redundant_placeholder24
0while_while_cond_378217___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ü[

C__inference_lstm_41_layer_call_and_return_conditional_losses_375621

inputs=
+lstm_cell_41_matmul_readvariableop_resource: ?
-lstm_cell_41_matmul_1_readvariableop_resource: :
,lstm_cell_41_biasadd_readvariableop_resource: 
identity¢#lstm_cell_41/BiasAdd/ReadVariableOp¢"lstm_cell_41/MatMul/ReadVariableOp¢$lstm_cell_41/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp¬
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMulº
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp¨
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/MatMul_1
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/add³
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp¬
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dimó
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_41/split
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_1
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_1
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/add_1
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/Relu_1 
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_41/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_375537*
condR
while_cond_375536*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_374074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_374074___redundant_placeholder04
0while_while_cond_374074___redundant_placeholder14
0while_while_cond_374074___redundant_placeholder24
0while_while_cond_374074___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

î
.__inference_sequential_14_layer_call_fn_376491

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_3762362
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
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÀJ
Ê

lstm_41_while_body_377091,
(lstm_41_while_lstm_41_while_loop_counter2
.lstm_41_while_lstm_41_while_maximum_iterations
lstm_41_while_placeholder
lstm_41_while_placeholder_1
lstm_41_while_placeholder_2
lstm_41_while_placeholder_3+
'lstm_41_while_lstm_41_strided_slice_1_0g
clstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0: O
=lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0: J
<lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0: 
lstm_41_while_identity
lstm_41_while_identity_1
lstm_41_while_identity_2
lstm_41_while_identity_3
lstm_41_while_identity_4
lstm_41_while_identity_5)
%lstm_41_while_lstm_41_strided_slice_1e
alstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensorK
9lstm_41_while_lstm_cell_41_matmul_readvariableop_resource: M
;lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource: H
:lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource: ¢1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp¢0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp¢2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpÓ
?lstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_41/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensor_0lstm_41_while_placeholderHlstm_41/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_41/while/TensorArrayV2Read/TensorListGetItemà
0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp;lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype022
0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOpö
!lstm_41/while/lstm_cell_41/MatMulMatMul8lstm_41/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_41/while/lstm_cell_41/MatMulæ
2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp=lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOpß
#lstm_41/while/lstm_cell_41/MatMul_1MatMullstm_41_while_placeholder_2:lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_41/while/lstm_cell_41/MatMul_1×
lstm_41/while/lstm_cell_41/addAddV2+lstm_41/while/lstm_cell_41/MatMul:product:0-lstm_41/while/lstm_cell_41/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_41/while/lstm_cell_41/addß
1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp<lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOpä
"lstm_41/while/lstm_cell_41/BiasAddBiasAdd"lstm_41/while/lstm_cell_41/add:z:09lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_41/while/lstm_cell_41/BiasAdd
*lstm_41/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_41/while/lstm_cell_41/split/split_dim«
 lstm_41/while/lstm_cell_41/splitSplit3lstm_41/while/lstm_cell_41/split/split_dim:output:0+lstm_41/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_41/while/lstm_cell_41/split°
"lstm_41/while/lstm_cell_41/SigmoidSigmoid)lstm_41/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_41/while/lstm_cell_41/Sigmoid´
$lstm_41/while/lstm_cell_41/Sigmoid_1Sigmoid)lstm_41/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_41/while/lstm_cell_41/Sigmoid_1À
lstm_41/while/lstm_cell_41/mulMul(lstm_41/while/lstm_cell_41/Sigmoid_1:y:0lstm_41_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_41/while/lstm_cell_41/mul§
lstm_41/while/lstm_cell_41/ReluRelu)lstm_41/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_41/while/lstm_cell_41/ReluÔ
 lstm_41/while/lstm_cell_41/mul_1Mul&lstm_41/while/lstm_cell_41/Sigmoid:y:0-lstm_41/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/lstm_cell_41/mul_1É
 lstm_41/while/lstm_cell_41/add_1AddV2"lstm_41/while/lstm_cell_41/mul:z:0$lstm_41/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/lstm_cell_41/add_1´
$lstm_41/while/lstm_cell_41/Sigmoid_2Sigmoid)lstm_41/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_41/while/lstm_cell_41/Sigmoid_2¦
!lstm_41/while/lstm_cell_41/Relu_1Relu$lstm_41/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_41/while/lstm_cell_41/Relu_1Ø
 lstm_41/while/lstm_cell_41/mul_2Mul(lstm_41/while/lstm_cell_41/Sigmoid_2:y:0/lstm_41/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_41/while/lstm_cell_41/mul_2
2lstm_41/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_41_while_placeholder_1lstm_41_while_placeholder$lstm_41/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_41/while/TensorArrayV2Write/TensorListSetIteml
lstm_41/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/while/add/y
lstm_41/while/addAddV2lstm_41_while_placeholderlstm_41/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_41/while/addp
lstm_41/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_41/while/add_1/y
lstm_41/while/add_1AddV2(lstm_41_while_lstm_41_while_loop_counterlstm_41/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_41/while/add_1
lstm_41/while/IdentityIdentitylstm_41/while/add_1:z:0^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity¦
lstm_41/while/Identity_1Identity.lstm_41_while_lstm_41_while_maximum_iterations^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity_1
lstm_41/while/Identity_2Identitylstm_41/while/add:z:0^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity_2º
lstm_41/while/Identity_3IdentityBlstm_41/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_41/while/NoOp*
T0*
_output_shapes
: 2
lstm_41/while/Identity_3­
lstm_41/while/Identity_4Identity$lstm_41/while/lstm_cell_41/mul_2:z:0^lstm_41/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/while/Identity_4­
lstm_41/while/Identity_5Identity$lstm_41/while/lstm_cell_41/add_1:z:0^lstm_41/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_41/while/Identity_5
lstm_41/while/NoOpNoOp2^lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp1^lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp3^lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_41/while/NoOp"9
lstm_41_while_identitylstm_41/while/Identity:output:0"=
lstm_41_while_identity_1!lstm_41/while/Identity_1:output:0"=
lstm_41_while_identity_2!lstm_41/while/Identity_2:output:0"=
lstm_41_while_identity_3!lstm_41/while/Identity_3:output:0"=
lstm_41_while_identity_4!lstm_41/while/Identity_4:output:0"=
lstm_41_while_identity_5!lstm_41/while/Identity_5:output:0"P
%lstm_41_while_lstm_41_strided_slice_1'lstm_41_while_lstm_41_strided_slice_1_0"z
:lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource<lstm_41_while_lstm_cell_41_biasadd_readvariableop_resource_0"|
;lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource=lstm_41_while_lstm_cell_41_matmul_1_readvariableop_resource_0"x
9lstm_41_while_lstm_cell_41_matmul_readvariableop_resource;lstm_41_while_lstm_cell_41_matmul_readvariableop_resource_0"È
alstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensorclstm_41_while_tensorarrayv2read_tensorlistgetitem_lstm_41_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp1lstm_41/while/lstm_cell_41/BiasAdd/ReadVariableOp2d
0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp0lstm_41/while/lstm_cell_41/MatMul/ReadVariableOp2h
2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp2lstm_41/while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

b
F__inference_reshape_20_layer_call_and_return_conditional_losses_378688

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
³
ó
-__inference_lstm_cell_41_layer_call_fn_378803

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3746912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
ñ

H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_378786

inputs
states_0
states_10
matmul_readvariableop_resource:@ 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ö
´
(__inference_lstm_40_layer_call_fn_377303
inputs_0
unknown:@ 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_40_layer_call_and_return_conditional_losses_3743542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
£
²
(__inference_lstm_41_layer_call_fn_377989

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_41_layer_call_and_return_conditional_losses_3756212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
L
0__inference_max_pooling1d_3_layer_call_fn_377260

inputs
identityß
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_3739702
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_377273

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDims°
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingSAME*
strides
2	
MaxPool
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_378754

inputs
states_0
states_10
matmul_readvariableop_resource:@ 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim¿
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Í
e
F__inference_dropout_22_layer_call_and_return_conditional_losses_375958

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¸
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yÂ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_377392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_40_matmul_readvariableop_resource_0:@ G
5while_lstm_cell_40_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_40_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_40_matmul_readvariableop_resource:@ E
3while_lstm_cell_40_matmul_1_readvariableop_resource: @
2while_lstm_cell_40_biasadd_readvariableop_resource: ¢)while/lstm_cell_40/BiasAdd/ReadVariableOp¢(while/lstm_cell_40/MatMul/ReadVariableOp¢*while/lstm_cell_40/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes

:@ *
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOpÖ
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMulÎ
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp¿
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/MatMul_1·
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/addÇ
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOpÄ
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_40/BiasAdd
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_40/split
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_1 
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu´
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_1©
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/add_1
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Sigmoid_2
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/Relu_1¸
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_40/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
³
ó
-__inference_lstm_cell_41_layer_call_fn_378820

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3748372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
²
d
+__inference_dropout_22_layer_call_fn_377939

inputs
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_3759582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ã
serving_default¯
M
conv1d_8_input;
 serving_default_conv1d_8_input:0ÿÿÿÿÿÿÿÿÿB

reshape_204
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Á

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
¾__call__
+¿&call_and_return_all_conditional_losses
À_default_save_signature"
_tf_keras_sequential
½

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layer
§
regularization_losses
trainable_variables
	variables
 	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
!cell
"
state_spec
#regularization_losses
$trainable_variables
%	variables
&	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
§
'regularization_losses
(trainable_variables
)	variables
*	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
+cell
,
state_spec
-regularization_losses
.trainable_variables
/	variables
0	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
§
1regularization_losses
2trainable_variables
3	variables
4	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"
_tf_keras_layer
½

5kernel
6bias
7regularization_losses
8trainable_variables
9	variables
:	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"
_tf_keras_layer
½

;kernel
<bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"
_tf_keras_layer
§
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"
_tf_keras_layer
ë
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratem¢m£m¤m¥5m¦6m§;m¨<m©JmªKm«Lm¬Mm­Nm®Om¯v°v±v²v³5v´6vµ;v¶<v·Jv¸Kv¹LvºMv»Nv¼Ov½"
	optimizer
 "
trackable_list_wrapper

0
1
2
3
J4
K5
L6
M7
N8
O9
510
611
;12
<13"
trackable_list_wrapper

0
1
2
3
J4
K5
L6
M7
N8
O9
510
611
;12
<13"
trackable_list_wrapper
Î
Player_regularization_losses
regularization_losses
Qlayer_metrics
trainable_variables

Rlayers
Snon_trainable_variables
Tmetrics
	variables
¾__call__
À_default_save_signature
+¿&call_and_return_all_conditional_losses
'¿"call_and_return_conditional_losses"
_generic_user_object
-
Õserving_default"
signature_map
%:# 2conv1d_8/kernel
: 2conv1d_8/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
Ulayer_regularization_losses
regularization_losses
Vlayer_metrics
trainable_variables

Wlayers
Xnon_trainable_variables
Ymetrics
	variables
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_9/kernel
:@2conv1d_9/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
Zlayer_regularization_losses
regularization_losses
[layer_metrics
trainable_variables

\layers
]non_trainable_variables
^metrics
	variables
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
_layer_regularization_losses
regularization_losses
`layer_metrics
trainable_variables

alayers
bnon_trainable_variables
cmetrics
	variables
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
ã
d
state_size

Jkernel
Krecurrent_kernel
Lbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
J0
K1
L2"
trackable_list_wrapper
5
J0
K1
L2"
trackable_list_wrapper
¼
ilayer_regularization_losses
#regularization_losses
jlayer_metrics
$trainable_variables

klayers

lstates
mnon_trainable_variables
nmetrics
%	variables
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
olayer_regularization_losses
'regularization_losses
player_metrics
(trainable_variables

qlayers
rnon_trainable_variables
smetrics
)	variables
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
ã
t
state_size

Mkernel
Nrecurrent_kernel
Obias
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
M0
N1
O2"
trackable_list_wrapper
5
M0
N1
O2"
trackable_list_wrapper
¼
ylayer_regularization_losses
-regularization_losses
zlayer_metrics
.trainable_variables

{layers

|states
}non_trainable_variables
~metrics
/	variables
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
´
layer_regularization_losses
1regularization_losses
layer_metrics
2trainable_variables
layers
non_trainable_variables
metrics
3	variables
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
!:2dense_40/kernel
:2dense_40/bias
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
µ
 layer_regularization_losses
7regularization_losses
layer_metrics
8trainable_variables
layers
non_trainable_variables
metrics
9	variables
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
!:2dense_41/kernel
:2dense_41/bias
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
µ
 layer_regularization_losses
=regularization_losses
layer_metrics
>trainable_variables
layers
non_trainable_variables
metrics
?	variables
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 layer_regularization_losses
Aregularization_losses
layer_metrics
Btrainable_variables
layers
non_trainable_variables
metrics
C	variables
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@ 2lstm_40/lstm_cell_40/kernel
7:5 2%lstm_40/lstm_cell_40/recurrent_kernel
':% 2lstm_40/lstm_cell_40/bias
-:+ 2lstm_41/lstm_cell_41/kernel
7:5 2%lstm_41/lstm_cell_41/recurrent_kernel
':% 2lstm_41/lstm_cell_41/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
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
trackable_list_wrapper
5
J0
K1
L2"
trackable_list_wrapper
5
J0
K1
L2"
trackable_list_wrapper
µ
 layer_regularization_losses
eregularization_losses
layer_metrics
ftrainable_variables
layers
non_trainable_variables
metrics
g	variables
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
!0"
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
trackable_list_wrapper
5
M0
N1
O2"
trackable_list_wrapper
5
M0
N1
O2"
trackable_list_wrapper
µ
 layer_regularization_losses
uregularization_losses
layer_metrics
vtrainable_variables
layers
non_trainable_variables
metrics
w	variables
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
+0"
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
R

total

count
 	variables
¡	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
*:( 2Adam/conv1d_8/kernel/m
 : 2Adam/conv1d_8/bias/m
*:( @2Adam/conv1d_9/kernel/m
 :@2Adam/conv1d_9/bias/m
&:$2Adam/dense_40/kernel/m
 :2Adam/dense_40/bias/m
&:$2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
2:0@ 2"Adam/lstm_40/lstm_cell_40/kernel/m
<:: 2,Adam/lstm_40/lstm_cell_40/recurrent_kernel/m
,:* 2 Adam/lstm_40/lstm_cell_40/bias/m
2:0 2"Adam/lstm_41/lstm_cell_41/kernel/m
<:: 2,Adam/lstm_41/lstm_cell_41/recurrent_kernel/m
,:* 2 Adam/lstm_41/lstm_cell_41/bias/m
*:( 2Adam/conv1d_8/kernel/v
 : 2Adam/conv1d_8/bias/v
*:( @2Adam/conv1d_9/kernel/v
 :@2Adam/conv1d_9/bias/v
&:$2Adam/dense_40/kernel/v
 :2Adam/dense_40/bias/v
&:$2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/v
2:0@ 2"Adam/lstm_40/lstm_cell_40/kernel/v
<:: 2,Adam/lstm_40/lstm_cell_40/recurrent_kernel/v
,:* 2 Adam/lstm_40/lstm_cell_40/bias/v
2:0 2"Adam/lstm_41/lstm_cell_41/kernel/v
<:: 2,Adam/lstm_41/lstm_cell_41/recurrent_kernel/v
,:* 2 Adam/lstm_41/lstm_cell_41/bias/v
2
.__inference_sequential_14_layer_call_fn_375716
.__inference_sequential_14_layer_call_fn_376458
.__inference_sequential_14_layer_call_fn_376491
.__inference_sequential_14_layer_call_fn_376300À
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
ò2ï
I__inference_sequential_14_layer_call_and_return_conditional_losses_376841
I__inference_sequential_14_layer_call_and_return_conditional_losses_377205
I__inference_sequential_14_layer_call_and_return_conditional_losses_376342
I__inference_sequential_14_layer_call_and_return_conditional_losses_376384À
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
ÓBÐ
!__inference__wrapped_model_373958conv1d_8_input"
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
Ó2Ð
)__inference_conv1d_8_layer_call_fn_377214¢
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
î2ë
D__inference_conv1d_8_layer_call_and_return_conditional_losses_377230¢
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
Ó2Ð
)__inference_conv1d_9_layer_call_fn_377239¢
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
î2ë
D__inference_conv1d_9_layer_call_and_return_conditional_losses_377255¢
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
2
0__inference_max_pooling1d_3_layer_call_fn_377260
0__inference_max_pooling1d_3_layer_call_fn_377265¢
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
Â2¿
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_377273
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_377281¢
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
2
(__inference_lstm_40_layer_call_fn_377292
(__inference_lstm_40_layer_call_fn_377303
(__inference_lstm_40_layer_call_fn_377314
(__inference_lstm_40_layer_call_fn_377325Õ
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
ï2ì
C__inference_lstm_40_layer_call_and_return_conditional_losses_377476
C__inference_lstm_40_layer_call_and_return_conditional_losses_377627
C__inference_lstm_40_layer_call_and_return_conditional_losses_377778
C__inference_lstm_40_layer_call_and_return_conditional_losses_377929Õ
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
2
+__inference_dropout_22_layer_call_fn_377934
+__inference_dropout_22_layer_call_fn_377939´
«²§
FullArgSpec)
args!
jself
jinputs

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
Ê2Ç
F__inference_dropout_22_layer_call_and_return_conditional_losses_377944
F__inference_dropout_22_layer_call_and_return_conditional_losses_377956´
«²§
FullArgSpec)
args!
jself
jinputs

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
2
(__inference_lstm_41_layer_call_fn_377967
(__inference_lstm_41_layer_call_fn_377978
(__inference_lstm_41_layer_call_fn_377989
(__inference_lstm_41_layer_call_fn_378000Õ
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
ï2ì
C__inference_lstm_41_layer_call_and_return_conditional_losses_378151
C__inference_lstm_41_layer_call_and_return_conditional_losses_378302
C__inference_lstm_41_layer_call_and_return_conditional_losses_378453
C__inference_lstm_41_layer_call_and_return_conditional_losses_378604Õ
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
2
+__inference_dropout_23_layer_call_fn_378609
+__inference_dropout_23_layer_call_fn_378614´
«²§
FullArgSpec)
args!
jself
jinputs

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
Ê2Ç
F__inference_dropout_23_layer_call_and_return_conditional_losses_378619
F__inference_dropout_23_layer_call_and_return_conditional_losses_378631´
«²§
FullArgSpec)
args!
jself
jinputs

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
Ó2Ð
)__inference_dense_40_layer_call_fn_378640¢
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
î2ë
D__inference_dense_40_layer_call_and_return_conditional_losses_378651¢
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
Ó2Ð
)__inference_dense_41_layer_call_fn_378660¢
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
î2ë
D__inference_dense_41_layer_call_and_return_conditional_losses_378670¢
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
+__inference_reshape_20_layer_call_fn_378675¢
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
F__inference_reshape_20_layer_call_and_return_conditional_losses_378688¢
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
ÒBÏ
$__inference_signature_wrapper_376425conv1d_8_input"
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
¢2
-__inference_lstm_cell_40_layer_call_fn_378705
-__inference_lstm_cell_40_layer_call_fn_378722¾
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
Ø2Õ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_378754
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_378786¾
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
¢2
-__inference_lstm_cell_41_layer_call_fn_378803
-__inference_lstm_cell_41_layer_call_fn_378820¾
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
Ø2Õ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_378852
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_378884¾
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
 °
!__inference__wrapped_model_373958JKLMNO56;<;¢8
1¢.
,)
conv1d_8_inputÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_20(%

reshape_20ÿÿÿÿÿÿÿÿÿ¬
D__inference_conv1d_8_layer_call_and_return_conditional_losses_377230d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
)__inference_conv1d_8_layer_call_fn_377214W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¬
D__inference_conv1d_9_layer_call_and_return_conditional_losses_377255d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv1d_9_layer_call_fn_377239W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@¤
D__inference_dense_40_layer_call_and_return_conditional_losses_378651\56/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_40_layer_call_fn_378640O56/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_41_layer_call_and_return_conditional_losses_378670\;</¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_41_layer_call_fn_378660O;</¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ®
F__inference_dropout_22_layer_call_and_return_conditional_losses_377944d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ®
F__inference_dropout_22_layer_call_and_return_conditional_losses_377956d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_22_layer_call_fn_377934W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_22_layer_call_fn_377939W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_23_layer_call_and_return_conditional_losses_378619\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¦
F__inference_dropout_23_layer_call_and_return_conditional_losses_378631\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dropout_23_layer_call_fn_378609O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ~
+__inference_dropout_23_layer_call_fn_378614O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÒ
C__inference_lstm_40_layer_call_and_return_conditional_losses_377476JKLO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
C__inference_lstm_40_layer_call_and_return_conditional_losses_377627JKLO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_40_layer_call_and_return_conditional_losses_377778qJKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_40_layer_call_and_return_conditional_losses_377929qJKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ©
(__inference_lstm_40_layer_call_fn_377292}JKLO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
(__inference_lstm_40_layer_call_fn_377303}JKLO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(__inference_lstm_40_layer_call_fn_377314dJKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_40_layer_call_fn_377325dJKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_41_layer_call_and_return_conditional_losses_378151}MNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
C__inference_lstm_41_layer_call_and_return_conditional_losses_378302}MNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_41_layer_call_and_return_conditional_losses_378453mMNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_41_layer_call_and_return_conditional_losses_378604mMNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_lstm_41_layer_call_fn_377967pMNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_41_layer_call_fn_377978pMNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_41_layer_call_fn_377989`MNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_41_layer_call_fn_378000`MNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_378754ýJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_378786ýJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 
-__inference_lstm_cell_40_layer_call_fn_378705íJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ
-__inference_lstm_cell_40_layer_call_fn_378722íJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_378852ýMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_378884ýMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 
-__inference_lstm_cell_41_layer_call_fn_378803íMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ
-__inference_lstm_cell_41_layer_call_fn_378820íMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÔ
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_377273E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
K__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_377281`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 «
0__inference_max_pooling1d_3_layer_call_fn_377260wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0__inference_max_pooling1d_3_layer_call_fn_377265S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@¦
F__inference_reshape_20_layer_call_and_return_conditional_losses_378688\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_reshape_20_layer_call_fn_378675O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÎ
I__inference_sequential_14_layer_call_and_return_conditional_losses_376342JKLMNO56;<C¢@
9¢6
,)
conv1d_8_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Î
I__inference_sequential_14_layer_call_and_return_conditional_losses_376384JKLMNO56;<C¢@
9¢6
,)
conv1d_8_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Å
I__inference_sequential_14_layer_call_and_return_conditional_losses_376841xJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Å
I__inference_sequential_14_layer_call_and_return_conditional_losses_377205xJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¥
.__inference_sequential_14_layer_call_fn_375716sJKLMNO56;<C¢@
9¢6
,)
conv1d_8_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¥
.__inference_sequential_14_layer_call_fn_376300sJKLMNO56;<C¢@
9¢6
,)
conv1d_8_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_14_layer_call_fn_376458kJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_14_layer_call_fn_376491kJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÅ
$__inference_signature_wrapper_376425JKLMNO56;<M¢J
¢ 
Cª@
>
conv1d_8_input,)
conv1d_8_inputÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_20(%

reshape_20ÿÿÿÿÿÿÿÿÿ