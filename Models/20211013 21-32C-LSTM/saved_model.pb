¡¸*
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8´¶(
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
: *
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
shape: @* 
shared_nameconv1d_5/kernel
w
#conv1d_5/kernel/Read/ReadVariableOpReadVariableOpconv1d_5/kernel*"
_output_shapes
: @*
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
:* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:*
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
lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@p*,
shared_namelstm_16/lstm_cell_16/kernel

/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/kernel*
_output_shapes

:@p*
dtype0
¦
%lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:p*6
shared_name'%lstm_16/lstm_cell_16/recurrent_kernel

9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_16/lstm_cell_16/recurrent_kernel*
_output_shapes

:p*
dtype0

lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:p**
shared_namelstm_16/lstm_cell_16/bias

-lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/bias*
_output_shapes
:p*
dtype0

lstm_17/lstm_cell_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*,
shared_namelstm_17/lstm_cell_17/kernel

/lstm_17/lstm_cell_17/kernel/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/kernel*
_output_shapes

:8*
dtype0
¦
%lstm_17/lstm_cell_17/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*6
shared_name'%lstm_17/lstm_cell_17/recurrent_kernel

9lstm_17/lstm_cell_17/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_17/lstm_cell_17/recurrent_kernel*
_output_shapes

:8*
dtype0

lstm_17/lstm_cell_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:8**
shared_namelstm_17/lstm_cell_17/bias

-lstm_17/lstm_cell_17/bias/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/bias*
_output_shapes
:8*
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
Adam/conv1d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_4/kernel/m

*Adam/conv1d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/m*"
_output_shapes
: *
dtype0

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

Adam/conv1d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_5/kernel/m

*Adam/conv1d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/kernel/m*"
_output_shapes
: @*
dtype0

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

Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_16/kernel/m

*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/m
y
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes
:*
dtype0

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

:*
dtype0
 
"Adam/lstm_16/lstm_cell_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@p*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/m

6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/m*
_output_shapes

:@p*
dtype0
´
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:p*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
­
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m*
_output_shapes

:p*
dtype0

 Adam/lstm_16/lstm_cell_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:p*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/m

4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/m*
_output_shapes
:p*
dtype0
 
"Adam/lstm_17/lstm_cell_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/m

6Adam/lstm_17/lstm_cell_17/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/m*
_output_shapes

:8*
dtype0
´
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
­
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m*
_output_shapes

:8*
dtype0

 Adam/lstm_17/lstm_cell_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/m

4Adam/lstm_17/lstm_cell_17/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/m*
_output_shapes
:8*
dtype0

Adam/conv1d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_4/kernel/v

*Adam/conv1d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/v*"
_output_shapes
: *
dtype0

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

Adam/conv1d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_5/kernel/v

*Adam/conv1d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/kernel/v*"
_output_shapes
: @*
dtype0

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

Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_16/kernel/v

*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/v
y
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes
:*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

:*
dtype0
 
"Adam/lstm_16/lstm_cell_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@p*3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/v

6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/v*
_output_shapes

:@p*
dtype0
´
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:p*=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
­
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v*
_output_shapes

:p*
dtype0

 Adam/lstm_16/lstm_cell_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:p*1
shared_name" Adam/lstm_16/lstm_cell_16/bias/v

4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/v*
_output_shapes
:p*
dtype0
 
"Adam/lstm_17/lstm_cell_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/v

6Adam/lstm_17/lstm_cell_17/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/v*
_output_shapes

:8*
dtype0
´
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
­
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v*
_output_shapes

:8*
dtype0

 Adam/lstm_17/lstm_cell_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/v

4Adam/lstm_17/lstm_cell_17/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/v*
_output_shapes
:8*
dtype0

NoOpNoOp
µM
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ðL
valueæLBãL BÜL
õ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
		optimizer

regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
l
cell
 
state_spec
!regularization_losses
"trainable_variables
#	variables
$	keras_api
l
%cell
&
state_spec
'regularization_losses
(trainable_variables
)	variables
*	keras_api
h

+kernel
,bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
^

1kernel
2regularization_losses
3trainable_variables
4	variables
5	keras_api
R
6regularization_losses
7trainable_variables
8	variables
9	keras_api
Ä
:iter

;beta_1

<beta_2
	=decay
>learning_ratemmmm+m,m1m?m@mAmBmCmDmvvvv+v,v1v ?v¡@v¢Av£Bv¤Cv¥Dv¦
 
^
0
1
2
3
?4
@5
A6
B7
C8
D9
+10
,11
112
^
0
1
2
3
?4
@5
A6
B7
C8
D9
+10
,11
112
­
Elayer_metrics

Flayers

regularization_losses
Gnon_trainable_variables
trainable_variables
	variables
Hlayer_regularization_losses
Imetrics
 
[Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Jlayer_metrics

Klayers
regularization_losses
Lnon_trainable_variables
trainable_variables
	variables
Mlayer_regularization_losses
Nmetrics
[Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Olayer_metrics

Players
regularization_losses
Qnon_trainable_variables
trainable_variables
	variables
Rlayer_regularization_losses
Smetrics
 
 
 
­
Tlayer_metrics

Ulayers
regularization_losses
Vnon_trainable_variables
trainable_variables
	variables
Wlayer_regularization_losses
Xmetrics

Y
state_size

?kernel
@recurrent_kernel
Abias
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
 
 

?0
@1
A2

?0
@1
A2
¹
^layer_metrics

_layers

`states
!regularization_losses
anon_trainable_variables
"trainable_variables
#	variables
blayer_regularization_losses
cmetrics

d
state_size

Bkernel
Crecurrent_kernel
Dbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
 
 

B0
C1
D2

B0
C1
D2
¹
ilayer_metrics

jlayers

kstates
'regularization_losses
lnon_trainable_variables
(trainable_variables
)	variables
mlayer_regularization_losses
nmetrics
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
­
olayer_metrics

players
-regularization_losses
qnon_trainable_variables
.trainable_variables
/	variables
rlayer_regularization_losses
smetrics
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

10

10
­
tlayer_metrics

ulayers
2regularization_losses
vnon_trainable_variables
3trainable_variables
4	variables
wlayer_regularization_losses
xmetrics
 
 
 
­
ylayer_metrics

zlayers
6regularization_losses
{non_trainable_variables
7trainable_variables
8	variables
|layer_regularization_losses
}metrics
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
8
0
1
2
3
4
5
6
7
 
 

~0
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
?0
@1
A2

?0
@1
A2
±
layer_metrics
layers
Zregularization_losses
non_trainable_variables
[trainable_variables
\	variables
 layer_regularization_losses
metrics
 

0
 
 
 
 
 
 

B0
C1
D2

B0
C1
D2
²
layer_metrics
layers
eregularization_losses
non_trainable_variables
ftrainable_variables
g	variables
 layer_regularization_losses
metrics
 

%0
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

total

count
	variables
	keras_api
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
0
1

	variables
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

VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

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

VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_17/lstm_cell_17/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv1d_4_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_4_inputconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biaslstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biaslstm_17/lstm_cell_17/kernel%lstm_17/lstm_cell_17/recurrent_kernellstm_17/lstm_cell_17/biasdense_16/kerneldense_16/biasdense_17/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_248878
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
÷
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
GPU 2J 8 *(
f#R!
__inference__traced_save_251411
Ú
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_251559¶á&
õ(
ì
H__inference_sequential_5_layer_call_and_return_conditional_losses_248703

inputs%
conv1d_4_248668: 
conv1d_4_248670: %
conv1d_5_248673: @
conv1d_5_248675:@ 
lstm_16_248679:@p 
lstm_16_248681:p
lstm_16_248683:p 
lstm_17_248686:8 
lstm_17_248688:8
lstm_17_248690:8!
dense_16_248693:
dense_16_248695:!
dense_17_248698:
identity¢ conv1d_4/StatefulPartitionedCall¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢lstm_16/StatefulPartitionedCall¢lstm_17/StatefulPartitionedCall
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_248668conv1d_4_248670*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_2478112"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_248673conv1d_5_248675*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_2478332"
 conv1d_5/StatefulPartitionedCall
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_2478462!
max_pooling1d_2/PartitionedCallÇ
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_16_248679lstm_16_248681lstm_16_248683*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2485982!
lstm_16/StatefulPartitionedCallÃ
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_248686lstm_17_248688lstm_17_248690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2484252!
lstm_17/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_16_248693dense_16_248695*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_2481752"
 dense_16/StatefulPartitionedCall¤
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_248698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_2481882"
 dense_17/StatefulPartitionedCallþ
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_2482052
reshape_8/PartitionedCall
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_250074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250074___redundant_placeholder04
0while_while_cond_250074___redundant_placeholder14
0while_while_cond_250074___redundant_placeholder24
0while_while_cond_250074___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_247246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247246___redundant_placeholder04
0while_while_cond_247246___redundant_placeholder14
0while_while_cond_247246___redundant_placeholder24
0while_while_cond_247246___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
é

H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_246603

inputs

states
states_10
matmul_readvariableop_resource:@p2
 matmul_1_readvariableop_resource:p-
biasadd_readvariableop_resource:p
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@p*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:p*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ü[

C__inference_lstm_17_layer_call_and_return_conditional_losses_248425

inputs=
+lstm_cell_17_matmul_readvariableop_resource:8?
-lstm_cell_17_matmul_1_readvariableop_resource:8:
,lstm_cell_17_biasadd_readvariableop_resource:8
identity¢#lstm_cell_17/BiasAdd/ReadVariableOp¢"lstm_cell_17/MatMul/ReadVariableOp¢$lstm_cell_17/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp¬
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMulº
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp¨
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMul_1
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/add³
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp¬
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dimó
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_17/split
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_1
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_1
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/add_1
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu_1 
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_248341*
condR
while_cond_248340*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_250225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250225___redundant_placeholder04
0while_while_cond_250225___redundant_placeholder14
0while_while_cond_250225___redundant_placeholder24
0while_while_cond_250225___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

a
E__inference_reshape_8_layer_call_and_return_conditional_losses_251049

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
ç
ý
H__inference_sequential_5_layer_call_and_return_conditional_losses_249568

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_5_biasadd_readvariableop_resource:@E
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:@pG
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:pB
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:pE
3lstm_17_lstm_cell_17_matmul_readvariableop_resource:8G
5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:8B
4lstm_17_lstm_cell_17_biasadd_readvariableop_resource:89
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:
identity¢conv1d_4/BiasAdd/ReadVariableOp¢+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_5/BiasAdd/ReadVariableOp¢+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp¢*lstm_16/lstm_cell_16/MatMul/ReadVariableOp¢,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp¢lstm_16/while¢+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp¢*lstm_17/lstm_cell_17/MatMul/ReadVariableOp¢,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp¢lstm_17/while
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_4/conv1d/ExpandDims/dim±
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/ExpandDimsÓ
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dimÛ
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_4/conv1d/ExpandDims_1Û
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv1d_4/conv1d­
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/Squeeze§
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_4/BiasAdd/ReadVariableOp°
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_4/BiasAddw
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_4/Relu
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_5/conv1d/ExpandDims/dimÆ
conv1d_5/conv1d/ExpandDims
ExpandDimsconv1d_4/Relu:activations:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_5/conv1d/ExpandDimsÓ
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dimÛ
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_5/conv1d/ExpandDims_1Û
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
conv1d_5/conv1d­
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_5/conv1d/Squeeze§
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_5/BiasAdd/ReadVariableOp°
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_5/BiasAddw
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_5/Relu
max_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_2/ExpandDims/dimÆ
max_pooling1d_2/ExpandDims
ExpandDimsconv1d_5/Relu:activations:0'max_pooling1d_2/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
max_pooling1d_2/ExpandDimsÏ
max_pooling1d_2/MaxPoolMaxPool#max_pooling1d_2/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling1d_2/MaxPool¬
max_pooling1d_2/SqueezeSqueeze max_pooling1d_2/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_2/Squeezen
lstm_16/ShapeShape max_pooling1d_2/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_16/Shape
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice/stack
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_1
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_2
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
value	B :2
lstm_16/zeros/mul/y
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
B :è2
lstm_16/zeros/Less/y
lstm_16/zeros/LessLesslstm_16/zeros/mul:z:0lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/Lessr
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/packed/1£
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
lstm_16/zeros/Const
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/zerosp
lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/mul/y
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
B :è2
lstm_16/zeros_1/Less/y
lstm_16/zeros_1/LessLesslstm_16/zeros_1/mul:z:0lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/Lessv
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/packed/1©
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
lstm_16/zeros_1/Const
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/zeros_1
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose/perm¬
lstm_16/transpose	Transpose max_pooling1d_2/Squeeze:output:0lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_16/transposeg
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:2
lstm_16/Shape_1
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_1/stack
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_1
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_2
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slice_1
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_16/TensorArrayV2/element_shapeÒ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2Ï
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_16/TensorArrayUnstack/TensorListFromTensor
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_2/stack
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_1
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_2¬
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_16/strided_slice_2Ì
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02,
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpÌ
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/MatMulÒ
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02.
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpÈ
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/MatMul_1¿
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/addË
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02-
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpÌ
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/BiasAdd
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_16/lstm_cell_16/split/split_dim
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_16/lstm_cell_16/split
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/Sigmoid¢
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_16/lstm_cell_16/Sigmoid_1«
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/mul
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/Relu¼
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/mul_1±
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/add_1¢
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_16/lstm_cell_16/Sigmoid_2
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/Relu_1À
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/mul_2
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_16/TensorArrayV2_1/element_shapeØ
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
lstm_16/time
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/maximum_iterationsz
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/while/loop_counter
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_16_while_body_249318*%
condR
lstm_16_while_cond_249317*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_16/whileÅ
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_16/TensorArrayV2Stack/TensorListStack
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_16/strided_slice_3/stack
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_16/strided_slice_3/stack_1
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_3/stack_2Ê
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_16/strided_slice_3
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose_1/permÅ
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/transpose_1v
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/runtimee
lstm_17/ShapeShapelstm_16/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_17/Shape
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice/stack
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_1
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_2
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
value	B :2
lstm_17/zeros/mul/y
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
B :è2
lstm_17/zeros/Less/y
lstm_17/zeros/LessLesslstm_17/zeros/mul:z:0lstm_17/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros/Lessr
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros/packed/1£
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
lstm_17/zeros/Const
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/zerosp
lstm_17/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/mul/y
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
B :è2
lstm_17/zeros_1/Less/y
lstm_17/zeros_1/LessLesslstm_17/zeros_1/mul:z:0lstm_17/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros_1/Lessv
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/packed/1©
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
lstm_17/zeros_1/Const
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/zeros_1
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose/perm£
lstm_17/transpose	Transposelstm_16/transpose_1:y:0lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/transposeg
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:2
lstm_17/Shape_1
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_1/stack
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_1
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_2
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_17/strided_slice_1
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_17/TensorArrayV2/element_shapeÒ
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_17/TensorArrayV2Ï
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_17/TensorArrayUnstack/TensorListFromTensor
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_2/stack
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_1
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_2¬
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_17/strided_slice_2Ì
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_17_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02,
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpÌ
lstm_17/lstm_cell_17/MatMulMatMul lstm_17/strided_slice_2:output:02lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/MatMulÒ
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02.
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpÈ
lstm_17/lstm_cell_17/MatMul_1MatMullstm_17/zeros:output:04lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/MatMul_1¿
lstm_17/lstm_cell_17/addAddV2%lstm_17/lstm_cell_17/MatMul:product:0'lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/addË
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02-
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpÌ
lstm_17/lstm_cell_17/BiasAddBiasAddlstm_17/lstm_cell_17/add:z:03lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/BiasAdd
$lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_17/lstm_cell_17/split/split_dim
lstm_17/lstm_cell_17/splitSplit-lstm_17/lstm_cell_17/split/split_dim:output:0%lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_17/lstm_cell_17/split
lstm_17/lstm_cell_17/SigmoidSigmoid#lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/Sigmoid¢
lstm_17/lstm_cell_17/Sigmoid_1Sigmoid#lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_17/lstm_cell_17/Sigmoid_1«
lstm_17/lstm_cell_17/mulMul"lstm_17/lstm_cell_17/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/mul
lstm_17/lstm_cell_17/ReluRelu#lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/Relu¼
lstm_17/lstm_cell_17/mul_1Mul lstm_17/lstm_cell_17/Sigmoid:y:0'lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/mul_1±
lstm_17/lstm_cell_17/add_1AddV2lstm_17/lstm_cell_17/mul:z:0lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/add_1¢
lstm_17/lstm_cell_17/Sigmoid_2Sigmoid#lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_17/lstm_cell_17/Sigmoid_2
lstm_17/lstm_cell_17/Relu_1Relulstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/Relu_1À
lstm_17/lstm_cell_17/mul_2Mul"lstm_17/lstm_cell_17/Sigmoid_2:y:0)lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/mul_2
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_17/TensorArrayV2_1/element_shapeØ
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
lstm_17/time
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/maximum_iterationsz
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_17/while/loop_counter
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_17_lstm_cell_17_matmul_readvariableop_resource5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_17_while_body_249465*%
condR
lstm_17_while_cond_249464*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_17/whileÅ
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_17/TensorArrayV2Stack/TensorListStack
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_17/strided_slice_3/stack
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_17/strided_slice_3/stack_1
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_3/stack_2Ê
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_17/strided_slice_3
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose_1/permÅ
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/transpose_1v
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/runtime¨
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_16/MatMul/ReadVariableOp¨
dense_16/MatMulMatMul lstm_17/strided_slice_3:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_16/MatMul§
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_16/BiasAdd/ReadVariableOp¥
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_16/BiasAdds
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_16/Relu¨
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_17/MatMul/ReadVariableOp£
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/MatMulk
reshape_8/ShapeShapedense_17/MatMul:product:0*
T0*
_output_shapes
:2
reshape_8/Shape
reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_8/strided_slice/stack
reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_1
reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_2
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
reshape_8/Reshape/shape/2Ò
reshape_8/Reshape/shapePack reshape_8/strided_slice:output:0"reshape_8/Reshape/shape/1:output:0"reshape_8/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_8/Reshape/shape¤
reshape_8/ReshapeReshapedense_17/MatMul:product:0 reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_8/Reshapey
IdentityIdentityreshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while,^lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_17/lstm_cell_17/MatMul/ReadVariableOp-^lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2B
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
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_250722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250722___redundant_placeholder04
0while_while_cond_250722___redundant_placeholder14
0while_while_cond_250722___redundant_placeholder24
0while_while_cond_250722___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÒÕ
Ê
!__inference__wrapped_model_246500
conv1d_4_inputW
Asequential_5_conv1d_4_conv1d_expanddims_1_readvariableop_resource: C
5sequential_5_conv1d_4_biasadd_readvariableop_resource: W
Asequential_5_conv1d_5_conv1d_expanddims_1_readvariableop_resource: @C
5sequential_5_conv1d_5_biasadd_readvariableop_resource:@R
@sequential_5_lstm_16_lstm_cell_16_matmul_readvariableop_resource:@pT
Bsequential_5_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:pO
Asequential_5_lstm_16_lstm_cell_16_biasadd_readvariableop_resource:pR
@sequential_5_lstm_17_lstm_cell_17_matmul_readvariableop_resource:8T
Bsequential_5_lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:8O
Asequential_5_lstm_17_lstm_cell_17_biasadd_readvariableop_resource:8F
4sequential_5_dense_16_matmul_readvariableop_resource:C
5sequential_5_dense_16_biasadd_readvariableop_resource:F
4sequential_5_dense_17_matmul_readvariableop_resource:
identity¢,sequential_5/conv1d_4/BiasAdd/ReadVariableOp¢8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_5/conv1d_5/BiasAdd/ReadVariableOp¢8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_5/dense_16/BiasAdd/ReadVariableOp¢+sequential_5/dense_16/MatMul/ReadVariableOp¢+sequential_5/dense_17/MatMul/ReadVariableOp¢8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp¢7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp¢9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp¢sequential_5/lstm_16/while¢8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp¢7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp¢9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp¢sequential_5/lstm_17/while¥
+sequential_5/conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2-
+sequential_5/conv1d_4/conv1d/ExpandDims/dimà
'sequential_5/conv1d_4/conv1d/ExpandDims
ExpandDimsconv1d_4_input4sequential_5/conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/conv1d_4/conv1d/ExpandDimsú
8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_5_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02:
8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp 
-sequential_5/conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_5/conv1d_4/conv1d/ExpandDims_1/dim
)sequential_5/conv1d_4/conv1d/ExpandDims_1
ExpandDims@sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_5/conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2+
)sequential_5/conv1d_4/conv1d/ExpandDims_1
sequential_5/conv1d_4/conv1dConv2D0sequential_5/conv1d_4/conv1d/ExpandDims:output:02sequential_5/conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
sequential_5/conv1d_4/conv1dÔ
$sequential_5/conv1d_4/conv1d/SqueezeSqueeze%sequential_5/conv1d_4/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2&
$sequential_5/conv1d_4/conv1d/SqueezeÎ
,sequential_5/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_5/conv1d_4/BiasAdd/ReadVariableOpä
sequential_5/conv1d_4/BiasAddBiasAdd-sequential_5/conv1d_4/conv1d/Squeeze:output:04sequential_5/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_5/conv1d_4/BiasAdd
sequential_5/conv1d_4/ReluRelu&sequential_5/conv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_5/conv1d_4/Relu¥
+sequential_5/conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2-
+sequential_5/conv1d_5/conv1d/ExpandDims/dimú
'sequential_5/conv1d_5/conv1d/ExpandDims
ExpandDims(sequential_5/conv1d_4/Relu:activations:04sequential_5/conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_5/conv1d_5/conv1d/ExpandDimsú
8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_5_conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02:
8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp 
-sequential_5/conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_5/conv1d_5/conv1d/ExpandDims_1/dim
)sequential_5/conv1d_5/conv1d/ExpandDims_1
ExpandDims@sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_5/conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2+
)sequential_5/conv1d_5/conv1d/ExpandDims_1
sequential_5/conv1d_5/conv1dConv2D0sequential_5/conv1d_5/conv1d/ExpandDims:output:02sequential_5/conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
sequential_5/conv1d_5/conv1dÔ
$sequential_5/conv1d_5/conv1d/SqueezeSqueeze%sequential_5/conv1d_5/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2&
$sequential_5/conv1d_5/conv1d/SqueezeÎ
,sequential_5/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_5/conv1d_5/BiasAdd/ReadVariableOpä
sequential_5/conv1d_5/BiasAddBiasAdd-sequential_5/conv1d_5/conv1d/Squeeze:output:04sequential_5/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
sequential_5/conv1d_5/BiasAdd
sequential_5/conv1d_5/ReluRelu&sequential_5/conv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
sequential_5/conv1d_5/Relu
+sequential_5/max_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_5/max_pooling1d_2/ExpandDims/dimú
'sequential_5/max_pooling1d_2/ExpandDims
ExpandDims(sequential_5/conv1d_5/Relu:activations:04sequential_5/max_pooling1d_2/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2)
'sequential_5/max_pooling1d_2/ExpandDimsö
$sequential_5/max_pooling1d_2/MaxPoolMaxPool0sequential_5/max_pooling1d_2/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2&
$sequential_5/max_pooling1d_2/MaxPoolÓ
$sequential_5/max_pooling1d_2/SqueezeSqueeze-sequential_5/max_pooling1d_2/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2&
$sequential_5/max_pooling1d_2/Squeeze
sequential_5/lstm_16/ShapeShape-sequential_5/max_pooling1d_2/Squeeze:output:0*
T0*
_output_shapes
:2
sequential_5/lstm_16/Shape
(sequential_5/lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_16/strided_slice/stack¢
*sequential_5/lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_16/strided_slice/stack_1¢
*sequential_5/lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_16/strided_slice/stack_2à
"sequential_5/lstm_16/strided_sliceStridedSlice#sequential_5/lstm_16/Shape:output:01sequential_5/lstm_16/strided_slice/stack:output:03sequential_5/lstm_16/strided_slice/stack_1:output:03sequential_5/lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_16/strided_slice
 sequential_5/lstm_16/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_16/zeros/mul/yÀ
sequential_5/lstm_16/zeros/mulMul+sequential_5/lstm_16/strided_slice:output:0)sequential_5/lstm_16/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_16/zeros/mul
!sequential_5/lstm_16/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_5/lstm_16/zeros/Less/y»
sequential_5/lstm_16/zeros/LessLess"sequential_5/lstm_16/zeros/mul:z:0*sequential_5/lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_16/zeros/Less
#sequential_5/lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_5/lstm_16/zeros/packed/1×
!sequential_5/lstm_16/zeros/packedPack+sequential_5/lstm_16/strided_slice:output:0,sequential_5/lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_16/zeros/packed
 sequential_5/lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_16/zeros/ConstÉ
sequential_5/lstm_16/zerosFill*sequential_5/lstm_16/zeros/packed:output:0)sequential_5/lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/lstm_16/zeros
"sequential_5/lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_16/zeros_1/mul/yÆ
 sequential_5/lstm_16/zeros_1/mulMul+sequential_5/lstm_16/strided_slice:output:0+sequential_5/lstm_16/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_16/zeros_1/mul
#sequential_5/lstm_16/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_5/lstm_16/zeros_1/Less/yÃ
!sequential_5/lstm_16/zeros_1/LessLess$sequential_5/lstm_16/zeros_1/mul:z:0,sequential_5/lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_16/zeros_1/Less
%sequential_5/lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_5/lstm_16/zeros_1/packed/1Ý
#sequential_5/lstm_16/zeros_1/packedPack+sequential_5/lstm_16/strided_slice:output:0.sequential_5/lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_16/zeros_1/packed
"sequential_5/lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_16/zeros_1/ConstÑ
sequential_5/lstm_16/zeros_1Fill,sequential_5/lstm_16/zeros_1/packed:output:0+sequential_5/lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/lstm_16/zeros_1
#sequential_5/lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_16/transpose/permà
sequential_5/lstm_16/transpose	Transpose-sequential_5/max_pooling1d_2/Squeeze:output:0,sequential_5/lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_5/lstm_16/transpose
sequential_5/lstm_16/Shape_1Shape"sequential_5/lstm_16/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_16/Shape_1¢
*sequential_5/lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_16/strided_slice_1/stack¦
,sequential_5/lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_1/stack_1¦
,sequential_5/lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_1/stack_2ì
$sequential_5/lstm_16/strided_slice_1StridedSlice%sequential_5/lstm_16/Shape_1:output:03sequential_5/lstm_16/strided_slice_1/stack:output:05sequential_5/lstm_16/strided_slice_1/stack_1:output:05sequential_5/lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_16/strided_slice_1¯
0sequential_5/lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_5/lstm_16/TensorArrayV2/element_shape
"sequential_5/lstm_16/TensorArrayV2TensorListReserve9sequential_5/lstm_16/TensorArrayV2/element_shape:output:0-sequential_5/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_16/TensorArrayV2é
Jsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2L
Jsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_16/transpose:y:0Ssequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor¢
*sequential_5/lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_16/strided_slice_2/stack¦
,sequential_5/lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_2/stack_1¦
,sequential_5/lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_2/stack_2ú
$sequential_5/lstm_16/strided_slice_2StridedSlice"sequential_5/lstm_16/transpose:y:03sequential_5/lstm_16/strided_slice_2/stack:output:05sequential_5/lstm_16/strided_slice_2/stack_1:output:05sequential_5/lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2&
$sequential_5/lstm_16/strided_slice_2ó
7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype029
7sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp
(sequential_5/lstm_16/lstm_cell_16/MatMulMatMul-sequential_5/lstm_16/strided_slice_2:output:0?sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2*
(sequential_5/lstm_16/lstm_cell_16/MatMulù
9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02;
9sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpü
*sequential_5/lstm_16/lstm_cell_16/MatMul_1MatMul#sequential_5/lstm_16/zeros:output:0Asequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2,
*sequential_5/lstm_16/lstm_cell_16/MatMul_1ó
%sequential_5/lstm_16/lstm_cell_16/addAddV22sequential_5/lstm_16/lstm_cell_16/MatMul:product:04sequential_5/lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2'
%sequential_5/lstm_16/lstm_cell_16/addò
8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02:
8sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp
)sequential_5/lstm_16/lstm_cell_16/BiasAddBiasAdd)sequential_5/lstm_16/lstm_cell_16/add:z:0@sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2+
)sequential_5/lstm_16/lstm_cell_16/BiasAdd¨
1sequential_5/lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_16/lstm_cell_16/split/split_dimÇ
'sequential_5/lstm_16/lstm_cell_16/splitSplit:sequential_5/lstm_16/lstm_cell_16/split/split_dim:output:02sequential_5/lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2)
'sequential_5/lstm_16/lstm_cell_16/splitÅ
)sequential_5/lstm_16/lstm_cell_16/SigmoidSigmoid0sequential_5/lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_5/lstm_16/lstm_cell_16/SigmoidÉ
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_1Sigmoid0sequential_5/lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_1ß
%sequential_5/lstm_16/lstm_cell_16/mulMul/sequential_5/lstm_16/lstm_cell_16/Sigmoid_1:y:0%sequential_5/lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_5/lstm_16/lstm_cell_16/mul¼
&sequential_5/lstm_16/lstm_cell_16/ReluRelu0sequential_5/lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_5/lstm_16/lstm_cell_16/Reluð
'sequential_5/lstm_16/lstm_cell_16/mul_1Mul-sequential_5/lstm_16/lstm_cell_16/Sigmoid:y:04sequential_5/lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/lstm_16/lstm_cell_16/mul_1å
'sequential_5/lstm_16/lstm_cell_16/add_1AddV2)sequential_5/lstm_16/lstm_cell_16/mul:z:0+sequential_5/lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/lstm_16/lstm_cell_16/add_1É
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_2Sigmoid0sequential_5/lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_5/lstm_16/lstm_cell_16/Sigmoid_2»
(sequential_5/lstm_16/lstm_cell_16/Relu_1Relu+sequential_5/lstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_5/lstm_16/lstm_cell_16/Relu_1ô
'sequential_5/lstm_16/lstm_cell_16/mul_2Mul/sequential_5/lstm_16/lstm_cell_16/Sigmoid_2:y:06sequential_5/lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/lstm_16/lstm_cell_16/mul_2¹
2sequential_5/lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2sequential_5/lstm_16/TensorArrayV2_1/element_shape
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
sequential_5/lstm_16/time©
-sequential_5/lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_16/while/maximum_iterations
'sequential_5/lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_16/while/loop_counterÆ
sequential_5/lstm_16/whileWhile0sequential_5/lstm_16/while/loop_counter:output:06sequential_5/lstm_16/while/maximum_iterations:output:0"sequential_5/lstm_16/time:output:0-sequential_5/lstm_16/TensorArrayV2_1:handle:0#sequential_5/lstm_16/zeros:output:0%sequential_5/lstm_16/zeros_1:output:0-sequential_5/lstm_16/strided_slice_1:output:0Lsequential_5/lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_16_lstm_cell_16_matmul_readvariableop_resourceBsequential_5_lstm_16_lstm_cell_16_matmul_1_readvariableop_resourceAsequential_5_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_16_while_body_246250*2
cond*R(
&sequential_5_lstm_16_while_cond_246249*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_5/lstm_16/whileß
Esequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Esequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_5/lstm_16/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_16/while:output:3Nsequential_5/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack«
*sequential_5/lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_5/lstm_16/strided_slice_3/stack¦
,sequential_5/lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_16/strided_slice_3/stack_1¦
,sequential_5/lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_16/strided_slice_3/stack_2
$sequential_5/lstm_16/strided_slice_3StridedSlice@sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_16/strided_slice_3/stack:output:05sequential_5/lstm_16/strided_slice_3/stack_1:output:05sequential_5/lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_5/lstm_16/strided_slice_3£
%sequential_5/lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_16/transpose_1/permù
 sequential_5/lstm_16/transpose_1	Transpose@sequential_5/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_5/lstm_16/transpose_1
sequential_5/lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_16/runtime
sequential_5/lstm_17/ShapeShape$sequential_5/lstm_16/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_17/Shape
(sequential_5/lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_17/strided_slice/stack¢
*sequential_5/lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_17/strided_slice/stack_1¢
*sequential_5/lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_17/strided_slice/stack_2à
"sequential_5/lstm_17/strided_sliceStridedSlice#sequential_5/lstm_17/Shape:output:01sequential_5/lstm_17/strided_slice/stack:output:03sequential_5/lstm_17/strided_slice/stack_1:output:03sequential_5/lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_17/strided_slice
 sequential_5/lstm_17/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_17/zeros/mul/yÀ
sequential_5/lstm_17/zeros/mulMul+sequential_5/lstm_17/strided_slice:output:0)sequential_5/lstm_17/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_17/zeros/mul
!sequential_5/lstm_17/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_5/lstm_17/zeros/Less/y»
sequential_5/lstm_17/zeros/LessLess"sequential_5/lstm_17/zeros/mul:z:0*sequential_5/lstm_17/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_17/zeros/Less
#sequential_5/lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_5/lstm_17/zeros/packed/1×
!sequential_5/lstm_17/zeros/packedPack+sequential_5/lstm_17/strided_slice:output:0,sequential_5/lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_17/zeros/packed
 sequential_5/lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_17/zeros/ConstÉ
sequential_5/lstm_17/zerosFill*sequential_5/lstm_17/zeros/packed:output:0)sequential_5/lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/lstm_17/zeros
"sequential_5/lstm_17/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_17/zeros_1/mul/yÆ
 sequential_5/lstm_17/zeros_1/mulMul+sequential_5/lstm_17/strided_slice:output:0+sequential_5/lstm_17/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_17/zeros_1/mul
#sequential_5/lstm_17/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_5/lstm_17/zeros_1/Less/yÃ
!sequential_5/lstm_17/zeros_1/LessLess$sequential_5/lstm_17/zeros_1/mul:z:0,sequential_5/lstm_17/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_17/zeros_1/Less
%sequential_5/lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_5/lstm_17/zeros_1/packed/1Ý
#sequential_5/lstm_17/zeros_1/packedPack+sequential_5/lstm_17/strided_slice:output:0.sequential_5/lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_17/zeros_1/packed
"sequential_5/lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_17/zeros_1/ConstÑ
sequential_5/lstm_17/zeros_1Fill,sequential_5/lstm_17/zeros_1/packed:output:0+sequential_5/lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/lstm_17/zeros_1
#sequential_5/lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_17/transpose/perm×
sequential_5/lstm_17/transpose	Transpose$sequential_5/lstm_16/transpose_1:y:0,sequential_5/lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_5/lstm_17/transpose
sequential_5/lstm_17/Shape_1Shape"sequential_5/lstm_17/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_17/Shape_1¢
*sequential_5/lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_17/strided_slice_1/stack¦
,sequential_5/lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_1/stack_1¦
,sequential_5/lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_1/stack_2ì
$sequential_5/lstm_17/strided_slice_1StridedSlice%sequential_5/lstm_17/Shape_1:output:03sequential_5/lstm_17/strided_slice_1/stack:output:05sequential_5/lstm_17/strided_slice_1/stack_1:output:05sequential_5/lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_17/strided_slice_1¯
0sequential_5/lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_5/lstm_17/TensorArrayV2/element_shape
"sequential_5/lstm_17/TensorArrayV2TensorListReserve9sequential_5/lstm_17/TensorArrayV2/element_shape:output:0-sequential_5/lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_17/TensorArrayV2é
Jsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_17/transpose:y:0Ssequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor¢
*sequential_5/lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_17/strided_slice_2/stack¦
,sequential_5/lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_2/stack_1¦
,sequential_5/lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_2/stack_2ú
$sequential_5/lstm_17/strided_slice_2StridedSlice"sequential_5/lstm_17/transpose:y:03sequential_5/lstm_17/strided_slice_2/stack:output:05sequential_5/lstm_17/strided_slice_2/stack_1:output:05sequential_5/lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_5/lstm_17/strided_slice_2ó
7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_17_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype029
7sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp
(sequential_5/lstm_17/lstm_cell_17/MatMulMatMul-sequential_5/lstm_17/strided_slice_2:output:0?sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82*
(sequential_5/lstm_17/lstm_cell_17/MatMulù
9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02;
9sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpü
*sequential_5/lstm_17/lstm_cell_17/MatMul_1MatMul#sequential_5/lstm_17/zeros:output:0Asequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82,
*sequential_5/lstm_17/lstm_cell_17/MatMul_1ó
%sequential_5/lstm_17/lstm_cell_17/addAddV22sequential_5/lstm_17/lstm_cell_17/MatMul:product:04sequential_5/lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82'
%sequential_5/lstm_17/lstm_cell_17/addò
8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02:
8sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp
)sequential_5/lstm_17/lstm_cell_17/BiasAddBiasAdd)sequential_5/lstm_17/lstm_cell_17/add:z:0@sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82+
)sequential_5/lstm_17/lstm_cell_17/BiasAdd¨
1sequential_5/lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_17/lstm_cell_17/split/split_dimÇ
'sequential_5/lstm_17/lstm_cell_17/splitSplit:sequential_5/lstm_17/lstm_cell_17/split/split_dim:output:02sequential_5/lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2)
'sequential_5/lstm_17/lstm_cell_17/splitÅ
)sequential_5/lstm_17/lstm_cell_17/SigmoidSigmoid0sequential_5/lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_5/lstm_17/lstm_cell_17/SigmoidÉ
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_1Sigmoid0sequential_5/lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_1ß
%sequential_5/lstm_17/lstm_cell_17/mulMul/sequential_5/lstm_17/lstm_cell_17/Sigmoid_1:y:0%sequential_5/lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_5/lstm_17/lstm_cell_17/mul¼
&sequential_5/lstm_17/lstm_cell_17/ReluRelu0sequential_5/lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_5/lstm_17/lstm_cell_17/Reluð
'sequential_5/lstm_17/lstm_cell_17/mul_1Mul-sequential_5/lstm_17/lstm_cell_17/Sigmoid:y:04sequential_5/lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/lstm_17/lstm_cell_17/mul_1å
'sequential_5/lstm_17/lstm_cell_17/add_1AddV2)sequential_5/lstm_17/lstm_cell_17/mul:z:0+sequential_5/lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/lstm_17/lstm_cell_17/add_1É
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_2Sigmoid0sequential_5/lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_5/lstm_17/lstm_cell_17/Sigmoid_2»
(sequential_5/lstm_17/lstm_cell_17/Relu_1Relu+sequential_5/lstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_5/lstm_17/lstm_cell_17/Relu_1ô
'sequential_5/lstm_17/lstm_cell_17/mul_2Mul/sequential_5/lstm_17/lstm_cell_17/Sigmoid_2:y:06sequential_5/lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/lstm_17/lstm_cell_17/mul_2¹
2sequential_5/lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2sequential_5/lstm_17/TensorArrayV2_1/element_shape
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
sequential_5/lstm_17/time©
-sequential_5/lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_17/while/maximum_iterations
'sequential_5/lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_17/while/loop_counterÆ
sequential_5/lstm_17/whileWhile0sequential_5/lstm_17/while/loop_counter:output:06sequential_5/lstm_17/while/maximum_iterations:output:0"sequential_5/lstm_17/time:output:0-sequential_5/lstm_17/TensorArrayV2_1:handle:0#sequential_5/lstm_17/zeros:output:0%sequential_5/lstm_17/zeros_1:output:0-sequential_5/lstm_17/strided_slice_1:output:0Lsequential_5/lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_17_lstm_cell_17_matmul_readvariableop_resourceBsequential_5_lstm_17_lstm_cell_17_matmul_1_readvariableop_resourceAsequential_5_lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_17_while_body_246397*2
cond*R(
&sequential_5_lstm_17_while_cond_246396*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_5/lstm_17/whileß
Esequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Esequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_5/lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_17/while:output:3Nsequential_5/lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack«
*sequential_5/lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_5/lstm_17/strided_slice_3/stack¦
,sequential_5/lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_17/strided_slice_3/stack_1¦
,sequential_5/lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_17/strided_slice_3/stack_2
$sequential_5/lstm_17/strided_slice_3StridedSlice@sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_17/strided_slice_3/stack:output:05sequential_5/lstm_17/strided_slice_3/stack_1:output:05sequential_5/lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_5/lstm_17/strided_slice_3£
%sequential_5/lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_17/transpose_1/permù
 sequential_5/lstm_17/transpose_1	Transpose@sequential_5/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_5/lstm_17/transpose_1
sequential_5/lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_17/runtimeÏ
+sequential_5/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_5/dense_16/MatMul/ReadVariableOpÜ
sequential_5/dense_16/MatMulMatMul-sequential_5/lstm_17/strided_slice_3:output:03sequential_5/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/dense_16/MatMulÎ
,sequential_5/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_5/dense_16/BiasAdd/ReadVariableOpÙ
sequential_5/dense_16/BiasAddBiasAdd&sequential_5/dense_16/MatMul:product:04sequential_5/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/dense_16/BiasAdd
sequential_5/dense_16/ReluRelu&sequential_5/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/dense_16/ReluÏ
+sequential_5/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_5/dense_17/MatMul/ReadVariableOp×
sequential_5/dense_17/MatMulMatMul(sequential_5/dense_16/Relu:activations:03sequential_5/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/dense_17/MatMul
sequential_5/reshape_8/ShapeShape&sequential_5/dense_17/MatMul:product:0*
T0*
_output_shapes
:2
sequential_5/reshape_8/Shape¢
*sequential_5/reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/reshape_8/strided_slice/stack¦
,sequential_5/reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_8/strided_slice/stack_1¦
,sequential_5/reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/reshape_8/strided_slice/stack_2ì
$sequential_5/reshape_8/strided_sliceStridedSlice%sequential_5/reshape_8/Shape:output:03sequential_5/reshape_8/strided_slice/stack:output:05sequential_5/reshape_8/strided_slice/stack_1:output:05sequential_5/reshape_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/reshape_8/strided_slice
&sequential_5/reshape_8/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_5/reshape_8/Reshape/shape/1
&sequential_5/reshape_8/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_5/reshape_8/Reshape/shape/2
$sequential_5/reshape_8/Reshape/shapePack-sequential_5/reshape_8/strided_slice:output:0/sequential_5/reshape_8/Reshape/shape/1:output:0/sequential_5/reshape_8/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_5/reshape_8/Reshape/shapeØ
sequential_5/reshape_8/ReshapeReshape&sequential_5/dense_17/MatMul:product:0-sequential_5/reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_5/reshape_8/Reshape
IdentityIdentity'sequential_5/reshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÉ
NoOpNoOp-^sequential_5/conv1d_4/BiasAdd/ReadVariableOp9^sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp-^sequential_5/conv1d_5/BiasAdd/ReadVariableOp9^sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp-^sequential_5/dense_16/BiasAdd/ReadVariableOp,^sequential_5/dense_16/MatMul/ReadVariableOp,^sequential_5/dense_17/MatMul/ReadVariableOp9^sequential_5/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp8^sequential_5/lstm_16/lstm_cell_16/MatMul/ReadVariableOp:^sequential_5/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^sequential_5/lstm_16/while9^sequential_5/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp8^sequential_5/lstm_17/lstm_cell_17/MatMul/ReadVariableOp:^sequential_5/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^sequential_5/lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2\
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
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
³
ó
-__inference_lstm_cell_17_layer_call_fn_251250

inputs
states_0
states_1
unknown:8
	unknown_0:8
	unknown_1:8
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_2473792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
«
²
(__inference_lstm_16_layer_call_fn_250354

inputs
unknown:@p
	unknown_0:p
	unknown_1:p
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2485982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
L
0__inference_max_pooling1d_2_layer_call_fn_249706

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
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_2478462
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@
 
_user_specified_nameinputs
Õ
Ã
while_cond_248513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248513___redundant_placeholder04
0while_while_cond_248513___redundant_placeholder14
0while_while_cond_248513___redundant_placeholder24
0while_while_cond_248513___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
þ
­
D__inference_dense_17_layer_call_and_return_conditional_losses_248188

inputs0
matmul_readvariableop_resource:
identity¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityf
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

D__inference_conv1d_4_layer_call_and_return_conditional_losses_247811

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
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
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ðc

__inference__traced_save_251411
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
ShardedFilenameÔ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*æ
valueÜBÙ/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesæ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesØ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop*savev2_conv1d_5_kernel_read_readvariableop(savev2_conv1d_5_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableop@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop6savev2_lstm_17_lstm_cell_17_kernel_read_readvariableop@savev2_lstm_17_lstm_cell_17_recurrent_kernel_read_readvariableop4savev2_lstm_17_lstm_cell_17_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_4_kernel_m_read_readvariableop/savev2_adam_conv1d_4_bias_m_read_readvariableop1savev2_adam_conv1d_5_kernel_m_read_readvariableop/savev2_adam_conv1d_5_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_m_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_m_read_readvariableop1savev2_adam_conv1d_4_kernel_v_read_readvariableop/savev2_adam_conv1d_4_bias_v_read_readvariableop1savev2_adam_conv1d_5_kernel_v_read_readvariableop/savev2_adam_conv1d_5_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_v_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	2
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

identity_1Identity_1:output:0*
_input_shapes÷
ô: : : : @:@:::: : : : : :@p:p:p:8:8:8: : : : : @:@::::@p:p:p:8:8:8: : : @:@::::@p:p:p:8:8:8: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 
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

:: 

_output_shapes
::$ 

_output_shapes

::
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

:@p:$ 

_output_shapes

:p: 

_output_shapes
:p:$ 

_output_shapes

:8:$ 

_output_shapes

:8: 

_output_shapes
:8:

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:@p:$ 

_output_shapes

:p: 

_output_shapes
:p:$ 

_output_shapes

:8:$  

_output_shapes

:8: !

_output_shapes
:8:("$
"
_output_shapes
: : #

_output_shapes
: :($$
"
_output_shapes
: @: %

_output_shapes
:@:$& 

_output_shapes

:: '

_output_shapes
::$( 

_output_shapes

::$) 

_output_shapes

:@p:$* 

_output_shapes

:p: +

_output_shapes
:p:$, 

_output_shapes

:8:$- 

_output_shapes

:8: .

_output_shapes
:8:/

_output_shapes
: 
Æ

ã
lstm_16_while_cond_248972,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1D
@lstm_16_while_lstm_16_while_cond_248972___redundant_placeholder0D
@lstm_16_while_lstm_16_while_cond_248972___redundant_placeholder1D
@lstm_16_while_lstm_16_while_cond_248972___redundant_placeholder2D
@lstm_16_while_lstm_16_while_cond_248972___redundant_placeholder3
lstm_16_while_identity

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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
F

C__inference_lstm_17_layer_call_and_return_conditional_losses_247526

inputs%
lstm_cell_17_247444:8%
lstm_cell_17_247446:8!
lstm_cell_17_247448:8
identity¢$lstm_cell_17/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_247444lstm_cell_17_247446lstm_cell_17_247448*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_2473792&
$lstm_cell_17/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_247444lstm_cell_17_247446lstm_cell_17_247448*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_247457*
condR
while_cond_247456*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_247456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247456___redundant_placeholder04
0while_while_cond_247456___redundant_placeholder14
0while_while_cond_247456___redundant_placeholder24
0while_while_cond_247456___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
]
ë
&sequential_5_lstm_17_while_body_246397F
Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counterL
Hsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations*
&sequential_5_lstm_17_while_placeholder,
(sequential_5_lstm_17_while_placeholder_1,
(sequential_5_lstm_17_while_placeholder_2,
(sequential_5_lstm_17_while_placeholder_3E
Asequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1_0
}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:8\
Jsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:8W
Isequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:8'
#sequential_5_lstm_17_while_identity)
%sequential_5_lstm_17_while_identity_1)
%sequential_5_lstm_17_while_identity_2)
%sequential_5_lstm_17_while_identity_3)
%sequential_5_lstm_17_while_identity_4)
%sequential_5_lstm_17_while_identity_5C
?sequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1
{sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensorX
Fsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:8Z
Hsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:8U
Gsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:8¢>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp¢=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp¢?sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpí
Lsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_17_while_placeholderUsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem
=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02?
=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpª
.sequential_5/lstm_17/while/lstm_cell_17/MatMulMatMulEsequential_5/lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ820
.sequential_5/lstm_17/while/lstm_cell_17/MatMul
?sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02A
?sequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp
0sequential_5/lstm_17/while/lstm_cell_17/MatMul_1MatMul(sequential_5_lstm_17_while_placeholder_2Gsequential_5/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ822
0sequential_5/lstm_17/while/lstm_cell_17/MatMul_1
+sequential_5/lstm_17/while/lstm_cell_17/addAddV28sequential_5/lstm_17/while/lstm_cell_17/MatMul:product:0:sequential_5/lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82-
+sequential_5/lstm_17/while/lstm_cell_17/add
>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02@
>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp
/sequential_5/lstm_17/while/lstm_cell_17/BiasAddBiasAdd/sequential_5/lstm_17/while/lstm_cell_17/add:z:0Fsequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ821
/sequential_5/lstm_17/while/lstm_cell_17/BiasAdd´
7sequential_5/lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_17/while/lstm_cell_17/split/split_dimß
-sequential_5/lstm_17/while/lstm_cell_17/splitSplit@sequential_5/lstm_17/while/lstm_cell_17/split/split_dim:output:08sequential_5/lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2/
-sequential_5/lstm_17/while/lstm_cell_17/split×
/sequential_5/lstm_17/while/lstm_cell_17/SigmoidSigmoid6sequential_5/lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_5/lstm_17/while/lstm_cell_17/SigmoidÛ
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid6sequential_5/lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_1ô
+sequential_5/lstm_17/while/lstm_cell_17/mulMul5sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_1:y:0(sequential_5_lstm_17_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_5/lstm_17/while/lstm_cell_17/mulÎ
,sequential_5/lstm_17/while/lstm_cell_17/ReluRelu6sequential_5/lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_5/lstm_17/while/lstm_cell_17/Relu
-sequential_5/lstm_17/while/lstm_cell_17/mul_1Mul3sequential_5/lstm_17/while/lstm_cell_17/Sigmoid:y:0:sequential_5/lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_17/while/lstm_cell_17/mul_1ý
-sequential_5/lstm_17/while/lstm_cell_17/add_1AddV2/sequential_5/lstm_17/while/lstm_cell_17/mul:z:01sequential_5/lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_17/while/lstm_cell_17/add_1Û
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid6sequential_5/lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_2Í
.sequential_5/lstm_17/while/lstm_cell_17/Relu_1Relu1sequential_5/lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_5/lstm_17/while/lstm_cell_17/Relu_1
-sequential_5/lstm_17/while/lstm_cell_17/mul_2Mul5sequential_5/lstm_17/while/lstm_cell_17/Sigmoid_2:y:0<sequential_5/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_17/while/lstm_cell_17/mul_2É
?sequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_17_while_placeholder_1&sequential_5_lstm_17_while_placeholder1sequential_5/lstm_17/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItem
 sequential_5/lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_17/while/add/y½
sequential_5/lstm_17/while/addAddV2&sequential_5_lstm_17_while_placeholder)sequential_5/lstm_17/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_17/while/add
"sequential_5/lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_17/while/add_1/yß
 sequential_5/lstm_17/while/add_1AddV2Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counter+sequential_5/lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_17/while/add_1¿
#sequential_5/lstm_17/while/IdentityIdentity$sequential_5/lstm_17/while/add_1:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_17/while/Identityç
%sequential_5/lstm_17/while/Identity_1IdentityHsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_17/while/Identity_1Á
%sequential_5/lstm_17/while/Identity_2Identity"sequential_5/lstm_17/while/add:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_17/while/Identity_2î
%sequential_5/lstm_17/while/Identity_3IdentityOsequential_5/lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_17/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_17/while/Identity_3á
%sequential_5/lstm_17/while/Identity_4Identity1sequential_5/lstm_17/while/lstm_cell_17/mul_2:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_5/lstm_17/while/Identity_4á
%sequential_5/lstm_17/while/Identity_5Identity1sequential_5/lstm_17/while/lstm_cell_17/add_1:z:0 ^sequential_5/lstm_17/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_5/lstm_17/while/Identity_5Ç
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
%sequential_5_lstm_17_while_identity_5.sequential_5/lstm_17/while/Identity_5:output:0"
Gsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resourceIsequential_5_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0"
Hsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resourceJsequential_5_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0"
Fsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resourceHsequential_5_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"
?sequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1Asequential_5_lstm_17_while_sequential_5_lstm_17_strided_slice_1_0"ü
{sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp>sequential_5/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp=sequential_5/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp2
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÀJ
Ê

lstm_16_while_body_248973,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:@pO
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:pJ
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:p
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorK
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:@pM
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:pH
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:p¢1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp¢0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp¢2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpÓ
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_16/while/TensorArrayV2Read/TensorListGetItemà
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype022
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpö
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2#
!lstm_16/while/lstm_cell_16/MatMulæ
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype024
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpß
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2%
#lstm_16/while/lstm_cell_16/MatMul_1×
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2 
lstm_16/while/lstm_cell_16/addß
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype023
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpä
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2$
"lstm_16/while/lstm_cell_16/BiasAdd
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_16/while/lstm_cell_16/split/split_dim«
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_16/while/lstm_cell_16/split°
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_16/while/lstm_cell_16/Sigmoid´
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_16/while/lstm_cell_16/Sigmoid_1À
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_16/while/lstm_cell_16/mul§
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_16/while/lstm_cell_16/ReluÔ
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/lstm_cell_16/mul_1É
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/lstm_cell_16/add_1´
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_16/while/lstm_cell_16/Sigmoid_2¦
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_16/while/lstm_cell_16/Relu_1Ø
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/lstm_cell_16/mul_2
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
lstm_16/while/add/y
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
lstm_16/while/add_1/y
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/add_1
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity¦
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_1
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_2º
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_3­
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/while/Identity_4­
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/while/Identity_5
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
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"È
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¬

D__inference_conv1d_4_layer_call_and_return_conditional_losses_249646

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
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
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\

C__inference_lstm_17_layer_call_and_return_conditional_losses_250656
inputs_0=
+lstm_cell_17_matmul_readvariableop_resource:8?
-lstm_cell_17_matmul_1_readvariableop_resource:8:
,lstm_cell_17_biasadd_readvariableop_resource:8
identity¢#lstm_cell_17/BiasAdd/ReadVariableOp¢"lstm_cell_17/MatMul/ReadVariableOp¢$lstm_cell_17/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp¬
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMulº
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp¨
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMul_1
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/add³
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp¬
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dimó
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_17/split
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_1
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_1
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/add_1
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu_1 
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_250572*
condR
while_cond_250571*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¥
g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_247846

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
:ÿÿÿÿÿÿÿÿÿ
@2

ExpandDims
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2	
MaxPool|
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2	
Squeezeh
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@
 
_user_specified_nameinputs
«
²
(__inference_lstm_16_layer_call_fn_250343

inputs
unknown:@p
	unknown_0:p
	unknown_1:p
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2479982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_246512

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

ExpandDims±
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
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
þ
­
D__inference_dense_17_layer_call_and_return_conditional_losses_251029

inputs0
matmul_readvariableop_resource:
identity¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityf
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê
³
"__inference__traced_restore_251559
file_prefix6
 assignvariableop_conv1d_4_kernel: .
 assignvariableop_1_conv1d_4_bias: 8
"assignvariableop_2_conv1d_5_kernel: @.
 assignvariableop_3_conv1d_5_bias:@4
"assignvariableop_4_dense_16_kernel:.
 assignvariableop_5_dense_16_bias:4
"assignvariableop_6_dense_17_kernel:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: A
/assignvariableop_12_lstm_16_lstm_cell_16_kernel:@pK
9assignvariableop_13_lstm_16_lstm_cell_16_recurrent_kernel:p;
-assignvariableop_14_lstm_16_lstm_cell_16_bias:pA
/assignvariableop_15_lstm_17_lstm_cell_17_kernel:8K
9assignvariableop_16_lstm_17_lstm_cell_17_recurrent_kernel:8;
-assignvariableop_17_lstm_17_lstm_cell_17_bias:8#
assignvariableop_18_total: #
assignvariableop_19_count: @
*assignvariableop_20_adam_conv1d_4_kernel_m: 6
(assignvariableop_21_adam_conv1d_4_bias_m: @
*assignvariableop_22_adam_conv1d_5_kernel_m: @6
(assignvariableop_23_adam_conv1d_5_bias_m:@<
*assignvariableop_24_adam_dense_16_kernel_m:6
(assignvariableop_25_adam_dense_16_bias_m:<
*assignvariableop_26_adam_dense_17_kernel_m:H
6assignvariableop_27_adam_lstm_16_lstm_cell_16_kernel_m:@pR
@assignvariableop_28_adam_lstm_16_lstm_cell_16_recurrent_kernel_m:pB
4assignvariableop_29_adam_lstm_16_lstm_cell_16_bias_m:pH
6assignvariableop_30_adam_lstm_17_lstm_cell_17_kernel_m:8R
@assignvariableop_31_adam_lstm_17_lstm_cell_17_recurrent_kernel_m:8B
4assignvariableop_32_adam_lstm_17_lstm_cell_17_bias_m:8@
*assignvariableop_33_adam_conv1d_4_kernel_v: 6
(assignvariableop_34_adam_conv1d_4_bias_v: @
*assignvariableop_35_adam_conv1d_5_kernel_v: @6
(assignvariableop_36_adam_conv1d_5_bias_v:@<
*assignvariableop_37_adam_dense_16_kernel_v:6
(assignvariableop_38_adam_dense_16_bias_v:<
*assignvariableop_39_adam_dense_17_kernel_v:H
6assignvariableop_40_adam_lstm_16_lstm_cell_16_kernel_v:@pR
@assignvariableop_41_adam_lstm_16_lstm_cell_16_recurrent_kernel_v:pB
4assignvariableop_42_adam_lstm_16_lstm_cell_16_bias_v:pH
6assignvariableop_43_adam_lstm_17_lstm_cell_17_kernel_v:8R
@assignvariableop_44_adam_lstm_17_lstm_cell_17_recurrent_kernel_v:8B
4assignvariableop_45_adam_lstm_17_lstm_cell_17_bias_v:8
identity_47¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ú
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*æ
valueÜBÙ/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesì
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ò
_output_shapes¿
¼:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv1d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_16_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_16_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_17_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_7¡
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¦
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11®
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12·
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_16_lstm_cell_16_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Á
AssignVariableOp_13AssignVariableOp9assignvariableop_13_lstm_16_lstm_cell_16_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14µ
AssignVariableOp_14AssignVariableOp-assignvariableop_14_lstm_16_lstm_cell_16_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15·
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_17_lstm_cell_17_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Á
AssignVariableOp_16AssignVariableOp9assignvariableop_16_lstm_17_lstm_cell_17_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17µ
AssignVariableOp_17AssignVariableOp-assignvariableop_17_lstm_17_lstm_cell_17_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¡
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¡
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20²
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv1d_4_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21°
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv1d_4_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22²
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv1d_5_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv1d_5_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24²
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_16_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25°
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_16_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26²
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_17_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_16_lstm_cell_16_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28È
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_lstm_16_lstm_cell_16_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¼
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_lstm_16_lstm_cell_16_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¾
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_lstm_17_lstm_cell_17_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31È
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_lstm_17_lstm_cell_17_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¼
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_lstm_17_lstm_cell_17_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv1d_4_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv1d_4_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv1d_5_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_5_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_16_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_16_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_17_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40¾
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_lstm_16_lstm_cell_16_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41È
AssignVariableOp_41AssignVariableOp@assignvariableop_41_adam_lstm_16_lstm_cell_16_recurrent_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42¼
AssignVariableOp_42AssignVariableOp4assignvariableop_42_adam_lstm_16_lstm_cell_16_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¾
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_17_lstm_cell_17_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44È
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_lstm_17_lstm_cell_17_recurrent_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¼
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_17_lstm_cell_17_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_459
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÒ
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_46f
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_47º
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

õ
D__inference_dense_16_layer_call_and_return_conditional_losses_251013

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_conv1d_4_layer_call_fn_249655

inputs
unknown: 
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
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_2478112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_250572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:8G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:8E
3while_lstm_cell_17_matmul_1_readvariableop_resource:8@
2while_lstm_cell_17_biasadd_readvariableop_resource:8¢)while/lstm_cell_17/BiasAdd/ReadVariableOp¢(while/lstm_cell_17/MatMul/ReadVariableOp¢*while/lstm_cell_17/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOpÖ
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMulÎ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp¿
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMul_1·
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/addÇ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOpÄ
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/BiasAdd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_17/split
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_1 
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu´
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_1©
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/add_1
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_2
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu_1¸
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
)
ô
H__inference_sequential_5_layer_call_and_return_conditional_losses_248801
conv1d_4_input%
conv1d_4_248766: 
conv1d_4_248768: %
conv1d_5_248771: @
conv1d_5_248773:@ 
lstm_16_248777:@p 
lstm_16_248779:p
lstm_16_248781:p 
lstm_17_248784:8 
lstm_17_248786:8
lstm_17_248788:8!
dense_16_248791:
dense_16_248793:!
dense_17_248796:
identity¢ conv1d_4/StatefulPartitionedCall¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢lstm_16/StatefulPartitionedCall¢lstm_17/StatefulPartitionedCall 
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_248766conv1d_4_248768*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_2478112"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_248771conv1d_5_248773*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_2478332"
 conv1d_5/StatefulPartitionedCall
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_2478462!
max_pooling1d_2/PartitionedCallÇ
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_16_248777lstm_16_248779lstm_16_248781*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2479982!
lstm_16/StatefulPartitionedCallÃ
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_248784lstm_17_248786lstm_17_248788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2481562!
lstm_17/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_16_248791dense_16_248793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_2481752"
 dense_16/StatefulPartitionedCall¤
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_248796*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_2481882"
 dense_17/StatefulPartitionedCallþ
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_2482052
reshape_8/PartitionedCall
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
³
ó
-__inference_lstm_cell_16_layer_call_fn_251135

inputs
states_0
states_1
unknown:@p
	unknown_0:p
	unknown_1:p
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_2466032
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
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
ÀJ
Ê

lstm_16_while_body_249318,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:@pO
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:pJ
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:p
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorK
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:@pM
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:pH
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:p¢1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp¢0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp¢2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpÓ
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_16/while/TensorArrayV2Read/TensorListGetItemà
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype022
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpö
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2#
!lstm_16/while/lstm_cell_16/MatMulæ
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype024
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpß
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2%
#lstm_16/while/lstm_cell_16/MatMul_1×
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2 
lstm_16/while/lstm_cell_16/addß
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype023
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpä
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2$
"lstm_16/while/lstm_cell_16/BiasAdd
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_16/while/lstm_cell_16/split/split_dim«
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_16/while/lstm_cell_16/split°
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_16/while/lstm_cell_16/Sigmoid´
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_16/while/lstm_cell_16/Sigmoid_1À
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_16/while/lstm_cell_16/mul§
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_16/while/lstm_cell_16/ReluÔ
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/lstm_cell_16/mul_1É
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/lstm_cell_16/add_1´
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_16/while/lstm_cell_16/Sigmoid_2¦
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_16/while/lstm_cell_16/Relu_1Ø
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/lstm_cell_16/mul_2
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
lstm_16/while/add/y
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
lstm_16/while/add_1/y
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_16/while/add_1
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity¦
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_1
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_2º
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 2
lstm_16/while/Identity_3­
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/while/Identity_4­
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/while/Identity_5
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
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"È
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×[

C__inference_lstm_16_layer_call_and_return_conditional_losses_247998

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@p?
-lstm_cell_16_matmul_1_readvariableop_resource:p:
,lstm_cell_16_biasadd_readvariableop_resource:p
identity¢#lstm_cell_16/BiasAdd/ReadVariableOp¢"lstm_cell_16/MatMul/ReadVariableOp¢$lstm_cell_16/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp¬
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMulº
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp¨
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMul_1
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/add³
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp¬
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dimó
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_16/split
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_1
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_1
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/add_1
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu_1 
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_247914*
condR
while_cond_247913*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¬

D__inference_conv1d_5_layer_call_and_return_conditional_losses_247833

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
:ÿÿÿÿÿÿÿÿÿ 2
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
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
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
:ÿÿÿÿÿÿÿÿÿ
@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
F

C__inference_lstm_16_layer_call_and_return_conditional_losses_246686

inputs%
lstm_cell_16_246604:@p%
lstm_cell_16_246606:p!
lstm_cell_16_246608:p
identity¢$lstm_cell_16/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_246604lstm_cell_16_246606lstm_cell_16_246608*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_2466032&
$lstm_cell_16/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_246604lstm_cell_16_246606lstm_cell_16_246608*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_246617*
condR
while_cond_246616*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Í
ç
&sequential_5_lstm_17_while_cond_246396F
Bsequential_5_lstm_17_while_sequential_5_lstm_17_while_loop_counterL
Hsequential_5_lstm_17_while_sequential_5_lstm_17_while_maximum_iterations*
&sequential_5_lstm_17_while_placeholder,
(sequential_5_lstm_17_while_placeholder_1,
(sequential_5_lstm_17_while_placeholder_2,
(sequential_5_lstm_17_while_placeholder_3H
Dsequential_5_lstm_17_while_less_sequential_5_lstm_17_strided_slice_1^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_246396___redundant_placeholder0^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_246396___redundant_placeholder1^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_246396___redundant_placeholder2^
Zsequential_5_lstm_17_while_sequential_5_lstm_17_while_cond_246396___redundant_placeholder3'
#sequential_5_lstm_17_while_identity
Ù
sequential_5/lstm_17/while/LessLess&sequential_5_lstm_17_while_placeholderDsequential_5_lstm_17_while_less_sequential_5_lstm_17_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_17/while/Less
#sequential_5/lstm_17/while/IdentityIdentity#sequential_5/lstm_17/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_17/while/Identity"S
#sequential_5_lstm_17_while_identity,sequential_5/lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Æ

ã
lstm_17_while_cond_249464,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1D
@lstm_17_while_lstm_17_while_cond_249464___redundant_placeholder0D
@lstm_17_while_lstm_17_while_cond_249464___redundant_placeholder1D
@lstm_17_while_lstm_17_while_cond_249464___redundant_placeholder2D
@lstm_17_while_lstm_17_while_cond_249464___redundant_placeholder3
lstm_17_while_identity

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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
)
ô
H__inference_sequential_5_layer_call_and_return_conditional_losses_248839
conv1d_4_input%
conv1d_4_248804: 
conv1d_4_248806: %
conv1d_5_248809: @
conv1d_5_248811:@ 
lstm_16_248815:@p 
lstm_16_248817:p
lstm_16_248819:p 
lstm_17_248822:8 
lstm_17_248824:8
lstm_17_248826:8!
dense_16_248829:
dense_16_248831:!
dense_17_248834:
identity¢ conv1d_4/StatefulPartitionedCall¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢lstm_16/StatefulPartitionedCall¢lstm_17/StatefulPartitionedCall 
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_248804conv1d_4_248806*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_2478112"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_248809conv1d_5_248811*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_2478332"
 conv1d_5/StatefulPartitionedCall
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_2478462!
max_pooling1d_2/PartitionedCallÇ
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_16_248815lstm_16_248817lstm_16_248819*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2485982!
lstm_16/StatefulPartitionedCallÃ
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_248822lstm_17_248824lstm_17_248826*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2484252!
lstm_17/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_16_248829dense_16_248831*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_2481752"
 dense_16/StatefulPartitionedCall¤
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_248834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_2481882"
 dense_17/StatefulPartitionedCallþ
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_2482052
reshape_8/PartitionedCall
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
¥
g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_249696

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
:ÿÿÿÿÿÿÿÿÿ
@2

ExpandDims
MaxPoolMaxPoolExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2	
MaxPool|
SqueezeSqueezeMaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2	
Squeezeh
IdentityIdentitySqueeze:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@
 
_user_specified_nameinputs

õ
D__inference_dense_16_layer_call_and_return_conditional_losses_248175

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_246827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_16_246851_0:@p-
while_lstm_cell_16_246853_0:p)
while_lstm_cell_16_246855_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_16_246851:@p+
while_lstm_cell_16_246853:p'
while_lstm_cell_16_246855:p¢*while/lstm_cell_16/StatefulPartitionedCallÃ
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
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_246851_0while_lstm_cell_16_246853_0while_lstm_cell_16_246855_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_2467492,
*while/lstm_cell_16/StatefulPartitionedCall÷
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

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
while_lstm_cell_16_246851while_lstm_cell_16_246851_0"8
while_lstm_cell_16_246853while_lstm_cell_16_246853_0"8
while_lstm_cell_16_246855while_lstm_cell_16_246855_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_246616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_246616___redundant_placeholder04
0while_while_cond_246616___redundant_placeholder14
0while_while_cond_246616___redundant_placeholder24
0while_while_cond_246616___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ò%
Ý
while_body_246617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_16_246641_0:@p-
while_lstm_cell_16_246643_0:p)
while_lstm_cell_16_246645_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_16_246641:@p+
while_lstm_cell_16_246643:p'
while_lstm_cell_16_246645:p¢*while/lstm_cell_16/StatefulPartitionedCallÃ
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
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_246641_0while_lstm_cell_16_246643_0while_lstm_cell_16_246645_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_2466032,
*while/lstm_cell_16/StatefulPartitionedCall÷
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

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
while_lstm_cell_16_246641while_lstm_cell_16_246641_0"8
while_lstm_cell_16_246643while_lstm_cell_16_246643_0"8
while_lstm_cell_16_246645while_lstm_cell_16_246645_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_249688

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

ExpandDims±
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
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
é

H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_246749

inputs

states
states_10
matmul_readvariableop_resource:@p2
 matmul_1_readvariableop_resource:p-
biasadd_readvariableop_resource:p
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@p*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:p*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ñ

H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_251086

inputs
states_0
states_10
matmul_readvariableop_resource:@p2
 matmul_1_readvariableop_resource:p-
biasadd_readvariableop_resource:p
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@p*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:p*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
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
é
Ó
-__inference_sequential_5_layer_call_fn_249599

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@p
	unknown_4:p
	unknown_5:p
	unknown_6:8
	unknown_7:8
	unknown_8:8
	unknown_9:

unknown_10:

unknown_11:
identity¢StatefulPartitionedCall
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
:ÿÿÿÿÿÿÿÿÿ*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2482082
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_251118

inputs
states_0
states_10
matmul_readvariableop_resource:@p2
 matmul_1_readvariableop_resource:p-
biasadd_readvariableop_resource:p
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@p*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:p*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
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
È
}
)__inference_dense_17_layer_call_fn_251036

inputs
unknown:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_2481882
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
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
]
ë
&sequential_5_lstm_16_while_body_246250F
Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counterL
Hsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations*
&sequential_5_lstm_16_while_placeholder,
(sequential_5_lstm_16_while_placeholder_1,
(sequential_5_lstm_16_while_placeholder_2,
(sequential_5_lstm_16_while_placeholder_3E
Asequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1_0
}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:@p\
Jsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:pW
Isequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:p'
#sequential_5_lstm_16_while_identity)
%sequential_5_lstm_16_while_identity_1)
%sequential_5_lstm_16_while_identity_2)
%sequential_5_lstm_16_while_identity_3)
%sequential_5_lstm_16_while_identity_4)
%sequential_5_lstm_16_while_identity_5C
?sequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1
{sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensorX
Fsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:@pZ
Hsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:pU
Gsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:p¢>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp¢=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp¢?sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpí
Lsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2N
Lsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_16_while_placeholderUsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02@
>sequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem
=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02?
=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpª
.sequential_5/lstm_16/while/lstm_cell_16/MatMulMatMulEsequential_5/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp20
.sequential_5/lstm_16/while/lstm_cell_16/MatMul
?sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02A
?sequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp
0sequential_5/lstm_16/while/lstm_cell_16/MatMul_1MatMul(sequential_5_lstm_16_while_placeholder_2Gsequential_5/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp22
0sequential_5/lstm_16/while/lstm_cell_16/MatMul_1
+sequential_5/lstm_16/while/lstm_cell_16/addAddV28sequential_5/lstm_16/while/lstm_cell_16/MatMul:product:0:sequential_5/lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2-
+sequential_5/lstm_16/while/lstm_cell_16/add
>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02@
>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp
/sequential_5/lstm_16/while/lstm_cell_16/BiasAddBiasAdd/sequential_5/lstm_16/while/lstm_cell_16/add:z:0Fsequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp21
/sequential_5/lstm_16/while/lstm_cell_16/BiasAdd´
7sequential_5/lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_16/while/lstm_cell_16/split/split_dimß
-sequential_5/lstm_16/while/lstm_cell_16/splitSplit@sequential_5/lstm_16/while/lstm_cell_16/split/split_dim:output:08sequential_5/lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2/
-sequential_5/lstm_16/while/lstm_cell_16/split×
/sequential_5/lstm_16/while/lstm_cell_16/SigmoidSigmoid6sequential_5/lstm_16/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_5/lstm_16/while/lstm_cell_16/SigmoidÛ
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid6sequential_5/lstm_16/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_1ô
+sequential_5/lstm_16/while/lstm_cell_16/mulMul5sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_1:y:0(sequential_5_lstm_16_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_5/lstm_16/while/lstm_cell_16/mulÎ
,sequential_5/lstm_16/while/lstm_cell_16/ReluRelu6sequential_5/lstm_16/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_5/lstm_16/while/lstm_cell_16/Relu
-sequential_5/lstm_16/while/lstm_cell_16/mul_1Mul3sequential_5/lstm_16/while/lstm_cell_16/Sigmoid:y:0:sequential_5/lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_16/while/lstm_cell_16/mul_1ý
-sequential_5/lstm_16/while/lstm_cell_16/add_1AddV2/sequential_5/lstm_16/while/lstm_cell_16/mul:z:01sequential_5/lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_16/while/lstm_cell_16/add_1Û
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid6sequential_5/lstm_16/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_2Í
.sequential_5/lstm_16/while/lstm_cell_16/Relu_1Relu1sequential_5/lstm_16/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_5/lstm_16/while/lstm_cell_16/Relu_1
-sequential_5/lstm_16/while/lstm_cell_16/mul_2Mul5sequential_5/lstm_16/while/lstm_cell_16/Sigmoid_2:y:0<sequential_5/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_16/while/lstm_cell_16/mul_2É
?sequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_16_while_placeholder_1&sequential_5_lstm_16_while_placeholder1sequential_5/lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItem
 sequential_5/lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_16/while/add/y½
sequential_5/lstm_16/while/addAddV2&sequential_5_lstm_16_while_placeholder)sequential_5/lstm_16/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_16/while/add
"sequential_5/lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_16/while/add_1/yß
 sequential_5/lstm_16/while/add_1AddV2Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counter+sequential_5/lstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_16/while/add_1¿
#sequential_5/lstm_16/while/IdentityIdentity$sequential_5/lstm_16/while/add_1:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_16/while/Identityç
%sequential_5/lstm_16/while/Identity_1IdentityHsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_16/while/Identity_1Á
%sequential_5/lstm_16/while/Identity_2Identity"sequential_5/lstm_16/while/add:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_16/while/Identity_2î
%sequential_5/lstm_16/while/Identity_3IdentityOsequential_5/lstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_16/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_16/while/Identity_3á
%sequential_5/lstm_16/while/Identity_4Identity1sequential_5/lstm_16/while/lstm_cell_16/mul_2:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_5/lstm_16/while/Identity_4á
%sequential_5/lstm_16/while/Identity_5Identity1sequential_5/lstm_16/while/lstm_cell_16/add_1:z:0 ^sequential_5/lstm_16/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_5/lstm_16/while/Identity_5Ç
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
%sequential_5_lstm_16_while_identity_5.sequential_5/lstm_16/while/Identity_5:output:0"
Gsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resourceIsequential_5_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"
Hsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resourceJsequential_5_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"
Fsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resourceHsequential_5_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"
?sequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1Asequential_5_lstm_16_while_sequential_5_lstm_16_strided_slice_1_0"ü
{sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp>sequential_5/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp=sequential_5/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÀJ
Ê

lstm_17_while_body_249465,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:8O
=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:8J
<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:8
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorK
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:8M
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:8H
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:8¢1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp¢0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp¢2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpÓ
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_17/while/TensorArrayV2Read/TensorListGetItemà
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype022
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpö
!lstm_17/while/lstm_cell_17/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82#
!lstm_17/while/lstm_cell_17/MatMulæ
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype024
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpß
#lstm_17/while/lstm_cell_17/MatMul_1MatMullstm_17_while_placeholder_2:lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82%
#lstm_17/while/lstm_cell_17/MatMul_1×
lstm_17/while/lstm_cell_17/addAddV2+lstm_17/while/lstm_cell_17/MatMul:product:0-lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82 
lstm_17/while/lstm_cell_17/addß
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype023
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpä
"lstm_17/while/lstm_cell_17/BiasAddBiasAdd"lstm_17/while/lstm_cell_17/add:z:09lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82$
"lstm_17/while/lstm_cell_17/BiasAdd
*lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_17/while/lstm_cell_17/split/split_dim«
 lstm_17/while/lstm_cell_17/splitSplit3lstm_17/while/lstm_cell_17/split/split_dim:output:0+lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_17/while/lstm_cell_17/split°
"lstm_17/while/lstm_cell_17/SigmoidSigmoid)lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_17/while/lstm_cell_17/Sigmoid´
$lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_17/while/lstm_cell_17/Sigmoid_1À
lstm_17/while/lstm_cell_17/mulMul(lstm_17/while/lstm_cell_17/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_17/while/lstm_cell_17/mul§
lstm_17/while/lstm_cell_17/ReluRelu)lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_17/while/lstm_cell_17/ReluÔ
 lstm_17/while/lstm_cell_17/mul_1Mul&lstm_17/while/lstm_cell_17/Sigmoid:y:0-lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/lstm_cell_17/mul_1É
 lstm_17/while/lstm_cell_17/add_1AddV2"lstm_17/while/lstm_cell_17/mul:z:0$lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/lstm_cell_17/add_1´
$lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_17/while/lstm_cell_17/Sigmoid_2¦
!lstm_17/while/lstm_cell_17/Relu_1Relu$lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_17/while/lstm_cell_17/Relu_1Ø
 lstm_17/while/lstm_cell_17/mul_2Mul(lstm_17/while/lstm_cell_17/Sigmoid_2:y:0/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/lstm_cell_17/mul_2
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
lstm_17/while/add/y
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
lstm_17/while/add_1/y
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_17/while/add_1
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity¦
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_1
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_2º
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_3­
lstm_17/while/Identity_4Identity$lstm_17/while/lstm_cell_17/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/while/Identity_4­
lstm_17/while/Identity_5Identity$lstm_17/while/lstm_cell_17/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/while/Identity_5
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
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"È
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ü[

C__inference_lstm_17_layer_call_and_return_conditional_losses_250958

inputs=
+lstm_cell_17_matmul_readvariableop_resource:8?
-lstm_cell_17_matmul_1_readvariableop_resource:8:
,lstm_cell_17_biasadd_readvariableop_resource:8
identity¢#lstm_cell_17/BiasAdd/ReadVariableOp¢"lstm_cell_17/MatMul/ReadVariableOp¢$lstm_cell_17/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp¬
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMulº
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp¨
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMul_1
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/add³
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp¬
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dimó
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_17/split
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_1
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_1
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/add_1
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu_1 
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_250874*
condR
while_cond_250873*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_250421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:8G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:8E
3while_lstm_cell_17_matmul_1_readvariableop_resource:8@
2while_lstm_cell_17_biasadd_readvariableop_resource:8¢)while/lstm_cell_17/BiasAdd/ReadVariableOp¢(while/lstm_cell_17/MatMul/ReadVariableOp¢*while/lstm_cell_17/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOpÖ
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMulÎ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp¿
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMul_1·
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/addÇ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOpÄ
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/BiasAdd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_17/split
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_1 
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu´
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_1©
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/add_1
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_2
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu_1¸
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Í
ç
&sequential_5_lstm_16_while_cond_246249F
Bsequential_5_lstm_16_while_sequential_5_lstm_16_while_loop_counterL
Hsequential_5_lstm_16_while_sequential_5_lstm_16_while_maximum_iterations*
&sequential_5_lstm_16_while_placeholder,
(sequential_5_lstm_16_while_placeholder_1,
(sequential_5_lstm_16_while_placeholder_2,
(sequential_5_lstm_16_while_placeholder_3H
Dsequential_5_lstm_16_while_less_sequential_5_lstm_16_strided_slice_1^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_246249___redundant_placeholder0^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_246249___redundant_placeholder1^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_246249___redundant_placeholder2^
Zsequential_5_lstm_16_while_sequential_5_lstm_16_while_cond_246249___redundant_placeholder3'
#sequential_5_lstm_16_while_identity
Ù
sequential_5/lstm_16/while/LessLess&sequential_5_lstm_16_while_placeholderDsequential_5_lstm_16_while_less_sequential_5_lstm_16_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_16/while/Less
#sequential_5/lstm_16/while/IdentityIdentity#sequential_5/lstm_16/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_16/while/Identity"S
#sequential_5_lstm_16_while_identity,sequential_5/lstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ò%
Ý
while_body_247247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_17_247271_0:8-
while_lstm_cell_17_247273_0:8)
while_lstm_cell_17_247275_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_17_247271:8+
while_lstm_cell_17_247273:8'
while_lstm_cell_17_247275:8¢*while/lstm_cell_17/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_247271_0while_lstm_cell_17_247273_0while_lstm_cell_17_247275_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_2472332,
*while/lstm_cell_17/StatefulPartitionedCall÷
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

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
while_lstm_cell_17_247271while_lstm_cell_17_247271_0"8
while_lstm_cell_17_247273while_lstm_cell_17_247273_0"8
while_lstm_cell_17_247275while_lstm_cell_17_247275_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


)__inference_conv1d_5_layer_call_fn_249680

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
:ÿÿÿÿÿÿÿÿÿ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_2478332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¬

D__inference_conv1d_5_layer_call_and_return_conditional_losses_249671

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
:ÿÿÿÿÿÿÿÿÿ 2
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
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
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
:ÿÿÿÿÿÿÿÿÿ
@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ö
´
(__inference_lstm_16_layer_call_fn_250321
inputs_0
unknown:@p
	unknown_0:p
	unknown_1:p
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2466862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

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
Õ
Ã
while_cond_248340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248340___redundant_placeholder04
0while_while_cond_248340___redundant_placeholder14
0while_while_cond_248340___redundant_placeholder24
0while_while_cond_248340___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Æ

ã
lstm_17_while_cond_249119,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1D
@lstm_17_while_lstm_17_while_cond_249119___redundant_placeholder0D
@lstm_17_while_lstm_17_while_cond_249119___redundant_placeholder1D
@lstm_17_while_lstm_17_while_cond_249119___redundant_placeholder2D
@lstm_17_while_lstm_17_while_cond_249119___redundant_placeholder3
lstm_17_while_identity

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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_250420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250420___redundant_placeholder04
0while_while_cond_250420___redundant_placeholder14
0while_while_cond_250420___redundant_placeholder24
0while_while_cond_250420___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
\

C__inference_lstm_16_layer_call_and_return_conditional_losses_249857
inputs_0=
+lstm_cell_16_matmul_readvariableop_resource:@p?
-lstm_cell_16_matmul_1_readvariableop_resource:p:
,lstm_cell_16_biasadd_readvariableop_resource:p
identity¢#lstm_cell_16/BiasAdd/ReadVariableOp¢"lstm_cell_16/MatMul/ReadVariableOp¢$lstm_cell_16/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp¬
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMulº
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp¨
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMul_1
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/add³
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp¬
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dimó
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_16/split
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_1
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_1
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/add_1
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu_1 
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_249773*
condR
while_cond_249772*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
×[

C__inference_lstm_16_layer_call_and_return_conditional_losses_250310

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@p?
-lstm_cell_16_matmul_1_readvariableop_resource:p:
,lstm_cell_16_biasadd_readvariableop_resource:p
identity¢#lstm_cell_16/BiasAdd/ReadVariableOp¢"lstm_cell_16/MatMul/ReadVariableOp¢$lstm_cell_16/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp¬
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMulº
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp¨
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMul_1
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/add³
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp¬
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dimó
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_16/split
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_1
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_1
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/add_1
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu_1 
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_250226*
condR
while_cond_250225*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Õ
Ã
while_cond_250873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250873___redundant_placeholder04
0while_while_cond_250873___redundant_placeholder14
0while_while_cond_250873___redundant_placeholder24
0while_while_cond_250873___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_249924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_16_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@pE
3while_lstm_cell_16_matmul_1_readvariableop_resource:p@
2while_lstm_cell_16_biasadd_readvariableop_resource:p¢)while/lstm_cell_16/BiasAdd/ReadVariableOp¢(while/lstm_cell_16/MatMul/ReadVariableOp¢*while/lstm_cell_16/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOpÖ
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMulÎ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp¿
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMul_1·
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/addÇ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOpÄ
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/BiasAdd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_16/split
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_1 
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu´
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_1©
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/add_1
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_2
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu_1¸
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
³
ó
-__inference_lstm_cell_16_layer_call_fn_251152

inputs
states_0
states_1
unknown:@p
	unknown_0:p
	unknown_1:p
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_2467492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
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

Û
-__inference_sequential_5_layer_call_fn_248237
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@p
	unknown_4:p
	unknown_5:p
	unknown_6:8
	unknown_7:8
	unknown_8:8
	unknown_9:

unknown_10:

unknown_11:
identity¢StatefulPartitionedCall
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
:ÿÿÿÿÿÿÿÿÿ*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2482082
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
ÀJ
Ê

lstm_17_while_body_249120,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:8O
=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:8J
<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:8
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorK
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:8M
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:8H
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:8¢1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp¢0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp¢2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpÓ
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_17/while/TensorArrayV2Read/TensorListGetItemà
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype022
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpö
!lstm_17/while/lstm_cell_17/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82#
!lstm_17/while/lstm_cell_17/MatMulæ
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype024
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpß
#lstm_17/while/lstm_cell_17/MatMul_1MatMullstm_17_while_placeholder_2:lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82%
#lstm_17/while/lstm_cell_17/MatMul_1×
lstm_17/while/lstm_cell_17/addAddV2+lstm_17/while/lstm_cell_17/MatMul:product:0-lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82 
lstm_17/while/lstm_cell_17/addß
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype023
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpä
"lstm_17/while/lstm_cell_17/BiasAddBiasAdd"lstm_17/while/lstm_cell_17/add:z:09lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82$
"lstm_17/while/lstm_cell_17/BiasAdd
*lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_17/while/lstm_cell_17/split/split_dim«
 lstm_17/while/lstm_cell_17/splitSplit3lstm_17/while/lstm_cell_17/split/split_dim:output:0+lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_17/while/lstm_cell_17/split°
"lstm_17/while/lstm_cell_17/SigmoidSigmoid)lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_17/while/lstm_cell_17/Sigmoid´
$lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_17/while/lstm_cell_17/Sigmoid_1À
lstm_17/while/lstm_cell_17/mulMul(lstm_17/while/lstm_cell_17/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_17/while/lstm_cell_17/mul§
lstm_17/while/lstm_cell_17/ReluRelu)lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_17/while/lstm_cell_17/ReluÔ
 lstm_17/while/lstm_cell_17/mul_1Mul&lstm_17/while/lstm_cell_17/Sigmoid:y:0-lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/lstm_cell_17/mul_1É
 lstm_17/while/lstm_cell_17/add_1AddV2"lstm_17/while/lstm_cell_17/mul:z:0$lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/lstm_cell_17/add_1´
$lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_17/while/lstm_cell_17/Sigmoid_2¦
!lstm_17/while/lstm_cell_17/Relu_1Relu$lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_17/while/lstm_cell_17/Relu_1Ø
 lstm_17/while/lstm_cell_17/mul_2Mul(lstm_17/while/lstm_cell_17/Sigmoid_2:y:0/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/lstm_cell_17/mul_2
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
lstm_17/while/add/y
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
lstm_17/while/add_1/y
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_17/while/add_1
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity¦
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_1
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_2º
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 2
lstm_17/while/Identity_3­
lstm_17/while/Identity_4Identity$lstm_17/while/lstm_cell_17/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/while/Identity_4­
lstm_17/while/Identity_5Identity$lstm_17/while/lstm_cell_17/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/while/Identity_5
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
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"È
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×[

C__inference_lstm_16_layer_call_and_return_conditional_losses_250159

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@p?
-lstm_cell_16_matmul_1_readvariableop_resource:p:
,lstm_cell_16_biasadd_readvariableop_resource:p
identity¢#lstm_cell_16/BiasAdd/ReadVariableOp¢"lstm_cell_16/MatMul/ReadVariableOp¢$lstm_cell_16/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp¬
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMulº
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp¨
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMul_1
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/add³
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp¬
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dimó
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_16/split
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_1
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_1
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/add_1
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu_1 
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_250075*
condR
while_cond_250074*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Õ
Ã
while_cond_249923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249923___redundant_placeholder04
0while_while_cond_249923___redundant_placeholder14
0while_while_cond_249923___redundant_placeholder24
0while_while_cond_249923___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_250723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:8G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:8E
3while_lstm_cell_17_matmul_1_readvariableop_resource:8@
2while_lstm_cell_17_biasadd_readvariableop_resource:8¢)while/lstm_cell_17/BiasAdd/ReadVariableOp¢(while/lstm_cell_17/MatMul/ReadVariableOp¢*while/lstm_cell_17/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOpÖ
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMulÎ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp¿
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMul_1·
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/addÇ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOpÄ
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/BiasAdd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_17/split
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_1 
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu´
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_1©
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/add_1
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_2
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu_1¸
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_247913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_247913___redundant_placeholder04
0while_while_cond_247913___redundant_placeholder14
0while_while_cond_247913___redundant_placeholder24
0while_while_cond_247913___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Æ
F
*__inference_reshape_8_layer_call_fn_251054

inputs
identityÇ
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
GPU 2J 8 *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_2482052
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
?
Ê
while_body_247914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_16_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@pE
3while_lstm_cell_16_matmul_1_readvariableop_resource:p@
2while_lstm_cell_16_biasadd_readvariableop_resource:p¢)while/lstm_cell_16/BiasAdd/ReadVariableOp¢(while/lstm_cell_16/MatMul/ReadVariableOp¢*while/lstm_cell_16/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOpÖ
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMulÎ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp¿
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMul_1·
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/addÇ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOpÄ
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/BiasAdd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_16/split
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_1 
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu´
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_1©
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/add_1
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_2
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu_1¸
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_246826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_246826___redundant_placeholder04
0while_while_cond_246826___redundant_placeholder14
0while_while_cond_246826___redundant_placeholder24
0while_while_cond_246826___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ñ

H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_251184

inputs
states_0
states_10
matmul_readvariableop_resource:82
 matmul_1_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:8*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ö
´
(__inference_lstm_16_layer_call_fn_250332
inputs_0
unknown:@p
	unknown_0:p
	unknown_1:p
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2468962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

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
»
´
(__inference_lstm_17_layer_call_fn_250980
inputs_0
unknown:8
	unknown_0:8
	unknown_1:8
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2475262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
£
²
(__inference_lstm_17_layer_call_fn_250991

inputs
unknown:8
	unknown_0:8
	unknown_1:8
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2481562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_250226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_16_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@pE
3while_lstm_cell_16_matmul_1_readvariableop_resource:p@
2while_lstm_cell_16_biasadd_readvariableop_resource:p¢)while/lstm_cell_16/BiasAdd/ReadVariableOp¢(while/lstm_cell_16/MatMul/ReadVariableOp¢*while/lstm_cell_16/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOpÖ
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMulÎ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp¿
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMul_1·
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/addÇ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOpÄ
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/BiasAdd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_16/split
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_1 
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu´
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_1©
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/add_1
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_2
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu_1¸
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ç
ý
H__inference_sequential_5_layer_call_and_return_conditional_losses_249223

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_5_biasadd_readvariableop_resource:@E
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:@pG
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:pB
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:pE
3lstm_17_lstm_cell_17_matmul_readvariableop_resource:8G
5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:8B
4lstm_17_lstm_cell_17_biasadd_readvariableop_resource:89
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:
identity¢conv1d_4/BiasAdd/ReadVariableOp¢+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_5/BiasAdd/ReadVariableOp¢+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp¢*lstm_16/lstm_cell_16/MatMul/ReadVariableOp¢,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp¢lstm_16/while¢+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp¢*lstm_17/lstm_cell_17/MatMul/ReadVariableOp¢,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp¢lstm_17/while
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_4/conv1d/ExpandDims/dim±
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/ExpandDimsÓ
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dimÛ
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_4/conv1d/ExpandDims_1Û
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv1d_4/conv1d­
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/Squeeze§
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_4/BiasAdd/ReadVariableOp°
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_4/BiasAddw
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_4/Relu
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_5/conv1d/ExpandDims/dimÆ
conv1d_5/conv1d/ExpandDims
ExpandDimsconv1d_4/Relu:activations:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_5/conv1d/ExpandDimsÓ
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dimÛ
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_5/conv1d/ExpandDims_1Û
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
conv1d_5/conv1d­
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_5/conv1d/Squeeze§
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_5/BiasAdd/ReadVariableOp°
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_5/BiasAddw
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_5/Relu
max_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_2/ExpandDims/dimÆ
max_pooling1d_2/ExpandDims
ExpandDimsconv1d_5/Relu:activations:0'max_pooling1d_2/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
max_pooling1d_2/ExpandDimsÏ
max_pooling1d_2/MaxPoolMaxPool#max_pooling1d_2/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling1d_2/MaxPool¬
max_pooling1d_2/SqueezeSqueeze max_pooling1d_2/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_2/Squeezen
lstm_16/ShapeShape max_pooling1d_2/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_16/Shape
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice/stack
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_1
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_16/strided_slice/stack_2
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
value	B :2
lstm_16/zeros/mul/y
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
B :è2
lstm_16/zeros/Less/y
lstm_16/zeros/LessLesslstm_16/zeros/mul:z:0lstm_16/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros/Lessr
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros/packed/1£
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
lstm_16/zeros/Const
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/zerosp
lstm_16/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/mul/y
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
B :è2
lstm_16/zeros_1/Less/y
lstm_16/zeros_1/LessLesslstm_16/zeros_1/mul:z:0lstm_16/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_16/zeros_1/Lessv
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_16/zeros_1/packed/1©
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
lstm_16/zeros_1/Const
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/zeros_1
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose/perm¬
lstm_16/transpose	Transpose max_pooling1d_2/Squeeze:output:0lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_16/transposeg
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:2
lstm_16/Shape_1
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_1/stack
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_1
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_1/stack_2
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_16/strided_slice_1
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_16/TensorArrayV2/element_shapeÒ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_16/TensorArrayV2Ï
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_16/TensorArrayUnstack/TensorListFromTensor
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_16/strided_slice_2/stack
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_1
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_2/stack_2¬
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_16/strided_slice_2Ì
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02,
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpÌ
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/MatMulÒ
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02.
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpÈ
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/MatMul_1¿
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/addË
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02-
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpÌ
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_16/lstm_cell_16/BiasAdd
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_16/lstm_cell_16/split/split_dim
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_16/lstm_cell_16/split
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/Sigmoid¢
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_16/lstm_cell_16/Sigmoid_1«
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/mul
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/Relu¼
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/mul_1±
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/add_1¢
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_16/lstm_cell_16/Sigmoid_2
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/Relu_1À
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/lstm_cell_16/mul_2
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_16/TensorArrayV2_1/element_shapeØ
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
lstm_16/time
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_16/while/maximum_iterationsz
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_16/while/loop_counter
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_16_while_body_248973*%
condR
lstm_16_while_cond_248972*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_16/whileÅ
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_16/TensorArrayV2Stack/TensorListStack
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_16/strided_slice_3/stack
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_16/strided_slice_3/stack_1
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_16/strided_slice_3/stack_2Ê
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_16/strided_slice_3
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_16/transpose_1/permÅ
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_16/transpose_1v
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_16/runtimee
lstm_17/ShapeShapelstm_16/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_17/Shape
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice/stack
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_1
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_17/strided_slice/stack_2
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
value	B :2
lstm_17/zeros/mul/y
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
B :è2
lstm_17/zeros/Less/y
lstm_17/zeros/LessLesslstm_17/zeros/mul:z:0lstm_17/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros/Lessr
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros/packed/1£
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
lstm_17/zeros/Const
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/zerosp
lstm_17/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/mul/y
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
B :è2
lstm_17/zeros_1/Less/y
lstm_17/zeros_1/LessLesslstm_17/zeros_1/mul:z:0lstm_17/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_17/zeros_1/Lessv
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_17/zeros_1/packed/1©
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
lstm_17/zeros_1/Const
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/zeros_1
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose/perm£
lstm_17/transpose	Transposelstm_16/transpose_1:y:0lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/transposeg
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:2
lstm_17/Shape_1
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_1/stack
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_1
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_1/stack_2
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_17/strided_slice_1
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_17/TensorArrayV2/element_shapeÒ
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_17/TensorArrayV2Ï
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_17/TensorArrayUnstack/TensorListFromTensor
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_17/strided_slice_2/stack
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_1
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_2/stack_2¬
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_17/strided_slice_2Ì
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_17_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02,
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpÌ
lstm_17/lstm_cell_17/MatMulMatMul lstm_17/strided_slice_2:output:02lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/MatMulÒ
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02.
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpÈ
lstm_17/lstm_cell_17/MatMul_1MatMullstm_17/zeros:output:04lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/MatMul_1¿
lstm_17/lstm_cell_17/addAddV2%lstm_17/lstm_cell_17/MatMul:product:0'lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/addË
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02-
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpÌ
lstm_17/lstm_cell_17/BiasAddBiasAddlstm_17/lstm_cell_17/add:z:03lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_17/lstm_cell_17/BiasAdd
$lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_17/lstm_cell_17/split/split_dim
lstm_17/lstm_cell_17/splitSplit-lstm_17/lstm_cell_17/split/split_dim:output:0%lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_17/lstm_cell_17/split
lstm_17/lstm_cell_17/SigmoidSigmoid#lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/Sigmoid¢
lstm_17/lstm_cell_17/Sigmoid_1Sigmoid#lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_17/lstm_cell_17/Sigmoid_1«
lstm_17/lstm_cell_17/mulMul"lstm_17/lstm_cell_17/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/mul
lstm_17/lstm_cell_17/ReluRelu#lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/Relu¼
lstm_17/lstm_cell_17/mul_1Mul lstm_17/lstm_cell_17/Sigmoid:y:0'lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/mul_1±
lstm_17/lstm_cell_17/add_1AddV2lstm_17/lstm_cell_17/mul:z:0lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/add_1¢
lstm_17/lstm_cell_17/Sigmoid_2Sigmoid#lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_17/lstm_cell_17/Sigmoid_2
lstm_17/lstm_cell_17/Relu_1Relulstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/Relu_1À
lstm_17/lstm_cell_17/mul_2Mul"lstm_17/lstm_cell_17/Sigmoid_2:y:0)lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/lstm_cell_17/mul_2
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_17/TensorArrayV2_1/element_shapeØ
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
lstm_17/time
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_17/while/maximum_iterationsz
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_17/while/loop_counter
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_17_lstm_cell_17_matmul_readvariableop_resource5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_17_while_body_249120*%
condR
lstm_17_while_cond_249119*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_17/whileÅ
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_17/TensorArrayV2Stack/TensorListStack
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_17/strided_slice_3/stack
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_17/strided_slice_3/stack_1
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_17/strided_slice_3/stack_2Ê
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_17/strided_slice_3
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_17/transpose_1/permÅ
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_17/transpose_1v
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_17/runtime¨
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_16/MatMul/ReadVariableOp¨
dense_16/MatMulMatMul lstm_17/strided_slice_3:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_16/MatMul§
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_16/BiasAdd/ReadVariableOp¥
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_16/BiasAdds
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_16/Relu¨
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_17/MatMul/ReadVariableOp£
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/MatMulk
reshape_8/ShapeShapedense_17/MatMul:product:0*
T0*
_output_shapes
:2
reshape_8/Shape
reshape_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_8/strided_slice/stack
reshape_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_1
reshape_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_8/strided_slice/stack_2
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
reshape_8/Reshape/shape/2Ò
reshape_8/Reshape/shapePack reshape_8/strided_slice:output:0"reshape_8/Reshape/shape/1:output:0"reshape_8/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_8/Reshape/shape¤
reshape_8/ReshapeReshapedense_17/MatMul:product:0 reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_8/Reshapey
IdentityIdentityreshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while,^lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_17/lstm_cell_17/MatMul/ReadVariableOp-^lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2B
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
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_248514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_16_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@pE
3while_lstm_cell_16_matmul_1_readvariableop_resource:p@
2while_lstm_cell_16_biasadd_readvariableop_resource:p¢)while/lstm_cell_16/BiasAdd/ReadVariableOp¢(while/lstm_cell_16/MatMul/ReadVariableOp¢*while/lstm_cell_16/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOpÖ
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMulÎ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp¿
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMul_1·
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/addÇ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOpÄ
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/BiasAdd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_16/split
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_1 
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu´
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_1©
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/add_1
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_2
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu_1¸
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
F

C__inference_lstm_17_layer_call_and_return_conditional_losses_247316

inputs%
lstm_cell_17_247234:8%
lstm_cell_17_247236:8!
lstm_cell_17_247238:8
identity¢$lstm_cell_17/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_247234lstm_cell_17_247236lstm_cell_17_247238*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_2472332&
$lstm_cell_17/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_247234lstm_cell_17_247236lstm_cell_17_247238*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_247247*
condR
while_cond_247246*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_247233

inputs

states
states_10
matmul_readvariableop_resource:82
 matmul_1_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:8*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ñ

)__inference_dense_16_layer_call_fn_251022

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_2481752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
ó
-__inference_lstm_cell_17_layer_call_fn_251233

inputs
states_0
states_1
unknown:8
	unknown_0:8
	unknown_1:8
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_2472332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1

Û
-__inference_sequential_5_layer_call_fn_248763
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@p
	unknown_4:p
	unknown_5:p
	unknown_6:8
	unknown_7:8
	unknown_8:8
	unknown_9:

unknown_10:

unknown_11:
identity¢StatefulPartitionedCall
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
:ÿÿÿÿÿÿÿÿÿ*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2487032
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
Ò%
Ý
while_body_247457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_17_247481_0:8-
while_lstm_cell_17_247483_0:8)
while_lstm_cell_17_247485_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_17_247481:8+
while_lstm_cell_17_247483:8'
while_lstm_cell_17_247485:8¢*while/lstm_cell_17/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_247481_0while_lstm_cell_17_247483_0while_lstm_cell_17_247485_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_2473792,
*while/lstm_cell_17/StatefulPartitionedCall÷
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

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
while_lstm_cell_17_247481while_lstm_cell_17_247481_0"8
while_lstm_cell_17_247483while_lstm_cell_17_247483_0"8
while_lstm_cell_17_247485while_lstm_cell_17_247485_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ü[

C__inference_lstm_17_layer_call_and_return_conditional_losses_250807

inputs=
+lstm_cell_17_matmul_readvariableop_resource:8?
-lstm_cell_17_matmul_1_readvariableop_resource:8:
,lstm_cell_17_biasadd_readvariableop_resource:8
identity¢#lstm_cell_17/BiasAdd/ReadVariableOp¢"lstm_cell_17/MatMul/ReadVariableOp¢$lstm_cell_17/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp¬
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMulº
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp¨
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMul_1
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/add³
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp¬
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dimó
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_17/split
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_1
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_1
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/add_1
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu_1 
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_250723*
condR
while_cond_250722*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
F

C__inference_lstm_16_layer_call_and_return_conditional_losses_246896

inputs%
lstm_cell_16_246814:@p%
lstm_cell_16_246816:p!
lstm_cell_16_246818:p
identity¢$lstm_cell_16/StatefulPartitionedCall¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_246814lstm_cell_16_246816lstm_cell_16_246818*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_2467492&
$lstm_cell_16/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_246814lstm_cell_16_246816lstm_cell_16_246818*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_246827*
condR
while_cond_246826*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Õ
Ã
while_cond_250571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_250571___redundant_placeholder04
0while_while_cond_250571___redundant_placeholder14
0while_while_cond_250571___redundant_placeholder24
0while_while_cond_250571___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Æ

ã
lstm_16_while_cond_249317,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1D
@lstm_16_while_lstm_16_while_cond_249317___redundant_placeholder0D
@lstm_16_while_lstm_16_while_cond_249317___redundant_placeholder1D
@lstm_16_while_lstm_16_while_cond_249317___redundant_placeholder2D
@lstm_16_while_lstm_16_while_cond_249317___redundant_placeholder3
lstm_16_while_identity

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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_248072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:8G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:8E
3while_lstm_cell_17_matmul_1_readvariableop_resource:8@
2while_lstm_cell_17_biasadd_readvariableop_resource:8¢)while/lstm_cell_17/BiasAdd/ReadVariableOp¢(while/lstm_cell_17/MatMul/ReadVariableOp¢*while/lstm_cell_17/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOpÖ
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMulÎ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp¿
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMul_1·
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/addÇ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOpÄ
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/BiasAdd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_17/split
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_1 
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu´
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_1©
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/add_1
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_2
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu_1¸
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ü[

C__inference_lstm_17_layer_call_and_return_conditional_losses_248156

inputs=
+lstm_cell_17_matmul_readvariableop_resource:8?
-lstm_cell_17_matmul_1_readvariableop_resource:8:
,lstm_cell_17_biasadd_readvariableop_resource:8
identity¢#lstm_cell_17/BiasAdd/ReadVariableOp¢"lstm_cell_17/MatMul/ReadVariableOp¢$lstm_cell_17/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp¬
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMulº
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp¨
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMul_1
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/add³
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp¬
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dimó
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_17/split
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_1
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_1
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/add_1
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu_1 
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_248072*
condR
while_cond_248071*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
L
0__inference_max_pooling1d_2_layer_call_fn_249701

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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_2465122
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
é
Ó
-__inference_sequential_5_layer_call_fn_249630

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@p
	unknown_4:p
	unknown_5:p
	unknown_6:8
	unknown_7:8
	unknown_8:8
	unknown_9:

unknown_10:

unknown_11:
identity¢StatefulPartitionedCall
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
:ÿÿÿÿÿÿÿÿÿ*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2487032
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_250075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_16_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@pE
3while_lstm_cell_16_matmul_1_readvariableop_resource:p@
2while_lstm_cell_16_biasadd_readvariableop_resource:p¢)while/lstm_cell_16/BiasAdd/ReadVariableOp¢(while/lstm_cell_16/MatMul/ReadVariableOp¢*while/lstm_cell_16/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOpÖ
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMulÎ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp¿
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMul_1·
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/addÇ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOpÄ
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/BiasAdd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_16/split
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_1 
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu´
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_1©
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/add_1
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_2
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu_1¸
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

a
E__inference_reshape_8_layer_call_and_return_conditional_losses_248205

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
õ(
ì
H__inference_sequential_5_layer_call_and_return_conditional_losses_248208

inputs%
conv1d_4_247812: 
conv1d_4_247814: %
conv1d_5_247834: @
conv1d_5_247836:@ 
lstm_16_247999:@p 
lstm_16_248001:p
lstm_16_248003:p 
lstm_17_248157:8 
lstm_17_248159:8
lstm_17_248161:8!
dense_16_248176:
dense_16_248178:!
dense_17_248189:
identity¢ conv1d_4/StatefulPartitionedCall¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢lstm_16/StatefulPartitionedCall¢lstm_17/StatefulPartitionedCall
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_247812conv1d_4_247814*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_4_layer_call_and_return_conditional_losses_2478112"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_247834conv1d_5_247836*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_5_layer_call_and_return_conditional_losses_2478332"
 conv1d_5/StatefulPartitionedCall
max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_2478462!
max_pooling1d_2/PartitionedCallÇ
lstm_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_16_247999lstm_16_248001lstm_16_248003*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_2479982!
lstm_16/StatefulPartitionedCallÃ
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_248157lstm_17_248159lstm_17_248161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2481562!
lstm_17/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_16_248176dense_16_248178*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_2481752"
 dense_16/StatefulPartitionedCall¤
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_248189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_2481882"
 dense_17/StatefulPartitionedCallþ
reshape_8/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *N
fIRG
E__inference_reshape_8_layer_call_and_return_conditional_losses_2482052
reshape_8/PartitionedCall
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_251216

inputs
states_0
states_10
matmul_readvariableop_resource:82
 matmul_1_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:8*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
?
Ê
while_body_249773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_16_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_16_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_16_matmul_readvariableop_resource:@pE
3while_lstm_cell_16_matmul_1_readvariableop_resource:p@
2while_lstm_cell_16_biasadd_readvariableop_resource:p¢)while/lstm_cell_16/BiasAdd/ReadVariableOp¢(while/lstm_cell_16/MatMul/ReadVariableOp¢*while/lstm_cell_16/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_16/MatMul/ReadVariableOpÖ
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMulÎ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_16/MatMul_1/ReadVariableOp¿
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/MatMul_1·
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/addÇ
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_16/BiasAdd/ReadVariableOpÄ
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_16/BiasAdd
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_16/split/split_dim
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_16/split
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_1 
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu´
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_1©
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/add_1
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Sigmoid_2
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/Relu_1¸
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_16/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ñ
Ò
$__inference_signature_wrapper_248878
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@p
	unknown_4:p
	unknown_5:p
	unknown_6:8
	unknown_7:8
	unknown_8:8
	unknown_9:

unknown_10:

unknown_11:
identity¢StatefulPartitionedCallî
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
:ÿÿÿÿÿÿÿÿÿ*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_2465002
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
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
\

C__inference_lstm_16_layer_call_and_return_conditional_losses_250008
inputs_0=
+lstm_cell_16_matmul_readvariableop_resource:@p?
-lstm_cell_16_matmul_1_readvariableop_resource:p:
,lstm_cell_16_biasadd_readvariableop_resource:p
identity¢#lstm_cell_16/BiasAdd/ReadVariableOp¢"lstm_cell_16/MatMul/ReadVariableOp¢$lstm_cell_16/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp¬
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMulº
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp¨
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMul_1
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/add³
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp¬
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dimó
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_16/split
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_1
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_1
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/add_1
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu_1 
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_249924*
condR
while_cond_249923*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
×[

C__inference_lstm_16_layer_call_and_return_conditional_losses_248598

inputs=
+lstm_cell_16_matmul_readvariableop_resource:@p?
-lstm_cell_16_matmul_1_readvariableop_resource:p:
,lstm_cell_16_biasadd_readvariableop_resource:p
identity¢#lstm_cell_16/BiasAdd/ReadVariableOp¢"lstm_cell_16/MatMul/ReadVariableOp¢$lstm_cell_16/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ@2
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
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_16/MatMul/ReadVariableOp¬
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMulº
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_16/MatMul_1/ReadVariableOp¨
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/MatMul_1
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/add³
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_16/BiasAdd/ReadVariableOp¬
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_16/BiasAdd~
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_16/split/split_dimó
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_16/split
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_1
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul}
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_1
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/add_1
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Sigmoid_2|
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/Relu_1 
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_16/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_248514*
condR
while_cond_248513*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
\

C__inference_lstm_17_layer_call_and_return_conditional_losses_250505
inputs_0=
+lstm_cell_17_matmul_readvariableop_resource:8?
-lstm_cell_17_matmul_1_readvariableop_resource:8:
,lstm_cell_17_biasadd_readvariableop_resource:8
identity¢#lstm_cell_17/BiasAdd/ReadVariableOp¢"lstm_cell_17/MatMul/ReadVariableOp¢$lstm_cell_17/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_17/MatMul/ReadVariableOp¬
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMulº
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_17/MatMul_1/ReadVariableOp¨
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/MatMul_1
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/add³
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_17/BiasAdd/ReadVariableOp¬
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_17/BiasAdd~
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_17/split/split_dimó
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_17/split
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_1
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul}
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_1
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/add_1
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Sigmoid_2|
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/Relu_1 
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_17/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_250421*
condR
while_cond_250420*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_248071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_248071___redundant_placeholder04
0while_while_cond_248071___redundant_placeholder14
0while_while_cond_248071___redundant_placeholder24
0while_while_cond_248071___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_250874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:8G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:8E
3while_lstm_cell_17_matmul_1_readvariableop_resource:8@
2while_lstm_cell_17_biasadd_readvariableop_resource:8¢)while/lstm_cell_17/BiasAdd/ReadVariableOp¢(while/lstm_cell_17/MatMul/ReadVariableOp¢*while/lstm_cell_17/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOpÖ
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMulÎ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp¿
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMul_1·
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/addÇ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOpÄ
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/BiasAdd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_17/split
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_1 
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu´
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_1©
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/add_1
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_2
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu_1¸
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
?
Ê
while_body_248341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_17_matmul_readvariableop_resource_0:8G
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_17_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_17_matmul_readvariableop_resource:8E
3while_lstm_cell_17_matmul_1_readvariableop_resource:8@
2while_lstm_cell_17_biasadd_readvariableop_resource:8¢)while/lstm_cell_17/BiasAdd/ReadVariableOp¢(while/lstm_cell_17/MatMul/ReadVariableOp¢*while/lstm_cell_17/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_17/MatMul/ReadVariableOpÖ
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMulÎ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_17/MatMul_1/ReadVariableOp¿
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/MatMul_1·
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/addÇ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_17/BiasAdd/ReadVariableOpÄ
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_17/BiasAdd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_17/split/split_dim
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_17/split
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_1 
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu´
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_1©
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/add_1
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Sigmoid_2
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/Relu_1¸
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_17/mul_2à
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

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
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
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
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
»
´
(__inference_lstm_17_layer_call_fn_250969
inputs_0
unknown:8
	unknown_0:8
	unknown_1:8
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2473162
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_249772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_249772___redundant_placeholder04
0while_while_cond_249772___redundant_placeholder14
0while_while_cond_249772___redundant_placeholder24
0while_while_cond_249772___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
é

H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_247379

inputs

states
states_10
matmul_readvariableop_resource:82
 matmul_1_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:8*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
£
²
(__inference_lstm_17_layer_call_fn_251002

inputs
unknown:8
	unknown_0:8
	unknown_1:8
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_17_layer_call_and_return_conditional_losses_2484252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Â
serving_default®
M
conv1d_4_input;
 serving_default_conv1d_4_input:0ÿÿÿÿÿÿÿÿÿA
	reshape_84
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:×ß
í
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
		optimizer

regularization_losses
trainable_variables
	variables
	keras_api

signatures
§_default_save_signature
+¨&call_and_return_all_conditional_losses
©__call__"
_tf_keras_sequential
½

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+ª&call_and_return_all_conditional_losses
«__call__"
_tf_keras_layer
½

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+¬&call_and_return_all_conditional_losses
­__call__"
_tf_keras_layer
§
regularization_losses
trainable_variables
	variables
	keras_api
+®&call_and_return_all_conditional_losses
¯__call__"
_tf_keras_layer
Å
cell
 
state_spec
!regularization_losses
"trainable_variables
#	variables
$	keras_api
+°&call_and_return_all_conditional_losses
±__call__"
_tf_keras_rnn_layer
Å
%cell
&
state_spec
'regularization_losses
(trainable_variables
)	variables
*	keras_api
+²&call_and_return_all_conditional_losses
³__call__"
_tf_keras_rnn_layer
½

+kernel
,bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
+´&call_and_return_all_conditional_losses
µ__call__"
_tf_keras_layer
³

1kernel
2regularization_losses
3trainable_variables
4	variables
5	keras_api
+¶&call_and_return_all_conditional_losses
·__call__"
_tf_keras_layer
§
6regularization_losses
7trainable_variables
8	variables
9	keras_api
+¸&call_and_return_all_conditional_losses
¹__call__"
_tf_keras_layer
×
:iter

;beta_1

<beta_2
	=decay
>learning_ratemmmm+m,m1m?m@mAmBmCmDmvvvv+v,v1v ?v¡@v¢Av£Bv¤Cv¥Dv¦"
	optimizer
 "
trackable_list_wrapper
~
0
1
2
3
?4
@5
A6
B7
C8
D9
+10
,11
112"
trackable_list_wrapper
~
0
1
2
3
?4
@5
A6
B7
C8
D9
+10
,11
112"
trackable_list_wrapper
Î
Elayer_metrics

Flayers

regularization_losses
Gnon_trainable_variables
trainable_variables
	variables
Hlayer_regularization_losses
Imetrics
©__call__
§_default_save_signature
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses"
_generic_user_object
-
ºserving_default"
signature_map
%:# 2conv1d_4/kernel
: 2conv1d_4/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
Jlayer_metrics

Klayers
regularization_losses
Lnon_trainable_variables
trainable_variables
	variables
Mlayer_regularization_losses
Nmetrics
«__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_5/kernel
:@2conv1d_5/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
Olayer_metrics

Players
regularization_losses
Qnon_trainable_variables
trainable_variables
	variables
Rlayer_regularization_losses
Smetrics
­__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Tlayer_metrics

Ulayers
regularization_losses
Vnon_trainable_variables
trainable_variables
	variables
Wlayer_regularization_losses
Xmetrics
¯__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
ã
Y
state_size

?kernel
@recurrent_kernel
Abias
Zregularization_losses
[trainable_variables
\	variables
]	keras_api
+»&call_and_return_all_conditional_losses
¼__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
¼
^layer_metrics

_layers

`states
!regularization_losses
anon_trainable_variables
"trainable_variables
#	variables
blayer_regularization_losses
cmetrics
±__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
ã
d
state_size

Bkernel
Crecurrent_kernel
Dbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
+½&call_and_return_all_conditional_losses
¾__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
¼
ilayer_metrics

jlayers

kstates
'regularization_losses
lnon_trainable_variables
(trainable_variables
)	variables
mlayer_regularization_losses
nmetrics
³__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
!:2dense_16/kernel
:2dense_16/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
°
olayer_metrics

players
-regularization_losses
qnon_trainable_variables
.trainable_variables
/	variables
rlayer_regularization_losses
smetrics
µ__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
!:2dense_17/kernel
 "
trackable_list_wrapper
'
10"
trackable_list_wrapper
'
10"
trackable_list_wrapper
°
tlayer_metrics

ulayers
2regularization_losses
vnon_trainable_variables
3trainable_variables
4	variables
wlayer_regularization_losses
xmetrics
·__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
ylayer_metrics

zlayers
6regularization_losses
{non_trainable_variables
7trainable_variables
8	variables
|layer_regularization_losses
}metrics
¹__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@p2lstm_16/lstm_cell_16/kernel
7:5p2%lstm_16/lstm_cell_16/recurrent_kernel
':%p2lstm_16/lstm_cell_16/bias
-:+82lstm_17/lstm_cell_17/kernel
7:582%lstm_17/lstm_cell_17/recurrent_kernel
':%82lstm_17/lstm_cell_17/bias
 "
trackable_dict_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
~0"
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
 "
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
´
layer_metrics
layers
Zregularization_losses
non_trainable_variables
[trainable_variables
\	variables
 layer_regularization_losses
metrics
¼__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
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
trackable_list_wrapper
 "
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
µ
layer_metrics
layers
eregularization_losses
non_trainable_variables
ftrainable_variables
g	variables
 layer_regularization_losses
metrics
¾__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
%0"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
*:( 2Adam/conv1d_4/kernel/m
 : 2Adam/conv1d_4/bias/m
*:( @2Adam/conv1d_5/kernel/m
 :@2Adam/conv1d_5/bias/m
&:$2Adam/dense_16/kernel/m
 :2Adam/dense_16/bias/m
&:$2Adam/dense_17/kernel/m
2:0@p2"Adam/lstm_16/lstm_cell_16/kernel/m
<::p2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
,:*p2 Adam/lstm_16/lstm_cell_16/bias/m
2:082"Adam/lstm_17/lstm_cell_17/kernel/m
<::82,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
,:*82 Adam/lstm_17/lstm_cell_17/bias/m
*:( 2Adam/conv1d_4/kernel/v
 : 2Adam/conv1d_4/bias/v
*:( @2Adam/conv1d_5/kernel/v
 :@2Adam/conv1d_5/bias/v
&:$2Adam/dense_16/kernel/v
 :2Adam/dense_16/bias/v
&:$2Adam/dense_17/kernel/v
2:0@p2"Adam/lstm_16/lstm_cell_16/kernel/v
<::p2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
,:*p2 Adam/lstm_16/lstm_cell_16/bias/v
2:082"Adam/lstm_17/lstm_cell_17/kernel/v
<::82,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
,:*82 Adam/lstm_17/lstm_cell_17/bias/v
ÓBÐ
!__inference__wrapped_model_246500conv1d_4_input"
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
î2ë
H__inference_sequential_5_layer_call_and_return_conditional_losses_249223
H__inference_sequential_5_layer_call_and_return_conditional_losses_249568
H__inference_sequential_5_layer_call_and_return_conditional_losses_248801
H__inference_sequential_5_layer_call_and_return_conditional_losses_248839À
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
2ÿ
-__inference_sequential_5_layer_call_fn_248237
-__inference_sequential_5_layer_call_fn_249599
-__inference_sequential_5_layer_call_fn_249630
-__inference_sequential_5_layer_call_fn_248763À
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
î2ë
D__inference_conv1d_4_layer_call_and_return_conditional_losses_249646¢
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
)__inference_conv1d_4_layer_call_fn_249655¢
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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_249671¢
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
)__inference_conv1d_5_layer_call_fn_249680¢
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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_249688
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_249696¢
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
0__inference_max_pooling1d_2_layer_call_fn_249701
0__inference_max_pooling1d_2_layer_call_fn_249706¢
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
ï2ì
C__inference_lstm_16_layer_call_and_return_conditional_losses_249857
C__inference_lstm_16_layer_call_and_return_conditional_losses_250008
C__inference_lstm_16_layer_call_and_return_conditional_losses_250159
C__inference_lstm_16_layer_call_and_return_conditional_losses_250310Õ
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
2
(__inference_lstm_16_layer_call_fn_250321
(__inference_lstm_16_layer_call_fn_250332
(__inference_lstm_16_layer_call_fn_250343
(__inference_lstm_16_layer_call_fn_250354Õ
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
C__inference_lstm_17_layer_call_and_return_conditional_losses_250505
C__inference_lstm_17_layer_call_and_return_conditional_losses_250656
C__inference_lstm_17_layer_call_and_return_conditional_losses_250807
C__inference_lstm_17_layer_call_and_return_conditional_losses_250958Õ
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
2
(__inference_lstm_17_layer_call_fn_250969
(__inference_lstm_17_layer_call_fn_250980
(__inference_lstm_17_layer_call_fn_250991
(__inference_lstm_17_layer_call_fn_251002Õ
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
î2ë
D__inference_dense_16_layer_call_and_return_conditional_losses_251013¢
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
)__inference_dense_16_layer_call_fn_251022¢
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
D__inference_dense_17_layer_call_and_return_conditional_losses_251029¢
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
)__inference_dense_17_layer_call_fn_251036¢
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_251049¢
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
*__inference_reshape_8_layer_call_fn_251054¢
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
$__inference_signature_wrapper_248878conv1d_4_input"
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
Ø2Õ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_251086
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_251118¾
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
-__inference_lstm_cell_16_layer_call_fn_251135
-__inference_lstm_cell_16_layer_call_fn_251152¾
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
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_251184
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_251216¾
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
-__inference_lstm_cell_17_layer_call_fn_251233
-__inference_lstm_cell_17_layer_call_fn_251250¾
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
 ­
!__inference__wrapped_model_246500?@ABCD+,1;¢8
1¢.
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
ª "9ª6
4
	reshape_8'$
	reshape_8ÿÿÿÿÿÿÿÿÿ¬
D__inference_conv1d_4_layer_call_and_return_conditional_losses_249646d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
)__inference_conv1d_4_layer_call_fn_249655W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¬
D__inference_conv1d_5_layer_call_and_return_conditional_losses_249671d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
@
 
)__inference_conv1d_5_layer_call_fn_249680W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ
@¤
D__inference_dense_16_layer_call_and_return_conditional_losses_251013\+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_16_layer_call_fn_251022O+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
D__inference_dense_17_layer_call_and_return_conditional_losses_251029[1/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
)__inference_dense_17_layer_call_fn_251036N1/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÒ
C__inference_lstm_16_layer_call_and_return_conditional_losses_249857?@AO¢L
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
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
C__inference_lstm_16_layer_call_and_return_conditional_losses_250008?@AO¢L
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
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_16_layer_call_and_return_conditional_losses_250159q?@A?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_16_layer_call_and_return_conditional_losses_250310q?@A?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ©
(__inference_lstm_16_layer_call_fn_250321}?@AO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
(__inference_lstm_16_layer_call_fn_250332}?@AO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(__inference_lstm_16_layer_call_fn_250343d?@A?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_16_layer_call_fn_250354d?@A?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_17_layer_call_and_return_conditional_losses_250505}BCDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
C__inference_lstm_17_layer_call_and_return_conditional_losses_250656}BCDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_17_layer_call_and_return_conditional_losses_250807mBCD?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_17_layer_call_and_return_conditional_losses_250958mBCD?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_lstm_17_layer_call_fn_250969pBCDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_17_layer_call_fn_250980pBCDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_17_layer_call_fn_250991`BCD?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_17_layer_call_fn_251002`BCD?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_251086ý?@A¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_251118ý?@A¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 
-__inference_lstm_cell_16_layer_call_fn_251135í?@A¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ
-__inference_lstm_cell_16_layer_call_fn_251152í?@A¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_251184ýBCD¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_251216ýBCD¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 
-__inference_lstm_cell_17_layer_call_fn_251233íBCD¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ
-__inference_lstm_cell_17_layer_call_fn_251250íBCD¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÔ
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_249688E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_249696`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 «
0__inference_max_pooling1d_2_layer_call_fn_249701wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0__inference_max_pooling1d_2_layer_call_fn_249706S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
@
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_reshape_8_layer_call_and_return_conditional_losses_251049\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_reshape_8_layer_call_fn_251054O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿË
H__inference_sequential_5_layer_call_and_return_conditional_losses_248801?@ABCD+,1C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ë
H__inference_sequential_5_layer_call_and_return_conditional_losses_248839?@ABCD+,1C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ã
H__inference_sequential_5_layer_call_and_return_conditional_losses_249223w?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ã
H__inference_sequential_5_layer_call_and_return_conditional_losses_249568w?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 £
-__inference_sequential_5_layer_call_fn_248237r?@ABCD+,1C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ£
-__inference_sequential_5_layer_call_fn_248763r?@ABCD+,1C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_5_layer_call_fn_249599j?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_5_layer_call_fn_249630j?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÂ
$__inference_signature_wrapper_248878?@ABCD+,1M¢J
¢ 
Cª@
>
conv1d_4_input,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ"9ª6
4
	reshape_8'$
	reshape_8ÿÿÿÿÿÿÿÿÿ