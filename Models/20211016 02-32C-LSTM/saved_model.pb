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
conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_2/kernel
w
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*"
_output_shapes
: *
dtype0
r
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_2/bias
k
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes
: *
dtype0
~
conv1d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv1d_3/kernel
w
#conv1d_3/kernel/Read/ReadVariableOpReadVariableOpconv1d_3/kernel*"
_output_shapes
: @*
dtype0
r
conv1d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_3/bias
k
!conv1d_3/bias/Read/ReadVariableOpReadVariableOpconv1d_3/bias*
_output_shapes
:@*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
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
lstm_10/lstm_cell_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@p*,
shared_namelstm_10/lstm_cell_10/kernel

/lstm_10/lstm_cell_10/kernel/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_10/kernel*
_output_shapes

:@p*
dtype0
¦
%lstm_10/lstm_cell_10/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:p*6
shared_name'%lstm_10/lstm_cell_10/recurrent_kernel

9lstm_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_10/lstm_cell_10/recurrent_kernel*
_output_shapes

:p*
dtype0

lstm_10/lstm_cell_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:p**
shared_namelstm_10/lstm_cell_10/bias

-lstm_10/lstm_cell_10/bias/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_10/bias*
_output_shapes
:p*
dtype0

lstm_11/lstm_cell_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*,
shared_namelstm_11/lstm_cell_11/kernel

/lstm_11/lstm_cell_11/kernel/Read/ReadVariableOpReadVariableOplstm_11/lstm_cell_11/kernel*
_output_shapes

:8*
dtype0
¦
%lstm_11/lstm_cell_11/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*6
shared_name'%lstm_11/lstm_cell_11/recurrent_kernel

9lstm_11/lstm_cell_11/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_11/lstm_cell_11/recurrent_kernel*
_output_shapes

:8*
dtype0

lstm_11/lstm_cell_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:8**
shared_namelstm_11/lstm_cell_11/bias

-lstm_11/lstm_cell_11/bias/Read/ReadVariableOpReadVariableOplstm_11/lstm_cell_11/bias*
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
Adam/conv1d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_2/kernel/m

*Adam/conv1d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/kernel/m*"
_output_shapes
: *
dtype0

Adam/conv1d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_2/bias/m
y
(Adam/conv1d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/bias/m*
_output_shapes
: *
dtype0

Adam/conv1d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_3/kernel/m

*Adam/conv1d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_3/kernel/m*"
_output_shapes
: @*
dtype0

Adam/conv1d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_3/bias/m
y
(Adam/conv1d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_3/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_10/kernel/m

*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:*
dtype0
 
"Adam/lstm_10/lstm_cell_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@p*3
shared_name$"Adam/lstm_10/lstm_cell_10/kernel/m

6Adam/lstm_10/lstm_cell_10/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_10/kernel/m*
_output_shapes

:@p*
dtype0
´
,Adam/lstm_10/lstm_cell_10/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:p*=
shared_name.,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m
­
@Adam/lstm_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m*
_output_shapes

:p*
dtype0

 Adam/lstm_10/lstm_cell_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:p*1
shared_name" Adam/lstm_10/lstm_cell_10/bias/m

4Adam/lstm_10/lstm_cell_10/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_10/bias/m*
_output_shapes
:p*
dtype0
 
"Adam/lstm_11/lstm_cell_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*3
shared_name$"Adam/lstm_11/lstm_cell_11/kernel/m

6Adam/lstm_11/lstm_cell_11/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_11/lstm_cell_11/kernel/m*
_output_shapes

:8*
dtype0
´
,Adam/lstm_11/lstm_cell_11/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*=
shared_name.,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m
­
@Adam/lstm_11/lstm_cell_11/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m*
_output_shapes

:8*
dtype0

 Adam/lstm_11/lstm_cell_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*1
shared_name" Adam/lstm_11/lstm_cell_11/bias/m

4Adam/lstm_11/lstm_cell_11/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_11/lstm_cell_11/bias/m*
_output_shapes
:8*
dtype0

Adam/conv1d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_2/kernel/v

*Adam/conv1d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/kernel/v*"
_output_shapes
: *
dtype0

Adam/conv1d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_2/bias/v
y
(Adam/conv1d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/bias/v*
_output_shapes
: *
dtype0

Adam/conv1d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_3/kernel/v

*Adam/conv1d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_3/kernel/v*"
_output_shapes
: @*
dtype0

Adam/conv1d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_3/bias/v
y
(Adam/conv1d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_3/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_10/kernel/v

*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:*
dtype0
 
"Adam/lstm_10/lstm_cell_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@p*3
shared_name$"Adam/lstm_10/lstm_cell_10/kernel/v

6Adam/lstm_10/lstm_cell_10/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_10/kernel/v*
_output_shapes

:@p*
dtype0
´
,Adam/lstm_10/lstm_cell_10/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:p*=
shared_name.,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v
­
@Adam/lstm_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v*
_output_shapes

:p*
dtype0

 Adam/lstm_10/lstm_cell_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:p*1
shared_name" Adam/lstm_10/lstm_cell_10/bias/v

4Adam/lstm_10/lstm_cell_10/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_10/bias/v*
_output_shapes
:p*
dtype0
 
"Adam/lstm_11/lstm_cell_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*3
shared_name$"Adam/lstm_11/lstm_cell_11/kernel/v

6Adam/lstm_11/lstm_cell_11/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_11/lstm_cell_11/kernel/v*
_output_shapes

:8*
dtype0
´
,Adam/lstm_11/lstm_cell_11/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*=
shared_name.,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v
­
@Adam/lstm_11/lstm_cell_11/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v*
_output_shapes

:8*
dtype0

 Adam/lstm_11/lstm_cell_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*1
shared_name" Adam/lstm_11/lstm_cell_11/bias/v

4Adam/lstm_11/lstm_cell_11/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_11/lstm_cell_11/bias/v*
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
Enon_trainable_variables

Flayers
Glayer_regularization_losses
Hlayer_metrics

regularization_losses
trainable_variables
Imetrics
	variables
 
[Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Jnon_trainable_variables

Klayers
Llayer_regularization_losses
Mlayer_metrics
regularization_losses
trainable_variables
Nmetrics
	variables
[Y
VARIABLE_VALUEconv1d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Onon_trainable_variables

Players
Qlayer_regularization_losses
Rlayer_metrics
regularization_losses
trainable_variables
Smetrics
	variables
 
 
 
­
Tnon_trainable_variables

Ulayers
Vlayer_regularization_losses
Wlayer_metrics
regularization_losses
trainable_variables
Xmetrics
	variables
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
^non_trainable_variables

_layers
`layer_regularization_losses
alayer_metrics
!regularization_losses

bstates
"trainable_variables
cmetrics
#	variables
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
inon_trainable_variables

jlayers
klayer_regularization_losses
llayer_metrics
'regularization_losses

mstates
(trainable_variables
nmetrics
)	variables
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
­
onon_trainable_variables

players
qlayer_regularization_losses
rlayer_metrics
-regularization_losses
.trainable_variables
smetrics
/	variables
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

10

10
­
tnon_trainable_variables

ulayers
vlayer_regularization_losses
wlayer_metrics
2regularization_losses
3trainable_variables
xmetrics
4	variables
 
 
 
­
ynon_trainable_variables

zlayers
{layer_regularization_losses
|layer_metrics
6regularization_losses
7trainable_variables
}metrics
8	variables
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
VARIABLE_VALUElstm_10/lstm_cell_10/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_10/lstm_cell_10/recurrent_kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_10/lstm_cell_10/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_11/lstm_cell_11/kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_11/lstm_cell_11/recurrent_kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_11/lstm_cell_11/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
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
non_trainable_variables
layers
 layer_regularization_losses
layer_metrics
Zregularization_losses
[trainable_variables
metrics
\	variables
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
non_trainable_variables
layers
 layer_regularization_losses
layer_metrics
eregularization_losses
ftrainable_variables
metrics
g	variables
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
VARIABLE_VALUEAdam/conv1d_2/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_2/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_10/lstm_cell_10/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_10/lstm_cell_10/recurrent_kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_10/lstm_cell_10/bias/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_11/lstm_cell_11/kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_11/lstm_cell_11/recurrent_kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_11/lstm_cell_11/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_2/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_2/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_10/lstm_cell_10/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_10/lstm_cell_10/recurrent_kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_10/lstm_cell_10/bias/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_11/lstm_cell_11/kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_11/lstm_cell_11/recurrent_kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_11/lstm_cell_11/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv1d_2_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_2_inputconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/biaslstm_10/lstm_cell_10/kernel%lstm_10/lstm_cell_10/recurrent_kernellstm_10/lstm_cell_10/biaslstm_11/lstm_cell_11/kernel%lstm_11/lstm_cell_11/recurrent_kernellstm_11/lstm_cell_11/biasdense_10/kerneldense_10/biasdense_11/kernel*
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
$__inference_signature_wrapper_164390
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
÷
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOp#conv1d_3/kernel/Read/ReadVariableOp!conv1d_3/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_10/lstm_cell_10/kernel/Read/ReadVariableOp9lstm_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOp-lstm_10/lstm_cell_10/bias/Read/ReadVariableOp/lstm_11/lstm_cell_11/kernel/Read/ReadVariableOp9lstm_11/lstm_cell_11/recurrent_kernel/Read/ReadVariableOp-lstm_11/lstm_cell_11/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_2/kernel/m/Read/ReadVariableOp(Adam/conv1d_2/bias/m/Read/ReadVariableOp*Adam/conv1d_3/kernel/m/Read/ReadVariableOp(Adam/conv1d_3/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_10/kernel/m/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_10/bias/m/Read/ReadVariableOp6Adam/lstm_11/lstm_cell_11/kernel/m/Read/ReadVariableOp@Adam/lstm_11/lstm_cell_11/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_11/lstm_cell_11/bias/m/Read/ReadVariableOp*Adam/conv1d_2/kernel/v/Read/ReadVariableOp(Adam/conv1d_2/bias/v/Read/ReadVariableOp*Adam/conv1d_3/kernel/v/Read/ReadVariableOp(Adam/conv1d_3/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_10/kernel/v/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_10/bias/v/Read/ReadVariableOp6Adam/lstm_11/lstm_cell_11/kernel/v/Read/ReadVariableOp@Adam/lstm_11/lstm_cell_11/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_11/lstm_cell_11/bias/v/Read/ReadVariableOpConst*;
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
__inference__traced_save_166923
Ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/biasdense_10/kerneldense_10/biasdense_11/kernel	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_10/lstm_cell_10/kernel%lstm_10/lstm_cell_10/recurrent_kernellstm_10/lstm_cell_10/biaslstm_11/lstm_cell_11/kernel%lstm_11/lstm_cell_11/recurrent_kernellstm_11/lstm_cell_11/biastotalcountAdam/conv1d_2/kernel/mAdam/conv1d_2/bias/mAdam/conv1d_3/kernel/mAdam/conv1d_3/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/m"Adam/lstm_10/lstm_cell_10/kernel/m,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m Adam/lstm_10/lstm_cell_10/bias/m"Adam/lstm_11/lstm_cell_11/kernel/m,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m Adam/lstm_11/lstm_cell_11/bias/mAdam/conv1d_2/kernel/vAdam/conv1d_2/bias/vAdam/conv1d_3/kernel/vAdam/conv1d_3/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/v"Adam/lstm_10/lstm_cell_10/kernel/v,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v Adam/lstm_10/lstm_cell_10/bias/v"Adam/lstm_11/lstm_cell_11/kernel/v,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v Adam/lstm_11/lstm_cell_11/bias/v*:
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
"__inference__traced_restore_167071¶á&
Ò%
Ý
while_body_162969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_11_162993_0:8-
while_lstm_cell_11_162995_0:8)
while_lstm_cell_11_162997_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_11_162993:8+
while_lstm_cell_11_162995:8'
while_lstm_cell_11_162997:8¢*while/lstm_cell_11/StatefulPartitionedCallÃ
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
*while/lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_11_162993_0while_lstm_cell_11_162995_0while_lstm_cell_11_162997_0*
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1628912,
*while/lstm_cell_11/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_11/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_11/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_11/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_11/StatefulPartitionedCall*"
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
while_lstm_cell_11_162993while_lstm_cell_11_162993_0"8
while_lstm_cell_11_162995while_lstm_cell_11_162995_0"8
while_lstm_cell_11_162997while_lstm_cell_11_162997_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_11/StatefulPartitionedCall*while/lstm_cell_11/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Æ

ã
lstm_11_while_cond_165038,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3.
*lstm_11_while_less_lstm_11_strided_slice_1D
@lstm_11_while_lstm_11_while_cond_165038___redundant_placeholder0D
@lstm_11_while_lstm_11_while_cond_165038___redundant_placeholder1D
@lstm_11_while_lstm_11_while_cond_165038___redundant_placeholder2D
@lstm_11_while_lstm_11_while_cond_165038___redundant_placeholder3
lstm_11_while_identity

lstm_11/while/LessLesslstm_11_while_placeholder*lstm_11_while_less_lstm_11_strided_slice_1*
T0*
_output_shapes
: 2
lstm_11/while/Lessu
lstm_11/while/IdentityIdentitylstm_11/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_11/while/Identity"9
lstm_11_while_identitylstm_11/while/Identity:output:0*(
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
ÀJ
Ê

lstm_11_while_body_165039,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3+
'lstm_11_while_lstm_11_strided_slice_1_0g
clstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0:8O
=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0:8J
<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0:8
lstm_11_while_identity
lstm_11_while_identity_1
lstm_11_while_identity_2
lstm_11_while_identity_3
lstm_11_while_identity_4
lstm_11_while_identity_5)
%lstm_11_while_lstm_11_strided_slice_1e
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensorK
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource:8M
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource:8H
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource:8¢1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp¢0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp¢2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpÓ
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0lstm_11_while_placeholderHlstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_11/while/TensorArrayV2Read/TensorListGetItemà
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype022
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpö
!lstm_11/while/lstm_cell_11/MatMulMatMul8lstm_11/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82#
!lstm_11/while/lstm_cell_11/MatMulæ
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype024
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpß
#lstm_11/while/lstm_cell_11/MatMul_1MatMullstm_11_while_placeholder_2:lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82%
#lstm_11/while/lstm_cell_11/MatMul_1×
lstm_11/while/lstm_cell_11/addAddV2+lstm_11/while/lstm_cell_11/MatMul:product:0-lstm_11/while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82 
lstm_11/while/lstm_cell_11/addß
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype023
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpä
"lstm_11/while/lstm_cell_11/BiasAddBiasAdd"lstm_11/while/lstm_cell_11/add:z:09lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82$
"lstm_11/while/lstm_cell_11/BiasAdd
*lstm_11/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_11/while/lstm_cell_11/split/split_dim«
 lstm_11/while/lstm_cell_11/splitSplit3lstm_11/while/lstm_cell_11/split/split_dim:output:0+lstm_11/while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_11/while/lstm_cell_11/split°
"lstm_11/while/lstm_cell_11/SigmoidSigmoid)lstm_11/while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_11/while/lstm_cell_11/Sigmoid´
$lstm_11/while/lstm_cell_11/Sigmoid_1Sigmoid)lstm_11/while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_11/while/lstm_cell_11/Sigmoid_1À
lstm_11/while/lstm_cell_11/mulMul(lstm_11/while/lstm_cell_11/Sigmoid_1:y:0lstm_11_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_11/while/lstm_cell_11/mul§
lstm_11/while/lstm_cell_11/ReluRelu)lstm_11/while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_11/while/lstm_cell_11/ReluÔ
 lstm_11/while/lstm_cell_11/mul_1Mul&lstm_11/while/lstm_cell_11/Sigmoid:y:0-lstm_11/while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/lstm_cell_11/mul_1É
 lstm_11/while/lstm_cell_11/add_1AddV2"lstm_11/while/lstm_cell_11/mul:z:0$lstm_11/while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/lstm_cell_11/add_1´
$lstm_11/while/lstm_cell_11/Sigmoid_2Sigmoid)lstm_11/while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_11/while/lstm_cell_11/Sigmoid_2¦
!lstm_11/while/lstm_cell_11/Relu_1Relu$lstm_11/while/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_11/while/lstm_cell_11/Relu_1Ø
 lstm_11/while/lstm_cell_11/mul_2Mul(lstm_11/while/lstm_cell_11/Sigmoid_2:y:0/lstm_11/while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/lstm_cell_11/mul_2
2lstm_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_11_while_placeholder_1lstm_11_while_placeholder$lstm_11/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_11/while/TensorArrayV2Write/TensorListSetIteml
lstm_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add/y
lstm_11/while/addAddV2lstm_11_while_placeholderlstm_11/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/addp
lstm_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add_1/y
lstm_11/while/add_1AddV2(lstm_11_while_lstm_11_while_loop_counterlstm_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/add_1
lstm_11/while/IdentityIdentitylstm_11/while/add_1:z:0^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity¦
lstm_11/while/Identity_1Identity.lstm_11_while_lstm_11_while_maximum_iterations^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_1
lstm_11/while/Identity_2Identitylstm_11/while/add:z:0^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_2º
lstm_11/while/Identity_3IdentityBlstm_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_3­
lstm_11/while/Identity_4Identity$lstm_11/while/lstm_cell_11/mul_2:z:0^lstm_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/while/Identity_4­
lstm_11/while/Identity_5Identity$lstm_11/while/lstm_cell_11/add_1:z:0^lstm_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/while/Identity_5
lstm_11/while/NoOpNoOp2^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_11/while/NoOp"9
lstm_11_while_identitylstm_11/while/Identity:output:0"=
lstm_11_while_identity_1!lstm_11/while/Identity_1:output:0"=
lstm_11_while_identity_2!lstm_11/while/Identity_2:output:0"=
lstm_11_while_identity_3!lstm_11/while/Identity_3:output:0"=
lstm_11_while_identity_4!lstm_11/while/Identity_4:output:0"=
lstm_11_while_identity_5!lstm_11/while/Identity_5:output:0"P
%lstm_11_while_lstm_11_strided_slice_1'lstm_11_while_lstm_11_strided_slice_1_0"z
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0"|
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0"x
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0"È
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensorclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp2d
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp2h
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ñ

)__inference_dense_10_layer_call_fn_166523

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
D__inference_dense_10_layer_call_and_return_conditional_losses_1636872
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
£
L
0__inference_max_pooling1d_1_layer_call_fn_165197

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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_1620242
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
Ò%
Ý
while_body_162339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_10_162363_0:@p-
while_lstm_cell_10_162365_0:p)
while_lstm_cell_10_162367_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_10_162363:@p+
while_lstm_cell_10_162365:p'
while_lstm_cell_10_162367:p¢*while/lstm_cell_10/StatefulPartitionedCallÃ
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
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_162363_0while_lstm_cell_10_162365_0while_lstm_cell_10_162367_0*
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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1622612,
*while/lstm_cell_10/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
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
while_lstm_cell_10_162363while_lstm_cell_10_162363_0"8
while_lstm_cell_10_162365while_lstm_cell_10_162365_0"8
while_lstm_cell_10_162367while_lstm_cell_10_162367_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_165715

inputs=
+lstm_cell_10_matmul_readvariableop_resource:@p?
-lstm_cell_10_matmul_1_readvariableop_resource:p:
,lstm_cell_10_biasadd_readvariableop_resource:p
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp¬
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMulº
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp¨
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMul_1
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/add³
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp¬
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dimó
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul}
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
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
while_body_165631*
condR
while_cond_165630*K
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
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Õ
Ã
while_cond_162128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162128___redundant_placeholder04
0while_while_cond_162128___redundant_placeholder14
0while_while_cond_162128___redundant_placeholder24
0while_while_cond_162128___redundant_placeholder3
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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_162261

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
Æ

ã
lstm_11_while_cond_164693,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3.
*lstm_11_while_less_lstm_11_strided_slice_1D
@lstm_11_while_lstm_11_while_cond_164693___redundant_placeholder0D
@lstm_11_while_lstm_11_while_cond_164693___redundant_placeholder1D
@lstm_11_while_lstm_11_while_cond_164693___redundant_placeholder2D
@lstm_11_while_lstm_11_while_cond_164693___redundant_placeholder3
lstm_11_while_identity

lstm_11/while/LessLesslstm_11_while_placeholder*lstm_11_while_less_lstm_11_strided_slice_1*
T0*
_output_shapes
: 2
lstm_11/while/Lessu
lstm_11/while/IdentityIdentitylstm_11/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_11/while/Identity"9
lstm_11_while_identitylstm_11/while/Identity:output:0*(
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_165564
inputs_0=
+lstm_cell_10_matmul_readvariableop_resource:@p?
-lstm_cell_10_matmul_1_readvariableop_resource:p:
,lstm_cell_10_biasadd_readvariableop_resource:p
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp¬
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMulº
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp¨
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMul_1
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/add³
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp¬
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dimó
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul}
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
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
while_body_165480*
condR
while_cond_165479*K
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
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Í
ç
&sequential_3_lstm_10_while_cond_161761F
Bsequential_3_lstm_10_while_sequential_3_lstm_10_while_loop_counterL
Hsequential_3_lstm_10_while_sequential_3_lstm_10_while_maximum_iterations*
&sequential_3_lstm_10_while_placeholder,
(sequential_3_lstm_10_while_placeholder_1,
(sequential_3_lstm_10_while_placeholder_2,
(sequential_3_lstm_10_while_placeholder_3H
Dsequential_3_lstm_10_while_less_sequential_3_lstm_10_strided_slice_1^
Zsequential_3_lstm_10_while_sequential_3_lstm_10_while_cond_161761___redundant_placeholder0^
Zsequential_3_lstm_10_while_sequential_3_lstm_10_while_cond_161761___redundant_placeholder1^
Zsequential_3_lstm_10_while_sequential_3_lstm_10_while_cond_161761___redundant_placeholder2^
Zsequential_3_lstm_10_while_sequential_3_lstm_10_while_cond_161761___redundant_placeholder3'
#sequential_3_lstm_10_while_identity
Ù
sequential_3/lstm_10/while/LessLess&sequential_3_lstm_10_while_placeholderDsequential_3_lstm_10_while_less_sequential_3_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_3/lstm_10/while/Less
#sequential_3/lstm_10/while/IdentityIdentity#sequential_3/lstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_3/lstm_10/while/Identity"S
#sequential_3_lstm_10_while_identity,sequential_3/lstm_10/while/Identity:output:0*(
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
ÀJ
Ê

lstm_10_while_body_164547,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0:@pO
=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0:pJ
<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0:p
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorK
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource:@pM
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource:pH
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource:p¢1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp¢0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp¢2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpÓ
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_10/while/TensorArrayV2Read/TensorListGetItemà
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype022
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpö
!lstm_10/while/lstm_cell_10/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2#
!lstm_10/while/lstm_cell_10/MatMulæ
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype024
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpß
#lstm_10/while/lstm_cell_10/MatMul_1MatMullstm_10_while_placeholder_2:lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2%
#lstm_10/while/lstm_cell_10/MatMul_1×
lstm_10/while/lstm_cell_10/addAddV2+lstm_10/while/lstm_cell_10/MatMul:product:0-lstm_10/while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2 
lstm_10/while/lstm_cell_10/addß
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype023
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpä
"lstm_10/while/lstm_cell_10/BiasAddBiasAdd"lstm_10/while/lstm_cell_10/add:z:09lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2$
"lstm_10/while/lstm_cell_10/BiasAdd
*lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_10/while/lstm_cell_10/split/split_dim«
 lstm_10/while/lstm_cell_10/splitSplit3lstm_10/while/lstm_cell_10/split/split_dim:output:0+lstm_10/while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_10/while/lstm_cell_10/split°
"lstm_10/while/lstm_cell_10/SigmoidSigmoid)lstm_10/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_10/while/lstm_cell_10/Sigmoid´
$lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid)lstm_10/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_10/while/lstm_cell_10/Sigmoid_1À
lstm_10/while/lstm_cell_10/mulMul(lstm_10/while/lstm_cell_10/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_10/while/lstm_cell_10/mul§
lstm_10/while/lstm_cell_10/ReluRelu)lstm_10/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_10/while/lstm_cell_10/ReluÔ
 lstm_10/while/lstm_cell_10/mul_1Mul&lstm_10/while/lstm_cell_10/Sigmoid:y:0-lstm_10/while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/lstm_cell_10/mul_1É
 lstm_10/while/lstm_cell_10/add_1AddV2"lstm_10/while/lstm_cell_10/mul:z:0$lstm_10/while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/lstm_cell_10/add_1´
$lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid)lstm_10/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_10/while/lstm_cell_10/Sigmoid_2¦
!lstm_10/while/lstm_cell_10/Relu_1Relu$lstm_10/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_10/while/lstm_cell_10/Relu_1Ø
 lstm_10/while/lstm_cell_10/mul_2Mul(lstm_10/while/lstm_cell_10/Sigmoid_2:y:0/lstm_10/while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/lstm_cell_10/mul_2
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_10/while/TensorArrayV2Write/TensorListSetIteml
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add/y
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/addp
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add_1/y
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/add_1
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity¦
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_1
lstm_10/while/Identity_2Identitylstm_10/while/add:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_2º
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_3­
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_10/mul_2:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/while/Identity_4­
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_10/add_1:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/while/Identity_5
lstm_10/while/NoOpNoOp2^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_10/while/NoOp"9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"z
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"|
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"x
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0"È
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2d
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp2h
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
Ê
while_body_165977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_11_matmul_readvariableop_resource_0:8G
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_11_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_11_matmul_readvariableop_resource:8E
3while_lstm_cell_11_matmul_1_readvariableop_resource:8@
2while_lstm_cell_11_biasadd_readvariableop_resource:8¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOpÖ
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMulÎ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp¿
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMul_1·
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/addÇ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÄ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1 
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu´
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1©
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¸
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
\

C__inference_lstm_11_layer_call_and_return_conditional_losses_166061
inputs_0=
+lstm_cell_11_matmul_readvariableop_resource:8?
-lstm_cell_11_matmul_1_readvariableop_resource:8:
,lstm_cell_11_biasadd_readvariableop_resource:8
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp¬
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMulº
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp¨
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMul_1
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/add³
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp¬
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dimó
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul}
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2|
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1 
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
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
while_body_165977*
condR
while_cond_165976*K
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
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ç
ý
H__inference_sequential_3_layer_call_and_return_conditional_losses_165142

inputsJ
4conv1d_2_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_2_biasadd_readvariableop_resource: J
4conv1d_3_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_3_biasadd_readvariableop_resource:@E
3lstm_10_lstm_cell_10_matmul_readvariableop_resource:@pG
5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource:pB
4lstm_10_lstm_cell_10_biasadd_readvariableop_resource:pE
3lstm_11_lstm_cell_11_matmul_readvariableop_resource:8G
5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource:8B
4lstm_11_lstm_cell_11_biasadd_readvariableop_resource:89
'dense_10_matmul_readvariableop_resource:6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:
identity¢conv1d_2/BiasAdd/ReadVariableOp¢+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_3/BiasAdd/ReadVariableOp¢+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp¢*lstm_10/lstm_cell_10/MatMul/ReadVariableOp¢,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp¢lstm_10/while¢+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp¢*lstm_11/lstm_cell_11/MatMul/ReadVariableOp¢,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp¢lstm_11/while
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_2/conv1d/ExpandDims/dim±
conv1d_2/conv1d/ExpandDims
ExpandDimsinputs'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_2/conv1d/ExpandDimsÓ
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dimÛ
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_2/conv1d/ExpandDims_1Û
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv1d_2/conv1d­
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_2/conv1d/Squeeze§
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOp°
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_2/BiasAddw
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_2/Relu
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_3/conv1d/ExpandDims/dimÆ
conv1d_3/conv1d/ExpandDims
ExpandDimsconv1d_2/Relu:activations:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_3/conv1d/ExpandDimsÓ
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dimÛ
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_3/conv1d/ExpandDims_1Û
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
conv1d_3/conv1d­
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_3/conv1d/Squeeze§
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_3/BiasAdd/ReadVariableOp°
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_3/BiasAddw
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_3/Relu
max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_1/ExpandDims/dimÆ
max_pooling1d_1/ExpandDims
ExpandDimsconv1d_3/Relu:activations:0'max_pooling1d_1/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
max_pooling1d_1/ExpandDimsÏ
max_pooling1d_1/MaxPoolMaxPool#max_pooling1d_1/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling1d_1/MaxPool¬
max_pooling1d_1/SqueezeSqueeze max_pooling1d_1/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_1/Squeezen
lstm_10/ShapeShape max_pooling1d_1/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_10/Shape
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice/stack
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_1
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_2
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slicel
lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros/mul/y
lstm_10/zeros/mulMullstm_10/strided_slice:output:0lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/mulo
lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros/Less/y
lstm_10/zeros/LessLesslstm_10/zeros/mul:z:0lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/Lessr
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros/packed/1£
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros/packedo
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros/Const
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/zerosp
lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros_1/mul/y
lstm_10/zeros_1/mulMullstm_10/strided_slice:output:0lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/muls
lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros_1/Less/y
lstm_10/zeros_1/LessLesslstm_10/zeros_1/mul:z:0lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/Lessv
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros_1/packed/1©
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros_1/packeds
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros_1/Const
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/zeros_1
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose/perm¬
lstm_10/transpose	Transpose max_pooling1d_1/Squeeze:output:0lstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_10/transposeg
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:2
lstm_10/Shape_1
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_1/stack
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_1
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_2
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slice_1
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_10/TensorArrayV2/element_shapeÒ
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2Ï
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_10/TensorArrayUnstack/TensorListFromTensor
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_2/stack
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_1
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_2¬
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_10/strided_slice_2Ì
*lstm_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3lstm_10_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02,
*lstm_10/lstm_cell_10/MatMul/ReadVariableOpÌ
lstm_10/lstm_cell_10/MatMulMatMul lstm_10/strided_slice_2:output:02lstm_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/MatMulÒ
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02.
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpÈ
lstm_10/lstm_cell_10/MatMul_1MatMullstm_10/zeros:output:04lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/MatMul_1¿
lstm_10/lstm_cell_10/addAddV2%lstm_10/lstm_cell_10/MatMul:product:0'lstm_10/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/addË
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02-
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpÌ
lstm_10/lstm_cell_10/BiasAddBiasAddlstm_10/lstm_cell_10/add:z:03lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/BiasAdd
$lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_10/lstm_cell_10/split/split_dim
lstm_10/lstm_cell_10/splitSplit-lstm_10/lstm_cell_10/split/split_dim:output:0%lstm_10/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_10/lstm_cell_10/split
lstm_10/lstm_cell_10/SigmoidSigmoid#lstm_10/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/Sigmoid¢
lstm_10/lstm_cell_10/Sigmoid_1Sigmoid#lstm_10/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_10/lstm_cell_10/Sigmoid_1«
lstm_10/lstm_cell_10/mulMul"lstm_10/lstm_cell_10/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/mul
lstm_10/lstm_cell_10/ReluRelu#lstm_10/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/Relu¼
lstm_10/lstm_cell_10/mul_1Mul lstm_10/lstm_cell_10/Sigmoid:y:0'lstm_10/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/mul_1±
lstm_10/lstm_cell_10/add_1AddV2lstm_10/lstm_cell_10/mul:z:0lstm_10/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/add_1¢
lstm_10/lstm_cell_10/Sigmoid_2Sigmoid#lstm_10/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_10/lstm_cell_10/Sigmoid_2
lstm_10/lstm_cell_10/Relu_1Relulstm_10/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/Relu_1À
lstm_10/lstm_cell_10/mul_2Mul"lstm_10/lstm_cell_10/Sigmoid_2:y:0)lstm_10/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/mul_2
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_10/TensorArrayV2_1/element_shapeØ
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2_1^
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/time
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/maximum_iterationsz
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/while/loop_counter
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_10_lstm_cell_10_matmul_readvariableop_resource5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
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
lstm_10_while_body_164892*%
condR
lstm_10_while_cond_164891*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_10/whileÅ
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_10/TensorArrayV2Stack/TensorListStack
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_10/strided_slice_3/stack
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_10/strided_slice_3/stack_1
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_3/stack_2Ê
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_10/strided_slice_3
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose_1/permÅ
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/transpose_1v
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/runtimee
lstm_11/ShapeShapelstm_10/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_11/Shape
lstm_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice/stack
lstm_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_1
lstm_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_2
lstm_11/strided_sliceStridedSlicelstm_11/Shape:output:0$lstm_11/strided_slice/stack:output:0&lstm_11/strided_slice/stack_1:output:0&lstm_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slicel
lstm_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros/mul/y
lstm_11/zeros/mulMullstm_11/strided_slice:output:0lstm_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/mulo
lstm_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_11/zeros/Less/y
lstm_11/zeros/LessLesslstm_11/zeros/mul:z:0lstm_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/Lessr
lstm_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros/packed/1£
lstm_11/zeros/packedPacklstm_11/strided_slice:output:0lstm_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros/packedo
lstm_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros/Const
lstm_11/zerosFilllstm_11/zeros/packed:output:0lstm_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/zerosp
lstm_11/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros_1/mul/y
lstm_11/zeros_1/mulMullstm_11/strided_slice:output:0lstm_11/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/muls
lstm_11/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_11/zeros_1/Less/y
lstm_11/zeros_1/LessLesslstm_11/zeros_1/mul:z:0lstm_11/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/Lessv
lstm_11/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros_1/packed/1©
lstm_11/zeros_1/packedPacklstm_11/strided_slice:output:0!lstm_11/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros_1/packeds
lstm_11/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros_1/Const
lstm_11/zeros_1Filllstm_11/zeros_1/packed:output:0lstm_11/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/zeros_1
lstm_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose/perm£
lstm_11/transpose	Transposelstm_10/transpose_1:y:0lstm_11/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/transposeg
lstm_11/Shape_1Shapelstm_11/transpose:y:0*
T0*
_output_shapes
:2
lstm_11/Shape_1
lstm_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_1/stack
lstm_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_1
lstm_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_2
lstm_11/strided_slice_1StridedSlicelstm_11/Shape_1:output:0&lstm_11/strided_slice_1/stack:output:0(lstm_11/strided_slice_1/stack_1:output:0(lstm_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slice_1
#lstm_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_11/TensorArrayV2/element_shapeÒ
lstm_11/TensorArrayV2TensorListReserve,lstm_11/TensorArrayV2/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2Ï
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_11/transpose:y:0Flstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_11/TensorArrayUnstack/TensorListFromTensor
lstm_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_2/stack
lstm_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_1
lstm_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_2¬
lstm_11/strided_slice_2StridedSlicelstm_11/transpose:y:0&lstm_11/strided_slice_2/stack:output:0(lstm_11/strided_slice_2/stack_1:output:0(lstm_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_11/strided_slice_2Ì
*lstm_11/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3lstm_11_lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02,
*lstm_11/lstm_cell_11/MatMul/ReadVariableOpÌ
lstm_11/lstm_cell_11/MatMulMatMul lstm_11/strided_slice_2:output:02lstm_11/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/MatMulÒ
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02.
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpÈ
lstm_11/lstm_cell_11/MatMul_1MatMullstm_11/zeros:output:04lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/MatMul_1¿
lstm_11/lstm_cell_11/addAddV2%lstm_11/lstm_cell_11/MatMul:product:0'lstm_11/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/addË
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02-
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpÌ
lstm_11/lstm_cell_11/BiasAddBiasAddlstm_11/lstm_cell_11/add:z:03lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/BiasAdd
$lstm_11/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_11/lstm_cell_11/split/split_dim
lstm_11/lstm_cell_11/splitSplit-lstm_11/lstm_cell_11/split/split_dim:output:0%lstm_11/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_11/lstm_cell_11/split
lstm_11/lstm_cell_11/SigmoidSigmoid#lstm_11/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/Sigmoid¢
lstm_11/lstm_cell_11/Sigmoid_1Sigmoid#lstm_11/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_11/lstm_cell_11/Sigmoid_1«
lstm_11/lstm_cell_11/mulMul"lstm_11/lstm_cell_11/Sigmoid_1:y:0lstm_11/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/mul
lstm_11/lstm_cell_11/ReluRelu#lstm_11/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/Relu¼
lstm_11/lstm_cell_11/mul_1Mul lstm_11/lstm_cell_11/Sigmoid:y:0'lstm_11/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/mul_1±
lstm_11/lstm_cell_11/add_1AddV2lstm_11/lstm_cell_11/mul:z:0lstm_11/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/add_1¢
lstm_11/lstm_cell_11/Sigmoid_2Sigmoid#lstm_11/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_11/lstm_cell_11/Sigmoid_2
lstm_11/lstm_cell_11/Relu_1Relulstm_11/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/Relu_1À
lstm_11/lstm_cell_11/mul_2Mul"lstm_11/lstm_cell_11/Sigmoid_2:y:0)lstm_11/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/mul_2
%lstm_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_11/TensorArrayV2_1/element_shapeØ
lstm_11/TensorArrayV2_1TensorListReserve.lstm_11/TensorArrayV2_1/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2_1^
lstm_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/time
 lstm_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/maximum_iterationsz
lstm_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/while/loop_counter
lstm_11/whileWhile#lstm_11/while/loop_counter:output:0)lstm_11/while/maximum_iterations:output:0lstm_11/time:output:0 lstm_11/TensorArrayV2_1:handle:0lstm_11/zeros:output:0lstm_11/zeros_1:output:0 lstm_11/strided_slice_1:output:0?lstm_11/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_11_lstm_cell_11_matmul_readvariableop_resource5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
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
lstm_11_while_body_165039*%
condR
lstm_11_while_cond_165038*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_11/whileÅ
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_11/TensorArrayV2Stack/TensorListStackTensorListStacklstm_11/while:output:3Alstm_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_11/TensorArrayV2Stack/TensorListStack
lstm_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_11/strided_slice_3/stack
lstm_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_11/strided_slice_3/stack_1
lstm_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_3/stack_2Ê
lstm_11/strided_slice_3StridedSlice3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_11/strided_slice_3/stack:output:0(lstm_11/strided_slice_3/stack_1:output:0(lstm_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_11/strided_slice_3
lstm_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose_1/permÅ
lstm_11/transpose_1	Transpose3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/transpose_1v
lstm_11/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/runtime¨
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_10/MatMul/ReadVariableOp¨
dense_10/MatMulMatMul lstm_11/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/MatMul§
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp¥
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/BiasAdds
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/Relu¨
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp£
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_11/MatMulk
reshape_5/ShapeShapedense_11/MatMul:product:0*
T0*
_output_shapes
:2
reshape_5/Shape
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_5/strided_slice/stack
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_1
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_2
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_5/strided_slicex
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/1x
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/2Ò
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_5/Reshape/shape¤
reshape_5/ReshapeReshapedense_11/MatMul:product:0 reshape_5/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_5/Reshapey
IdentityIdentityreshape_5/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^dense_11/MatMul/ReadVariableOp,^lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+^lstm_10/lstm_cell_10/MatMul/ReadVariableOp-^lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp^lstm_10/while,^lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+^lstm_11/lstm_cell_11/MatMul/ReadVariableOp-^lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp^lstm_11/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2Z
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp2X
*lstm_10/lstm_cell_10/MatMul/ReadVariableOp*lstm_10/lstm_cell_10/MatMul/ReadVariableOp2\
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp2
lstm_10/whilelstm_10/while2Z
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp2X
*lstm_11/lstm_cell_11/MatMul/ReadVariableOp*lstm_11/lstm_cell_11/MatMul/ReadVariableOp2\
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp2
lstm_11/whilelstm_11/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
L
0__inference_max_pooling1d_1_layer_call_fn_165202

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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_1633582
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
«
²
(__inference_lstm_10_layer_call_fn_165262

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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1641102
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
×[

C__inference_lstm_10_layer_call_and_return_conditional_losses_165866

inputs=
+lstm_cell_10_matmul_readvariableop_resource:@p?
-lstm_cell_10_matmul_1_readvariableop_resource:p:
,lstm_cell_10_biasadd_readvariableop_resource:p
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp¬
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMulº
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp¨
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMul_1
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/add³
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp¬
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dimó
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul}
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
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
while_body_165782*
condR
while_cond_165781*K
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
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
Ò
$__inference_signature_wrapper_164390
conv1d_2_input
unknown: 
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
StatefulPartitionedCallStatefulPartitionedCallconv1d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_1620122
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
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_2_input
Õ
Ã
while_cond_163583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163583___redundant_placeholder04
0while_while_cond_163583___redundant_placeholder14
0while_while_cond_163583___redundant_placeholder24
0while_while_cond_163583___redundant_placeholder3
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
Õ
Ã
while_cond_163852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163852___redundant_placeholder04
0while_while_cond_163852___redundant_placeholder14
0while_while_cond_163852___redundant_placeholder24
0while_while_cond_163852___redundant_placeholder3
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
while_body_166279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_11_matmul_readvariableop_resource_0:8G
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_11_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_11_matmul_readvariableop_resource:8E
3while_lstm_cell_11_matmul_1_readvariableop_resource:8@
2while_lstm_cell_11_biasadd_readvariableop_resource:8¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOpÖ
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMulÎ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp¿
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMul_1·
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/addÇ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÄ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1 
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu´
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1©
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¸
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
é

H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_162745

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
õ(
ì
H__inference_sequential_3_layer_call_and_return_conditional_losses_163720

inputs%
conv1d_2_163324: 
conv1d_2_163326: %
conv1d_3_163346: @
conv1d_3_163348:@ 
lstm_10_163511:@p 
lstm_10_163513:p
lstm_10_163515:p 
lstm_11_163669:8 
lstm_11_163671:8
lstm_11_163673:8!
dense_10_163688:
dense_10_163690:!
dense_11_163701:
identity¢ conv1d_2/StatefulPartitionedCall¢ conv1d_3/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢lstm_11/StatefulPartitionedCall
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_2_163324conv1d_2_163326*
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
D__inference_conv1d_2_layer_call_and_return_conditional_losses_1633232"
 conv1d_2/StatefulPartitionedCall»
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_163346conv1d_3_163348*
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
D__inference_conv1d_3_layer_call_and_return_conditional_losses_1633452"
 conv1d_3/StatefulPartitionedCall
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_1633582!
max_pooling1d_1/PartitionedCallÇ
lstm_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_10_163511lstm_10_163513lstm_10_163515*
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1635102!
lstm_10/StatefulPartitionedCallÃ
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_163669lstm_11_163671lstm_11_163673*
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1636682!
lstm_11/StatefulPartitionedCall¶
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_10_163688dense_10_163690*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_1636872"
 dense_10/StatefulPartitionedCall¤
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_163701*
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
D__inference_dense_11_layer_call_and_return_conditional_losses_1637002"
 dense_11/StatefulPartitionedCallþ
reshape_5/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
E__inference_reshape_5_layer_call_and_return_conditional_losses_1637172
reshape_5/PartitionedCall
IdentityIdentity"reshape_5/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

õ
D__inference_dense_10_layer_call_and_return_conditional_losses_166534

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
Ê
³
"__inference__traced_restore_167071
file_prefix6
 assignvariableop_conv1d_2_kernel: .
 assignvariableop_1_conv1d_2_bias: 8
"assignvariableop_2_conv1d_3_kernel: @.
 assignvariableop_3_conv1d_3_bias:@4
"assignvariableop_4_dense_10_kernel:.
 assignvariableop_5_dense_10_bias:4
"assignvariableop_6_dense_11_kernel:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: A
/assignvariableop_12_lstm_10_lstm_cell_10_kernel:@pK
9assignvariableop_13_lstm_10_lstm_cell_10_recurrent_kernel:p;
-assignvariableop_14_lstm_10_lstm_cell_10_bias:pA
/assignvariableop_15_lstm_11_lstm_cell_11_kernel:8K
9assignvariableop_16_lstm_11_lstm_cell_11_recurrent_kernel:8;
-assignvariableop_17_lstm_11_lstm_cell_11_bias:8#
assignvariableop_18_total: #
assignvariableop_19_count: @
*assignvariableop_20_adam_conv1d_2_kernel_m: 6
(assignvariableop_21_adam_conv1d_2_bias_m: @
*assignvariableop_22_adam_conv1d_3_kernel_m: @6
(assignvariableop_23_adam_conv1d_3_bias_m:@<
*assignvariableop_24_adam_dense_10_kernel_m:6
(assignvariableop_25_adam_dense_10_bias_m:<
*assignvariableop_26_adam_dense_11_kernel_m:H
6assignvariableop_27_adam_lstm_10_lstm_cell_10_kernel_m:@pR
@assignvariableop_28_adam_lstm_10_lstm_cell_10_recurrent_kernel_m:pB
4assignvariableop_29_adam_lstm_10_lstm_cell_10_bias_m:pH
6assignvariableop_30_adam_lstm_11_lstm_cell_11_kernel_m:8R
@assignvariableop_31_adam_lstm_11_lstm_cell_11_recurrent_kernel_m:8B
4assignvariableop_32_adam_lstm_11_lstm_cell_11_bias_m:8@
*assignvariableop_33_adam_conv1d_2_kernel_v: 6
(assignvariableop_34_adam_conv1d_2_bias_v: @
*assignvariableop_35_adam_conv1d_3_kernel_v: @6
(assignvariableop_36_adam_conv1d_3_bias_v:@<
*assignvariableop_37_adam_dense_10_kernel_v:6
(assignvariableop_38_adam_dense_10_bias_v:<
*assignvariableop_39_adam_dense_11_kernel_v:H
6assignvariableop_40_adam_lstm_10_lstm_cell_10_kernel_v:@pR
@assignvariableop_41_adam_lstm_10_lstm_cell_10_recurrent_kernel_v:pB
4assignvariableop_42_adam_lstm_10_lstm_cell_10_bias_v:pH
6assignvariableop_43_adam_lstm_11_lstm_cell_11_kernel_v:8R
@assignvariableop_44_adam_lstm_11_lstm_cell_11_recurrent_kernel_v:8B
4assignvariableop_45_adam_lstm_11_lstm_cell_11_bias_v:8
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
AssignVariableOpAssignVariableOp assignvariableop_conv1d_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_11_kernelIdentity_6:output:0"/device:CPU:0*
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
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_10_lstm_cell_10_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Á
AssignVariableOp_13AssignVariableOp9assignvariableop_13_lstm_10_lstm_cell_10_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14µ
AssignVariableOp_14AssignVariableOp-assignvariableop_14_lstm_10_lstm_cell_10_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15·
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_11_lstm_cell_11_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Á
AssignVariableOp_16AssignVariableOp9assignvariableop_16_lstm_11_lstm_cell_11_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17µ
AssignVariableOp_17AssignVariableOp-assignvariableop_17_lstm_11_lstm_cell_11_biasIdentity_17:output:0"/device:CPU:0*
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
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv1d_2_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21°
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv1d_2_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22²
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv1d_3_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv1d_3_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24²
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_10_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25°
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_10_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26²
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_11_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_10_lstm_cell_10_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28È
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_lstm_10_lstm_cell_10_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¼
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_lstm_10_lstm_cell_10_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¾
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_lstm_11_lstm_cell_11_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31È
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_lstm_11_lstm_cell_11_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¼
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_lstm_11_lstm_cell_11_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv1d_2_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv1d_2_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv1d_3_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_3_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_10_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_10_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_11_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40¾
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_lstm_10_lstm_cell_10_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41È
AssignVariableOp_41AssignVariableOp@assignvariableop_41_adam_lstm_10_lstm_cell_10_recurrent_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42¼
AssignVariableOp_42AssignVariableOp4assignvariableop_42_adam_lstm_10_lstm_cell_10_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¾
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_11_lstm_cell_11_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44È
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_lstm_11_lstm_cell_11_recurrent_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¼
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_11_lstm_cell_11_bias_vIdentity_45:output:0"/device:CPU:0*
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
Ü[

C__inference_lstm_11_layer_call_and_return_conditional_losses_163937

inputs=
+lstm_cell_11_matmul_readvariableop_resource:8?
-lstm_cell_11_matmul_1_readvariableop_resource:8:
,lstm_cell_11_biasadd_readvariableop_resource:8
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp¬
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMulº
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp¨
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMul_1
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/add³
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp¬
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dimó
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul}
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2|
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1 
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
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
while_body_163853*
condR
while_cond_163852*K
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
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_166127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_166127___redundant_placeholder04
0while_while_cond_166127___redundant_placeholder14
0while_while_cond_166127___redundant_placeholder24
0while_while_cond_166127___redundant_placeholder3
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
é
Ó
-__inference_sequential_3_layer_call_fn_164421

inputs
unknown: 
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_1637202
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
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ(
ì
H__inference_sequential_3_layer_call_and_return_conditional_losses_164215

inputs%
conv1d_2_164180: 
conv1d_2_164182: %
conv1d_3_164185: @
conv1d_3_164187:@ 
lstm_10_164191:@p 
lstm_10_164193:p
lstm_10_164195:p 
lstm_11_164198:8 
lstm_11_164200:8
lstm_11_164202:8!
dense_10_164205:
dense_10_164207:!
dense_11_164210:
identity¢ conv1d_2/StatefulPartitionedCall¢ conv1d_3/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢lstm_11/StatefulPartitionedCall
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_2_164180conv1d_2_164182*
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
D__inference_conv1d_2_layer_call_and_return_conditional_losses_1633232"
 conv1d_2/StatefulPartitionedCall»
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_164185conv1d_3_164187*
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
D__inference_conv1d_3_layer_call_and_return_conditional_losses_1633452"
 conv1d_3/StatefulPartitionedCall
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_1633582!
max_pooling1d_1/PartitionedCallÇ
lstm_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_10_164191lstm_10_164193lstm_10_164195*
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1641102!
lstm_10/StatefulPartitionedCallÃ
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_164198lstm_11_164200lstm_11_164202*
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1639372!
lstm_11/StatefulPartitionedCall¶
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_10_164205dense_10_164207*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_1636872"
 dense_10/StatefulPartitionedCall¤
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_164210*
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
D__inference_dense_11_layer_call_and_return_conditional_losses_1637002"
 dense_11/StatefulPartitionedCallþ
reshape_5/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
E__inference_reshape_5_layer_call_and_return_conditional_losses_1637172
reshape_5/PartitionedCall
IdentityIdentity"reshape_5/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_165782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_10_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_10_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_10_matmul_readvariableop_resource:@pE
3while_lstm_cell_10_matmul_1_readvariableop_resource:p@
2while_lstm_cell_10_biasadd_readvariableop_resource:p¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOpÖ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMulÎ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp¿
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMul_1·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/addÇ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÄ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1 
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)
ô
H__inference_sequential_3_layer_call_and_return_conditional_losses_164351
conv1d_2_input%
conv1d_2_164316: 
conv1d_2_164318: %
conv1d_3_164321: @
conv1d_3_164323:@ 
lstm_10_164327:@p 
lstm_10_164329:p
lstm_10_164331:p 
lstm_11_164334:8 
lstm_11_164336:8
lstm_11_164338:8!
dense_10_164341:
dense_10_164343:!
dense_11_164346:
identity¢ conv1d_2/StatefulPartitionedCall¢ conv1d_3/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢lstm_11/StatefulPartitionedCall 
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCallconv1d_2_inputconv1d_2_164316conv1d_2_164318*
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
D__inference_conv1d_2_layer_call_and_return_conditional_losses_1633232"
 conv1d_2/StatefulPartitionedCall»
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_164321conv1d_3_164323*
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
D__inference_conv1d_3_layer_call_and_return_conditional_losses_1633452"
 conv1d_3/StatefulPartitionedCall
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_1633582!
max_pooling1d_1/PartitionedCallÇ
lstm_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_10_164327lstm_10_164329lstm_10_164331*
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1641102!
lstm_10/StatefulPartitionedCallÃ
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_164334lstm_11_164336lstm_11_164338*
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1639372!
lstm_11/StatefulPartitionedCall¶
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_10_164341dense_10_164343*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_1636872"
 dense_10/StatefulPartitionedCall¤
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_164346*
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
D__inference_dense_11_layer_call_and_return_conditional_losses_1637002"
 dense_11/StatefulPartitionedCallþ
reshape_5/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
E__inference_reshape_5_layer_call_and_return_conditional_losses_1637172
reshape_5/PartitionedCall
IdentityIdentity"reshape_5/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_2_input
]
ë
&sequential_3_lstm_11_while_body_161909F
Bsequential_3_lstm_11_while_sequential_3_lstm_11_while_loop_counterL
Hsequential_3_lstm_11_while_sequential_3_lstm_11_while_maximum_iterations*
&sequential_3_lstm_11_while_placeholder,
(sequential_3_lstm_11_while_placeholder_1,
(sequential_3_lstm_11_while_placeholder_2,
(sequential_3_lstm_11_while_placeholder_3E
Asequential_3_lstm_11_while_sequential_3_lstm_11_strided_slice_1_0
}sequential_3_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_11_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_3_lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0:8\
Jsequential_3_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0:8W
Isequential_3_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0:8'
#sequential_3_lstm_11_while_identity)
%sequential_3_lstm_11_while_identity_1)
%sequential_3_lstm_11_while_identity_2)
%sequential_3_lstm_11_while_identity_3)
%sequential_3_lstm_11_while_identity_4)
%sequential_3_lstm_11_while_identity_5C
?sequential_3_lstm_11_while_sequential_3_lstm_11_strided_slice_1
{sequential_3_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_11_tensorarrayunstack_tensorlistfromtensorX
Fsequential_3_lstm_11_while_lstm_cell_11_matmul_readvariableop_resource:8Z
Hsequential_3_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource:8U
Gsequential_3_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource:8¢>sequential_3/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp¢=sequential_3/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp¢?sequential_3/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpí
Lsequential_3/lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_3/lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_3/lstm_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_3_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_11_tensorarrayunstack_tensorlistfromtensor_0&sequential_3_lstm_11_while_placeholderUsequential_3/lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_3/lstm_11/while/TensorArrayV2Read/TensorListGetItem
=sequential_3/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOpHsequential_3_lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02?
=sequential_3/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpª
.sequential_3/lstm_11/while/lstm_cell_11/MatMulMatMulEsequential_3/lstm_11/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_3/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ820
.sequential_3/lstm_11/while/lstm_cell_11/MatMul
?sequential_3/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOpJsequential_3_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02A
?sequential_3/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp
0sequential_3/lstm_11/while/lstm_cell_11/MatMul_1MatMul(sequential_3_lstm_11_while_placeholder_2Gsequential_3/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ822
0sequential_3/lstm_11/while/lstm_cell_11/MatMul_1
+sequential_3/lstm_11/while/lstm_cell_11/addAddV28sequential_3/lstm_11/while/lstm_cell_11/MatMul:product:0:sequential_3/lstm_11/while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82-
+sequential_3/lstm_11/while/lstm_cell_11/add
>sequential_3/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOpIsequential_3_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02@
>sequential_3/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp
/sequential_3/lstm_11/while/lstm_cell_11/BiasAddBiasAdd/sequential_3/lstm_11/while/lstm_cell_11/add:z:0Fsequential_3/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ821
/sequential_3/lstm_11/while/lstm_cell_11/BiasAdd´
7sequential_3/lstm_11/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_3/lstm_11/while/lstm_cell_11/split/split_dimß
-sequential_3/lstm_11/while/lstm_cell_11/splitSplit@sequential_3/lstm_11/while/lstm_cell_11/split/split_dim:output:08sequential_3/lstm_11/while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2/
-sequential_3/lstm_11/while/lstm_cell_11/split×
/sequential_3/lstm_11/while/lstm_cell_11/SigmoidSigmoid6sequential_3/lstm_11/while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_3/lstm_11/while/lstm_cell_11/SigmoidÛ
1sequential_3/lstm_11/while/lstm_cell_11/Sigmoid_1Sigmoid6sequential_3/lstm_11/while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_3/lstm_11/while/lstm_cell_11/Sigmoid_1ô
+sequential_3/lstm_11/while/lstm_cell_11/mulMul5sequential_3/lstm_11/while/lstm_cell_11/Sigmoid_1:y:0(sequential_3_lstm_11_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/lstm_11/while/lstm_cell_11/mulÎ
,sequential_3/lstm_11/while/lstm_cell_11/ReluRelu6sequential_3/lstm_11/while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_3/lstm_11/while/lstm_cell_11/Relu
-sequential_3/lstm_11/while/lstm_cell_11/mul_1Mul3sequential_3/lstm_11/while/lstm_cell_11/Sigmoid:y:0:sequential_3/lstm_11/while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_11/while/lstm_cell_11/mul_1ý
-sequential_3/lstm_11/while/lstm_cell_11/add_1AddV2/sequential_3/lstm_11/while/lstm_cell_11/mul:z:01sequential_3/lstm_11/while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_11/while/lstm_cell_11/add_1Û
1sequential_3/lstm_11/while/lstm_cell_11/Sigmoid_2Sigmoid6sequential_3/lstm_11/while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_3/lstm_11/while/lstm_cell_11/Sigmoid_2Í
.sequential_3/lstm_11/while/lstm_cell_11/Relu_1Relu1sequential_3/lstm_11/while/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_3/lstm_11/while/lstm_cell_11/Relu_1
-sequential_3/lstm_11/while/lstm_cell_11/mul_2Mul5sequential_3/lstm_11/while/lstm_cell_11/Sigmoid_2:y:0<sequential_3/lstm_11/while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_11/while/lstm_cell_11/mul_2É
?sequential_3/lstm_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_3_lstm_11_while_placeholder_1&sequential_3_lstm_11_while_placeholder1sequential_3/lstm_11/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_3/lstm_11/while/TensorArrayV2Write/TensorListSetItem
 sequential_3/lstm_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_3/lstm_11/while/add/y½
sequential_3/lstm_11/while/addAddV2&sequential_3_lstm_11_while_placeholder)sequential_3/lstm_11/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_11/while/add
"sequential_3/lstm_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_3/lstm_11/while/add_1/yß
 sequential_3/lstm_11/while/add_1AddV2Bsequential_3_lstm_11_while_sequential_3_lstm_11_while_loop_counter+sequential_3/lstm_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_11/while/add_1¿
#sequential_3/lstm_11/while/IdentityIdentity$sequential_3/lstm_11/while/add_1:z:0 ^sequential_3/lstm_11/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_3/lstm_11/while/Identityç
%sequential_3/lstm_11/while/Identity_1IdentityHsequential_3_lstm_11_while_sequential_3_lstm_11_while_maximum_iterations ^sequential_3/lstm_11/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_3/lstm_11/while/Identity_1Á
%sequential_3/lstm_11/while/Identity_2Identity"sequential_3/lstm_11/while/add:z:0 ^sequential_3/lstm_11/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_3/lstm_11/while/Identity_2î
%sequential_3/lstm_11/while/Identity_3IdentityOsequential_3/lstm_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_3/lstm_11/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_3/lstm_11/while/Identity_3á
%sequential_3/lstm_11/while/Identity_4Identity1sequential_3/lstm_11/while/lstm_cell_11/mul_2:z:0 ^sequential_3/lstm_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_3/lstm_11/while/Identity_4á
%sequential_3/lstm_11/while/Identity_5Identity1sequential_3/lstm_11/while/lstm_cell_11/add_1:z:0 ^sequential_3/lstm_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_3/lstm_11/while/Identity_5Ç
sequential_3/lstm_11/while/NoOpNoOp?^sequential_3/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>^sequential_3/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp@^sequential_3/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_3/lstm_11/while/NoOp"S
#sequential_3_lstm_11_while_identity,sequential_3/lstm_11/while/Identity:output:0"W
%sequential_3_lstm_11_while_identity_1.sequential_3/lstm_11/while/Identity_1:output:0"W
%sequential_3_lstm_11_while_identity_2.sequential_3/lstm_11/while/Identity_2:output:0"W
%sequential_3_lstm_11_while_identity_3.sequential_3/lstm_11/while/Identity_3:output:0"W
%sequential_3_lstm_11_while_identity_4.sequential_3/lstm_11/while/Identity_4:output:0"W
%sequential_3_lstm_11_while_identity_5.sequential_3/lstm_11/while/Identity_5:output:0"
Gsequential_3_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resourceIsequential_3_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0"
Hsequential_3_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resourceJsequential_3_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0"
Fsequential_3_lstm_11_while_lstm_cell_11_matmul_readvariableop_resourceHsequential_3_lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0"
?sequential_3_lstm_11_while_sequential_3_lstm_11_strided_slice_1Asequential_3_lstm_11_while_sequential_3_lstm_11_strided_slice_1_0"ü
{sequential_3_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_11_tensorarrayunstack_tensorlistfromtensor}sequential_3_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
>sequential_3/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>sequential_3/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp2~
=sequential_3/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp=sequential_3/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp2
?sequential_3/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?sequential_3/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
£
²
(__inference_lstm_11_layer_call_fn_165910

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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1639372
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

õ
D__inference_dense_10_layer_call_and_return_conditional_losses_163687

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
F

C__inference_lstm_11_layer_call_and_return_conditional_losses_162828

inputs%
lstm_cell_11_162746:8%
lstm_cell_11_162748:8!
lstm_cell_11_162750:8
identity¢$lstm_cell_11/StatefulPartitionedCall¢whileD
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
$lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_11_162746lstm_cell_11_162748lstm_cell_11_162750*
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1627452&
$lstm_cell_11/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_11_162746lstm_cell_11_162748lstm_cell_11_162750*
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
while_body_162759*
condR
while_cond_162758*K
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
NoOpNoOp%^lstm_cell_11/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_11/StatefulPartitionedCall$lstm_cell_11/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
²
(__inference_lstm_11_layer_call_fn_165899

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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1636682
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

Û
-__inference_sequential_3_layer_call_fn_164275
conv1d_2_input
unknown: 
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
StatefulPartitionedCallStatefulPartitionedCallconv1d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_1642152
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
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_2_input
þ
­
D__inference_dense_11_layer_call_and_return_conditional_losses_166548

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
Ü[

C__inference_lstm_11_layer_call_and_return_conditional_losses_166514

inputs=
+lstm_cell_11_matmul_readvariableop_resource:8?
-lstm_cell_11_matmul_1_readvariableop_resource:8:
,lstm_cell_11_biasadd_readvariableop_resource:8
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp¬
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMulº
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp¨
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMul_1
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/add³
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp¬
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dimó
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul}
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2|
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1 
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
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
while_body_166430*
condR
while_cond_166429*K
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
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü[

C__inference_lstm_11_layer_call_and_return_conditional_losses_163668

inputs=
+lstm_cell_11_matmul_readvariableop_resource:8?
-lstm_cell_11_matmul_1_readvariableop_resource:8:
,lstm_cell_11_biasadd_readvariableop_resource:8
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp¬
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMulº
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp¨
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMul_1
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/add³
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp¬
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dimó
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul}
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2|
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1 
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
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
while_body_163584*
condR
while_cond_163583*K
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
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
g
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_163358

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
¬

D__inference_conv1d_3_layer_call_and_return_conditional_losses_163345

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
Æ

ã
lstm_10_while_cond_164891,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1D
@lstm_10_while_lstm_10_while_cond_164891___redundant_placeholder0D
@lstm_10_while_lstm_10_while_cond_164891___redundant_placeholder1D
@lstm_10_while_lstm_10_while_cond_164891___redundant_placeholder2D
@lstm_10_while_lstm_10_while_cond_164891___redundant_placeholder3
lstm_10_while_identity

lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2
lstm_10/while/Lessu
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_10/while/Identity"9
lstm_10_while_identitylstm_10/while/Identity:output:0*(
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
while_cond_165479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_165479___redundant_placeholder04
0while_while_cond_165479___redundant_placeholder14
0while_while_cond_165479___redundant_placeholder24
0while_while_cond_165479___redundant_placeholder3
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
while_body_163584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_11_matmul_readvariableop_resource_0:8G
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_11_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_11_matmul_readvariableop_resource:8E
3while_lstm_cell_11_matmul_1_readvariableop_resource:8@
2while_lstm_cell_11_biasadd_readvariableop_resource:8¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOpÖ
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMulÎ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp¿
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMul_1·
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/addÇ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÄ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1 
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu´
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1©
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¸
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F

C__inference_lstm_11_layer_call_and_return_conditional_losses_163038

inputs%
lstm_cell_11_162956:8%
lstm_cell_11_162958:8!
lstm_cell_11_162960:8
identity¢$lstm_cell_11/StatefulPartitionedCall¢whileD
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
$lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_11_162956lstm_cell_11_162958lstm_cell_11_162960*
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1628912&
$lstm_cell_11/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_11_162956lstm_cell_11_162958lstm_cell_11_162960*
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
while_body_162969*
condR
while_cond_162968*K
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
NoOpNoOp%^lstm_cell_11/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_11/StatefulPartitionedCall$lstm_cell_11/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
]
ë
&sequential_3_lstm_10_while_body_161762F
Bsequential_3_lstm_10_while_sequential_3_lstm_10_while_loop_counterL
Hsequential_3_lstm_10_while_sequential_3_lstm_10_while_maximum_iterations*
&sequential_3_lstm_10_while_placeholder,
(sequential_3_lstm_10_while_placeholder_1,
(sequential_3_lstm_10_while_placeholder_2,
(sequential_3_lstm_10_while_placeholder_3E
Asequential_3_lstm_10_while_sequential_3_lstm_10_strided_slice_1_0
}sequential_3_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_10_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_3_lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0:@p\
Jsequential_3_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0:pW
Isequential_3_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0:p'
#sequential_3_lstm_10_while_identity)
%sequential_3_lstm_10_while_identity_1)
%sequential_3_lstm_10_while_identity_2)
%sequential_3_lstm_10_while_identity_3)
%sequential_3_lstm_10_while_identity_4)
%sequential_3_lstm_10_while_identity_5C
?sequential_3_lstm_10_while_sequential_3_lstm_10_strided_slice_1
{sequential_3_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_10_tensorarrayunstack_tensorlistfromtensorX
Fsequential_3_lstm_10_while_lstm_cell_10_matmul_readvariableop_resource:@pZ
Hsequential_3_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource:pU
Gsequential_3_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource:p¢>sequential_3/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp¢=sequential_3/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp¢?sequential_3/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpí
Lsequential_3/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2N
Lsequential_3/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_3/lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_3_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_10_tensorarrayunstack_tensorlistfromtensor_0&sequential_3_lstm_10_while_placeholderUsequential_3/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02@
>sequential_3/lstm_10/while/TensorArrayV2Read/TensorListGetItem
=sequential_3/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOpHsequential_3_lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02?
=sequential_3/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpª
.sequential_3/lstm_10/while/lstm_cell_10/MatMulMatMulEsequential_3/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_3/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp20
.sequential_3/lstm_10/while/lstm_cell_10/MatMul
?sequential_3/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpJsequential_3_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02A
?sequential_3/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp
0sequential_3/lstm_10/while/lstm_cell_10/MatMul_1MatMul(sequential_3_lstm_10_while_placeholder_2Gsequential_3/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp22
0sequential_3/lstm_10/while/lstm_cell_10/MatMul_1
+sequential_3/lstm_10/while/lstm_cell_10/addAddV28sequential_3/lstm_10/while/lstm_cell_10/MatMul:product:0:sequential_3/lstm_10/while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2-
+sequential_3/lstm_10/while/lstm_cell_10/add
>sequential_3/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOpIsequential_3_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02@
>sequential_3/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp
/sequential_3/lstm_10/while/lstm_cell_10/BiasAddBiasAdd/sequential_3/lstm_10/while/lstm_cell_10/add:z:0Fsequential_3/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp21
/sequential_3/lstm_10/while/lstm_cell_10/BiasAdd´
7sequential_3/lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_3/lstm_10/while/lstm_cell_10/split/split_dimß
-sequential_3/lstm_10/while/lstm_cell_10/splitSplit@sequential_3/lstm_10/while/lstm_cell_10/split/split_dim:output:08sequential_3/lstm_10/while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2/
-sequential_3/lstm_10/while/lstm_cell_10/split×
/sequential_3/lstm_10/while/lstm_cell_10/SigmoidSigmoid6sequential_3/lstm_10/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_3/lstm_10/while/lstm_cell_10/SigmoidÛ
1sequential_3/lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid6sequential_3/lstm_10/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_3/lstm_10/while/lstm_cell_10/Sigmoid_1ô
+sequential_3/lstm_10/while/lstm_cell_10/mulMul5sequential_3/lstm_10/while/lstm_cell_10/Sigmoid_1:y:0(sequential_3_lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/lstm_10/while/lstm_cell_10/mulÎ
,sequential_3/lstm_10/while/lstm_cell_10/ReluRelu6sequential_3/lstm_10/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_3/lstm_10/while/lstm_cell_10/Relu
-sequential_3/lstm_10/while/lstm_cell_10/mul_1Mul3sequential_3/lstm_10/while/lstm_cell_10/Sigmoid:y:0:sequential_3/lstm_10/while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_10/while/lstm_cell_10/mul_1ý
-sequential_3/lstm_10/while/lstm_cell_10/add_1AddV2/sequential_3/lstm_10/while/lstm_cell_10/mul:z:01sequential_3/lstm_10/while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_10/while/lstm_cell_10/add_1Û
1sequential_3/lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid6sequential_3/lstm_10/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_3/lstm_10/while/lstm_cell_10/Sigmoid_2Í
.sequential_3/lstm_10/while/lstm_cell_10/Relu_1Relu1sequential_3/lstm_10/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_3/lstm_10/while/lstm_cell_10/Relu_1
-sequential_3/lstm_10/while/lstm_cell_10/mul_2Mul5sequential_3/lstm_10/while/lstm_cell_10/Sigmoid_2:y:0<sequential_3/lstm_10/while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_10/while/lstm_cell_10/mul_2É
?sequential_3/lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_3_lstm_10_while_placeholder_1&sequential_3_lstm_10_while_placeholder1sequential_3/lstm_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_3/lstm_10/while/TensorArrayV2Write/TensorListSetItem
 sequential_3/lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_3/lstm_10/while/add/y½
sequential_3/lstm_10/while/addAddV2&sequential_3_lstm_10_while_placeholder)sequential_3/lstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_10/while/add
"sequential_3/lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_3/lstm_10/while/add_1/yß
 sequential_3/lstm_10/while/add_1AddV2Bsequential_3_lstm_10_while_sequential_3_lstm_10_while_loop_counter+sequential_3/lstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_10/while/add_1¿
#sequential_3/lstm_10/while/IdentityIdentity$sequential_3/lstm_10/while/add_1:z:0 ^sequential_3/lstm_10/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_3/lstm_10/while/Identityç
%sequential_3/lstm_10/while/Identity_1IdentityHsequential_3_lstm_10_while_sequential_3_lstm_10_while_maximum_iterations ^sequential_3/lstm_10/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_3/lstm_10/while/Identity_1Á
%sequential_3/lstm_10/while/Identity_2Identity"sequential_3/lstm_10/while/add:z:0 ^sequential_3/lstm_10/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_3/lstm_10/while/Identity_2î
%sequential_3/lstm_10/while/Identity_3IdentityOsequential_3/lstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_3/lstm_10/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_3/lstm_10/while/Identity_3á
%sequential_3/lstm_10/while/Identity_4Identity1sequential_3/lstm_10/while/lstm_cell_10/mul_2:z:0 ^sequential_3/lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_3/lstm_10/while/Identity_4á
%sequential_3/lstm_10/while/Identity_5Identity1sequential_3/lstm_10/while/lstm_cell_10/add_1:z:0 ^sequential_3/lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_3/lstm_10/while/Identity_5Ç
sequential_3/lstm_10/while/NoOpNoOp?^sequential_3/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_3/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_3/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_3/lstm_10/while/NoOp"S
#sequential_3_lstm_10_while_identity,sequential_3/lstm_10/while/Identity:output:0"W
%sequential_3_lstm_10_while_identity_1.sequential_3/lstm_10/while/Identity_1:output:0"W
%sequential_3_lstm_10_while_identity_2.sequential_3/lstm_10/while/Identity_2:output:0"W
%sequential_3_lstm_10_while_identity_3.sequential_3/lstm_10/while/Identity_3:output:0"W
%sequential_3_lstm_10_while_identity_4.sequential_3/lstm_10/while/Identity_4:output:0"W
%sequential_3_lstm_10_while_identity_5.sequential_3/lstm_10/while/Identity_5:output:0"
Gsequential_3_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resourceIsequential_3_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"
Hsequential_3_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resourceJsequential_3_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"
Fsequential_3_lstm_10_while_lstm_cell_10_matmul_readvariableop_resourceHsequential_3_lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0"
?sequential_3_lstm_10_while_sequential_3_lstm_10_strided_slice_1Asequential_3_lstm_10_while_sequential_3_lstm_10_strided_slice_1_0"ü
{sequential_3_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_10_tensorarrayunstack_tensorlistfromtensor}sequential_3_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
>sequential_3/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>sequential_3/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2~
=sequential_3/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp=sequential_3/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp2
?sequential_3/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?sequential_3/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_164110

inputs=
+lstm_cell_10_matmul_readvariableop_resource:@p?
-lstm_cell_10_matmul_1_readvariableop_resource:p:
,lstm_cell_10_biasadd_readvariableop_resource:p
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp¬
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMulº
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp¨
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMul_1
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/add³
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp¬
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dimó
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul}
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
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
while_body_164026*
condR
while_cond_164025*K
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
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
³
ó
-__inference_lstm_cell_10_layer_call_fn_166583

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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1621152
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
é

H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_162891

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

a
E__inference_reshape_5_layer_call_and_return_conditional_losses_163717

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
?
Ê
while_body_165480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_10_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_10_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_10_matmul_readvariableop_resource:@pE
3while_lstm_cell_10_matmul_1_readvariableop_resource:p@
2while_lstm_cell_10_biasadd_readvariableop_resource:p¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOpÖ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMulÎ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp¿
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMul_1·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/addÇ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÄ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1 
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_165781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_165781___redundant_placeholder04
0while_while_cond_165781___redundant_placeholder14
0while_while_cond_165781___redundant_placeholder24
0while_while_cond_165781___redundant_placeholder3
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
Ü[

C__inference_lstm_11_layer_call_and_return_conditional_losses_166363

inputs=
+lstm_cell_11_matmul_readvariableop_resource:8?
-lstm_cell_11_matmul_1_readvariableop_resource:8:
,lstm_cell_11_biasadd_readvariableop_resource:8
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp¬
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMulº
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp¨
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMul_1
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/add³
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp¬
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dimó
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul}
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2|
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1 
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
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
while_body_166279*
condR
while_cond_166278*K
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
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
ó
-__inference_lstm_cell_10_layer_call_fn_166600

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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1622612
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
¬

D__inference_conv1d_3_layer_call_and_return_conditional_losses_165192

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
»
´
(__inference_lstm_11_layer_call_fn_165888
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1630382
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
¬

D__inference_conv1d_2_layer_call_and_return_conditional_losses_165167

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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
²
(__inference_lstm_10_layer_call_fn_165251

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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1635102
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


)__inference_conv1d_3_layer_call_fn_165176

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
D__inference_conv1d_3_layer_call_and_return_conditional_losses_1633452
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
Õ
Ã
while_cond_164025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_164025___redundant_placeholder04
0while_while_cond_164025___redundant_placeholder14
0while_while_cond_164025___redundant_placeholder24
0while_while_cond_164025___redundant_placeholder3
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
F

C__inference_lstm_10_layer_call_and_return_conditional_losses_162408

inputs%
lstm_cell_10_162326:@p%
lstm_cell_10_162328:p!
lstm_cell_10_162330:p
identity¢$lstm_cell_10/StatefulPartitionedCall¢whileD
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
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_162326lstm_cell_10_162328lstm_cell_10_162330*
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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1622612&
$lstm_cell_10/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_162326lstm_cell_10_162328lstm_cell_10_162330*
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
while_body_162339*
condR
while_cond_162338*K
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
NoOpNoOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
\

C__inference_lstm_11_layer_call_and_return_conditional_losses_166212
inputs_0=
+lstm_cell_11_matmul_readvariableop_resource:8?
-lstm_cell_11_matmul_1_readvariableop_resource:8:
,lstm_cell_11_biasadd_readvariableop_resource:8
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp¬
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMulº
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp¨
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/MatMul_1
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/add³
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp¬
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dimó
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul}
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2|
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1 
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
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
while_body_166128*
condR
while_cond_166127*K
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
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
È
}
)__inference_dense_11_layer_call_fn_166541

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
D__inference_dense_11_layer_call_and_return_conditional_losses_1637002
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

Û
-__inference_sequential_3_layer_call_fn_163749
conv1d_2_input
unknown: 
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
StatefulPartitionedCallStatefulPartitionedCallconv1d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_1637202
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
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_2_input
Ò%
Ý
while_body_162129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_10_162153_0:@p-
while_lstm_cell_10_162155_0:p)
while_lstm_cell_10_162157_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_10_162153:@p+
while_lstm_cell_10_162155:p'
while_lstm_cell_10_162157:p¢*while/lstm_cell_10/StatefulPartitionedCallÃ
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
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_162153_0while_lstm_cell_10_162155_0while_lstm_cell_10_162157_0*
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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1621152,
*while/lstm_cell_10/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
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
while_lstm_cell_10_162153while_lstm_cell_10_162153_0"8
while_lstm_cell_10_162155while_lstm_cell_10_162155_0"8
while_lstm_cell_10_162157while_lstm_cell_10_162157_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ö
´
(__inference_lstm_10_layer_call_fn_165240
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1624082
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
while_cond_165976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_165976___redundant_placeholder04
0while_while_cond_165976___redundant_placeholder14
0while_while_cond_165976___redundant_placeholder24
0while_while_cond_165976___redundant_placeholder3
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
Ö
´
(__inference_lstm_10_layer_call_fn_165229
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1621982
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
while_cond_166429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_166429___redundant_placeholder04
0while_while_cond_166429___redundant_placeholder14
0while_while_cond_166429___redundant_placeholder24
0while_while_cond_166429___redundant_placeholder3
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
ñ

H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_166664

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
Í
ç
&sequential_3_lstm_11_while_cond_161908F
Bsequential_3_lstm_11_while_sequential_3_lstm_11_while_loop_counterL
Hsequential_3_lstm_11_while_sequential_3_lstm_11_while_maximum_iterations*
&sequential_3_lstm_11_while_placeholder,
(sequential_3_lstm_11_while_placeholder_1,
(sequential_3_lstm_11_while_placeholder_2,
(sequential_3_lstm_11_while_placeholder_3H
Dsequential_3_lstm_11_while_less_sequential_3_lstm_11_strided_slice_1^
Zsequential_3_lstm_11_while_sequential_3_lstm_11_while_cond_161908___redundant_placeholder0^
Zsequential_3_lstm_11_while_sequential_3_lstm_11_while_cond_161908___redundant_placeholder1^
Zsequential_3_lstm_11_while_sequential_3_lstm_11_while_cond_161908___redundant_placeholder2^
Zsequential_3_lstm_11_while_sequential_3_lstm_11_while_cond_161908___redundant_placeholder3'
#sequential_3_lstm_11_while_identity
Ù
sequential_3/lstm_11/while/LessLess&sequential_3_lstm_11_while_placeholderDsequential_3_lstm_11_while_less_sequential_3_lstm_11_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_3/lstm_11/while/Less
#sequential_3/lstm_11/while/IdentityIdentity#sequential_3/lstm_11/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_3/lstm_11/while/Identity"S
#sequential_3_lstm_11_while_identity,sequential_3/lstm_11/while/Identity:output:0*(
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
Æ
F
*__inference_reshape_5_layer_call_fn_166553

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
E__inference_reshape_5_layer_call_and_return_conditional_losses_1637172
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
ñ

H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_166762

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
Õ
Ã
while_cond_162338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162338___redundant_placeholder04
0while_while_cond_162338___redundant_placeholder14
0while_while_cond_162338___redundant_placeholder24
0while_while_cond_162338___redundant_placeholder3
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
while_cond_165328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_165328___redundant_placeholder04
0while_while_cond_165328___redundant_placeholder14
0while_while_cond_165328___redundant_placeholder24
0while_while_cond_165328___redundant_placeholder3
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_166730

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
ðc

__inference__traced_save_166923
file_prefix.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop.
*savev2_conv1d_3_kernel_read_readvariableop,
(savev2_conv1d_3_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_10_lstm_cell_10_kernel_read_readvariableopD
@savev2_lstm_10_lstm_cell_10_recurrent_kernel_read_readvariableop8
4savev2_lstm_10_lstm_cell_10_bias_read_readvariableop:
6savev2_lstm_11_lstm_cell_11_kernel_read_readvariableopD
@savev2_lstm_11_lstm_cell_11_recurrent_kernel_read_readvariableop8
4savev2_lstm_11_lstm_cell_11_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_2_kernel_m_read_readvariableop3
/savev2_adam_conv1d_2_bias_m_read_readvariableop5
1savev2_adam_conv1d_3_kernel_m_read_readvariableop3
/savev2_adam_conv1d_3_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_10_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_10_bias_m_read_readvariableopA
=savev2_adam_lstm_11_lstm_cell_11_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_11_lstm_cell_11_bias_m_read_readvariableop5
1savev2_adam_conv1d_2_kernel_v_read_readvariableop3
/savev2_adam_conv1d_2_bias_v_read_readvariableop5
1savev2_adam_conv1d_3_kernel_v_read_readvariableop3
/savev2_adam_conv1d_3_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_10_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_10_bias_v_read_readvariableopA
=savev2_adam_lstm_11_lstm_cell_11_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_11_lstm_cell_11_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop*savev2_conv1d_3_kernel_read_readvariableop(savev2_conv1d_3_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_10_lstm_cell_10_kernel_read_readvariableop@savev2_lstm_10_lstm_cell_10_recurrent_kernel_read_readvariableop4savev2_lstm_10_lstm_cell_10_bias_read_readvariableop6savev2_lstm_11_lstm_cell_11_kernel_read_readvariableop@savev2_lstm_11_lstm_cell_11_recurrent_kernel_read_readvariableop4savev2_lstm_11_lstm_cell_11_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_2_kernel_m_read_readvariableop/savev2_adam_conv1d_2_bias_m_read_readvariableop1savev2_adam_conv1d_3_kernel_m_read_readvariableop/savev2_adam_conv1d_3_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop=savev2_adam_lstm_10_lstm_cell_10_kernel_m_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_10_lstm_cell_10_bias_m_read_readvariableop=savev2_adam_lstm_11_lstm_cell_11_kernel_m_read_readvariableopGsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_11_lstm_cell_11_bias_m_read_readvariableop1savev2_adam_conv1d_2_kernel_v_read_readvariableop/savev2_adam_conv1d_2_bias_v_read_readvariableop1savev2_adam_conv1d_3_kernel_v_read_readvariableop/savev2_adam_conv1d_3_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop=savev2_adam_lstm_10_lstm_cell_10_kernel_v_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_10_lstm_cell_10_bias_v_read_readvariableop=savev2_adam_lstm_11_lstm_cell_11_kernel_v_read_readvariableopGsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_11_lstm_cell_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ô: : : : @:@:::: : : : : :@p:p:p:8:8:8: : : : : @:@::::@p:p:p:8:8:8: : : @:@::::@p:p:p:8:8:8: 2(
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
: : 
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
: : #
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
\

C__inference_lstm_10_layer_call_and_return_conditional_losses_165413
inputs_0=
+lstm_cell_10_matmul_readvariableop_resource:@p?
-lstm_cell_10_matmul_1_readvariableop_resource:p:
,lstm_cell_10_biasadd_readvariableop_resource:p
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp¬
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMulº
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp¨
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMul_1
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/add³
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp¬
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dimó
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul}
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
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
while_body_165329*
condR
while_cond_165328*K
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
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
?
Ê
while_body_165631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_10_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_10_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_10_matmul_readvariableop_resource:@pE
3while_lstm_cell_10_matmul_1_readvariableop_resource:p@
2while_lstm_cell_10_biasadd_readvariableop_resource:p¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOpÖ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMulÎ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp¿
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMul_1·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/addÇ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÄ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1 
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_162758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162758___redundant_placeholder04
0while_while_cond_162758___redundant_placeholder14
0while_while_cond_162758___redundant_placeholder24
0while_while_cond_162758___redundant_placeholder3
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
while_body_164026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_10_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_10_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_10_matmul_readvariableop_resource:@pE
3while_lstm_cell_10_matmul_1_readvariableop_resource:p@
2while_lstm_cell_10_biasadd_readvariableop_resource:p¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOpÖ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMulÎ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp¿
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMul_1·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/addÇ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÄ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1 
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
Ê
while_body_163426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_10_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_10_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_10_matmul_readvariableop_resource:@pE
3while_lstm_cell_10_matmul_1_readvariableop_resource:p@
2while_lstm_cell_10_biasadd_readvariableop_resource:p¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOpÖ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMulÎ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp¿
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMul_1·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/addÇ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÄ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1 
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
Ê
while_body_166128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_11_matmul_readvariableop_resource_0:8G
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_11_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_11_matmul_readvariableop_resource:8E
3while_lstm_cell_11_matmul_1_readvariableop_resource:8@
2while_lstm_cell_11_biasadd_readvariableop_resource:8¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOpÖ
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMulÎ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp¿
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMul_1·
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/addÇ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÄ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1 
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu´
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1©
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¸
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_166278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_166278___redundant_placeholder04
0while_while_cond_166278___redundant_placeholder14
0while_while_cond_166278___redundant_placeholder24
0while_while_cond_166278___redundant_placeholder3
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


)__inference_conv1d_2_layer_call_fn_165151

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
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_2_layer_call_and_return_conditional_losses_1633232
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
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
´
(__inference_lstm_11_layer_call_fn_165877
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1628282
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
while_cond_162968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_162968___redundant_placeholder04
0while_while_cond_162968___redundant_placeholder14
0while_while_cond_162968___redundant_placeholder24
0while_while_cond_162968___redundant_placeholder3
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
F

C__inference_lstm_10_layer_call_and_return_conditional_losses_162198

inputs%
lstm_cell_10_162116:@p%
lstm_cell_10_162118:p!
lstm_cell_10_162120:p
identity¢$lstm_cell_10/StatefulPartitionedCall¢whileD
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
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_162116lstm_cell_10_162118lstm_cell_10_162120*
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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1621152&
$lstm_cell_10/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_162116lstm_cell_10_162118lstm_cell_10_162120*
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
while_body_162129*
condR
while_cond_162128*K
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
NoOpNoOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç
ý
H__inference_sequential_3_layer_call_and_return_conditional_losses_164797

inputsJ
4conv1d_2_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_2_biasadd_readvariableop_resource: J
4conv1d_3_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_3_biasadd_readvariableop_resource:@E
3lstm_10_lstm_cell_10_matmul_readvariableop_resource:@pG
5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource:pB
4lstm_10_lstm_cell_10_biasadd_readvariableop_resource:pE
3lstm_11_lstm_cell_11_matmul_readvariableop_resource:8G
5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource:8B
4lstm_11_lstm_cell_11_biasadd_readvariableop_resource:89
'dense_10_matmul_readvariableop_resource:6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:
identity¢conv1d_2/BiasAdd/ReadVariableOp¢+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp¢conv1d_3/BiasAdd/ReadVariableOp¢+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp¢*lstm_10/lstm_cell_10/MatMul/ReadVariableOp¢,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp¢lstm_10/while¢+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp¢*lstm_11/lstm_cell_11/MatMul/ReadVariableOp¢,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp¢lstm_11/while
conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_2/conv1d/ExpandDims/dim±
conv1d_2/conv1d/ExpandDims
ExpandDimsinputs'conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_2/conv1d/ExpandDimsÓ
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_2/conv1d/ExpandDims_1/dimÛ
conv1d_2/conv1d/ExpandDims_1
ExpandDims3conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_2/conv1d/ExpandDims_1Û
conv1d_2/conv1dConv2D#conv1d_2/conv1d/ExpandDims:output:0%conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
conv1d_2/conv1d­
conv1d_2/conv1d/SqueezeSqueezeconv1d_2/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_2/conv1d/Squeeze§
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_2/BiasAdd/ReadVariableOp°
conv1d_2/BiasAddBiasAdd conv1d_2/conv1d/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_2/BiasAddw
conv1d_2/ReluReluconv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_2/Relu
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_3/conv1d/ExpandDims/dimÆ
conv1d_3/conv1d/ExpandDims
ExpandDimsconv1d_2/Relu:activations:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_3/conv1d/ExpandDimsÓ
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dimÛ
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_3/conv1d/ExpandDims_1Û
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
conv1d_3/conv1d­
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_3/conv1d/Squeeze§
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_3/BiasAdd/ReadVariableOp°
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_3/BiasAddw
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
conv1d_3/Relu
max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_1/ExpandDims/dimÆ
max_pooling1d_1/ExpandDims
ExpandDimsconv1d_3/Relu:activations:0'max_pooling1d_1/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
max_pooling1d_1/ExpandDimsÏ
max_pooling1d_1/MaxPoolMaxPool#max_pooling1d_1/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling1d_1/MaxPool¬
max_pooling1d_1/SqueezeSqueeze max_pooling1d_1/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_1/Squeezen
lstm_10/ShapeShape max_pooling1d_1/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_10/Shape
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice/stack
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_1
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_2
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slicel
lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros/mul/y
lstm_10/zeros/mulMullstm_10/strided_slice:output:0lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/mulo
lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros/Less/y
lstm_10/zeros/LessLesslstm_10/zeros/mul:z:0lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/Lessr
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros/packed/1£
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros/packedo
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros/Const
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/zerosp
lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros_1/mul/y
lstm_10/zeros_1/mulMullstm_10/strided_slice:output:0lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/muls
lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_10/zeros_1/Less/y
lstm_10/zeros_1/LessLesslstm_10/zeros_1/mul:z:0lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/Lessv
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/zeros_1/packed/1©
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros_1/packeds
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros_1/Const
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/zeros_1
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose/perm¬
lstm_10/transpose	Transpose max_pooling1d_1/Squeeze:output:0lstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_10/transposeg
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:2
lstm_10/Shape_1
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_1/stack
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_1
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_2
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slice_1
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_10/TensorArrayV2/element_shapeÒ
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2Ï
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_10/TensorArrayUnstack/TensorListFromTensor
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_2/stack
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_1
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_2¬
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_10/strided_slice_2Ì
*lstm_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3lstm_10_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02,
*lstm_10/lstm_cell_10/MatMul/ReadVariableOpÌ
lstm_10/lstm_cell_10/MatMulMatMul lstm_10/strided_slice_2:output:02lstm_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/MatMulÒ
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02.
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpÈ
lstm_10/lstm_cell_10/MatMul_1MatMullstm_10/zeros:output:04lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/MatMul_1¿
lstm_10/lstm_cell_10/addAddV2%lstm_10/lstm_cell_10/MatMul:product:0'lstm_10/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/addË
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02-
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpÌ
lstm_10/lstm_cell_10/BiasAddBiasAddlstm_10/lstm_cell_10/add:z:03lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_10/lstm_cell_10/BiasAdd
$lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_10/lstm_cell_10/split/split_dim
lstm_10/lstm_cell_10/splitSplit-lstm_10/lstm_cell_10/split/split_dim:output:0%lstm_10/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_10/lstm_cell_10/split
lstm_10/lstm_cell_10/SigmoidSigmoid#lstm_10/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/Sigmoid¢
lstm_10/lstm_cell_10/Sigmoid_1Sigmoid#lstm_10/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_10/lstm_cell_10/Sigmoid_1«
lstm_10/lstm_cell_10/mulMul"lstm_10/lstm_cell_10/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/mul
lstm_10/lstm_cell_10/ReluRelu#lstm_10/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/Relu¼
lstm_10/lstm_cell_10/mul_1Mul lstm_10/lstm_cell_10/Sigmoid:y:0'lstm_10/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/mul_1±
lstm_10/lstm_cell_10/add_1AddV2lstm_10/lstm_cell_10/mul:z:0lstm_10/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/add_1¢
lstm_10/lstm_cell_10/Sigmoid_2Sigmoid#lstm_10/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_10/lstm_cell_10/Sigmoid_2
lstm_10/lstm_cell_10/Relu_1Relulstm_10/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/Relu_1À
lstm_10/lstm_cell_10/mul_2Mul"lstm_10/lstm_cell_10/Sigmoid_2:y:0)lstm_10/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/lstm_cell_10/mul_2
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_10/TensorArrayV2_1/element_shapeØ
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2_1^
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/time
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/maximum_iterationsz
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/while/loop_counter
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_10_lstm_cell_10_matmul_readvariableop_resource5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
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
lstm_10_while_body_164547*%
condR
lstm_10_while_cond_164546*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_10/whileÅ
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_10/TensorArrayV2Stack/TensorListStack
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_10/strided_slice_3/stack
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_10/strided_slice_3/stack_1
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_3/stack_2Ê
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_10/strided_slice_3
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose_1/permÅ
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/transpose_1v
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/runtimee
lstm_11/ShapeShapelstm_10/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_11/Shape
lstm_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice/stack
lstm_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_1
lstm_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_2
lstm_11/strided_sliceStridedSlicelstm_11/Shape:output:0$lstm_11/strided_slice/stack:output:0&lstm_11/strided_slice/stack_1:output:0&lstm_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slicel
lstm_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros/mul/y
lstm_11/zeros/mulMullstm_11/strided_slice:output:0lstm_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/mulo
lstm_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_11/zeros/Less/y
lstm_11/zeros/LessLesslstm_11/zeros/mul:z:0lstm_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/Lessr
lstm_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros/packed/1£
lstm_11/zeros/packedPacklstm_11/strided_slice:output:0lstm_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros/packedo
lstm_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros/Const
lstm_11/zerosFilllstm_11/zeros/packed:output:0lstm_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/zerosp
lstm_11/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros_1/mul/y
lstm_11/zeros_1/mulMullstm_11/strided_slice:output:0lstm_11/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/muls
lstm_11/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_11/zeros_1/Less/y
lstm_11/zeros_1/LessLesslstm_11/zeros_1/mul:z:0lstm_11/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/Lessv
lstm_11/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/zeros_1/packed/1©
lstm_11/zeros_1/packedPacklstm_11/strided_slice:output:0!lstm_11/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros_1/packeds
lstm_11/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros_1/Const
lstm_11/zeros_1Filllstm_11/zeros_1/packed:output:0lstm_11/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/zeros_1
lstm_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose/perm£
lstm_11/transpose	Transposelstm_10/transpose_1:y:0lstm_11/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/transposeg
lstm_11/Shape_1Shapelstm_11/transpose:y:0*
T0*
_output_shapes
:2
lstm_11/Shape_1
lstm_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_1/stack
lstm_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_1
lstm_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_2
lstm_11/strided_slice_1StridedSlicelstm_11/Shape_1:output:0&lstm_11/strided_slice_1/stack:output:0(lstm_11/strided_slice_1/stack_1:output:0(lstm_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slice_1
#lstm_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_11/TensorArrayV2/element_shapeÒ
lstm_11/TensorArrayV2TensorListReserve,lstm_11/TensorArrayV2/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2Ï
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_11/transpose:y:0Flstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_11/TensorArrayUnstack/TensorListFromTensor
lstm_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_2/stack
lstm_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_1
lstm_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_2¬
lstm_11/strided_slice_2StridedSlicelstm_11/transpose:y:0&lstm_11/strided_slice_2/stack:output:0(lstm_11/strided_slice_2/stack_1:output:0(lstm_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_11/strided_slice_2Ì
*lstm_11/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3lstm_11_lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02,
*lstm_11/lstm_cell_11/MatMul/ReadVariableOpÌ
lstm_11/lstm_cell_11/MatMulMatMul lstm_11/strided_slice_2:output:02lstm_11/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/MatMulÒ
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02.
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpÈ
lstm_11/lstm_cell_11/MatMul_1MatMullstm_11/zeros:output:04lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/MatMul_1¿
lstm_11/lstm_cell_11/addAddV2%lstm_11/lstm_cell_11/MatMul:product:0'lstm_11/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/addË
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02-
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpÌ
lstm_11/lstm_cell_11/BiasAddBiasAddlstm_11/lstm_cell_11/add:z:03lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
lstm_11/lstm_cell_11/BiasAdd
$lstm_11/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_11/lstm_cell_11/split/split_dim
lstm_11/lstm_cell_11/splitSplit-lstm_11/lstm_cell_11/split/split_dim:output:0%lstm_11/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_11/lstm_cell_11/split
lstm_11/lstm_cell_11/SigmoidSigmoid#lstm_11/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/Sigmoid¢
lstm_11/lstm_cell_11/Sigmoid_1Sigmoid#lstm_11/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_11/lstm_cell_11/Sigmoid_1«
lstm_11/lstm_cell_11/mulMul"lstm_11/lstm_cell_11/Sigmoid_1:y:0lstm_11/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/mul
lstm_11/lstm_cell_11/ReluRelu#lstm_11/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/Relu¼
lstm_11/lstm_cell_11/mul_1Mul lstm_11/lstm_cell_11/Sigmoid:y:0'lstm_11/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/mul_1±
lstm_11/lstm_cell_11/add_1AddV2lstm_11/lstm_cell_11/mul:z:0lstm_11/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/add_1¢
lstm_11/lstm_cell_11/Sigmoid_2Sigmoid#lstm_11/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_11/lstm_cell_11/Sigmoid_2
lstm_11/lstm_cell_11/Relu_1Relulstm_11/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/Relu_1À
lstm_11/lstm_cell_11/mul_2Mul"lstm_11/lstm_cell_11/Sigmoid_2:y:0)lstm_11/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/lstm_cell_11/mul_2
%lstm_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_11/TensorArrayV2_1/element_shapeØ
lstm_11/TensorArrayV2_1TensorListReserve.lstm_11/TensorArrayV2_1/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2_1^
lstm_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/time
 lstm_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/maximum_iterationsz
lstm_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/while/loop_counter
lstm_11/whileWhile#lstm_11/while/loop_counter:output:0)lstm_11/while/maximum_iterations:output:0lstm_11/time:output:0 lstm_11/TensorArrayV2_1:handle:0lstm_11/zeros:output:0lstm_11/zeros_1:output:0 lstm_11/strided_slice_1:output:0?lstm_11/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_11_lstm_cell_11_matmul_readvariableop_resource5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
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
lstm_11_while_body_164694*%
condR
lstm_11_while_cond_164693*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_11/whileÅ
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_11/TensorArrayV2Stack/TensorListStackTensorListStacklstm_11/while:output:3Alstm_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_11/TensorArrayV2Stack/TensorListStack
lstm_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_11/strided_slice_3/stack
lstm_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_11/strided_slice_3/stack_1
lstm_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_3/stack_2Ê
lstm_11/strided_slice_3StridedSlice3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_11/strided_slice_3/stack:output:0(lstm_11/strided_slice_3/stack_1:output:0(lstm_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_11/strided_slice_3
lstm_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose_1/permÅ
lstm_11/transpose_1	Transpose3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/transpose_1v
lstm_11/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/runtime¨
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_10/MatMul/ReadVariableOp¨
dense_10/MatMulMatMul lstm_11/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/MatMul§
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp¥
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/BiasAdds
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_10/Relu¨
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp£
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_11/MatMulk
reshape_5/ShapeShapedense_11/MatMul:product:0*
T0*
_output_shapes
:2
reshape_5/Shape
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_5/strided_slice/stack
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_1
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_2
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_5/strided_slicex
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/1x
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/2Ò
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_5/Reshape/shape¤
reshape_5/ReshapeReshapedense_11/MatMul:product:0 reshape_5/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_5/Reshapey
IdentityIdentityreshape_5/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^dense_11/MatMul/ReadVariableOp,^lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+^lstm_10/lstm_cell_10/MatMul/ReadVariableOp-^lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp^lstm_10/while,^lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+^lstm_11/lstm_cell_11/MatMul/ReadVariableOp-^lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp^lstm_11/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp+conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2Z
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp2X
*lstm_10/lstm_cell_10/MatMul/ReadVariableOp*lstm_10/lstm_cell_10/MatMul/ReadVariableOp2\
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp2
lstm_10/whilelstm_10/while2Z
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp2X
*lstm_11/lstm_cell_11/MatMul/ReadVariableOp*lstm_11/lstm_cell_11/MatMul/ReadVariableOp2\
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp2
lstm_11/whilelstm_11/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_166632

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
³
ó
-__inference_lstm_cell_11_layer_call_fn_166698

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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1628912
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
¥
g
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_165218

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
Ò%
Ý
while_body_162759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_11_162783_0:8-
while_lstm_cell_11_162785_0:8)
while_lstm_cell_11_162787_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_11_162783:8+
while_lstm_cell_11_162785:8'
while_lstm_cell_11_162787:8¢*while/lstm_cell_11/StatefulPartitionedCallÃ
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
*while/lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_11_162783_0while_lstm_cell_11_162785_0while_lstm_cell_11_162787_0*
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1627452,
*while/lstm_cell_11/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_11/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_11/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_11/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_11/StatefulPartitionedCall*"
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
while_lstm_cell_11_162783while_lstm_cell_11_162783_0"8
while_lstm_cell_11_162785while_lstm_cell_11_162785_0"8
while_lstm_cell_11_162787while_lstm_cell_11_162787_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_11/StatefulPartitionedCall*while/lstm_cell_11/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_10_while_body_164892,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0:@pO
=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0:pJ
<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0:p
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorK
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource:@pM
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource:pH
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource:p¢1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp¢0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp¢2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpÓ
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_10/while/TensorArrayV2Read/TensorListGetItemà
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype022
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpö
!lstm_10/while/lstm_cell_10/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2#
!lstm_10/while/lstm_cell_10/MatMulæ
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype024
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpß
#lstm_10/while/lstm_cell_10/MatMul_1MatMullstm_10_while_placeholder_2:lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2%
#lstm_10/while/lstm_cell_10/MatMul_1×
lstm_10/while/lstm_cell_10/addAddV2+lstm_10/while/lstm_cell_10/MatMul:product:0-lstm_10/while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2 
lstm_10/while/lstm_cell_10/addß
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype023
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpä
"lstm_10/while/lstm_cell_10/BiasAddBiasAdd"lstm_10/while/lstm_cell_10/add:z:09lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2$
"lstm_10/while/lstm_cell_10/BiasAdd
*lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_10/while/lstm_cell_10/split/split_dim«
 lstm_10/while/lstm_cell_10/splitSplit3lstm_10/while/lstm_cell_10/split/split_dim:output:0+lstm_10/while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_10/while/lstm_cell_10/split°
"lstm_10/while/lstm_cell_10/SigmoidSigmoid)lstm_10/while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_10/while/lstm_cell_10/Sigmoid´
$lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid)lstm_10/while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_10/while/lstm_cell_10/Sigmoid_1À
lstm_10/while/lstm_cell_10/mulMul(lstm_10/while/lstm_cell_10/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_10/while/lstm_cell_10/mul§
lstm_10/while/lstm_cell_10/ReluRelu)lstm_10/while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_10/while/lstm_cell_10/ReluÔ
 lstm_10/while/lstm_cell_10/mul_1Mul&lstm_10/while/lstm_cell_10/Sigmoid:y:0-lstm_10/while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/lstm_cell_10/mul_1É
 lstm_10/while/lstm_cell_10/add_1AddV2"lstm_10/while/lstm_cell_10/mul:z:0$lstm_10/while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/lstm_cell_10/add_1´
$lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid)lstm_10/while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_10/while/lstm_cell_10/Sigmoid_2¦
!lstm_10/while/lstm_cell_10/Relu_1Relu$lstm_10/while/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_10/while/lstm_cell_10/Relu_1Ø
 lstm_10/while/lstm_cell_10/mul_2Mul(lstm_10/while/lstm_cell_10/Sigmoid_2:y:0/lstm_10/while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_10/while/lstm_cell_10/mul_2
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_10/while/TensorArrayV2Write/TensorListSetIteml
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add/y
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/addp
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add_1/y
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/add_1
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity¦
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_1
lstm_10/while/Identity_2Identitylstm_10/while/add:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_2º
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_3­
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_10/mul_2:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/while/Identity_4­
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_10/add_1:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_10/while/Identity_5
lstm_10/while/NoOpNoOp2^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_10/while/NoOp"9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"z
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"|
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"x
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0"È
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2d
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp2h
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
þ
­
D__inference_dense_11_layer_call_and_return_conditional_losses_163700

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

a
E__inference_reshape_5_layer_call_and_return_conditional_losses_166566

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
ÀJ
Ê

lstm_11_while_body_164694,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3+
'lstm_11_while_lstm_11_strided_slice_1_0g
clstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0:8O
=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0:8J
<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0:8
lstm_11_while_identity
lstm_11_while_identity_1
lstm_11_while_identity_2
lstm_11_while_identity_3
lstm_11_while_identity_4
lstm_11_while_identity_5)
%lstm_11_while_lstm_11_strided_slice_1e
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensorK
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource:8M
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource:8H
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource:8¢1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp¢0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp¢2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpÓ
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0lstm_11_while_placeholderHlstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_11/while/TensorArrayV2Read/TensorListGetItemà
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype022
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpö
!lstm_11/while/lstm_cell_11/MatMulMatMul8lstm_11/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82#
!lstm_11/while/lstm_cell_11/MatMulæ
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype024
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpß
#lstm_11/while/lstm_cell_11/MatMul_1MatMullstm_11_while_placeholder_2:lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82%
#lstm_11/while/lstm_cell_11/MatMul_1×
lstm_11/while/lstm_cell_11/addAddV2+lstm_11/while/lstm_cell_11/MatMul:product:0-lstm_11/while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82 
lstm_11/while/lstm_cell_11/addß
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype023
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpä
"lstm_11/while/lstm_cell_11/BiasAddBiasAdd"lstm_11/while/lstm_cell_11/add:z:09lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82$
"lstm_11/while/lstm_cell_11/BiasAdd
*lstm_11/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_11/while/lstm_cell_11/split/split_dim«
 lstm_11/while/lstm_cell_11/splitSplit3lstm_11/while/lstm_cell_11/split/split_dim:output:0+lstm_11/while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_11/while/lstm_cell_11/split°
"lstm_11/while/lstm_cell_11/SigmoidSigmoid)lstm_11/while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_11/while/lstm_cell_11/Sigmoid´
$lstm_11/while/lstm_cell_11/Sigmoid_1Sigmoid)lstm_11/while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_11/while/lstm_cell_11/Sigmoid_1À
lstm_11/while/lstm_cell_11/mulMul(lstm_11/while/lstm_cell_11/Sigmoid_1:y:0lstm_11_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_11/while/lstm_cell_11/mul§
lstm_11/while/lstm_cell_11/ReluRelu)lstm_11/while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_11/while/lstm_cell_11/ReluÔ
 lstm_11/while/lstm_cell_11/mul_1Mul&lstm_11/while/lstm_cell_11/Sigmoid:y:0-lstm_11/while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/lstm_cell_11/mul_1É
 lstm_11/while/lstm_cell_11/add_1AddV2"lstm_11/while/lstm_cell_11/mul:z:0$lstm_11/while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/lstm_cell_11/add_1´
$lstm_11/while/lstm_cell_11/Sigmoid_2Sigmoid)lstm_11/while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_11/while/lstm_cell_11/Sigmoid_2¦
!lstm_11/while/lstm_cell_11/Relu_1Relu$lstm_11/while/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_11/while/lstm_cell_11/Relu_1Ø
 lstm_11/while/lstm_cell_11/mul_2Mul(lstm_11/while/lstm_cell_11/Sigmoid_2:y:0/lstm_11/while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_11/while/lstm_cell_11/mul_2
2lstm_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_11_while_placeholder_1lstm_11_while_placeholder$lstm_11/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_11/while/TensorArrayV2Write/TensorListSetIteml
lstm_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add/y
lstm_11/while/addAddV2lstm_11_while_placeholderlstm_11/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/addp
lstm_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add_1/y
lstm_11/while/add_1AddV2(lstm_11_while_lstm_11_while_loop_counterlstm_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/add_1
lstm_11/while/IdentityIdentitylstm_11/while/add_1:z:0^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity¦
lstm_11/while/Identity_1Identity.lstm_11_while_lstm_11_while_maximum_iterations^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_1
lstm_11/while/Identity_2Identitylstm_11/while/add:z:0^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_2º
lstm_11/while/Identity_3IdentityBlstm_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_11/while/NoOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_3­
lstm_11/while/Identity_4Identity$lstm_11/while/lstm_cell_11/mul_2:z:0^lstm_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/while/Identity_4­
lstm_11/while/Identity_5Identity$lstm_11/while/lstm_cell_11/add_1:z:0^lstm_11/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_11/while/Identity_5
lstm_11/while/NoOpNoOp2^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_11/while/NoOp"9
lstm_11_while_identitylstm_11/while/Identity:output:0"=
lstm_11_while_identity_1!lstm_11/while/Identity_1:output:0"=
lstm_11_while_identity_2!lstm_11/while/Identity_2:output:0"=
lstm_11_while_identity_3!lstm_11/while/Identity_3:output:0"=
lstm_11_while_identity_4!lstm_11/while/Identity_4:output:0"=
lstm_11_while_identity_5!lstm_11/while/Identity_5:output:0"P
%lstm_11_while_lstm_11_strided_slice_1'lstm_11_while_lstm_11_strided_slice_1_0"z
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0"|
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0"x
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0"È
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensorclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp2d
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp2h
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_166430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_11_matmul_readvariableop_resource_0:8G
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_11_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_11_matmul_readvariableop_resource:8E
3while_lstm_cell_11_matmul_1_readvariableop_resource:8@
2while_lstm_cell_11_biasadd_readvariableop_resource:8¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOpÖ
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMulÎ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp¿
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMul_1·
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/addÇ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÄ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1 
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu´
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1©
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¸
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
é

H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_162115

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
³
ó
-__inference_lstm_cell_11_layer_call_fn_166681

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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1627452
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
?
Ê
while_body_165329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_10_matmul_readvariableop_resource_0:@pG
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:pB
4while_lstm_cell_10_biasadd_readvariableop_resource_0:p
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_10_matmul_readvariableop_resource:@pE
3while_lstm_cell_10_matmul_1_readvariableop_resource:p@
2while_lstm_cell_10_biasadd_readvariableop_resource:p¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes

:@p*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOpÖ
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMulÎ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0*
_output_shapes

:p*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp¿
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/MatMul_1·
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/addÇ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes
:p*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÄ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1 
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu´
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1©
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¸
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_163510

inputs=
+lstm_cell_10_matmul_readvariableop_resource:@p?
-lstm_cell_10_matmul_1_readvariableop_resource:p:
,lstm_cell_10_biasadd_readvariableop_resource:p
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp¬
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMulº
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp¨
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/MatMul_1
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/add³
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp¬
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dimó
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul}
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2|
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1 
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
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
while_body_163426*
condR
while_cond_163425*K
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
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Æ

ã
lstm_10_while_cond_164546,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1D
@lstm_10_while_lstm_10_while_cond_164546___redundant_placeholder0D
@lstm_10_while_lstm_10_while_cond_164546___redundant_placeholder1D
@lstm_10_while_lstm_10_while_cond_164546___redundant_placeholder2D
@lstm_10_while_lstm_10_while_cond_164546___redundant_placeholder3
lstm_10_while_identity

lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2
lstm_10/while/Lessu
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_10/while/Identity"9
lstm_10_while_identitylstm_10/while/Identity:output:0*(
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
é
Ó
-__inference_sequential_3_layer_call_fn_164452

inputs
unknown: 
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
H__inference_sequential_3_layer_call_and_return_conditional_losses_1642152
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
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_165210

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
Õ
Ã
while_cond_163425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_163425___redundant_placeholder04
0while_while_cond_163425___redundant_placeholder14
0while_while_cond_163425___redundant_placeholder24
0while_while_cond_163425___redundant_placeholder3
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
while_cond_165630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_165630___redundant_placeholder04
0while_while_cond_165630___redundant_placeholder14
0while_while_cond_165630___redundant_placeholder24
0while_while_cond_165630___redundant_placeholder3
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
)
ô
H__inference_sequential_3_layer_call_and_return_conditional_losses_164313
conv1d_2_input%
conv1d_2_164278: 
conv1d_2_164280: %
conv1d_3_164283: @
conv1d_3_164285:@ 
lstm_10_164289:@p 
lstm_10_164291:p
lstm_10_164293:p 
lstm_11_164296:8 
lstm_11_164298:8
lstm_11_164300:8!
dense_10_164303:
dense_10_164305:!
dense_11_164308:
identity¢ conv1d_2/StatefulPartitionedCall¢ conv1d_3/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall¢lstm_11/StatefulPartitionedCall 
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCallconv1d_2_inputconv1d_2_164278conv1d_2_164280*
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
D__inference_conv1d_2_layer_call_and_return_conditional_losses_1633232"
 conv1d_2/StatefulPartitionedCall»
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0conv1d_3_164283conv1d_3_164285*
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
D__inference_conv1d_3_layer_call_and_return_conditional_losses_1633452"
 conv1d_3/StatefulPartitionedCall
max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_1633582!
max_pooling1d_1/PartitionedCallÇ
lstm_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0lstm_10_164289lstm_10_164291lstm_10_164293*
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_1635102!
lstm_10/StatefulPartitionedCallÃ
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_164296lstm_11_164298lstm_11_164300*
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_1636682!
lstm_11/StatefulPartitionedCall¶
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_10_164303dense_10_164305*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_1636872"
 dense_10/StatefulPartitionedCall¤
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_164308*
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
D__inference_dense_11_layer_call_and_return_conditional_losses_1637002"
 dense_11/StatefulPartitionedCallþ
reshape_5/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
E__inference_reshape_5_layer_call_and_return_conditional_losses_1637172
reshape_5/PartitionedCall
IdentityIdentity"reshape_5/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_2_input
?
Ê
while_body_163853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_11_matmul_readvariableop_resource_0:8G
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:8B
4while_lstm_cell_11_biasadd_readvariableop_resource_0:8
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_11_matmul_readvariableop_resource:8E
3while_lstm_cell_11_matmul_1_readvariableop_resource:8@
2while_lstm_cell_11_biasadd_readvariableop_resource:8¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0*
_output_shapes

:8*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOpÖ
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMulÎ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0*
_output_shapes

:8*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp¿
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/MatMul_1·
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/addÇ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes
:8*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÄ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1 
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu´
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1©
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¸
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

g
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_162024

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
¬

D__inference_conv1d_2_layer_call_and_return_conditional_losses_163323

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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÒÕ
Ê
!__inference__wrapped_model_162012
conv1d_2_inputW
Asequential_3_conv1d_2_conv1d_expanddims_1_readvariableop_resource: C
5sequential_3_conv1d_2_biasadd_readvariableop_resource: W
Asequential_3_conv1d_3_conv1d_expanddims_1_readvariableop_resource: @C
5sequential_3_conv1d_3_biasadd_readvariableop_resource:@R
@sequential_3_lstm_10_lstm_cell_10_matmul_readvariableop_resource:@pT
Bsequential_3_lstm_10_lstm_cell_10_matmul_1_readvariableop_resource:pO
Asequential_3_lstm_10_lstm_cell_10_biasadd_readvariableop_resource:pR
@sequential_3_lstm_11_lstm_cell_11_matmul_readvariableop_resource:8T
Bsequential_3_lstm_11_lstm_cell_11_matmul_1_readvariableop_resource:8O
Asequential_3_lstm_11_lstm_cell_11_biasadd_readvariableop_resource:8F
4sequential_3_dense_10_matmul_readvariableop_resource:C
5sequential_3_dense_10_biasadd_readvariableop_resource:F
4sequential_3_dense_11_matmul_readvariableop_resource:
identity¢,sequential_3/conv1d_2/BiasAdd/ReadVariableOp¢8sequential_3/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_3/conv1d_3/BiasAdd/ReadVariableOp¢8sequential_3/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_3/dense_10/BiasAdd/ReadVariableOp¢+sequential_3/dense_10/MatMul/ReadVariableOp¢+sequential_3/dense_11/MatMul/ReadVariableOp¢8sequential_3/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp¢7sequential_3/lstm_10/lstm_cell_10/MatMul/ReadVariableOp¢9sequential_3/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp¢sequential_3/lstm_10/while¢8sequential_3/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp¢7sequential_3/lstm_11/lstm_cell_11/MatMul/ReadVariableOp¢9sequential_3/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp¢sequential_3/lstm_11/while¥
+sequential_3/conv1d_2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2-
+sequential_3/conv1d_2/conv1d/ExpandDims/dimà
'sequential_3/conv1d_2/conv1d/ExpandDims
ExpandDimsconv1d_2_input4sequential_3/conv1d_2/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/conv1d_2/conv1d/ExpandDimsú
8sequential_3/conv1d_2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_3_conv1d_2_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02:
8sequential_3/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp 
-sequential_3/conv1d_2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/conv1d_2/conv1d/ExpandDims_1/dim
)sequential_3/conv1d_2/conv1d/ExpandDims_1
ExpandDims@sequential_3/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_3/conv1d_2/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2+
)sequential_3/conv1d_2/conv1d/ExpandDims_1
sequential_3/conv1d_2/conv1dConv2D0sequential_3/conv1d_2/conv1d/ExpandDims:output:02sequential_3/conv1d_2/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
2
sequential_3/conv1d_2/conv1dÔ
$sequential_3/conv1d_2/conv1d/SqueezeSqueeze%sequential_3/conv1d_2/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2&
$sequential_3/conv1d_2/conv1d/SqueezeÎ
,sequential_3/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv1d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/conv1d_2/BiasAdd/ReadVariableOpä
sequential_3/conv1d_2/BiasAddBiasAdd-sequential_3/conv1d_2/conv1d/Squeeze:output:04sequential_3/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_3/conv1d_2/BiasAdd
sequential_3/conv1d_2/ReluRelu&sequential_3/conv1d_2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_3/conv1d_2/Relu¥
+sequential_3/conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2-
+sequential_3/conv1d_3/conv1d/ExpandDims/dimú
'sequential_3/conv1d_3/conv1d/ExpandDims
ExpandDims(sequential_3/conv1d_2/Relu:activations:04sequential_3/conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_3/conv1d_3/conv1d/ExpandDimsú
8sequential_3/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_3_conv1d_3_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02:
8sequential_3/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp 
-sequential_3/conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_3/conv1d_3/conv1d/ExpandDims_1/dim
)sequential_3/conv1d_3/conv1d/ExpandDims_1
ExpandDims@sequential_3/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_3/conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2+
)sequential_3/conv1d_3/conv1d/ExpandDims_1
sequential_3/conv1d_3/conv1dConv2D0sequential_3/conv1d_3/conv1d/ExpandDims:output:02sequential_3/conv1d_3/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
paddingVALID*
strides
2
sequential_3/conv1d_3/conv1dÔ
$sequential_3/conv1d_3/conv1d/SqueezeSqueeze%sequential_3/conv1d_3/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2&
$sequential_3/conv1d_3/conv1d/SqueezeÎ
,sequential_3/conv1d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/conv1d_3/BiasAdd/ReadVariableOpä
sequential_3/conv1d_3/BiasAddBiasAdd-sequential_3/conv1d_3/conv1d/Squeeze:output:04sequential_3/conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
sequential_3/conv1d_3/BiasAdd
sequential_3/conv1d_3/ReluRelu&sequential_3/conv1d_3/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2
sequential_3/conv1d_3/Relu
+sequential_3/max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_3/max_pooling1d_1/ExpandDims/dimú
'sequential_3/max_pooling1d_1/ExpandDims
ExpandDims(sequential_3/conv1d_3/Relu:activations:04sequential_3/max_pooling1d_1/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@2)
'sequential_3/max_pooling1d_1/ExpandDimsö
$sequential_3/max_pooling1d_1/MaxPoolMaxPool0sequential_3/max_pooling1d_1/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling1d_1/MaxPoolÓ
$sequential_3/max_pooling1d_1/SqueezeSqueeze-sequential_3/max_pooling1d_1/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2&
$sequential_3/max_pooling1d_1/Squeeze
sequential_3/lstm_10/ShapeShape-sequential_3/max_pooling1d_1/Squeeze:output:0*
T0*
_output_shapes
:2
sequential_3/lstm_10/Shape
(sequential_3/lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_3/lstm_10/strided_slice/stack¢
*sequential_3/lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/lstm_10/strided_slice/stack_1¢
*sequential_3/lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/lstm_10/strided_slice/stack_2à
"sequential_3/lstm_10/strided_sliceStridedSlice#sequential_3/lstm_10/Shape:output:01sequential_3/lstm_10/strided_slice/stack:output:03sequential_3/lstm_10/strided_slice/stack_1:output:03sequential_3/lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_3/lstm_10/strided_slice
 sequential_3/lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_3/lstm_10/zeros/mul/yÀ
sequential_3/lstm_10/zeros/mulMul+sequential_3/lstm_10/strided_slice:output:0)sequential_3/lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_10/zeros/mul
!sequential_3/lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_3/lstm_10/zeros/Less/y»
sequential_3/lstm_10/zeros/LessLess"sequential_3/lstm_10/zeros/mul:z:0*sequential_3/lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_10/zeros/Less
#sequential_3/lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_3/lstm_10/zeros/packed/1×
!sequential_3/lstm_10/zeros/packedPack+sequential_3/lstm_10/strided_slice:output:0,sequential_3/lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_3/lstm_10/zeros/packed
 sequential_3/lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_3/lstm_10/zeros/ConstÉ
sequential_3/lstm_10/zerosFill*sequential_3/lstm_10/zeros/packed:output:0)sequential_3/lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/lstm_10/zeros
"sequential_3/lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_3/lstm_10/zeros_1/mul/yÆ
 sequential_3/lstm_10/zeros_1/mulMul+sequential_3/lstm_10/strided_slice:output:0+sequential_3/lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_10/zeros_1/mul
#sequential_3/lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_3/lstm_10/zeros_1/Less/yÃ
!sequential_3/lstm_10/zeros_1/LessLess$sequential_3/lstm_10/zeros_1/mul:z:0,sequential_3/lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_3/lstm_10/zeros_1/Less
%sequential_3/lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_3/lstm_10/zeros_1/packed/1Ý
#sequential_3/lstm_10/zeros_1/packedPack+sequential_3/lstm_10/strided_slice:output:0.sequential_3/lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_3/lstm_10/zeros_1/packed
"sequential_3/lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_3/lstm_10/zeros_1/ConstÑ
sequential_3/lstm_10/zeros_1Fill,sequential_3/lstm_10/zeros_1/packed:output:0+sequential_3/lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/lstm_10/zeros_1
#sequential_3/lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_3/lstm_10/transpose/permà
sequential_3/lstm_10/transpose	Transpose-sequential_3/max_pooling1d_1/Squeeze:output:0,sequential_3/lstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_3/lstm_10/transpose
sequential_3/lstm_10/Shape_1Shape"sequential_3/lstm_10/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_10/Shape_1¢
*sequential_3/lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/lstm_10/strided_slice_1/stack¦
,sequential_3/lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_10/strided_slice_1/stack_1¦
,sequential_3/lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_10/strided_slice_1/stack_2ì
$sequential_3/lstm_10/strided_slice_1StridedSlice%sequential_3/lstm_10/Shape_1:output:03sequential_3/lstm_10/strided_slice_1/stack:output:05sequential_3/lstm_10/strided_slice_1/stack_1:output:05sequential_3/lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_3/lstm_10/strided_slice_1¯
0sequential_3/lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_3/lstm_10/TensorArrayV2/element_shape
"sequential_3/lstm_10/TensorArrayV2TensorListReserve9sequential_3/lstm_10/TensorArrayV2/element_shape:output:0-sequential_3/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_3/lstm_10/TensorArrayV2é
Jsequential_3/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2L
Jsequential_3/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_3/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_3/lstm_10/transpose:y:0Ssequential_3/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_3/lstm_10/TensorArrayUnstack/TensorListFromTensor¢
*sequential_3/lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/lstm_10/strided_slice_2/stack¦
,sequential_3/lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_10/strided_slice_2/stack_1¦
,sequential_3/lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_10/strided_slice_2/stack_2ú
$sequential_3/lstm_10/strided_slice_2StridedSlice"sequential_3/lstm_10/transpose:y:03sequential_3/lstm_10/strided_slice_2/stack:output:05sequential_3/lstm_10/strided_slice_2/stack_1:output:05sequential_3/lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2&
$sequential_3/lstm_10/strided_slice_2ó
7sequential_3/lstm_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp@sequential_3_lstm_10_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes

:@p*
dtype029
7sequential_3/lstm_10/lstm_cell_10/MatMul/ReadVariableOp
(sequential_3/lstm_10/lstm_cell_10/MatMulMatMul-sequential_3/lstm_10/strided_slice_2:output:0?sequential_3/lstm_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2*
(sequential_3/lstm_10/lstm_cell_10/MatMulù
9sequential_3/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpBsequential_3_lstm_10_lstm_cell_10_matmul_1_readvariableop_resource*
_output_shapes

:p*
dtype02;
9sequential_3/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpü
*sequential_3/lstm_10/lstm_cell_10/MatMul_1MatMul#sequential_3/lstm_10/zeros:output:0Asequential_3/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2,
*sequential_3/lstm_10/lstm_cell_10/MatMul_1ó
%sequential_3/lstm_10/lstm_cell_10/addAddV22sequential_3/lstm_10/lstm_cell_10/MatMul:product:04sequential_3/lstm_10/lstm_cell_10/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2'
%sequential_3/lstm_10/lstm_cell_10/addò
8sequential_3/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOpAsequential_3_lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes
:p*
dtype02:
8sequential_3/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp
)sequential_3/lstm_10/lstm_cell_10/BiasAddBiasAdd)sequential_3/lstm_10/lstm_cell_10/add:z:0@sequential_3/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp2+
)sequential_3/lstm_10/lstm_cell_10/BiasAdd¨
1sequential_3/lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_3/lstm_10/lstm_cell_10/split/split_dimÇ
'sequential_3/lstm_10/lstm_cell_10/splitSplit:sequential_3/lstm_10/lstm_cell_10/split/split_dim:output:02sequential_3/lstm_10/lstm_cell_10/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2)
'sequential_3/lstm_10/lstm_cell_10/splitÅ
)sequential_3/lstm_10/lstm_cell_10/SigmoidSigmoid0sequential_3/lstm_10/lstm_cell_10/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_3/lstm_10/lstm_cell_10/SigmoidÉ
+sequential_3/lstm_10/lstm_cell_10/Sigmoid_1Sigmoid0sequential_3/lstm_10/lstm_cell_10/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/lstm_10/lstm_cell_10/Sigmoid_1ß
%sequential_3/lstm_10/lstm_cell_10/mulMul/sequential_3/lstm_10/lstm_cell_10/Sigmoid_1:y:0%sequential_3/lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_3/lstm_10/lstm_cell_10/mul¼
&sequential_3/lstm_10/lstm_cell_10/ReluRelu0sequential_3/lstm_10/lstm_cell_10/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_3/lstm_10/lstm_cell_10/Reluð
'sequential_3/lstm_10/lstm_cell_10/mul_1Mul-sequential_3/lstm_10/lstm_cell_10/Sigmoid:y:04sequential_3/lstm_10/lstm_cell_10/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/lstm_10/lstm_cell_10/mul_1å
'sequential_3/lstm_10/lstm_cell_10/add_1AddV2)sequential_3/lstm_10/lstm_cell_10/mul:z:0+sequential_3/lstm_10/lstm_cell_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/lstm_10/lstm_cell_10/add_1É
+sequential_3/lstm_10/lstm_cell_10/Sigmoid_2Sigmoid0sequential_3/lstm_10/lstm_cell_10/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/lstm_10/lstm_cell_10/Sigmoid_2»
(sequential_3/lstm_10/lstm_cell_10/Relu_1Relu+sequential_3/lstm_10/lstm_cell_10/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_3/lstm_10/lstm_cell_10/Relu_1ô
'sequential_3/lstm_10/lstm_cell_10/mul_2Mul/sequential_3/lstm_10/lstm_cell_10/Sigmoid_2:y:06sequential_3/lstm_10/lstm_cell_10/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/lstm_10/lstm_cell_10/mul_2¹
2sequential_3/lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2sequential_3/lstm_10/TensorArrayV2_1/element_shape
$sequential_3/lstm_10/TensorArrayV2_1TensorListReserve;sequential_3/lstm_10/TensorArrayV2_1/element_shape:output:0-sequential_3/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_3/lstm_10/TensorArrayV2_1x
sequential_3/lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_10/time©
-sequential_3/lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_10/while/maximum_iterations
'sequential_3/lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_3/lstm_10/while/loop_counterÆ
sequential_3/lstm_10/whileWhile0sequential_3/lstm_10/while/loop_counter:output:06sequential_3/lstm_10/while/maximum_iterations:output:0"sequential_3/lstm_10/time:output:0-sequential_3/lstm_10/TensorArrayV2_1:handle:0#sequential_3/lstm_10/zeros:output:0%sequential_3/lstm_10/zeros_1:output:0-sequential_3/lstm_10/strided_slice_1:output:0Lsequential_3/lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_3_lstm_10_lstm_cell_10_matmul_readvariableop_resourceBsequential_3_lstm_10_lstm_cell_10_matmul_1_readvariableop_resourceAsequential_3_lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
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
&sequential_3_lstm_10_while_body_161762*2
cond*R(
&sequential_3_lstm_10_while_cond_161761*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_3/lstm_10/whileß
Esequential_3/lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Esequential_3/lstm_10/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_3/lstm_10/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_3/lstm_10/while:output:3Nsequential_3/lstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7sequential_3/lstm_10/TensorArrayV2Stack/TensorListStack«
*sequential_3/lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_3/lstm_10/strided_slice_3/stack¦
,sequential_3/lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_3/lstm_10/strided_slice_3/stack_1¦
,sequential_3/lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_10/strided_slice_3/stack_2
$sequential_3/lstm_10/strided_slice_3StridedSlice@sequential_3/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:03sequential_3/lstm_10/strided_slice_3/stack:output:05sequential_3/lstm_10/strided_slice_3/stack_1:output:05sequential_3/lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_3/lstm_10/strided_slice_3£
%sequential_3/lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_3/lstm_10/transpose_1/permù
 sequential_3/lstm_10/transpose_1	Transpose@sequential_3/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_3/lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_3/lstm_10/transpose_1
sequential_3/lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_10/runtime
sequential_3/lstm_11/ShapeShape$sequential_3/lstm_10/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_11/Shape
(sequential_3/lstm_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_3/lstm_11/strided_slice/stack¢
*sequential_3/lstm_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/lstm_11/strided_slice/stack_1¢
*sequential_3/lstm_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_3/lstm_11/strided_slice/stack_2à
"sequential_3/lstm_11/strided_sliceStridedSlice#sequential_3/lstm_11/Shape:output:01sequential_3/lstm_11/strided_slice/stack:output:03sequential_3/lstm_11/strided_slice/stack_1:output:03sequential_3/lstm_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_3/lstm_11/strided_slice
 sequential_3/lstm_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_3/lstm_11/zeros/mul/yÀ
sequential_3/lstm_11/zeros/mulMul+sequential_3/lstm_11/strided_slice:output:0)sequential_3/lstm_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_11/zeros/mul
!sequential_3/lstm_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_3/lstm_11/zeros/Less/y»
sequential_3/lstm_11/zeros/LessLess"sequential_3/lstm_11/zeros/mul:z:0*sequential_3/lstm_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_11/zeros/Less
#sequential_3/lstm_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_3/lstm_11/zeros/packed/1×
!sequential_3/lstm_11/zeros/packedPack+sequential_3/lstm_11/strided_slice:output:0,sequential_3/lstm_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_3/lstm_11/zeros/packed
 sequential_3/lstm_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_3/lstm_11/zeros/ConstÉ
sequential_3/lstm_11/zerosFill*sequential_3/lstm_11/zeros/packed:output:0)sequential_3/lstm_11/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/lstm_11/zeros
"sequential_3/lstm_11/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_3/lstm_11/zeros_1/mul/yÆ
 sequential_3/lstm_11/zeros_1/mulMul+sequential_3/lstm_11/strided_slice:output:0+sequential_3/lstm_11/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_11/zeros_1/mul
#sequential_3/lstm_11/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_3/lstm_11/zeros_1/Less/yÃ
!sequential_3/lstm_11/zeros_1/LessLess$sequential_3/lstm_11/zeros_1/mul:z:0,sequential_3/lstm_11/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_3/lstm_11/zeros_1/Less
%sequential_3/lstm_11/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_3/lstm_11/zeros_1/packed/1Ý
#sequential_3/lstm_11/zeros_1/packedPack+sequential_3/lstm_11/strided_slice:output:0.sequential_3/lstm_11/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_3/lstm_11/zeros_1/packed
"sequential_3/lstm_11/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_3/lstm_11/zeros_1/ConstÑ
sequential_3/lstm_11/zeros_1Fill,sequential_3/lstm_11/zeros_1/packed:output:0+sequential_3/lstm_11/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/lstm_11/zeros_1
#sequential_3/lstm_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_3/lstm_11/transpose/perm×
sequential_3/lstm_11/transpose	Transpose$sequential_3/lstm_10/transpose_1:y:0,sequential_3/lstm_11/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_3/lstm_11/transpose
sequential_3/lstm_11/Shape_1Shape"sequential_3/lstm_11/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_11/Shape_1¢
*sequential_3/lstm_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/lstm_11/strided_slice_1/stack¦
,sequential_3/lstm_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_11/strided_slice_1/stack_1¦
,sequential_3/lstm_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_11/strided_slice_1/stack_2ì
$sequential_3/lstm_11/strided_slice_1StridedSlice%sequential_3/lstm_11/Shape_1:output:03sequential_3/lstm_11/strided_slice_1/stack:output:05sequential_3/lstm_11/strided_slice_1/stack_1:output:05sequential_3/lstm_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_3/lstm_11/strided_slice_1¯
0sequential_3/lstm_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_3/lstm_11/TensorArrayV2/element_shape
"sequential_3/lstm_11/TensorArrayV2TensorListReserve9sequential_3/lstm_11/TensorArrayV2/element_shape:output:0-sequential_3/lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_3/lstm_11/TensorArrayV2é
Jsequential_3/lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_3/lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_3/lstm_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_3/lstm_11/transpose:y:0Ssequential_3/lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_3/lstm_11/TensorArrayUnstack/TensorListFromTensor¢
*sequential_3/lstm_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/lstm_11/strided_slice_2/stack¦
,sequential_3/lstm_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_11/strided_slice_2/stack_1¦
,sequential_3/lstm_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_11/strided_slice_2/stack_2ú
$sequential_3/lstm_11/strided_slice_2StridedSlice"sequential_3/lstm_11/transpose:y:03sequential_3/lstm_11/strided_slice_2/stack:output:05sequential_3/lstm_11/strided_slice_2/stack_1:output:05sequential_3/lstm_11/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_3/lstm_11/strided_slice_2ó
7sequential_3/lstm_11/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp@sequential_3_lstm_11_lstm_cell_11_matmul_readvariableop_resource*
_output_shapes

:8*
dtype029
7sequential_3/lstm_11/lstm_cell_11/MatMul/ReadVariableOp
(sequential_3/lstm_11/lstm_cell_11/MatMulMatMul-sequential_3/lstm_11/strided_slice_2:output:0?sequential_3/lstm_11/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82*
(sequential_3/lstm_11/lstm_cell_11/MatMulù
9sequential_3/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOpBsequential_3_lstm_11_lstm_cell_11_matmul_1_readvariableop_resource*
_output_shapes

:8*
dtype02;
9sequential_3/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpü
*sequential_3/lstm_11/lstm_cell_11/MatMul_1MatMul#sequential_3/lstm_11/zeros:output:0Asequential_3/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82,
*sequential_3/lstm_11/lstm_cell_11/MatMul_1ó
%sequential_3/lstm_11/lstm_cell_11/addAddV22sequential_3/lstm_11/lstm_cell_11/MatMul:product:04sequential_3/lstm_11/lstm_cell_11/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82'
%sequential_3/lstm_11/lstm_cell_11/addò
8sequential_3/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOpAsequential_3_lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02:
8sequential_3/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp
)sequential_3/lstm_11/lstm_cell_11/BiasAddBiasAdd)sequential_3/lstm_11/lstm_cell_11/add:z:0@sequential_3/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ82+
)sequential_3/lstm_11/lstm_cell_11/BiasAdd¨
1sequential_3/lstm_11/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_3/lstm_11/lstm_cell_11/split/split_dimÇ
'sequential_3/lstm_11/lstm_cell_11/splitSplit:sequential_3/lstm_11/lstm_cell_11/split/split_dim:output:02sequential_3/lstm_11/lstm_cell_11/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2)
'sequential_3/lstm_11/lstm_cell_11/splitÅ
)sequential_3/lstm_11/lstm_cell_11/SigmoidSigmoid0sequential_3/lstm_11/lstm_cell_11/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_3/lstm_11/lstm_cell_11/SigmoidÉ
+sequential_3/lstm_11/lstm_cell_11/Sigmoid_1Sigmoid0sequential_3/lstm_11/lstm_cell_11/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/lstm_11/lstm_cell_11/Sigmoid_1ß
%sequential_3/lstm_11/lstm_cell_11/mulMul/sequential_3/lstm_11/lstm_cell_11/Sigmoid_1:y:0%sequential_3/lstm_11/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_3/lstm_11/lstm_cell_11/mul¼
&sequential_3/lstm_11/lstm_cell_11/ReluRelu0sequential_3/lstm_11/lstm_cell_11/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_3/lstm_11/lstm_cell_11/Reluð
'sequential_3/lstm_11/lstm_cell_11/mul_1Mul-sequential_3/lstm_11/lstm_cell_11/Sigmoid:y:04sequential_3/lstm_11/lstm_cell_11/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/lstm_11/lstm_cell_11/mul_1å
'sequential_3/lstm_11/lstm_cell_11/add_1AddV2)sequential_3/lstm_11/lstm_cell_11/mul:z:0+sequential_3/lstm_11/lstm_cell_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/lstm_11/lstm_cell_11/add_1É
+sequential_3/lstm_11/lstm_cell_11/Sigmoid_2Sigmoid0sequential_3/lstm_11/lstm_cell_11/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_3/lstm_11/lstm_cell_11/Sigmoid_2»
(sequential_3/lstm_11/lstm_cell_11/Relu_1Relu+sequential_3/lstm_11/lstm_cell_11/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_3/lstm_11/lstm_cell_11/Relu_1ô
'sequential_3/lstm_11/lstm_cell_11/mul_2Mul/sequential_3/lstm_11/lstm_cell_11/Sigmoid_2:y:06sequential_3/lstm_11/lstm_cell_11/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_3/lstm_11/lstm_cell_11/mul_2¹
2sequential_3/lstm_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   24
2sequential_3/lstm_11/TensorArrayV2_1/element_shape
$sequential_3/lstm_11/TensorArrayV2_1TensorListReserve;sequential_3/lstm_11/TensorArrayV2_1/element_shape:output:0-sequential_3/lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_3/lstm_11/TensorArrayV2_1x
sequential_3/lstm_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_11/time©
-sequential_3/lstm_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_3/lstm_11/while/maximum_iterations
'sequential_3/lstm_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_3/lstm_11/while/loop_counterÆ
sequential_3/lstm_11/whileWhile0sequential_3/lstm_11/while/loop_counter:output:06sequential_3/lstm_11/while/maximum_iterations:output:0"sequential_3/lstm_11/time:output:0-sequential_3/lstm_11/TensorArrayV2_1:handle:0#sequential_3/lstm_11/zeros:output:0%sequential_3/lstm_11/zeros_1:output:0-sequential_3/lstm_11/strided_slice_1:output:0Lsequential_3/lstm_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_3_lstm_11_lstm_cell_11_matmul_readvariableop_resourceBsequential_3_lstm_11_lstm_cell_11_matmul_1_readvariableop_resourceAsequential_3_lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
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
&sequential_3_lstm_11_while_body_161909*2
cond*R(
&sequential_3_lstm_11_while_cond_161908*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_3/lstm_11/whileß
Esequential_3/lstm_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2G
Esequential_3/lstm_11/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_3/lstm_11/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_3/lstm_11/while:output:3Nsequential_3/lstm_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype029
7sequential_3/lstm_11/TensorArrayV2Stack/TensorListStack«
*sequential_3/lstm_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_3/lstm_11/strided_slice_3/stack¦
,sequential_3/lstm_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_3/lstm_11/strided_slice_3/stack_1¦
,sequential_3/lstm_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/lstm_11/strided_slice_3/stack_2
$sequential_3/lstm_11/strided_slice_3StridedSlice@sequential_3/lstm_11/TensorArrayV2Stack/TensorListStack:tensor:03sequential_3/lstm_11/strided_slice_3/stack:output:05sequential_3/lstm_11/strided_slice_3/stack_1:output:05sequential_3/lstm_11/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_3/lstm_11/strided_slice_3£
%sequential_3/lstm_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_3/lstm_11/transpose_1/permù
 sequential_3/lstm_11/transpose_1	Transpose@sequential_3/lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_3/lstm_11/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_3/lstm_11/transpose_1
sequential_3/lstm_11/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_11/runtimeÏ
+sequential_3/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_3/dense_10/MatMul/ReadVariableOpÜ
sequential_3/dense_10/MatMulMatMul-sequential_3/lstm_11/strided_slice_3:output:03sequential_3/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/dense_10/MatMulÎ
,sequential_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/dense_10/BiasAdd/ReadVariableOpÙ
sequential_3/dense_10/BiasAddBiasAdd&sequential_3/dense_10/MatMul:product:04sequential_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/dense_10/BiasAdd
sequential_3/dense_10/ReluRelu&sequential_3/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/dense_10/ReluÏ
+sequential_3/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_3/dense_11/MatMul/ReadVariableOp×
sequential_3/dense_11/MatMulMatMul(sequential_3/dense_10/Relu:activations:03sequential_3/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/dense_11/MatMul
sequential_3/reshape_5/ShapeShape&sequential_3/dense_11/MatMul:product:0*
T0*
_output_shapes
:2
sequential_3/reshape_5/Shape¢
*sequential_3/reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_3/reshape_5/strided_slice/stack¦
,sequential_3/reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_5/strided_slice/stack_1¦
,sequential_3/reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_3/reshape_5/strided_slice/stack_2ì
$sequential_3/reshape_5/strided_sliceStridedSlice%sequential_3/reshape_5/Shape:output:03sequential_3/reshape_5/strided_slice/stack:output:05sequential_3/reshape_5/strided_slice/stack_1:output:05sequential_3/reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_3/reshape_5/strided_slice
&sequential_3/reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/reshape_5/Reshape/shape/1
&sequential_3/reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_3/reshape_5/Reshape/shape/2
$sequential_3/reshape_5/Reshape/shapePack-sequential_3/reshape_5/strided_slice:output:0/sequential_3/reshape_5/Reshape/shape/1:output:0/sequential_3/reshape_5/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_3/reshape_5/Reshape/shapeØ
sequential_3/reshape_5/ReshapeReshape&sequential_3/dense_11/MatMul:product:0-sequential_3/reshape_5/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_3/reshape_5/Reshape
IdentityIdentity'sequential_3/reshape_5/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÉ
NoOpNoOp-^sequential_3/conv1d_2/BiasAdd/ReadVariableOp9^sequential_3/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp-^sequential_3/conv1d_3/BiasAdd/ReadVariableOp9^sequential_3/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp-^sequential_3/dense_10/BiasAdd/ReadVariableOp,^sequential_3/dense_10/MatMul/ReadVariableOp,^sequential_3/dense_11/MatMul/ReadVariableOp9^sequential_3/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp8^sequential_3/lstm_10/lstm_cell_10/MatMul/ReadVariableOp:^sequential_3/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp^sequential_3/lstm_10/while9^sequential_3/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp8^sequential_3/lstm_11/lstm_cell_11/MatMul/ReadVariableOp:^sequential_3/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp^sequential_3/lstm_11/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : 2\
,sequential_3/conv1d_2/BiasAdd/ReadVariableOp,sequential_3/conv1d_2/BiasAdd/ReadVariableOp2t
8sequential_3/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp8sequential_3/conv1d_2/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_3/conv1d_3/BiasAdd/ReadVariableOp,sequential_3/conv1d_3/BiasAdd/ReadVariableOp2t
8sequential_3/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp8sequential_3/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_3/dense_10/BiasAdd/ReadVariableOp,sequential_3/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_10/MatMul/ReadVariableOp+sequential_3/dense_10/MatMul/ReadVariableOp2Z
+sequential_3/dense_11/MatMul/ReadVariableOp+sequential_3/dense_11/MatMul/ReadVariableOp2t
8sequential_3/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp8sequential_3/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp2r
7sequential_3/lstm_10/lstm_cell_10/MatMul/ReadVariableOp7sequential_3/lstm_10/lstm_cell_10/MatMul/ReadVariableOp2v
9sequential_3/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp9sequential_3/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp28
sequential_3/lstm_10/whilesequential_3/lstm_10/while2t
8sequential_3/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp8sequential_3/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp2r
7sequential_3/lstm_11/lstm_cell_11/MatMul/ReadVariableOp7sequential_3/lstm_11/lstm_cell_11/MatMul/ReadVariableOp2v
9sequential_3/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp9sequential_3/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp28
sequential_3/lstm_11/whilesequential_3/lstm_11/while:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_2_input"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Â
serving_default®
M
conv1d_2_input;
 serving_default_conv1d_2_input:0ÿÿÿÿÿÿÿÿÿA
	reshape_54
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
¨__call__
+©&call_and_return_all_conditional_losses"
_tf_keras_sequential
½

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
ª__call__
+«&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
¬__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
§
regularization_losses
trainable_variables
	variables
	keras_api
®__call__
+¯&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
cell
 
state_spec
!regularization_losses
"trainable_variables
#	variables
$	keras_api
°__call__
+±&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Å
%cell
&
state_spec
'regularization_losses
(trainable_variables
)	variables
*	keras_api
²__call__
+³&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
½

+kernel
,bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
´__call__
+µ&call_and_return_all_conditional_losses"
_tf_keras_layer
³

1kernel
2regularization_losses
3trainable_variables
4	variables
5	keras_api
¶__call__
+·&call_and_return_all_conditional_losses"
_tf_keras_layer
§
6regularization_losses
7trainable_variables
8	variables
9	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses"
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
Enon_trainable_variables

Flayers
Glayer_regularization_losses
Hlayer_metrics

regularization_losses
trainable_variables
Imetrics
	variables
¨__call__
§_default_save_signature
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
-
ºserving_default"
signature_map
%:# 2conv1d_2/kernel
: 2conv1d_2/bias
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
Jnon_trainable_variables

Klayers
Llayer_regularization_losses
Mlayer_metrics
regularization_losses
trainable_variables
Nmetrics
	variables
ª__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_3/kernel
:@2conv1d_3/bias
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
Onon_trainable_variables

Players
Qlayer_regularization_losses
Rlayer_metrics
regularization_losses
trainable_variables
Smetrics
	variables
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Tnon_trainable_variables

Ulayers
Vlayer_regularization_losses
Wlayer_metrics
regularization_losses
trainable_variables
Xmetrics
	variables
®__call__
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses"
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
»__call__
+¼&call_and_return_all_conditional_losses"
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
^non_trainable_variables

_layers
`layer_regularization_losses
alayer_metrics
!regularization_losses

bstates
"trainable_variables
cmetrics
#	variables
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
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
½__call__
+¾&call_and_return_all_conditional_losses"
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
inon_trainable_variables

jlayers
klayer_regularization_losses
llayer_metrics
'regularization_losses

mstates
(trainable_variables
nmetrics
)	variables
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
!:2dense_10/kernel
:2dense_10/bias
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
onon_trainable_variables

players
qlayer_regularization_losses
rlayer_metrics
-regularization_losses
.trainable_variables
smetrics
/	variables
´__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
!:2dense_11/kernel
 "
trackable_list_wrapper
'
10"
trackable_list_wrapper
'
10"
trackable_list_wrapper
°
tnon_trainable_variables

ulayers
vlayer_regularization_losses
wlayer_metrics
2regularization_losses
3trainable_variables
xmetrics
4	variables
¶__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
ynon_trainable_variables

zlayers
{layer_regularization_losses
|layer_metrics
6regularization_losses
7trainable_variables
}metrics
8	variables
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@p2lstm_10/lstm_cell_10/kernel
7:5p2%lstm_10/lstm_cell_10/recurrent_kernel
':%p2lstm_10/lstm_cell_10/bias
-:+82lstm_11/lstm_cell_11/kernel
7:582%lstm_11/lstm_cell_11/recurrent_kernel
':%82lstm_11/lstm_cell_11/bias
 "
trackable_list_wrapper
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
trackable_dict_wrapper
'
~0"
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
non_trainable_variables
layers
 layer_regularization_losses
layer_metrics
Zregularization_losses
[trainable_variables
metrics
\	variables
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
non_trainable_variables
layers
 layer_regularization_losses
layer_metrics
eregularization_losses
ftrainable_variables
metrics
g	variables
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
%0"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
*:( 2Adam/conv1d_2/kernel/m
 : 2Adam/conv1d_2/bias/m
*:( @2Adam/conv1d_3/kernel/m
 :@2Adam/conv1d_3/bias/m
&:$2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
&:$2Adam/dense_11/kernel/m
2:0@p2"Adam/lstm_10/lstm_cell_10/kernel/m
<::p2,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m
,:*p2 Adam/lstm_10/lstm_cell_10/bias/m
2:082"Adam/lstm_11/lstm_cell_11/kernel/m
<::82,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m
,:*82 Adam/lstm_11/lstm_cell_11/bias/m
*:( 2Adam/conv1d_2/kernel/v
 : 2Adam/conv1d_2/bias/v
*:( @2Adam/conv1d_3/kernel/v
 :@2Adam/conv1d_3/bias/v
&:$2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
&:$2Adam/dense_11/kernel/v
2:0@p2"Adam/lstm_10/lstm_cell_10/kernel/v
<::p2,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v
,:*p2 Adam/lstm_10/lstm_cell_10/bias/v
2:082"Adam/lstm_11/lstm_cell_11/kernel/v
<::82,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v
,:*82 Adam/lstm_11/lstm_cell_11/bias/v
ÓBÐ
!__inference__wrapped_model_162012conv1d_2_input"
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
2ÿ
-__inference_sequential_3_layer_call_fn_163749
-__inference_sequential_3_layer_call_fn_164421
-__inference_sequential_3_layer_call_fn_164452
-__inference_sequential_3_layer_call_fn_164275À
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
î2ë
H__inference_sequential_3_layer_call_and_return_conditional_losses_164797
H__inference_sequential_3_layer_call_and_return_conditional_losses_165142
H__inference_sequential_3_layer_call_and_return_conditional_losses_164313
H__inference_sequential_3_layer_call_and_return_conditional_losses_164351À
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
Ó2Ð
)__inference_conv1d_2_layer_call_fn_165151¢
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
D__inference_conv1d_2_layer_call_and_return_conditional_losses_165167¢
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
)__inference_conv1d_3_layer_call_fn_165176¢
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
D__inference_conv1d_3_layer_call_and_return_conditional_losses_165192¢
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
0__inference_max_pooling1d_1_layer_call_fn_165197
0__inference_max_pooling1d_1_layer_call_fn_165202¢
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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_165210
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_165218¢
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
(__inference_lstm_10_layer_call_fn_165229
(__inference_lstm_10_layer_call_fn_165240
(__inference_lstm_10_layer_call_fn_165251
(__inference_lstm_10_layer_call_fn_165262Õ
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_165413
C__inference_lstm_10_layer_call_and_return_conditional_losses_165564
C__inference_lstm_10_layer_call_and_return_conditional_losses_165715
C__inference_lstm_10_layer_call_and_return_conditional_losses_165866Õ
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
(__inference_lstm_11_layer_call_fn_165877
(__inference_lstm_11_layer_call_fn_165888
(__inference_lstm_11_layer_call_fn_165899
(__inference_lstm_11_layer_call_fn_165910Õ
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_166061
C__inference_lstm_11_layer_call_and_return_conditional_losses_166212
C__inference_lstm_11_layer_call_and_return_conditional_losses_166363
C__inference_lstm_11_layer_call_and_return_conditional_losses_166514Õ
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
Ó2Ð
)__inference_dense_10_layer_call_fn_166523¢
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
D__inference_dense_10_layer_call_and_return_conditional_losses_166534¢
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
)__inference_dense_11_layer_call_fn_166541¢
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
D__inference_dense_11_layer_call_and_return_conditional_losses_166548¢
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
*__inference_reshape_5_layer_call_fn_166553¢
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
E__inference_reshape_5_layer_call_and_return_conditional_losses_166566¢
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
$__inference_signature_wrapper_164390conv1d_2_input"
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
-__inference_lstm_cell_10_layer_call_fn_166583
-__inference_lstm_cell_10_layer_call_fn_166600¾
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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_166632
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_166664¾
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
-__inference_lstm_cell_11_layer_call_fn_166681
-__inference_lstm_cell_11_layer_call_fn_166698¾
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_166730
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_166762¾
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
!__inference__wrapped_model_162012?@ABCD+,1;¢8
1¢.
,)
conv1d_2_inputÿÿÿÿÿÿÿÿÿ
ª "9ª6
4
	reshape_5'$
	reshape_5ÿÿÿÿÿÿÿÿÿ¬
D__inference_conv1d_2_layer_call_and_return_conditional_losses_165167d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
)__inference_conv1d_2_layer_call_fn_165151W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¬
D__inference_conv1d_3_layer_call_and_return_conditional_losses_165192d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
@
 
)__inference_conv1d_3_layer_call_fn_165176W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ
@¤
D__inference_dense_10_layer_call_and_return_conditional_losses_166534\+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_10_layer_call_fn_166523O+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
D__inference_dense_11_layer_call_and_return_conditional_losses_166548[1/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
)__inference_dense_11_layer_call_fn_166541N1/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÒ
C__inference_lstm_10_layer_call_and_return_conditional_losses_165413?@AO¢L
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_165564?@AO¢L
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_165715q?@A?¢<
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
C__inference_lstm_10_layer_call_and_return_conditional_losses_165866q?@A?¢<
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
(__inference_lstm_10_layer_call_fn_165229}?@AO¢L
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
(__inference_lstm_10_layer_call_fn_165240}?@AO¢L
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
(__inference_lstm_10_layer_call_fn_165251d?@A?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_10_layer_call_fn_165262d?@A?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_11_layer_call_and_return_conditional_losses_166061}BCDO¢L
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_166212}BCDO¢L
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_166363mBCD?¢<
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
C__inference_lstm_11_layer_call_and_return_conditional_losses_166514mBCD?¢<
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
(__inference_lstm_11_layer_call_fn_165877pBCDO¢L
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
(__inference_lstm_11_layer_call_fn_165888pBCDO¢L
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
(__inference_lstm_11_layer_call_fn_165899`BCD?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_11_layer_call_fn_165910`BCD?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_166632ý?@A¢}
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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_166664ý?@A¢}
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
-__inference_lstm_cell_10_layer_call_fn_166583í?@A¢}
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
-__inference_lstm_cell_10_layer_call_fn_166600í?@A¢}
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_166730ýBCD¢}
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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_166762ýBCD¢}
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
-__inference_lstm_cell_11_layer_call_fn_166681íBCD¢}
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
-__inference_lstm_cell_11_layer_call_fn_166698íBCD¢}
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
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_165210E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
K__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_165218`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 «
0__inference_max_pooling1d_1_layer_call_fn_165197wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0__inference_max_pooling1d_1_layer_call_fn_165202S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
@
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_reshape_5_layer_call_and_return_conditional_losses_166566\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_reshape_5_layer_call_fn_166553O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿË
H__inference_sequential_3_layer_call_and_return_conditional_losses_164313?@ABCD+,1C¢@
9¢6
,)
conv1d_2_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ë
H__inference_sequential_3_layer_call_and_return_conditional_losses_164351?@ABCD+,1C¢@
9¢6
,)
conv1d_2_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ã
H__inference_sequential_3_layer_call_and_return_conditional_losses_164797w?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ã
H__inference_sequential_3_layer_call_and_return_conditional_losses_165142w?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 £
-__inference_sequential_3_layer_call_fn_163749r?@ABCD+,1C¢@
9¢6
,)
conv1d_2_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ£
-__inference_sequential_3_layer_call_fn_164275r?@ABCD+,1C¢@
9¢6
,)
conv1d_2_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_3_layer_call_fn_164421j?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_3_layer_call_fn_164452j?@ABCD+,1;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÂ
$__inference_signature_wrapper_164390?@ABCD+,1M¢J
¢ 
Cª@
>
conv1d_2_input,)
conv1d_2_inputÿÿÿÿÿÿÿÿÿ"9ª6
4
	reshape_5'$
	reshape_5ÿÿÿÿÿÿÿÿÿ