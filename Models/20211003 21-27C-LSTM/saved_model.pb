??+
??
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
?
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
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??)
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
: *
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
: *
dtype0
~
conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv1d_5/kernel
w
#conv1d_5/kernel/Read/ReadVariableOpReadVariableOpconv1d_5/kernel*"
_output_shapes
: @*
dtype0
r
conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_5/bias
k
!conv1d_5/bias/Read/ReadVariableOpReadVariableOpconv1d_5/bias*
_output_shapes
:@*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:*
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
lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_16/lstm_cell_16/kernel
?
/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/kernel*
_output_shapes

:@*
dtype0
?
%lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%lstm_16/lstm_cell_16/recurrent_kernel
?
9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_16/lstm_cell_16/recurrent_kernel*
_output_shapes

:*
dtype0
?
lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_16/lstm_cell_16/bias
?
-lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/bias*
_output_shapes
:*
dtype0
?
lstm_17/lstm_cell_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namelstm_17/lstm_cell_17/kernel
?
/lstm_17/lstm_cell_17/kernel/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/kernel*
_output_shapes

:*
dtype0
?
%lstm_17/lstm_cell_17/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%lstm_17/lstm_cell_17/recurrent_kernel
?
9lstm_17/lstm_cell_17/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_17/lstm_cell_17/recurrent_kernel*
_output_shapes

:*
dtype0
?
lstm_17/lstm_cell_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_17/lstm_cell_17/bias
?
-lstm_17/lstm_cell_17/bias/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/bias*
_output_shapes
:*
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
Adam/conv1d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_4/kernel/m
?
*Adam/conv1d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/m*"
_output_shapes
: *
dtype0
?
Adam/conv1d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_4/bias/m
y
(Adam/conv1d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv1d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_5/kernel/m
?
*Adam/conv1d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/kernel/m*"
_output_shapes
: @*
dtype0
?
Adam/conv1d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_5/bias/m
y
(Adam/conv1d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_16/kernel/m
?
*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/m
y
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_17/kernel/m
?
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

:*
dtype0
?
"Adam/lstm_16/lstm_cell_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/m
?
6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/m*
_output_shapes

:@*
dtype0
?
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
?
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m*
_output_shapes

:*
dtype0
?
 Adam/lstm_16/lstm_cell_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/m
?
4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_17/lstm_cell_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/m
?
6Adam/lstm_17/lstm_cell_17/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/m*
_output_shapes

:*
dtype0
?
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
?
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m*
_output_shapes

:*
dtype0
?
 Adam/lstm_17/lstm_cell_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/m
?
4Adam/lstm_17/lstm_cell_17/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv1d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_4/kernel/v
?
*Adam/conv1d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/v*"
_output_shapes
: *
dtype0
?
Adam/conv1d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_4/bias/v
y
(Adam/conv1d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv1d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_5/kernel/v
?
*Adam/conv1d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/kernel/v*"
_output_shapes
: @*
dtype0
?
Adam/conv1d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_5/bias/v
y
(Adam/conv1d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_16/kernel/v
?
*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/v
y
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_17/kernel/v
?
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

:*
dtype0
?
"Adam/lstm_16/lstm_cell_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/v
?
6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/v*
_output_shapes

:@*
dtype0
?
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
?
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v*
_output_shapes

:*
dtype0
?
 Adam/lstm_16/lstm_cell_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/v
?
4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_17/lstm_cell_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/v
?
6Adam/lstm_17/lstm_cell_17/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/v*
_output_shapes

:*
dtype0
?
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
?
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v*
_output_shapes

:*
dtype0
?
 Adam/lstm_17/lstm_cell_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/v
?
4Adam/lstm_17/lstm_cell_17/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?R
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Q
value?QB?Q B?Q
?
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
trainable_variables
	variables
regularization_losses
	keras_api

signatures
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
l
!cell
"
state_spec
#trainable_variables
$	variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
l
+cell
,
state_spec
-trainable_variables
.	variables
/regularization_losses
0	keras_api
R
1	variables
2trainable_variables
3regularization_losses
4	keras_api
h

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
^

;kernel
<	variables
=trainable_variables
>regularization_losses
?	keras_api
R
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_ratem?m?m?m?5m?6m?;m?Im?Jm?Km?Lm?Mm?Nm?v?v?v?v?5v?6v?;v?Iv?Jv?Kv?Lv?Mv?Nv?
^
0
1
2
3
I4
J5
K6
L7
M8
N9
510
611
;12
^
0
1
2
3
I4
J5
K6
L7
M8
N9
510
611
;12
 
?
Olayer_regularization_losses
Pmetrics
Qnon_trainable_variables
Rlayer_metrics
trainable_variables
	variables
regularization_losses

Slayers
 
[Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Tlayer_regularization_losses
	variables
Unon_trainable_variables
Vlayer_metrics
trainable_variables
Wmetrics
regularization_losses

Xlayers
[Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Ylayer_regularization_losses
	variables
Znon_trainable_variables
[layer_metrics
trainable_variables
\metrics
regularization_losses

]layers
 
 
 
?
^layer_regularization_losses
	variables
_non_trainable_variables
`layer_metrics
trainable_variables
ametrics
regularization_losses

blayers
?
c
state_size

Ikernel
Jrecurrent_kernel
Kbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
 

I0
J1
K2

I0
J1
K2
 
?
hlayer_regularization_losses
imetrics

jstates
knon_trainable_variables
llayer_metrics
#trainable_variables
$	variables
%regularization_losses

mlayers
 
 
 
?
nlayer_regularization_losses
'	variables
onon_trainable_variables
player_metrics
(trainable_variables
qmetrics
)regularization_losses

rlayers
?
s
state_size

Lkernel
Mrecurrent_kernel
Nbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
 

L0
M1
N2

L0
M1
N2
 
?
xlayer_regularization_losses
ymetrics

zstates
{non_trainable_variables
|layer_metrics
-trainable_variables
.	variables
/regularization_losses

}layers
 
 
 
?
~layer_regularization_losses
1	variables
non_trainable_variables
?layer_metrics
2trainable_variables
?metrics
3regularization_losses
?layers
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61

50
61
 
?
 ?layer_regularization_losses
7	variables
?non_trainable_variables
?layer_metrics
8trainable_variables
?metrics
9regularization_losses
?layers
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE

;0

;0
 
?
 ?layer_regularization_losses
<	variables
?non_trainable_variables
?layer_metrics
=trainable_variables
?metrics
>regularization_losses
?layers
 
 
 
?
 ?layer_regularization_losses
@	variables
?non_trainable_variables
?layer_metrics
Atrainable_variables
?metrics
Bregularization_losses
?layers
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
VARIABLE_VALUElstm_16/lstm_cell_16/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_16/lstm_cell_16/recurrent_kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_16/lstm_cell_16/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_17/lstm_cell_17/kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_17/lstm_cell_17/recurrent_kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_17/lstm_cell_17/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
 

?0
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
I0
J1
K2

I0
J1
K2
 
?
 ?layer_regularization_losses
d	variables
?non_trainable_variables
?layer_metrics
etrainable_variables
?metrics
fregularization_losses
?layers
 
 
 
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

L0
M1
N2

L0
M1
N2
 
?
 ?layer_regularization_losses
t	variables
?non_trainable_variables
?layer_metrics
utrainable_variables
?metrics
vregularization_losses
?layers
 
 
 
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
8

?total

?count
?	variables
?	keras_api
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
?0
?1

?	variables
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_16/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_16/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_17/lstm_cell_17/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_16/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_16/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_17/lstm_cell_17/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv1d_4_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_4_inputconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biaslstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biaslstm_17/lstm_cell_17/kernel%lstm_17/lstm_cell_17/recurrent_kernellstm_17/lstm_cell_17/biasdense_16/kerneldense_16/biasdense_17/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_160353
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_4/kernel/Read/ReadVariableOp!conv1d_4/bias/Read/ReadVariableOp#conv1d_5/kernel/Read/ReadVariableOp!conv1d_5/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOp9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp-lstm_16/lstm_cell_16/bias/Read/ReadVariableOp/lstm_17/lstm_cell_17/kernel/Read/ReadVariableOp9lstm_17/lstm_cell_17/recurrent_kernel/Read/ReadVariableOp-lstm_17/lstm_cell_17/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_4/kernel/m/Read/ReadVariableOp(Adam/conv1d_4/bias/m/Read/ReadVariableOp*Adam/conv1d_5/kernel/m/Read/ReadVariableOp(Adam/conv1d_5/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOp6Adam/lstm_17/lstm_cell_17/kernel/m/Read/ReadVariableOp@Adam/lstm_17/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_17/lstm_cell_17/bias/m/Read/ReadVariableOp*Adam/conv1d_4/kernel/v/Read/ReadVariableOp(Adam/conv1d_4/bias/v/Read/ReadVariableOp*Adam/conv1d_5/kernel/v/Read/ReadVariableOp(Adam/conv1d_5/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOp6Adam/lstm_17/lstm_cell_17/kernel/v/Read/ReadVariableOp@Adam/lstm_17/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_17/lstm_cell_17/bias/v/Read/ReadVariableOpConst*;
Tin4
220	*
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
__inference__traced_save_162950
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_16/kerneldense_16/biasdense_17/kernel	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biaslstm_17/lstm_cell_17/kernel%lstm_17/lstm_cell_17/recurrent_kernellstm_17/lstm_cell_17/biastotalcountAdam/conv1d_4/kernel/mAdam/conv1d_4/bias/mAdam/conv1d_5/kernel/mAdam/conv1d_5/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/m"Adam/lstm_16/lstm_cell_16/kernel/m,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m Adam/lstm_16/lstm_cell_16/bias/m"Adam/lstm_17/lstm_cell_17/kernel/m,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m Adam/lstm_17/lstm_cell_17/bias/mAdam/conv1d_4/kernel/vAdam/conv1d_4/bias/vAdam/conv1d_5/kernel/vAdam/conv1d_5/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/v"Adam/lstm_16/lstm_cell_16/kernel/v,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v Adam/lstm_16/lstm_cell_16/bias/v"Adam/lstm_17/lstm_cell_17/kernel/v,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v Adam/lstm_17/lstm_cell_17/bias/v*:
Tin3
12/*
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
"__inference__traced_restore_163098??'
?
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_162625

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????@:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_159900

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?2
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_160314
conv1d_4_input%
conv1d_4_160277: 
conv1d_4_160279: %
conv1d_5_160282: @
conv1d_5_160284:@ 
lstm_16_160288:@ 
lstm_16_160290:
lstm_16_160292: 
lstm_17_160296: 
lstm_17_160298:
lstm_17_160300:!
dense_16_160304:
dense_16_160306:!
dense_17_160309:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?"dropout_10/StatefulPartitionedCall?"dropout_11/StatefulPartitionedCall?lstm_16/StatefulPartitionedCall?lstm_17/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_160277conv1d_4_160279*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_1592222"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_160282conv1d_5_160284*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_1592442"
 conv1d_5/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_1592552,
*global_average_pooling1d_2/PartitionedCall?
lstm_16/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0lstm_16_160288lstm_16_160290lstm_16_160292*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1600672!
lstm_16/StatefulPartitionedCall?
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1599002$
"dropout_10/StatefulPartitionedCall?
lstm_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0lstm_17_160296lstm_17_160298lstm_17_160300*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1598712!
lstm_17/StatefulPartitionedCall?
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1597042$
"dropout_11/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_16_160304dense_16_160306*
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
D__inference_dense_16_layer_call_and_return_conditional_losses_1595982"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_160309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1596112"
 dense_17/StatefulPartitionedCall?
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_1596282
reshape_8/PartitionedCall?
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_nameconv1d_4_input
?
d
+__inference_dropout_10_layer_call_fn_161866

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1599002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?[
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_159407

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@?
-lstm_cell_16_matmul_1_readvariableop_resource::
,lstm_cell_16_biasadd_readvariableop_resource:
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul?
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul_1?
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add?
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_16/split?
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_1?
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159323*
condR
while_cond_159322*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_conv1d_5_layer_call_fn_161169

inputs
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_1592442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
a
E__inference_reshape_8_layer_call_and_return_conditional_losses_162588

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
d
+__inference_dropout_11_layer_call_fn_162541

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1597042
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
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_11_layer_call_fn_162536

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1595852
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

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
while_body_158658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_17_158682_0:-
while_lstm_cell_17_158684_0:)
while_lstm_cell_17_158686_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_17_158682:+
while_lstm_cell_17_158684:'
while_lstm_cell_17_158686:??*while/lstm_cell_17/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_158682_0while_lstm_cell_17_158684_0while_lstm_cell_17_158686_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1586442,
*while/lstm_cell_17/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
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
while_lstm_cell_17_158682while_lstm_cell_17_158682_0"8
while_lstm_cell_17_158684while_lstm_cell_17_158684_0"8
while_lstm_cell_17_158686while_lstm_cell_17_158686_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_17_layer_call_fn_162514

inputs
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1598712
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
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_4_layer_call_and_return_conditional_losses_161135

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?

lstm_16_while_body_160446,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:@O
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:J
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorK
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:@M
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:H
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:??1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp?2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp?
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2A
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype023
1lstm_16/while/TensorArrayV2Read/TensorListGetItem?
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp?
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!lstm_16/while/lstm_cell_16/MatMul?
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp?
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#lstm_16/while/lstm_cell_16/MatMul_1?
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2 
lstm_16/while/lstm_cell_16/add?
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"lstm_16/while/lstm_cell_16/BiasAdd?
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_16/while/lstm_cell_16/split/split_dim?
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2"
 lstm_16/while/lstm_cell_16/split?
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_16/while/lstm_cell_16/Sigmoid?
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2&
$lstm_16/while/lstm_cell_16/Sigmoid_1?
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:?????????2 
lstm_16/while/lstm_cell_16/mul?
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2!
lstm_16/while/lstm_cell_16/Relu?
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_16/while/lstm_cell_16/mul_1?
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2"
 lstm_16/while/lstm_cell_16/add_1?
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2&
$lstm_16/while/lstm_cell_16/Sigmoid_2?
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2#
!lstm_16/while/lstm_cell_16/Relu_1?
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_16/while/lstm_cell_16/mul_2?
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder$lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_16/while/TensorArrayV2Write/TensorListSetIteml
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add/y?
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/addp
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add_1/y?
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/add_1?
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity?
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_1?
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_2?
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_3?
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_16/while/Identity_4?
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_16/while/Identity_5?
lstm_16/while/NoOpNoOp2^lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_16/while/NoOp"9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"z
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"?
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_conv1d_5_layer_call_and_return_conditional_losses_161160

inputsA
+conv1d_expanddims_1_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_158644

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
??
?
while_body_161711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@G
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_16_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@E
3while_lstm_cell_16_matmul_1_readvariableop_resource:@
2while_lstm_cell_16_biasadd_readvariableop_resource:??)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOp?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul?
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add?
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOp?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/BiasAdd?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid?
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul?
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?F
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_158097

inputs%
lstm_cell_16_158015:@%
lstm_cell_16_158017:!
lstm_cell_16_158019:
identity??$lstm_cell_16/StatefulPartitionedCall?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_158015lstm_cell_16_158017lstm_cell_16_158019*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_1580142&
$lstm_cell_16/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_158015lstm_cell_16_158017lstm_cell_16_158019*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158028*
condR
while_cond_158027*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
 :??????????????????2

Identity}
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?
?
D__inference_dense_16_layer_call_and_return_conditional_losses_162552

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_162723

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
D__inference_dense_17_layer_call_and_return_conditional_losses_162568

inputs0
matmul_readvariableop_resource:
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityf
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?F
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_158307

inputs%
lstm_cell_16_158225:@%
lstm_cell_16_158227:!
lstm_cell_16_158229:
identity??$lstm_cell_16/StatefulPartitionedCall?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_158225lstm_cell_16_158227lstm_cell_16_158229*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_1581602&
$lstm_cell_16/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_158225lstm_cell_16_158227lstm_cell_16_158229*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158238*
condR
while_cond_158237*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
 :??????????????????2

Identity}
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
??
?
while_body_161933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:E
3while_lstm_cell_17_matmul_1_readvariableop_resource:@
2while_lstm_cell_17_biasadd_readvariableop_resource:??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu_1?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_conv1d_5_layer_call_and_return_conditional_losses_159244

inputsA
+conv1d_expanddims_1_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_lstm_17_layer_call_fn_162481
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1587272
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
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?/
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_160274
conv1d_4_input%
conv1d_4_160237: 
conv1d_4_160239: %
conv1d_5_160242: @
conv1d_5_160244:@ 
lstm_16_160248:@ 
lstm_16_160250:
lstm_16_160252: 
lstm_17_160256: 
lstm_17_160258:
lstm_17_160260:!
dense_16_160264:
dense_16_160266:!
dense_17_160269:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?lstm_16/StatefulPartitionedCall?lstm_17/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_160237conv1d_4_160239*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_1592222"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_160242conv1d_5_160244*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_1592442"
 conv1d_5/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_1592552,
*global_average_pooling1d_2/PartitionedCall?
lstm_16/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0lstm_16_160248lstm_16_160250lstm_16_160252*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1594072!
lstm_16/StatefulPartitionedCall?
dropout_10/PartitionedCallPartitionedCall(lstm_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1594202
dropout_10/PartitionedCall?
lstm_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0lstm_17_160256lstm_17_160258lstm_17_160260*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1595722!
lstm_17/StatefulPartitionedCall?
dropout_11/PartitionedCallPartitionedCall(lstm_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1595852
dropout_11/PartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_16_160264dense_16_160266*
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
D__inference_dense_16_layer_call_and_return_conditional_losses_1595982"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_160269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1596112"
 dense_17/StatefulPartitionedCall?
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_1596282
reshape_8/PartitionedCall?
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_nameconv1d_4_input
?\
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162168
inputs_0=
+lstm_cell_17_matmul_readvariableop_resource:?
-lstm_cell_17_matmul_1_readvariableop_resource::
,lstm_cell_17_biasadd_readvariableop_resource:
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileF
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_1?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu_1?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162084*
condR
while_cond_162083*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
F
*__inference_reshape_8_layer_call_fn_162593

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
E__inference_reshape_8_layer_call_and_return_conditional_losses_1596282
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
-__inference_lstm_cell_17_layer_call_fn_162789

inputs
states_0
states_1
unknown:
	unknown_0:
	unknown_1:
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
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1587902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2

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
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?
?
-__inference_sequential_5_layer_call_fn_161088

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1596312
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_163098
file_prefix6
 assignvariableop_conv1d_4_kernel: .
 assignvariableop_1_conv1d_4_bias: 8
"assignvariableop_2_conv1d_5_kernel: @.
 assignvariableop_3_conv1d_5_bias:@4
"assignvariableop_4_dense_16_kernel:.
 assignvariableop_5_dense_16_bias:4
"assignvariableop_6_dense_17_kernel:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: A
/assignvariableop_12_lstm_16_lstm_cell_16_kernel:@K
9assignvariableop_13_lstm_16_lstm_cell_16_recurrent_kernel:;
-assignvariableop_14_lstm_16_lstm_cell_16_bias:A
/assignvariableop_15_lstm_17_lstm_cell_17_kernel:K
9assignvariableop_16_lstm_17_lstm_cell_17_recurrent_kernel:;
-assignvariableop_17_lstm_17_lstm_cell_17_bias:#
assignvariableop_18_total: #
assignvariableop_19_count: @
*assignvariableop_20_adam_conv1d_4_kernel_m: 6
(assignvariableop_21_adam_conv1d_4_bias_m: @
*assignvariableop_22_adam_conv1d_5_kernel_m: @6
(assignvariableop_23_adam_conv1d_5_bias_m:@<
*assignvariableop_24_adam_dense_16_kernel_m:6
(assignvariableop_25_adam_dense_16_bias_m:<
*assignvariableop_26_adam_dense_17_kernel_m:H
6assignvariableop_27_adam_lstm_16_lstm_cell_16_kernel_m:@R
@assignvariableop_28_adam_lstm_16_lstm_cell_16_recurrent_kernel_m:B
4assignvariableop_29_adam_lstm_16_lstm_cell_16_bias_m:H
6assignvariableop_30_adam_lstm_17_lstm_cell_17_kernel_m:R
@assignvariableop_31_adam_lstm_17_lstm_cell_17_recurrent_kernel_m:B
4assignvariableop_32_adam_lstm_17_lstm_cell_17_bias_m:@
*assignvariableop_33_adam_conv1d_4_kernel_v: 6
(assignvariableop_34_adam_conv1d_4_bias_v: @
*assignvariableop_35_adam_conv1d_5_kernel_v: @6
(assignvariableop_36_adam_conv1d_5_bias_v:@<
*assignvariableop_37_adam_dense_16_kernel_v:6
(assignvariableop_38_adam_dense_16_bias_v:<
*assignvariableop_39_adam_dense_17_kernel_v:H
6assignvariableop_40_adam_lstm_16_lstm_cell_16_kernel_v:@R
@assignvariableop_41_adam_lstm_16_lstm_cell_16_recurrent_kernel_v:B
4assignvariableop_42_adam_lstm_16_lstm_cell_16_bias_v:H
6assignvariableop_43_adam_lstm_17_lstm_cell_17_kernel_v:R
@assignvariableop_44_adam_lstm_17_lstm_cell_17_recurrent_kernel_v:B
4assignvariableop_45_adam_lstm_17_lstm_cell_17_bias_v:
identity_47??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*?
value?B?/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv1d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_16_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_16_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_17_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_16_lstm_cell_16_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp9assignvariableop_13_lstm_16_lstm_cell_16_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp-assignvariableop_14_lstm_16_lstm_cell_16_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_17_lstm_cell_17_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp9assignvariableop_16_lstm_17_lstm_cell_17_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_lstm_17_lstm_cell_17_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv1d_4_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv1d_4_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv1d_5_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv1d_5_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_16_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_16_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_17_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_16_lstm_cell_16_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_lstm_16_lstm_cell_16_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_lstm_16_lstm_cell_16_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_lstm_17_lstm_cell_17_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_lstm_17_lstm_cell_17_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_lstm_17_lstm_cell_17_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv1d_4_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv1d_4_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv1d_5_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_5_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_16_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_16_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_17_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_lstm_16_lstm_cell_16_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp@assignvariableop_41_adam_lstm_16_lstm_cell_16_recurrent_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp4assignvariableop_42_adam_lstm_16_lstm_cell_16_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_17_lstm_cell_17_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_lstm_17_lstm_cell_17_recurrent_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_17_lstm_cell_17_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_459
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_46f
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_47?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_45AssignVariableOp_452(
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
?
-__inference_sequential_5_layer_call_fn_159660
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1596312
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_nameconv1d_4_input
?2
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_160174

inputs%
conv1d_4_160137: 
conv1d_4_160139: %
conv1d_5_160142: @
conv1d_5_160144:@ 
lstm_16_160148:@ 
lstm_16_160150:
lstm_16_160152: 
lstm_17_160156: 
lstm_17_160158:
lstm_17_160160:!
dense_16_160164:
dense_16_160166:!
dense_17_160169:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?"dropout_10/StatefulPartitionedCall?"dropout_11/StatefulPartitionedCall?lstm_16/StatefulPartitionedCall?lstm_17/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_160137conv1d_4_160139*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_1592222"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_160142conv1d_5_160144*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_1592442"
 conv1d_5/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_1592552,
*global_average_pooling1d_2/PartitionedCall?
lstm_16/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0lstm_16_160148lstm_16_160150lstm_16_160152*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1600672!
lstm_16/StatefulPartitionedCall?
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1599002$
"dropout_10/StatefulPartitionedCall?
lstm_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0lstm_17_160156lstm_17_160158lstm_17_160160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1598712!
lstm_17/StatefulPartitionedCall?
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1597042$
"dropout_11/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_16_160164dense_16_160166*
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
D__inference_dense_16_layer_call_and_return_conditional_losses_1595982"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_160169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1596112"
 dense_17/StatefulPartitionedCall?
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_1596282
reshape_8/PartitionedCall?
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_161408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161408___redundant_placeholder04
0while_while_cond_161408___redundant_placeholder14
0while_while_cond_161408___redundant_placeholder24
0while_while_cond_161408___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?J
?

lstm_17_while_body_160594,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:O
=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:J
<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorK
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:M
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:H
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:??1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp?2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp?
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_17/while/TensorArrayV2Read/TensorListGetItem?
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp?
!lstm_17/while/lstm_cell_17/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!lstm_17/while/lstm_cell_17/MatMul?
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp?
#lstm_17/while/lstm_cell_17/MatMul_1MatMullstm_17_while_placeholder_2:lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#lstm_17/while/lstm_cell_17/MatMul_1?
lstm_17/while/lstm_cell_17/addAddV2+lstm_17/while/lstm_cell_17/MatMul:product:0-lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2 
lstm_17/while/lstm_cell_17/add?
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?
"lstm_17/while/lstm_cell_17/BiasAddBiasAdd"lstm_17/while/lstm_cell_17/add:z:09lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"lstm_17/while/lstm_cell_17/BiasAdd?
*lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_17/while/lstm_cell_17/split/split_dim?
 lstm_17/while/lstm_cell_17/splitSplit3lstm_17/while/lstm_cell_17/split/split_dim:output:0+lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2"
 lstm_17/while/lstm_cell_17/split?
"lstm_17/while/lstm_cell_17/SigmoidSigmoid)lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_17/while/lstm_cell_17/Sigmoid?
$lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2&
$lstm_17/while/lstm_cell_17/Sigmoid_1?
lstm_17/while/lstm_cell_17/mulMul(lstm_17/while/lstm_cell_17/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:?????????2 
lstm_17/while/lstm_cell_17/mul?
lstm_17/while/lstm_cell_17/ReluRelu)lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2!
lstm_17/while/lstm_cell_17/Relu?
 lstm_17/while/lstm_cell_17/mul_1Mul&lstm_17/while/lstm_cell_17/Sigmoid:y:0-lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_17/while/lstm_cell_17/mul_1?
 lstm_17/while/lstm_cell_17/add_1AddV2"lstm_17/while/lstm_cell_17/mul:z:0$lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2"
 lstm_17/while/lstm_cell_17/add_1?
$lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2&
$lstm_17/while/lstm_cell_17/Sigmoid_2?
!lstm_17/while/lstm_cell_17/Relu_1Relu$lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2#
!lstm_17/while/lstm_cell_17/Relu_1?
 lstm_17/while/lstm_cell_17/mul_2Mul(lstm_17/while/lstm_cell_17/Sigmoid_2:y:0/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_17/while/lstm_cell_17/mul_2?
2lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_17_while_placeholder_1lstm_17_while_placeholder$lstm_17/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_17/while/TensorArrayV2Write/TensorListSetIteml
lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/while/add/y?
lstm_17/while/addAddV2lstm_17_while_placeholderlstm_17/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_17/while/addp
lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/while/add_1/y?
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_17/while/add_1?
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity?
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_1?
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_2?
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_3?
lstm_17/while/Identity_4Identity$lstm_17/while/lstm_cell_17/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_17/while/Identity_4?
lstm_17/while/Identity_5Identity$lstm_17/while/lstm_cell_17/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_17/while/Identity_5?
lstm_17/while/NoOpNoOp2^lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1^lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp3^lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_17/while/NoOp"9
lstm_17_while_identitylstm_17/while/Identity:output:0"=
lstm_17_while_identity_1!lstm_17/while/Identity_1:output:0"=
lstm_17_while_identity_2!lstm_17/while/Identity_2:output:0"=
lstm_17_while_identity_3!lstm_17/while/Identity_3:output:0"=
lstm_17_while_identity_4!lstm_17/while/Identity_4:output:0"=
lstm_17_while_identity_5!lstm_17/while/Identity_5:output:0"P
%lstm_17_while_lstm_17_strided_slice_1'lstm_17_while_lstm_17_strided_slice_1_0"z
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"?
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp2h
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_161710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161710___redundant_placeholder04
0while_while_cond_161710___redundant_placeholder14
0while_while_cond_161710___redundant_placeholder24
0while_while_cond_161710___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
-__inference_lstm_cell_17_layer_call_fn_162772

inputs
states_0
states_1
unknown:
	unknown_0:
	unknown_1:
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
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1586442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2

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
?:?????????:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?F
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_158937

inputs%
lstm_cell_17_158855:%
lstm_cell_17_158857:!
lstm_cell_17_158859:
identity??$lstm_cell_17/StatefulPartitionedCall?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_158855lstm_cell_17_158857lstm_cell_17_158859*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1587902&
$lstm_cell_17/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_158855lstm_cell_17_158857lstm_cell_17_158859*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158868*
condR
while_cond_158867*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
:?????????2

Identity}
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?%
?
while_body_158868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_17_158892_0:-
while_lstm_cell_17_158894_0:)
while_lstm_cell_17_158896_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_17_158892:+
while_lstm_cell_17_158894:'
while_lstm_cell_17_158896:??*while/lstm_cell_17/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_158892_0while_lstm_cell_17_158894_0while_lstm_cell_17_158896_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1587902,
*while/lstm_cell_17/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
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
while_lstm_cell_17_158892while_lstm_cell_17_158892_0"8
while_lstm_cell_17_158894while_lstm_cell_17_158894_0"8
while_lstm_cell_17_158896while_lstm_cell_17_158896_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_dense_16_layer_call_fn_162561

inputs
unknown:
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
D__inference_dense_16_layer_call_and_return_conditional_losses_1595982
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
while_body_162386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:E
3while_lstm_cell_17_matmul_1_readvariableop_resource:@
2while_lstm_cell_17_biasadd_readvariableop_resource:??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu_1?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_5_layer_call_fn_160234
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1601742
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_nameconv1d_4_input
?[
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161644

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@?
-lstm_cell_16_matmul_1_readvariableop_resource::
,lstm_cell_16_biasadd_readvariableop_resource:
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul?
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul_1?
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add?
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_16/split?
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_1?
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161560*
condR
while_cond_161559*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_lstm_16_layer_call_fn_161817
inputs_0
unknown:@
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1583072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?

?
lstm_16_while_cond_160790,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1D
@lstm_16_while_lstm_16_while_cond_160790___redundant_placeholder0D
@lstm_16_while_lstm_16_while_cond_160790___redundant_placeholder1D
@lstm_16_while_lstm_16_while_cond_160790___redundant_placeholder2D
@lstm_16_while_lstm_16_while_cond_160790___redundant_placeholder3
lstm_16_while_identity
?
lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: 2
lstm_16/while/Lessu
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_16/while/Identity"9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
D__inference_dense_17_layer_call_and_return_conditional_losses_159611

inputs0
matmul_readvariableop_resource:
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityf
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
while_body_159488
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:E
3while_lstm_cell_17_matmul_1_readvariableop_resource:@
2while_lstm_cell_17_biasadd_readvariableop_resource:??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu_1?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_158657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158657___redundant_placeholder04
0while_while_cond_158657___redundant_placeholder14
0while_while_cond_158657___redundant_placeholder24
0while_while_cond_158657___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?%
?
while_body_158238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_16_158262_0:@-
while_lstm_cell_16_158264_0:)
while_lstm_cell_16_158266_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_16_158262:@+
while_lstm_cell_16_158264:'
while_lstm_cell_16_158266:??*while/lstm_cell_16/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_158262_0while_lstm_cell_16_158264_0while_lstm_cell_16_158266_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_1581602,
*while/lstm_cell_16/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
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
while_lstm_cell_16_158262while_lstm_cell_16_158262_0"8
while_lstm_cell_16_158264while_lstm_cell_16_158264_0"8
while_lstm_cell_16_158266while_lstm_cell_16_158266_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_161257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161257___redundant_placeholder04
0while_while_cond_161257___redundant_placeholder14
0while_while_cond_161257___redundant_placeholder24
0while_while_cond_161257___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_162519

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_161856

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?c
?
__inference__traced_save_162950
file_prefix.
*savev2_conv1d_4_kernel_read_readvariableop,
(savev2_conv1d_4_bias_read_readvariableop.
*savev2_conv1d_5_kernel_read_readvariableop,
(savev2_conv1d_5_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableopD
@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop8
4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop:
6savev2_lstm_17_lstm_cell_17_kernel_read_readvariableopD
@savev2_lstm_17_lstm_cell_17_recurrent_kernel_read_readvariableop8
4savev2_lstm_17_lstm_cell_17_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_4_kernel_m_read_readvariableop3
/savev2_adam_conv1d_4_bias_m_read_readvariableop5
1savev2_adam_conv1d_5_kernel_m_read_readvariableop3
/savev2_adam_conv1d_5_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableopA
=savev2_adam_lstm_17_lstm_cell_17_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_17_lstm_cell_17_bias_m_read_readvariableop5
1savev2_adam_conv1d_4_kernel_v_read_readvariableop3
/savev2_adam_conv1d_4_bias_v_read_readvariableop5
1savev2_adam_conv1d_5_kernel_v_read_readvariableop3
/savev2_adam_conv1d_5_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableopA
=savev2_adam_lstm_17_lstm_cell_17_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_17_lstm_cell_17_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*?
value?B?/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop*savev2_conv1d_5_kernel_read_readvariableop(savev2_conv1d_5_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableop@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop6savev2_lstm_17_lstm_cell_17_kernel_read_readvariableop@savev2_lstm_17_lstm_cell_17_recurrent_kernel_read_readvariableop4savev2_lstm_17_lstm_cell_17_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_4_kernel_m_read_readvariableop/savev2_adam_conv1d_4_bias_m_read_readvariableop1savev2_adam_conv1d_5_kernel_m_read_readvariableop/savev2_adam_conv1d_5_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_m_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_m_read_readvariableop1savev2_adam_conv1d_4_kernel_v_read_readvariableop/savev2_adam_conv1d_4_bias_v_read_readvariableop1savev2_adam_conv1d_5_kernel_v_read_readvariableop/savev2_adam_conv1d_5_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_v_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:::: : : : : :@:::::: : : : : @:@::::@:::::: : : @:@::::@:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::
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
: :

_output_shapes
: :$ 

_output_shapes

:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$  

_output_shapes

:: !

_output_shapes
::("$
"
_output_shapes
: : #

_output_shapes
: :($$
"
_output_shapes
: @: %

_output_shapes
:@:$& 

_output_shapes

:: '

_output_shapes
::$( 

_output_shapes

::$) 

_output_shapes

:@:$* 

_output_shapes

:: +

_output_shapes
::$, 

_output_shapes

::$- 

_output_shapes

:: .

_output_shapes
::/

_output_shapes
: 
?
?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_158790

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?\
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162017
inputs_0=
+lstm_cell_17_matmul_readvariableop_resource:?
-lstm_cell_17_matmul_1_readvariableop_resource::
,lstm_cell_17_biasadd_readvariableop_resource:
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileF
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_1?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu_1?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161933*
condR
while_cond_161932*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?\
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161342
inputs_0=
+lstm_cell_16_matmul_readvariableop_resource:@?
-lstm_cell_16_matmul_1_readvariableop_resource::
,lstm_cell_16_biasadd_readvariableop_resource:
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?whileF
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul?
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul_1?
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add?
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_16/split?
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_1?
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161258*
condR
while_cond_161257*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
 :??????????????????2

Identity?
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?F
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_158727

inputs%
lstm_cell_17_158645:%
lstm_cell_17_158647:!
lstm_cell_17_158649:
identity??$lstm_cell_17/StatefulPartitionedCall?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_158645lstm_cell_17_158647lstm_cell_17_158649*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_1586442&
$lstm_cell_17/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_158645lstm_cell_17_158647lstm_cell_17_158649*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158658*
condR
while_cond_158657*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
:?????????2

Identity}
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
while_body_161258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@G
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_16_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@E
3while_lstm_cell_16_matmul_1_readvariableop_resource:@
2while_lstm_cell_16_biasadd_readvariableop_resource:??)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOp?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul?
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add?
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOp?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/BiasAdd?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid?
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul?
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
&sequential_5_lstm_17_while_cond_157810F
Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counterL
Hsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations*
&sequential_5_lstm_17_while_placeholder,
(sequential_5_lstm_17_while_placeholder_1,
(sequential_5_lstm_17_while_placeholder_2,
(sequential_5_lstm_17_while_placeholder_3H
Dsequential_5_lstm_17_while_less_sequential_5_lstm_17_strided_slice_1^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_157810___redundant_placeholder0^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_157810___redundant_placeholder1^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_157810___redundant_placeholder2^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_157810___redundant_placeholder3'
#sequential_5_lstm_17_while_identity
?
sequential_5/lstm_17/while/LessLess&sequential_5_lstm_17_while_placeholderDsequential_5_lstm_17_while_less_sequential_5_lstm_17_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_17/while/Less?
#sequential_5/lstm_17/while/IdentityIdentity#sequential_5/lstm_17/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_17/while/Identity"S
#sequential_5_lstm_17_while_identity,sequential_5/lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_159871

inputs=
+lstm_cell_17_matmul_readvariableop_resource:?
-lstm_cell_17_matmul_1_readvariableop_resource::
,lstm_cell_17_biasadd_readvariableop_resource:
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_1?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu_1?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159787*
condR
while_cond_159786*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
while_body_162084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:E
3while_lstm_cell_17_matmul_1_readvariableop_resource:@
2while_lstm_cell_17_biasadd_readvariableop_resource:??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu_1?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_conv1d_4_layer_call_fn_161144

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_1592222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

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
?
?
(__inference_lstm_17_layer_call_fn_162503

inputs
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1595722
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
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_158867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158867___redundant_placeholder04
0while_while_cond_158867___redundant_placeholder14
0while_while_cond_158867___redundant_placeholder24
0while_while_cond_158867___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_159585

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_158014

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????@:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
?/
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_159631

inputs%
conv1d_4_159223: 
conv1d_4_159225: %
conv1d_5_159245: @
conv1d_5_159247:@ 
lstm_16_159408:@ 
lstm_16_159410:
lstm_16_159412: 
lstm_17_159573: 
lstm_17_159575:
lstm_17_159577:!
dense_16_159599:
dense_16_159601:!
dense_17_159612:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?lstm_16/StatefulPartitionedCall?lstm_17/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_159223conv1d_4_159225*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_1592222"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_159245conv1d_5_159247*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_1592442"
 conv1d_5/StatefulPartitionedCall?
*global_average_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_1592552,
*global_average_pooling1d_2/PartitionedCall?
lstm_16/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0lstm_16_159408lstm_16_159410lstm_16_159412*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1594072!
lstm_16/StatefulPartitionedCall?
dropout_10/PartitionedCallPartitionedCall(lstm_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1594202
dropout_10/PartitionedCall?
lstm_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0lstm_17_159573lstm_17_159575lstm_17_159577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1595722!
lstm_17/StatefulPartitionedCall?
dropout_11/PartitionedCallPartitionedCall(lstm_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_1595852
dropout_11/PartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_16_159599dense_16_159601*
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
D__inference_dense_16_layer_call_and_return_conditional_losses_1595982"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_159612*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1596112"
 dense_17/StatefulPartitionedCall?
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_1596282
reshape_8/PartitionedCall?
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?\
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161493
inputs_0=
+lstm_cell_16_matmul_readvariableop_resource:@?
-lstm_cell_16_matmul_1_readvariableop_resource::
,lstm_cell_16_biasadd_readvariableop_resource:
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?whileF
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
 :??????????????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul?
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul_1?
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add?
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_16/split?
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_1?
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161409*
condR
while_cond_161408*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
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
:?????????*
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
 :??????????????????2
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
 :??????????????????2

Identity?
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
-__inference_lstm_cell_16_layer_call_fn_162691

inputs
states_0
states_1
unknown:@
	unknown_0:
	unknown_1:
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
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_1581602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2

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
?:?????????@:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?]
?
&sequential_5_lstm_17_while_body_157811F
Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counterL
Hsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations*
&sequential_5_lstm_17_while_placeholder,
(sequential_5_lstm_17_while_placeholder_1,
(sequential_5_lstm_17_while_placeholder_2,
(sequential_5_lstm_17_while_placeholder_3E
Asequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1_0?
}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:\
Jsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:W
Isequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:'
#sequential_5_lstm_17_while_identity)
%sequential_5_lstm_17_while_identity_1)
%sequential_5_lstm_17_while_identity_2)
%sequential_5_lstm_17_while_identity_3)
%sequential_5_lstm_17_while_identity_4)
%sequential_5_lstm_17_while_identity_5C
?sequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1
{sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensorX
Fsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:Z
Hsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:U
Gsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:??>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp??sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp?
Lsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>sequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_17_while_placeholderUsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02@
>sequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem?
=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02?
=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp?
.sequential_5/lstm_17/while/lstm_cell_17/MatMulMatMulEsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.sequential_5/lstm_17/while/lstm_cell_17/MatMul?
?sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02A
?sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp?
0sequential_5/lstm_17/while/lstm_cell_17/MatMul_1MatMul(sequential_5_lstm_17_while_placeholder_2Gsequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
0sequential_5/lstm_17/while/lstm_cell_17/MatMul_1?
+sequential_5/lstm_17/while/lstm_cell_17/addAddV28sequential_5/lstm_17/while/lstm_cell_17/MatMul:product:0:sequential_5/lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_17/while/lstm_cell_17/add?
>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02@
>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?
/sequential_5/lstm_17/while/lstm_cell_17/BiasAddBiasAdd/sequential_5/lstm_17/while/lstm_cell_17/add:z:0Fsequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????21
/sequential_5/lstm_17/while/lstm_cell_17/BiasAdd?
7sequential_5/lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_17/while/lstm_cell_17/split/split_dim?
-sequential_5/lstm_17/while/lstm_cell_17/splitSplit@sequential_5/lstm_17/while/lstm_cell_17/split/split_dim:output:08sequential_5/lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2/
-sequential_5/lstm_17/while/lstm_cell_17/split?
/sequential_5/lstm_17/while/lstm_cell_17/SigmoidSigmoid6sequential_5/lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????21
/sequential_5/lstm_17/while/lstm_cell_17/Sigmoid?
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid6sequential_5/lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????23
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_1?
+sequential_5/lstm_17/while/lstm_cell_17/mulMul5sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_1:y:0(sequential_5_lstm_17_while_placeholder_3*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_17/while/lstm_cell_17/mul?
,sequential_5/lstm_17/while/lstm_cell_17/ReluRelu6sequential_5/lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2.
,sequential_5/lstm_17/while/lstm_cell_17/Relu?
-sequential_5/lstm_17/while/lstm_cell_17/mul_1Mul3sequential_5/lstm_17/while/lstm_cell_17/Sigmoid:y:0:sequential_5/lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2/
-sequential_5/lstm_17/while/lstm_cell_17/mul_1?
-sequential_5/lstm_17/while/lstm_cell_17/add_1AddV2/sequential_5/lstm_17/while/lstm_cell_17/mul:z:01sequential_5/lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2/
-sequential_5/lstm_17/while/lstm_cell_17/add_1?
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid6sequential_5/lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????23
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_2?
.sequential_5/lstm_17/while/lstm_cell_17/Relu_1Relu1sequential_5/lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????20
.sequential_5/lstm_17/while/lstm_cell_17/Relu_1?
-sequential_5/lstm_17/while/lstm_cell_17/mul_2Mul5sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_2:y:0<sequential_5/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2/
-sequential_5/lstm_17/while/lstm_cell_17/mul_2?
?sequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_17_while_placeholder_1&sequential_5_lstm_17_while_placeholder1sequential_5/lstm_17/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItem?
 sequential_5/lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_17/while/add/y?
sequential_5/lstm_17/while/addAddV2&sequential_5_lstm_17_while_placeholder)sequential_5/lstm_17/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_17/while/add?
"sequential_5/lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_17/while/add_1/y?
 sequential_5/lstm_17/while/add_1AddV2Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counter+sequential_5/lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_17/while/add_1?
#sequential_5/lstm_17/while/IdentityIdentity$sequential_5/lstm_17/while/add_1:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_17/while/Identity?
%sequential_5/lstm_17/while/Identity_1IdentityHsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_17/while/Identity_1?
%sequential_5/lstm_17/while/Identity_2Identity"sequential_5/lstm_17/while/add:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_17/while/Identity_2?
%sequential_5/lstm_17/while/Identity_3IdentityOsequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_17/while/Identity_3?
%sequential_5/lstm_17/while/Identity_4Identity1sequential_5/lstm_17/while/lstm_cell_17/mul_2:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_17/while/Identity_4?
%sequential_5/lstm_17/while/Identity_5Identity1sequential_5/lstm_17/while/lstm_cell_17/add_1:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_17/while/Identity_5?
sequential_5/lstm_17/while/NoOpNoOp?^sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp>^sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp@^sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_5/lstm_17/while/NoOp"S
#sequential_5_lstm_17_while_identity,sequential_5/lstm_17/while/Identity:output:0"W
%sequential_5_lstm_17_while_identity_1.sequential_5/lstm_17/while/Identity_1:output:0"W
%sequential_5_lstm_17_while_identity_2.sequential_5/lstm_17/while/Identity_2:output:0"W
%sequential_5_lstm_17_while_identity_3.sequential_5/lstm_17/while/Identity_3:output:0"W
%sequential_5_lstm_17_while_identity_4.sequential_5/lstm_17/while/Identity_4:output:0"W
%sequential_5_lstm_17_while_identity_5.sequential_5/lstm_17/while/Identity_5:output:0"?
Gsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resourceIsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0"?
Hsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resourceJsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0"?
Fsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resourceHsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"?
?sequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1Asequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1_0"?
{sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2?
>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp2?
?sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp?sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
a
E__inference_reshape_8_layer_call_and_return_conditional_losses_159628

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
}
)__inference_dense_17_layer_call_fn_162575

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_1596112
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
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_17_while_cond_160593,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1D
@lstm_17_while_lstm_17_while_cond_160593___redundant_placeholder0D
@lstm_17_while_lstm_17_while_cond_160593___redundant_placeholder1D
@lstm_17_while_lstm_17_while_cond_160593___redundant_placeholder2D
@lstm_17_while_lstm_17_while_cond_160593___redundant_placeholder3
lstm_17_while_identity
?
lstm_17/while/LessLesslstm_17_while_placeholder*lstm_17_while_less_lstm_17_strided_slice_1*
T0*
_output_shapes
: 2
lstm_17/while/Lessu
lstm_17/while/IdentityIdentitylstm_17/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_17/while/Identity"9
lstm_17_while_identitylstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_161559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161559___redundant_placeholder04
0while_while_cond_161559___redundant_placeholder14
0while_while_cond_161559___redundant_placeholder24
0while_while_cond_161559___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_159487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159487___redundant_placeholder04
0while_while_cond_159487___redundant_placeholder14
0while_while_cond_159487___redundant_placeholder24
0while_while_cond_159487___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
??
?
while_body_162235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:E
3while_lstm_cell_17_matmul_1_readvariableop_resource:@
2while_lstm_cell_17_biasadd_readvariableop_resource:??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu_1?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_161844

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_159322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159322___redundant_placeholder04
0while_while_cond_159322___redundant_placeholder14
0while_while_cond_159322___redundant_placeholder24
0while_while_cond_159322___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_162755

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?[
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162319

inputs=
+lstm_cell_17_matmul_readvariableop_resource:?
-lstm_cell_17_matmul_1_readvariableop_resource::
,lstm_cell_17_biasadd_readvariableop_resource:
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_1?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu_1?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162235*
condR
while_cond_162234*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_159420

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_162657

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????@:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
?]
?
&sequential_5_lstm_16_while_body_157663F
Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counterL
Hsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations*
&sequential_5_lstm_16_while_placeholder,
(sequential_5_lstm_16_while_placeholder_1,
(sequential_5_lstm_16_while_placeholder_2,
(sequential_5_lstm_16_while_placeholder_3E
Asequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1_0?
}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:@\
Jsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:W
Isequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:'
#sequential_5_lstm_16_while_identity)
%sequential_5_lstm_16_while_identity_1)
%sequential_5_lstm_16_while_identity_2)
%sequential_5_lstm_16_while_identity_3)
%sequential_5_lstm_16_while_identity_4)
%sequential_5_lstm_16_while_identity_5C
?sequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1
{sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensorX
Fsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:@Z
Hsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:U
Gsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:??>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp??sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp?
Lsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2N
Lsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>sequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_16_while_placeholderUsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02@
>sequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem?
=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02?
=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp?
.sequential_5/lstm_16/while/lstm_cell_16/MatMulMatMulEsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.sequential_5/lstm_16/while/lstm_cell_16/MatMul?
?sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02A
?sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp?
0sequential_5/lstm_16/while/lstm_cell_16/MatMul_1MatMul(sequential_5_lstm_16_while_placeholder_2Gsequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
0sequential_5/lstm_16/while/lstm_cell_16/MatMul_1?
+sequential_5/lstm_16/while/lstm_cell_16/addAddV28sequential_5/lstm_16/while/lstm_cell_16/MatMul:product:0:sequential_5/lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_16/while/lstm_cell_16/add?
>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02@
>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?
/sequential_5/lstm_16/while/lstm_cell_16/BiasAddBiasAdd/sequential_5/lstm_16/while/lstm_cell_16/add:z:0Fsequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????21
/sequential_5/lstm_16/while/lstm_cell_16/BiasAdd?
7sequential_5/lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_16/while/lstm_cell_16/split/split_dim?
-sequential_5/lstm_16/while/lstm_cell_16/splitSplit@sequential_5/lstm_16/while/lstm_cell_16/split/split_dim:output:08sequential_5/lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2/
-sequential_5/lstm_16/while/lstm_cell_16/split?
/sequential_5/lstm_16/while/lstm_cell_16/SigmoidSigmoid6sequential_5/lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????21
/sequential_5/lstm_16/while/lstm_cell_16/Sigmoid?
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid6sequential_5/lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????23
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_1?
+sequential_5/lstm_16/while/lstm_cell_16/mulMul5sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_1:y:0(sequential_5_lstm_16_while_placeholder_3*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_16/while/lstm_cell_16/mul?
,sequential_5/lstm_16/while/lstm_cell_16/ReluRelu6sequential_5/lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2.
,sequential_5/lstm_16/while/lstm_cell_16/Relu?
-sequential_5/lstm_16/while/lstm_cell_16/mul_1Mul3sequential_5/lstm_16/while/lstm_cell_16/Sigmoid:y:0:sequential_5/lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2/
-sequential_5/lstm_16/while/lstm_cell_16/mul_1?
-sequential_5/lstm_16/while/lstm_cell_16/add_1AddV2/sequential_5/lstm_16/while/lstm_cell_16/mul:z:01sequential_5/lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2/
-sequential_5/lstm_16/while/lstm_cell_16/add_1?
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid6sequential_5/lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????23
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_2?
.sequential_5/lstm_16/while/lstm_cell_16/Relu_1Relu1sequential_5/lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????20
.sequential_5/lstm_16/while/lstm_cell_16/Relu_1?
-sequential_5/lstm_16/while/lstm_cell_16/mul_2Mul5sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_2:y:0<sequential_5/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2/
-sequential_5/lstm_16/while/lstm_cell_16/mul_2?
?sequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_16_while_placeholder_1&sequential_5_lstm_16_while_placeholder1sequential_5/lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItem?
 sequential_5/lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_16/while/add/y?
sequential_5/lstm_16/while/addAddV2&sequential_5_lstm_16_while_placeholder)sequential_5/lstm_16/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_16/while/add?
"sequential_5/lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_16/while/add_1/y?
 sequential_5/lstm_16/while/add_1AddV2Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counter+sequential_5/lstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_16/while/add_1?
#sequential_5/lstm_16/while/IdentityIdentity$sequential_5/lstm_16/while/add_1:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_16/while/Identity?
%sequential_5/lstm_16/while/Identity_1IdentityHsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_16/while/Identity_1?
%sequential_5/lstm_16/while/Identity_2Identity"sequential_5/lstm_16/while/add:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_16/while/Identity_2?
%sequential_5/lstm_16/while/Identity_3IdentityOsequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_16/while/Identity_3?
%sequential_5/lstm_16/while/Identity_4Identity1sequential_5/lstm_16/while/lstm_cell_16/mul_2:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_16/while/Identity_4?
%sequential_5/lstm_16/while/Identity_5Identity1sequential_5/lstm_16/while/lstm_cell_16/add_1:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_16/while/Identity_5?
sequential_5/lstm_16/while/NoOpNoOp?^sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp>^sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp@^sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_5/lstm_16/while/NoOp"S
#sequential_5_lstm_16_while_identity,sequential_5/lstm_16/while/Identity:output:0"W
%sequential_5_lstm_16_while_identity_1.sequential_5/lstm_16/while/Identity_1:output:0"W
%sequential_5_lstm_16_while_identity_2.sequential_5/lstm_16/while/Identity_2:output:0"W
%sequential_5_lstm_16_while_identity_3.sequential_5/lstm_16/while/Identity_3:output:0"W
%sequential_5_lstm_16_while_identity_4.sequential_5/lstm_16/while/Identity_4:output:0"W
%sequential_5_lstm_16_while_identity_5.sequential_5/lstm_16/while/Identity_5:output:0"?
Gsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resourceIsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"?
Hsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resourceJsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"?
Fsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resourceHsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"?
?sequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1Asequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1_0"?
{sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2?
>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2?
?sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp?sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_16_while_cond_160445,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1D
@lstm_16_while_lstm_16_while_cond_160445___redundant_placeholder0D
@lstm_16_while_lstm_16_while_cond_160445___redundant_placeholder1D
@lstm_16_while_lstm_16_while_cond_160445___redundant_placeholder2D
@lstm_16_while_lstm_16_while_cond_160445___redundant_placeholder3
lstm_16_while_identity
?
lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: 2
lstm_16/while/Lessu
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_16/while/Identity"9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_160067

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@?
-lstm_cell_16_matmul_1_readvariableop_resource::
,lstm_cell_16_biasadd_readvariableop_resource:
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul?
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul_1?
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add?
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_16/split?
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_1?
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159983*
condR
while_cond_159982*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?[
?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161795

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@?
-lstm_cell_16_matmul_1_readvariableop_resource::
,lstm_cell_16_biasadd_readvariableop_resource:
identity??#lstm_cell_16/BiasAdd/ReadVariableOp?"lstm_cell_16/MatMul/ReadVariableOp?$lstm_cell_16/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????@2
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
valueB"????@   27
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
:?????????@*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp?
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul?
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/MatMul_1?
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add?
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dim?
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_16/split?
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid?
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_1?
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu?
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_1?
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/add_1?
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/Relu_1?
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_16/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161711*
condR
while_cond_161710*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_159982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159982___redundant_placeholder04
0while_while_cond_159982___redundant_placeholder14
0while_while_cond_159982___redundant_placeholder24
0while_while_cond_159982___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_162234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162234___redundant_placeholder04
0while_while_cond_162234___redundant_placeholder14
0while_while_cond_162234___redundant_placeholder24
0while_while_cond_162234___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_159572

inputs=
+lstm_cell_17_matmul_readvariableop_resource:?
-lstm_cell_17_matmul_1_readvariableop_resource::
,lstm_cell_17_biasadd_readvariableop_resource:
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_1?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu_1?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159488*
condR
while_cond_159487*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_5_layer_call_fn_161119

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1601742
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
W
;__inference_global_average_pooling1d_2_layer_call_fn_161186

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_1579252
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
while_cond_158237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158237___redundant_placeholder04
0while_while_cond_158237___redundant_placeholder14
0while_while_cond_158237___redundant_placeholder24
0while_while_cond_158237___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162470

inputs=
+lstm_cell_17_matmul_readvariableop_resource:?
-lstm_cell_17_matmul_1_readvariableop_resource::
,lstm_cell_17_biasadd_readvariableop_resource:
identity??#lstm_cell_17/BiasAdd/ReadVariableOp?"lstm_cell_17/MatMul/ReadVariableOp?$lstm_cell_17/MatMul_1/ReadVariableOp?whileD
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
value	B :2
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
value	B :2
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
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:?????????2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp?
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul?
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/MatMul_1?
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add?
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dim?
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_cell_17/split?
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid?
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_1?
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu?
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_1?
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/add_1?
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/Relu_1?
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_cell_17/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_162386*
condR
while_cond_162385*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
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
:?????????*
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
:?????????2
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
:?????????2

Identity?
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_157925

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indices?
MeanMeaninputsMean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
Meann
IdentityIdentityMean:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
while_body_159787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:E
3while_lstm_cell_17_matmul_1_readvariableop_resource:@
2while_lstm_cell_17_biasadd_readvariableop_resource:??)while/lstm_cell_17/BiasAdd/ReadVariableOp?(while/lstm_cell_17/MatMul/ReadVariableOp?*while/lstm_cell_17/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOp?
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul?
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp?
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/MatMul_1?
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add?
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOp?
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/BiasAdd?
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim?
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_17/split?
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid?
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_1?
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul?
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu?
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_1?
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/add_1?
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Sigmoid_2?
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/Relu_1?
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_17/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
??
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_161057

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_5_biasadd_readvariableop_resource:@E
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:@G
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:B
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:E
3lstm_17_lstm_cell_17_matmul_readvariableop_resource:G
5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:B
4lstm_17_lstm_cell_17_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:
identity??conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?dense_17/MatMul/ReadVariableOp?+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp?*lstm_16/lstm_cell_16/MatMul/ReadVariableOp?,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp?lstm_16/while?+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp?*lstm_17/lstm_cell_17/MatMul/ReadVariableOp?,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp?lstm_17/while?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/BiasAddw
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/Relu?
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_5/conv1d/ExpandDims/dim?
conv1d_5/conv1d/ExpandDims
ExpandDimsconv1d_4/Relu:activations:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 2
conv1d_5/conv1d/ExpandDims?
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim?
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_5/conv1d/ExpandDims_1?
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv1d_5/conv1d?
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims

?????????2
conv1d_5/conv1d/Squeeze?
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_5/BiasAdd/ReadVariableOp?
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
conv1d_5/BiasAddw
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
conv1d_5/Relu?
1global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_2/Mean/reduction_indices?
global_average_pooling1d_2/MeanMeanconv1d_5/Relu:activations:0:global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????@*
	keep_dims(2!
global_average_pooling1d_2/Meanv
lstm_16/ShapeShape(global_average_pooling1d_2/Mean:output:0*
T0*
_output_shapes
:2
lstm_16/Shape?
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice/stack?
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_1?
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_2?
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slicel
lstm_16/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/mul/y?
lstm_16/zeros/mulMullstm_16/strided_slice:output:0lstm_16/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/mulo
lstm_16/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros/Less/y?
lstm_16/zeros/LessLesslstm_16/zeros/mul:z:0lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/Lessr
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/packed/1?
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros/packedo
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros/Const?
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/zerosp
lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/mul/y?
lstm_16/zeros_1/mulMullstm_16/strided_slice:output:0lstm_16/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/muls
lstm_16/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros_1/Less/y?
lstm_16/zeros_1/LessLesslstm_16/zeros_1/mul:z:0lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/Lessv
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/packed/1?
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros_1/packeds
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros_1/Const?
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/zeros_1?
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose/perm?
lstm_16/transpose	Transpose(global_average_pooling1d_2/Mean:output:0lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_16/transposeg
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:2
lstm_16/Shape_1?
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_1/stack?
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_1?
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_2?
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slice_1?
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_16/TensorArrayV2/element_shape?
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_16/TensorArrayUnstack/TensorListFromTensor?
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_2/stack?
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_1?
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_2?
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_16/strided_slice_2?
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp?
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/MatMul?
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/MatMul_1?
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/add?
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/BiasAdd?
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_16/lstm_cell_16/split/split_dim?
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_16/lstm_cell_16/split?
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/Sigmoid?
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2 
lstm_16/lstm_cell_16/Sigmoid_1?
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/mul?
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/Relu?
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/mul_1?
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/add_1?
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2 
lstm_16/lstm_cell_16/Sigmoid_2?
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/Relu_1?
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/mul_2?
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_16/TensorArrayV2_1/element_shape?
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2_1^
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/time?
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_16/while/maximum_iterationsz
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/while/loop_counter?
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_16_while_body_160791*%
condR
lstm_16_while_cond_160790*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
lstm_16/while?
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02,
*lstm_16/TensorArrayV2Stack/TensorListStack?
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_16/strided_slice_3/stack?
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_16/strided_slice_3/stack_1?
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_3/stack_2?
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_16/strided_slice_3?
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose_1/perm?
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_16/transpose_1v
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/runtimey
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_10/dropout/Const?
dropout_10/dropout/MulMullstm_16/transpose_1:y:0!dropout_10/dropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout_10/dropout/Mul{
dropout_10/dropout/ShapeShapelstm_16/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_10/dropout/Shape?
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype021
/dropout_10/dropout/random_uniform/RandomUniform?
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_10/dropout/GreaterEqual/y?
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2!
dropout_10/dropout/GreaterEqual?
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout_10/dropout/Cast?
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout_10/dropout/Mul_1j
lstm_17/ShapeShapedropout_10/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_17/Shape?
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice/stack?
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_1?
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_2?
lstm_17/strided_sliceStridedSlicelstm_17/Shape:output:0$lstm_17/strided_slice/stack:output:0&lstm_17/strided_slice/stack_1:output:0&lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_17/strided_slicel
lstm_17/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros/mul/y?
lstm_17/zeros/mulMullstm_17/strided_slice:output:0lstm_17/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros/mulo
lstm_17/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_17/zeros/Less/y?
lstm_17/zeros/LessLesslstm_17/zeros/mul:z:0lstm_17/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros/Lessr
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros/packed/1?
lstm_17/zeros/packedPacklstm_17/strided_slice:output:0lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_17/zeros/packedo
lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/zeros/Const?
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/zerosp
lstm_17/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/mul/y?
lstm_17/zeros_1/mulMullstm_17/strided_slice:output:0lstm_17/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros_1/muls
lstm_17/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_17/zeros_1/Less/y?
lstm_17/zeros_1/LessLesslstm_17/zeros_1/mul:z:0lstm_17/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros_1/Lessv
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/packed/1?
lstm_17/zeros_1/packedPacklstm_17/strided_slice:output:0!lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_17/zeros_1/packeds
lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/zeros_1/Const?
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/zeros_1?
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose/perm?
lstm_17/transpose	Transposedropout_10/dropout/Mul_1:z:0lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_17/transposeg
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:2
lstm_17/Shape_1?
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_1/stack?
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_1?
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_2?
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_17/strided_slice_1?
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_17/TensorArrayV2/element_shape?
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_17/TensorArrayV2?
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_17/TensorArrayUnstack/TensorListFromTensor?
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_2/stack?
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_1?
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_2?
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_17/strided_slice_2?
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_17_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_17/lstm_cell_17/MatMul/ReadVariableOp?
lstm_17/lstm_cell_17/MatMulMatMul lstm_17/strided_slice_2:output:02lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/MatMul?
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_17/lstm_cell_17/MatMul_1MatMullstm_17/zeros:output:04lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/MatMul_1?
lstm_17/lstm_cell_17/addAddV2%lstm_17/lstm_cell_17/MatMul:product:0'lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/add?
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_17/lstm_cell_17/BiasAddBiasAddlstm_17/lstm_cell_17/add:z:03lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/BiasAdd?
$lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_17/lstm_cell_17/split/split_dim?
lstm_17/lstm_cell_17/splitSplit-lstm_17/lstm_cell_17/split/split_dim:output:0%lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_17/lstm_cell_17/split?
lstm_17/lstm_cell_17/SigmoidSigmoid#lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/Sigmoid?
lstm_17/lstm_cell_17/Sigmoid_1Sigmoid#lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2 
lstm_17/lstm_cell_17/Sigmoid_1?
lstm_17/lstm_cell_17/mulMul"lstm_17/lstm_cell_17/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/mul?
lstm_17/lstm_cell_17/ReluRelu#lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/Relu?
lstm_17/lstm_cell_17/mul_1Mul lstm_17/lstm_cell_17/Sigmoid:y:0'lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/mul_1?
lstm_17/lstm_cell_17/add_1AddV2lstm_17/lstm_cell_17/mul:z:0lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/add_1?
lstm_17/lstm_cell_17/Sigmoid_2Sigmoid#lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2 
lstm_17/lstm_cell_17/Sigmoid_2?
lstm_17/lstm_cell_17/Relu_1Relulstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/Relu_1?
lstm_17/lstm_cell_17/mul_2Mul"lstm_17/lstm_cell_17/Sigmoid_2:y:0)lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/mul_2?
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_17/TensorArrayV2_1/element_shape?
lstm_17/TensorArrayV2_1TensorListReserve.lstm_17/TensorArrayV2_1/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_17/TensorArrayV2_1^
lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_17/time?
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_17/while/maximum_iterationsz
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_17/while/loop_counter?
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_17_lstm_cell_17_matmul_readvariableop_resource5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_17_while_body_160946*%
condR
lstm_17_while_cond_160945*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
lstm_17/while?
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02,
*lstm_17/TensorArrayV2Stack/TensorListStack?
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_17/strided_slice_3/stack?
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_17/strided_slice_3/stack_1?
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_3/stack_2?
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_17/strided_slice_3?
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose_1/perm?
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_17/transpose_1v
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/runtimey
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_11/dropout/Const?
dropout_11/dropout/MulMul lstm_17/strided_slice_3:output:0!dropout_11/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_11/dropout/Mul?
dropout_11/dropout/ShapeShape lstm_17/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_11/dropout/Shape?
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_11/dropout/random_uniform/RandomUniform?
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_11/dropout/GreaterEqual/y?
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_11/dropout/GreaterEqual?
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_11/dropout/Cast?
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_11/dropout/Mul_1?
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_16/MatMul/ReadVariableOp?
dense_16/MatMulMatMuldropout_11/dropout/Mul_1:z:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/MatMul?
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_16/BiasAdd/ReadVariableOp?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/BiasAdds
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_16/Relu?
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_17/MatMul/ReadVariableOp?
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_17/MatMulk
reshape_8/ShapeShapedense_17/MatMul:product:0*
T0*
_output_shapes
:2
reshape_8/Shape?
reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_8/strided_slice/stack?
reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_1?
reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_2?
reshape_8/strided_sliceStridedSlicereshape_8/Shape:output:0&reshape_8/strided_slice/stack:output:0(reshape_8/strided_slice/stack_1:output:0(reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_8/strided_slicex
reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_8/Reshape/shape/1x
reshape_8/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_8/Reshape/shape/2?
reshape_8/Reshape/shapePack reshape_8/strided_slice:output:0"reshape_8/Reshape/shape/1:output:0"reshape_8/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_8/Reshape/shape?
reshape_8/ReshapeReshapedense_17/MatMul:product:0 reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_8/Reshapey
IdentityIdentityreshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while,^lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_17/lstm_cell_17/MatMul/ReadVariableOp-^lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2Z
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp*lstm_16/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while2Z
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp2X
*lstm_17/lstm_cell_17/MatMul/ReadVariableOp*lstm_17/lstm_cell_17/MatMul/ReadVariableOp2\
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_17/whilelstm_17/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_158027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158027___redundant_placeholder04
0while_while_cond_158027___redundant_placeholder14
0while_while_cond_158027___redundant_placeholder24
0while_while_cond_158027___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_16_layer_call_fn_161839

inputs
unknown:@
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1600672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
ٓ
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_160698

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_5_biasadd_readvariableop_resource:@E
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:@G
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:B
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:E
3lstm_17_lstm_cell_17_matmul_readvariableop_resource:G
5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:B
4lstm_17_lstm_cell_17_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:
identity??conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?dense_17/MatMul/ReadVariableOp?+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp?*lstm_16/lstm_cell_16/MatMul/ReadVariableOp?,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp?lstm_16/while?+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp?*lstm_17/lstm_cell_17/MatMul/ReadVariableOp?,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp?lstm_17/while?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/BiasAddw
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/Relu?
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_5/conv1d/ExpandDims/dim?
conv1d_5/conv1d/ExpandDims
ExpandDimsconv1d_4/Relu:activations:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 2
conv1d_5/conv1d/ExpandDims?
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim?
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_5/conv1d/ExpandDims_1?
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv1d_5/conv1d?
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims

?????????2
conv1d_5/conv1d/Squeeze?
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_5/BiasAdd/ReadVariableOp?
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
conv1d_5/BiasAddw
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
conv1d_5/Relu?
1global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_2/Mean/reduction_indices?
global_average_pooling1d_2/MeanMeanconv1d_5/Relu:activations:0:global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????@*
	keep_dims(2!
global_average_pooling1d_2/Meanv
lstm_16/ShapeShape(global_average_pooling1d_2/Mean:output:0*
T0*
_output_shapes
:2
lstm_16/Shape?
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice/stack?
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_1?
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_2?
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slicel
lstm_16/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/mul/y?
lstm_16/zeros/mulMullstm_16/strided_slice:output:0lstm_16/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/mulo
lstm_16/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros/Less/y?
lstm_16/zeros/LessLesslstm_16/zeros/mul:z:0lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/Lessr
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/packed/1?
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros/packedo
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros/Const?
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/zerosp
lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/mul/y?
lstm_16/zeros_1/mulMullstm_16/strided_slice:output:0lstm_16/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/muls
lstm_16/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_16/zeros_1/Less/y?
lstm_16/zeros_1/LessLesslstm_16/zeros_1/mul:z:0lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/Lessv
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/packed/1?
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_16/zeros_1/packeds
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/zeros_1/Const?
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/zeros_1?
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose/perm?
lstm_16/transpose	Transpose(global_average_pooling1d_2/Mean:output:0lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@2
lstm_16/transposeg
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:2
lstm_16/Shape_1?
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_1/stack?
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_1?
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_2?
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slice_1?
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_16/TensorArrayV2/element_shape?
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_16/TensorArrayUnstack/TensorListFromTensor?
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_2/stack?
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_1?
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_2?
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm_16/strided_slice_2?
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp?
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/MatMul?
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp?
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/MatMul_1?
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/add?
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp?
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/BiasAdd?
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_16/lstm_cell_16/split/split_dim?
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_16/lstm_cell_16/split?
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/Sigmoid?
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2 
lstm_16/lstm_cell_16/Sigmoid_1?
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/mul?
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/Relu?
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/mul_1?
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/add_1?
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2 
lstm_16/lstm_cell_16/Sigmoid_2?
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/Relu_1?
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_16/lstm_cell_16/mul_2?
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_16/TensorArrayV2_1/element_shape?
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2_1^
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/time?
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_16/while/maximum_iterationsz
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/while/loop_counter?
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_16_while_body_160446*%
condR
lstm_16_while_cond_160445*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
lstm_16/while?
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02,
*lstm_16/TensorArrayV2Stack/TensorListStack?
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_16/strided_slice_3/stack?
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_16/strided_slice_3/stack_1?
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_3/stack_2?
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_16/strided_slice_3?
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose_1/perm?
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_16/transpose_1v
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/runtime?
dropout_10/IdentityIdentitylstm_16/transpose_1:y:0*
T0*+
_output_shapes
:?????????2
dropout_10/Identityj
lstm_17/ShapeShapedropout_10/Identity:output:0*
T0*
_output_shapes
:2
lstm_17/Shape?
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice/stack?
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_1?
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_2?
lstm_17/strided_sliceStridedSlicelstm_17/Shape:output:0$lstm_17/strided_slice/stack:output:0&lstm_17/strided_slice/stack_1:output:0&lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_17/strided_slicel
lstm_17/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros/mul/y?
lstm_17/zeros/mulMullstm_17/strided_slice:output:0lstm_17/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros/mulo
lstm_17/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_17/zeros/Less/y?
lstm_17/zeros/LessLesslstm_17/zeros/mul:z:0lstm_17/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros/Lessr
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros/packed/1?
lstm_17/zeros/packedPacklstm_17/strided_slice:output:0lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_17/zeros/packedo
lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/zeros/Const?
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/zerosp
lstm_17/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/mul/y?
lstm_17/zeros_1/mulMullstm_17/strided_slice:output:0lstm_17/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros_1/muls
lstm_17/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_17/zeros_1/Less/y?
lstm_17/zeros_1/LessLesslstm_17/zeros_1/mul:z:0lstm_17/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros_1/Lessv
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/packed/1?
lstm_17/zeros_1/packedPacklstm_17/strided_slice:output:0!lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_17/zeros_1/packeds
lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/zeros_1/Const?
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/zeros_1?
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose/perm?
lstm_17/transpose	Transposedropout_10/Identity:output:0lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_17/transposeg
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:2
lstm_17/Shape_1?
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_1/stack?
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_1?
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_2?
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_17/strided_slice_1?
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_17/TensorArrayV2/element_shape?
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_17/TensorArrayV2?
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_17/TensorArrayUnstack/TensorListFromTensor?
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_2/stack?
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_1?
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_2?
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_17/strided_slice_2?
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_17_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_17/lstm_cell_17/MatMul/ReadVariableOp?
lstm_17/lstm_cell_17/MatMulMatMul lstm_17/strided_slice_2:output:02lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/MatMul?
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp?
lstm_17/lstm_cell_17/MatMul_1MatMullstm_17/zeros:output:04lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/MatMul_1?
lstm_17/lstm_cell_17/addAddV2%lstm_17/lstm_cell_17/MatMul:product:0'lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/add?
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp?
lstm_17/lstm_cell_17/BiasAddBiasAddlstm_17/lstm_cell_17/add:z:03lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/BiasAdd?
$lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_17/lstm_cell_17/split/split_dim?
lstm_17/lstm_cell_17/splitSplit-lstm_17/lstm_cell_17/split/split_dim:output:0%lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
lstm_17/lstm_cell_17/split?
lstm_17/lstm_cell_17/SigmoidSigmoid#lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/Sigmoid?
lstm_17/lstm_cell_17/Sigmoid_1Sigmoid#lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2 
lstm_17/lstm_cell_17/Sigmoid_1?
lstm_17/lstm_cell_17/mulMul"lstm_17/lstm_cell_17/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/mul?
lstm_17/lstm_cell_17/ReluRelu#lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/Relu?
lstm_17/lstm_cell_17/mul_1Mul lstm_17/lstm_cell_17/Sigmoid:y:0'lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/mul_1?
lstm_17/lstm_cell_17/add_1AddV2lstm_17/lstm_cell_17/mul:z:0lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/add_1?
lstm_17/lstm_cell_17/Sigmoid_2Sigmoid#lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2 
lstm_17/lstm_cell_17/Sigmoid_2?
lstm_17/lstm_cell_17/Relu_1Relulstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/Relu_1?
lstm_17/lstm_cell_17/mul_2Mul"lstm_17/lstm_cell_17/Sigmoid_2:y:0)lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
lstm_17/lstm_cell_17/mul_2?
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%lstm_17/TensorArrayV2_1/element_shape?
lstm_17/TensorArrayV2_1TensorListReserve.lstm_17/TensorArrayV2_1/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_17/TensorArrayV2_1^
lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_17/time?
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_17/while/maximum_iterationsz
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_17/while/loop_counter?
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_17_lstm_cell_17_matmul_readvariableop_resource5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_17_while_body_160594*%
condR
lstm_17_while_cond_160593*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
lstm_17/while?
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2:
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02,
*lstm_17/TensorArrayV2Stack/TensorListStack?
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_17/strided_slice_3/stack?
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_17/strided_slice_3/stack_1?
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_3/stack_2?
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_17/strided_slice_3?
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose_1/perm?
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_17/transpose_1v
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/runtime?
dropout_11/IdentityIdentity lstm_17/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????2
dropout_11/Identity?
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_16/MatMul/ReadVariableOp?
dense_16/MatMulMatMuldropout_11/Identity:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/MatMul?
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_16/BiasAdd/ReadVariableOp?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_16/BiasAdds
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_16/Relu?
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_17/MatMul/ReadVariableOp?
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_17/MatMulk
reshape_8/ShapeShapedense_17/MatMul:product:0*
T0*
_output_shapes
:2
reshape_8/Shape?
reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_8/strided_slice/stack?
reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_1?
reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_2?
reshape_8/strided_sliceStridedSlicereshape_8/Shape:output:0&reshape_8/strided_slice/stack:output:0(reshape_8/strided_slice/stack_1:output:0(reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_8/strided_slicex
reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_8/Reshape/shape/1x
reshape_8/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_8/Reshape/shape/2?
reshape_8/Reshape/shapePack reshape_8/strided_slice:output:0"reshape_8/Reshape/shape/1:output:0"reshape_8/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_8/Reshape/shape?
reshape_8/ReshapeReshapedense_17/MatMul:product:0 reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_8/Reshapey
IdentityIdentityreshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while,^lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_17/lstm_cell_17/MatMul/ReadVariableOp-^lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2Z
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp*lstm_16/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while2Z
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp2X
*lstm_17/lstm_cell_17/MatMul/ReadVariableOp*lstm_17/lstm_cell_17/MatMul/ReadVariableOp2\
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_17/whilelstm_17/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_161181

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indices?
MeanMeaninputsMean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????@*
	keep_dims(2
Meane
IdentityIdentityMean:output:0*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
W
;__inference_global_average_pooling1d_2_layer_call_fn_161191

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
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_1592552
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
while_body_161409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@G
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_16_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@E
3while_lstm_cell_16_matmul_1_readvariableop_resource:@
2while_lstm_cell_16_biasadd_readvariableop_resource:??)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOp?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul?
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add?
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOp?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/BiasAdd?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid?
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul?
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?J
?

lstm_17_while_body_160946,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:O
=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:J
<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorK
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:M
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:H
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:??1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp?2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp?
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_17/while/TensorArrayV2Read/TensorListGetItem?
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp?
!lstm_17/while/lstm_cell_17/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!lstm_17/while/lstm_cell_17/MatMul?
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp?
#lstm_17/while/lstm_cell_17/MatMul_1MatMullstm_17_while_placeholder_2:lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#lstm_17/while/lstm_cell_17/MatMul_1?
lstm_17/while/lstm_cell_17/addAddV2+lstm_17/while/lstm_cell_17/MatMul:product:0-lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2 
lstm_17/while/lstm_cell_17/add?
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?
"lstm_17/while/lstm_cell_17/BiasAddBiasAdd"lstm_17/while/lstm_cell_17/add:z:09lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"lstm_17/while/lstm_cell_17/BiasAdd?
*lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_17/while/lstm_cell_17/split/split_dim?
 lstm_17/while/lstm_cell_17/splitSplit3lstm_17/while/lstm_cell_17/split/split_dim:output:0+lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2"
 lstm_17/while/lstm_cell_17/split?
"lstm_17/while/lstm_cell_17/SigmoidSigmoid)lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_17/while/lstm_cell_17/Sigmoid?
$lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2&
$lstm_17/while/lstm_cell_17/Sigmoid_1?
lstm_17/while/lstm_cell_17/mulMul(lstm_17/while/lstm_cell_17/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:?????????2 
lstm_17/while/lstm_cell_17/mul?
lstm_17/while/lstm_cell_17/ReluRelu)lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2!
lstm_17/while/lstm_cell_17/Relu?
 lstm_17/while/lstm_cell_17/mul_1Mul&lstm_17/while/lstm_cell_17/Sigmoid:y:0-lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_17/while/lstm_cell_17/mul_1?
 lstm_17/while/lstm_cell_17/add_1AddV2"lstm_17/while/lstm_cell_17/mul:z:0$lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2"
 lstm_17/while/lstm_cell_17/add_1?
$lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2&
$lstm_17/while/lstm_cell_17/Sigmoid_2?
!lstm_17/while/lstm_cell_17/Relu_1Relu$lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2#
!lstm_17/while/lstm_cell_17/Relu_1?
 lstm_17/while/lstm_cell_17/mul_2Mul(lstm_17/while/lstm_cell_17/Sigmoid_2:y:0/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_17/while/lstm_cell_17/mul_2?
2lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_17_while_placeholder_1lstm_17_while_placeholder$lstm_17/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_17/while/TensorArrayV2Write/TensorListSetIteml
lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/while/add/y?
lstm_17/while/addAddV2lstm_17_while_placeholderlstm_17/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_17/while/addp
lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/while/add_1/y?
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_17/while/add_1?
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity?
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_1?
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_2?
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_3?
lstm_17/while/Identity_4Identity$lstm_17/while/lstm_cell_17/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_17/while/Identity_4?
lstm_17/while/Identity_5Identity$lstm_17/while/lstm_cell_17/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_17/while/Identity_5?
lstm_17/while/NoOpNoOp2^lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1^lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp3^lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_17/while/NoOp"9
lstm_17_while_identitylstm_17/while/Identity:output:0"=
lstm_17_while_identity_1!lstm_17/while/Identity_1:output:0"=
lstm_17_while_identity_2!lstm_17/while/Identity_2:output:0"=
lstm_17_while_identity_3!lstm_17/while/Identity_3:output:0"=
lstm_17_while_identity_4!lstm_17/while/Identity_4:output:0"=
lstm_17_while_identity_5!lstm_17/while/Identity_5:output:0"P
%lstm_17_while_lstm_17_strided_slice_1'lstm_17_while_lstm_17_strided_slice_1_0"z
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"?
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp2h
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?J
?

lstm_16_while_body_160791,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:@O
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:J
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorK
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:@M
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:H
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:??1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp?2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp?
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2A
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype023
1lstm_16/while/TensorArrayV2Read/TensorListGetItem?
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp?
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!lstm_16/while/lstm_cell_16/MatMul?
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp?
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#lstm_16/while/lstm_cell_16/MatMul_1?
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2 
lstm_16/while/lstm_cell_16/add?
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"lstm_16/while/lstm_cell_16/BiasAdd?
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_16/while/lstm_cell_16/split/split_dim?
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2"
 lstm_16/while/lstm_cell_16/split?
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2$
"lstm_16/while/lstm_cell_16/Sigmoid?
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2&
$lstm_16/while/lstm_cell_16/Sigmoid_1?
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:?????????2 
lstm_16/while/lstm_cell_16/mul?
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2!
lstm_16/while/lstm_cell_16/Relu?
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_16/while/lstm_cell_16/mul_1?
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2"
 lstm_16/while/lstm_cell_16/add_1?
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2&
$lstm_16/while/lstm_cell_16/Sigmoid_2?
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2#
!lstm_16/while/lstm_cell_16/Relu_1?
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2"
 lstm_16/while/lstm_cell_16/mul_2?
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder$lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_16/while/TensorArrayV2Write/TensorListSetIteml
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add/y?
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/addp
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/while/add_1/y?
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/add_1?
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity?
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_1?
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_2?
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_3?
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_16/while/Identity_4?
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:?????????2
lstm_16/while/Identity_5?
lstm_16/while/NoOpNoOp2^lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_16/while/NoOp"9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"z
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"?
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2f
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
e
F__inference_dropout_11_layer_call_and_return_conditional_losses_159704

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

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
?
(__inference_lstm_16_layer_call_fn_161806
inputs_0
unknown:@
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1580972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?

?
lstm_17_while_cond_160945,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1D
@lstm_17_while_lstm_17_while_cond_160945___redundant_placeholder0D
@lstm_17_while_lstm_17_while_cond_160945___redundant_placeholder1D
@lstm_17_while_lstm_17_while_cond_160945___redundant_placeholder2D
@lstm_17_while_lstm_17_while_cond_160945___redundant_placeholder3
lstm_17_while_identity
?
lstm_17/while/LessLesslstm_17_while_placeholder*lstm_17_while_less_lstm_17_strided_slice_1*
T0*
_output_shapes
: 2
lstm_17/while/Lessu
lstm_17/while/IdentityIdentitylstm_17/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_17/while/Identity"9
lstm_17_while_identitylstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_161932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161932___redundant_placeholder04
0while_while_cond_161932___redundant_placeholder14
0while_while_cond_161932___redundant_placeholder24
0while_while_cond_161932___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
??
?
while_body_161560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@G
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_16_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@E
3while_lstm_cell_16_matmul_1_readvariableop_resource:@
2while_lstm_cell_16_biasadd_readvariableop_resource:??)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOp?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul?
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add?
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOp?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/BiasAdd?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid?
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul?
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_lstm_cell_16_layer_call_fn_162674

inputs
states_0
states_1
unknown:@
	unknown_0:
	unknown_1:
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
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_1580142
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2

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
?:?????????@:?????????:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
states/1
??
?
!__inference__wrapped_model_157915
conv1d_4_inputW
Asequential_5_conv1d_4_conv1d_expanddims_1_readvariableop_resource: C
5sequential_5_conv1d_4_biasadd_readvariableop_resource: W
Asequential_5_conv1d_5_conv1d_expanddims_1_readvariableop_resource: @C
5sequential_5_conv1d_5_biasadd_readvariableop_resource:@R
@sequential_5_lstm_16_lstm_cell_16_matmul_readvariableop_resource:@T
Bsequential_5_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:O
Asequential_5_lstm_16_lstm_cell_16_biasadd_readvariableop_resource:R
@sequential_5_lstm_17_lstm_cell_17_matmul_readvariableop_resource:T
Bsequential_5_lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:O
Asequential_5_lstm_17_lstm_cell_17_biasadd_readvariableop_resource:F
4sequential_5_dense_16_matmul_readvariableop_resource:C
5sequential_5_dense_16_biasadd_readvariableop_resource:F
4sequential_5_dense_17_matmul_readvariableop_resource:
identity??,sequential_5/conv1d_4/BiasAdd/ReadVariableOp?8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?,sequential_5/conv1d_5/BiasAdd/ReadVariableOp?8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?,sequential_5/dense_16/BiasAdd/ReadVariableOp?+sequential_5/dense_16/MatMul/ReadVariableOp?+sequential_5/dense_17/MatMul/ReadVariableOp?8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp?7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp?9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp?sequential_5/lstm_16/while?8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp?7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp?9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp?sequential_5/lstm_17/while?
+sequential_5/conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential_5/conv1d_4/conv1d/ExpandDims/dim?
'sequential_5/conv1d_4/conv1d/ExpandDims
ExpandDimsconv1d_4_input4sequential_5/conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2)
'sequential_5/conv1d_4/conv1d/ExpandDims?
8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_5_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02:
8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
-sequential_5/conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_5/conv1d_4/conv1d/ExpandDims_1/dim?
)sequential_5/conv1d_4/conv1d/ExpandDims_1
ExpandDims@sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_5/conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2+
)sequential_5/conv1d_4/conv1d/ExpandDims_1?
sequential_5/conv1d_4/conv1dConv2D0sequential_5/conv1d_4/conv1d/ExpandDims:output:02sequential_5/conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
sequential_5/conv1d_4/conv1d?
$sequential_5/conv1d_4/conv1d/SqueezeSqueeze%sequential_5/conv1d_4/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2&
$sequential_5/conv1d_4/conv1d/Squeeze?
,sequential_5/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_5/conv1d_4/BiasAdd/ReadVariableOp?
sequential_5/conv1d_4/BiasAddBiasAdd-sequential_5/conv1d_4/conv1d/Squeeze:output:04sequential_5/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
sequential_5/conv1d_4/BiasAdd?
sequential_5/conv1d_4/ReluRelu&sequential_5/conv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
sequential_5/conv1d_4/Relu?
+sequential_5/conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential_5/conv1d_5/conv1d/ExpandDims/dim?
'sequential_5/conv1d_5/conv1d/ExpandDims
ExpandDims(sequential_5/conv1d_4/Relu:activations:04sequential_5/conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:????????? 2)
'sequential_5/conv1d_5/conv1d/ExpandDims?
8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_5_conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02:
8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
-sequential_5/conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_5/conv1d_5/conv1d/ExpandDims_1/dim?
)sequential_5/conv1d_5/conv1d/ExpandDims_1
ExpandDims@sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_5/conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2+
)sequential_5/conv1d_5/conv1d/ExpandDims_1?
sequential_5/conv1d_5/conv1dConv2D0sequential_5/conv1d_5/conv1d/ExpandDims:output:02sequential_5/conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_5/conv1d_5/conv1d?
$sequential_5/conv1d_5/conv1d/SqueezeSqueeze%sequential_5/conv1d_5/conv1d:output:0*
T0*+
_output_shapes
:?????????@*
squeeze_dims

?????????2&
$sequential_5/conv1d_5/conv1d/Squeeze?
,sequential_5/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_5/conv1d_5/BiasAdd/ReadVariableOp?
sequential_5/conv1d_5/BiasAddBiasAdd-sequential_5/conv1d_5/conv1d/Squeeze:output:04sequential_5/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
sequential_5/conv1d_5/BiasAdd?
sequential_5/conv1d_5/ReluRelu&sequential_5/conv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
sequential_5/conv1d_5/Relu?
>sequential_5/global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_5/global_average_pooling1d_2/Mean/reduction_indices?
,sequential_5/global_average_pooling1d_2/MeanMean(sequential_5/conv1d_5/Relu:activations:0Gsequential_5/global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????@*
	keep_dims(2.
,sequential_5/global_average_pooling1d_2/Mean?
sequential_5/lstm_16/ShapeShape5sequential_5/global_average_pooling1d_2/Mean:output:0*
T0*
_output_shapes
:2
sequential_5/lstm_16/Shape?
(sequential_5/lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_16/strided_slice/stack?
*sequential_5/lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_16/strided_slice/stack_1?
*sequential_5/lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_16/strided_slice/stack_2?
"sequential_5/lstm_16/strided_sliceStridedSlice#sequential_5/lstm_16/Shape:output:01sequential_5/lstm_16/strided_slice/stack:output:03sequential_5/lstm_16/strided_slice/stack_1:output:03sequential_5/lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_16/strided_slice?
 sequential_5/lstm_16/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_16/zeros/mul/y?
sequential_5/lstm_16/zeros/mulMul+sequential_5/lstm_16/strided_slice:output:0)sequential_5/lstm_16/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_16/zeros/mul?
!sequential_5/lstm_16/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_5/lstm_16/zeros/Less/y?
sequential_5/lstm_16/zeros/LessLess"sequential_5/lstm_16/zeros/mul:z:0*sequential_5/lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_16/zeros/Less?
#sequential_5/lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_5/lstm_16/zeros/packed/1?
!sequential_5/lstm_16/zeros/packedPack+sequential_5/lstm_16/strided_slice:output:0,sequential_5/lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_16/zeros/packed?
 sequential_5/lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_16/zeros/Const?
sequential_5/lstm_16/zerosFill*sequential_5/lstm_16/zeros/packed:output:0)sequential_5/lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_5/lstm_16/zeros?
"sequential_5/lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_16/zeros_1/mul/y?
 sequential_5/lstm_16/zeros_1/mulMul+sequential_5/lstm_16/strided_slice:output:0+sequential_5/lstm_16/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_16/zeros_1/mul?
#sequential_5/lstm_16/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_5/lstm_16/zeros_1/Less/y?
!sequential_5/lstm_16/zeros_1/LessLess$sequential_5/lstm_16/zeros_1/mul:z:0,sequential_5/lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_16/zeros_1/Less?
%sequential_5/lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_5/lstm_16/zeros_1/packed/1?
#sequential_5/lstm_16/zeros_1/packedPack+sequential_5/lstm_16/strided_slice:output:0.sequential_5/lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_16/zeros_1/packed?
"sequential_5/lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_16/zeros_1/Const?
sequential_5/lstm_16/zeros_1Fill,sequential_5/lstm_16/zeros_1/packed:output:0+sequential_5/lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_5/lstm_16/zeros_1?
#sequential_5/lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_16/transpose/perm?
sequential_5/lstm_16/transpose	Transpose5sequential_5/global_average_pooling1d_2/Mean:output:0,sequential_5/lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@2 
sequential_5/lstm_16/transpose?
sequential_5/lstm_16/Shape_1Shape"sequential_5/lstm_16/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_16/Shape_1?
*sequential_5/lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_16/strided_slice_1/stack?
,sequential_5/lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_1/stack_1?
,sequential_5/lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_1/stack_2?
$sequential_5/lstm_16/strided_slice_1StridedSlice%sequential_5/lstm_16/Shape_1:output:03sequential_5/lstm_16/strided_slice_1/stack:output:05sequential_5/lstm_16/strided_slice_1/stack_1:output:05sequential_5/lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_16/strided_slice_1?
0sequential_5/lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_5/lstm_16/TensorArrayV2/element_shape?
"sequential_5/lstm_16/TensorArrayV2TensorListReserve9sequential_5/lstm_16/TensorArrayV2/element_shape:output:0-sequential_5/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_16/TensorArrayV2?
Jsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2L
Jsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape?
<sequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_16/transpose:y:0Ssequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor?
*sequential_5/lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_16/strided_slice_2/stack?
,sequential_5/lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_2/stack_1?
,sequential_5/lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_2/stack_2?
$sequential_5/lstm_16/strided_slice_2StridedSlice"sequential_5/lstm_16/transpose:y:03sequential_5/lstm_16/strided_slice_2/stack:output:05sequential_5/lstm_16/strided_slice_2/stack_1:output:05sequential_5/lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2&
$sequential_5/lstm_16/strided_slice_2?
7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype029
7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp?
(sequential_5/lstm_16/lstm_cell_16/MatMulMatMul-sequential_5/lstm_16/strided_slice_2:output:0?sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_5/lstm_16/lstm_cell_16/MatMul?
9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02;
9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp?
*sequential_5/lstm_16/lstm_cell_16/MatMul_1MatMul#sequential_5/lstm_16/zeros:output:0Asequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2,
*sequential_5/lstm_16/lstm_cell_16/MatMul_1?
%sequential_5/lstm_16/lstm_cell_16/addAddV22sequential_5/lstm_16/lstm_cell_16/MatMul:product:04sequential_5/lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_16/lstm_cell_16/add?
8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp?
)sequential_5/lstm_16/lstm_cell_16/BiasAddBiasAdd)sequential_5/lstm_16/lstm_cell_16/add:z:0@sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2+
)sequential_5/lstm_16/lstm_cell_16/BiasAdd?
1sequential_5/lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_16/lstm_cell_16/split/split_dim?
'sequential_5/lstm_16/lstm_cell_16/splitSplit:sequential_5/lstm_16/lstm_cell_16/split/split_dim:output:02sequential_5/lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2)
'sequential_5/lstm_16/lstm_cell_16/split?
)sequential_5/lstm_16/lstm_cell_16/SigmoidSigmoid0sequential_5/lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2+
)sequential_5/lstm_16/lstm_cell_16/Sigmoid?
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_1Sigmoid0sequential_5/lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_1?
%sequential_5/lstm_16/lstm_cell_16/mulMul/sequential_5/lstm_16/lstm_cell_16/Sigmoid_1:y:0%sequential_5/lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_16/lstm_cell_16/mul?
&sequential_5/lstm_16/lstm_cell_16/ReluRelu0sequential_5/lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2(
&sequential_5/lstm_16/lstm_cell_16/Relu?
'sequential_5/lstm_16/lstm_cell_16/mul_1Mul-sequential_5/lstm_16/lstm_cell_16/Sigmoid:y:04sequential_5/lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2)
'sequential_5/lstm_16/lstm_cell_16/mul_1?
'sequential_5/lstm_16/lstm_cell_16/add_1AddV2)sequential_5/lstm_16/lstm_cell_16/mul:z:0+sequential_5/lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2)
'sequential_5/lstm_16/lstm_cell_16/add_1?
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_2Sigmoid0sequential_5/lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_2?
(sequential_5/lstm_16/lstm_cell_16/Relu_1Relu+sequential_5/lstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2*
(sequential_5/lstm_16/lstm_cell_16/Relu_1?
'sequential_5/lstm_16/lstm_cell_16/mul_2Mul/sequential_5/lstm_16/lstm_cell_16/Sigmoid_2:y:06sequential_5/lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2)
'sequential_5/lstm_16/lstm_cell_16/mul_2?
2sequential_5/lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   24
2sequential_5/lstm_16/TensorArrayV2_1/element_shape?
$sequential_5/lstm_16/TensorArrayV2_1TensorListReserve;sequential_5/lstm_16/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_5/lstm_16/TensorArrayV2_1x
sequential_5/lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_5/lstm_16/time?
-sequential_5/lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_5/lstm_16/while/maximum_iterations?
'sequential_5/lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_16/while/loop_counter?
sequential_5/lstm_16/whileWhile0sequential_5/lstm_16/while/loop_counter:output:06sequential_5/lstm_16/while/maximum_iterations:output:0"sequential_5/lstm_16/time:output:0-sequential_5/lstm_16/TensorArrayV2_1:handle:0#sequential_5/lstm_16/zeros:output:0%sequential_5/lstm_16/zeros_1:output:0-sequential_5/lstm_16/strided_slice_1:output:0Lsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_16_lstm_cell_16_matmul_readvariableop_resourceBsequential_5_lstm_16_lstm_cell_16_matmul_1_readvariableop_resourceAsequential_5_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_16_while_body_157663*2
cond*R(
&sequential_5_lstm_16_while_cond_157662*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
sequential_5/lstm_16/while?
Esequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2G
Esequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape?
7sequential_5/lstm_16/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_16/while:output:3Nsequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype029
7sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack?
*sequential_5/lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*sequential_5/lstm_16/strided_slice_3/stack?
,sequential_5/lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_16/strided_slice_3/stack_1?
,sequential_5/lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_3/stack_2?
$sequential_5/lstm_16/strided_slice_3StridedSlice@sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_16/strided_slice_3/stack:output:05sequential_5/lstm_16/strided_slice_3/stack_1:output:05sequential_5/lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$sequential_5/lstm_16/strided_slice_3?
%sequential_5/lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_16/transpose_1/perm?
 sequential_5/lstm_16/transpose_1	Transpose@sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_5/lstm_16/transpose_1?
sequential_5/lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_16/runtime?
 sequential_5/dropout_10/IdentityIdentity$sequential_5/lstm_16/transpose_1:y:0*
T0*+
_output_shapes
:?????????2"
 sequential_5/dropout_10/Identity?
sequential_5/lstm_17/ShapeShape)sequential_5/dropout_10/Identity:output:0*
T0*
_output_shapes
:2
sequential_5/lstm_17/Shape?
(sequential_5/lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_17/strided_slice/stack?
*sequential_5/lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_17/strided_slice/stack_1?
*sequential_5/lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_17/strided_slice/stack_2?
"sequential_5/lstm_17/strided_sliceStridedSlice#sequential_5/lstm_17/Shape:output:01sequential_5/lstm_17/strided_slice/stack:output:03sequential_5/lstm_17/strided_slice/stack_1:output:03sequential_5/lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_17/strided_slice?
 sequential_5/lstm_17/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_17/zeros/mul/y?
sequential_5/lstm_17/zeros/mulMul+sequential_5/lstm_17/strided_slice:output:0)sequential_5/lstm_17/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_17/zeros/mul?
!sequential_5/lstm_17/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_5/lstm_17/zeros/Less/y?
sequential_5/lstm_17/zeros/LessLess"sequential_5/lstm_17/zeros/mul:z:0*sequential_5/lstm_17/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_17/zeros/Less?
#sequential_5/lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_5/lstm_17/zeros/packed/1?
!sequential_5/lstm_17/zeros/packedPack+sequential_5/lstm_17/strided_slice:output:0,sequential_5/lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_17/zeros/packed?
 sequential_5/lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_17/zeros/Const?
sequential_5/lstm_17/zerosFill*sequential_5/lstm_17/zeros/packed:output:0)sequential_5/lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_5/lstm_17/zeros?
"sequential_5/lstm_17/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_17/zeros_1/mul/y?
 sequential_5/lstm_17/zeros_1/mulMul+sequential_5/lstm_17/strided_slice:output:0+sequential_5/lstm_17/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_17/zeros_1/mul?
#sequential_5/lstm_17/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_5/lstm_17/zeros_1/Less/y?
!sequential_5/lstm_17/zeros_1/LessLess$sequential_5/lstm_17/zeros_1/mul:z:0,sequential_5/lstm_17/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_17/zeros_1/Less?
%sequential_5/lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_5/lstm_17/zeros_1/packed/1?
#sequential_5/lstm_17/zeros_1/packedPack+sequential_5/lstm_17/strided_slice:output:0.sequential_5/lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_17/zeros_1/packed?
"sequential_5/lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_17/zeros_1/Const?
sequential_5/lstm_17/zeros_1Fill,sequential_5/lstm_17/zeros_1/packed:output:0+sequential_5/lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_5/lstm_17/zeros_1?
#sequential_5/lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_17/transpose/perm?
sequential_5/lstm_17/transpose	Transpose)sequential_5/dropout_10/Identity:output:0,sequential_5/lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2 
sequential_5/lstm_17/transpose?
sequential_5/lstm_17/Shape_1Shape"sequential_5/lstm_17/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_17/Shape_1?
*sequential_5/lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_17/strided_slice_1/stack?
,sequential_5/lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_1/stack_1?
,sequential_5/lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_1/stack_2?
$sequential_5/lstm_17/strided_slice_1StridedSlice%sequential_5/lstm_17/Shape_1:output:03sequential_5/lstm_17/strided_slice_1/stack:output:05sequential_5/lstm_17/strided_slice_1/stack_1:output:05sequential_5/lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_17/strided_slice_1?
0sequential_5/lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_5/lstm_17/TensorArrayV2/element_shape?
"sequential_5/lstm_17/TensorArrayV2TensorListReserve9sequential_5/lstm_17/TensorArrayV2/element_shape:output:0-sequential_5/lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_17/TensorArrayV2?
Jsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape?
<sequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_17/transpose:y:0Ssequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor?
*sequential_5/lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_17/strided_slice_2/stack?
,sequential_5/lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_2/stack_1?
,sequential_5/lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_2/stack_2?
$sequential_5/lstm_17/strided_slice_2StridedSlice"sequential_5/lstm_17/transpose:y:03sequential_5/lstm_17/strided_slice_2/stack:output:05sequential_5/lstm_17/strided_slice_2/stack_1:output:05sequential_5/lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$sequential_5/lstm_17/strided_slice_2?
7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_17_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype029
7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp?
(sequential_5/lstm_17/lstm_cell_17/MatMulMatMul-sequential_5/lstm_17/strided_slice_2:output:0?sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_5/lstm_17/lstm_cell_17/MatMul?
9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02;
9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp?
*sequential_5/lstm_17/lstm_cell_17/MatMul_1MatMul#sequential_5/lstm_17/zeros:output:0Asequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2,
*sequential_5/lstm_17/lstm_cell_17/MatMul_1?
%sequential_5/lstm_17/lstm_cell_17/addAddV22sequential_5/lstm_17/lstm_cell_17/MatMul:product:04sequential_5/lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_17/lstm_cell_17/add?
8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp?
)sequential_5/lstm_17/lstm_cell_17/BiasAddBiasAdd)sequential_5/lstm_17/lstm_cell_17/add:z:0@sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2+
)sequential_5/lstm_17/lstm_cell_17/BiasAdd?
1sequential_5/lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_17/lstm_cell_17/split/split_dim?
'sequential_5/lstm_17/lstm_cell_17/splitSplit:sequential_5/lstm_17/lstm_cell_17/split/split_dim:output:02sequential_5/lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2)
'sequential_5/lstm_17/lstm_cell_17/split?
)sequential_5/lstm_17/lstm_cell_17/SigmoidSigmoid0sequential_5/lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:?????????2+
)sequential_5/lstm_17/lstm_cell_17/Sigmoid?
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_1Sigmoid0sequential_5/lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_1?
%sequential_5/lstm_17/lstm_cell_17/mulMul/sequential_5/lstm_17/lstm_cell_17/Sigmoid_1:y:0%sequential_5/lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:?????????2'
%sequential_5/lstm_17/lstm_cell_17/mul?
&sequential_5/lstm_17/lstm_cell_17/ReluRelu0sequential_5/lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:?????????2(
&sequential_5/lstm_17/lstm_cell_17/Relu?
'sequential_5/lstm_17/lstm_cell_17/mul_1Mul-sequential_5/lstm_17/lstm_cell_17/Sigmoid:y:04sequential_5/lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:?????????2)
'sequential_5/lstm_17/lstm_cell_17/mul_1?
'sequential_5/lstm_17/lstm_cell_17/add_1AddV2)sequential_5/lstm_17/lstm_cell_17/mul:z:0+sequential_5/lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:?????????2)
'sequential_5/lstm_17/lstm_cell_17/add_1?
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_2Sigmoid0sequential_5/lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:?????????2-
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_2?
(sequential_5/lstm_17/lstm_cell_17/Relu_1Relu+sequential_5/lstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:?????????2*
(sequential_5/lstm_17/lstm_cell_17/Relu_1?
'sequential_5/lstm_17/lstm_cell_17/mul_2Mul/sequential_5/lstm_17/lstm_cell_17/Sigmoid_2:y:06sequential_5/lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2)
'sequential_5/lstm_17/lstm_cell_17/mul_2?
2sequential_5/lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   24
2sequential_5/lstm_17/TensorArrayV2_1/element_shape?
$sequential_5/lstm_17/TensorArrayV2_1TensorListReserve;sequential_5/lstm_17/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_5/lstm_17/TensorArrayV2_1x
sequential_5/lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_5/lstm_17/time?
-sequential_5/lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_5/lstm_17/while/maximum_iterations?
'sequential_5/lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_17/while/loop_counter?
sequential_5/lstm_17/whileWhile0sequential_5/lstm_17/while/loop_counter:output:06sequential_5/lstm_17/while/maximum_iterations:output:0"sequential_5/lstm_17/time:output:0-sequential_5/lstm_17/TensorArrayV2_1:handle:0#sequential_5/lstm_17/zeros:output:0%sequential_5/lstm_17/zeros_1:output:0-sequential_5/lstm_17/strided_slice_1:output:0Lsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_17_lstm_cell_17_matmul_readvariableop_resourceBsequential_5_lstm_17_lstm_cell_17_matmul_1_readvariableop_resourceAsequential_5_lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????:?????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_17_while_body_157811*2
cond*R(
&sequential_5_lstm_17_while_cond_157810*K
output_shapes:
8: : : : :?????????:?????????: : : : : *
parallel_iterations 2
sequential_5/lstm_17/while?
Esequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2G
Esequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shape?
7sequential_5/lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_17/while:output:3Nsequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype029
7sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack?
*sequential_5/lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*sequential_5/lstm_17/strided_slice_3/stack?
,sequential_5/lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_17/strided_slice_3/stack_1?
,sequential_5/lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_3/stack_2?
$sequential_5/lstm_17/strided_slice_3StridedSlice@sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_17/strided_slice_3/stack:output:05sequential_5/lstm_17/strided_slice_3/stack_1:output:05sequential_5/lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$sequential_5/lstm_17/strided_slice_3?
%sequential_5/lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_17/transpose_1/perm?
 sequential_5/lstm_17/transpose_1	Transpose@sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_5/lstm_17/transpose_1?
sequential_5/lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_17/runtime?
 sequential_5/dropout_11/IdentityIdentity-sequential_5/lstm_17/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_5/dropout_11/Identity?
+sequential_5/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_5/dense_16/MatMul/ReadVariableOp?
sequential_5/dense_16/MatMulMatMul)sequential_5/dropout_11/Identity:output:03sequential_5/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_16/MatMul?
,sequential_5/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_5/dense_16/BiasAdd/ReadVariableOp?
sequential_5/dense_16/BiasAddBiasAdd&sequential_5/dense_16/MatMul:product:04sequential_5/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_16/BiasAdd?
sequential_5/dense_16/ReluRelu&sequential_5/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_16/Relu?
+sequential_5/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_5/dense_17/MatMul/ReadVariableOp?
sequential_5/dense_17/MatMulMatMul(sequential_5/dense_16/Relu:activations:03sequential_5/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_17/MatMul?
sequential_5/reshape_8/ShapeShape&sequential_5/dense_17/MatMul:product:0*
T0*
_output_shapes
:2
sequential_5/reshape_8/Shape?
*sequential_5/reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/reshape_8/strided_slice/stack?
,sequential_5/reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_8/strided_slice/stack_1?
,sequential_5/reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_8/strided_slice/stack_2?
$sequential_5/reshape_8/strided_sliceStridedSlice%sequential_5/reshape_8/Shape:output:03sequential_5/reshape_8/strided_slice/stack:output:05sequential_5/reshape_8/strided_slice/stack_1:output:05sequential_5/reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/reshape_8/strided_slice?
&sequential_5/reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_5/reshape_8/Reshape/shape/1?
&sequential_5/reshape_8/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_5/reshape_8/Reshape/shape/2?
$sequential_5/reshape_8/Reshape/shapePack-sequential_5/reshape_8/strided_slice:output:0/sequential_5/reshape_8/Reshape/shape/1:output:0/sequential_5/reshape_8/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_5/reshape_8/Reshape/shape?
sequential_5/reshape_8/ReshapeReshape&sequential_5/dense_17/MatMul:product:0-sequential_5/reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2 
sequential_5/reshape_8/Reshape?
IdentityIdentity'sequential_5/reshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp-^sequential_5/conv1d_4/BiasAdd/ReadVariableOp9^sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp-^sequential_5/conv1d_5/BiasAdd/ReadVariableOp9^sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp-^sequential_5/dense_16/BiasAdd/ReadVariableOp,^sequential_5/dense_16/MatMul/ReadVariableOp,^sequential_5/dense_17/MatMul/ReadVariableOp9^sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp8^sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp:^sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^sequential_5/lstm_16/while9^sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp8^sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp:^sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^sequential_5/lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 2\
,sequential_5/conv1d_4/BiasAdd/ReadVariableOp,sequential_5/conv1d_4/BiasAdd/ReadVariableOp2t
8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_5/conv1d_5/BiasAdd/ReadVariableOp,sequential_5/conv1d_5/BiasAdd/ReadVariableOp2t
8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_5/dense_16/BiasAdd/ReadVariableOp,sequential_5/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_16/MatMul/ReadVariableOp+sequential_5/dense_16/MatMul/ReadVariableOp2Z
+sequential_5/dense_17/MatMul/ReadVariableOp+sequential_5/dense_17/MatMul/ReadVariableOp2t
8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp2v
9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp28
sequential_5/lstm_16/whilesequential_5/lstm_16/while2t
8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp2v
9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp28
sequential_5/lstm_17/whilesequential_5/lstm_17/while:[ W
+
_output_shapes
:?????????
(
_user_specified_nameconv1d_4_input
?
?
(__inference_lstm_17_layer_call_fn_162492
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_1589372
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
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
D__inference_dense_16_layer_call_and_return_conditional_losses_159598

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_4_layer_call_and_return_conditional_losses_159222

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&sequential_5_lstm_16_while_cond_157662F
Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counterL
Hsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations*
&sequential_5_lstm_16_while_placeholder,
(sequential_5_lstm_16_while_placeholder_1,
(sequential_5_lstm_16_while_placeholder_2,
(sequential_5_lstm_16_while_placeholder_3H
Dsequential_5_lstm_16_while_less_sequential_5_lstm_16_strided_slice_1^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_157662___redundant_placeholder0^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_157662___redundant_placeholder1^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_157662___redundant_placeholder2^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_157662___redundant_placeholder3'
#sequential_5_lstm_16_while_identity
?
sequential_5/lstm_16/while/LessLess&sequential_5_lstm_16_while_placeholderDsequential_5_lstm_16_while_less_sequential_5_lstm_16_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_16/while/Less?
#sequential_5/lstm_16/while/IdentityIdentity#sequential_5/lstm_16/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_16/while/Identity"S
#sequential_5_lstm_16_while_identity,sequential_5/lstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
??
?
while_body_159323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@G
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_16_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@E
3while_lstm_cell_16_matmul_1_readvariableop_resource:@
2while_lstm_cell_16_biasadd_readvariableop_resource:??)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOp?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul?
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add?
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOp?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/BiasAdd?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid?
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul?
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_162385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162385___redundant_placeholder04
0while_while_cond_162385___redundant_placeholder14
0while_while_cond_162385___redundant_placeholder24
0while_while_cond_162385___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_159786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159786___redundant_placeholder04
0while_while_cond_159786___redundant_placeholder14
0while_while_cond_159786___redundant_placeholder24
0while_while_cond_159786___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
?
$__inference_signature_wrapper_160353
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1579152
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_nameconv1d_4_input
?%
?
while_body_158028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_16_158052_0:@-
while_lstm_cell_16_158054_0:)
while_lstm_cell_16_158056_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_16_158052:@+
while_lstm_cell_16_158054:'
while_lstm_cell_16_158056:??*while/lstm_cell_16/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_158052_0while_lstm_cell_16_158054_0while_lstm_cell_16_158056_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????:?????????:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_1580142,
*while/lstm_cell_16/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
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
while_lstm_cell_16_158052while_lstm_cell_16_158052_0"8
while_lstm_cell_16_158054while_lstm_cell_16_158054_0"8
while_lstm_cell_16_158056while_lstm_cell_16_158056_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_158160

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity_2?
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
?:?????????@:?????????:?????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_namestates:OK
'
_output_shapes
:?????????
 
_user_specified_namestates
??
?
while_body_159983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@G
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_16_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@E
3while_lstm_cell_16_matmul_1_readvariableop_resource:@
2while_lstm_cell_16_biasadd_readvariableop_resource:??)while/lstm_cell_16/BiasAdd/ReadVariableOp?(while/lstm_cell_16/MatMul/ReadVariableOp?*while/lstm_cell_16/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOp?
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul?
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp?
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/MatMul_1?
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add?
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOp?
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/BiasAdd?
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim?
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/lstm_cell_16/split?
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid?
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_1?
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul?
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu?
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_1?
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/add_1?
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Sigmoid_2?
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/Relu_1?
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2
while/lstm_cell_16/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????:?????????: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
r
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_161175

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indices?
MeanMeaninputsMean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
Meann
IdentityIdentityMean:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_10_layer_call_fn_161861

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_1594202
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_16_layer_call_fn_161828

inputs
unknown:@
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_1594072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_159255

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indices?
MeanMeaninputsMean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????@*
	keep_dims(2
Meane
IdentityIdentityMean:output:0*
T0*+
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_162083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162083___redundant_placeholder04
0while_while_cond_162083___redundant_placeholder14
0while_while_cond_162083___redundant_placeholder24
0while_while_cond_162083___redundant_placeholder3
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
@: : : : :?????????:?????????: ::::: 
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
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
:
?
e
F__inference_dropout_11_layer_call_and_return_conditional_losses_162531

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
conv1d_4_input;
 serving_default_conv1d_4_input:0?????????A
	reshape_84
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
trainable_variables
	variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
 	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
!cell
"
state_spec
#trainable_variables
$	variables
%regularization_losses
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
+cell
,
state_spec
-trainable_variables
.	variables
/regularization_losses
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

;kernel
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_ratem?m?m?m?5m?6m?;m?Im?Jm?Km?Lm?Mm?Nm?v?v?v?v?5v?6v?;v?Iv?Jv?Kv?Lv?Mv?Nv?"
	optimizer
~
0
1
2
3
I4
J5
K6
L7
M8
N9
510
611
;12"
trackable_list_wrapper
~
0
1
2
3
I4
J5
K6
L7
M8
N9
510
611
;12"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Olayer_regularization_losses
Pmetrics
Qnon_trainable_variables
Rlayer_metrics
trainable_variables
	variables
regularization_losses

Slayers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
%:# 2conv1d_4/kernel
: 2conv1d_4/bias
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
Tlayer_regularization_losses
	variables
Unon_trainable_variables
Vlayer_metrics
trainable_variables
Wmetrics
regularization_losses

Xlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_5/kernel
:@2conv1d_5/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ylayer_regularization_losses
	variables
Znon_trainable_variables
[layer_metrics
trainable_variables
\metrics
regularization_losses

]layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
^layer_regularization_losses
	variables
_non_trainable_variables
`layer_metrics
trainable_variables
ametrics
regularization_losses

blayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
c
state_size

Ikernel
Jrecurrent_kernel
Kbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hlayer_regularization_losses
imetrics

jstates
knon_trainable_variables
llayer_metrics
#trainable_variables
$	variables
%regularization_losses

mlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
nlayer_regularization_losses
'	variables
onon_trainable_variables
player_metrics
(trainable_variables
qmetrics
)regularization_losses

rlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
s
state_size

Lkernel
Mrecurrent_kernel
Nbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
L0
M1
N2"
trackable_list_wrapper
5
L0
M1
N2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xlayer_regularization_losses
ymetrics

zstates
{non_trainable_variables
|layer_metrics
-trainable_variables
.	variables
/regularization_losses

}layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~layer_regularization_losses
1	variables
non_trainable_variables
?layer_metrics
2trainable_variables
?metrics
3regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_16/kernel
:2dense_16/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
7	variables
?non_trainable_variables
?layer_metrics
8trainable_variables
?metrics
9regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_17/kernel
'
;0"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
<	variables
?non_trainable_variables
?layer_metrics
=trainable_variables
?metrics
>regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
@	variables
?non_trainable_variables
?layer_metrics
Atrainable_variables
?metrics
Bregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2lstm_16/lstm_cell_16/kernel
7:52%lstm_16/lstm_cell_16/recurrent_kernel
':%2lstm_16/lstm_cell_16/bias
-:+2lstm_17/lstm_cell_17/kernel
7:52%lstm_17/lstm_cell_17/recurrent_kernel
':%2lstm_17/lstm_cell_17/bias
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
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
5
I0
J1
K2"
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
d	variables
?non_trainable_variables
?layer_metrics
etrainable_variables
?metrics
fregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
!0"
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
5
L0
M1
N2"
trackable_list_wrapper
5
L0
M1
N2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
t	variables
?non_trainable_variables
?layer_metrics
utrainable_variables
?metrics
vregularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
+0"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
*:( 2Adam/conv1d_4/kernel/m
 : 2Adam/conv1d_4/bias/m
*:( @2Adam/conv1d_5/kernel/m
 :@2Adam/conv1d_5/bias/m
&:$2Adam/dense_16/kernel/m
 :2Adam/dense_16/bias/m
&:$2Adam/dense_17/kernel/m
2:0@2"Adam/lstm_16/lstm_cell_16/kernel/m
<::2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
,:*2 Adam/lstm_16/lstm_cell_16/bias/m
2:02"Adam/lstm_17/lstm_cell_17/kernel/m
<::2,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
,:*2 Adam/lstm_17/lstm_cell_17/bias/m
*:( 2Adam/conv1d_4/kernel/v
 : 2Adam/conv1d_4/bias/v
*:( @2Adam/conv1d_5/kernel/v
 :@2Adam/conv1d_5/bias/v
&:$2Adam/dense_16/kernel/v
 :2Adam/dense_16/bias/v
&:$2Adam/dense_17/kernel/v
2:0@2"Adam/lstm_16/lstm_cell_16/kernel/v
<::2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
,:*2 Adam/lstm_16/lstm_cell_16/bias/v
2:02"Adam/lstm_17/lstm_cell_17/kernel/v
<::2,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
,:*2 Adam/lstm_17/lstm_cell_17/bias/v
?2?
H__inference_sequential_5_layer_call_and_return_conditional_losses_160698
H__inference_sequential_5_layer_call_and_return_conditional_losses_161057
H__inference_sequential_5_layer_call_and_return_conditional_losses_160274
H__inference_sequential_5_layer_call_and_return_conditional_losses_160314?
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
!__inference__wrapped_model_157915conv1d_4_input"?
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
-__inference_sequential_5_layer_call_fn_159660
-__inference_sequential_5_layer_call_fn_161088
-__inference_sequential_5_layer_call_fn_161119
-__inference_sequential_5_layer_call_fn_160234?
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
D__inference_conv1d_4_layer_call_and_return_conditional_losses_161135?
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
)__inference_conv1d_4_layer_call_fn_161144?
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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_161160?
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
)__inference_conv1d_5_layer_call_fn_161169?
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
?2?
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_161175
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_161181?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_global_average_pooling1d_2_layer_call_fn_161186
;__inference_global_average_pooling1d_2_layer_call_fn_161191?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161342
C__inference_lstm_16_layer_call_and_return_conditional_losses_161493
C__inference_lstm_16_layer_call_and_return_conditional_losses_161644
C__inference_lstm_16_layer_call_and_return_conditional_losses_161795?
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
(__inference_lstm_16_layer_call_fn_161806
(__inference_lstm_16_layer_call_fn_161817
(__inference_lstm_16_layer_call_fn_161828
(__inference_lstm_16_layer_call_fn_161839?
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
F__inference_dropout_10_layer_call_and_return_conditional_losses_161844
F__inference_dropout_10_layer_call_and_return_conditional_losses_161856?
???
FullArgSpec)
args!?
jself
jinputs

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
+__inference_dropout_10_layer_call_fn_161861
+__inference_dropout_10_layer_call_fn_161866?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162017
C__inference_lstm_17_layer_call_and_return_conditional_losses_162168
C__inference_lstm_17_layer_call_and_return_conditional_losses_162319
C__inference_lstm_17_layer_call_and_return_conditional_losses_162470?
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
(__inference_lstm_17_layer_call_fn_162481
(__inference_lstm_17_layer_call_fn_162492
(__inference_lstm_17_layer_call_fn_162503
(__inference_lstm_17_layer_call_fn_162514?
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
F__inference_dropout_11_layer_call_and_return_conditional_losses_162519
F__inference_dropout_11_layer_call_and_return_conditional_losses_162531?
???
FullArgSpec)
args!?
jself
jinputs

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
+__inference_dropout_11_layer_call_fn_162536
+__inference_dropout_11_layer_call_fn_162541?
???
FullArgSpec)
args!?
jself
jinputs

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
D__inference_dense_16_layer_call_and_return_conditional_losses_162552?
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
)__inference_dense_16_layer_call_fn_162561?
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
D__inference_dense_17_layer_call_and_return_conditional_losses_162568?
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
)__inference_dense_17_layer_call_fn_162575?
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_162588?
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
*__inference_reshape_8_layer_call_fn_162593?
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
$__inference_signature_wrapper_160353conv1d_4_input"?
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
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_162625
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_162657?
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
-__inference_lstm_cell_16_layer_call_fn_162674
-__inference_lstm_cell_16_layer_call_fn_162691?
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
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_162723
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_162755?
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
-__inference_lstm_cell_17_layer_call_fn_162772
-__inference_lstm_cell_17_layer_call_fn_162789?
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
 ?
!__inference__wrapped_model_157915?IJKLMN56;;?8
1?.
,?)
conv1d_4_input?????????
? "9?6
4
	reshape_8'?$
	reshape_8??????????
D__inference_conv1d_4_layer_call_and_return_conditional_losses_161135d3?0
)?&
$?!
inputs?????????
? ")?&
?
0????????? 
? ?
)__inference_conv1d_4_layer_call_fn_161144W3?0
)?&
$?!
inputs?????????
? "?????????? ?
D__inference_conv1d_5_layer_call_and_return_conditional_losses_161160d3?0
)?&
$?!
inputs????????? 
? ")?&
?
0?????????@
? ?
)__inference_conv1d_5_layer_call_fn_161169W3?0
)?&
$?!
inputs????????? 
? "??????????@?
D__inference_dense_16_layer_call_and_return_conditional_losses_162552\56/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_16_layer_call_fn_162561O56/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_17_layer_call_and_return_conditional_losses_162568[;/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
)__inference_dense_17_layer_call_fn_162575N;/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_10_layer_call_and_return_conditional_losses_161844d7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
F__inference_dropout_10_layer_call_and_return_conditional_losses_161856d7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
+__inference_dropout_10_layer_call_fn_161861W7?4
-?*
$?!
inputs?????????
p 
? "???????????
+__inference_dropout_10_layer_call_fn_161866W7?4
-?*
$?!
inputs?????????
p
? "???????????
F__inference_dropout_11_layer_call_and_return_conditional_losses_162519\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
F__inference_dropout_11_layer_call_and_return_conditional_losses_162531\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ~
+__inference_dropout_11_layer_call_fn_162536O3?0
)?&
 ?
inputs?????????
p 
? "??????????~
+__inference_dropout_11_layer_call_fn_162541O3?0
)?&
 ?
inputs?????????
p
? "???????????
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_161175I?F
??<
6?3
inputs'???????????????????????????

 
? "2?/
(?%
0??????????????????
? ?
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_161181d7?4
-?*
$?!
inputs?????????@

 
? ")?&
?
0?????????@
? ?
;__inference_global_average_pooling1d_2_layer_call_fn_161186rI?F
??<
6?3
inputs'???????????????????????????

 
? "%?"???????????????????
;__inference_global_average_pooling1d_2_layer_call_fn_161191W7?4
-?*
$?!
inputs?????????@

 
? "??????????@?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161342?IJKO?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "2?/
(?%
0??????????????????
? ?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161493?IJKO?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "2?/
(?%
0??????????????????
? ?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161644qIJK??<
5?2
$?!
inputs?????????@

 
p 

 
? ")?&
?
0?????????
? ?
C__inference_lstm_16_layer_call_and_return_conditional_losses_161795qIJK??<
5?2
$?!
inputs?????????@

 
p

 
? ")?&
?
0?????????
? ?
(__inference_lstm_16_layer_call_fn_161806}IJKO?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "%?"???????????????????
(__inference_lstm_16_layer_call_fn_161817}IJKO?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "%?"???????????????????
(__inference_lstm_16_layer_call_fn_161828dIJK??<
5?2
$?!
inputs?????????@

 
p 

 
? "???????????
(__inference_lstm_16_layer_call_fn_161839dIJK??<
5?2
$?!
inputs?????????@

 
p

 
? "???????????
C__inference_lstm_17_layer_call_and_return_conditional_losses_162017}LMNO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0?????????
? ?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162168}LMNO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0?????????
? ?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162319mLMN??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0?????????
? ?
C__inference_lstm_17_layer_call_and_return_conditional_losses_162470mLMN??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0?????????
? ?
(__inference_lstm_17_layer_call_fn_162481pLMNO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "???????????
(__inference_lstm_17_layer_call_fn_162492pLMNO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "???????????
(__inference_lstm_17_layer_call_fn_162503`LMN??<
5?2
$?!
inputs?????????

 
p 

 
? "???????????
(__inference_lstm_17_layer_call_fn_162514`LMN??<
5?2
$?!
inputs?????????

 
p

 
? "???????????
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_162625?IJK??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_162657?IJK??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????
"?
states/1?????????
p
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
-__inference_lstm_cell_16_layer_call_fn_162674?IJK??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
-__inference_lstm_cell_16_layer_call_fn_162691?IJK??}
v?s
 ?
inputs?????????@
K?H
"?
states/0?????????
"?
states/1?????????
p
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_162723?LMN??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_162755?LMN??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p
? "s?p
i?f
?
0/0?????????
E?B
?
0/1/0?????????
?
0/1/1?????????
? ?
-__inference_lstm_cell_17_layer_call_fn_162772?LMN??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p 
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
-__inference_lstm_cell_17_layer_call_fn_162789?LMN??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????
"?
states/1?????????
p
? "c?`
?
0?????????
A?>
?
1/0?????????
?
1/1??????????
E__inference_reshape_8_layer_call_and_return_conditional_losses_162588\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? }
*__inference_reshape_8_layer_call_fn_162593O/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_sequential_5_layer_call_and_return_conditional_losses_160274IJKLMN56;C?@
9?6
,?)
conv1d_4_input?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_160314IJKLMN56;C?@
9?6
,?)
conv1d_4_input?????????
p

 
? ")?&
?
0?????????
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_160698wIJKLMN56;;?8
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
H__inference_sequential_5_layer_call_and_return_conditional_losses_161057wIJKLMN56;;?8
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
-__inference_sequential_5_layer_call_fn_159660rIJKLMN56;C?@
9?6
,?)
conv1d_4_input?????????
p 

 
? "???????????
-__inference_sequential_5_layer_call_fn_160234rIJKLMN56;C?@
9?6
,?)
conv1d_4_input?????????
p

 
? "???????????
-__inference_sequential_5_layer_call_fn_161088jIJKLMN56;;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_5_layer_call_fn_161119jIJKLMN56;;?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_160353?IJKLMN56;M?J
? 
C?@
>
conv1d_4_input,?)
conv1d_4_input?????????"9?6
4
	reshape_8'?$
	reshape_8?????????