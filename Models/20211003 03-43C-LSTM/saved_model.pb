¯¯,
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8¸*

conv1d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv1d_10/kernel
y
$conv1d_10/kernel/Read/ReadVariableOpReadVariableOpconv1d_10/kernel*"
_output_shapes
: *
dtype0
t
conv1d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_10/bias
m
"conv1d_10/bias/Read/ReadVariableOpReadVariableOpconv1d_10/bias*
_output_shapes
: *
dtype0

conv1d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv1d_11/kernel
y
$conv1d_11/kernel/Read/ReadVariableOpReadVariableOpconv1d_11/kernel*"
_output_shapes
: @*
dtype0
t
conv1d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_11/bias
m
"conv1d_11/bias/Read/ReadVariableOpReadVariableOpconv1d_11/bias*
_output_shapes
:@*
dtype0
z
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_46/kernel
s
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel*
_output_shapes

:*
dtype0
r
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_46/bias
k
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes
:*
dtype0
z
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_47/kernel
s
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes

:*
dtype0
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
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
lstm_46/lstm_cell_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_46/lstm_cell_46/kernel

/lstm_46/lstm_cell_46/kernel/Read/ReadVariableOpReadVariableOplstm_46/lstm_cell_46/kernel*
_output_shapes

:@*
dtype0
¦
%lstm_46/lstm_cell_46/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%lstm_46/lstm_cell_46/recurrent_kernel

9lstm_46/lstm_cell_46/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_46/lstm_cell_46/recurrent_kernel*
_output_shapes

:*
dtype0

lstm_46/lstm_cell_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_46/lstm_cell_46/bias

-lstm_46/lstm_cell_46/bias/Read/ReadVariableOpReadVariableOplstm_46/lstm_cell_46/bias*
_output_shapes
:*
dtype0

lstm_47/lstm_cell_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namelstm_47/lstm_cell_47/kernel

/lstm_47/lstm_cell_47/kernel/Read/ReadVariableOpReadVariableOplstm_47/lstm_cell_47/kernel*
_output_shapes

:*
dtype0
¦
%lstm_47/lstm_cell_47/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%lstm_47/lstm_cell_47/recurrent_kernel

9lstm_47/lstm_cell_47/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_47/lstm_cell_47/recurrent_kernel*
_output_shapes

:*
dtype0

lstm_47/lstm_cell_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_47/lstm_cell_47/bias

-lstm_47/lstm_cell_47/bias/Read/ReadVariableOpReadVariableOplstm_47/lstm_cell_47/bias*
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

Adam/conv1d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv1d_10/kernel/m

+Adam/conv1d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/kernel/m*"
_output_shapes
: *
dtype0

Adam/conv1d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv1d_10/bias/m
{
)Adam/conv1d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/bias/m*
_output_shapes
: *
dtype0

Adam/conv1d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv1d_11/kernel/m

+Adam/conv1d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/kernel/m*"
_output_shapes
: @*
dtype0

Adam/conv1d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_11/bias/m
{
)Adam/conv1d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_46/kernel/m

*Adam/dense_46/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_46/bias/m
y
(Adam/dense_46/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/m*
_output_shapes
:*
dtype0

Adam/dense_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_47/kernel/m

*Adam/dense_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/m
y
(Adam/dense_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_46/lstm_cell_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_46/lstm_cell_46/kernel/m

6Adam/lstm_46/lstm_cell_46/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_46/lstm_cell_46/kernel/m*
_output_shapes

:@*
dtype0
´
,Adam/lstm_46/lstm_cell_46/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m
­
@Adam/lstm_46/lstm_cell_46/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m*
_output_shapes

:*
dtype0

 Adam/lstm_46/lstm_cell_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_46/lstm_cell_46/bias/m

4Adam/lstm_46/lstm_cell_46/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_46/lstm_cell_46/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_47/lstm_cell_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_47/lstm_cell_47/kernel/m

6Adam/lstm_47/lstm_cell_47/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_47/lstm_cell_47/kernel/m*
_output_shapes

:*
dtype0
´
,Adam/lstm_47/lstm_cell_47/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m
­
@Adam/lstm_47/lstm_cell_47/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m*
_output_shapes

:*
dtype0

 Adam/lstm_47/lstm_cell_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_47/lstm_cell_47/bias/m

4Adam/lstm_47/lstm_cell_47/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_47/lstm_cell_47/bias/m*
_output_shapes
:*
dtype0

Adam/conv1d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv1d_10/kernel/v

+Adam/conv1d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/kernel/v*"
_output_shapes
: *
dtype0

Adam/conv1d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv1d_10/bias/v
{
)Adam/conv1d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/bias/v*
_output_shapes
: *
dtype0

Adam/conv1d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv1d_11/kernel/v

+Adam/conv1d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/kernel/v*"
_output_shapes
: @*
dtype0

Adam/conv1d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_11/bias/v
{
)Adam/conv1d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_46/kernel/v

*Adam/dense_46/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_46/bias/v
y
(Adam/dense_46/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/v*
_output_shapes
:*
dtype0

Adam/dense_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_47/kernel/v

*Adam/dense_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/v
y
(Adam/dense_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_46/lstm_cell_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/lstm_46/lstm_cell_46/kernel/v

6Adam/lstm_46/lstm_cell_46/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_46/lstm_cell_46/kernel/v*
_output_shapes

:@*
dtype0
´
,Adam/lstm_46/lstm_cell_46/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v
­
@Adam/lstm_46/lstm_cell_46/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v*
_output_shapes

:*
dtype0

 Adam/lstm_46/lstm_cell_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_46/lstm_cell_46/bias/v

4Adam/lstm_46/lstm_cell_46/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_46/lstm_cell_46/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_47/lstm_cell_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_47/lstm_cell_47/kernel/v

6Adam/lstm_47/lstm_cell_47/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_47/lstm_cell_47/kernel/v*
_output_shapes

:*
dtype0
´
,Adam/lstm_47/lstm_cell_47/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v
­
@Adam/lstm_47/lstm_cell_47/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v*
_output_shapes

:*
dtype0

 Adam/lstm_47/lstm_cell_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_47/lstm_cell_47/bias/v

4Adam/lstm_47/lstm_cell_47/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_47/lstm_cell_47/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
³U
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*îT
valueäTBáT BÚT
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
\Z
VARIABLE_VALUEconv1d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
\Z
VARIABLE_VALUEconv1d_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_46/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_46/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_47/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_47/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_46/lstm_cell_46/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_46/lstm_cell_46/recurrent_kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_46/lstm_cell_46/bias0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_47/lstm_cell_47/kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_47/lstm_cell_47/recurrent_kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_47/lstm_cell_47/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/conv1d_10/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_10/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_11/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_11/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_46/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_46/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_47/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_47/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_46/lstm_cell_46/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_46/lstm_cell_46/recurrent_kernel/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_46/lstm_cell_46/bias/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_47/lstm_cell_47/kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_47/lstm_cell_47/recurrent_kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_47/lstm_cell_47/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_10/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_10/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_11/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_11/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_46/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_46/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_47/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_47/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_46/lstm_cell_46/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_46/lstm_cell_46/recurrent_kernel/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_46/lstm_cell_46/bias/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_47/lstm_cell_47/kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_47/lstm_cell_47/recurrent_kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_47/lstm_cell_47/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv1d_10_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_10_inputconv1d_10/kernelconv1d_10/biasconv1d_11/kernelconv1d_11/biaslstm_46/lstm_cell_46/kernel%lstm_46/lstm_cell_46/recurrent_kernellstm_46/lstm_cell_46/biaslstm_47/lstm_cell_47/kernel%lstm_47/lstm_cell_47/recurrent_kernellstm_47/lstm_cell_47/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias*
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
$__inference_signature_wrapper_431151
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ý
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_10/kernel/Read/ReadVariableOp"conv1d_10/bias/Read/ReadVariableOp$conv1d_11/kernel/Read/ReadVariableOp"conv1d_11/bias/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_46/lstm_cell_46/kernel/Read/ReadVariableOp9lstm_46/lstm_cell_46/recurrent_kernel/Read/ReadVariableOp-lstm_46/lstm_cell_46/bias/Read/ReadVariableOp/lstm_47/lstm_cell_47/kernel/Read/ReadVariableOp9lstm_47/lstm_cell_47/recurrent_kernel/Read/ReadVariableOp-lstm_47/lstm_cell_47/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv1d_10/kernel/m/Read/ReadVariableOp)Adam/conv1d_10/bias/m/Read/ReadVariableOp+Adam/conv1d_11/kernel/m/Read/ReadVariableOp)Adam/conv1d_11/bias/m/Read/ReadVariableOp*Adam/dense_46/kernel/m/Read/ReadVariableOp(Adam/dense_46/bias/m/Read/ReadVariableOp*Adam/dense_47/kernel/m/Read/ReadVariableOp(Adam/dense_47/bias/m/Read/ReadVariableOp6Adam/lstm_46/lstm_cell_46/kernel/m/Read/ReadVariableOp@Adam/lstm_46/lstm_cell_46/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_46/lstm_cell_46/bias/m/Read/ReadVariableOp6Adam/lstm_47/lstm_cell_47/kernel/m/Read/ReadVariableOp@Adam/lstm_47/lstm_cell_47/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_47/lstm_cell_47/bias/m/Read/ReadVariableOp+Adam/conv1d_10/kernel/v/Read/ReadVariableOp)Adam/conv1d_10/bias/v/Read/ReadVariableOp+Adam/conv1d_11/kernel/v/Read/ReadVariableOp)Adam/conv1d_11/bias/v/Read/ReadVariableOp*Adam/dense_46/kernel/v/Read/ReadVariableOp(Adam/dense_46/bias/v/Read/ReadVariableOp*Adam/dense_47/kernel/v/Read/ReadVariableOp(Adam/dense_47/bias/v/Read/ReadVariableOp6Adam/lstm_46/lstm_cell_46/kernel/v/Read/ReadVariableOp@Adam/lstm_46/lstm_cell_46/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_46/lstm_cell_46/bias/v/Read/ReadVariableOp6Adam/lstm_47/lstm_cell_47/kernel/v/Read/ReadVariableOp@Adam/lstm_47/lstm_cell_47/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_47/lstm_cell_47/bias/v/Read/ReadVariableOpConst*>
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
__inference__traced_save_433780
¤
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_10/kernelconv1d_10/biasconv1d_11/kernelconv1d_11/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_46/lstm_cell_46/kernel%lstm_46/lstm_cell_46/recurrent_kernellstm_46/lstm_cell_46/biaslstm_47/lstm_cell_47/kernel%lstm_47/lstm_cell_47/recurrent_kernellstm_47/lstm_cell_47/biastotalcountAdam/conv1d_10/kernel/mAdam/conv1d_10/bias/mAdam/conv1d_11/kernel/mAdam/conv1d_11/bias/mAdam/dense_46/kernel/mAdam/dense_46/bias/mAdam/dense_47/kernel/mAdam/dense_47/bias/m"Adam/lstm_46/lstm_cell_46/kernel/m,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m Adam/lstm_46/lstm_cell_46/bias/m"Adam/lstm_47/lstm_cell_47/kernel/m,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m Adam/lstm_47/lstm_cell_47/bias/mAdam/conv1d_10/kernel/vAdam/conv1d_10/bias/vAdam/conv1d_11/kernel/vAdam/conv1d_11/bias/vAdam/dense_46/kernel/vAdam/dense_46/bias/vAdam/dense_47/kernel/vAdam/dense_47/bias/v"Adam/lstm_46/lstm_cell_46/kernel/v,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v Adam/lstm_46/lstm_cell_46/bias/v"Adam/lstm_47/lstm_cell_47/kernel/v,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v Adam/lstm_47/lstm_cell_47/bias/v*=
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
"__inference__traced_restore_433937Æ§(
¬

E__inference_conv1d_10_layer_call_and_return_conditional_losses_429995

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
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
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_428801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_46_428825_0:@-
while_lstm_cell_46_428827_0:)
while_lstm_cell_46_428829_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_46_428825:@+
while_lstm_cell_46_428827:'
while_lstm_cell_46_428829:¢*while/lstm_cell_46/StatefulPartitionedCallÃ
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
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_428825_0while_lstm_cell_46_428827_0while_lstm_cell_46_428829_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_4287872,
*while/lstm_cell_46/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_46/StatefulPartitionedCall*"
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
while_lstm_cell_46_428825while_lstm_cell_46_428825_0"8
while_lstm_cell_46_428827while_lstm_cell_46_428827_0"8
while_lstm_cell_46_428829while_lstm_cell_46_428829_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


*__inference_conv1d_11_layer_call_fn_431965

inputs
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallù
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_11_layer_call_and_return_conditional_losses_4300172
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
Ò%
Ý
while_body_429011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_46_429035_0:@-
while_lstm_cell_46_429037_0:)
while_lstm_cell_46_429039_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_46_429035:@+
while_lstm_cell_46_429037:'
while_lstm_cell_46_429039:¢*while/lstm_cell_46/StatefulPartitionedCallÃ
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
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_429035_0while_lstm_cell_46_429037_0while_lstm_cell_46_429039_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_4289332,
*while/lstm_cell_46/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_46/StatefulPartitionedCall*"
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
while_lstm_cell_46_429035while_lstm_cell_46_429035_0"8
while_lstm_cell_46_429037while_lstm_cell_46_429037_0"8
while_lstm_cell_46_429039while_lstm_cell_46_429039_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
é

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_428933

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
³
ó
-__inference_lstm_cell_46_layer_call_fn_433431

inputs
states_0
states_1
unknown:@
	unknown_0:
	unknown_1:
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_4287872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Í
e
F__inference_dropout_26_layer_call_and_return_conditional_losses_432682

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
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¸
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_conv1d_10_layer_call_fn_431940

inputs
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallù
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_4299952
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
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
²
(__inference_lstm_46_layer_call_fn_432040

inputs
unknown:@
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4301822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?
Ê
while_body_430767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_46_matmul_readvariableop_resource_0:@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_46_matmul_readvariableop_resource:@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@
2while_lstm_cell_46_biasadd_readvariableop_resource:¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_46/MatMul/ReadVariableOpÖ
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMulÎ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_46/MatMul_1/ReadVariableOp¿
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMul_1·
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/addÇ
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_46/BiasAdd/ReadVariableOpÄ
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/BiasAdd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_46/split
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_1 
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu´
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_1©
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/add_1
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_2
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu_1¸
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_432792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_432792___redundant_placeholder04
0while_while_cond_432792___redundant_placeholder14
0while_while_cond_432792___redundant_placeholder24
0while_while_cond_432792___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
À
G
+__inference_dropout_27_layer_call_fn_433335

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_4303602
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
while_body_430263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@
2while_lstm_cell_47_biasadd_readvariableop_resource:¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_47/MatMul/ReadVariableOpÖ
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMulÎ
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_47/MatMul_1/ReadVariableOp¿
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMul_1·
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/addÇ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_47/BiasAdd/ReadVariableOpÄ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/BiasAdd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_47/split/split_dim
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_47/split
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_1 
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu´
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_1©
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/add_1
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_2
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu_1¸
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
\

C__inference_lstm_47_layer_call_and_return_conditional_losses_433028
inputs_0=
+lstm_cell_47_matmul_readvariableop_resource:?
-lstm_cell_47_matmul_1_readvariableop_resource::
,lstm_cell_47_biasadd_readvariableop_resource:
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_47/MatMul/ReadVariableOp¬
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMulº
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_47/MatMul_1/ReadVariableOp¨
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMul_1
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add³
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_47/BiasAdd/ReadVariableOp¬
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/BiasAdd~
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_47/split/split_dimó
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_47/split
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_1
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul}
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_1
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add_1
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_2|
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu_1 
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_432944*
condR
while_cond_432943*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
?
Ê
while_body_430571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@
2while_lstm_cell_47_biasadd_readvariableop_resource:¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_47/MatMul/ReadVariableOpÖ
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMulÎ
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_47/MatMul_1/ReadVariableOp¿
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMul_1·
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/addÇ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_47/BiasAdd/ReadVariableOpÄ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/BiasAdd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_47/split/split_dim
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_47/split
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_1 
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu´
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_1©
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/add_1
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_2
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu_1¸
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ó
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_430360

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
F

C__inference_lstm_47_layer_call_and_return_conditional_losses_429710

inputs%
lstm_cell_47_429628:%
lstm_cell_47_429630:!
lstm_cell_47_429632:
identity¢$lstm_cell_47/StatefulPartitionedCall¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_429628lstm_cell_47_429630lstm_cell_47_429632*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_4295632&
$lstm_cell_47/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_429628lstm_cell_47_429630lstm_cell_47_429632*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_429641*
condR
while_cond_429640*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_432419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_432419___redundant_placeholder04
0while_while_cond_432419___redundant_placeholder14
0while_while_cond_432419___redundant_placeholder24
0while_while_cond_432419___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_432571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_46_matmul_readvariableop_resource_0:@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_46_matmul_readvariableop_resource:@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@
2while_lstm_cell_46_biasadd_readvariableop_resource:¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_46/MatMul/ReadVariableOpÖ
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMulÎ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_46/MatMul_1/ReadVariableOp¿
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMul_1·
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/addÇ
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_46/BiasAdd/ReadVariableOpÄ
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/BiasAdd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_46/split
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_1 
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu´
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_1©
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/add_1
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_2
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu_1¸
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
È
G
+__inference_reshape_23_layer_call_fn_433401

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
F__inference_reshape_23_layer_call_and_return_conditional_losses_4304082
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
ñ

)__inference_dense_46_layer_call_fn_433366

inputs
unknown:
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
D__inference_dense_46_layer_call_and_return_conditional_losses_4303732
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
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

E__inference_conv1d_11_layer_call_and_return_conditional_losses_430017

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
\

C__inference_lstm_46_layer_call_and_return_conditional_losses_432202
inputs_0=
+lstm_cell_46_matmul_readvariableop_resource:@?
-lstm_cell_46_matmul_1_readvariableop_resource::
,lstm_cell_46_biasadd_readvariableop_resource:
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_46/MatMul/ReadVariableOp¬
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMulº
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_46/MatMul_1/ReadVariableOp¨
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMul_1
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add³
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_46/BiasAdd/ReadVariableOp¬
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/BiasAdd~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dimó
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_46/split
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_1
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul}
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_1
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add_1
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_2|
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu_1 
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_432118*
condR
while_cond_432117*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
ë
û
'sequential_16_lstm_47_while_cond_428576H
Dsequential_16_lstm_47_while_sequential_16_lstm_47_while_loop_counterN
Jsequential_16_lstm_47_while_sequential_16_lstm_47_while_maximum_iterations+
'sequential_16_lstm_47_while_placeholder-
)sequential_16_lstm_47_while_placeholder_1-
)sequential_16_lstm_47_while_placeholder_2-
)sequential_16_lstm_47_while_placeholder_3J
Fsequential_16_lstm_47_while_less_sequential_16_lstm_47_strided_slice_1`
\sequential_16_lstm_47_while_sequential_16_lstm_47_while_cond_428576___redundant_placeholder0`
\sequential_16_lstm_47_while_sequential_16_lstm_47_while_cond_428576___redundant_placeholder1`
\sequential_16_lstm_47_while_sequential_16_lstm_47_while_cond_428576___redundant_placeholder2`
\sequential_16_lstm_47_while_sequential_16_lstm_47_while_cond_428576___redundant_placeholder3(
$sequential_16_lstm_47_while_identity
Þ
 sequential_16/lstm_47/while/LessLess'sequential_16_lstm_47_while_placeholderFsequential_16_lstm_47_while_less_sequential_16_lstm_47_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_16/lstm_47/while/Less
$sequential_16/lstm_47/while/IdentityIdentity$sequential_16/lstm_47/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_16/lstm_47/while/Identity"U
$sequential_16_lstm_47_while_identity-sequential_16/lstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

õ
D__inference_dense_46_layer_call_and_return_conditional_losses_430373

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù/

I__inference_sequential_16_layer_call_and_return_conditional_losses_431068
conv1d_10_input&
conv1d_10_431029: 
conv1d_10_431031: &
conv1d_11_431034: @
conv1d_11_431036:@ 
lstm_46_431040:@ 
lstm_46_431042:
lstm_46_431044: 
lstm_47_431048: 
lstm_47_431050:
lstm_47_431052:!
dense_46_431056:
dense_46_431058:!
dense_47_431061:
dense_47_431063:
identity¢!conv1d_10/StatefulPartitionedCall¢!conv1d_11/StatefulPartitionedCall¢ dense_46/StatefulPartitionedCall¢ dense_47/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall¦
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputconv1d_10_431029conv1d_10_431031*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_4299952#
!conv1d_10/StatefulPartitionedCallÁ
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0conv1d_11_431034conv1d_11_431036*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_11_layer_call_and_return_conditional_losses_4300172#
!conv1d_11/StatefulPartitionedCall
max_pooling1d_4/PartitionedCallPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4300302!
max_pooling1d_4/PartitionedCallÇ
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_4/PartitionedCall:output:0lstm_46_431040lstm_46_431042lstm_46_431044*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4301822!
lstm_46/StatefulPartitionedCall
dropout_26/PartitionedCallPartitionedCall(lstm_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_4301952
dropout_26/PartitionedCall¾
lstm_47/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0lstm_47_431048lstm_47_431050lstm_47_431052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4303472!
lstm_47/StatefulPartitionedCallü
dropout_27/PartitionedCallPartitionedCall(lstm_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_4303602
dropout_27/PartitionedCall±
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_46_431056dense_46_431058*
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
D__inference_dense_46_layer_call_and_return_conditional_losses_4303732"
 dense_46/StatefulPartitionedCall·
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_431061dense_47_431063*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_4303892"
 dense_47/StatefulPartitionedCall
reshape_23/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
F__inference_reshape_23_layer_call_and_return_conditional_losses_4304082
reshape_23/PartitionedCall
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity 
NoOpNoOp"^conv1d_10/StatefulPartitionedCall"^conv1d_11/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameconv1d_10_input
Ë2
Ü
I__inference_sequential_16_layer_call_and_return_conditional_losses_430962

inputs&
conv1d_10_430923: 
conv1d_10_430925: &
conv1d_11_430928: @
conv1d_11_430930:@ 
lstm_46_430934:@ 
lstm_46_430936:
lstm_46_430938: 
lstm_47_430942: 
lstm_47_430944:
lstm_47_430946:!
dense_46_430950:
dense_46_430952:!
dense_47_430955:
dense_47_430957:
identity¢!conv1d_10/StatefulPartitionedCall¢!conv1d_11/StatefulPartitionedCall¢ dense_46/StatefulPartitionedCall¢ dense_47/StatefulPartitionedCall¢"dropout_26/StatefulPartitionedCall¢"dropout_27/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_10_430923conv1d_10_430925*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_4299952#
!conv1d_10/StatefulPartitionedCallÁ
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0conv1d_11_430928conv1d_11_430930*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_11_layer_call_and_return_conditional_losses_4300172#
!conv1d_11/StatefulPartitionedCall
max_pooling1d_4/PartitionedCallPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4300302!
max_pooling1d_4/PartitionedCallÇ
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_4/PartitionedCall:output:0lstm_46_430934lstm_46_430936lstm_46_430938*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4308512!
lstm_46/StatefulPartitionedCall
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_4306842$
"dropout_26/StatefulPartitionedCallÆ
lstm_47/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0lstm_47_430942lstm_47_430944lstm_47_430946*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4306552!
lstm_47/StatefulPartitionedCall¹
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_4304882$
"dropout_27/StatefulPartitionedCall¹
 dense_46/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_46_430950dense_46_430952*
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
D__inference_dense_46_layer_call_and_return_conditional_losses_4303732"
 dense_46/StatefulPartitionedCall·
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_430955dense_47_430957*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_4303892"
 dense_47/StatefulPartitionedCall
reshape_23/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
F__inference_reshape_23_layer_call_and_return_conditional_losses_4304082
reshape_23/PartitionedCall
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityê
NoOpNoOp"^conv1d_10/StatefulPartitionedCall"^conv1d_11/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

b
F__inference_reshape_23_layer_call_and_return_conditional_losses_433414

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
¤
g
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_432007

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
£
²
(__inference_lstm_47_layer_call_fn_432715

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4303472
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
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

õ
D__inference_dense_47_layer_call_and_return_conditional_losses_433396

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ôÖ
¢ 
"__inference__traced_restore_433937
file_prefix7
!assignvariableop_conv1d_10_kernel: /
!assignvariableop_1_conv1d_10_bias: 9
#assignvariableop_2_conv1d_11_kernel: @/
!assignvariableop_3_conv1d_11_bias:@4
"assignvariableop_4_dense_46_kernel:.
 assignvariableop_5_dense_46_bias:4
"assignvariableop_6_dense_47_kernel:.
 assignvariableop_7_dense_47_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: A
/assignvariableop_13_lstm_46_lstm_cell_46_kernel:@K
9assignvariableop_14_lstm_46_lstm_cell_46_recurrent_kernel:;
-assignvariableop_15_lstm_46_lstm_cell_46_bias:A
/assignvariableop_16_lstm_47_lstm_cell_47_kernel:K
9assignvariableop_17_lstm_47_lstm_cell_47_recurrent_kernel:;
-assignvariableop_18_lstm_47_lstm_cell_47_bias:#
assignvariableop_19_total: #
assignvariableop_20_count: A
+assignvariableop_21_adam_conv1d_10_kernel_m: 7
)assignvariableop_22_adam_conv1d_10_bias_m: A
+assignvariableop_23_adam_conv1d_11_kernel_m: @7
)assignvariableop_24_adam_conv1d_11_bias_m:@<
*assignvariableop_25_adam_dense_46_kernel_m:6
(assignvariableop_26_adam_dense_46_bias_m:<
*assignvariableop_27_adam_dense_47_kernel_m:6
(assignvariableop_28_adam_dense_47_bias_m:H
6assignvariableop_29_adam_lstm_46_lstm_cell_46_kernel_m:@R
@assignvariableop_30_adam_lstm_46_lstm_cell_46_recurrent_kernel_m:B
4assignvariableop_31_adam_lstm_46_lstm_cell_46_bias_m:H
6assignvariableop_32_adam_lstm_47_lstm_cell_47_kernel_m:R
@assignvariableop_33_adam_lstm_47_lstm_cell_47_recurrent_kernel_m:B
4assignvariableop_34_adam_lstm_47_lstm_cell_47_bias_m:A
+assignvariableop_35_adam_conv1d_10_kernel_v: 7
)assignvariableop_36_adam_conv1d_10_bias_v: A
+assignvariableop_37_adam_conv1d_11_kernel_v: @7
)assignvariableop_38_adam_conv1d_11_bias_v:@<
*assignvariableop_39_adam_dense_46_kernel_v:6
(assignvariableop_40_adam_dense_46_bias_v:<
*assignvariableop_41_adam_dense_47_kernel_v:6
(assignvariableop_42_adam_dense_47_bias_v:H
6assignvariableop_43_adam_lstm_46_lstm_cell_46_kernel_v:@R
@assignvariableop_44_adam_lstm_46_lstm_cell_46_recurrent_kernel_v:B
4assignvariableop_45_adam_lstm_46_lstm_cell_46_bias_v:H
6assignvariableop_46_adam_lstm_47_lstm_cell_47_kernel_v:R
@assignvariableop_47_adam_lstm_47_lstm_cell_47_recurrent_kernel_v:B
4assignvariableop_48_adam_lstm_47_lstm_cell_47_bias_v:
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

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv1d_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv1d_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_46_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_46_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_47_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_47_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_46_lstm_cell_46_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Á
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_46_lstm_cell_46_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15µ
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_46_lstm_cell_46_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16·
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_47_lstm_cell_47_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Á
AssignVariableOp_17AssignVariableOp9assignvariableop_17_lstm_47_lstm_cell_47_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18µ
AssignVariableOp_18AssignVariableOp-assignvariableop_18_lstm_47_lstm_cell_47_biasIdentity_18:output:0"/device:CPU:0*
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
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv1d_10_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv1d_10_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv1d_11_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv1d_11_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_46_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_46_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_47_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_47_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¾
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_46_lstm_cell_46_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30È
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_lstm_46_lstm_cell_46_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¼
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_46_lstm_cell_46_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¾
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_47_lstm_cell_47_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33È
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_lstm_47_lstm_cell_47_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¼
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_47_lstm_cell_47_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35³
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv1d_10_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36±
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv1d_10_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37³
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv1d_11_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38±
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv1d_11_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_46_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_46_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_47_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_47_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¾
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_46_lstm_cell_46_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44È
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_lstm_46_lstm_cell_46_recurrent_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¼
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_46_lstm_cell_46_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¾
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_lstm_47_lstm_cell_47_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47È
AssignVariableOp_47AssignVariableOp@assignvariableop_47_adam_lstm_47_lstm_cell_47_recurrent_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48¼
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_lstm_47_lstm_cell_47_bias_vIdentity_48:output:0"/device:CPU:0*
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
Õ
Ã
while_cond_430766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_430766___redundant_placeholder04
0while_while_cond_430766___redundant_placeholder14
0while_while_cond_430766___redundant_placeholder24
0while_while_cond_430766___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
°
÷
.__inference_sequential_16_layer_call_fn_430442
conv1d_10_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_4304112
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
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameconv1d_10_input
×[

C__inference_lstm_46_layer_call_and_return_conditional_losses_430182

inputs=
+lstm_cell_46_matmul_readvariableop_resource:@?
-lstm_cell_46_matmul_1_readvariableop_resource::
,lstm_cell_46_biasadd_readvariableop_resource:
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_46/MatMul/ReadVariableOp¬
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMulº
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_46/MatMul_1/ReadVariableOp¨
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMul_1
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add³
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_46/BiasAdd/ReadVariableOp¬
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/BiasAdd~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dimó
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_46/split
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_1
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul}
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_1
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add_1
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_2|
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu_1 
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_430098*
condR
while_cond_430097*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
»
´
(__inference_lstm_47_layer_call_fn_432693
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4295002
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
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_432943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_432943___redundant_placeholder04
0while_while_cond_432943___redundant_placeholder14
0while_while_cond_432943___redundant_placeholder24
0while_while_cond_432943___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Æ

ã
lstm_46_while_cond_431311,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3.
*lstm_46_while_less_lstm_46_strided_slice_1D
@lstm_46_while_lstm_46_while_cond_431311___redundant_placeholder0D
@lstm_46_while_lstm_46_while_cond_431311___redundant_placeholder1D
@lstm_46_while_lstm_46_while_cond_431311___redundant_placeholder2D
@lstm_46_while_lstm_46_while_cond_431311___redundant_placeholder3
lstm_46_while_identity

lstm_46/while/LessLesslstm_46_while_placeholder*lstm_46_while_less_lstm_46_strided_slice_1*
T0*
_output_shapes
: 2
lstm_46/while/Lessu
lstm_46/while/IdentityIdentitylstm_46/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_46/while/Identity"9
lstm_46_while_identitylstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_429010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_429010___redundant_placeholder04
0while_while_cond_429010___redundant_placeholder14
0while_while_cond_429010___redundant_placeholder24
0while_while_cond_429010___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_430097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_430097___redundant_placeholder04
0while_while_cond_430097___redundant_placeholder14
0while_while_cond_430097___redundant_placeholder24
0while_while_cond_430097___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

d
F__inference_dropout_26_layer_call_and_return_conditional_losses_430195

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_428800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_428800___redundant_placeholder04
0while_while_cond_428800___redundant_placeholder14
0while_while_cond_428800___redundant_placeholder24
0while_while_cond_428800___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_432118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_46_matmul_readvariableop_resource_0:@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_46_matmul_readvariableop_resource:@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@
2while_lstm_cell_46_biasadd_readvariableop_resource:¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_46/MatMul/ReadVariableOpÖ
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMulÎ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_46/MatMul_1/ReadVariableOp¿
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMul_1·
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/addÇ
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_46/BiasAdd/ReadVariableOpÄ
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/BiasAdd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_46/split
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_1 
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu´
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_1©
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/add_1
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_2
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu_1¸
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÀJ
Ê

lstm_46_while_body_431662,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3+
'lstm_46_while_lstm_46_strided_slice_1_0g
clstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0:@O
=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0:J
<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0:
lstm_46_while_identity
lstm_46_while_identity_1
lstm_46_while_identity_2
lstm_46_while_identity_3
lstm_46_while_identity_4
lstm_46_while_identity_5)
%lstm_46_while_lstm_46_strided_slice_1e
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorK
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource:@M
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource:H
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource:¢1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp¢0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp¢2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpÓ
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0lstm_46_while_placeholderHlstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_46/while/TensorArrayV2Read/TensorListGetItemà
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpö
!lstm_46/while/lstm_cell_46/MatMulMatMul8lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_46/while/lstm_cell_46/MatMulæ
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpß
#lstm_46/while/lstm_cell_46/MatMul_1MatMullstm_46_while_placeholder_2:lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_46/while/lstm_cell_46/MatMul_1×
lstm_46/while/lstm_cell_46/addAddV2+lstm_46/while/lstm_cell_46/MatMul:product:0-lstm_46/while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/while/lstm_cell_46/addß
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpä
"lstm_46/while/lstm_cell_46/BiasAddBiasAdd"lstm_46/while/lstm_cell_46/add:z:09lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_46/while/lstm_cell_46/BiasAdd
*lstm_46/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_46/while/lstm_cell_46/split/split_dim«
 lstm_46/while/lstm_cell_46/splitSplit3lstm_46/while/lstm_cell_46/split/split_dim:output:0+lstm_46/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_46/while/lstm_cell_46/split°
"lstm_46/while/lstm_cell_46/SigmoidSigmoid)lstm_46/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_46/while/lstm_cell_46/Sigmoid´
$lstm_46/while/lstm_cell_46/Sigmoid_1Sigmoid)lstm_46/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_46/while/lstm_cell_46/Sigmoid_1À
lstm_46/while/lstm_cell_46/mulMul(lstm_46/while/lstm_cell_46/Sigmoid_1:y:0lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/while/lstm_cell_46/mul§
lstm_46/while/lstm_cell_46/ReluRelu)lstm_46/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_46/while/lstm_cell_46/ReluÔ
 lstm_46/while/lstm_cell_46/mul_1Mul&lstm_46/while/lstm_cell_46/Sigmoid:y:0-lstm_46/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/lstm_cell_46/mul_1É
 lstm_46/while/lstm_cell_46/add_1AddV2"lstm_46/while/lstm_cell_46/mul:z:0$lstm_46/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/lstm_cell_46/add_1´
$lstm_46/while/lstm_cell_46/Sigmoid_2Sigmoid)lstm_46/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_46/while/lstm_cell_46/Sigmoid_2¦
!lstm_46/while/lstm_cell_46/Relu_1Relu$lstm_46/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_46/while/lstm_cell_46/Relu_1Ø
 lstm_46/while/lstm_cell_46/mul_2Mul(lstm_46/while/lstm_cell_46/Sigmoid_2:y:0/lstm_46/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/lstm_cell_46/mul_2
2lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_46_while_placeholder_1lstm_46_while_placeholder$lstm_46/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_46/while/TensorArrayV2Write/TensorListSetIteml
lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/while/add/y
lstm_46/while/addAddV2lstm_46_while_placeholderlstm_46/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_46/while/addp
lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/while/add_1/y
lstm_46/while/add_1AddV2(lstm_46_while_lstm_46_while_loop_counterlstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_46/while/add_1
lstm_46/while/IdentityIdentitylstm_46/while/add_1:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity¦
lstm_46/while/Identity_1Identity.lstm_46_while_lstm_46_while_maximum_iterations^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity_1
lstm_46/while/Identity_2Identitylstm_46/while/add:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity_2º
lstm_46/while/Identity_3IdentityBlstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity_3­
lstm_46/while/Identity_4Identity$lstm_46/while/lstm_cell_46/mul_2:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/while/Identity_4­
lstm_46/while/Identity_5Identity$lstm_46/while/lstm_cell_46/add_1:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/while/Identity_5
lstm_46/while/NoOpNoOp2^lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1^lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp3^lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_46/while/NoOp"9
lstm_46_while_identitylstm_46/while/Identity:output:0"=
lstm_46_while_identity_1!lstm_46/while/Identity_1:output:0"=
lstm_46_while_identity_2!lstm_46/while/Identity_2:output:0"=
lstm_46_while_identity_3!lstm_46/while/Identity_3:output:0"=
lstm_46_while_identity_4!lstm_46/while/Identity_4:output:0"=
lstm_46_while_identity_5!lstm_46/while/Identity_5:output:0"P
%lstm_46_while_lstm_46_strided_slice_1'lstm_46_while_lstm_46_strided_slice_1_0"z
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0"|
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0"x
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0"È
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp2d
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp2h
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_429430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_429430___redundant_placeholder04
0while_while_cond_429430___redundant_placeholder14
0while_while_cond_429430___redundant_placeholder24
0while_while_cond_429430___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
»
´
(__inference_lstm_47_layer_call_fn_432704
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4297102
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
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ó
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_433345

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

b
F__inference_reshape_23_layer_call_and_return_conditional_losses_430408

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

lstm_47_while_body_431460,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3+
'lstm_47_while_lstm_47_strided_slice_1_0g
clstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0:O
=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0:J
<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0:
lstm_47_while_identity
lstm_47_while_identity_1
lstm_47_while_identity_2
lstm_47_while_identity_3
lstm_47_while_identity_4
lstm_47_while_identity_5)
%lstm_47_while_lstm_47_strided_slice_1e
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorK
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource:M
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource:H
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource:¢1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp¢0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp¢2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpÓ
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0lstm_47_while_placeholderHlstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_47/while/TensorArrayV2Read/TensorListGetItemà
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpö
!lstm_47/while/lstm_cell_47/MatMulMatMul8lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_47/while/lstm_cell_47/MatMulæ
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpß
#lstm_47/while/lstm_cell_47/MatMul_1MatMullstm_47_while_placeholder_2:lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_47/while/lstm_cell_47/MatMul_1×
lstm_47/while/lstm_cell_47/addAddV2+lstm_47/while/lstm_cell_47/MatMul:product:0-lstm_47/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/while/lstm_cell_47/addß
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpä
"lstm_47/while/lstm_cell_47/BiasAddBiasAdd"lstm_47/while/lstm_cell_47/add:z:09lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_47/while/lstm_cell_47/BiasAdd
*lstm_47/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_47/while/lstm_cell_47/split/split_dim«
 lstm_47/while/lstm_cell_47/splitSplit3lstm_47/while/lstm_cell_47/split/split_dim:output:0+lstm_47/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_47/while/lstm_cell_47/split°
"lstm_47/while/lstm_cell_47/SigmoidSigmoid)lstm_47/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_47/while/lstm_cell_47/Sigmoid´
$lstm_47/while/lstm_cell_47/Sigmoid_1Sigmoid)lstm_47/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_47/while/lstm_cell_47/Sigmoid_1À
lstm_47/while/lstm_cell_47/mulMul(lstm_47/while/lstm_cell_47/Sigmoid_1:y:0lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/while/lstm_cell_47/mul§
lstm_47/while/lstm_cell_47/ReluRelu)lstm_47/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_47/while/lstm_cell_47/ReluÔ
 lstm_47/while/lstm_cell_47/mul_1Mul&lstm_47/while/lstm_cell_47/Sigmoid:y:0-lstm_47/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/lstm_cell_47/mul_1É
 lstm_47/while/lstm_cell_47/add_1AddV2"lstm_47/while/lstm_cell_47/mul:z:0$lstm_47/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/lstm_cell_47/add_1´
$lstm_47/while/lstm_cell_47/Sigmoid_2Sigmoid)lstm_47/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_47/while/lstm_cell_47/Sigmoid_2¦
!lstm_47/while/lstm_cell_47/Relu_1Relu$lstm_47/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_47/while/lstm_cell_47/Relu_1Ø
 lstm_47/while/lstm_cell_47/mul_2Mul(lstm_47/while/lstm_cell_47/Sigmoid_2:y:0/lstm_47/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/lstm_cell_47/mul_2
2lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_47_while_placeholder_1lstm_47_while_placeholder$lstm_47/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_47/while/TensorArrayV2Write/TensorListSetIteml
lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/while/add/y
lstm_47/while/addAddV2lstm_47_while_placeholderlstm_47/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_47/while/addp
lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/while/add_1/y
lstm_47/while/add_1AddV2(lstm_47_while_lstm_47_while_loop_counterlstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_47/while/add_1
lstm_47/while/IdentityIdentitylstm_47/while/add_1:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity¦
lstm_47/while/Identity_1Identity.lstm_47_while_lstm_47_while_maximum_iterations^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity_1
lstm_47/while/Identity_2Identitylstm_47/while/add:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity_2º
lstm_47/while/Identity_3IdentityBlstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity_3­
lstm_47/while/Identity_4Identity$lstm_47/while/lstm_cell_47/mul_2:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/while/Identity_4­
lstm_47/while/Identity_5Identity$lstm_47/while/lstm_cell_47/add_1:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/while/Identity_5
lstm_47/while/NoOpNoOp2^lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1^lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp3^lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_47/while/NoOp"9
lstm_47_while_identitylstm_47/while/Identity:output:0"=
lstm_47_while_identity_1!lstm_47/while/Identity_1:output:0"=
lstm_47_while_identity_2!lstm_47/while/Identity_2:output:0"=
lstm_47_while_identity_3!lstm_47/while/Identity_3:output:0"=
lstm_47_while_identity_4!lstm_47/while/Identity_4:output:0"=
lstm_47_while_identity_5!lstm_47/while/Identity_5:output:0"P
%lstm_47_while_lstm_47_strided_slice_1'lstm_47_while_lstm_47_strided_slice_1_0"z
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0"|
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0"x
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0"È
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp2d
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp2h
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
?
Ê
while_body_433246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@
2while_lstm_cell_47_biasadd_readvariableop_resource:¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_47/MatMul/ReadVariableOpÖ
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMulÎ
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_47/MatMul_1/ReadVariableOp¿
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMul_1·
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/addÇ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_47/BiasAdd/ReadVariableOpÄ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/BiasAdd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_47/split/split_dim
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_47/split
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_1 
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu´
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_1©
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/add_1
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_2
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu_1¸
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
é

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_429563

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ü[

C__inference_lstm_47_layer_call_and_return_conditional_losses_433179

inputs=
+lstm_cell_47_matmul_readvariableop_resource:?
-lstm_cell_47_matmul_1_readvariableop_resource::
,lstm_cell_47_biasadd_readvariableop_resource:
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_47/MatMul/ReadVariableOp¬
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMulº
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_47/MatMul_1/ReadVariableOp¨
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMul_1
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add³
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_47/BiasAdd/ReadVariableOp¬
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/BiasAdd~
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_47/split/split_dimó
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_47/split
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_1
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul}
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_1
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add_1
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_2|
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu_1 
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_433095*
condR
while_cond_433094*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_429640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_429640___redundant_placeholder04
0while_while_cond_429640___redundant_placeholder14
0while_while_cond_429640___redundant_placeholder24
0while_while_cond_429640___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_433245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_433245___redundant_placeholder04
0while_while_cond_433245___redundant_placeholder14
0while_while_cond_433245___redundant_placeholder24
0while_while_cond_433245___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¢
d
+__inference_dropout_27_layer_call_fn_433340

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_4304882
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
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
e
F__inference_dropout_27_layer_call_and_return_conditional_losses_433357

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
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\

C__inference_lstm_47_layer_call_and_return_conditional_losses_432877
inputs_0=
+lstm_cell_47_matmul_readvariableop_resource:?
-lstm_cell_47_matmul_1_readvariableop_resource::
,lstm_cell_47_biasadd_readvariableop_resource:
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_47/MatMul/ReadVariableOp¬
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMulº
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_47/MatMul_1/ReadVariableOp¨
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMul_1
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add³
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_47/BiasAdd/ReadVariableOp¬
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/BiasAdd~
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_47/split/split_dimó
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_47/split
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_1
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul}
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_1
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add_1
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_2|
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu_1 
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_432793*
condR
while_cond_432792*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
³
ó
-__inference_lstm_cell_47_layer_call_fn_433529

inputs
states_0
states_1
unknown:
	unknown_0:
	unknown_1:
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_4294172
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
ñ

)__inference_dense_47_layer_call_fn_433386

inputs
unknown:
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
D__inference_dense_47_layer_call_and_return_conditional_losses_4303892
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
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
G
+__inference_dropout_26_layer_call_fn_432660

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_4301952
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
i
¸
__inference__traced_save_433780
file_prefix/
+savev2_conv1d_10_kernel_read_readvariableop-
)savev2_conv1d_10_bias_read_readvariableop/
+savev2_conv1d_11_kernel_read_readvariableop-
)savev2_conv1d_11_bias_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_46_lstm_cell_46_kernel_read_readvariableopD
@savev2_lstm_46_lstm_cell_46_recurrent_kernel_read_readvariableop8
4savev2_lstm_46_lstm_cell_46_bias_read_readvariableop:
6savev2_lstm_47_lstm_cell_47_kernel_read_readvariableopD
@savev2_lstm_47_lstm_cell_47_recurrent_kernel_read_readvariableop8
4savev2_lstm_47_lstm_cell_47_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv1d_10_kernel_m_read_readvariableop4
0savev2_adam_conv1d_10_bias_m_read_readvariableop6
2savev2_adam_conv1d_11_kernel_m_read_readvariableop4
0savev2_adam_conv1d_11_bias_m_read_readvariableop5
1savev2_adam_dense_46_kernel_m_read_readvariableop3
/savev2_adam_dense_46_bias_m_read_readvariableop5
1savev2_adam_dense_47_kernel_m_read_readvariableop3
/savev2_adam_dense_47_bias_m_read_readvariableopA
=savev2_adam_lstm_46_lstm_cell_46_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_46_lstm_cell_46_bias_m_read_readvariableopA
=savev2_adam_lstm_47_lstm_cell_47_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_47_lstm_cell_47_bias_m_read_readvariableop6
2savev2_adam_conv1d_10_kernel_v_read_readvariableop4
0savev2_adam_conv1d_10_bias_v_read_readvariableop6
2savev2_adam_conv1d_11_kernel_v_read_readvariableop4
0savev2_adam_conv1d_11_bias_v_read_readvariableop5
1savev2_adam_dense_46_kernel_v_read_readvariableop3
/savev2_adam_dense_46_bias_v_read_readvariableop5
1savev2_adam_dense_47_kernel_v_read_readvariableop3
/savev2_adam_dense_47_bias_v_read_readvariableopA
=savev2_adam_lstm_46_lstm_cell_46_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_46_lstm_cell_46_bias_v_read_readvariableopA
=savev2_adam_lstm_47_lstm_cell_47_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_47_lstm_cell_47_bias_v_read_readvariableop
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
SaveV2/shape_and_slicesó
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_10_kernel_read_readvariableop)savev2_conv1d_10_bias_read_readvariableop+savev2_conv1d_11_kernel_read_readvariableop)savev2_conv1d_11_bias_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_46_lstm_cell_46_kernel_read_readvariableop@savev2_lstm_46_lstm_cell_46_recurrent_kernel_read_readvariableop4savev2_lstm_46_lstm_cell_46_bias_read_readvariableop6savev2_lstm_47_lstm_cell_47_kernel_read_readvariableop@savev2_lstm_47_lstm_cell_47_recurrent_kernel_read_readvariableop4savev2_lstm_47_lstm_cell_47_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv1d_10_kernel_m_read_readvariableop0savev2_adam_conv1d_10_bias_m_read_readvariableop2savev2_adam_conv1d_11_kernel_m_read_readvariableop0savev2_adam_conv1d_11_bias_m_read_readvariableop1savev2_adam_dense_46_kernel_m_read_readvariableop/savev2_adam_dense_46_bias_m_read_readvariableop1savev2_adam_dense_47_kernel_m_read_readvariableop/savev2_adam_dense_47_bias_m_read_readvariableop=savev2_adam_lstm_46_lstm_cell_46_kernel_m_read_readvariableopGsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_46_lstm_cell_46_bias_m_read_readvariableop=savev2_adam_lstm_47_lstm_cell_47_kernel_m_read_readvariableopGsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_47_lstm_cell_47_bias_m_read_readvariableop2savev2_adam_conv1d_10_kernel_v_read_readvariableop0savev2_adam_conv1d_10_bias_v_read_readvariableop2savev2_adam_conv1d_11_kernel_v_read_readvariableop0savev2_adam_conv1d_11_bias_v_read_readvariableop1savev2_adam_dense_46_kernel_v_read_readvariableop/savev2_adam_dense_46_bias_v_read_readvariableop1savev2_adam_dense_47_kernel_v_read_readvariableop/savev2_adam_dense_47_bias_v_read_readvariableop=savev2_adam_lstm_46_lstm_cell_46_kernel_v_read_readvariableopGsavev2_adam_lstm_46_lstm_cell_46_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_46_lstm_cell_46_bias_v_read_readvariableop=savev2_adam_lstm_47_lstm_cell_47_kernel_v_read_readvariableopGsavev2_adam_lstm_47_lstm_cell_47_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_47_lstm_cell_47_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
: : : : @:@::::: : : : : :@:::::: : : : : @:@:::::@:::::: : : @:@:::::@:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 
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

:: 

_output_shapes
::$ 

_output_shapes

:: 
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

:@:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
: : 
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

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@:$ 

_output_shapes

::  

_output_shapes
::$! 

_output_shapes

::$" 

_output_shapes

:: #

_output_shapes
::($$
"
_output_shapes
: : %
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

:: )

_output_shapes
::$* 

_output_shapes

:: +

_output_shapes
::$, 

_output_shapes

:@:$- 

_output_shapes

:: .

_output_shapes
::$/ 

_output_shapes

::$0 

_output_shapes

:: 1

_output_shapes
::2

_output_shapes
: 
é

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_429417

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
ÀJ
Ê

lstm_46_while_body_431312,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3+
'lstm_46_while_lstm_46_strided_slice_1_0g
clstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0:@O
=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0:J
<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0:
lstm_46_while_identity
lstm_46_while_identity_1
lstm_46_while_identity_2
lstm_46_while_identity_3
lstm_46_while_identity_4
lstm_46_while_identity_5)
%lstm_46_while_lstm_46_strided_slice_1e
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorK
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource:@M
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource:H
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource:¢1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp¢0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp¢2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpÓ
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0lstm_46_while_placeholderHlstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_46/while/TensorArrayV2Read/TensorListGetItemà
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype022
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpö
!lstm_46/while/lstm_cell_46/MatMulMatMul8lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_46/while/lstm_cell_46/MatMulæ
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpß
#lstm_46/while/lstm_cell_46/MatMul_1MatMullstm_46_while_placeholder_2:lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_46/while/lstm_cell_46/MatMul_1×
lstm_46/while/lstm_cell_46/addAddV2+lstm_46/while/lstm_cell_46/MatMul:product:0-lstm_46/while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/while/lstm_cell_46/addß
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpä
"lstm_46/while/lstm_cell_46/BiasAddBiasAdd"lstm_46/while/lstm_cell_46/add:z:09lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_46/while/lstm_cell_46/BiasAdd
*lstm_46/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_46/while/lstm_cell_46/split/split_dim«
 lstm_46/while/lstm_cell_46/splitSplit3lstm_46/while/lstm_cell_46/split/split_dim:output:0+lstm_46/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_46/while/lstm_cell_46/split°
"lstm_46/while/lstm_cell_46/SigmoidSigmoid)lstm_46/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_46/while/lstm_cell_46/Sigmoid´
$lstm_46/while/lstm_cell_46/Sigmoid_1Sigmoid)lstm_46/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_46/while/lstm_cell_46/Sigmoid_1À
lstm_46/while/lstm_cell_46/mulMul(lstm_46/while/lstm_cell_46/Sigmoid_1:y:0lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/while/lstm_cell_46/mul§
lstm_46/while/lstm_cell_46/ReluRelu)lstm_46/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_46/while/lstm_cell_46/ReluÔ
 lstm_46/while/lstm_cell_46/mul_1Mul&lstm_46/while/lstm_cell_46/Sigmoid:y:0-lstm_46/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/lstm_cell_46/mul_1É
 lstm_46/while/lstm_cell_46/add_1AddV2"lstm_46/while/lstm_cell_46/mul:z:0$lstm_46/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/lstm_cell_46/add_1´
$lstm_46/while/lstm_cell_46/Sigmoid_2Sigmoid)lstm_46/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_46/while/lstm_cell_46/Sigmoid_2¦
!lstm_46/while/lstm_cell_46/Relu_1Relu$lstm_46/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_46/while/lstm_cell_46/Relu_1Ø
 lstm_46/while/lstm_cell_46/mul_2Mul(lstm_46/while/lstm_cell_46/Sigmoid_2:y:0/lstm_46/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/lstm_cell_46/mul_2
2lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_46_while_placeholder_1lstm_46_while_placeholder$lstm_46/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_46/while/TensorArrayV2Write/TensorListSetIteml
lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/while/add/y
lstm_46/while/addAddV2lstm_46_while_placeholderlstm_46/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_46/while/addp
lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/while/add_1/y
lstm_46/while/add_1AddV2(lstm_46_while_lstm_46_while_loop_counterlstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_46/while/add_1
lstm_46/while/IdentityIdentitylstm_46/while/add_1:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity¦
lstm_46/while/Identity_1Identity.lstm_46_while_lstm_46_while_maximum_iterations^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity_1
lstm_46/while/Identity_2Identitylstm_46/while/add:z:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity_2º
lstm_46/while/Identity_3IdentityBlstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_46/while/NoOp*
T0*
_output_shapes
: 2
lstm_46/while/Identity_3­
lstm_46/while/Identity_4Identity$lstm_46/while/lstm_cell_46/mul_2:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/while/Identity_4­
lstm_46/while/Identity_5Identity$lstm_46/while/lstm_cell_46/add_1:z:0^lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/while/Identity_5
lstm_46/while/NoOpNoOp2^lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1^lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp3^lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_46/while/NoOp"9
lstm_46_while_identitylstm_46/while/Identity:output:0"=
lstm_46_while_identity_1!lstm_46/while/Identity_1:output:0"=
lstm_46_while_identity_2!lstm_46/while/Identity_2:output:0"=
lstm_46_while_identity_3!lstm_46/while/Identity_3:output:0"=
lstm_46_while_identity_4!lstm_46/while/Identity_4:output:0"=
lstm_46_while_identity_5!lstm_46/while/Identity_5:output:0"P
%lstm_46_while_lstm_46_strided_slice_1'lstm_46_while_lstm_46_strided_slice_1_0"z
:lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource<lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0"|
;lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource=lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0"x
9lstm_46_while_lstm_cell_46_matmul_readvariableop_resource;lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0"È
alstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensorclstm_46_while_tensorarrayv2read_tensorlistgetitem_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp1lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp2d
0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp0lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp2h
2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp2lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ñ

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_433578

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ò%
Ý
while_body_429641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_47_429665_0:-
while_lstm_cell_47_429667_0:)
while_lstm_cell_47_429669_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_47_429665:+
while_lstm_cell_47_429667:'
while_lstm_cell_47_429669:¢*while/lstm_cell_47/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_429665_0while_lstm_cell_47_429667_0while_lstm_cell_47_429669_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_4295632,
*while/lstm_cell_47/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_47/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
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
while_lstm_cell_47_429665while_lstm_cell_47_429665_0"8
while_lstm_cell_47_429667while_lstm_cell_47_429667_0"8
while_lstm_cell_47_429669while_lstm_cell_47_429669_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
æ2
å
I__inference_sequential_16_layer_call_and_return_conditional_losses_431110
conv1d_10_input&
conv1d_10_431071: 
conv1d_10_431073: &
conv1d_11_431076: @
conv1d_11_431078:@ 
lstm_46_431082:@ 
lstm_46_431084:
lstm_46_431086: 
lstm_47_431090: 
lstm_47_431092:
lstm_47_431094:!
dense_46_431098:
dense_46_431100:!
dense_47_431103:
dense_47_431105:
identity¢!conv1d_10/StatefulPartitionedCall¢!conv1d_11/StatefulPartitionedCall¢ dense_46/StatefulPartitionedCall¢ dense_47/StatefulPartitionedCall¢"dropout_26/StatefulPartitionedCall¢"dropout_27/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall¦
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputconv1d_10_431071conv1d_10_431073*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_4299952#
!conv1d_10/StatefulPartitionedCallÁ
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0conv1d_11_431076conv1d_11_431078*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_11_layer_call_and_return_conditional_losses_4300172#
!conv1d_11/StatefulPartitionedCall
max_pooling1d_4/PartitionedCallPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4300302!
max_pooling1d_4/PartitionedCallÇ
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_4/PartitionedCall:output:0lstm_46_431082lstm_46_431084lstm_46_431086*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4308512!
lstm_46/StatefulPartitionedCall
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_4306842$
"dropout_26/StatefulPartitionedCallÆ
lstm_47/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0lstm_47_431090lstm_47_431092lstm_47_431094*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4306552!
lstm_47/StatefulPartitionedCall¹
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_47/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_4304882$
"dropout_27/StatefulPartitionedCall¹
 dense_46/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_46_431098dense_46_431100*
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
D__inference_dense_46_layer_call_and_return_conditional_losses_4303732"
 dense_46/StatefulPartitionedCall·
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_431103dense_47_431105*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_4303892"
 dense_47/StatefulPartitionedCall
reshape_23/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
F__inference_reshape_23_layer_call_and_return_conditional_losses_4304082
reshape_23/PartitionedCall
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityê
NoOpNoOp"^conv1d_10/StatefulPartitionedCall"^conv1d_11/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameconv1d_10_input

d
F__inference_dropout_26_layer_call_and_return_conditional_losses_432670

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ

ã
lstm_47_while_cond_431459,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3.
*lstm_47_while_less_lstm_47_strided_slice_1D
@lstm_47_while_lstm_47_while_cond_431459___redundant_placeholder0D
@lstm_47_while_lstm_47_while_cond_431459___redundant_placeholder1D
@lstm_47_while_lstm_47_while_cond_431459___redundant_placeholder2D
@lstm_47_while_lstm_47_while_cond_431459___redundant_placeholder3
lstm_47_while_identity

lstm_47/while/LessLesslstm_47_while_placeholder*lstm_47_while_less_lstm_47_strided_slice_1*
T0*
_output_shapes
: 2
lstm_47/while/Lessu
lstm_47/while/IdentityIdentitylstm_47/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_47/while/Identity"9
lstm_47_while_identitylstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
×[

C__inference_lstm_46_layer_call_and_return_conditional_losses_432655

inputs=
+lstm_cell_46_matmul_readvariableop_resource:@?
-lstm_cell_46_matmul_1_readvariableop_resource::
,lstm_cell_46_biasadd_readvariableop_resource:
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_46/MatMul/ReadVariableOp¬
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMulº
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_46/MatMul_1/ReadVariableOp¨
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMul_1
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add³
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_46/BiasAdd/ReadVariableOp¬
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/BiasAdd~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dimó
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_46/split
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_1
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul}
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_1
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add_1
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_2|
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu_1 
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_432571*
condR
while_cond_432570*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_433610

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
?
Ê
while_body_433095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@
2while_lstm_cell_47_biasadd_readvariableop_resource:¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_47/MatMul/ReadVariableOpÖ
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMulÎ
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_47/MatMul_1/ReadVariableOp¿
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMul_1·
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/addÇ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_47/BiasAdd/ReadVariableOpÄ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/BiasAdd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_47/split/split_dim
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_47/split
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_1 
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu´
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_1©
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/add_1
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_2
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu_1¸
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ë
û
'sequential_16_lstm_46_while_cond_428428H
Dsequential_16_lstm_46_while_sequential_16_lstm_46_while_loop_counterN
Jsequential_16_lstm_46_while_sequential_16_lstm_46_while_maximum_iterations+
'sequential_16_lstm_46_while_placeholder-
)sequential_16_lstm_46_while_placeholder_1-
)sequential_16_lstm_46_while_placeholder_2-
)sequential_16_lstm_46_while_placeholder_3J
Fsequential_16_lstm_46_while_less_sequential_16_lstm_46_strided_slice_1`
\sequential_16_lstm_46_while_sequential_16_lstm_46_while_cond_428428___redundant_placeholder0`
\sequential_16_lstm_46_while_sequential_16_lstm_46_while_cond_428428___redundant_placeholder1`
\sequential_16_lstm_46_while_sequential_16_lstm_46_while_cond_428428___redundant_placeholder2`
\sequential_16_lstm_46_while_sequential_16_lstm_46_while_cond_428428___redundant_placeholder3(
$sequential_16_lstm_46_while_identity
Þ
 sequential_16/lstm_46/while/LessLess'sequential_16_lstm_46_while_placeholderFsequential_16_lstm_46_while_less_sequential_16_lstm_46_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_16/lstm_46/while/Less
$sequential_16/lstm_46/while/IdentityIdentity$sequential_16/lstm_46/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_16/lstm_46/while/Identity"U
$sequential_16_lstm_46_while_identity-sequential_16/lstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
²
d
+__inference_dropout_26_layer_call_fn_432665

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_4306842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
÷
.__inference_sequential_16_layer_call_fn_431026
conv1d_10_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_4309622
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
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameconv1d_10_input
þ
í
$__inference_signature_wrapper_431151
conv1d_10_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_4286842
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
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameconv1d_10_input

î
.__inference_sequential_16_layer_call_fn_431184

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

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
I__inference_sequential_16_layer_call_and_return_conditional_losses_4304112
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
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü[

C__inference_lstm_47_layer_call_and_return_conditional_losses_430655

inputs=
+lstm_cell_47_matmul_readvariableop_resource:?
-lstm_cell_47_matmul_1_readvariableop_resource::
,lstm_cell_47_biasadd_readvariableop_resource:
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_47/MatMul/ReadVariableOp¬
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMulº
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_47/MatMul_1/ReadVariableOp¨
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMul_1
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add³
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_47/BiasAdd/ReadVariableOp¬
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/BiasAdd~
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_47/split/split_dimó
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_47/split
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_1
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul}
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_1
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add_1
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_2|
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu_1 
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_430571*
condR
while_cond_430570*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
à
I__inference_sequential_16_layer_call_and_return_conditional_losses_431931

inputsK
5conv1d_10_conv1d_expanddims_1_readvariableop_resource: 7
)conv1d_10_biasadd_readvariableop_resource: K
5conv1d_11_conv1d_expanddims_1_readvariableop_resource: @7
)conv1d_11_biasadd_readvariableop_resource:@E
3lstm_46_lstm_cell_46_matmul_readvariableop_resource:@G
5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource:B
4lstm_46_lstm_cell_46_biasadd_readvariableop_resource:E
3lstm_47_lstm_cell_47_matmul_readvariableop_resource:G
5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource:B
4lstm_47_lstm_cell_47_biasadd_readvariableop_resource:9
'dense_46_matmul_readvariableop_resource:6
(dense_46_biasadd_readvariableop_resource:9
'dense_47_matmul_readvariableop_resource:6
(dense_47_biasadd_readvariableop_resource:
identity¢ conv1d_10/BiasAdd/ReadVariableOp¢,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_11/BiasAdd/ReadVariableOp¢,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¢dense_46/BiasAdd/ReadVariableOp¢dense_46/MatMul/ReadVariableOp¢dense_47/BiasAdd/ReadVariableOp¢dense_47/MatMul/ReadVariableOp¢+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp¢*lstm_46/lstm_cell_46/MatMul/ReadVariableOp¢,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp¢lstm_46/while¢+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp¢*lstm_47/lstm_cell_47/MatMul/ReadVariableOp¢,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp¢lstm_47/while
conv1d_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_10/conv1d/ExpandDims/dim´
conv1d_10/conv1d/ExpandDims
ExpandDimsinputs(conv1d_10/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/ExpandDimsÖ
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02.
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_10/conv1d/ExpandDims_1/dimß
conv1d_10/conv1d/ExpandDims_1
ExpandDims4conv1d_10/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_10/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_10/conv1d/ExpandDims_1Þ
conv1d_10/conv1dConv2D$conv1d_10/conv1d/ExpandDims:output:0&conv1d_10/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d_10/conv1d°
conv1d_10/conv1d/SqueezeSqueezeconv1d_10/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/Squeezeª
 conv1d_10/BiasAdd/ReadVariableOpReadVariableOp)conv1d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv1d_10/BiasAdd/ReadVariableOp´
conv1d_10/BiasAddBiasAdd!conv1d_10/conv1d/Squeeze:output:0(conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_10/BiasAddz
conv1d_10/ReluReluconv1d_10/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_10/Relu
conv1d_11/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_11/conv1d/ExpandDims/dimÊ
conv1d_11/conv1d/ExpandDims
ExpandDimsconv1d_10/Relu:activations:0(conv1d_11/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_11/conv1d/ExpandDimsÖ
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_11_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02.
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_11/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_11/conv1d/ExpandDims_1/dimß
conv1d_11/conv1d/ExpandDims_1
ExpandDims4conv1d_11/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_11/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_11/conv1d/ExpandDims_1Þ
conv1d_11/conv1dConv2D$conv1d_11/conv1d/ExpandDims:output:0&conv1d_11/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d_11/conv1d°
conv1d_11/conv1d/SqueezeSqueezeconv1d_11/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_11/conv1d/Squeezeª
 conv1d_11/BiasAdd/ReadVariableOpReadVariableOp)conv1d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv1d_11/BiasAdd/ReadVariableOp´
conv1d_11/BiasAddBiasAdd!conv1d_11/conv1d/Squeeze:output:0(conv1d_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_11/BiasAddz
conv1d_11/ReluReluconv1d_11/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_11/Relu
max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_4/ExpandDims/dimÇ
max_pooling1d_4/ExpandDims
ExpandDimsconv1d_11/Relu:activations:0'max_pooling1d_4/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
max_pooling1d_4/ExpandDimsÎ
max_pooling1d_4/MaxPoolMaxPool#max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2
max_pooling1d_4/MaxPool¬
max_pooling1d_4/SqueezeSqueeze max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_4/Squeezen
lstm_46/ShapeShape max_pooling1d_4/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_46/Shape
lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_46/strided_slice/stack
lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_46/strided_slice/stack_1
lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_46/strided_slice/stack_2
lstm_46/strided_sliceStridedSlicelstm_46/Shape:output:0$lstm_46/strided_slice/stack:output:0&lstm_46/strided_slice/stack_1:output:0&lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_46/strided_slicel
lstm_46/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros/mul/y
lstm_46/zeros/mulMullstm_46/strided_slice:output:0lstm_46/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros/mulo
lstm_46/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_46/zeros/Less/y
lstm_46/zeros/LessLesslstm_46/zeros/mul:z:0lstm_46/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros/Lessr
lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros/packed/1£
lstm_46/zeros/packedPacklstm_46/strided_slice:output:0lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_46/zeros/packedo
lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_46/zeros/Const
lstm_46/zerosFilllstm_46/zeros/packed:output:0lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/zerosp
lstm_46/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros_1/mul/y
lstm_46/zeros_1/mulMullstm_46/strided_slice:output:0lstm_46/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros_1/muls
lstm_46/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_46/zeros_1/Less/y
lstm_46/zeros_1/LessLesslstm_46/zeros_1/mul:z:0lstm_46/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros_1/Lessv
lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros_1/packed/1©
lstm_46/zeros_1/packedPacklstm_46/strided_slice:output:0!lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_46/zeros_1/packeds
lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_46/zeros_1/Const
lstm_46/zeros_1Filllstm_46/zeros_1/packed:output:0lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/zeros_1
lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_46/transpose/perm¬
lstm_46/transpose	Transpose max_pooling1d_4/Squeeze:output:0lstm_46/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_46/transposeg
lstm_46/Shape_1Shapelstm_46/transpose:y:0*
T0*
_output_shapes
:2
lstm_46/Shape_1
lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_46/strided_slice_1/stack
lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_1/stack_1
lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_1/stack_2
lstm_46/strided_slice_1StridedSlicelstm_46/Shape_1:output:0&lstm_46/strided_slice_1/stack:output:0(lstm_46/strided_slice_1/stack_1:output:0(lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_46/strided_slice_1
#lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_46/TensorArrayV2/element_shapeÒ
lstm_46/TensorArrayV2TensorListReserve,lstm_46/TensorArrayV2/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_46/TensorArrayV2Ï
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_46/transpose:y:0Flstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_46/TensorArrayUnstack/TensorListFromTensor
lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_46/strided_slice_2/stack
lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_2/stack_1
lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_2/stack_2¬
lstm_46/strided_slice_2StridedSlicelstm_46/transpose:y:0&lstm_46/strided_slice_2/stack:output:0(lstm_46/strided_slice_2/stack_1:output:0(lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_46/strided_slice_2Ì
*lstm_46/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3lstm_46_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_46/lstm_cell_46/MatMul/ReadVariableOpÌ
lstm_46/lstm_cell_46/MatMulMatMul lstm_46/strided_slice_2:output:02lstm_46/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/MatMulÒ
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpÈ
lstm_46/lstm_cell_46/MatMul_1MatMullstm_46/zeros:output:04lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/MatMul_1¿
lstm_46/lstm_cell_46/addAddV2%lstm_46/lstm_cell_46/MatMul:product:0'lstm_46/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/addË
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpÌ
lstm_46/lstm_cell_46/BiasAddBiasAddlstm_46/lstm_cell_46/add:z:03lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/BiasAdd
$lstm_46/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_46/lstm_cell_46/split/split_dim
lstm_46/lstm_cell_46/splitSplit-lstm_46/lstm_cell_46/split/split_dim:output:0%lstm_46/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_46/lstm_cell_46/split
lstm_46/lstm_cell_46/SigmoidSigmoid#lstm_46/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/Sigmoid¢
lstm_46/lstm_cell_46/Sigmoid_1Sigmoid#lstm_46/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/lstm_cell_46/Sigmoid_1«
lstm_46/lstm_cell_46/mulMul"lstm_46/lstm_cell_46/Sigmoid_1:y:0lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/mul
lstm_46/lstm_cell_46/ReluRelu#lstm_46/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/Relu¼
lstm_46/lstm_cell_46/mul_1Mul lstm_46/lstm_cell_46/Sigmoid:y:0'lstm_46/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/mul_1±
lstm_46/lstm_cell_46/add_1AddV2lstm_46/lstm_cell_46/mul:z:0lstm_46/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/add_1¢
lstm_46/lstm_cell_46/Sigmoid_2Sigmoid#lstm_46/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/lstm_cell_46/Sigmoid_2
lstm_46/lstm_cell_46/Relu_1Relulstm_46/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/Relu_1À
lstm_46/lstm_cell_46/mul_2Mul"lstm_46/lstm_cell_46/Sigmoid_2:y:0)lstm_46/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/mul_2
%lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_46/TensorArrayV2_1/element_shapeØ
lstm_46/TensorArrayV2_1TensorListReserve.lstm_46/TensorArrayV2_1/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_46/TensorArrayV2_1^
lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_46/time
 lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/maximum_iterationsz
lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_46/while/loop_counter
lstm_46/whileWhile#lstm_46/while/loop_counter:output:0)lstm_46/while/maximum_iterations:output:0lstm_46/time:output:0 lstm_46/TensorArrayV2_1:handle:0lstm_46/zeros:output:0lstm_46/zeros_1:output:0 lstm_46/strided_slice_1:output:0?lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_46_lstm_cell_46_matmul_readvariableop_resource5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_46_while_body_431662*%
condR
lstm_46_while_cond_431661*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_46/whileÅ
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_46/TensorArrayV2Stack/TensorListStackTensorListStacklstm_46/while:output:3Alstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_46/TensorArrayV2Stack/TensorListStack
lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_46/strided_slice_3/stack
lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_46/strided_slice_3/stack_1
lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_3/stack_2Ê
lstm_46/strided_slice_3StridedSlice3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_46/strided_slice_3/stack:output:0(lstm_46/strided_slice_3/stack_1:output:0(lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_46/strided_slice_3
lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_46/transpose_1/permÅ
lstm_46/transpose_1	Transpose3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/transpose_1v
lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_46/runtimey
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_26/dropout/Const©
dropout_26/dropout/MulMullstm_46/transpose_1:y:0!dropout_26/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_26/dropout/Mul{
dropout_26/dropout/ShapeShapelstm_46/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_26/dropout/ShapeÙ
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_26/dropout/random_uniform/RandomUniform
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_26/dropout/GreaterEqual/yî
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_26/dropout/GreaterEqual¤
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_26/dropout/Castª
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_26/dropout/Mul_1j
lstm_47/ShapeShapedropout_26/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_47/Shape
lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_47/strided_slice/stack
lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_47/strided_slice/stack_1
lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_47/strided_slice/stack_2
lstm_47/strided_sliceStridedSlicelstm_47/Shape:output:0$lstm_47/strided_slice/stack:output:0&lstm_47/strided_slice/stack_1:output:0&lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_47/strided_slicel
lstm_47/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros/mul/y
lstm_47/zeros/mulMullstm_47/strided_slice:output:0lstm_47/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros/mulo
lstm_47/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_47/zeros/Less/y
lstm_47/zeros/LessLesslstm_47/zeros/mul:z:0lstm_47/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros/Lessr
lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros/packed/1£
lstm_47/zeros/packedPacklstm_47/strided_slice:output:0lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_47/zeros/packedo
lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_47/zeros/Const
lstm_47/zerosFilllstm_47/zeros/packed:output:0lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/zerosp
lstm_47/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros_1/mul/y
lstm_47/zeros_1/mulMullstm_47/strided_slice:output:0lstm_47/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros_1/muls
lstm_47/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_47/zeros_1/Less/y
lstm_47/zeros_1/LessLesslstm_47/zeros_1/mul:z:0lstm_47/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros_1/Lessv
lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros_1/packed/1©
lstm_47/zeros_1/packedPacklstm_47/strided_slice:output:0!lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_47/zeros_1/packeds
lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_47/zeros_1/Const
lstm_47/zeros_1Filllstm_47/zeros_1/packed:output:0lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/zeros_1
lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_47/transpose/perm¨
lstm_47/transpose	Transposedropout_26/dropout/Mul_1:z:0lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/transposeg
lstm_47/Shape_1Shapelstm_47/transpose:y:0*
T0*
_output_shapes
:2
lstm_47/Shape_1
lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_47/strided_slice_1/stack
lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_1/stack_1
lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_1/stack_2
lstm_47/strided_slice_1StridedSlicelstm_47/Shape_1:output:0&lstm_47/strided_slice_1/stack:output:0(lstm_47/strided_slice_1/stack_1:output:0(lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_47/strided_slice_1
#lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_47/TensorArrayV2/element_shapeÒ
lstm_47/TensorArrayV2TensorListReserve,lstm_47/TensorArrayV2/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_47/TensorArrayV2Ï
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_47/transpose:y:0Flstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_47/TensorArrayUnstack/TensorListFromTensor
lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_47/strided_slice_2/stack
lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_2/stack_1
lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_2/stack_2¬
lstm_47/strided_slice_2StridedSlicelstm_47/transpose:y:0&lstm_47/strided_slice_2/stack:output:0(lstm_47/strided_slice_2/stack_1:output:0(lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_47/strided_slice_2Ì
*lstm_47/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3lstm_47_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_47/lstm_cell_47/MatMul/ReadVariableOpÌ
lstm_47/lstm_cell_47/MatMulMatMul lstm_47/strided_slice_2:output:02lstm_47/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/MatMulÒ
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpÈ
lstm_47/lstm_cell_47/MatMul_1MatMullstm_47/zeros:output:04lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/MatMul_1¿
lstm_47/lstm_cell_47/addAddV2%lstm_47/lstm_cell_47/MatMul:product:0'lstm_47/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/addË
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpÌ
lstm_47/lstm_cell_47/BiasAddBiasAddlstm_47/lstm_cell_47/add:z:03lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/BiasAdd
$lstm_47/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_47/lstm_cell_47/split/split_dim
lstm_47/lstm_cell_47/splitSplit-lstm_47/lstm_cell_47/split/split_dim:output:0%lstm_47/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_47/lstm_cell_47/split
lstm_47/lstm_cell_47/SigmoidSigmoid#lstm_47/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/Sigmoid¢
lstm_47/lstm_cell_47/Sigmoid_1Sigmoid#lstm_47/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/lstm_cell_47/Sigmoid_1«
lstm_47/lstm_cell_47/mulMul"lstm_47/lstm_cell_47/Sigmoid_1:y:0lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/mul
lstm_47/lstm_cell_47/ReluRelu#lstm_47/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/Relu¼
lstm_47/lstm_cell_47/mul_1Mul lstm_47/lstm_cell_47/Sigmoid:y:0'lstm_47/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/mul_1±
lstm_47/lstm_cell_47/add_1AddV2lstm_47/lstm_cell_47/mul:z:0lstm_47/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/add_1¢
lstm_47/lstm_cell_47/Sigmoid_2Sigmoid#lstm_47/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/lstm_cell_47/Sigmoid_2
lstm_47/lstm_cell_47/Relu_1Relulstm_47/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/Relu_1À
lstm_47/lstm_cell_47/mul_2Mul"lstm_47/lstm_cell_47/Sigmoid_2:y:0)lstm_47/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/mul_2
%lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_47/TensorArrayV2_1/element_shapeØ
lstm_47/TensorArrayV2_1TensorListReserve.lstm_47/TensorArrayV2_1/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_47/TensorArrayV2_1^
lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_47/time
 lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/maximum_iterationsz
lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_47/while/loop_counter
lstm_47/whileWhile#lstm_47/while/loop_counter:output:0)lstm_47/while/maximum_iterations:output:0lstm_47/time:output:0 lstm_47/TensorArrayV2_1:handle:0lstm_47/zeros:output:0lstm_47/zeros_1:output:0 lstm_47/strided_slice_1:output:0?lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_47_lstm_cell_47_matmul_readvariableop_resource5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_47_while_body_431817*%
condR
lstm_47_while_cond_431816*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_47/whileÅ
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_47/TensorArrayV2Stack/TensorListStackTensorListStacklstm_47/while:output:3Alstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_47/TensorArrayV2Stack/TensorListStack
lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_47/strided_slice_3/stack
lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_47/strided_slice_3/stack_1
lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_3/stack_2Ê
lstm_47/strided_slice_3StridedSlice3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_47/strided_slice_3/stack:output:0(lstm_47/strided_slice_3/stack_1:output:0(lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_47/strided_slice_3
lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_47/transpose_1/permÅ
lstm_47/transpose_1	Transpose3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/transpose_1v
lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_47/runtimey
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_27/dropout/Const®
dropout_27/dropout/MulMul lstm_47/strided_slice_3:output:0!dropout_27/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_27/dropout/Mul
dropout_27/dropout/ShapeShape lstm_47/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_27/dropout/ShapeÕ
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_27/dropout/random_uniform/RandomUniform
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_27/dropout/GreaterEqual/yê
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_27/dropout/GreaterEqual 
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_27/dropout/Cast¦
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_27/dropout/Mul_1¨
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_46/MatMul/ReadVariableOp¤
dense_46/MatMulMatMuldropout_27/dropout/Mul_1:z:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_46/MatMul§
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_46/BiasAdd/ReadVariableOp¥
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_46/BiasAdds
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_46/Relu¨
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_47/MatMul/ReadVariableOp£
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_47/MatMul§
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_47/BiasAdd/ReadVariableOp¥
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_47/BiasAddm
reshape_23/ShapeShapedense_47/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_23/Shape
reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_23/strided_slice/stack
 reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_23/strided_slice/stack_1
 reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_23/strided_slice/stack_2¤
reshape_23/strided_sliceStridedSlicereshape_23/Shape:output:0'reshape_23/strided_slice/stack:output:0)reshape_23/strided_slice/stack_1:output:0)reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_23/strided_slicez
reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_23/Reshape/shape/1z
reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_23/Reshape/shape/2×
reshape_23/Reshape/shapePack!reshape_23/strided_slice:output:0#reshape_23/Reshape/shape/1:output:0#reshape_23/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_23/Reshape/shape§
reshape_23/ReshapeReshapedense_47/BiasAdd:output:0!reshape_23/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_23/Reshapez
IdentityIdentityreshape_23/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¬
NoOpNoOp!^conv1d_10/BiasAdd/ReadVariableOp-^conv1d_10/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_11/BiasAdd/ReadVariableOp-^conv1d_11/conv1d/ExpandDims_1/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp,^lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+^lstm_46/lstm_cell_46/MatMul/ReadVariableOp-^lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp^lstm_46/while,^lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+^lstm_47/lstm_cell_47/MatMul/ReadVariableOp-^lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_10/BiasAdd/ReadVariableOp conv1d_10/BiasAdd/ReadVariableOp2\
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_11/BiasAdd/ReadVariableOp conv1d_11/BiasAdd/ReadVariableOp2\
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2Z
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp2X
*lstm_46/lstm_cell_46/MatMul/ReadVariableOp*lstm_46/lstm_cell_46/MatMul/ReadVariableOp2\
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp2
lstm_46/whilelstm_46/while2Z
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp2X
*lstm_47/lstm_cell_47/MatMul/ReadVariableOp*lstm_47/lstm_cell_47/MatMul/ReadVariableOp2\
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp2
lstm_47/whilelstm_47/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ

ã
lstm_47_while_cond_431816,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3.
*lstm_47_while_less_lstm_47_strided_slice_1D
@lstm_47_while_lstm_47_while_cond_431816___redundant_placeholder0D
@lstm_47_while_lstm_47_while_cond_431816___redundant_placeholder1D
@lstm_47_while_lstm_47_while_cond_431816___redundant_placeholder2D
@lstm_47_while_lstm_47_while_cond_431816___redundant_placeholder3
lstm_47_while_identity

lstm_47/while/LessLesslstm_47_while_placeholder*lstm_47_while_less_lstm_47_strided_slice_1*
T0*
_output_shapes
: 2
lstm_47/while/Lessu
lstm_47/while/IdentityIdentitylstm_47/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_47/while/Identity"9
lstm_47_while_identitylstm_47/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_432793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@
2while_lstm_cell_47_biasadd_readvariableop_resource:¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_47/MatMul/ReadVariableOpÖ
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMulÎ
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_47/MatMul_1/ReadVariableOp¿
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMul_1·
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/addÇ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_47/BiasAdd/ReadVariableOpÄ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/BiasAdd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_47/split/split_dim
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_47/split
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_1 
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu´
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_1©
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/add_1
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_2
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu_1¸
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
«
²
(__inference_lstm_46_layer_call_fn_432051

inputs
unknown:@
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4308512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
¿^

'sequential_16_lstm_47_while_body_428577H
Dsequential_16_lstm_47_while_sequential_16_lstm_47_while_loop_counterN
Jsequential_16_lstm_47_while_sequential_16_lstm_47_while_maximum_iterations+
'sequential_16_lstm_47_while_placeholder-
)sequential_16_lstm_47_while_placeholder_1-
)sequential_16_lstm_47_while_placeholder_2-
)sequential_16_lstm_47_while_placeholder_3G
Csequential_16_lstm_47_while_sequential_16_lstm_47_strided_slice_1_0
sequential_16_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_47_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_16_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0:]
Ksequential_16_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0:X
Jsequential_16_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0:(
$sequential_16_lstm_47_while_identity*
&sequential_16_lstm_47_while_identity_1*
&sequential_16_lstm_47_while_identity_2*
&sequential_16_lstm_47_while_identity_3*
&sequential_16_lstm_47_while_identity_4*
&sequential_16_lstm_47_while_identity_5E
Asequential_16_lstm_47_while_sequential_16_lstm_47_strided_slice_1
}sequential_16_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_47_tensorarrayunstack_tensorlistfromtensorY
Gsequential_16_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource:[
Isequential_16_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource:V
Hsequential_16_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource:¢?sequential_16/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp¢>sequential_16/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp¢@sequential_16/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpï
Msequential_16/lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_16/lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_16/lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_16_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_47_tensorarrayunstack_tensorlistfromtensor_0'sequential_16_lstm_47_while_placeholderVsequential_16/lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_16/lstm_47/while/TensorArrayV2Read/TensorListGetItem
>sequential_16/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpIsequential_16_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02@
>sequential_16/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp®
/sequential_16/lstm_47/while/lstm_cell_47/MatMulMatMulFsequential_16/lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_16/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_16/lstm_47/while/lstm_cell_47/MatMul
@sequential_16/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpKsequential_16_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02B
@sequential_16/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp
1sequential_16/lstm_47/while/lstm_cell_47/MatMul_1MatMul)sequential_16_lstm_47_while_placeholder_2Hsequential_16/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_16/lstm_47/while/lstm_cell_47/MatMul_1
,sequential_16/lstm_47/while/lstm_cell_47/addAddV29sequential_16/lstm_47/while/lstm_cell_47/MatMul:product:0;sequential_16/lstm_47/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_47/while/lstm_cell_47/add
?sequential_16/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpJsequential_16_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02A
?sequential_16/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp
0sequential_16/lstm_47/while/lstm_cell_47/BiasAddBiasAdd0sequential_16/lstm_47/while/lstm_cell_47/add:z:0Gsequential_16/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_16/lstm_47/while/lstm_cell_47/BiasAdd¶
8sequential_16/lstm_47/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_16/lstm_47/while/lstm_cell_47/split/split_dimã
.sequential_16/lstm_47/while/lstm_cell_47/splitSplitAsequential_16/lstm_47/while/lstm_cell_47/split/split_dim:output:09sequential_16/lstm_47/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_16/lstm_47/while/lstm_cell_47/splitÚ
0sequential_16/lstm_47/while/lstm_cell_47/SigmoidSigmoid7sequential_16/lstm_47/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_16/lstm_47/while/lstm_cell_47/SigmoidÞ
2sequential_16/lstm_47/while/lstm_cell_47/Sigmoid_1Sigmoid7sequential_16/lstm_47/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_16/lstm_47/while/lstm_cell_47/Sigmoid_1ø
,sequential_16/lstm_47/while/lstm_cell_47/mulMul6sequential_16/lstm_47/while/lstm_cell_47/Sigmoid_1:y:0)sequential_16_lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_47/while/lstm_cell_47/mulÑ
-sequential_16/lstm_47/while/lstm_cell_47/ReluRelu7sequential_16/lstm_47/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_16/lstm_47/while/lstm_cell_47/Relu
.sequential_16/lstm_47/while/lstm_cell_47/mul_1Mul4sequential_16/lstm_47/while/lstm_cell_47/Sigmoid:y:0;sequential_16/lstm_47/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_47/while/lstm_cell_47/mul_1
.sequential_16/lstm_47/while/lstm_cell_47/add_1AddV20sequential_16/lstm_47/while/lstm_cell_47/mul:z:02sequential_16/lstm_47/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_47/while/lstm_cell_47/add_1Þ
2sequential_16/lstm_47/while/lstm_cell_47/Sigmoid_2Sigmoid7sequential_16/lstm_47/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_16/lstm_47/while/lstm_cell_47/Sigmoid_2Ð
/sequential_16/lstm_47/while/lstm_cell_47/Relu_1Relu2sequential_16/lstm_47/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_16/lstm_47/while/lstm_cell_47/Relu_1
.sequential_16/lstm_47/while/lstm_cell_47/mul_2Mul6sequential_16/lstm_47/while/lstm_cell_47/Sigmoid_2:y:0=sequential_16/lstm_47/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_47/while/lstm_cell_47/mul_2Î
@sequential_16/lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_16_lstm_47_while_placeholder_1'sequential_16_lstm_47_while_placeholder2sequential_16/lstm_47/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_16/lstm_47/while/TensorArrayV2Write/TensorListSetItem
!sequential_16/lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_16/lstm_47/while/add/yÁ
sequential_16/lstm_47/while/addAddV2'sequential_16_lstm_47_while_placeholder*sequential_16/lstm_47/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_16/lstm_47/while/add
#sequential_16/lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_16/lstm_47/while/add_1/yä
!sequential_16/lstm_47/while/add_1AddV2Dsequential_16_lstm_47_while_sequential_16_lstm_47_while_loop_counter,sequential_16/lstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_16/lstm_47/while/add_1Ã
$sequential_16/lstm_47/while/IdentityIdentity%sequential_16/lstm_47/while/add_1:z:0!^sequential_16/lstm_47/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_16/lstm_47/while/Identityì
&sequential_16/lstm_47/while/Identity_1IdentityJsequential_16_lstm_47_while_sequential_16_lstm_47_while_maximum_iterations!^sequential_16/lstm_47/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_16/lstm_47/while/Identity_1Å
&sequential_16/lstm_47/while/Identity_2Identity#sequential_16/lstm_47/while/add:z:0!^sequential_16/lstm_47/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_16/lstm_47/while/Identity_2ò
&sequential_16/lstm_47/while/Identity_3IdentityPsequential_16/lstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_16/lstm_47/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_16/lstm_47/while/Identity_3å
&sequential_16/lstm_47/while/Identity_4Identity2sequential_16/lstm_47/while/lstm_cell_47/mul_2:z:0!^sequential_16/lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_47/while/Identity_4å
&sequential_16/lstm_47/while/Identity_5Identity2sequential_16/lstm_47/while/lstm_cell_47/add_1:z:0!^sequential_16/lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_47/while/Identity_5Ì
 sequential_16/lstm_47/while/NoOpNoOp@^sequential_16/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp?^sequential_16/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpA^sequential_16/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_16/lstm_47/while/NoOp"U
$sequential_16_lstm_47_while_identity-sequential_16/lstm_47/while/Identity:output:0"Y
&sequential_16_lstm_47_while_identity_1/sequential_16/lstm_47/while/Identity_1:output:0"Y
&sequential_16_lstm_47_while_identity_2/sequential_16/lstm_47/while/Identity_2:output:0"Y
&sequential_16_lstm_47_while_identity_3/sequential_16/lstm_47/while/Identity_3:output:0"Y
&sequential_16_lstm_47_while_identity_4/sequential_16/lstm_47/while/Identity_4:output:0"Y
&sequential_16_lstm_47_while_identity_5/sequential_16/lstm_47/while/Identity_5:output:0"
Hsequential_16_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resourceJsequential_16_lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0"
Isequential_16_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resourceKsequential_16_lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0"
Gsequential_16_lstm_47_while_lstm_cell_47_matmul_readvariableop_resourceIsequential_16_lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0"
Asequential_16_lstm_47_while_sequential_16_lstm_47_strided_slice_1Csequential_16_lstm_47_while_sequential_16_lstm_47_strided_slice_1_0"
}sequential_16_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_47_tensorarrayunstack_tensorlistfromtensorsequential_16_lstm_47_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_16/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp?sequential_16/lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp2
>sequential_16/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp>sequential_16/lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp2
@sequential_16/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp@sequential_16/lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÀJ
Ê

lstm_47_while_body_431817,
(lstm_47_while_lstm_47_while_loop_counter2
.lstm_47_while_lstm_47_while_maximum_iterations
lstm_47_while_placeholder
lstm_47_while_placeholder_1
lstm_47_while_placeholder_2
lstm_47_while_placeholder_3+
'lstm_47_while_lstm_47_strided_slice_1_0g
clstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0:O
=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0:J
<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0:
lstm_47_while_identity
lstm_47_while_identity_1
lstm_47_while_identity_2
lstm_47_while_identity_3
lstm_47_while_identity_4
lstm_47_while_identity_5)
%lstm_47_while_lstm_47_strided_slice_1e
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorK
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource:M
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource:H
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource:¢1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp¢0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp¢2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpÓ
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_47/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0lstm_47_while_placeholderHlstm_47/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_47/while/TensorArrayV2Read/TensorListGetItemà
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOpö
!lstm_47/while/lstm_cell_47/MatMulMatMul8lstm_47/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_47/while/lstm_cell_47/MatMulæ
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOpß
#lstm_47/while/lstm_cell_47/MatMul_1MatMullstm_47_while_placeholder_2:lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_47/while/lstm_cell_47/MatMul_1×
lstm_47/while/lstm_cell_47/addAddV2+lstm_47/while/lstm_cell_47/MatMul:product:0-lstm_47/while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/while/lstm_cell_47/addß
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOpä
"lstm_47/while/lstm_cell_47/BiasAddBiasAdd"lstm_47/while/lstm_cell_47/add:z:09lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_47/while/lstm_cell_47/BiasAdd
*lstm_47/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_47/while/lstm_cell_47/split/split_dim«
 lstm_47/while/lstm_cell_47/splitSplit3lstm_47/while/lstm_cell_47/split/split_dim:output:0+lstm_47/while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_47/while/lstm_cell_47/split°
"lstm_47/while/lstm_cell_47/SigmoidSigmoid)lstm_47/while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_47/while/lstm_cell_47/Sigmoid´
$lstm_47/while/lstm_cell_47/Sigmoid_1Sigmoid)lstm_47/while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_47/while/lstm_cell_47/Sigmoid_1À
lstm_47/while/lstm_cell_47/mulMul(lstm_47/while/lstm_cell_47/Sigmoid_1:y:0lstm_47_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/while/lstm_cell_47/mul§
lstm_47/while/lstm_cell_47/ReluRelu)lstm_47/while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_47/while/lstm_cell_47/ReluÔ
 lstm_47/while/lstm_cell_47/mul_1Mul&lstm_47/while/lstm_cell_47/Sigmoid:y:0-lstm_47/while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/lstm_cell_47/mul_1É
 lstm_47/while/lstm_cell_47/add_1AddV2"lstm_47/while/lstm_cell_47/mul:z:0$lstm_47/while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/lstm_cell_47/add_1´
$lstm_47/while/lstm_cell_47/Sigmoid_2Sigmoid)lstm_47/while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_47/while/lstm_cell_47/Sigmoid_2¦
!lstm_47/while/lstm_cell_47/Relu_1Relu$lstm_47/while/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_47/while/lstm_cell_47/Relu_1Ø
 lstm_47/while/lstm_cell_47/mul_2Mul(lstm_47/while/lstm_cell_47/Sigmoid_2:y:0/lstm_47/while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/lstm_cell_47/mul_2
2lstm_47/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_47_while_placeholder_1lstm_47_while_placeholder$lstm_47/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_47/while/TensorArrayV2Write/TensorListSetIteml
lstm_47/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/while/add/y
lstm_47/while/addAddV2lstm_47_while_placeholderlstm_47/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_47/while/addp
lstm_47/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/while/add_1/y
lstm_47/while/add_1AddV2(lstm_47_while_lstm_47_while_loop_counterlstm_47/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_47/while/add_1
lstm_47/while/IdentityIdentitylstm_47/while/add_1:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity¦
lstm_47/while/Identity_1Identity.lstm_47_while_lstm_47_while_maximum_iterations^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity_1
lstm_47/while/Identity_2Identitylstm_47/while/add:z:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity_2º
lstm_47/while/Identity_3IdentityBlstm_47/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_47/while/NoOp*
T0*
_output_shapes
: 2
lstm_47/while/Identity_3­
lstm_47/while/Identity_4Identity$lstm_47/while/lstm_cell_47/mul_2:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/while/Identity_4­
lstm_47/while/Identity_5Identity$lstm_47/while/lstm_cell_47/add_1:z:0^lstm_47/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/while/Identity_5
lstm_47/while/NoOpNoOp2^lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1^lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp3^lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_47/while/NoOp"9
lstm_47_while_identitylstm_47/while/Identity:output:0"=
lstm_47_while_identity_1!lstm_47/while/Identity_1:output:0"=
lstm_47_while_identity_2!lstm_47/while/Identity_2:output:0"=
lstm_47_while_identity_3!lstm_47/while/Identity_3:output:0"=
lstm_47_while_identity_4!lstm_47/while/Identity_4:output:0"=
lstm_47_while_identity_5!lstm_47/while/Identity_5:output:0"P
%lstm_47_while_lstm_47_strided_slice_1'lstm_47_while_lstm_47_strided_slice_1_0"z
:lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource<lstm_47_while_lstm_cell_47_biasadd_readvariableop_resource_0"|
;lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource=lstm_47_while_lstm_cell_47_matmul_1_readvariableop_resource_0"x
9lstm_47_while_lstm_cell_47_matmul_readvariableop_resource;lstm_47_while_lstm_cell_47_matmul_readvariableop_resource_0"È
alstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensorclstm_47_while_tensorarrayv2read_tensorlistgetitem_lstm_47_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp1lstm_47/while/lstm_cell_47/BiasAdd/ReadVariableOp2d
0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp0lstm_47/while/lstm_cell_47/MatMul/ReadVariableOp2h
2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp2lstm_47/while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
\

C__inference_lstm_46_layer_call_and_return_conditional_losses_432353
inputs_0=
+lstm_cell_46_matmul_readvariableop_resource:@?
-lstm_cell_46_matmul_1_readvariableop_resource::
,lstm_cell_46_biasadd_readvariableop_resource:
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢whileF
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_46/MatMul/ReadVariableOp¬
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMulº
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_46/MatMul_1/ReadVariableOp¨
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMul_1
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add³
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_46/BiasAdd/ReadVariableOp¬
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/BiasAdd~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dimó
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_46/split
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_1
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul}
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_1
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add_1
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_2|
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu_1 
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_432269*
condR
while_cond_432268*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_432268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_432268___redundant_placeholder04
0while_while_cond_432268___redundant_placeholder14
0while_while_cond_432268___redundant_placeholder24
0while_while_cond_432268___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
£
²
(__inference_lstm_47_layer_call_fn_432726

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4306552
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
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

à
I__inference_sequential_16_layer_call_and_return_conditional_losses_431567

inputsK
5conv1d_10_conv1d_expanddims_1_readvariableop_resource: 7
)conv1d_10_biasadd_readvariableop_resource: K
5conv1d_11_conv1d_expanddims_1_readvariableop_resource: @7
)conv1d_11_biasadd_readvariableop_resource:@E
3lstm_46_lstm_cell_46_matmul_readvariableop_resource:@G
5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource:B
4lstm_46_lstm_cell_46_biasadd_readvariableop_resource:E
3lstm_47_lstm_cell_47_matmul_readvariableop_resource:G
5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource:B
4lstm_47_lstm_cell_47_biasadd_readvariableop_resource:9
'dense_46_matmul_readvariableop_resource:6
(dense_46_biasadd_readvariableop_resource:9
'dense_47_matmul_readvariableop_resource:6
(dense_47_biasadd_readvariableop_resource:
identity¢ conv1d_10/BiasAdd/ReadVariableOp¢,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_11/BiasAdd/ReadVariableOp¢,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¢dense_46/BiasAdd/ReadVariableOp¢dense_46/MatMul/ReadVariableOp¢dense_47/BiasAdd/ReadVariableOp¢dense_47/MatMul/ReadVariableOp¢+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp¢*lstm_46/lstm_cell_46/MatMul/ReadVariableOp¢,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp¢lstm_46/while¢+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp¢*lstm_47/lstm_cell_47/MatMul/ReadVariableOp¢,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp¢lstm_47/while
conv1d_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_10/conv1d/ExpandDims/dim´
conv1d_10/conv1d/ExpandDims
ExpandDimsinputs(conv1d_10/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/ExpandDimsÖ
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02.
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_10/conv1d/ExpandDims_1/dimß
conv1d_10/conv1d/ExpandDims_1
ExpandDims4conv1d_10/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_10/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_10/conv1d/ExpandDims_1Þ
conv1d_10/conv1dConv2D$conv1d_10/conv1d/ExpandDims:output:0&conv1d_10/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d_10/conv1d°
conv1d_10/conv1d/SqueezeSqueezeconv1d_10/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/Squeezeª
 conv1d_10/BiasAdd/ReadVariableOpReadVariableOp)conv1d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv1d_10/BiasAdd/ReadVariableOp´
conv1d_10/BiasAddBiasAdd!conv1d_10/conv1d/Squeeze:output:0(conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_10/BiasAddz
conv1d_10/ReluReluconv1d_10/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_10/Relu
conv1d_11/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_11/conv1d/ExpandDims/dimÊ
conv1d_11/conv1d/ExpandDims
ExpandDimsconv1d_10/Relu:activations:0(conv1d_11/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
conv1d_11/conv1d/ExpandDimsÖ
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_11_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02.
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_11/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_11/conv1d/ExpandDims_1/dimß
conv1d_11/conv1d/ExpandDims_1
ExpandDims4conv1d_11/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_11/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_11/conv1d/ExpandDims_1Þ
conv1d_11/conv1dConv2D$conv1d_11/conv1d/ExpandDims:output:0&conv1d_11/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv1d_11/conv1d°
conv1d_11/conv1d/SqueezeSqueezeconv1d_11/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_11/conv1d/Squeezeª
 conv1d_11/BiasAdd/ReadVariableOpReadVariableOp)conv1d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv1d_11/BiasAdd/ReadVariableOp´
conv1d_11/BiasAddBiasAdd!conv1d_11/conv1d/Squeeze:output:0(conv1d_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_11/BiasAddz
conv1d_11/ReluReluconv1d_11/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv1d_11/Relu
max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_4/ExpandDims/dimÇ
max_pooling1d_4/ExpandDims
ExpandDimsconv1d_11/Relu:activations:0'max_pooling1d_4/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
max_pooling1d_4/ExpandDimsÎ
max_pooling1d_4/MaxPoolMaxPool#max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2
max_pooling1d_4/MaxPool¬
max_pooling1d_4/SqueezeSqueeze max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2
max_pooling1d_4/Squeezen
lstm_46/ShapeShape max_pooling1d_4/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_46/Shape
lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_46/strided_slice/stack
lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_46/strided_slice/stack_1
lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_46/strided_slice/stack_2
lstm_46/strided_sliceStridedSlicelstm_46/Shape:output:0$lstm_46/strided_slice/stack:output:0&lstm_46/strided_slice/stack_1:output:0&lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_46/strided_slicel
lstm_46/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros/mul/y
lstm_46/zeros/mulMullstm_46/strided_slice:output:0lstm_46/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros/mulo
lstm_46/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_46/zeros/Less/y
lstm_46/zeros/LessLesslstm_46/zeros/mul:z:0lstm_46/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros/Lessr
lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros/packed/1£
lstm_46/zeros/packedPacklstm_46/strided_slice:output:0lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_46/zeros/packedo
lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_46/zeros/Const
lstm_46/zerosFilllstm_46/zeros/packed:output:0lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/zerosp
lstm_46/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros_1/mul/y
lstm_46/zeros_1/mulMullstm_46/strided_slice:output:0lstm_46/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros_1/muls
lstm_46/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_46/zeros_1/Less/y
lstm_46/zeros_1/LessLesslstm_46/zeros_1/mul:z:0lstm_46/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_46/zeros_1/Lessv
lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_46/zeros_1/packed/1©
lstm_46/zeros_1/packedPacklstm_46/strided_slice:output:0!lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_46/zeros_1/packeds
lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_46/zeros_1/Const
lstm_46/zeros_1Filllstm_46/zeros_1/packed:output:0lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/zeros_1
lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_46/transpose/perm¬
lstm_46/transpose	Transpose max_pooling1d_4/Squeeze:output:0lstm_46/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_46/transposeg
lstm_46/Shape_1Shapelstm_46/transpose:y:0*
T0*
_output_shapes
:2
lstm_46/Shape_1
lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_46/strided_slice_1/stack
lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_1/stack_1
lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_1/stack_2
lstm_46/strided_slice_1StridedSlicelstm_46/Shape_1:output:0&lstm_46/strided_slice_1/stack:output:0(lstm_46/strided_slice_1/stack_1:output:0(lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_46/strided_slice_1
#lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_46/TensorArrayV2/element_shapeÒ
lstm_46/TensorArrayV2TensorListReserve,lstm_46/TensorArrayV2/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_46/TensorArrayV2Ï
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_46/transpose:y:0Flstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_46/TensorArrayUnstack/TensorListFromTensor
lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_46/strided_slice_2/stack
lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_2/stack_1
lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_2/stack_2¬
lstm_46/strided_slice_2StridedSlicelstm_46/transpose:y:0&lstm_46/strided_slice_2/stack:output:0(lstm_46/strided_slice_2/stack_1:output:0(lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_46/strided_slice_2Ì
*lstm_46/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3lstm_46_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*lstm_46/lstm_cell_46/MatMul/ReadVariableOpÌ
lstm_46/lstm_cell_46/MatMulMatMul lstm_46/strided_slice_2:output:02lstm_46/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/MatMulÒ
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpÈ
lstm_46/lstm_cell_46/MatMul_1MatMullstm_46/zeros:output:04lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/MatMul_1¿
lstm_46/lstm_cell_46/addAddV2%lstm_46/lstm_cell_46/MatMul:product:0'lstm_46/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/addË
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpÌ
lstm_46/lstm_cell_46/BiasAddBiasAddlstm_46/lstm_cell_46/add:z:03lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/BiasAdd
$lstm_46/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_46/lstm_cell_46/split/split_dim
lstm_46/lstm_cell_46/splitSplit-lstm_46/lstm_cell_46/split/split_dim:output:0%lstm_46/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_46/lstm_cell_46/split
lstm_46/lstm_cell_46/SigmoidSigmoid#lstm_46/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/Sigmoid¢
lstm_46/lstm_cell_46/Sigmoid_1Sigmoid#lstm_46/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/lstm_cell_46/Sigmoid_1«
lstm_46/lstm_cell_46/mulMul"lstm_46/lstm_cell_46/Sigmoid_1:y:0lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/mul
lstm_46/lstm_cell_46/ReluRelu#lstm_46/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/Relu¼
lstm_46/lstm_cell_46/mul_1Mul lstm_46/lstm_cell_46/Sigmoid:y:0'lstm_46/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/mul_1±
lstm_46/lstm_cell_46/add_1AddV2lstm_46/lstm_cell_46/mul:z:0lstm_46/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/add_1¢
lstm_46/lstm_cell_46/Sigmoid_2Sigmoid#lstm_46/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_46/lstm_cell_46/Sigmoid_2
lstm_46/lstm_cell_46/Relu_1Relulstm_46/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/Relu_1À
lstm_46/lstm_cell_46/mul_2Mul"lstm_46/lstm_cell_46/Sigmoid_2:y:0)lstm_46/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/lstm_cell_46/mul_2
%lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_46/TensorArrayV2_1/element_shapeØ
lstm_46/TensorArrayV2_1TensorListReserve.lstm_46/TensorArrayV2_1/element_shape:output:0 lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_46/TensorArrayV2_1^
lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_46/time
 lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_46/while/maximum_iterationsz
lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_46/while/loop_counter
lstm_46/whileWhile#lstm_46/while/loop_counter:output:0)lstm_46/while/maximum_iterations:output:0lstm_46/time:output:0 lstm_46/TensorArrayV2_1:handle:0lstm_46/zeros:output:0lstm_46/zeros_1:output:0 lstm_46/strided_slice_1:output:0?lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_46_lstm_cell_46_matmul_readvariableop_resource5lstm_46_lstm_cell_46_matmul_1_readvariableop_resource4lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_46_while_body_431312*%
condR
lstm_46_while_cond_431311*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_46/whileÅ
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_46/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_46/TensorArrayV2Stack/TensorListStackTensorListStacklstm_46/while:output:3Alstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_46/TensorArrayV2Stack/TensorListStack
lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_46/strided_slice_3/stack
lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_46/strided_slice_3/stack_1
lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_46/strided_slice_3/stack_2Ê
lstm_46/strided_slice_3StridedSlice3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_46/strided_slice_3/stack:output:0(lstm_46/strided_slice_3/stack_1:output:0(lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_46/strided_slice_3
lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_46/transpose_1/permÅ
lstm_46/transpose_1	Transpose3lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_46/transpose_1v
lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_46/runtime
dropout_26/IdentityIdentitylstm_46/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_26/Identityj
lstm_47/ShapeShapedropout_26/Identity:output:0*
T0*
_output_shapes
:2
lstm_47/Shape
lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_47/strided_slice/stack
lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_47/strided_slice/stack_1
lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_47/strided_slice/stack_2
lstm_47/strided_sliceStridedSlicelstm_47/Shape:output:0$lstm_47/strided_slice/stack:output:0&lstm_47/strided_slice/stack_1:output:0&lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_47/strided_slicel
lstm_47/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros/mul/y
lstm_47/zeros/mulMullstm_47/strided_slice:output:0lstm_47/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros/mulo
lstm_47/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_47/zeros/Less/y
lstm_47/zeros/LessLesslstm_47/zeros/mul:z:0lstm_47/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros/Lessr
lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros/packed/1£
lstm_47/zeros/packedPacklstm_47/strided_slice:output:0lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_47/zeros/packedo
lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_47/zeros/Const
lstm_47/zerosFilllstm_47/zeros/packed:output:0lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/zerosp
lstm_47/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros_1/mul/y
lstm_47/zeros_1/mulMullstm_47/strided_slice:output:0lstm_47/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros_1/muls
lstm_47/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_47/zeros_1/Less/y
lstm_47/zeros_1/LessLesslstm_47/zeros_1/mul:z:0lstm_47/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_47/zeros_1/Lessv
lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_47/zeros_1/packed/1©
lstm_47/zeros_1/packedPacklstm_47/strided_slice:output:0!lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_47/zeros_1/packeds
lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_47/zeros_1/Const
lstm_47/zeros_1Filllstm_47/zeros_1/packed:output:0lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/zeros_1
lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_47/transpose/perm¨
lstm_47/transpose	Transposedropout_26/Identity:output:0lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/transposeg
lstm_47/Shape_1Shapelstm_47/transpose:y:0*
T0*
_output_shapes
:2
lstm_47/Shape_1
lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_47/strided_slice_1/stack
lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_1/stack_1
lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_1/stack_2
lstm_47/strided_slice_1StridedSlicelstm_47/Shape_1:output:0&lstm_47/strided_slice_1/stack:output:0(lstm_47/strided_slice_1/stack_1:output:0(lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_47/strided_slice_1
#lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_47/TensorArrayV2/element_shapeÒ
lstm_47/TensorArrayV2TensorListReserve,lstm_47/TensorArrayV2/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_47/TensorArrayV2Ï
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_47/transpose:y:0Flstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_47/TensorArrayUnstack/TensorListFromTensor
lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_47/strided_slice_2/stack
lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_2/stack_1
lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_2/stack_2¬
lstm_47/strided_slice_2StridedSlicelstm_47/transpose:y:0&lstm_47/strided_slice_2/stack:output:0(lstm_47/strided_slice_2/stack_1:output:0(lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_47/strided_slice_2Ì
*lstm_47/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3lstm_47_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_47/lstm_cell_47/MatMul/ReadVariableOpÌ
lstm_47/lstm_cell_47/MatMulMatMul lstm_47/strided_slice_2:output:02lstm_47/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/MatMulÒ
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpÈ
lstm_47/lstm_cell_47/MatMul_1MatMullstm_47/zeros:output:04lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/MatMul_1¿
lstm_47/lstm_cell_47/addAddV2%lstm_47/lstm_cell_47/MatMul:product:0'lstm_47/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/addË
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpÌ
lstm_47/lstm_cell_47/BiasAddBiasAddlstm_47/lstm_cell_47/add:z:03lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/BiasAdd
$lstm_47/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_47/lstm_cell_47/split/split_dim
lstm_47/lstm_cell_47/splitSplit-lstm_47/lstm_cell_47/split/split_dim:output:0%lstm_47/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_47/lstm_cell_47/split
lstm_47/lstm_cell_47/SigmoidSigmoid#lstm_47/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/Sigmoid¢
lstm_47/lstm_cell_47/Sigmoid_1Sigmoid#lstm_47/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/lstm_cell_47/Sigmoid_1«
lstm_47/lstm_cell_47/mulMul"lstm_47/lstm_cell_47/Sigmoid_1:y:0lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/mul
lstm_47/lstm_cell_47/ReluRelu#lstm_47/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/Relu¼
lstm_47/lstm_cell_47/mul_1Mul lstm_47/lstm_cell_47/Sigmoid:y:0'lstm_47/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/mul_1±
lstm_47/lstm_cell_47/add_1AddV2lstm_47/lstm_cell_47/mul:z:0lstm_47/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/add_1¢
lstm_47/lstm_cell_47/Sigmoid_2Sigmoid#lstm_47/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_47/lstm_cell_47/Sigmoid_2
lstm_47/lstm_cell_47/Relu_1Relulstm_47/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/Relu_1À
lstm_47/lstm_cell_47/mul_2Mul"lstm_47/lstm_cell_47/Sigmoid_2:y:0)lstm_47/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/lstm_cell_47/mul_2
%lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_47/TensorArrayV2_1/element_shapeØ
lstm_47/TensorArrayV2_1TensorListReserve.lstm_47/TensorArrayV2_1/element_shape:output:0 lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_47/TensorArrayV2_1^
lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_47/time
 lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_47/while/maximum_iterationsz
lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_47/while/loop_counter
lstm_47/whileWhile#lstm_47/while/loop_counter:output:0)lstm_47/while/maximum_iterations:output:0lstm_47/time:output:0 lstm_47/TensorArrayV2_1:handle:0lstm_47/zeros:output:0lstm_47/zeros_1:output:0 lstm_47/strided_slice_1:output:0?lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_47_lstm_cell_47_matmul_readvariableop_resource5lstm_47_lstm_cell_47_matmul_1_readvariableop_resource4lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_47_while_body_431460*%
condR
lstm_47_while_cond_431459*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_47/whileÅ
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_47/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_47/TensorArrayV2Stack/TensorListStackTensorListStacklstm_47/while:output:3Alstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_47/TensorArrayV2Stack/TensorListStack
lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_47/strided_slice_3/stack
lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_47/strided_slice_3/stack_1
lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_47/strided_slice_3/stack_2Ê
lstm_47/strided_slice_3StridedSlice3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_47/strided_slice_3/stack:output:0(lstm_47/strided_slice_3/stack_1:output:0(lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_47/strided_slice_3
lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_47/transpose_1/permÅ
lstm_47/transpose_1	Transpose3lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_47/transpose_1v
lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_47/runtime
dropout_27/IdentityIdentity lstm_47/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_27/Identity¨
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_46/MatMul/ReadVariableOp¤
dense_46/MatMulMatMuldropout_27/Identity:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_46/MatMul§
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_46/BiasAdd/ReadVariableOp¥
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_46/BiasAdds
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_46/Relu¨
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_47/MatMul/ReadVariableOp£
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_47/MatMul§
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_47/BiasAdd/ReadVariableOp¥
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_47/BiasAddm
reshape_23/ShapeShapedense_47/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_23/Shape
reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_23/strided_slice/stack
 reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_23/strided_slice/stack_1
 reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_23/strided_slice/stack_2¤
reshape_23/strided_sliceStridedSlicereshape_23/Shape:output:0'reshape_23/strided_slice/stack:output:0)reshape_23/strided_slice/stack_1:output:0)reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_23/strided_slicez
reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_23/Reshape/shape/1z
reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_23/Reshape/shape/2×
reshape_23/Reshape/shapePack!reshape_23/strided_slice:output:0#reshape_23/Reshape/shape/1:output:0#reshape_23/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_23/Reshape/shape§
reshape_23/ReshapeReshapedense_47/BiasAdd:output:0!reshape_23/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_23/Reshapez
IdentityIdentityreshape_23/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¬
NoOpNoOp!^conv1d_10/BiasAdd/ReadVariableOp-^conv1d_10/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_11/BiasAdd/ReadVariableOp-^conv1d_11/conv1d/ExpandDims_1/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp,^lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+^lstm_46/lstm_cell_46/MatMul/ReadVariableOp-^lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp^lstm_46/while,^lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+^lstm_47/lstm_cell_47/MatMul/ReadVariableOp-^lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_10/BiasAdd/ReadVariableOp conv1d_10/BiasAdd/ReadVariableOp2\
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_11/BiasAdd/ReadVariableOp conv1d_11/BiasAdd/ReadVariableOp2\
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2Z
+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp+lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp2X
*lstm_46/lstm_cell_46/MatMul/ReadVariableOp*lstm_46/lstm_cell_46/MatMul/ReadVariableOp2\
,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp,lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp2
lstm_46/whilelstm_46/while2Z
+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp+lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp2X
*lstm_47/lstm_cell_47/MatMul/ReadVariableOp*lstm_47/lstm_cell_47/MatMul/ReadVariableOp2\
,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp,lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp2
lstm_47/whilelstm_47/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_430570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_430570___redundant_placeholder04
0while_while_cond_430570___redundant_placeholder14
0while_while_cond_430570___redundant_placeholder24
0while_while_cond_430570___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ü[

C__inference_lstm_47_layer_call_and_return_conditional_losses_433330

inputs=
+lstm_cell_47_matmul_readvariableop_resource:?
-lstm_cell_47_matmul_1_readvariableop_resource::
,lstm_cell_47_biasadd_readvariableop_resource:
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_47/MatMul/ReadVariableOp¬
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMulº
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_47/MatMul_1/ReadVariableOp¨
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMul_1
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add³
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_47/BiasAdd/ReadVariableOp¬
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/BiasAdd~
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_47/split/split_dimó
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_47/split
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_1
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul}
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_1
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add_1
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_2|
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu_1 
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_433246*
condR
while_cond_433245*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
´
(__inference_lstm_46_layer_call_fn_432029
inputs_0
unknown:@
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4290802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

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
while_cond_432570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_432570___redundant_placeholder04
0while_while_cond_432570___redundant_placeholder14
0while_while_cond_432570___redundant_placeholder24
0while_while_cond_432570___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
F

C__inference_lstm_46_layer_call_and_return_conditional_losses_428870

inputs%
lstm_cell_46_428788:@%
lstm_cell_46_428790:!
lstm_cell_46_428792:
identity¢$lstm_cell_46/StatefulPartitionedCall¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_428788lstm_cell_46_428790lstm_cell_46_428792*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_4287872&
$lstm_cell_46/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_428788lstm_cell_46_428790lstm_cell_46_428792*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_428801*
condR
while_cond_428800*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_433480

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¿^

'sequential_16_lstm_46_while_body_428429H
Dsequential_16_lstm_46_while_sequential_16_lstm_46_while_loop_counterN
Jsequential_16_lstm_46_while_sequential_16_lstm_46_while_maximum_iterations+
'sequential_16_lstm_46_while_placeholder-
)sequential_16_lstm_46_while_placeholder_1-
)sequential_16_lstm_46_while_placeholder_2-
)sequential_16_lstm_46_while_placeholder_3G
Csequential_16_lstm_46_while_sequential_16_lstm_46_strided_slice_1_0
sequential_16_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_46_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_16_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0:@]
Ksequential_16_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0:X
Jsequential_16_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0:(
$sequential_16_lstm_46_while_identity*
&sequential_16_lstm_46_while_identity_1*
&sequential_16_lstm_46_while_identity_2*
&sequential_16_lstm_46_while_identity_3*
&sequential_16_lstm_46_while_identity_4*
&sequential_16_lstm_46_while_identity_5E
Asequential_16_lstm_46_while_sequential_16_lstm_46_strided_slice_1
}sequential_16_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_46_tensorarrayunstack_tensorlistfromtensorY
Gsequential_16_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource:@[
Isequential_16_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource:V
Hsequential_16_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource:¢?sequential_16/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp¢>sequential_16/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp¢@sequential_16/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpï
Msequential_16/lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2O
Msequential_16/lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_16/lstm_46/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_16_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_46_tensorarrayunstack_tensorlistfromtensor_0'sequential_16_lstm_46_while_placeholderVsequential_16/lstm_46/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02A
?sequential_16/lstm_46/while/TensorArrayV2Read/TensorListGetItem
>sequential_16/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOpIsequential_16_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02@
>sequential_16/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp®
/sequential_16/lstm_46/while/lstm_cell_46/MatMulMatMulFsequential_16/lstm_46/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_16/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_16/lstm_46/while/lstm_cell_46/MatMul
@sequential_16/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOpKsequential_16_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02B
@sequential_16/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp
1sequential_16/lstm_46/while/lstm_cell_46/MatMul_1MatMul)sequential_16_lstm_46_while_placeholder_2Hsequential_16/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_16/lstm_46/while/lstm_cell_46/MatMul_1
,sequential_16/lstm_46/while/lstm_cell_46/addAddV29sequential_16/lstm_46/while/lstm_cell_46/MatMul:product:0;sequential_16/lstm_46/while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_46/while/lstm_cell_46/add
?sequential_16/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOpJsequential_16_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02A
?sequential_16/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp
0sequential_16/lstm_46/while/lstm_cell_46/BiasAddBiasAdd0sequential_16/lstm_46/while/lstm_cell_46/add:z:0Gsequential_16/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_16/lstm_46/while/lstm_cell_46/BiasAdd¶
8sequential_16/lstm_46/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_16/lstm_46/while/lstm_cell_46/split/split_dimã
.sequential_16/lstm_46/while/lstm_cell_46/splitSplitAsequential_16/lstm_46/while/lstm_cell_46/split/split_dim:output:09sequential_16/lstm_46/while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_16/lstm_46/while/lstm_cell_46/splitÚ
0sequential_16/lstm_46/while/lstm_cell_46/SigmoidSigmoid7sequential_16/lstm_46/while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_16/lstm_46/while/lstm_cell_46/SigmoidÞ
2sequential_16/lstm_46/while/lstm_cell_46/Sigmoid_1Sigmoid7sequential_16/lstm_46/while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_16/lstm_46/while/lstm_cell_46/Sigmoid_1ø
,sequential_16/lstm_46/while/lstm_cell_46/mulMul6sequential_16/lstm_46/while/lstm_cell_46/Sigmoid_1:y:0)sequential_16_lstm_46_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_46/while/lstm_cell_46/mulÑ
-sequential_16/lstm_46/while/lstm_cell_46/ReluRelu7sequential_16/lstm_46/while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_16/lstm_46/while/lstm_cell_46/Relu
.sequential_16/lstm_46/while/lstm_cell_46/mul_1Mul4sequential_16/lstm_46/while/lstm_cell_46/Sigmoid:y:0;sequential_16/lstm_46/while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_46/while/lstm_cell_46/mul_1
.sequential_16/lstm_46/while/lstm_cell_46/add_1AddV20sequential_16/lstm_46/while/lstm_cell_46/mul:z:02sequential_16/lstm_46/while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_46/while/lstm_cell_46/add_1Þ
2sequential_16/lstm_46/while/lstm_cell_46/Sigmoid_2Sigmoid7sequential_16/lstm_46/while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_16/lstm_46/while/lstm_cell_46/Sigmoid_2Ð
/sequential_16/lstm_46/while/lstm_cell_46/Relu_1Relu2sequential_16/lstm_46/while/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_16/lstm_46/while/lstm_cell_46/Relu_1
.sequential_16/lstm_46/while/lstm_cell_46/mul_2Mul6sequential_16/lstm_46/while/lstm_cell_46/Sigmoid_2:y:0=sequential_16/lstm_46/while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_46/while/lstm_cell_46/mul_2Î
@sequential_16/lstm_46/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_16_lstm_46_while_placeholder_1'sequential_16_lstm_46_while_placeholder2sequential_16/lstm_46/while/lstm_cell_46/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_16/lstm_46/while/TensorArrayV2Write/TensorListSetItem
!sequential_16/lstm_46/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_16/lstm_46/while/add/yÁ
sequential_16/lstm_46/while/addAddV2'sequential_16_lstm_46_while_placeholder*sequential_16/lstm_46/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_16/lstm_46/while/add
#sequential_16/lstm_46/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_16/lstm_46/while/add_1/yä
!sequential_16/lstm_46/while/add_1AddV2Dsequential_16_lstm_46_while_sequential_16_lstm_46_while_loop_counter,sequential_16/lstm_46/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_16/lstm_46/while/add_1Ã
$sequential_16/lstm_46/while/IdentityIdentity%sequential_16/lstm_46/while/add_1:z:0!^sequential_16/lstm_46/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_16/lstm_46/while/Identityì
&sequential_16/lstm_46/while/Identity_1IdentityJsequential_16_lstm_46_while_sequential_16_lstm_46_while_maximum_iterations!^sequential_16/lstm_46/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_16/lstm_46/while/Identity_1Å
&sequential_16/lstm_46/while/Identity_2Identity#sequential_16/lstm_46/while/add:z:0!^sequential_16/lstm_46/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_16/lstm_46/while/Identity_2ò
&sequential_16/lstm_46/while/Identity_3IdentityPsequential_16/lstm_46/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_16/lstm_46/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_16/lstm_46/while/Identity_3å
&sequential_16/lstm_46/while/Identity_4Identity2sequential_16/lstm_46/while/lstm_cell_46/mul_2:z:0!^sequential_16/lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_46/while/Identity_4å
&sequential_16/lstm_46/while/Identity_5Identity2sequential_16/lstm_46/while/lstm_cell_46/add_1:z:0!^sequential_16/lstm_46/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_46/while/Identity_5Ì
 sequential_16/lstm_46/while/NoOpNoOp@^sequential_16/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp?^sequential_16/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOpA^sequential_16/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_16/lstm_46/while/NoOp"U
$sequential_16_lstm_46_while_identity-sequential_16/lstm_46/while/Identity:output:0"Y
&sequential_16_lstm_46_while_identity_1/sequential_16/lstm_46/while/Identity_1:output:0"Y
&sequential_16_lstm_46_while_identity_2/sequential_16/lstm_46/while/Identity_2:output:0"Y
&sequential_16_lstm_46_while_identity_3/sequential_16/lstm_46/while/Identity_3:output:0"Y
&sequential_16_lstm_46_while_identity_4/sequential_16/lstm_46/while/Identity_4:output:0"Y
&sequential_16_lstm_46_while_identity_5/sequential_16/lstm_46/while/Identity_5:output:0"
Hsequential_16_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resourceJsequential_16_lstm_46_while_lstm_cell_46_biasadd_readvariableop_resource_0"
Isequential_16_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resourceKsequential_16_lstm_46_while_lstm_cell_46_matmul_1_readvariableop_resource_0"
Gsequential_16_lstm_46_while_lstm_cell_46_matmul_readvariableop_resourceIsequential_16_lstm_46_while_lstm_cell_46_matmul_readvariableop_resource_0"
Asequential_16_lstm_46_while_sequential_16_lstm_46_strided_slice_1Csequential_16_lstm_46_while_sequential_16_lstm_46_strided_slice_1_0"
}sequential_16_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_46_tensorarrayunstack_tensorlistfromtensorsequential_16_lstm_46_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_46_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_16/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp?sequential_16/lstm_46/while/lstm_cell_46/BiasAdd/ReadVariableOp2
>sequential_16/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp>sequential_16/lstm_46/while/lstm_cell_46/MatMul/ReadVariableOp2
@sequential_16/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp@sequential_16/lstm_46/while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

g
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_428696

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

õ
D__inference_dense_46_layer_call_and_return_conditional_losses_433377

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
L
0__inference_max_pooling1d_4_layer_call_fn_431991

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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4300302
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
ñ

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_433512

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
?
Ê
while_body_432269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_46_matmul_readvariableop_resource_0:@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_46_matmul_readvariableop_resource:@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@
2while_lstm_cell_46_biasadd_readvariableop_resource:¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_46/MatMul/ReadVariableOpÖ
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMulÎ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_46/MatMul_1/ReadVariableOp¿
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMul_1·
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/addÇ
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_46/BiasAdd/ReadVariableOpÄ
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/BiasAdd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_46/split
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_1 
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu´
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_1©
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/add_1
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_2
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu_1¸
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×[

C__inference_lstm_46_layer_call_and_return_conditional_losses_430851

inputs=
+lstm_cell_46_matmul_readvariableop_resource:@?
-lstm_cell_46_matmul_1_readvariableop_resource::
,lstm_cell_46_biasadd_readvariableop_resource:
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_46/MatMul/ReadVariableOp¬
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMulº
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_46/MatMul_1/ReadVariableOp¨
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMul_1
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add³
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_46/BiasAdd/ReadVariableOp¬
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/BiasAdd~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dimó
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_46/split
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_1
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul}
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_1
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add_1
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_2|
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu_1 
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_430767*
condR
while_cond_430766*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¬
e
F__inference_dropout_27_layer_call_and_return_conditional_losses_430488

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
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_429431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_47_429455_0:-
while_lstm_cell_47_429457_0:)
while_lstm_cell_47_429459_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_47_429455:+
while_lstm_cell_47_429457:'
while_lstm_cell_47_429459:¢*while/lstm_cell_47/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_429455_0while_lstm_cell_47_429457_0while_lstm_cell_47_429459_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_4294172,
*while/lstm_cell_47/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_47/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
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
while_lstm_cell_47_429455while_lstm_cell_47_429455_0"8
while_lstm_cell_47_429457while_lstm_cell_47_429457_0"8
while_lstm_cell_47_429459while_lstm_cell_47_429459_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_432117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_432117___redundant_placeholder04
0while_while_cond_432117___redundant_placeholder14
0while_while_cond_432117___redundant_placeholder24
0while_while_cond_432117___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
Ã
while_cond_433094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_433094___redundant_placeholder04
0while_while_cond_433094___redundant_placeholder14
0while_while_cond_433094___redundant_placeholder24
0while_while_cond_433094___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
?
Ê
while_body_432944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_47_matmul_readvariableop_resource_0:G
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_47_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_47_matmul_readvariableop_resource:E
3while_lstm_cell_47_matmul_1_readvariableop_resource:@
2while_lstm_cell_47_biasadd_readvariableop_resource:¢)while/lstm_cell_47/BiasAdd/ReadVariableOp¢(while/lstm_cell_47/MatMul/ReadVariableOp¢*while/lstm_cell_47/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_47/MatMul/ReadVariableOpÖ
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMulÎ
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_47/MatMul_1/ReadVariableOp¿
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/MatMul_1·
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/addÇ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_47/BiasAdd/ReadVariableOpÄ
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/BiasAdd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_47/split/split_dim
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_47/split
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_1 
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu´
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_1©
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/add_1
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Sigmoid_2
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/Relu_1¸
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_47/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_47/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_430262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_430262___redundant_placeholder04
0while_while_cond_430262___redundant_placeholder14
0while_while_cond_430262___redundant_placeholder24
0while_while_cond_430262___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
óã
å
!__inference__wrapped_model_428684
conv1d_10_inputY
Csequential_16_conv1d_10_conv1d_expanddims_1_readvariableop_resource: E
7sequential_16_conv1d_10_biasadd_readvariableop_resource: Y
Csequential_16_conv1d_11_conv1d_expanddims_1_readvariableop_resource: @E
7sequential_16_conv1d_11_biasadd_readvariableop_resource:@S
Asequential_16_lstm_46_lstm_cell_46_matmul_readvariableop_resource:@U
Csequential_16_lstm_46_lstm_cell_46_matmul_1_readvariableop_resource:P
Bsequential_16_lstm_46_lstm_cell_46_biasadd_readvariableop_resource:S
Asequential_16_lstm_47_lstm_cell_47_matmul_readvariableop_resource:U
Csequential_16_lstm_47_lstm_cell_47_matmul_1_readvariableop_resource:P
Bsequential_16_lstm_47_lstm_cell_47_biasadd_readvariableop_resource:G
5sequential_16_dense_46_matmul_readvariableop_resource:D
6sequential_16_dense_46_biasadd_readvariableop_resource:G
5sequential_16_dense_47_matmul_readvariableop_resource:D
6sequential_16_dense_47_biasadd_readvariableop_resource:
identity¢.sequential_16/conv1d_10/BiasAdd/ReadVariableOp¢:sequential_16/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¢.sequential_16/conv1d_11/BiasAdd/ReadVariableOp¢:sequential_16/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¢-sequential_16/dense_46/BiasAdd/ReadVariableOp¢,sequential_16/dense_46/MatMul/ReadVariableOp¢-sequential_16/dense_47/BiasAdd/ReadVariableOp¢,sequential_16/dense_47/MatMul/ReadVariableOp¢9sequential_16/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp¢8sequential_16/lstm_46/lstm_cell_46/MatMul/ReadVariableOp¢:sequential_16/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp¢sequential_16/lstm_46/while¢9sequential_16/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp¢8sequential_16/lstm_47/lstm_cell_47/MatMul/ReadVariableOp¢:sequential_16/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp¢sequential_16/lstm_47/while©
-sequential_16/conv1d_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2/
-sequential_16/conv1d_10/conv1d/ExpandDims/dimç
)sequential_16/conv1d_10/conv1d/ExpandDims
ExpandDimsconv1d_10_input6sequential_16/conv1d_10/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_16/conv1d_10/conv1d/ExpandDims
:sequential_16/conv1d_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_16_conv1d_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02<
:sequential_16/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¤
/sequential_16/conv1d_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_16/conv1d_10/conv1d/ExpandDims_1/dim
+sequential_16/conv1d_10/conv1d/ExpandDims_1
ExpandDimsBsequential_16/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp:value:08sequential_16/conv1d_10/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2-
+sequential_16/conv1d_10/conv1d/ExpandDims_1
sequential_16/conv1d_10/conv1dConv2D2sequential_16/conv1d_10/conv1d/ExpandDims:output:04sequential_16/conv1d_10/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2 
sequential_16/conv1d_10/conv1dÚ
&sequential_16/conv1d_10/conv1d/SqueezeSqueeze'sequential_16/conv1d_10/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2(
&sequential_16/conv1d_10/conv1d/SqueezeÔ
.sequential_16/conv1d_10/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv1d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_16/conv1d_10/BiasAdd/ReadVariableOpì
sequential_16/conv1d_10/BiasAddBiasAdd/sequential_16/conv1d_10/conv1d/Squeeze:output:06sequential_16/conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
sequential_16/conv1d_10/BiasAdd¤
sequential_16/conv1d_10/ReluRelu(sequential_16/conv1d_10/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_16/conv1d_10/Relu©
-sequential_16/conv1d_11/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2/
-sequential_16/conv1d_11/conv1d/ExpandDims/dim
)sequential_16/conv1d_11/conv1d/ExpandDims
ExpandDims*sequential_16/conv1d_10/Relu:activations:06sequential_16/conv1d_11/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_16/conv1d_11/conv1d/ExpandDims
:sequential_16/conv1d_11/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_16_conv1d_11_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02<
:sequential_16/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¤
/sequential_16/conv1d_11/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_16/conv1d_11/conv1d/ExpandDims_1/dim
+sequential_16/conv1d_11/conv1d/ExpandDims_1
ExpandDimsBsequential_16/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp:value:08sequential_16/conv1d_11/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2-
+sequential_16/conv1d_11/conv1d/ExpandDims_1
sequential_16/conv1d_11/conv1dConv2D2sequential_16/conv1d_11/conv1d/ExpandDims:output:04sequential_16/conv1d_11/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2 
sequential_16/conv1d_11/conv1dÚ
&sequential_16/conv1d_11/conv1d/SqueezeSqueeze'sequential_16/conv1d_11/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2(
&sequential_16/conv1d_11/conv1d/SqueezeÔ
.sequential_16/conv1d_11/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv1d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_16/conv1d_11/BiasAdd/ReadVariableOpì
sequential_16/conv1d_11/BiasAddBiasAdd/sequential_16/conv1d_11/conv1d/Squeeze:output:06sequential_16/conv1d_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_16/conv1d_11/BiasAdd¤
sequential_16/conv1d_11/ReluRelu(sequential_16/conv1d_11/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_16/conv1d_11/Relu
,sequential_16/max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_16/max_pooling1d_4/ExpandDims/dimÿ
(sequential_16/max_pooling1d_4/ExpandDims
ExpandDims*sequential_16/conv1d_11/Relu:activations:05sequential_16/max_pooling1d_4/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(sequential_16/max_pooling1d_4/ExpandDimsø
%sequential_16/max_pooling1d_4/MaxPoolMaxPool1sequential_16/max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingSAME*
strides
2'
%sequential_16/max_pooling1d_4/MaxPoolÖ
%sequential_16/max_pooling1d_4/SqueezeSqueeze.sequential_16/max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
2'
%sequential_16/max_pooling1d_4/Squeeze
sequential_16/lstm_46/ShapeShape.sequential_16/max_pooling1d_4/Squeeze:output:0*
T0*
_output_shapes
:2
sequential_16/lstm_46/Shape 
)sequential_16/lstm_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_16/lstm_46/strided_slice/stack¤
+sequential_16/lstm_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_16/lstm_46/strided_slice/stack_1¤
+sequential_16/lstm_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_16/lstm_46/strided_slice/stack_2æ
#sequential_16/lstm_46/strided_sliceStridedSlice$sequential_16/lstm_46/Shape:output:02sequential_16/lstm_46/strided_slice/stack:output:04sequential_16/lstm_46/strided_slice/stack_1:output:04sequential_16/lstm_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_16/lstm_46/strided_slice
!sequential_16/lstm_46/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_16/lstm_46/zeros/mul/yÄ
sequential_16/lstm_46/zeros/mulMul,sequential_16/lstm_46/strided_slice:output:0*sequential_16/lstm_46/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_16/lstm_46/zeros/mul
"sequential_16/lstm_46/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_16/lstm_46/zeros/Less/y¿
 sequential_16/lstm_46/zeros/LessLess#sequential_16/lstm_46/zeros/mul:z:0+sequential_16/lstm_46/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_16/lstm_46/zeros/Less
$sequential_16/lstm_46/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_16/lstm_46/zeros/packed/1Û
"sequential_16/lstm_46/zeros/packedPack,sequential_16/lstm_46/strided_slice:output:0-sequential_16/lstm_46/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_16/lstm_46/zeros/packed
!sequential_16/lstm_46/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_16/lstm_46/zeros/ConstÍ
sequential_16/lstm_46/zerosFill+sequential_16/lstm_46/zeros/packed:output:0*sequential_16/lstm_46/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_16/lstm_46/zeros
#sequential_16/lstm_46/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_16/lstm_46/zeros_1/mul/yÊ
!sequential_16/lstm_46/zeros_1/mulMul,sequential_16/lstm_46/strided_slice:output:0,sequential_16/lstm_46/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_16/lstm_46/zeros_1/mul
$sequential_16/lstm_46/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_16/lstm_46/zeros_1/Less/yÇ
"sequential_16/lstm_46/zeros_1/LessLess%sequential_16/lstm_46/zeros_1/mul:z:0-sequential_16/lstm_46/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_16/lstm_46/zeros_1/Less
&sequential_16/lstm_46/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_16/lstm_46/zeros_1/packed/1á
$sequential_16/lstm_46/zeros_1/packedPack,sequential_16/lstm_46/strided_slice:output:0/sequential_16/lstm_46/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_16/lstm_46/zeros_1/packed
#sequential_16/lstm_46/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_16/lstm_46/zeros_1/ConstÕ
sequential_16/lstm_46/zeros_1Fill-sequential_16/lstm_46/zeros_1/packed:output:0,sequential_16/lstm_46/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_16/lstm_46/zeros_1¡
$sequential_16/lstm_46/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_16/lstm_46/transpose/permä
sequential_16/lstm_46/transpose	Transpose.sequential_16/max_pooling1d_4/Squeeze:output:0-sequential_16/lstm_46/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_16/lstm_46/transpose
sequential_16/lstm_46/Shape_1Shape#sequential_16/lstm_46/transpose:y:0*
T0*
_output_shapes
:2
sequential_16/lstm_46/Shape_1¤
+sequential_16/lstm_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_16/lstm_46/strided_slice_1/stack¨
-sequential_16/lstm_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_46/strided_slice_1/stack_1¨
-sequential_16/lstm_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_46/strided_slice_1/stack_2ò
%sequential_16/lstm_46/strided_slice_1StridedSlice&sequential_16/lstm_46/Shape_1:output:04sequential_16/lstm_46/strided_slice_1/stack:output:06sequential_16/lstm_46/strided_slice_1/stack_1:output:06sequential_16/lstm_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_16/lstm_46/strided_slice_1±
1sequential_16/lstm_46/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_16/lstm_46/TensorArrayV2/element_shape
#sequential_16/lstm_46/TensorArrayV2TensorListReserve:sequential_16/lstm_46/TensorArrayV2/element_shape:output:0.sequential_16/lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_16/lstm_46/TensorArrayV2ë
Ksequential_16/lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2M
Ksequential_16/lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_16/lstm_46/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_16/lstm_46/transpose:y:0Tsequential_16/lstm_46/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_16/lstm_46/TensorArrayUnstack/TensorListFromTensor¤
+sequential_16/lstm_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_16/lstm_46/strided_slice_2/stack¨
-sequential_16/lstm_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_46/strided_slice_2/stack_1¨
-sequential_16/lstm_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_46/strided_slice_2/stack_2
%sequential_16/lstm_46/strided_slice_2StridedSlice#sequential_16/lstm_46/transpose:y:04sequential_16/lstm_46/strided_slice_2/stack:output:06sequential_16/lstm_46/strided_slice_2/stack_1:output:06sequential_16/lstm_46/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2'
%sequential_16/lstm_46/strided_slice_2ö
8sequential_16/lstm_46/lstm_cell_46/MatMul/ReadVariableOpReadVariableOpAsequential_16_lstm_46_lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02:
8sequential_16/lstm_46/lstm_cell_46/MatMul/ReadVariableOp
)sequential_16/lstm_46/lstm_cell_46/MatMulMatMul.sequential_16/lstm_46/strided_slice_2:output:0@sequential_16/lstm_46/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_16/lstm_46/lstm_cell_46/MatMulü
:sequential_16/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOpCsequential_16_lstm_46_lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02<
:sequential_16/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp
+sequential_16/lstm_46/lstm_cell_46/MatMul_1MatMul$sequential_16/lstm_46/zeros:output:0Bsequential_16/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_16/lstm_46/lstm_cell_46/MatMul_1÷
&sequential_16/lstm_46/lstm_cell_46/addAddV23sequential_16/lstm_46/lstm_cell_46/MatMul:product:05sequential_16/lstm_46/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_46/lstm_cell_46/addõ
9sequential_16/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOpBsequential_16_lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9sequential_16/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp
*sequential_16/lstm_46/lstm_cell_46/BiasAddBiasAdd*sequential_16/lstm_46/lstm_cell_46/add:z:0Asequential_16/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_16/lstm_46/lstm_cell_46/BiasAddª
2sequential_16/lstm_46/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_16/lstm_46/lstm_cell_46/split/split_dimË
(sequential_16/lstm_46/lstm_cell_46/splitSplit;sequential_16/lstm_46/lstm_cell_46/split/split_dim:output:03sequential_16/lstm_46/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_16/lstm_46/lstm_cell_46/splitÈ
*sequential_16/lstm_46/lstm_cell_46/SigmoidSigmoid1sequential_16/lstm_46/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_16/lstm_46/lstm_cell_46/SigmoidÌ
,sequential_16/lstm_46/lstm_cell_46/Sigmoid_1Sigmoid1sequential_16/lstm_46/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_46/lstm_cell_46/Sigmoid_1ã
&sequential_16/lstm_46/lstm_cell_46/mulMul0sequential_16/lstm_46/lstm_cell_46/Sigmoid_1:y:0&sequential_16/lstm_46/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_46/lstm_cell_46/mul¿
'sequential_16/lstm_46/lstm_cell_46/ReluRelu1sequential_16/lstm_46/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_16/lstm_46/lstm_cell_46/Reluô
(sequential_16/lstm_46/lstm_cell_46/mul_1Mul.sequential_16/lstm_46/lstm_cell_46/Sigmoid:y:05sequential_16/lstm_46/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_16/lstm_46/lstm_cell_46/mul_1é
(sequential_16/lstm_46/lstm_cell_46/add_1AddV2*sequential_16/lstm_46/lstm_cell_46/mul:z:0,sequential_16/lstm_46/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_16/lstm_46/lstm_cell_46/add_1Ì
,sequential_16/lstm_46/lstm_cell_46/Sigmoid_2Sigmoid1sequential_16/lstm_46/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_46/lstm_cell_46/Sigmoid_2¾
)sequential_16/lstm_46/lstm_cell_46/Relu_1Relu,sequential_16/lstm_46/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_16/lstm_46/lstm_cell_46/Relu_1ø
(sequential_16/lstm_46/lstm_cell_46/mul_2Mul0sequential_16/lstm_46/lstm_cell_46/Sigmoid_2:y:07sequential_16/lstm_46/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_16/lstm_46/lstm_cell_46/mul_2»
3sequential_16/lstm_46/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_16/lstm_46/TensorArrayV2_1/element_shape
%sequential_16/lstm_46/TensorArrayV2_1TensorListReserve<sequential_16/lstm_46/TensorArrayV2_1/element_shape:output:0.sequential_16/lstm_46/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_16/lstm_46/TensorArrayV2_1z
sequential_16/lstm_46/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_16/lstm_46/time«
.sequential_16/lstm_46/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_46/while/maximum_iterations
(sequential_16/lstm_46/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_16/lstm_46/while/loop_counterÕ
sequential_16/lstm_46/whileWhile1sequential_16/lstm_46/while/loop_counter:output:07sequential_16/lstm_46/while/maximum_iterations:output:0#sequential_16/lstm_46/time:output:0.sequential_16/lstm_46/TensorArrayV2_1:handle:0$sequential_16/lstm_46/zeros:output:0&sequential_16/lstm_46/zeros_1:output:0.sequential_16/lstm_46/strided_slice_1:output:0Msequential_16/lstm_46/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_16_lstm_46_lstm_cell_46_matmul_readvariableop_resourceCsequential_16_lstm_46_lstm_cell_46_matmul_1_readvariableop_resourceBsequential_16_lstm_46_lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_16_lstm_46_while_body_428429*3
cond+R)
'sequential_16_lstm_46_while_cond_428428*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_16/lstm_46/whileá
Fsequential_16/lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_16/lstm_46/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_16/lstm_46/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_16/lstm_46/while:output:3Osequential_16/lstm_46/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_16/lstm_46/TensorArrayV2Stack/TensorListStack­
+sequential_16/lstm_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_16/lstm_46/strided_slice_3/stack¨
-sequential_16/lstm_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_16/lstm_46/strided_slice_3/stack_1¨
-sequential_16/lstm_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_46/strided_slice_3/stack_2
%sequential_16/lstm_46/strided_slice_3StridedSliceAsequential_16/lstm_46/TensorArrayV2Stack/TensorListStack:tensor:04sequential_16/lstm_46/strided_slice_3/stack:output:06sequential_16/lstm_46/strided_slice_3/stack_1:output:06sequential_16/lstm_46/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_16/lstm_46/strided_slice_3¥
&sequential_16/lstm_46/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_16/lstm_46/transpose_1/permý
!sequential_16/lstm_46/transpose_1	TransposeAsequential_16/lstm_46/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_16/lstm_46/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_16/lstm_46/transpose_1
sequential_16/lstm_46/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_16/lstm_46/runtime¯
!sequential_16/dropout_26/IdentityIdentity%sequential_16/lstm_46/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_16/dropout_26/Identity
sequential_16/lstm_47/ShapeShape*sequential_16/dropout_26/Identity:output:0*
T0*
_output_shapes
:2
sequential_16/lstm_47/Shape 
)sequential_16/lstm_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_16/lstm_47/strided_slice/stack¤
+sequential_16/lstm_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_16/lstm_47/strided_slice/stack_1¤
+sequential_16/lstm_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_16/lstm_47/strided_slice/stack_2æ
#sequential_16/lstm_47/strided_sliceStridedSlice$sequential_16/lstm_47/Shape:output:02sequential_16/lstm_47/strided_slice/stack:output:04sequential_16/lstm_47/strided_slice/stack_1:output:04sequential_16/lstm_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_16/lstm_47/strided_slice
!sequential_16/lstm_47/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_16/lstm_47/zeros/mul/yÄ
sequential_16/lstm_47/zeros/mulMul,sequential_16/lstm_47/strided_slice:output:0*sequential_16/lstm_47/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_16/lstm_47/zeros/mul
"sequential_16/lstm_47/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_16/lstm_47/zeros/Less/y¿
 sequential_16/lstm_47/zeros/LessLess#sequential_16/lstm_47/zeros/mul:z:0+sequential_16/lstm_47/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_16/lstm_47/zeros/Less
$sequential_16/lstm_47/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_16/lstm_47/zeros/packed/1Û
"sequential_16/lstm_47/zeros/packedPack,sequential_16/lstm_47/strided_slice:output:0-sequential_16/lstm_47/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_16/lstm_47/zeros/packed
!sequential_16/lstm_47/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_16/lstm_47/zeros/ConstÍ
sequential_16/lstm_47/zerosFill+sequential_16/lstm_47/zeros/packed:output:0*sequential_16/lstm_47/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_16/lstm_47/zeros
#sequential_16/lstm_47/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_16/lstm_47/zeros_1/mul/yÊ
!sequential_16/lstm_47/zeros_1/mulMul,sequential_16/lstm_47/strided_slice:output:0,sequential_16/lstm_47/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_16/lstm_47/zeros_1/mul
$sequential_16/lstm_47/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_16/lstm_47/zeros_1/Less/yÇ
"sequential_16/lstm_47/zeros_1/LessLess%sequential_16/lstm_47/zeros_1/mul:z:0-sequential_16/lstm_47/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_16/lstm_47/zeros_1/Less
&sequential_16/lstm_47/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_16/lstm_47/zeros_1/packed/1á
$sequential_16/lstm_47/zeros_1/packedPack,sequential_16/lstm_47/strided_slice:output:0/sequential_16/lstm_47/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_16/lstm_47/zeros_1/packed
#sequential_16/lstm_47/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_16/lstm_47/zeros_1/ConstÕ
sequential_16/lstm_47/zeros_1Fill-sequential_16/lstm_47/zeros_1/packed:output:0,sequential_16/lstm_47/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_16/lstm_47/zeros_1¡
$sequential_16/lstm_47/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_16/lstm_47/transpose/permà
sequential_16/lstm_47/transpose	Transpose*sequential_16/dropout_26/Identity:output:0-sequential_16/lstm_47/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_16/lstm_47/transpose
sequential_16/lstm_47/Shape_1Shape#sequential_16/lstm_47/transpose:y:0*
T0*
_output_shapes
:2
sequential_16/lstm_47/Shape_1¤
+sequential_16/lstm_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_16/lstm_47/strided_slice_1/stack¨
-sequential_16/lstm_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_47/strided_slice_1/stack_1¨
-sequential_16/lstm_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_47/strided_slice_1/stack_2ò
%sequential_16/lstm_47/strided_slice_1StridedSlice&sequential_16/lstm_47/Shape_1:output:04sequential_16/lstm_47/strided_slice_1/stack:output:06sequential_16/lstm_47/strided_slice_1/stack_1:output:06sequential_16/lstm_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_16/lstm_47/strided_slice_1±
1sequential_16/lstm_47/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_16/lstm_47/TensorArrayV2/element_shape
#sequential_16/lstm_47/TensorArrayV2TensorListReserve:sequential_16/lstm_47/TensorArrayV2/element_shape:output:0.sequential_16/lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_16/lstm_47/TensorArrayV2ë
Ksequential_16/lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_16/lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_16/lstm_47/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_16/lstm_47/transpose:y:0Tsequential_16/lstm_47/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_16/lstm_47/TensorArrayUnstack/TensorListFromTensor¤
+sequential_16/lstm_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_16/lstm_47/strided_slice_2/stack¨
-sequential_16/lstm_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_47/strided_slice_2/stack_1¨
-sequential_16/lstm_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_47/strided_slice_2/stack_2
%sequential_16/lstm_47/strided_slice_2StridedSlice#sequential_16/lstm_47/transpose:y:04sequential_16/lstm_47/strided_slice_2/stack:output:06sequential_16/lstm_47/strided_slice_2/stack_1:output:06sequential_16/lstm_47/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_16/lstm_47/strided_slice_2ö
8sequential_16/lstm_47/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpAsequential_16_lstm_47_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02:
8sequential_16/lstm_47/lstm_cell_47/MatMul/ReadVariableOp
)sequential_16/lstm_47/lstm_cell_47/MatMulMatMul.sequential_16/lstm_47/strided_slice_2:output:0@sequential_16/lstm_47/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_16/lstm_47/lstm_cell_47/MatMulü
:sequential_16/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpCsequential_16_lstm_47_lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02<
:sequential_16/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp
+sequential_16/lstm_47/lstm_cell_47/MatMul_1MatMul$sequential_16/lstm_47/zeros:output:0Bsequential_16/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_16/lstm_47/lstm_cell_47/MatMul_1÷
&sequential_16/lstm_47/lstm_cell_47/addAddV23sequential_16/lstm_47/lstm_cell_47/MatMul:product:05sequential_16/lstm_47/lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_47/lstm_cell_47/addõ
9sequential_16/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpBsequential_16_lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9sequential_16/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp
*sequential_16/lstm_47/lstm_cell_47/BiasAddBiasAdd*sequential_16/lstm_47/lstm_cell_47/add:z:0Asequential_16/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_16/lstm_47/lstm_cell_47/BiasAddª
2sequential_16/lstm_47/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_16/lstm_47/lstm_cell_47/split/split_dimË
(sequential_16/lstm_47/lstm_cell_47/splitSplit;sequential_16/lstm_47/lstm_cell_47/split/split_dim:output:03sequential_16/lstm_47/lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_16/lstm_47/lstm_cell_47/splitÈ
*sequential_16/lstm_47/lstm_cell_47/SigmoidSigmoid1sequential_16/lstm_47/lstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_16/lstm_47/lstm_cell_47/SigmoidÌ
,sequential_16/lstm_47/lstm_cell_47/Sigmoid_1Sigmoid1sequential_16/lstm_47/lstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_47/lstm_cell_47/Sigmoid_1ã
&sequential_16/lstm_47/lstm_cell_47/mulMul0sequential_16/lstm_47/lstm_cell_47/Sigmoid_1:y:0&sequential_16/lstm_47/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_16/lstm_47/lstm_cell_47/mul¿
'sequential_16/lstm_47/lstm_cell_47/ReluRelu1sequential_16/lstm_47/lstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_16/lstm_47/lstm_cell_47/Reluô
(sequential_16/lstm_47/lstm_cell_47/mul_1Mul.sequential_16/lstm_47/lstm_cell_47/Sigmoid:y:05sequential_16/lstm_47/lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_16/lstm_47/lstm_cell_47/mul_1é
(sequential_16/lstm_47/lstm_cell_47/add_1AddV2*sequential_16/lstm_47/lstm_cell_47/mul:z:0,sequential_16/lstm_47/lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_16/lstm_47/lstm_cell_47/add_1Ì
,sequential_16/lstm_47/lstm_cell_47/Sigmoid_2Sigmoid1sequential_16/lstm_47/lstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_16/lstm_47/lstm_cell_47/Sigmoid_2¾
)sequential_16/lstm_47/lstm_cell_47/Relu_1Relu,sequential_16/lstm_47/lstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_16/lstm_47/lstm_cell_47/Relu_1ø
(sequential_16/lstm_47/lstm_cell_47/mul_2Mul0sequential_16/lstm_47/lstm_cell_47/Sigmoid_2:y:07sequential_16/lstm_47/lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_16/lstm_47/lstm_cell_47/mul_2»
3sequential_16/lstm_47/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_16/lstm_47/TensorArrayV2_1/element_shape
%sequential_16/lstm_47/TensorArrayV2_1TensorListReserve<sequential_16/lstm_47/TensorArrayV2_1/element_shape:output:0.sequential_16/lstm_47/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_16/lstm_47/TensorArrayV2_1z
sequential_16/lstm_47/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_16/lstm_47/time«
.sequential_16/lstm_47/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_16/lstm_47/while/maximum_iterations
(sequential_16/lstm_47/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_16/lstm_47/while/loop_counterÕ
sequential_16/lstm_47/whileWhile1sequential_16/lstm_47/while/loop_counter:output:07sequential_16/lstm_47/while/maximum_iterations:output:0#sequential_16/lstm_47/time:output:0.sequential_16/lstm_47/TensorArrayV2_1:handle:0$sequential_16/lstm_47/zeros:output:0&sequential_16/lstm_47/zeros_1:output:0.sequential_16/lstm_47/strided_slice_1:output:0Msequential_16/lstm_47/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_16_lstm_47_lstm_cell_47_matmul_readvariableop_resourceCsequential_16_lstm_47_lstm_cell_47_matmul_1_readvariableop_resourceBsequential_16_lstm_47_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_16_lstm_47_while_body_428577*3
cond+R)
'sequential_16_lstm_47_while_cond_428576*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_16/lstm_47/whileá
Fsequential_16/lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_16/lstm_47/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_16/lstm_47/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_16/lstm_47/while:output:3Osequential_16/lstm_47/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_16/lstm_47/TensorArrayV2Stack/TensorListStack­
+sequential_16/lstm_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_16/lstm_47/strided_slice_3/stack¨
-sequential_16/lstm_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_16/lstm_47/strided_slice_3/stack_1¨
-sequential_16/lstm_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_16/lstm_47/strided_slice_3/stack_2
%sequential_16/lstm_47/strided_slice_3StridedSliceAsequential_16/lstm_47/TensorArrayV2Stack/TensorListStack:tensor:04sequential_16/lstm_47/strided_slice_3/stack:output:06sequential_16/lstm_47/strided_slice_3/stack_1:output:06sequential_16/lstm_47/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_16/lstm_47/strided_slice_3¥
&sequential_16/lstm_47/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_16/lstm_47/transpose_1/permý
!sequential_16/lstm_47/transpose_1	TransposeAsequential_16/lstm_47/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_16/lstm_47/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_16/lstm_47/transpose_1
sequential_16/lstm_47/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_16/lstm_47/runtime´
!sequential_16/dropout_27/IdentityIdentity.sequential_16/lstm_47/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_16/dropout_27/IdentityÒ
,sequential_16/dense_46/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_16/dense_46/MatMul/ReadVariableOpÜ
sequential_16/dense_46/MatMulMatMul*sequential_16/dropout_27/Identity:output:04sequential_16/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_16/dense_46/MatMulÑ
-sequential_16/dense_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_16/dense_46/BiasAdd/ReadVariableOpÝ
sequential_16/dense_46/BiasAddBiasAdd'sequential_16/dense_46/MatMul:product:05sequential_16/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_16/dense_46/BiasAdd
sequential_16/dense_46/ReluRelu'sequential_16/dense_46/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_16/dense_46/ReluÒ
,sequential_16/dense_47/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_16/dense_47/MatMul/ReadVariableOpÛ
sequential_16/dense_47/MatMulMatMul)sequential_16/dense_46/Relu:activations:04sequential_16/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_16/dense_47/MatMulÑ
-sequential_16/dense_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_16/dense_47/BiasAdd/ReadVariableOpÝ
sequential_16/dense_47/BiasAddBiasAdd'sequential_16/dense_47/MatMul:product:05sequential_16/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_16/dense_47/BiasAdd
sequential_16/reshape_23/ShapeShape'sequential_16/dense_47/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_16/reshape_23/Shape¦
,sequential_16/reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_16/reshape_23/strided_slice/stackª
.sequential_16/reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_16/reshape_23/strided_slice/stack_1ª
.sequential_16/reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_16/reshape_23/strided_slice/stack_2ø
&sequential_16/reshape_23/strided_sliceStridedSlice'sequential_16/reshape_23/Shape:output:05sequential_16/reshape_23/strided_slice/stack:output:07sequential_16/reshape_23/strided_slice/stack_1:output:07sequential_16/reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_16/reshape_23/strided_slice
(sequential_16/reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_16/reshape_23/Reshape/shape/1
(sequential_16/reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_16/reshape_23/Reshape/shape/2
&sequential_16/reshape_23/Reshape/shapePack/sequential_16/reshape_23/strided_slice:output:01sequential_16/reshape_23/Reshape/shape/1:output:01sequential_16/reshape_23/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_16/reshape_23/Reshape/shapeß
 sequential_16/reshape_23/ReshapeReshape'sequential_16/dense_47/BiasAdd:output:0/sequential_16/reshape_23/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_16/reshape_23/Reshape
IdentityIdentity)sequential_16/reshape_23/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp/^sequential_16/conv1d_10/BiasAdd/ReadVariableOp;^sequential_16/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp/^sequential_16/conv1d_11/BiasAdd/ReadVariableOp;^sequential_16/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp.^sequential_16/dense_46/BiasAdd/ReadVariableOp-^sequential_16/dense_46/MatMul/ReadVariableOp.^sequential_16/dense_47/BiasAdd/ReadVariableOp-^sequential_16/dense_47/MatMul/ReadVariableOp:^sequential_16/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp9^sequential_16/lstm_46/lstm_cell_46/MatMul/ReadVariableOp;^sequential_16/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp^sequential_16/lstm_46/while:^sequential_16/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp9^sequential_16/lstm_47/lstm_cell_47/MatMul/ReadVariableOp;^sequential_16/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp^sequential_16/lstm_47/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2`
.sequential_16/conv1d_10/BiasAdd/ReadVariableOp.sequential_16/conv1d_10/BiasAdd/ReadVariableOp2x
:sequential_16/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp:sequential_16/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp2`
.sequential_16/conv1d_11/BiasAdd/ReadVariableOp.sequential_16/conv1d_11/BiasAdd/ReadVariableOp2x
:sequential_16/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp:sequential_16/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_16/dense_46/BiasAdd/ReadVariableOp-sequential_16/dense_46/BiasAdd/ReadVariableOp2\
,sequential_16/dense_46/MatMul/ReadVariableOp,sequential_16/dense_46/MatMul/ReadVariableOp2^
-sequential_16/dense_47/BiasAdd/ReadVariableOp-sequential_16/dense_47/BiasAdd/ReadVariableOp2\
,sequential_16/dense_47/MatMul/ReadVariableOp,sequential_16/dense_47/MatMul/ReadVariableOp2v
9sequential_16/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp9sequential_16/lstm_46/lstm_cell_46/BiasAdd/ReadVariableOp2t
8sequential_16/lstm_46/lstm_cell_46/MatMul/ReadVariableOp8sequential_16/lstm_46/lstm_cell_46/MatMul/ReadVariableOp2x
:sequential_16/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp:sequential_16/lstm_46/lstm_cell_46/MatMul_1/ReadVariableOp2:
sequential_16/lstm_46/whilesequential_16/lstm_46/while2v
9sequential_16/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp9sequential_16/lstm_47/lstm_cell_47/BiasAdd/ReadVariableOp2t
8sequential_16/lstm_47/lstm_cell_47/MatMul/ReadVariableOp8sequential_16/lstm_47/lstm_cell_47/MatMul/ReadVariableOp2x
:sequential_16/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp:sequential_16/lstm_47/lstm_cell_47/MatMul_1/ReadVariableOp2:
sequential_16/lstm_47/whilesequential_16/lstm_47/while:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameconv1d_10_input
Æ

ã
lstm_46_while_cond_431661,
(lstm_46_while_lstm_46_while_loop_counter2
.lstm_46_while_lstm_46_while_maximum_iterations
lstm_46_while_placeholder
lstm_46_while_placeholder_1
lstm_46_while_placeholder_2
lstm_46_while_placeholder_3.
*lstm_46_while_less_lstm_46_strided_slice_1D
@lstm_46_while_lstm_46_while_cond_431661___redundant_placeholder0D
@lstm_46_while_lstm_46_while_cond_431661___redundant_placeholder1D
@lstm_46_while_lstm_46_while_cond_431661___redundant_placeholder2D
@lstm_46_while_lstm_46_while_cond_431661___redundant_placeholder3
lstm_46_while_identity

lstm_46/while/LessLesslstm_46_while_placeholder*lstm_46_while_less_lstm_46_strided_slice_1*
T0*
_output_shapes
: 2
lstm_46/while/Lessu
lstm_46/while/IdentityIdentitylstm_46/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_46/while/Identity"9
lstm_46_while_identitylstm_46/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
×[

C__inference_lstm_46_layer_call_and_return_conditional_losses_432504

inputs=
+lstm_cell_46_matmul_readvariableop_resource:@?
-lstm_cell_46_matmul_1_readvariableop_resource::
,lstm_cell_46_biasadd_readvariableop_resource:
identity¢#lstm_cell_46/BiasAdd/ReadVariableOp¢"lstm_cell_46/MatMul/ReadVariableOp¢$lstm_cell_46/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
"lstm_cell_46/MatMul/ReadVariableOpReadVariableOp+lstm_cell_46_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02$
"lstm_cell_46/MatMul/ReadVariableOp¬
lstm_cell_46/MatMulMatMulstrided_slice_2:output:0*lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMulº
$lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_46_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_46/MatMul_1/ReadVariableOp¨
lstm_cell_46/MatMul_1MatMulzeros:output:0,lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/MatMul_1
lstm_cell_46/addAddV2lstm_cell_46/MatMul:product:0lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add³
#lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_46/BiasAdd/ReadVariableOp¬
lstm_cell_46/BiasAddBiasAddlstm_cell_46/add:z:0+lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/BiasAdd~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dimó
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_46/split
lstm_cell_46/SigmoidSigmoidlstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_1
lstm_cell_46/mulMullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul}
lstm_cell_46/ReluRelulstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu
lstm_cell_46/mul_1Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_1
lstm_cell_46/add_1AddV2lstm_cell_46/mul:z:0lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/add_1
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Sigmoid_2|
lstm_cell_46/Relu_1Relulstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/Relu_1 
lstm_cell_46/mul_2Mullstm_cell_46/Sigmoid_2:y:0!lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_46/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_46_matmul_readvariableop_resource-lstm_cell_46_matmul_1_readvariableop_resource,lstm_cell_46_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_432420*
condR
while_cond_432419*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_46/BiasAdd/ReadVariableOp#^lstm_cell_46/MatMul/ReadVariableOp%^lstm_cell_46/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_46/BiasAdd/ReadVariableOp#lstm_cell_46/BiasAdd/ReadVariableOp2H
"lstm_cell_46/MatMul/ReadVariableOp"lstm_cell_46/MatMul/ReadVariableOp2L
$lstm_cell_46/MatMul_1/ReadVariableOp$lstm_cell_46/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
?
Ê
while_body_432420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_46_matmul_readvariableop_resource_0:@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_46_matmul_readvariableop_resource:@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@
2while_lstm_cell_46_biasadd_readvariableop_resource:¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_46/MatMul/ReadVariableOpÖ
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMulÎ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_46/MatMul_1/ReadVariableOp¿
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMul_1·
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/addÇ
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_46/BiasAdd/ReadVariableOpÄ
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/BiasAdd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_46/split
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_1 
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu´
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_1©
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/add_1
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_2
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu_1¸
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
é

H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_428787

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
?
Ê
while_body_430098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_46_matmul_readvariableop_resource_0:@G
5while_lstm_cell_46_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_46_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_46_matmul_readvariableop_resource:@E
3while_lstm_cell_46_matmul_1_readvariableop_resource:@
2while_lstm_cell_46_biasadd_readvariableop_resource:¢)while/lstm_cell_46/BiasAdd/ReadVariableOp¢(while/lstm_cell_46/MatMul/ReadVariableOp¢*while/lstm_cell_46/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_46/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_46_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype02*
(while/lstm_cell_46/MatMul/ReadVariableOpÖ
while/lstm_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMulÎ
*while/lstm_cell_46/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_46_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_46/MatMul_1/ReadVariableOp¿
while/lstm_cell_46/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/MatMul_1·
while/lstm_cell_46/addAddV2#while/lstm_cell_46/MatMul:product:0%while/lstm_cell_46/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/addÇ
)while/lstm_cell_46/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_46_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_46/BiasAdd/ReadVariableOpÄ
while/lstm_cell_46/BiasAddBiasAddwhile/lstm_cell_46/add:z:01while/lstm_cell_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/BiasAdd
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0#while/lstm_cell_46/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_46/split
while/lstm_cell_46/SigmoidSigmoid!while/lstm_cell_46/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid
while/lstm_cell_46/Sigmoid_1Sigmoid!while/lstm_cell_46/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_1 
while/lstm_cell_46/mulMul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul
while/lstm_cell_46/ReluRelu!while/lstm_cell_46/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu´
while/lstm_cell_46/mul_1Mulwhile/lstm_cell_46/Sigmoid:y:0%while/lstm_cell_46/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_1©
while/lstm_cell_46/add_1AddV2while/lstm_cell_46/mul:z:0while/lstm_cell_46/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/add_1
while/lstm_cell_46/Sigmoid_2Sigmoid!while/lstm_cell_46/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Sigmoid_2
while/lstm_cell_46/Relu_1Reluwhile/lstm_cell_46/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/Relu_1¸
while/lstm_cell_46/mul_2Mul while/lstm_cell_46/Sigmoid_2:y:0'while/lstm_cell_46/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_46/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_46/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_46/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_46/BiasAdd/ReadVariableOp)^while/lstm_cell_46/MatMul/ReadVariableOp+^while/lstm_cell_46/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_46_biasadd_readvariableop_resource4while_lstm_cell_46_biasadd_readvariableop_resource_0"l
3while_lstm_cell_46_matmul_1_readvariableop_resource5while_lstm_cell_46_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_46_matmul_readvariableop_resource3while_lstm_cell_46_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_46/BiasAdd/ReadVariableOp)while/lstm_cell_46/BiasAdd/ReadVariableOp2T
(while/lstm_cell_46/MatMul/ReadVariableOp(while/lstm_cell_46/MatMul/ReadVariableOp2X
*while/lstm_cell_46/MatMul_1/ReadVariableOp*while/lstm_cell_46/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ü[

C__inference_lstm_47_layer_call_and_return_conditional_losses_430347

inputs=
+lstm_cell_47_matmul_readvariableop_resource:?
-lstm_cell_47_matmul_1_readvariableop_resource::
,lstm_cell_47_biasadd_readvariableop_resource:
identity¢#lstm_cell_47/BiasAdd/ReadVariableOp¢"lstm_cell_47/MatMul/ReadVariableOp¢$lstm_cell_47/MatMul_1/ReadVariableOp¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_47/MatMul/ReadVariableOp¬
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMulº
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_47/MatMul_1/ReadVariableOp¨
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/MatMul_1
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add³
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_47/BiasAdd/ReadVariableOp¬
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/BiasAdd~
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_47/split/split_dimó
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_47/split
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_1
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul}
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_1
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/add_1
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Sigmoid_2|
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/Relu_1 
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_47/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_430263*
condR
while_cond_430262*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

E__inference_conv1d_10_layer_call_and_return_conditional_losses_431956

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
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
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
e
F__inference_dropout_26_layer_call_and_return_conditional_losses_430684

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
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¸
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
F

C__inference_lstm_46_layer_call_and_return_conditional_losses_429080

inputs%
lstm_cell_46_428998:@%
lstm_cell_46_429000:!
lstm_cell_46_429002:
identity¢$lstm_cell_46/StatefulPartitionedCall¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_428998lstm_cell_46_429000lstm_cell_46_429002*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_4289332&
$lstm_cell_46/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_428998lstm_cell_46_429000lstm_cell_46_429002*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_429011*
condR
while_cond_429010*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¦

õ
D__inference_dense_47_layer_call_and_return_conditional_losses_430389

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
ó
-__inference_lstm_cell_46_layer_call_fn_433448

inputs
states_0
states_1
unknown:@
	unknown_0:
	unknown_1:
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_4289332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
³
ó
-__inference_lstm_cell_47_layer_call_fn_433546

inputs
states_0
states_1
unknown:
	unknown_0:
	unknown_1:
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
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_4295632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1

î
.__inference_sequential_16_layer_call_fn_431217

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

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
I__inference_sequential_16_layer_call_and_return_conditional_losses_4309622
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
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
L
0__inference_max_pooling1d_4_layer_call_fn_431986

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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4286962
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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_431999

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
¾/

I__inference_sequential_16_layer_call_and_return_conditional_losses_430411

inputs&
conv1d_10_429996: 
conv1d_10_429998: &
conv1d_11_430018: @
conv1d_11_430020:@ 
lstm_46_430183:@ 
lstm_46_430185:
lstm_46_430187: 
lstm_47_430348: 
lstm_47_430350:
lstm_47_430352:!
dense_46_430374:
dense_46_430376:!
dense_47_430390:
dense_47_430392:
identity¢!conv1d_10/StatefulPartitionedCall¢!conv1d_11/StatefulPartitionedCall¢ dense_46/StatefulPartitionedCall¢ dense_47/StatefulPartitionedCall¢lstm_46/StatefulPartitionedCall¢lstm_47/StatefulPartitionedCall
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_10_429996conv1d_10_429998*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_4299952#
!conv1d_10/StatefulPartitionedCallÁ
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0conv1d_11_430018conv1d_11_430020*
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
GPU 2J 8 *N
fIRG
E__inference_conv1d_11_layer_call_and_return_conditional_losses_4300172#
!conv1d_11/StatefulPartitionedCall
max_pooling1d_4/PartitionedCallPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0*
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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_4300302!
max_pooling1d_4/PartitionedCallÇ
lstm_46/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_4/PartitionedCall:output:0lstm_46_430183lstm_46_430185lstm_46_430187*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4301822!
lstm_46/StatefulPartitionedCall
dropout_26/PartitionedCallPartitionedCall(lstm_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_4301952
dropout_26/PartitionedCall¾
lstm_47/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0lstm_47_430348lstm_47_430350lstm_47_430352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_47_layer_call_and_return_conditional_losses_4303472!
lstm_47/StatefulPartitionedCallü
dropout_27/PartitionedCallPartitionedCall(lstm_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_4303602
dropout_27/PartitionedCall±
 dense_46/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_46_430374dense_46_430376*
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
D__inference_dense_46_layer_call_and_return_conditional_losses_4303732"
 dense_46/StatefulPartitionedCall·
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_430390dense_47_430392*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_4303892"
 dense_47/StatefulPartitionedCall
reshape_23/PartitionedCallPartitionedCall)dense_47/StatefulPartitionedCall:output:0*
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
F__inference_reshape_23_layer_call_and_return_conditional_losses_4304082
reshape_23/PartitionedCall
IdentityIdentity#reshape_23/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity 
NoOpNoOp"^conv1d_10/StatefulPartitionedCall"^conv1d_11/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall ^lstm_46/StatefulPartitionedCall ^lstm_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2B
lstm_46/StatefulPartitionedCalllstm_46/StatefulPartitionedCall2B
lstm_47/StatefulPartitionedCalllstm_47/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

E__inference_conv1d_11_layer_call_and_return_conditional_losses_431981

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
F

C__inference_lstm_47_layer_call_and_return_conditional_losses_429500

inputs%
lstm_cell_47_429418:%
lstm_cell_47_429420:!
lstm_cell_47_429422:
identity¢$lstm_cell_47/StatefulPartitionedCall¢whileD
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_429418lstm_cell_47_429420lstm_cell_47_429422*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_4294172&
$lstm_cell_47/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_429418lstm_cell_47_429420lstm_cell_47_429422*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_429431*
condR
while_cond_429430*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
g
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_430030

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
Ö
´
(__inference_lstm_46_layer_call_fn_432018
inputs_0
unknown:@
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_46_layer_call_and_return_conditional_losses_4288702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

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
inputs/0"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
O
conv1d_10_input<
!serving_default_conv1d_10_input:0ÿÿÿÿÿÿÿÿÿB

reshape_234
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Þ
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
&:$ 2conv1d_10/kernel
: 2conv1d_10/bias
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
&:$ @2conv1d_11/kernel
:@2conv1d_11/bias
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
!:2dense_46/kernel
:2dense_46/bias
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
!:2dense_47/kernel
:2dense_47/bias
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
-:+@2lstm_46/lstm_cell_46/kernel
7:52%lstm_46/lstm_cell_46/recurrent_kernel
':%2lstm_46/lstm_cell_46/bias
-:+2lstm_47/lstm_cell_47/kernel
7:52%lstm_47/lstm_cell_47/recurrent_kernel
':%2lstm_47/lstm_cell_47/bias
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
+:) 2Adam/conv1d_10/kernel/m
!: 2Adam/conv1d_10/bias/m
+:) @2Adam/conv1d_11/kernel/m
!:@2Adam/conv1d_11/bias/m
&:$2Adam/dense_46/kernel/m
 :2Adam/dense_46/bias/m
&:$2Adam/dense_47/kernel/m
 :2Adam/dense_47/bias/m
2:0@2"Adam/lstm_46/lstm_cell_46/kernel/m
<::2,Adam/lstm_46/lstm_cell_46/recurrent_kernel/m
,:*2 Adam/lstm_46/lstm_cell_46/bias/m
2:02"Adam/lstm_47/lstm_cell_47/kernel/m
<::2,Adam/lstm_47/lstm_cell_47/recurrent_kernel/m
,:*2 Adam/lstm_47/lstm_cell_47/bias/m
+:) 2Adam/conv1d_10/kernel/v
!: 2Adam/conv1d_10/bias/v
+:) @2Adam/conv1d_11/kernel/v
!:@2Adam/conv1d_11/bias/v
&:$2Adam/dense_46/kernel/v
 :2Adam/dense_46/bias/v
&:$2Adam/dense_47/kernel/v
 :2Adam/dense_47/bias/v
2:0@2"Adam/lstm_46/lstm_cell_46/kernel/v
<::2,Adam/lstm_46/lstm_cell_46/recurrent_kernel/v
,:*2 Adam/lstm_46/lstm_cell_46/bias/v
2:02"Adam/lstm_47/lstm_cell_47/kernel/v
<::2,Adam/lstm_47/lstm_cell_47/recurrent_kernel/v
,:*2 Adam/lstm_47/lstm_cell_47/bias/v
2
.__inference_sequential_16_layer_call_fn_430442
.__inference_sequential_16_layer_call_fn_431184
.__inference_sequential_16_layer_call_fn_431217
.__inference_sequential_16_layer_call_fn_431026À
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_431567
I__inference_sequential_16_layer_call_and_return_conditional_losses_431931
I__inference_sequential_16_layer_call_and_return_conditional_losses_431068
I__inference_sequential_16_layer_call_and_return_conditional_losses_431110À
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
ÔBÑ
!__inference__wrapped_model_428684conv1d_10_input"
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
Ô2Ñ
*__inference_conv1d_10_layer_call_fn_431940¢
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
E__inference_conv1d_10_layer_call_and_return_conditional_losses_431956¢
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
*__inference_conv1d_11_layer_call_fn_431965¢
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
E__inference_conv1d_11_layer_call_and_return_conditional_losses_431981¢
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
0__inference_max_pooling1d_4_layer_call_fn_431986
0__inference_max_pooling1d_4_layer_call_fn_431991¢
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
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_431999
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_432007¢
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
(__inference_lstm_46_layer_call_fn_432018
(__inference_lstm_46_layer_call_fn_432029
(__inference_lstm_46_layer_call_fn_432040
(__inference_lstm_46_layer_call_fn_432051Õ
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
C__inference_lstm_46_layer_call_and_return_conditional_losses_432202
C__inference_lstm_46_layer_call_and_return_conditional_losses_432353
C__inference_lstm_46_layer_call_and_return_conditional_losses_432504
C__inference_lstm_46_layer_call_and_return_conditional_losses_432655Õ
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
+__inference_dropout_26_layer_call_fn_432660
+__inference_dropout_26_layer_call_fn_432665´
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
F__inference_dropout_26_layer_call_and_return_conditional_losses_432670
F__inference_dropout_26_layer_call_and_return_conditional_losses_432682´
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
(__inference_lstm_47_layer_call_fn_432693
(__inference_lstm_47_layer_call_fn_432704
(__inference_lstm_47_layer_call_fn_432715
(__inference_lstm_47_layer_call_fn_432726Õ
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
C__inference_lstm_47_layer_call_and_return_conditional_losses_432877
C__inference_lstm_47_layer_call_and_return_conditional_losses_433028
C__inference_lstm_47_layer_call_and_return_conditional_losses_433179
C__inference_lstm_47_layer_call_and_return_conditional_losses_433330Õ
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
+__inference_dropout_27_layer_call_fn_433335
+__inference_dropout_27_layer_call_fn_433340´
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
F__inference_dropout_27_layer_call_and_return_conditional_losses_433345
F__inference_dropout_27_layer_call_and_return_conditional_losses_433357´
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
)__inference_dense_46_layer_call_fn_433366¢
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
D__inference_dense_46_layer_call_and_return_conditional_losses_433377¢
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
)__inference_dense_47_layer_call_fn_433386¢
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
D__inference_dense_47_layer_call_and_return_conditional_losses_433396¢
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
+__inference_reshape_23_layer_call_fn_433401¢
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
F__inference_reshape_23_layer_call_and_return_conditional_losses_433414¢
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
ÓBÐ
$__inference_signature_wrapper_431151conv1d_10_input"
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
-__inference_lstm_cell_46_layer_call_fn_433431
-__inference_lstm_cell_46_layer_call_fn_433448¾
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
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_433480
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_433512¾
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
-__inference_lstm_cell_47_layer_call_fn_433529
-__inference_lstm_cell_47_layer_call_fn_433546¾
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
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_433578
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_433610¾
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
 ±
!__inference__wrapped_model_428684JKLMNO56;<<¢9
2¢/
-*
conv1d_10_inputÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_23(%

reshape_23ÿÿÿÿÿÿÿÿÿ­
E__inference_conv1d_10_layer_call_and_return_conditional_losses_431956d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
*__inference_conv1d_10_layer_call_fn_431940W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ­
E__inference_conv1d_11_layer_call_and_return_conditional_losses_431981d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
*__inference_conv1d_11_layer_call_fn_431965W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@¤
D__inference_dense_46_layer_call_and_return_conditional_losses_433377\56/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_46_layer_call_fn_433366O56/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_47_layer_call_and_return_conditional_losses_433396\;</¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_47_layer_call_fn_433386O;</¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ®
F__inference_dropout_26_layer_call_and_return_conditional_losses_432670d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ®
F__inference_dropout_26_layer_call_and_return_conditional_losses_432682d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_26_layer_call_fn_432660W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_26_layer_call_fn_432665W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_27_layer_call_and_return_conditional_losses_433345\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¦
F__inference_dropout_27_layer_call_and_return_conditional_losses_433357\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dropout_27_layer_call_fn_433335O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ~
+__inference_dropout_27_layer_call_fn_433340O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÒ
C__inference_lstm_46_layer_call_and_return_conditional_losses_432202JKLO¢L
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
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
C__inference_lstm_46_layer_call_and_return_conditional_losses_432353JKLO¢L
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
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_46_layer_call_and_return_conditional_losses_432504qJKL?¢<
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
0ÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_46_layer_call_and_return_conditional_losses_432655qJKL?¢<
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
0ÿÿÿÿÿÿÿÿÿ
 ©
(__inference_lstm_46_layer_call_fn_432018}JKLO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
(__inference_lstm_46_layer_call_fn_432029}JKLO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(__inference_lstm_46_layer_call_fn_432040dJKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_46_layer_call_fn_432051dJKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_47_layer_call_and_return_conditional_losses_432877}MNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
C__inference_lstm_47_layer_call_and_return_conditional_losses_433028}MNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_47_layer_call_and_return_conditional_losses_433179mMNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
C__inference_lstm_47_layer_call_and_return_conditional_losses_433330mMNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_lstm_47_layer_call_fn_432693pMNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_47_layer_call_fn_432704pMNOO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_47_layer_call_fn_432715`MNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_47_layer_call_fn_432726`MNO?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_433480ýJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_433512ýJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 
-__inference_lstm_cell_46_layer_call_fn_433431íJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ
-__inference_lstm_cell_46_layer_call_fn_433448íJKL¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_433578ýMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_433610ýMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 
-__inference_lstm_cell_47_layer_call_fn_433529íMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ
-__inference_lstm_cell_47_layer_call_fn_433546íMNO¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÔ
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_431999E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
K__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_432007`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 «
0__inference_max_pooling1d_4_layer_call_fn_431986wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0__inference_max_pooling1d_4_layer_call_fn_431991S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@¦
F__inference_reshape_23_layer_call_and_return_conditional_losses_433414\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_reshape_23_layer_call_fn_433401O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÏ
I__inference_sequential_16_layer_call_and_return_conditional_losses_431068JKLMNO56;<D¢A
:¢7
-*
conv1d_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ï
I__inference_sequential_16_layer_call_and_return_conditional_losses_431110JKLMNO56;<D¢A
:¢7
-*
conv1d_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Å
I__inference_sequential_16_layer_call_and_return_conditional_losses_431567xJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Å
I__inference_sequential_16_layer_call_and_return_conditional_losses_431931xJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¦
.__inference_sequential_16_layer_call_fn_430442tJKLMNO56;<D¢A
:¢7
-*
conv1d_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¦
.__inference_sequential_16_layer_call_fn_431026tJKLMNO56;<D¢A
:¢7
-*
conv1d_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_16_layer_call_fn_431184kJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_16_layer_call_fn_431217kJKLMNO56;<;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÇ
$__inference_signature_wrapper_431151JKLMNO56;<O¢L
¢ 
EªB
@
conv1d_10_input-*
conv1d_10_inputÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_23(%

reshape_23ÿÿÿÿÿÿÿÿÿ