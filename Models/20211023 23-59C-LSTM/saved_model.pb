¾<
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Ë´:
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
: *
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
:@@* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:@@*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:@*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:@*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
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
lstm_13/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*,
shared_namelstm_13/lstm_cell_13/kernel

/lstm_13/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_13/kernel*
_output_shapes
:	@*
dtype0
§
%lstm_13/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *6
shared_name'%lstm_13/lstm_cell_13/recurrent_kernel
 
9lstm_13/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_13/lstm_cell_13/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_13/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_13/lstm_cell_13/bias

-lstm_13/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOplstm_13/lstm_cell_13/bias*
_output_shapes	
:*
dtype0

lstm_14/lstm_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *,
shared_namelstm_14/lstm_cell_14/kernel

/lstm_14/lstm_cell_14/kernel/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_14/kernel*
_output_shapes
:	 *
dtype0
§
%lstm_14/lstm_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*6
shared_name'%lstm_14/lstm_cell_14/recurrent_kernel
 
9lstm_14/lstm_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_14/lstm_cell_14/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_14/lstm_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_14/lstm_cell_14/bias

-lstm_14/lstm_cell_14/bias/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_14/bias*
_output_shapes	
:*
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
shape: *'
shared_nameAdam/conv1d_4/kernel/m

*Adam/conv1d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/m*"
_output_shapes
: *
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
:@@*'
shared_nameAdam/dense_16/kernel/m

*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes

:@@*
dtype0

Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_16/bias/m
y
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

:@*
dtype0

Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_13/lstm_cell_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*3
shared_name$"Adam/lstm_13/lstm_cell_13/kernel/m

6Adam/lstm_13/lstm_cell_13/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_13/lstm_cell_13/kernel/m*
_output_shapes
:	@*
dtype0
µ
,Adam/lstm_13/lstm_cell_13/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m
®
@Adam/lstm_13/lstm_cell_13/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

 Adam/lstm_13/lstm_cell_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_13/lstm_cell_13/bias/m

4Adam/lstm_13/lstm_cell_13/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_13/lstm_cell_13/bias/m*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_14/lstm_cell_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_14/lstm_cell_14/kernel/m

6Adam/lstm_14/lstm_cell_14/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_14/lstm_cell_14/kernel/m*
_output_shapes
:	 *
dtype0
µ
,Adam/lstm_14/lstm_cell_14/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m
®
@Adam/lstm_14/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

 Adam/lstm_14/lstm_cell_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_14/lstm_cell_14/bias/m

4Adam/lstm_14/lstm_cell_14/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_14/lstm_cell_14/bias/m*
_output_shapes	
:*
dtype0

Adam/conv1d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_4/kernel/v

*Adam/conv1d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/v*"
_output_shapes
: *
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
:@@*'
shared_nameAdam/dense_16/kernel/v

*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes

:@@*
dtype0

Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_16/bias/v
y
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

:@*
dtype0

Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_13/lstm_cell_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*3
shared_name$"Adam/lstm_13/lstm_cell_13/kernel/v

6Adam/lstm_13/lstm_cell_13/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_13/lstm_cell_13/kernel/v*
_output_shapes
:	@*
dtype0
µ
,Adam/lstm_13/lstm_cell_13/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v
®
@Adam/lstm_13/lstm_cell_13/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

 Adam/lstm_13/lstm_cell_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_13/lstm_cell_13/bias/v

4Adam/lstm_13/lstm_cell_13/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_13/lstm_cell_13/bias/v*
_output_shapes	
:*
dtype0
¡
"Adam/lstm_14/lstm_cell_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_14/lstm_cell_14/kernel/v

6Adam/lstm_14/lstm_cell_14/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_14/lstm_cell_14/kernel/v*
_output_shapes
:	 *
dtype0
µ
,Adam/lstm_14/lstm_cell_14/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v
®
@Adam/lstm_14/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

 Adam/lstm_14/lstm_cell_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_14/lstm_cell_14/bias/v

4Adam/lstm_14/lstm_cell_14/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_14/lstm_cell_14/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
ÿN
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ºN
value°NB­N B¦N
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

	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell
 
state_spec
!	variables
"trainable_variables
#regularization_losses
$	keras_api
l
%cell
&
state_spec
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api
Ø
;iter

<beta_1

=beta_2
	>decay
?learning_ratemmmm+m,m1m2m@mAmBmCmDmEmvvvv+v ,v¡1v¢2v£@v¤Av¥Bv¦Cv§Dv¨Ev©
f
0
1
2
3
@4
A5
B6
C7
D8
E9
+10
,11
112
213
f
0
1
2
3
@4
A5
B6
C7
D8
E9
+10
,11
112
213
 
­

	variables
trainable_variables
Flayer_metrics

Glayers
Hlayer_regularization_losses
regularization_losses
Inon_trainable_variables
Jmetrics
 
[Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
	variables
trainable_variables
Klayer_metrics

Llayers
Mlayer_regularization_losses
regularization_losses
Nnon_trainable_variables
Ometrics
[Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
	variables
trainable_variables
Player_metrics

Qlayers
Rlayer_regularization_losses
regularization_losses
Snon_trainable_variables
Tmetrics
 
 
 
­
	variables
trainable_variables
Ulayer_metrics

Vlayers
Wlayer_regularization_losses
regularization_losses
Xnon_trainable_variables
Ymetrics

Z
state_size

@kernel
Arecurrent_kernel
Bbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
 

@0
A1
B2

@0
A1
B2
 
¹

_states
!	variables
"trainable_variables
`layer_metrics

alayers
blayer_regularization_losses
#regularization_losses
cnon_trainable_variables
dmetrics

e
state_size

Ckernel
Drecurrent_kernel
Ebias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
 

C0
D1
E2

C0
D1
E2
 
¹

jstates
'	variables
(trainable_variables
klayer_metrics

llayers
mlayer_regularization_losses
)regularization_losses
nnon_trainable_variables
ometrics
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
­
-	variables
.trainable_variables
player_metrics

qlayers
rlayer_regularization_losses
/regularization_losses
snon_trainable_variables
tmetrics
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
­
3	variables
4trainable_variables
ulayer_metrics

vlayers
wlayer_regularization_losses
5regularization_losses
xnon_trainable_variables
ymetrics
 
 
 
­
7	variables
8trainable_variables
zlayer_metrics

{layers
|layer_regularization_losses
9regularization_losses
}non_trainable_variables
~metrics
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
WU
VARIABLE_VALUElstm_13/lstm_cell_13/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_13/lstm_cell_13/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_13/lstm_cell_13/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_14/lstm_cell_14/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_14/lstm_cell_14/recurrent_kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_14/lstm_cell_14/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
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
0
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
@0
A1
B2

@0
A1
B2
 
²
[	variables
\trainable_variables
layer_metrics
layers
 layer_regularization_losses
]regularization_losses
non_trainable_variables
metrics
 
 

0
 
 
 
 

C0
D1
E2

C0
D1
E2
 
²
f	variables
gtrainable_variables
layer_metrics
layers
 layer_regularization_losses
hregularization_losses
non_trainable_variables
metrics
 
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
8

total

count
	variables
	keras_api
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
0
1

	variables
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
zx
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_13/lstm_cell_13/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_13/lstm_cell_13/recurrent_kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_13/lstm_cell_13/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_14/lstm_cell_14/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_14/lstm_cell_14/recurrent_kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_14/lstm_cell_14/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
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
zx
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_13/lstm_cell_13/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_13/lstm_cell_13/recurrent_kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_13/lstm_cell_13/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_14/lstm_cell_14/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_14/lstm_cell_14/recurrent_kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_14/lstm_cell_14/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv1d_4_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_4_inputconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biaslstm_13/lstm_cell_13/kernel%lstm_13/lstm_cell_13/recurrent_kernellstm_13/lstm_cell_13/biaslstm_14/lstm_cell_14/kernellstm_14/lstm_cell_14/bias%lstm_14/lstm_cell_14/recurrent_kerneldense_16/kerneldense_16/biasdense_17/kerneldense_17/bias*
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
$__inference_signature_wrapper_426612
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ñ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_4/kernel/Read/ReadVariableOp!conv1d_4/bias/Read/ReadVariableOp#conv1d_5/kernel/Read/ReadVariableOp!conv1d_5/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_13/lstm_cell_13/kernel/Read/ReadVariableOp9lstm_13/lstm_cell_13/recurrent_kernel/Read/ReadVariableOp-lstm_13/lstm_cell_13/bias/Read/ReadVariableOp/lstm_14/lstm_cell_14/kernel/Read/ReadVariableOp9lstm_14/lstm_cell_14/recurrent_kernel/Read/ReadVariableOp-lstm_14/lstm_cell_14/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_4/kernel/m/Read/ReadVariableOp(Adam/conv1d_4/bias/m/Read/ReadVariableOp*Adam/conv1d_5/kernel/m/Read/ReadVariableOp(Adam/conv1d_5/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp6Adam/lstm_13/lstm_cell_13/kernel/m/Read/ReadVariableOp@Adam/lstm_13/lstm_cell_13/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_13/lstm_cell_13/bias/m/Read/ReadVariableOp6Adam/lstm_14/lstm_cell_14/kernel/m/Read/ReadVariableOp@Adam/lstm_14/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_14/lstm_cell_14/bias/m/Read/ReadVariableOp*Adam/conv1d_4/kernel/v/Read/ReadVariableOp(Adam/conv1d_4/bias/v/Read/ReadVariableOp*Adam/conv1d_5/kernel/v/Read/ReadVariableOp(Adam/conv1d_5/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp6Adam/lstm_13/lstm_cell_13/kernel/v/Read/ReadVariableOp@Adam/lstm_13/lstm_cell_13/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_13/lstm_cell_13/bias/v/Read/ReadVariableOp6Adam/lstm_14/lstm_cell_14/kernel/v/Read/ReadVariableOp@Adam/lstm_14/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_14/lstm_cell_14/bias/v/Read/ReadVariableOpConst*>
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
__inference__traced_save_430136

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_13/lstm_cell_13/kernel%lstm_13/lstm_cell_13/recurrent_kernellstm_13/lstm_cell_13/biaslstm_14/lstm_cell_14/kernel%lstm_14/lstm_cell_14/recurrent_kernellstm_14/lstm_cell_14/biastotalcountAdam/conv1d_4/kernel/mAdam/conv1d_4/bias/mAdam/conv1d_5/kernel/mAdam/conv1d_5/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/m"Adam/lstm_13/lstm_cell_13/kernel/m,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m Adam/lstm_13/lstm_cell_13/bias/m"Adam/lstm_14/lstm_cell_14/kernel/m,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m Adam/lstm_14/lstm_cell_14/bias/mAdam/conv1d_4/kernel/vAdam/conv1d_4/bias/vAdam/conv1d_5/kernel/vAdam/conv1d_5/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/v"Adam/lstm_13/lstm_cell_13/kernel/v,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v Adam/lstm_13/lstm_cell_13/bias/v"Adam/lstm_14/lstm_cell_14/kernel/v,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v Adam/lstm_14/lstm_cell_14/bias/v*=
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
"__inference__traced_restore_430293¹Ö8
³
¤	
while_body_428773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_14_split_readvariableop_resource_0:	 C
4while_lstm_cell_14_split_1_readvariableop_resource_0:	?
,while_lstm_cell_14_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_14_split_readvariableop_resource:	 A
2while_lstm_cell_14_split_1_readvariableop_resource:	=
*while_lstm_cell_14_readvariableop_resource:	@¢!while/lstm_cell_14/ReadVariableOp¢#while/lstm_cell_14/ReadVariableOp_1¢#while/lstm_cell_14/ReadVariableOp_2¢#while/lstm_cell_14/ReadVariableOp_3¢'while/lstm_cell_14/split/ReadVariableOp¢)while/lstm_cell_14/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_14/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_14/ones_like/Shape
"while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_14/ones_like/ConstÐ
while/lstm_cell_14/ones_likeFill+while/lstm_cell_14/ones_like/Shape:output:0+while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/ones_like
 while/lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2"
 while/lstm_cell_14/dropout/ConstË
while/lstm_cell_14/dropout/MulMul%while/lstm_cell_14/ones_like:output:0)while/lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_14/dropout/Mul
 while/lstm_cell_14/dropout/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_14/dropout/Shape
7while/lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2Ç:29
7while/lstm_cell_14/dropout/random_uniform/RandomUniform
)while/lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2+
)while/lstm_cell_14/dropout/GreaterEqual/y
'while/lstm_cell_14/dropout/GreaterEqualGreaterEqual@while/lstm_cell_14/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'while/lstm_cell_14/dropout/GreaterEqual¸
while/lstm_cell_14/dropout/CastCast+while/lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/lstm_cell_14/dropout/CastÆ
 while/lstm_cell_14/dropout/Mul_1Mul"while/lstm_cell_14/dropout/Mul:z:0#while/lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout/Mul_1
"while/lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_1/ConstÑ
 while/lstm_cell_14/dropout_1/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_1/Mul
"while/lstm_cell_14/dropout_1/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_1/Shape
9while/lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ºÝ2;
9while/lstm_cell_14/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_1/GreaterEqual/y
)while/lstm_cell_14/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_1/GreaterEqual¾
!while/lstm_cell_14/dropout_1/CastCast-while/lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_1/CastÎ
"while/lstm_cell_14/dropout_1/Mul_1Mul$while/lstm_cell_14/dropout_1/Mul:z:0%while/lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_1/Mul_1
"while/lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_2/ConstÑ
 while/lstm_cell_14/dropout_2/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_2/Mul
"while/lstm_cell_14/dropout_2/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_2/Shape
9while/lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2Ý62;
9while/lstm_cell_14/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_2/GreaterEqual/y
)while/lstm_cell_14/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_2/GreaterEqual¾
!while/lstm_cell_14/dropout_2/CastCast-while/lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_2/CastÎ
"while/lstm_cell_14/dropout_2/Mul_1Mul$while/lstm_cell_14/dropout_2/Mul:z:0%while/lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_2/Mul_1
"while/lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_3/ConstÑ
 while/lstm_cell_14/dropout_3/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_3/Mul
"while/lstm_cell_14/dropout_3/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_3/Shape
9while/lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2®2;
9while/lstm_cell_14/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_3/GreaterEqual/y
)while/lstm_cell_14/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_3/GreaterEqual¾
!while/lstm_cell_14/dropout_3/CastCast-while/lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_3/CastÎ
"while/lstm_cell_14/dropout_3/Mul_1Mul$while/lstm_cell_14/dropout_3/Mul:z:0%while/lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_3/Mul_1
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dimÆ
'while/lstm_cell_14/split/ReadVariableOpReadVariableOp2while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype02)
'while/lstm_cell_14/split/ReadVariableOpó
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
while/lstm_cell_14/splitÇ
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMulË
while/lstm_cell_14/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_1Ë
while/lstm_cell_14/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_2Ë
while/lstm_cell_14/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_3
$while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_14/split_1/split_dimÈ
)while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_14/split_1/ReadVariableOpë
while/lstm_cell_14/split_1Split-while/lstm_cell_14/split_1/split_dim:output:01while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_14/split_1¿
while/lstm_cell_14/BiasAddBiasAdd#while/lstm_cell_14/MatMul:product:0#while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAddÅ
while/lstm_cell_14/BiasAdd_1BiasAdd%while/lstm_cell_14/MatMul_1:product:0#while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_1Å
while/lstm_cell_14/BiasAdd_2BiasAdd%while/lstm_cell_14/MatMul_2:product:0#while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_2Å
while/lstm_cell_14/BiasAdd_3BiasAdd%while/lstm_cell_14/MatMul_3:product:0#while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_3¤
while/lstm_cell_14/mulMulwhile_placeholder_2$while/lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mulª
while/lstm_cell_14/mul_1Mulwhile_placeholder_2&while/lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_1ª
while/lstm_cell_14/mul_2Mulwhile_placeholder_2&while/lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_2ª
while/lstm_cell_14/mul_3Mulwhile_placeholder_2&while/lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_3´
!while/lstm_cell_14/ReadVariableOpReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02#
!while/lstm_cell_14/ReadVariableOp¡
&while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_14/strided_slice/stack¥
(while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice/stack_1¥
(while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_14/strided_slice/stack_2î
 while/lstm_cell_14/strided_sliceStridedSlice)while/lstm_cell_14/ReadVariableOp:value:0/while/lstm_cell_14/strided_slice/stack:output:01while/lstm_cell_14/strided_slice/stack_1:output:01while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 while/lstm_cell_14/strided_slice½
while/lstm_cell_14/MatMul_4MatMulwhile/lstm_cell_14/mul:z:0)while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_4·
while/lstm_cell_14/addAddV2#while/lstm_cell_14/BiasAdd:output:0%while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add
while/lstm_cell_14/SigmoidSigmoidwhile/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid¸
#while/lstm_cell_14/ReadVariableOp_1ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_1¥
(while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice_1/stack©
*while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*while/lstm_cell_14/strided_slice_1/stack_1©
*while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_1/stack_2ú
"while/lstm_cell_14/strided_slice_1StridedSlice+while/lstm_cell_14/ReadVariableOp_1:value:01while/lstm_cell_14/strided_slice_1/stack:output:03while/lstm_cell_14/strided_slice_1/stack_1:output:03while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_1Á
while/lstm_cell_14/MatMul_5MatMulwhile/lstm_cell_14/mul_1:z:0+while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_5½
while/lstm_cell_14/add_1AddV2%while/lstm_cell_14/BiasAdd_1:output:0%while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_1
while/lstm_cell_14/Sigmoid_1Sigmoidwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_1¤
while/lstm_cell_14/mul_4Mul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_4¸
#while/lstm_cell_14/ReadVariableOp_2ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_2¥
(while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(while/lstm_cell_14/strided_slice_2/stack©
*while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2,
*while/lstm_cell_14/strided_slice_2/stack_1©
*while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_2/stack_2ú
"while/lstm_cell_14/strided_slice_2StridedSlice+while/lstm_cell_14/ReadVariableOp_2:value:01while/lstm_cell_14/strided_slice_2/stack:output:03while/lstm_cell_14/strided_slice_2/stack_1:output:03while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_2Á
while/lstm_cell_14/MatMul_6MatMulwhile/lstm_cell_14/mul_2:z:0+while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_6½
while/lstm_cell_14/add_2AddV2%while/lstm_cell_14/BiasAdd_2:output:0%while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_2
while/lstm_cell_14/ReluReluwhile/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu´
while/lstm_cell_14/mul_5Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_5«
while/lstm_cell_14/add_3AddV2while/lstm_cell_14/mul_4:z:0while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_3¸
#while/lstm_cell_14/ReadVariableOp_3ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_3¥
(while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2*
(while/lstm_cell_14/strided_slice_3/stack©
*while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_14/strided_slice_3/stack_1©
*while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_3/stack_2ú
"while/lstm_cell_14/strided_slice_3StridedSlice+while/lstm_cell_14/ReadVariableOp_3:value:01while/lstm_cell_14/strided_slice_3/stack:output:03while/lstm_cell_14/strided_slice_3/stack_1:output:03while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_3Á
while/lstm_cell_14/MatMul_7MatMulwhile/lstm_cell_14/mul_3:z:0+while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_7½
while/lstm_cell_14/add_4AddV2%while/lstm_cell_14/BiasAdd_3:output:0%while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_4
while/lstm_cell_14/Sigmoid_2Sigmoidwhile/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_2
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu_1¸
while/lstm_cell_14/mul_6Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_14/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_14/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_14/ReadVariableOp$^while/lstm_cell_14/ReadVariableOp_1$^while/lstm_cell_14/ReadVariableOp_2$^while/lstm_cell_14/ReadVariableOp_3(^while/lstm_cell_14/split/ReadVariableOp*^while/lstm_cell_14/split_1/ReadVariableOp*"
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
*while_lstm_cell_14_readvariableop_resource,while_lstm_cell_14_readvariableop_resource_0"j
2while_lstm_cell_14_split_1_readvariableop_resource4while_lstm_cell_14_split_1_readvariableop_resource_0"f
0while_lstm_cell_14_split_readvariableop_resource2while_lstm_cell_14_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_14/ReadVariableOp!while/lstm_cell_14/ReadVariableOp2J
#while/lstm_cell_14/ReadVariableOp_1#while/lstm_cell_14/ReadVariableOp_12J
#while/lstm_cell_14/ReadVariableOp_2#while/lstm_cell_14/ReadVariableOp_22J
#while/lstm_cell_14/ReadVariableOp_3#while/lstm_cell_14/ReadVariableOp_32R
'while/lstm_cell_14/split/ReadVariableOp'while/lstm_cell_14/split/ReadVariableOp2V
)while/lstm_cell_14/split_1/ReadVariableOp)while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Õ
Ã
while_cond_423823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_423823___redundant_placeholder04
0while_while_cond_423823___redundant_placeholder14
0while_while_cond_423823___redundant_placeholder24
0while_while_cond_423823___redundant_placeholder3
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
Æ¶

&sequential_5_lstm_14_while_body_423558F
Bsequential_5_lstm_14_while_sequential_5_lstm_14_while_loop_counterL
Hsequential_5_lstm_14_while_sequential_5_lstm_14_while_maximum_iterations*
&sequential_5_lstm_14_while_placeholder,
(sequential_5_lstm_14_while_placeholder_1,
(sequential_5_lstm_14_while_placeholder_2,
(sequential_5_lstm_14_while_placeholder_3E
Asequential_5_lstm_14_while_sequential_5_lstm_14_strided_slice_1_0
}sequential_5_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_14_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_5_lstm_14_while_lstm_cell_14_split_readvariableop_resource_0:	 X
Isequential_5_lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0:	T
Asequential_5_lstm_14_while_lstm_cell_14_readvariableop_resource_0:	@'
#sequential_5_lstm_14_while_identity)
%sequential_5_lstm_14_while_identity_1)
%sequential_5_lstm_14_while_identity_2)
%sequential_5_lstm_14_while_identity_3)
%sequential_5_lstm_14_while_identity_4)
%sequential_5_lstm_14_while_identity_5C
?sequential_5_lstm_14_while_sequential_5_lstm_14_strided_slice_1
{sequential_5_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_14_tensorarrayunstack_tensorlistfromtensorX
Esequential_5_lstm_14_while_lstm_cell_14_split_readvariableop_resource:	 V
Gsequential_5_lstm_14_while_lstm_cell_14_split_1_readvariableop_resource:	R
?sequential_5_lstm_14_while_lstm_cell_14_readvariableop_resource:	@¢6sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp¢8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_1¢8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_2¢8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_3¢<sequential_5/lstm_14/while/lstm_cell_14/split/ReadVariableOp¢>sequential_5/lstm_14/while/lstm_cell_14/split_1/ReadVariableOpí
Lsequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2N
Lsequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_14_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_14_while_placeholderUsequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02@
>sequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItemÊ
7sequential_5/lstm_14/while/lstm_cell_14/ones_like/ShapeShape(sequential_5_lstm_14_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_5/lstm_14/while/lstm_cell_14/ones_like/Shape·
7sequential_5/lstm_14/while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_5/lstm_14/while/lstm_cell_14/ones_like/Const¤
1sequential_5/lstm_14/while/lstm_cell_14/ones_likeFill@sequential_5/lstm_14/while/lstm_cell_14/ones_like/Shape:output:0@sequential_5/lstm_14/while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_5/lstm_14/while/lstm_cell_14/ones_like´
7sequential_5/lstm_14/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_14/while/lstm_cell_14/split/split_dim
<sequential_5/lstm_14/while/lstm_cell_14/split/ReadVariableOpReadVariableOpGsequential_5_lstm_14_while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype02>
<sequential_5/lstm_14/while/lstm_cell_14/split/ReadVariableOpÇ
-sequential_5/lstm_14/while/lstm_cell_14/splitSplit@sequential_5/lstm_14/while/lstm_cell_14/split/split_dim:output:0Dsequential_5/lstm_14/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2/
-sequential_5/lstm_14/while/lstm_cell_14/split
.sequential_5/lstm_14/while/lstm_cell_14/MatMulMatMulEsequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_5/lstm_14/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.sequential_5/lstm_14/while/lstm_cell_14/MatMul
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_1MatMulEsequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_5/lstm_14/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_1
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_2MatMulEsequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_5/lstm_14/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_2
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_3MatMulEsequential_5/lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_5/lstm_14/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_3¸
9sequential_5/lstm_14/while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2;
9sequential_5/lstm_14/while/lstm_cell_14/split_1/split_dim
>sequential_5/lstm_14/while/lstm_cell_14/split_1/ReadVariableOpReadVariableOpIsequential_5_lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02@
>sequential_5/lstm_14/while/lstm_cell_14/split_1/ReadVariableOp¿
/sequential_5/lstm_14/while/lstm_cell_14/split_1SplitBsequential_5/lstm_14/while/lstm_cell_14/split_1/split_dim:output:0Fsequential_5/lstm_14/while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split21
/sequential_5/lstm_14/while/lstm_cell_14/split_1
/sequential_5/lstm_14/while/lstm_cell_14/BiasAddBiasAdd8sequential_5/lstm_14/while/lstm_cell_14/MatMul:product:08sequential_5/lstm_14/while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/sequential_5/lstm_14/while/lstm_cell_14/BiasAdd
1sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_1BiasAdd:sequential_5/lstm_14/while/lstm_cell_14/MatMul_1:product:08sequential_5/lstm_14/while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_1
1sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_2BiasAdd:sequential_5/lstm_14/while/lstm_cell_14/MatMul_2:product:08sequential_5/lstm_14/while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_2
1sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_3BiasAdd:sequential_5/lstm_14/while/lstm_cell_14/MatMul_3:product:08sequential_5/lstm_14/while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_3ù
+sequential_5/lstm_14/while/lstm_cell_14/mulMul(sequential_5_lstm_14_while_placeholder_2:sequential_5/lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/while/lstm_cell_14/mulý
-sequential_5/lstm_14/while/lstm_cell_14/mul_1Mul(sequential_5_lstm_14_while_placeholder_2:sequential_5/lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/mul_1ý
-sequential_5/lstm_14/while/lstm_cell_14/mul_2Mul(sequential_5_lstm_14_while_placeholder_2:sequential_5/lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/mul_2ý
-sequential_5/lstm_14/while/lstm_cell_14/mul_3Mul(sequential_5_lstm_14_while_placeholder_2:sequential_5/lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/mul_3ó
6sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOpReadVariableOpAsequential_5_lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype028
6sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOpË
;sequential_5/lstm_14/while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_5/lstm_14/while/lstm_cell_14/strided_slice/stackÏ
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2?
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice/stack_1Ï
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice/stack_2ì
5sequential_5/lstm_14/while/lstm_cell_14/strided_sliceStridedSlice>sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp:value:0Dsequential_5/lstm_14/while/lstm_cell_14/strided_slice/stack:output:0Fsequential_5/lstm_14/while/lstm_cell_14/strided_slice/stack_1:output:0Fsequential_5/lstm_14/while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask27
5sequential_5/lstm_14/while/lstm_cell_14/strided_slice
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_4MatMul/sequential_5/lstm_14/while/lstm_cell_14/mul:z:0>sequential_5/lstm_14/while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_4
+sequential_5/lstm_14/while/lstm_cell_14/addAddV28sequential_5/lstm_14/while/lstm_cell_14/BiasAdd:output:0:sequential_5/lstm_14/while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/while/lstm_cell_14/addÐ
/sequential_5/lstm_14/while/lstm_cell_14/SigmoidSigmoid/sequential_5/lstm_14/while/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/sequential_5/lstm_14/while/lstm_cell_14/Sigmoid÷
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_1ReadVariableOpAsequential_5_lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02:
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_1Ï
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2?
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stackÓ
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2A
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stack_1Ó
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stack_2ø
7sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1StridedSlice@sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_1:value:0Fsequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stack:output:0Hsequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stack_1:output:0Hsequential_5/lstm_14/while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask29
7sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_5MatMul1sequential_5/lstm_14/while/lstm_cell_14/mul_1:z:0@sequential_5/lstm_14/while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_5
-sequential_5/lstm_14/while/lstm_cell_14/add_1AddV2:sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_1:output:0:sequential_5/lstm_14/while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/add_1Ö
1sequential_5/lstm_14/while/lstm_cell_14/Sigmoid_1Sigmoid1sequential_5/lstm_14/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_5/lstm_14/while/lstm_cell_14/Sigmoid_1ø
-sequential_5/lstm_14/while/lstm_cell_14/mul_4Mul5sequential_5/lstm_14/while/lstm_cell_14/Sigmoid_1:y:0(sequential_5_lstm_14_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/mul_4÷
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_2ReadVariableOpAsequential_5_lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02:
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_2Ï
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2?
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stackÓ
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2A
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stack_1Ó
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stack_2ø
7sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2StridedSlice@sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_2:value:0Fsequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stack:output:0Hsequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stack_1:output:0Hsequential_5/lstm_14/while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask29
7sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_6MatMul1sequential_5/lstm_14/while/lstm_cell_14/mul_2:z:0@sequential_5/lstm_14/while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_6
-sequential_5/lstm_14/while/lstm_cell_14/add_2AddV2:sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_2:output:0:sequential_5/lstm_14/while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/add_2É
,sequential_5/lstm_14/while/lstm_cell_14/ReluRelu1sequential_5/lstm_14/while/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2.
,sequential_5/lstm_14/while/lstm_cell_14/Relu
-sequential_5/lstm_14/while/lstm_cell_14/mul_5Mul3sequential_5/lstm_14/while/lstm_cell_14/Sigmoid:y:0:sequential_5/lstm_14/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/mul_5ÿ
-sequential_5/lstm_14/while/lstm_cell_14/add_3AddV21sequential_5/lstm_14/while/lstm_cell_14/mul_4:z:01sequential_5/lstm_14/while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/add_3÷
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_3ReadVariableOpAsequential_5_lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02:
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_3Ï
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2?
=sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stackÓ
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2A
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stack_1Ó
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stack_2ø
7sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3StridedSlice@sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_3:value:0Fsequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stack:output:0Hsequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stack_1:output:0Hsequential_5/lstm_14/while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask29
7sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_7MatMul1sequential_5/lstm_14/while/lstm_cell_14/mul_3:z:0@sequential_5/lstm_14/while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0sequential_5/lstm_14/while/lstm_cell_14/MatMul_7
-sequential_5/lstm_14/while/lstm_cell_14/add_4AddV2:sequential_5/lstm_14/while/lstm_cell_14/BiasAdd_3:output:0:sequential_5/lstm_14/while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/add_4Ö
1sequential_5/lstm_14/while/lstm_cell_14/Sigmoid_2Sigmoid1sequential_5/lstm_14/while/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1sequential_5/lstm_14/while/lstm_cell_14/Sigmoid_2Í
.sequential_5/lstm_14/while/lstm_cell_14/Relu_1Relu1sequential_5/lstm_14/while/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.sequential_5/lstm_14/while/lstm_cell_14/Relu_1
-sequential_5/lstm_14/while/lstm_cell_14/mul_6Mul5sequential_5/lstm_14/while/lstm_cell_14/Sigmoid_2:y:0<sequential_5/lstm_14/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2/
-sequential_5/lstm_14/while/lstm_cell_14/mul_6É
?sequential_5/lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_14_while_placeholder_1&sequential_5_lstm_14_while_placeholder1sequential_5/lstm_14/while/lstm_cell_14/mul_6:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_14/while/TensorArrayV2Write/TensorListSetItem
 sequential_5/lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_14/while/add/y½
sequential_5/lstm_14/while/addAddV2&sequential_5_lstm_14_while_placeholder)sequential_5/lstm_14/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_14/while/add
"sequential_5/lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_14/while/add_1/yß
 sequential_5/lstm_14/while/add_1AddV2Bsequential_5_lstm_14_while_sequential_5_lstm_14_while_loop_counter+sequential_5/lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_14/while/add_1¿
#sequential_5/lstm_14/while/IdentityIdentity$sequential_5/lstm_14/while/add_1:z:0 ^sequential_5/lstm_14/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_14/while/Identityç
%sequential_5/lstm_14/while/Identity_1IdentityHsequential_5_lstm_14_while_sequential_5_lstm_14_while_maximum_iterations ^sequential_5/lstm_14/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_14/while/Identity_1Á
%sequential_5/lstm_14/while/Identity_2Identity"sequential_5/lstm_14/while/add:z:0 ^sequential_5/lstm_14/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_14/while/Identity_2î
%sequential_5/lstm_14/while/Identity_3IdentityOsequential_5/lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_14/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_14/while/Identity_3á
%sequential_5/lstm_14/while/Identity_4Identity1sequential_5/lstm_14/while/lstm_cell_14/mul_6:z:0 ^sequential_5/lstm_14/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_5/lstm_14/while/Identity_4á
%sequential_5/lstm_14/while/Identity_5Identity1sequential_5/lstm_14/while/lstm_cell_14/add_3:z:0 ^sequential_5/lstm_14/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_5/lstm_14/while/Identity_5î
sequential_5/lstm_14/while/NoOpNoOp7^sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp9^sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_19^sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_29^sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_3=^sequential_5/lstm_14/while/lstm_cell_14/split/ReadVariableOp?^sequential_5/lstm_14/while/lstm_cell_14/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_5/lstm_14/while/NoOp"S
#sequential_5_lstm_14_while_identity,sequential_5/lstm_14/while/Identity:output:0"W
%sequential_5_lstm_14_while_identity_1.sequential_5/lstm_14/while/Identity_1:output:0"W
%sequential_5_lstm_14_while_identity_2.sequential_5/lstm_14/while/Identity_2:output:0"W
%sequential_5_lstm_14_while_identity_3.sequential_5/lstm_14/while/Identity_3:output:0"W
%sequential_5_lstm_14_while_identity_4.sequential_5/lstm_14/while/Identity_4:output:0"W
%sequential_5_lstm_14_while_identity_5.sequential_5/lstm_14/while/Identity_5:output:0"
?sequential_5_lstm_14_while_lstm_cell_14_readvariableop_resourceAsequential_5_lstm_14_while_lstm_cell_14_readvariableop_resource_0"
Gsequential_5_lstm_14_while_lstm_cell_14_split_1_readvariableop_resourceIsequential_5_lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0"
Esequential_5_lstm_14_while_lstm_cell_14_split_readvariableop_resourceGsequential_5_lstm_14_while_lstm_cell_14_split_readvariableop_resource_0"
?sequential_5_lstm_14_while_sequential_5_lstm_14_strided_slice_1Asequential_5_lstm_14_while_sequential_5_lstm_14_strided_slice_1_0"ü
{sequential_5_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_14_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2p
6sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp6sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp2t
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_18sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_12t
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_28sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_22t
8sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_38sequential_5/lstm_14/while/lstm_cell_14/ReadVariableOp_32|
<sequential_5/lstm_14/while/lstm_cell_14/split/ReadVariableOp<sequential_5/lstm_14/while/lstm_cell_14/split/ReadVariableOp2
>sequential_5/lstm_14/while/lstm_cell_14/split_1/ReadVariableOp>sequential_5/lstm_14/while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 

õ
D__inference_dense_16_layer_call_and_return_conditional_losses_429543

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø%
ã
while_body_424503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_14_424527_0:	 *
while_lstm_cell_14_424529_0:	.
while_lstm_cell_14_424531_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_14_424527:	 (
while_lstm_cell_14_424529:	,
while_lstm_cell_14_424531:	@¢*while/lstm_cell_14/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_424527_0while_lstm_cell_14_424529_0while_lstm_cell_14_424531_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_4244892,
*while/lstm_cell_14/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_14/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_14/StatefulPartitionedCall*"
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
while_lstm_cell_14_424527while_lstm_cell_14_424527_0"8
while_lstm_cell_14_424529while_lstm_cell_14_424529_0"8
while_lstm_cell_14_424531while_lstm_cell_14_424531_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
§
¤	
while_body_425482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_14_split_readvariableop_resource_0:	 C
4while_lstm_cell_14_split_1_readvariableop_resource_0:	?
,while_lstm_cell_14_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_14_split_readvariableop_resource:	 A
2while_lstm_cell_14_split_1_readvariableop_resource:	=
*while_lstm_cell_14_readvariableop_resource:	@¢!while/lstm_cell_14/ReadVariableOp¢#while/lstm_cell_14/ReadVariableOp_1¢#while/lstm_cell_14/ReadVariableOp_2¢#while/lstm_cell_14/ReadVariableOp_3¢'while/lstm_cell_14/split/ReadVariableOp¢)while/lstm_cell_14/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_14/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_14/ones_like/Shape
"while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_14/ones_like/ConstÐ
while/lstm_cell_14/ones_likeFill+while/lstm_cell_14/ones_like/Shape:output:0+while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/ones_like
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dimÆ
'while/lstm_cell_14/split/ReadVariableOpReadVariableOp2while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype02)
'while/lstm_cell_14/split/ReadVariableOpó
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
while/lstm_cell_14/splitÇ
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMulË
while/lstm_cell_14/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_1Ë
while/lstm_cell_14/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_2Ë
while/lstm_cell_14/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_3
$while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_14/split_1/split_dimÈ
)while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_14/split_1/ReadVariableOpë
while/lstm_cell_14/split_1Split-while/lstm_cell_14/split_1/split_dim:output:01while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_14/split_1¿
while/lstm_cell_14/BiasAddBiasAdd#while/lstm_cell_14/MatMul:product:0#while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAddÅ
while/lstm_cell_14/BiasAdd_1BiasAdd%while/lstm_cell_14/MatMul_1:product:0#while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_1Å
while/lstm_cell_14/BiasAdd_2BiasAdd%while/lstm_cell_14/MatMul_2:product:0#while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_2Å
while/lstm_cell_14/BiasAdd_3BiasAdd%while/lstm_cell_14/MatMul_3:product:0#while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_3¥
while/lstm_cell_14/mulMulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul©
while/lstm_cell_14/mul_1Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_1©
while/lstm_cell_14/mul_2Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_2©
while/lstm_cell_14/mul_3Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_3´
!while/lstm_cell_14/ReadVariableOpReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02#
!while/lstm_cell_14/ReadVariableOp¡
&while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_14/strided_slice/stack¥
(while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice/stack_1¥
(while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_14/strided_slice/stack_2î
 while/lstm_cell_14/strided_sliceStridedSlice)while/lstm_cell_14/ReadVariableOp:value:0/while/lstm_cell_14/strided_slice/stack:output:01while/lstm_cell_14/strided_slice/stack_1:output:01while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 while/lstm_cell_14/strided_slice½
while/lstm_cell_14/MatMul_4MatMulwhile/lstm_cell_14/mul:z:0)while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_4·
while/lstm_cell_14/addAddV2#while/lstm_cell_14/BiasAdd:output:0%while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add
while/lstm_cell_14/SigmoidSigmoidwhile/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid¸
#while/lstm_cell_14/ReadVariableOp_1ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_1¥
(while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice_1/stack©
*while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*while/lstm_cell_14/strided_slice_1/stack_1©
*while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_1/stack_2ú
"while/lstm_cell_14/strided_slice_1StridedSlice+while/lstm_cell_14/ReadVariableOp_1:value:01while/lstm_cell_14/strided_slice_1/stack:output:03while/lstm_cell_14/strided_slice_1/stack_1:output:03while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_1Á
while/lstm_cell_14/MatMul_5MatMulwhile/lstm_cell_14/mul_1:z:0+while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_5½
while/lstm_cell_14/add_1AddV2%while/lstm_cell_14/BiasAdd_1:output:0%while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_1
while/lstm_cell_14/Sigmoid_1Sigmoidwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_1¤
while/lstm_cell_14/mul_4Mul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_4¸
#while/lstm_cell_14/ReadVariableOp_2ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_2¥
(while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(while/lstm_cell_14/strided_slice_2/stack©
*while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2,
*while/lstm_cell_14/strided_slice_2/stack_1©
*while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_2/stack_2ú
"while/lstm_cell_14/strided_slice_2StridedSlice+while/lstm_cell_14/ReadVariableOp_2:value:01while/lstm_cell_14/strided_slice_2/stack:output:03while/lstm_cell_14/strided_slice_2/stack_1:output:03while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_2Á
while/lstm_cell_14/MatMul_6MatMulwhile/lstm_cell_14/mul_2:z:0+while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_6½
while/lstm_cell_14/add_2AddV2%while/lstm_cell_14/BiasAdd_2:output:0%while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_2
while/lstm_cell_14/ReluReluwhile/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu´
while/lstm_cell_14/mul_5Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_5«
while/lstm_cell_14/add_3AddV2while/lstm_cell_14/mul_4:z:0while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_3¸
#while/lstm_cell_14/ReadVariableOp_3ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_3¥
(while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2*
(while/lstm_cell_14/strided_slice_3/stack©
*while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_14/strided_slice_3/stack_1©
*while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_3/stack_2ú
"while/lstm_cell_14/strided_slice_3StridedSlice+while/lstm_cell_14/ReadVariableOp_3:value:01while/lstm_cell_14/strided_slice_3/stack:output:03while/lstm_cell_14/strided_slice_3/stack_1:output:03while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_3Á
while/lstm_cell_14/MatMul_7MatMulwhile/lstm_cell_14/mul_3:z:0+while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_7½
while/lstm_cell_14/add_4AddV2%while/lstm_cell_14/BiasAdd_3:output:0%while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_4
while/lstm_cell_14/Sigmoid_2Sigmoidwhile/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_2
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu_1¸
while/lstm_cell_14/mul_6Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_14/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_14/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_14/ReadVariableOp$^while/lstm_cell_14/ReadVariableOp_1$^while/lstm_cell_14/ReadVariableOp_2$^while/lstm_cell_14/ReadVariableOp_3(^while/lstm_cell_14/split/ReadVariableOp*^while/lstm_cell_14/split_1/ReadVariableOp*"
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
*while_lstm_cell_14_readvariableop_resource,while_lstm_cell_14_readvariableop_resource_0"j
2while_lstm_cell_14_split_1_readvariableop_resource4while_lstm_cell_14_split_1_readvariableop_resource_0"f
0while_lstm_cell_14_split_readvariableop_resource2while_lstm_cell_14_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_14/ReadVariableOp!while/lstm_cell_14/ReadVariableOp2J
#while/lstm_cell_14/ReadVariableOp_1#while/lstm_cell_14/ReadVariableOp_12J
#while/lstm_cell_14/ReadVariableOp_2#while/lstm_cell_14/ReadVariableOp_22J
#while/lstm_cell_14/ReadVariableOp_3#while/lstm_cell_14/ReadVariableOp_32R
'while/lstm_cell_14/split/ReadVariableOp'while/lstm_cell_14/split/ReadVariableOp2V
)while/lstm_cell_14/split_1/ReadVariableOp)while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ö
©
__inference_loss_fn_1_429623F
8dense_17_bias_regularizer_square_readvariableop_resource:
identity¢/dense_17/bias/Regularizer/Square/ReadVariableOp×
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_17_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/mulk
IdentityIdentity!dense_17/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp0^dense_17/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp
Ø%
ã
while_body_423824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_13_423848_0:	@.
while_lstm_cell_13_423850_0:	 *
while_lstm_cell_13_423852_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_13_423848:	@,
while_lstm_cell_13_423850:	 (
while_lstm_cell_13_423852:	¢*while/lstm_cell_13/StatefulPartitionedCallÃ
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
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_423848_0while_lstm_cell_13_423850_0while_lstm_cell_13_423852_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_4238102,
*while/lstm_cell_13/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_13/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
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
while_lstm_cell_13_423848while_lstm_cell_13_423848_0"8
while_lstm_cell_13_423850while_lstm_cell_13_423850_0"8
while_lstm_cell_13_423852while_lstm_cell_13_423852_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Õ
Ã
while_cond_426161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_426161___redundant_placeholder04
0while_while_cond_426161___redundant_placeholder14
0while_while_cond_426161___redundant_placeholder24
0while_while_cond_426161___redundant_placeholder3
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
Á¯
ç
H__inference_sequential_5_layer_call_and_return_conditional_losses_427580

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_5_biasadd_readvariableop_resource:@F
3lstm_13_lstm_cell_13_matmul_readvariableop_resource:	@H
5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource:	 C
4lstm_13_lstm_cell_13_biasadd_readvariableop_resource:	E
2lstm_14_lstm_cell_14_split_readvariableop_resource:	 C
4lstm_14_lstm_cell_14_split_1_readvariableop_resource:	?
,lstm_14_lstm_cell_14_readvariableop_resource:	@9
'dense_16_matmul_readvariableop_resource:@@6
(dense_16_biasadd_readvariableop_resource:@9
'dense_17_matmul_readvariableop_resource:@6
(dense_17_biasadd_readvariableop_resource:
identity¢conv1d_4/BiasAdd/ReadVariableOp¢+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢conv1d_5/BiasAdd/ReadVariableOp¢+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢/dense_17/bias/Regularizer/Square/ReadVariableOp¢+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp¢*lstm_13/lstm_cell_13/MatMul/ReadVariableOp¢,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp¢lstm_13/while¢#lstm_14/lstm_cell_14/ReadVariableOp¢%lstm_14/lstm_cell_14/ReadVariableOp_1¢%lstm_14/lstm_cell_14/ReadVariableOp_2¢%lstm_14/lstm_cell_14/ReadVariableOp_3¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢)lstm_14/lstm_cell_14/split/ReadVariableOp¢+lstm_14/lstm_cell_14/split_1/ReadVariableOp¢lstm_14/while
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
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/ExpandDimsÓ
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
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
lstm_13/ShapeShape max_pooling1d_2/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_13/Shape
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice/stack
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_1
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_2
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slicel
lstm_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros/mul/y
lstm_13/zeros/mulMullstm_13/strided_slice:output:0lstm_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/mulo
lstm_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_13/zeros/Less/y
lstm_13/zeros/LessLesslstm_13/zeros/mul:z:0lstm_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/Lessr
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros/packed/1£
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros/packedo
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros/Const
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/zerosp
lstm_13/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros_1/mul/y
lstm_13/zeros_1/mulMullstm_13/strided_slice:output:0lstm_13/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/muls
lstm_13/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_13/zeros_1/Less/y
lstm_13/zeros_1/LessLesslstm_13/zeros_1/mul:z:0lstm_13/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/Lessv
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros_1/packed/1©
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros_1/packeds
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros_1/Const
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/zeros_1
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose/perm¬
lstm_13/transpose	Transpose max_pooling1d_2/Squeeze:output:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_13/transposeg
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
:2
lstm_13/Shape_1
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_1/stack
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_1
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_2
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slice_1
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_13/TensorArrayV2/element_shapeÒ
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2Ï
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_13/TensorArrayUnstack/TensorListFromTensor
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_2/stack
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_1
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_2¬
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_13/strided_slice_2Í
*lstm_13/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3lstm_13_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02,
*lstm_13/lstm_cell_13/MatMul/ReadVariableOpÍ
lstm_13/lstm_cell_13/MatMulMatMul lstm_13/strided_slice_2:output:02lstm_13/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/MatMulÓ
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02.
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpÉ
lstm_13/lstm_cell_13/MatMul_1MatMullstm_13/zeros:output:04lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/MatMul_1À
lstm_13/lstm_cell_13/addAddV2%lstm_13/lstm_cell_13/MatMul:product:0'lstm_13/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/addÌ
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpÍ
lstm_13/lstm_cell_13/BiasAddBiasAddlstm_13/lstm_cell_13/add:z:03lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/BiasAdd
$lstm_13/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_13/lstm_cell_13/split/split_dim
lstm_13/lstm_cell_13/splitSplit-lstm_13/lstm_cell_13/split/split_dim:output:0%lstm_13/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_13/lstm_cell_13/split
lstm_13/lstm_cell_13/SigmoidSigmoid#lstm_13/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/Sigmoid¢
lstm_13/lstm_cell_13/Sigmoid_1Sigmoid#lstm_13/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_13/lstm_cell_13/Sigmoid_1«
lstm_13/lstm_cell_13/mulMul"lstm_13/lstm_cell_13/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/mul
lstm_13/lstm_cell_13/ReluRelu#lstm_13/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/Relu¼
lstm_13/lstm_cell_13/mul_1Mul lstm_13/lstm_cell_13/Sigmoid:y:0'lstm_13/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/mul_1±
lstm_13/lstm_cell_13/add_1AddV2lstm_13/lstm_cell_13/mul:z:0lstm_13/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/add_1¢
lstm_13/lstm_cell_13/Sigmoid_2Sigmoid#lstm_13/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_13/lstm_cell_13/Sigmoid_2
lstm_13/lstm_cell_13/Relu_1Relulstm_13/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/Relu_1À
lstm_13/lstm_cell_13/mul_2Mul"lstm_13/lstm_cell_13/Sigmoid_2:y:0)lstm_13/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/mul_2
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_13/TensorArrayV2_1/element_shapeØ
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2_1^
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/time
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_13/while/maximum_iterationsz
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/while/loop_counter
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_13_lstm_cell_13_matmul_readvariableop_resource5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_13_while_body_427159*%
condR
lstm_13_while_cond_427158*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_13/whileÅ
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_13/TensorArrayV2Stack/TensorListStack
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_13/strided_slice_3/stack
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_13/strided_slice_3/stack_1
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_3/stack_2Ê
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_13/strided_slice_3
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose_1/permÅ
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/transpose_1v
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/runtimee
lstm_14/ShapeShapelstm_13/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_14/Shape
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice/stack
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_1
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_2
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_14/strided_slicel
lstm_14/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros/mul/y
lstm_14/zeros/mulMullstm_14/strided_slice:output:0lstm_14/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros/mulo
lstm_14/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_14/zeros/Less/y
lstm_14/zeros/LessLesslstm_14/zeros/mul:z:0lstm_14/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros/Lessr
lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros/packed/1£
lstm_14/zeros/packedPacklstm_14/strided_slice:output:0lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_14/zeros/packedo
lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/zeros/Const
lstm_14/zerosFilllstm_14/zeros/packed:output:0lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/zerosp
lstm_14/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros_1/mul/y
lstm_14/zeros_1/mulMullstm_14/strided_slice:output:0lstm_14/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros_1/muls
lstm_14/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_14/zeros_1/Less/y
lstm_14/zeros_1/LessLesslstm_14/zeros_1/mul:z:0lstm_14/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros_1/Lessv
lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros_1/packed/1©
lstm_14/zeros_1/packedPacklstm_14/strided_slice:output:0!lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_14/zeros_1/packeds
lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/zeros_1/Const
lstm_14/zeros_1Filllstm_14/zeros_1/packed:output:0lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/zeros_1
lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose/perm£
lstm_14/transpose	Transposelstm_13/transpose_1:y:0lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_14/transposeg
lstm_14/Shape_1Shapelstm_14/transpose:y:0*
T0*
_output_shapes
:2
lstm_14/Shape_1
lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice_1/stack
lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_1
lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_2
lstm_14/strided_slice_1StridedSlicelstm_14/Shape_1:output:0&lstm_14/strided_slice_1/stack:output:0(lstm_14/strided_slice_1/stack_1:output:0(lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_14/strided_slice_1
#lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_14/TensorArrayV2/element_shapeÒ
lstm_14/TensorArrayV2TensorListReserve,lstm_14/TensorArrayV2/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2Ï
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2?
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_14/transpose:y:0Flstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_14/TensorArrayUnstack/TensorListFromTensor
lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice_2/stack
lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_2/stack_1
lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_2/stack_2¬
lstm_14/strided_slice_2StridedSlicelstm_14/transpose:y:0&lstm_14/strided_slice_2/stack:output:0(lstm_14/strided_slice_2/stack_1:output:0(lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_14/strided_slice_2
$lstm_14/lstm_cell_14/ones_like/ShapeShapelstm_14/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_14/lstm_cell_14/ones_like/Shape
$lstm_14/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_14/lstm_cell_14/ones_like/ConstØ
lstm_14/lstm_cell_14/ones_likeFill-lstm_14/lstm_cell_14/ones_like/Shape:output:0-lstm_14/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/ones_like
"lstm_14/lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"lstm_14/lstm_cell_14/dropout/ConstÓ
 lstm_14/lstm_cell_14/dropout/MulMul'lstm_14/lstm_cell_14/ones_like:output:0+lstm_14/lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/lstm_cell_14/dropout/Mul
"lstm_14/lstm_cell_14/dropout/ShapeShape'lstm_14/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_14/lstm_cell_14/dropout/Shape
9lstm_14/lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform+lstm_14/lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2É¯¼2;
9lstm_14/lstm_cell_14/dropout/random_uniform/RandomUniform
+lstm_14/lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+lstm_14/lstm_cell_14/dropout/GreaterEqual/y
)lstm_14/lstm_cell_14/dropout/GreaterEqualGreaterEqualBlstm_14/lstm_cell_14/dropout/random_uniform/RandomUniform:output:04lstm_14/lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)lstm_14/lstm_cell_14/dropout/GreaterEqual¾
!lstm_14/lstm_cell_14/dropout/CastCast-lstm_14/lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_14/lstm_cell_14/dropout/CastÎ
"lstm_14/lstm_cell_14/dropout/Mul_1Mul$lstm_14/lstm_cell_14/dropout/Mul:z:0%lstm_14/lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/lstm_cell_14/dropout/Mul_1
$lstm_14/lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2&
$lstm_14/lstm_cell_14/dropout_1/ConstÙ
"lstm_14/lstm_cell_14/dropout_1/MulMul'lstm_14/lstm_cell_14/ones_like:output:0-lstm_14/lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/lstm_cell_14/dropout_1/Mul£
$lstm_14/lstm_cell_14/dropout_1/ShapeShape'lstm_14/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_14/lstm_cell_14/dropout_1/Shape
;lstm_14/lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_14/lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ôòÞ2=
;lstm_14/lstm_cell_14/dropout_1/random_uniform/RandomUniform£
-lstm_14/lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2/
-lstm_14/lstm_cell_14/dropout_1/GreaterEqual/y
+lstm_14/lstm_cell_14/dropout_1/GreaterEqualGreaterEqualDlstm_14/lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:06lstm_14/lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+lstm_14/lstm_cell_14/dropout_1/GreaterEqualÄ
#lstm_14/lstm_cell_14/dropout_1/CastCast/lstm_14/lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/lstm_cell_14/dropout_1/CastÖ
$lstm_14/lstm_cell_14/dropout_1/Mul_1Mul&lstm_14/lstm_cell_14/dropout_1/Mul:z:0'lstm_14/lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/lstm_cell_14/dropout_1/Mul_1
$lstm_14/lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2&
$lstm_14/lstm_cell_14/dropout_2/ConstÙ
"lstm_14/lstm_cell_14/dropout_2/MulMul'lstm_14/lstm_cell_14/ones_like:output:0-lstm_14/lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/lstm_cell_14/dropout_2/Mul£
$lstm_14/lstm_cell_14/dropout_2/ShapeShape'lstm_14/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_14/lstm_cell_14/dropout_2/Shape
;lstm_14/lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_14/lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ñá2=
;lstm_14/lstm_cell_14/dropout_2/random_uniform/RandomUniform£
-lstm_14/lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2/
-lstm_14/lstm_cell_14/dropout_2/GreaterEqual/y
+lstm_14/lstm_cell_14/dropout_2/GreaterEqualGreaterEqualDlstm_14/lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:06lstm_14/lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+lstm_14/lstm_cell_14/dropout_2/GreaterEqualÄ
#lstm_14/lstm_cell_14/dropout_2/CastCast/lstm_14/lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/lstm_cell_14/dropout_2/CastÖ
$lstm_14/lstm_cell_14/dropout_2/Mul_1Mul&lstm_14/lstm_cell_14/dropout_2/Mul:z:0'lstm_14/lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/lstm_cell_14/dropout_2/Mul_1
$lstm_14/lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2&
$lstm_14/lstm_cell_14/dropout_3/ConstÙ
"lstm_14/lstm_cell_14/dropout_3/MulMul'lstm_14/lstm_cell_14/ones_like:output:0-lstm_14/lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/lstm_cell_14/dropout_3/Mul£
$lstm_14/lstm_cell_14/dropout_3/ShapeShape'lstm_14/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm_14/lstm_cell_14/dropout_3/Shape
;lstm_14/lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_14/lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ãÕK2=
;lstm_14/lstm_cell_14/dropout_3/random_uniform/RandomUniform£
-lstm_14/lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2/
-lstm_14/lstm_cell_14/dropout_3/GreaterEqual/y
+lstm_14/lstm_cell_14/dropout_3/GreaterEqualGreaterEqualDlstm_14/lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:06lstm_14/lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+lstm_14/lstm_cell_14/dropout_3/GreaterEqualÄ
#lstm_14/lstm_cell_14/dropout_3/CastCast/lstm_14/lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/lstm_cell_14/dropout_3/CastÖ
$lstm_14/lstm_cell_14/dropout_3/Mul_1Mul&lstm_14/lstm_cell_14/dropout_3/Mul:z:0'lstm_14/lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/lstm_cell_14/dropout_3/Mul_1
$lstm_14/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_14/lstm_cell_14/split/split_dimÊ
)lstm_14/lstm_cell_14/split/ReadVariableOpReadVariableOp2lstm_14_lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02+
)lstm_14/lstm_cell_14/split/ReadVariableOpû
lstm_14/lstm_cell_14/splitSplit-lstm_14/lstm_cell_14/split/split_dim:output:01lstm_14/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_14/lstm_cell_14/split½
lstm_14/lstm_cell_14/MatMulMatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMulÁ
lstm_14/lstm_cell_14/MatMul_1MatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_1Á
lstm_14/lstm_cell_14/MatMul_2MatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_2Á
lstm_14/lstm_cell_14/MatMul_3MatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_3
&lstm_14/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_14/lstm_cell_14/split_1/split_dimÌ
+lstm_14/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4lstm_14_lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_14/lstm_cell_14/split_1/ReadVariableOpó
lstm_14/lstm_cell_14/split_1Split/lstm_14/lstm_cell_14/split_1/split_dim:output:03lstm_14/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_14/lstm_cell_14/split_1Ç
lstm_14/lstm_cell_14/BiasAddBiasAdd%lstm_14/lstm_cell_14/MatMul:product:0%lstm_14/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/BiasAddÍ
lstm_14/lstm_cell_14/BiasAdd_1BiasAdd'lstm_14/lstm_cell_14/MatMul_1:product:0%lstm_14/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/BiasAdd_1Í
lstm_14/lstm_cell_14/BiasAdd_2BiasAdd'lstm_14/lstm_cell_14/MatMul_2:product:0%lstm_14/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/BiasAdd_2Í
lstm_14/lstm_cell_14/BiasAdd_3BiasAdd'lstm_14/lstm_cell_14/MatMul_3:product:0%lstm_14/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/BiasAdd_3­
lstm_14/lstm_cell_14/mulMullstm_14/zeros:output:0&lstm_14/lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul³
lstm_14/lstm_cell_14/mul_1Mullstm_14/zeros:output:0(lstm_14/lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_1³
lstm_14/lstm_cell_14/mul_2Mullstm_14/zeros:output:0(lstm_14/lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_2³
lstm_14/lstm_cell_14/mul_3Mullstm_14/zeros:output:0(lstm_14/lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_3¸
#lstm_14/lstm_cell_14/ReadVariableOpReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_14/lstm_cell_14/ReadVariableOp¥
(lstm_14/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_14/lstm_cell_14/strided_slice/stack©
*lstm_14/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_14/lstm_cell_14/strided_slice/stack_1©
*lstm_14/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_14/lstm_cell_14/strided_slice/stack_2ú
"lstm_14/lstm_cell_14/strided_sliceStridedSlice+lstm_14/lstm_cell_14/ReadVariableOp:value:01lstm_14/lstm_cell_14/strided_slice/stack:output:03lstm_14/lstm_cell_14/strided_slice/stack_1:output:03lstm_14/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_14/lstm_cell_14/strided_sliceÅ
lstm_14/lstm_cell_14/MatMul_4MatMullstm_14/lstm_cell_14/mul:z:0+lstm_14/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_4¿
lstm_14/lstm_cell_14/addAddV2%lstm_14/lstm_cell_14/BiasAdd:output:0'lstm_14/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add
lstm_14/lstm_cell_14/SigmoidSigmoidlstm_14/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/Sigmoid¼
%lstm_14/lstm_cell_14/ReadVariableOp_1ReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02'
%lstm_14/lstm_cell_14/ReadVariableOp_1©
*lstm_14/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_14/lstm_cell_14/strided_slice_1/stack­
,lstm_14/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_14/lstm_cell_14/strided_slice_1/stack_1­
,lstm_14/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_14/lstm_cell_14/strided_slice_1/stack_2
$lstm_14/lstm_cell_14/strided_slice_1StridedSlice-lstm_14/lstm_cell_14/ReadVariableOp_1:value:03lstm_14/lstm_cell_14/strided_slice_1/stack:output:05lstm_14/lstm_cell_14/strided_slice_1/stack_1:output:05lstm_14/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm_14/lstm_cell_14/strided_slice_1É
lstm_14/lstm_cell_14/MatMul_5MatMullstm_14/lstm_cell_14/mul_1:z:0-lstm_14/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_5Å
lstm_14/lstm_cell_14/add_1AddV2'lstm_14/lstm_cell_14/BiasAdd_1:output:0'lstm_14/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_1
lstm_14/lstm_cell_14/Sigmoid_1Sigmoidlstm_14/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/Sigmoid_1¯
lstm_14/lstm_cell_14/mul_4Mul"lstm_14/lstm_cell_14/Sigmoid_1:y:0lstm_14/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_4¼
%lstm_14/lstm_cell_14/ReadVariableOp_2ReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02'
%lstm_14/lstm_cell_14/ReadVariableOp_2©
*lstm_14/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm_14/lstm_cell_14/strided_slice_2/stack­
,lstm_14/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2.
,lstm_14/lstm_cell_14/strided_slice_2/stack_1­
,lstm_14/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_14/lstm_cell_14/strided_slice_2/stack_2
$lstm_14/lstm_cell_14/strided_slice_2StridedSlice-lstm_14/lstm_cell_14/ReadVariableOp_2:value:03lstm_14/lstm_cell_14/strided_slice_2/stack:output:05lstm_14/lstm_cell_14/strided_slice_2/stack_1:output:05lstm_14/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm_14/lstm_cell_14/strided_slice_2É
lstm_14/lstm_cell_14/MatMul_6MatMullstm_14/lstm_cell_14/mul_2:z:0-lstm_14/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_6Å
lstm_14/lstm_cell_14/add_2AddV2'lstm_14/lstm_cell_14/BiasAdd_2:output:0'lstm_14/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_2
lstm_14/lstm_cell_14/ReluRelulstm_14/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/Relu¼
lstm_14/lstm_cell_14/mul_5Mul lstm_14/lstm_cell_14/Sigmoid:y:0'lstm_14/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_5³
lstm_14/lstm_cell_14/add_3AddV2lstm_14/lstm_cell_14/mul_4:z:0lstm_14/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_3¼
%lstm_14/lstm_cell_14/ReadVariableOp_3ReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02'
%lstm_14/lstm_cell_14/ReadVariableOp_3©
*lstm_14/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2,
*lstm_14/lstm_cell_14/strided_slice_3/stack­
,lstm_14/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_14/lstm_cell_14/strided_slice_3/stack_1­
,lstm_14/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_14/lstm_cell_14/strided_slice_3/stack_2
$lstm_14/lstm_cell_14/strided_slice_3StridedSlice-lstm_14/lstm_cell_14/ReadVariableOp_3:value:03lstm_14/lstm_cell_14/strided_slice_3/stack:output:05lstm_14/lstm_cell_14/strided_slice_3/stack_1:output:05lstm_14/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm_14/lstm_cell_14/strided_slice_3É
lstm_14/lstm_cell_14/MatMul_7MatMullstm_14/lstm_cell_14/mul_3:z:0-lstm_14/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_7Å
lstm_14/lstm_cell_14/add_4AddV2'lstm_14/lstm_cell_14/BiasAdd_3:output:0'lstm_14/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_4
lstm_14/lstm_cell_14/Sigmoid_2Sigmoidlstm_14/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/Sigmoid_2
lstm_14/lstm_cell_14/Relu_1Relulstm_14/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/Relu_1À
lstm_14/lstm_cell_14/mul_6Mul"lstm_14/lstm_cell_14/Sigmoid_2:y:0)lstm_14/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_6
%lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%lstm_14/TensorArrayV2_1/element_shapeØ
lstm_14/TensorArrayV2_1TensorListReserve.lstm_14/TensorArrayV2_1/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2_1^
lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/time
 lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_14/while/maximum_iterationsz
lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/while/loop_counterù
lstm_14/whileWhile#lstm_14/while/loop_counter:output:0)lstm_14/while/maximum_iterations:output:0lstm_14/time:output:0 lstm_14/TensorArrayV2_1:handle:0lstm_14/zeros:output:0lstm_14/zeros_1:output:0 lstm_14/strided_slice_1:output:0?lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_14_lstm_cell_14_split_readvariableop_resource4lstm_14_lstm_cell_14_split_1_readvariableop_resource,lstm_14_lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_14_while_body_427381*%
condR
lstm_14_while_cond_427380*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
lstm_14/whileÅ
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2:
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_14/TensorArrayV2Stack/TensorListStackTensorListStacklstm_14/while:output:3Alstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02,
*lstm_14/TensorArrayV2Stack/TensorListStack
lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_14/strided_slice_3/stack
lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_14/strided_slice_3/stack_1
lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_3/stack_2Ê
lstm_14/strided_slice_3StridedSlice3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_14/strided_slice_3/stack:output:0(lstm_14/strided_slice_3/stack_1:output:0(lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_14/strided_slice_3
lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose_1/permÅ
lstm_14/transpose_1	Transpose3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/transpose_1v
lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/runtime¨
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_16/MatMul/ReadVariableOp¨
dense_16/MatMulMatMul lstm_14/strided_slice_3:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/MatMul§
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_16/BiasAdd/ReadVariableOp¥
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/BiasAdds
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/Relu¨
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_17/MatMul/ReadVariableOp£
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/MatMul§
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp¥
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/BiasAddk
reshape_8/ShapeShapedense_17/BiasAdd:output:0*
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
reshape_8/ReshapeReshapedense_17/BiasAdd:output:0 reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_8/Reshapeß
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulò
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_14_lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/mulÇ
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/muly
IdentityIdentityreshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¼
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp0^dense_17/bias/Regularizer/Square/ReadVariableOp,^lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+^lstm_13/lstm_cell_13/MatMul/ReadVariableOp-^lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_13/while$^lstm_14/lstm_cell_14/ReadVariableOp&^lstm_14/lstm_cell_14/ReadVariableOp_1&^lstm_14/lstm_cell_14/ReadVariableOp_2&^lstm_14/lstm_cell_14/ReadVariableOp_3>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp*^lstm_14/lstm_cell_14/split/ReadVariableOp,^lstm_14/lstm_cell_14/split_1/ReadVariableOp^lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp2Z
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp2X
*lstm_13/lstm_cell_13/MatMul/ReadVariableOp*lstm_13/lstm_cell_13/MatMul/ReadVariableOp2\
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_13/whilelstm_13/while2J
#lstm_14/lstm_cell_14/ReadVariableOp#lstm_14/lstm_cell_14/ReadVariableOp2N
%lstm_14/lstm_cell_14/ReadVariableOp_1%lstm_14/lstm_cell_14/ReadVariableOp_12N
%lstm_14/lstm_cell_14/ReadVariableOp_2%lstm_14/lstm_cell_14/ReadVariableOp_22N
%lstm_14/lstm_cell_14/ReadVariableOp_3%lstm_14/lstm_cell_14/ReadVariableOp_32~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_14/lstm_cell_14/split/ReadVariableOp)lstm_14/lstm_cell_14/split/ReadVariableOp2Z
+lstm_14/lstm_cell_14/split_1/ReadVariableOp+lstm_14/lstm_cell_14/split_1/ReadVariableOp2
lstm_14/whilelstm_14/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_428102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_428102___redundant_placeholder04
0while_while_cond_428102___redundant_placeholder14
0while_while_cond_428102___redundant_placeholder24
0while_while_cond_428102___redundant_placeholder3
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
àÏ
§
C__inference_lstm_14_layer_call_and_return_conditional_losses_426073

inputs=
*lstm_cell_14_split_readvariableop_resource:	 ;
,lstm_cell_14_split_1_readvariableop_resource:	7
$lstm_cell_14_readvariableop_resource:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_14/ReadVariableOp¢lstm_cell_14/ReadVariableOp_1¢lstm_cell_14/ReadVariableOp_2¢lstm_cell_14/ReadVariableOp_3¢!lstm_cell_14/split/ReadVariableOp¢#lstm_cell_14/split_1/ReadVariableOp¢whileD
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2z
lstm_cell_14/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_14/ones_like/Shape
lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_14/ones_like/Const¸
lstm_cell_14/ones_likeFill%lstm_cell_14/ones_like/Shape:output:0%lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/ones_like}
lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout/Const³
lstm_cell_14/dropout/MulMullstm_cell_14/ones_like:output:0#lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Mul
lstm_cell_14/dropout/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout/Shapeú
1lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ö¨23
1lstm_cell_14/dropout/random_uniform/RandomUniform
#lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2%
#lstm_cell_14/dropout/GreaterEqual/yò
!lstm_cell_14/dropout/GreaterEqualGreaterEqual:lstm_cell_14/dropout/random_uniform/RandomUniform:output:0,lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_cell_14/dropout/GreaterEqual¦
lstm_cell_14/dropout/CastCast%lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Cast®
lstm_cell_14/dropout/Mul_1Mullstm_cell_14/dropout/Mul:z:0lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Mul_1
lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_1/Const¹
lstm_cell_14/dropout_1/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Mul
lstm_cell_14/dropout_1/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_1/Shape
3lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ôÛ25
3lstm_cell_14/dropout_1/random_uniform/RandomUniform
%lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_1/GreaterEqual/yú
#lstm_cell_14/dropout_1/GreaterEqualGreaterEqual<lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_1/GreaterEqual¬
lstm_cell_14/dropout_1/CastCast'lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Cast¶
lstm_cell_14/dropout_1/Mul_1Mullstm_cell_14/dropout_1/Mul:z:0lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Mul_1
lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_2/Const¹
lstm_cell_14/dropout_2/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Mul
lstm_cell_14/dropout_2/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_2/Shapeÿ
3lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ÙÓ125
3lstm_cell_14/dropout_2/random_uniform/RandomUniform
%lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_2/GreaterEqual/yú
#lstm_cell_14/dropout_2/GreaterEqualGreaterEqual<lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_2/GreaterEqual¬
lstm_cell_14/dropout_2/CastCast'lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Cast¶
lstm_cell_14/dropout_2/Mul_1Mullstm_cell_14/dropout_2/Mul:z:0lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Mul_1
lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_3/Const¹
lstm_cell_14/dropout_3/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Mul
lstm_cell_14/dropout_3/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_3/Shape
3lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2¥³25
3lstm_cell_14/dropout_3/random_uniform/RandomUniform
%lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_3/GreaterEqual/yú
#lstm_cell_14/dropout_3/GreaterEqualGreaterEqual<lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_3/GreaterEqual¬
lstm_cell_14/dropout_3/CastCast'lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Cast¶
lstm_cell_14/dropout_3/Mul_1Mullstm_cell_14/dropout_3/Mul:z:0lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Mul_1~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim²
!lstm_cell_14/split/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02#
!lstm_cell_14/split/ReadVariableOpÛ
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0)lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_cell_14/split
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul¡
lstm_cell_14/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_1¡
lstm_cell_14/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_2¡
lstm_cell_14/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_3
lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_14/split_1/split_dim´
#lstm_cell_14/split_1/ReadVariableOpReadVariableOp,lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_14/split_1/ReadVariableOpÓ
lstm_cell_14/split_1Split'lstm_cell_14/split_1/split_dim:output:0+lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_14/split_1§
lstm_cell_14/BiasAddBiasAddlstm_cell_14/MatMul:product:0lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd­
lstm_cell_14/BiasAdd_1BiasAddlstm_cell_14/MatMul_1:product:0lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_1­
lstm_cell_14/BiasAdd_2BiasAddlstm_cell_14/MatMul_2:product:0lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_2­
lstm_cell_14/BiasAdd_3BiasAddlstm_cell_14/MatMul_3:product:0lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_3
lstm_cell_14/mulMulzeros:output:0lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul
lstm_cell_14/mul_1Mulzeros:output:0 lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_1
lstm_cell_14/mul_2Mulzeros:output:0 lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_2
lstm_cell_14/mul_3Mulzeros:output:0 lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_3 
lstm_cell_14/ReadVariableOpReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp
 lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_14/strided_slice/stack
"lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice/stack_1
"lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_14/strided_slice/stack_2Ê
lstm_cell_14/strided_sliceStridedSlice#lstm_cell_14/ReadVariableOp:value:0)lstm_cell_14/strided_slice/stack:output:0+lstm_cell_14/strided_slice/stack_1:output:0+lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice¥
lstm_cell_14/MatMul_4MatMullstm_cell_14/mul:z:0#lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_4
lstm_cell_14/addAddV2lstm_cell_14/BiasAdd:output:0lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add
lstm_cell_14/SigmoidSigmoidlstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid¤
lstm_cell_14/ReadVariableOp_1ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_1
"lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice_1/stack
$lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_cell_14/strided_slice_1/stack_1
$lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_1/stack_2Ö
lstm_cell_14/strided_slice_1StridedSlice%lstm_cell_14/ReadVariableOp_1:value:0+lstm_cell_14/strided_slice_1/stack:output:0-lstm_cell_14/strided_slice_1/stack_1:output:0-lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_1©
lstm_cell_14/MatMul_5MatMullstm_cell_14/mul_1:z:0%lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_5¥
lstm_cell_14/add_1AddV2lstm_cell_14/BiasAdd_1:output:0lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_1
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_1
lstm_cell_14/mul_4Mullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_4¤
lstm_cell_14/ReadVariableOp_2ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_2
"lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_cell_14/strided_slice_2/stack
$lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2&
$lstm_cell_14/strided_slice_2/stack_1
$lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_2/stack_2Ö
lstm_cell_14/strided_slice_2StridedSlice%lstm_cell_14/ReadVariableOp_2:value:0+lstm_cell_14/strided_slice_2/stack:output:0-lstm_cell_14/strided_slice_2/stack_1:output:0-lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_2©
lstm_cell_14/MatMul_6MatMullstm_cell_14/mul_2:z:0%lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_6¥
lstm_cell_14/add_2AddV2lstm_cell_14/BiasAdd_2:output:0lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_2x
lstm_cell_14/ReluRelulstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu
lstm_cell_14/mul_5Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_5
lstm_cell_14/add_3AddV2lstm_cell_14/mul_4:z:0lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_3¤
lstm_cell_14/ReadVariableOp_3ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_3
"lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2$
"lstm_cell_14/strided_slice_3/stack
$lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_14/strided_slice_3/stack_1
$lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_3/stack_2Ö
lstm_cell_14/strided_slice_3StridedSlice%lstm_cell_14/ReadVariableOp_3:value:0+lstm_cell_14/strided_slice_3/stack:output:0-lstm_cell_14/strided_slice_3/stack_1:output:0-lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_3©
lstm_cell_14/MatMul_7MatMullstm_cell_14/mul_3:z:0%lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_7¥
lstm_cell_14/add_4AddV2lstm_cell_14/BiasAdd_3:output:0lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_4
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_2|
lstm_cell_14/Relu_1Relulstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu_1 
lstm_cell_14/mul_6Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_14_split_readvariableop_resource,lstm_cell_14_split_1_readvariableop_resource$lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_425908*
condR
while_cond_425907*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

IdentityÞ
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_14/ReadVariableOp^lstm_cell_14/ReadVariableOp_1^lstm_cell_14/ReadVariableOp_2^lstm_cell_14/ReadVariableOp_3"^lstm_cell_14/split/ReadVariableOp$^lstm_cell_14/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_14/ReadVariableOplstm_cell_14/ReadVariableOp2>
lstm_cell_14/ReadVariableOp_1lstm_cell_14/ReadVariableOp_12>
lstm_cell_14/ReadVariableOp_2lstm_cell_14/ReadVariableOp_22>
lstm_cell_14/ReadVariableOp_3lstm_cell_14/ReadVariableOp_32F
!lstm_cell_14/split/ReadVariableOp!lstm_cell_14/split/ReadVariableOp2J
#lstm_cell_14/split_1/ReadVariableOp#lstm_cell_14/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¾v
ë
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_429921

inputs
states_0
states_10
split_readvariableop_resource:	 .
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
:ÿÿÿÿÿÿÿÿÿ@2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÒ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ôÏq2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2¡«¬2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2Ë÷í2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2¯Øö2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/Mul_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_3`
mulMulstates_0dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mulf
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1f
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2f
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   2
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

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
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

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_6Ý
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
Ú
L
0__inference_max_pooling1d_2_layer_call_fn_427734

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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_4252132
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
while_cond_424033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_424033___redundant_placeholder04
0while_while_cond_424033___redundant_placeholder14
0while_while_cond_424033___redundant_placeholder24
0while_while_cond_424033___redundant_placeholder3
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
 \

C__inference_lstm_13_layer_call_and_return_conditional_losses_428036
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	@@
-lstm_cell_13_matmul_1_readvariableop_resource:	 ;
,lstm_cell_13_biasadd_readvariableop_resource:	
identity¢#lstm_cell_13/BiasAdd/ReadVariableOp¢"lstm_cell_13/MatMul/ReadVariableOp¢$lstm_cell_13/MatMul_1/ReadVariableOp¢whileF
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
strided_slice_2µ
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOp­
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul»
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOp©
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul_1 
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/add´
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOp­
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimó
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_cell_13/split
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_1
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_1
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/add_1
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu_1 
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
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
bodyR
while_body_427952*
condR
while_cond_427951*K
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
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

IdentityÈ
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
¾
·
(__inference_lstm_14_layer_call_fn_429499
inputs_0
unknown:	 
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4245782
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
¥
g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_427724

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
ºÕ
¨ 
"__inference__traced_restore_430293
file_prefix6
 assignvariableop_conv1d_4_kernel: .
 assignvariableop_1_conv1d_4_bias: 8
"assignvariableop_2_conv1d_5_kernel: @.
 assignvariableop_3_conv1d_5_bias:@4
"assignvariableop_4_dense_16_kernel:@@.
 assignvariableop_5_dense_16_bias:@4
"assignvariableop_6_dense_17_kernel:@.
 assignvariableop_7_dense_17_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: B
/assignvariableop_13_lstm_13_lstm_cell_13_kernel:	@L
9assignvariableop_14_lstm_13_lstm_cell_13_recurrent_kernel:	 <
-assignvariableop_15_lstm_13_lstm_cell_13_bias:	B
/assignvariableop_16_lstm_14_lstm_cell_14_kernel:	 L
9assignvariableop_17_lstm_14_lstm_cell_14_recurrent_kernel:	@<
-assignvariableop_18_lstm_14_lstm_cell_14_bias:	#
assignvariableop_19_total: #
assignvariableop_20_count: @
*assignvariableop_21_adam_conv1d_4_kernel_m: 6
(assignvariableop_22_adam_conv1d_4_bias_m: @
*assignvariableop_23_adam_conv1d_5_kernel_m: @6
(assignvariableop_24_adam_conv1d_5_bias_m:@<
*assignvariableop_25_adam_dense_16_kernel_m:@@6
(assignvariableop_26_adam_dense_16_bias_m:@<
*assignvariableop_27_adam_dense_17_kernel_m:@6
(assignvariableop_28_adam_dense_17_bias_m:I
6assignvariableop_29_adam_lstm_13_lstm_cell_13_kernel_m:	@S
@assignvariableop_30_adam_lstm_13_lstm_cell_13_recurrent_kernel_m:	 C
4assignvariableop_31_adam_lstm_13_lstm_cell_13_bias_m:	I
6assignvariableop_32_adam_lstm_14_lstm_cell_14_kernel_m:	 S
@assignvariableop_33_adam_lstm_14_lstm_cell_14_recurrent_kernel_m:	@C
4assignvariableop_34_adam_lstm_14_lstm_cell_14_bias_m:	@
*assignvariableop_35_adam_conv1d_4_kernel_v: 6
(assignvariableop_36_adam_conv1d_4_bias_v: @
*assignvariableop_37_adam_conv1d_5_kernel_v: @6
(assignvariableop_38_adam_conv1d_5_bias_v:@<
*assignvariableop_39_adam_dense_16_kernel_v:@@6
(assignvariableop_40_adam_dense_16_bias_v:@<
*assignvariableop_41_adam_dense_17_kernel_v:@6
(assignvariableop_42_adam_dense_17_bias_v:I
6assignvariableop_43_adam_lstm_13_lstm_cell_13_kernel_v:	@S
@assignvariableop_44_adam_lstm_13_lstm_cell_13_recurrent_kernel_v:	 C
4assignvariableop_45_adam_lstm_13_lstm_cell_13_bias_v:	I
6assignvariableop_46_adam_lstm_14_lstm_cell_14_kernel_v:	 S
@assignvariableop_47_adam_lstm_14_lstm_cell_14_recurrent_kernel_v:	@C
4assignvariableop_48_adam_lstm_14_lstm_cell_14_bias_v:	
identity_50¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*
valueBÿ2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_17_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_13_lstm_cell_13_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Á
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_13_lstm_cell_13_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15µ
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_13_lstm_cell_13_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16·
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_14_lstm_cell_14_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Á
AssignVariableOp_17AssignVariableOp9assignvariableop_17_lstm_14_lstm_cell_14_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18µ
AssignVariableOp_18AssignVariableOp-assignvariableop_18_lstm_14_lstm_cell_14_biasIdentity_18:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv1d_4_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv1d_4_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv1d_5_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv1d_5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_16_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_16_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_17_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_17_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¾
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_13_lstm_cell_13_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30È
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_lstm_13_lstm_cell_13_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¼
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_13_lstm_cell_13_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¾
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_14_lstm_cell_14_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33È
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_lstm_14_lstm_cell_14_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¼
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_14_lstm_cell_14_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv1d_4_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_4_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv1d_5_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv1d_5_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_16_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_16_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_17_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_17_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¾
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_13_lstm_cell_13_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44È
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_lstm_13_lstm_cell_13_recurrent_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¼
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_13_lstm_cell_13_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¾
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_lstm_14_lstm_cell_14_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47È
AssignVariableOp_47AssignVariableOp@assignvariableop_47_adam_lstm_14_lstm_cell_14_recurrent_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48¼
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_lstm_14_lstm_cell_14_bias_vIdentity_48:output:0"/device:CPU:0*
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
Þ¡
§
C__inference_lstm_14_layer_call_and_return_conditional_losses_425615

inputs=
*lstm_cell_14_split_readvariableop_resource:	 ;
,lstm_cell_14_split_1_readvariableop_resource:	7
$lstm_cell_14_readvariableop_resource:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_14/ReadVariableOp¢lstm_cell_14/ReadVariableOp_1¢lstm_cell_14/ReadVariableOp_2¢lstm_cell_14/ReadVariableOp_3¢!lstm_cell_14/split/ReadVariableOp¢#lstm_cell_14/split_1/ReadVariableOp¢whileD
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2z
lstm_cell_14/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_14/ones_like/Shape
lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_14/ones_like/Const¸
lstm_cell_14/ones_likeFill%lstm_cell_14/ones_like/Shape:output:0%lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/ones_like~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim²
!lstm_cell_14/split/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02#
!lstm_cell_14/split/ReadVariableOpÛ
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0)lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_cell_14/split
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul¡
lstm_cell_14/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_1¡
lstm_cell_14/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_2¡
lstm_cell_14/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_3
lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_14/split_1/split_dim´
#lstm_cell_14/split_1/ReadVariableOpReadVariableOp,lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_14/split_1/ReadVariableOpÓ
lstm_cell_14/split_1Split'lstm_cell_14/split_1/split_dim:output:0+lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_14/split_1§
lstm_cell_14/BiasAddBiasAddlstm_cell_14/MatMul:product:0lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd­
lstm_cell_14/BiasAdd_1BiasAddlstm_cell_14/MatMul_1:product:0lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_1­
lstm_cell_14/BiasAdd_2BiasAddlstm_cell_14/MatMul_2:product:0lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_2­
lstm_cell_14/BiasAdd_3BiasAddlstm_cell_14/MatMul_3:product:0lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_3
lstm_cell_14/mulMulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul
lstm_cell_14/mul_1Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_1
lstm_cell_14/mul_2Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_2
lstm_cell_14/mul_3Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_3 
lstm_cell_14/ReadVariableOpReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp
 lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_14/strided_slice/stack
"lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice/stack_1
"lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_14/strided_slice/stack_2Ê
lstm_cell_14/strided_sliceStridedSlice#lstm_cell_14/ReadVariableOp:value:0)lstm_cell_14/strided_slice/stack:output:0+lstm_cell_14/strided_slice/stack_1:output:0+lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice¥
lstm_cell_14/MatMul_4MatMullstm_cell_14/mul:z:0#lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_4
lstm_cell_14/addAddV2lstm_cell_14/BiasAdd:output:0lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add
lstm_cell_14/SigmoidSigmoidlstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid¤
lstm_cell_14/ReadVariableOp_1ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_1
"lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice_1/stack
$lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_cell_14/strided_slice_1/stack_1
$lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_1/stack_2Ö
lstm_cell_14/strided_slice_1StridedSlice%lstm_cell_14/ReadVariableOp_1:value:0+lstm_cell_14/strided_slice_1/stack:output:0-lstm_cell_14/strided_slice_1/stack_1:output:0-lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_1©
lstm_cell_14/MatMul_5MatMullstm_cell_14/mul_1:z:0%lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_5¥
lstm_cell_14/add_1AddV2lstm_cell_14/BiasAdd_1:output:0lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_1
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_1
lstm_cell_14/mul_4Mullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_4¤
lstm_cell_14/ReadVariableOp_2ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_2
"lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_cell_14/strided_slice_2/stack
$lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2&
$lstm_cell_14/strided_slice_2/stack_1
$lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_2/stack_2Ö
lstm_cell_14/strided_slice_2StridedSlice%lstm_cell_14/ReadVariableOp_2:value:0+lstm_cell_14/strided_slice_2/stack:output:0-lstm_cell_14/strided_slice_2/stack_1:output:0-lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_2©
lstm_cell_14/MatMul_6MatMullstm_cell_14/mul_2:z:0%lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_6¥
lstm_cell_14/add_2AddV2lstm_cell_14/BiasAdd_2:output:0lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_2x
lstm_cell_14/ReluRelulstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu
lstm_cell_14/mul_5Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_5
lstm_cell_14/add_3AddV2lstm_cell_14/mul_4:z:0lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_3¤
lstm_cell_14/ReadVariableOp_3ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_3
"lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2$
"lstm_cell_14/strided_slice_3/stack
$lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_14/strided_slice_3/stack_1
$lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_3/stack_2Ö
lstm_cell_14/strided_slice_3StridedSlice%lstm_cell_14/ReadVariableOp_3:value:0+lstm_cell_14/strided_slice_3/stack:output:0-lstm_cell_14/strided_slice_3/stack_1:output:0-lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_3©
lstm_cell_14/MatMul_7MatMullstm_cell_14/mul_3:z:0%lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_7¥
lstm_cell_14/add_4AddV2lstm_cell_14/BiasAdd_3:output:0lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_4
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_2|
lstm_cell_14/Relu_1Relulstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu_1 
lstm_cell_14/mul_6Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_14_split_readvariableop_resource,lstm_cell_14_split_1_readvariableop_resource$lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_425482*
condR
while_cond_425481*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

IdentityÞ
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_14/ReadVariableOp^lstm_cell_14/ReadVariableOp_1^lstm_cell_14/ReadVariableOp_2^lstm_cell_14/ReadVariableOp_3"^lstm_cell_14/split/ReadVariableOp$^lstm_cell_14/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_14/ReadVariableOplstm_cell_14/ReadVariableOp2>
lstm_cell_14/ReadVariableOp_1lstm_cell_14/ReadVariableOp_12>
lstm_cell_14/ReadVariableOp_2lstm_cell_14/ReadVariableOp_22>
lstm_cell_14/ReadVariableOp_3lstm_cell_14/ReadVariableOp_32F
!lstm_cell_14/split/ReadVariableOp!lstm_cell_14/split/ReadVariableOp2J
#lstm_cell_14/split_1/ReadVariableOp#lstm_cell_14/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
û

H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_429687

inputs
states_0
states_11
matmul_readvariableop_resource:	@3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
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
¦
µ
(__inference_lstm_14_layer_call_fn_429521

inputs
unknown:	 
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4256152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Þ¡
§
C__inference_lstm_14_layer_call_and_return_conditional_losses_429181

inputs=
*lstm_cell_14_split_readvariableop_resource:	 ;
,lstm_cell_14_split_1_readvariableop_resource:	7
$lstm_cell_14_readvariableop_resource:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_14/ReadVariableOp¢lstm_cell_14/ReadVariableOp_1¢lstm_cell_14/ReadVariableOp_2¢lstm_cell_14/ReadVariableOp_3¢!lstm_cell_14/split/ReadVariableOp¢#lstm_cell_14/split_1/ReadVariableOp¢whileD
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2z
lstm_cell_14/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_14/ones_like/Shape
lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_14/ones_like/Const¸
lstm_cell_14/ones_likeFill%lstm_cell_14/ones_like/Shape:output:0%lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/ones_like~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim²
!lstm_cell_14/split/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02#
!lstm_cell_14/split/ReadVariableOpÛ
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0)lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_cell_14/split
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul¡
lstm_cell_14/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_1¡
lstm_cell_14/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_2¡
lstm_cell_14/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_3
lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_14/split_1/split_dim´
#lstm_cell_14/split_1/ReadVariableOpReadVariableOp,lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_14/split_1/ReadVariableOpÓ
lstm_cell_14/split_1Split'lstm_cell_14/split_1/split_dim:output:0+lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_14/split_1§
lstm_cell_14/BiasAddBiasAddlstm_cell_14/MatMul:product:0lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd­
lstm_cell_14/BiasAdd_1BiasAddlstm_cell_14/MatMul_1:product:0lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_1­
lstm_cell_14/BiasAdd_2BiasAddlstm_cell_14/MatMul_2:product:0lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_2­
lstm_cell_14/BiasAdd_3BiasAddlstm_cell_14/MatMul_3:product:0lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_3
lstm_cell_14/mulMulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul
lstm_cell_14/mul_1Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_1
lstm_cell_14/mul_2Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_2
lstm_cell_14/mul_3Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_3 
lstm_cell_14/ReadVariableOpReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp
 lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_14/strided_slice/stack
"lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice/stack_1
"lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_14/strided_slice/stack_2Ê
lstm_cell_14/strided_sliceStridedSlice#lstm_cell_14/ReadVariableOp:value:0)lstm_cell_14/strided_slice/stack:output:0+lstm_cell_14/strided_slice/stack_1:output:0+lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice¥
lstm_cell_14/MatMul_4MatMullstm_cell_14/mul:z:0#lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_4
lstm_cell_14/addAddV2lstm_cell_14/BiasAdd:output:0lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add
lstm_cell_14/SigmoidSigmoidlstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid¤
lstm_cell_14/ReadVariableOp_1ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_1
"lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice_1/stack
$lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_cell_14/strided_slice_1/stack_1
$lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_1/stack_2Ö
lstm_cell_14/strided_slice_1StridedSlice%lstm_cell_14/ReadVariableOp_1:value:0+lstm_cell_14/strided_slice_1/stack:output:0-lstm_cell_14/strided_slice_1/stack_1:output:0-lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_1©
lstm_cell_14/MatMul_5MatMullstm_cell_14/mul_1:z:0%lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_5¥
lstm_cell_14/add_1AddV2lstm_cell_14/BiasAdd_1:output:0lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_1
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_1
lstm_cell_14/mul_4Mullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_4¤
lstm_cell_14/ReadVariableOp_2ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_2
"lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_cell_14/strided_slice_2/stack
$lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2&
$lstm_cell_14/strided_slice_2/stack_1
$lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_2/stack_2Ö
lstm_cell_14/strided_slice_2StridedSlice%lstm_cell_14/ReadVariableOp_2:value:0+lstm_cell_14/strided_slice_2/stack:output:0-lstm_cell_14/strided_slice_2/stack_1:output:0-lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_2©
lstm_cell_14/MatMul_6MatMullstm_cell_14/mul_2:z:0%lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_6¥
lstm_cell_14/add_2AddV2lstm_cell_14/BiasAdd_2:output:0lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_2x
lstm_cell_14/ReluRelulstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu
lstm_cell_14/mul_5Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_5
lstm_cell_14/add_3AddV2lstm_cell_14/mul_4:z:0lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_3¤
lstm_cell_14/ReadVariableOp_3ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_3
"lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2$
"lstm_cell_14/strided_slice_3/stack
$lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_14/strided_slice_3/stack_1
$lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_3/stack_2Ö
lstm_cell_14/strided_slice_3StridedSlice%lstm_cell_14/ReadVariableOp_3:value:0+lstm_cell_14/strided_slice_3/stack:output:0-lstm_cell_14/strided_slice_3/stack_1:output:0-lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_3©
lstm_cell_14/MatMul_7MatMullstm_cell_14/mul_3:z:0%lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_7¥
lstm_cell_14/add_4AddV2lstm_cell_14/BiasAdd_3:output:0lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_4
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_2|
lstm_cell_14/Relu_1Relulstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu_1 
lstm_cell_14/mul_6Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_14_split_readvariableop_resource,lstm_cell_14_split_1_readvariableop_resource$lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_429048*
condR
while_cond_429047*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

IdentityÞ
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_14/ReadVariableOp^lstm_cell_14/ReadVariableOp_1^lstm_cell_14/ReadVariableOp_2^lstm_cell_14/ReadVariableOp_3"^lstm_cell_14/split/ReadVariableOp$^lstm_cell_14/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_14/ReadVariableOplstm_cell_14/ReadVariableOp2>
lstm_cell_14/ReadVariableOp_1lstm_cell_14/ReadVariableOp_12>
lstm_cell_14/ReadVariableOp_2lstm_cell_14/ReadVariableOp_22>
lstm_cell_14/ReadVariableOp_3lstm_cell_14/ReadVariableOp_32F
!lstm_cell_14/split/ReadVariableOp!lstm_cell_14/split/ReadVariableOp2J
#lstm_cell_14/split_1/ReadVariableOp#lstm_cell_14/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Õ
Ã
while_cond_429322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_429322___redundant_placeholder04
0while_while_cond_429322___redundant_placeholder14
0while_while_cond_429322___redundant_placeholder24
0while_while_cond_429322___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
­­
Ï
!__inference__wrapped_model_423707
conv1d_4_inputW
Asequential_5_conv1d_4_conv1d_expanddims_1_readvariableop_resource: C
5sequential_5_conv1d_4_biasadd_readvariableop_resource: W
Asequential_5_conv1d_5_conv1d_expanddims_1_readvariableop_resource: @C
5sequential_5_conv1d_5_biasadd_readvariableop_resource:@S
@sequential_5_lstm_13_lstm_cell_13_matmul_readvariableop_resource:	@U
Bsequential_5_lstm_13_lstm_cell_13_matmul_1_readvariableop_resource:	 P
Asequential_5_lstm_13_lstm_cell_13_biasadd_readvariableop_resource:	R
?sequential_5_lstm_14_lstm_cell_14_split_readvariableop_resource:	 P
Asequential_5_lstm_14_lstm_cell_14_split_1_readvariableop_resource:	L
9sequential_5_lstm_14_lstm_cell_14_readvariableop_resource:	@F
4sequential_5_dense_16_matmul_readvariableop_resource:@@C
5sequential_5_dense_16_biasadd_readvariableop_resource:@F
4sequential_5_dense_17_matmul_readvariableop_resource:@C
5sequential_5_dense_17_biasadd_readvariableop_resource:
identity¢,sequential_5/conv1d_4/BiasAdd/ReadVariableOp¢8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_5/conv1d_5/BiasAdd/ReadVariableOp¢8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_5/dense_16/BiasAdd/ReadVariableOp¢+sequential_5/dense_16/MatMul/ReadVariableOp¢,sequential_5/dense_17/BiasAdd/ReadVariableOp¢+sequential_5/dense_17/MatMul/ReadVariableOp¢8sequential_5/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp¢7sequential_5/lstm_13/lstm_cell_13/MatMul/ReadVariableOp¢9sequential_5/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp¢sequential_5/lstm_13/while¢0sequential_5/lstm_14/lstm_cell_14/ReadVariableOp¢2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_1¢2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_2¢2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_3¢6sequential_5/lstm_14/lstm_cell_14/split/ReadVariableOp¢8sequential_5/lstm_14/lstm_cell_14/split_1/ReadVariableOp¢sequential_5/lstm_14/while¥
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
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_5/conv1d_4/conv1d/ExpandDimsú
8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_5_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2+
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
sequential_5/lstm_13/ShapeShape-sequential_5/max_pooling1d_2/Squeeze:output:0*
T0*
_output_shapes
:2
sequential_5/lstm_13/Shape
(sequential_5/lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_13/strided_slice/stack¢
*sequential_5/lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_13/strided_slice/stack_1¢
*sequential_5/lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_13/strided_slice/stack_2à
"sequential_5/lstm_13/strided_sliceStridedSlice#sequential_5/lstm_13/Shape:output:01sequential_5/lstm_13/strided_slice/stack:output:03sequential_5/lstm_13/strided_slice/stack_1:output:03sequential_5/lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_13/strided_slice
 sequential_5/lstm_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2"
 sequential_5/lstm_13/zeros/mul/yÀ
sequential_5/lstm_13/zeros/mulMul+sequential_5/lstm_13/strided_slice:output:0)sequential_5/lstm_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_13/zeros/mul
!sequential_5/lstm_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_5/lstm_13/zeros/Less/y»
sequential_5/lstm_13/zeros/LessLess"sequential_5/lstm_13/zeros/mul:z:0*sequential_5/lstm_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_13/zeros/Less
#sequential_5/lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_5/lstm_13/zeros/packed/1×
!sequential_5/lstm_13/zeros/packedPack+sequential_5/lstm_13/strided_slice:output:0,sequential_5/lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_13/zeros/packed
 sequential_5/lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_13/zeros/ConstÉ
sequential_5/lstm_13/zerosFill*sequential_5/lstm_13/zeros/packed:output:0)sequential_5/lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_5/lstm_13/zeros
"sequential_5/lstm_13/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_5/lstm_13/zeros_1/mul/yÆ
 sequential_5/lstm_13/zeros_1/mulMul+sequential_5/lstm_13/strided_slice:output:0+sequential_5/lstm_13/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_13/zeros_1/mul
#sequential_5/lstm_13/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_5/lstm_13/zeros_1/Less/yÃ
!sequential_5/lstm_13/zeros_1/LessLess$sequential_5/lstm_13/zeros_1/mul:z:0,sequential_5/lstm_13/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_13/zeros_1/Less
%sequential_5/lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_5/lstm_13/zeros_1/packed/1Ý
#sequential_5/lstm_13/zeros_1/packedPack+sequential_5/lstm_13/strided_slice:output:0.sequential_5/lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_13/zeros_1/packed
"sequential_5/lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_13/zeros_1/ConstÑ
sequential_5/lstm_13/zeros_1Fill,sequential_5/lstm_13/zeros_1/packed:output:0+sequential_5/lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_5/lstm_13/zeros_1
#sequential_5/lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_13/transpose/permà
sequential_5/lstm_13/transpose	Transpose-sequential_5/max_pooling1d_2/Squeeze:output:0,sequential_5/lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_5/lstm_13/transpose
sequential_5/lstm_13/Shape_1Shape"sequential_5/lstm_13/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_13/Shape_1¢
*sequential_5/lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_13/strided_slice_1/stack¦
,sequential_5/lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_13/strided_slice_1/stack_1¦
,sequential_5/lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_13/strided_slice_1/stack_2ì
$sequential_5/lstm_13/strided_slice_1StridedSlice%sequential_5/lstm_13/Shape_1:output:03sequential_5/lstm_13/strided_slice_1/stack:output:05sequential_5/lstm_13/strided_slice_1/stack_1:output:05sequential_5/lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_13/strided_slice_1¯
0sequential_5/lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_5/lstm_13/TensorArrayV2/element_shape
"sequential_5/lstm_13/TensorArrayV2TensorListReserve9sequential_5/lstm_13/TensorArrayV2/element_shape:output:0-sequential_5/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_13/TensorArrayV2é
Jsequential_5/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2L
Jsequential_5/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_5/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_13/transpose:y:0Ssequential_5/lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_13/TensorArrayUnstack/TensorListFromTensor¢
*sequential_5/lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_13/strided_slice_2/stack¦
,sequential_5/lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_13/strided_slice_2/stack_1¦
,sequential_5/lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_13/strided_slice_2/stack_2ú
$sequential_5/lstm_13/strided_slice_2StridedSlice"sequential_5/lstm_13/transpose:y:03sequential_5/lstm_13/strided_slice_2/stack:output:05sequential_5/lstm_13/strided_slice_2/stack_1:output:05sequential_5/lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2&
$sequential_5/lstm_13/strided_slice_2ô
7sequential_5/lstm_13/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_13_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype029
7sequential_5/lstm_13/lstm_cell_13/MatMul/ReadVariableOp
(sequential_5/lstm_13/lstm_cell_13/MatMulMatMul-sequential_5/lstm_13/strided_slice_2:output:0?sequential_5/lstm_13/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_5/lstm_13/lstm_cell_13/MatMulú
9sequential_5/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_13_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02;
9sequential_5/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpý
*sequential_5/lstm_13/lstm_cell_13/MatMul_1MatMul#sequential_5/lstm_13/zeros:output:0Asequential_5/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_5/lstm_13/lstm_cell_13/MatMul_1ô
%sequential_5/lstm_13/lstm_cell_13/addAddV22sequential_5/lstm_13/lstm_cell_13/MatMul:product:04sequential_5/lstm_13/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_5/lstm_13/lstm_cell_13/addó
8sequential_5/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02:
8sequential_5/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp
)sequential_5/lstm_13/lstm_cell_13/BiasAddBiasAdd)sequential_5/lstm_13/lstm_cell_13/add:z:0@sequential_5/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_5/lstm_13/lstm_cell_13/BiasAdd¨
1sequential_5/lstm_13/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_13/lstm_cell_13/split/split_dimÇ
'sequential_5/lstm_13/lstm_cell_13/splitSplit:sequential_5/lstm_13/lstm_cell_13/split/split_dim:output:02sequential_5/lstm_13/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2)
'sequential_5/lstm_13/lstm_cell_13/splitÅ
)sequential_5/lstm_13/lstm_cell_13/SigmoidSigmoid0sequential_5/lstm_13/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_5/lstm_13/lstm_cell_13/SigmoidÉ
+sequential_5/lstm_13/lstm_cell_13/Sigmoid_1Sigmoid0sequential_5/lstm_13/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_5/lstm_13/lstm_cell_13/Sigmoid_1ß
%sequential_5/lstm_13/lstm_cell_13/mulMul/sequential_5/lstm_13/lstm_cell_13/Sigmoid_1:y:0%sequential_5/lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_5/lstm_13/lstm_cell_13/mul¼
&sequential_5/lstm_13/lstm_cell_13/ReluRelu0sequential_5/lstm_13/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_5/lstm_13/lstm_cell_13/Reluð
'sequential_5/lstm_13/lstm_cell_13/mul_1Mul-sequential_5/lstm_13/lstm_cell_13/Sigmoid:y:04sequential_5/lstm_13/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_5/lstm_13/lstm_cell_13/mul_1å
'sequential_5/lstm_13/lstm_cell_13/add_1AddV2)sequential_5/lstm_13/lstm_cell_13/mul:z:0+sequential_5/lstm_13/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_5/lstm_13/lstm_cell_13/add_1É
+sequential_5/lstm_13/lstm_cell_13/Sigmoid_2Sigmoid0sequential_5/lstm_13/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_5/lstm_13/lstm_cell_13/Sigmoid_2»
(sequential_5/lstm_13/lstm_cell_13/Relu_1Relu+sequential_5/lstm_13/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(sequential_5/lstm_13/lstm_cell_13/Relu_1ô
'sequential_5/lstm_13/lstm_cell_13/mul_2Mul/sequential_5/lstm_13/lstm_cell_13/Sigmoid_2:y:06sequential_5/lstm_13/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'sequential_5/lstm_13/lstm_cell_13/mul_2¹
2sequential_5/lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    24
2sequential_5/lstm_13/TensorArrayV2_1/element_shape
$sequential_5/lstm_13/TensorArrayV2_1TensorListReserve;sequential_5/lstm_13/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_5/lstm_13/TensorArrayV2_1x
sequential_5/lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_5/lstm_13/time©
-sequential_5/lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_13/while/maximum_iterations
'sequential_5/lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_13/while/loop_counterÆ
sequential_5/lstm_13/whileWhile0sequential_5/lstm_13/while/loop_counter:output:06sequential_5/lstm_13/while/maximum_iterations:output:0"sequential_5/lstm_13/time:output:0-sequential_5/lstm_13/TensorArrayV2_1:handle:0#sequential_5/lstm_13/zeros:output:0%sequential_5/lstm_13/zeros_1:output:0-sequential_5/lstm_13/strided_slice_1:output:0Lsequential_5/lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_13_lstm_cell_13_matmul_readvariableop_resourceBsequential_5_lstm_13_lstm_cell_13_matmul_1_readvariableop_resourceAsequential_5_lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_13_while_body_423368*2
cond*R(
&sequential_5_lstm_13_while_cond_423367*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
sequential_5/lstm_13/whileß
Esequential_5/lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2G
Esequential_5/lstm_13/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_5/lstm_13/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_13/while:output:3Nsequential_5/lstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype029
7sequential_5/lstm_13/TensorArrayV2Stack/TensorListStack«
*sequential_5/lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_5/lstm_13/strided_slice_3/stack¦
,sequential_5/lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_13/strided_slice_3/stack_1¦
,sequential_5/lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_13/strided_slice_3/stack_2
$sequential_5/lstm_13/strided_slice_3StridedSlice@sequential_5/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_13/strided_slice_3/stack:output:05sequential_5/lstm_13/strided_slice_3/stack_1:output:05sequential_5/lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2&
$sequential_5/lstm_13/strided_slice_3£
%sequential_5/lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_13/transpose_1/permù
 sequential_5/lstm_13/transpose_1	Transpose@sequential_5/lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 sequential_5/lstm_13/transpose_1
sequential_5/lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_13/runtime
sequential_5/lstm_14/ShapeShape$sequential_5/lstm_13/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_14/Shape
(sequential_5/lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_14/strided_slice/stack¢
*sequential_5/lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_14/strided_slice/stack_1¢
*sequential_5/lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_14/strided_slice/stack_2à
"sequential_5/lstm_14/strided_sliceStridedSlice#sequential_5/lstm_14/Shape:output:01sequential_5/lstm_14/strided_slice/stack:output:03sequential_5/lstm_14/strided_slice/stack_1:output:03sequential_5/lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_14/strided_slice
 sequential_5/lstm_14/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2"
 sequential_5/lstm_14/zeros/mul/yÀ
sequential_5/lstm_14/zeros/mulMul+sequential_5/lstm_14/strided_slice:output:0)sequential_5/lstm_14/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_14/zeros/mul
!sequential_5/lstm_14/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_5/lstm_14/zeros/Less/y»
sequential_5/lstm_14/zeros/LessLess"sequential_5/lstm_14/zeros/mul:z:0*sequential_5/lstm_14/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_14/zeros/Less
#sequential_5/lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential_5/lstm_14/zeros/packed/1×
!sequential_5/lstm_14/zeros/packedPack+sequential_5/lstm_14/strided_slice:output:0,sequential_5/lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_14/zeros/packed
 sequential_5/lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_14/zeros/ConstÉ
sequential_5/lstm_14/zerosFill*sequential_5/lstm_14/zeros/packed:output:0)sequential_5/lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_5/lstm_14/zeros
"sequential_5/lstm_14/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_5/lstm_14/zeros_1/mul/yÆ
 sequential_5/lstm_14/zeros_1/mulMul+sequential_5/lstm_14/strided_slice:output:0+sequential_5/lstm_14/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_14/zeros_1/mul
#sequential_5/lstm_14/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_5/lstm_14/zeros_1/Less/yÃ
!sequential_5/lstm_14/zeros_1/LessLess$sequential_5/lstm_14/zeros_1/mul:z:0,sequential_5/lstm_14/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_14/zeros_1/Less
%sequential_5/lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2'
%sequential_5/lstm_14/zeros_1/packed/1Ý
#sequential_5/lstm_14/zeros_1/packedPack+sequential_5/lstm_14/strided_slice:output:0.sequential_5/lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_14/zeros_1/packed
"sequential_5/lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_14/zeros_1/ConstÑ
sequential_5/lstm_14/zeros_1Fill,sequential_5/lstm_14/zeros_1/packed:output:0+sequential_5/lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_5/lstm_14/zeros_1
#sequential_5/lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_14/transpose/perm×
sequential_5/lstm_14/transpose	Transpose$sequential_5/lstm_13/transpose_1:y:0,sequential_5/lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
sequential_5/lstm_14/transpose
sequential_5/lstm_14/Shape_1Shape"sequential_5/lstm_14/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_14/Shape_1¢
*sequential_5/lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_14/strided_slice_1/stack¦
,sequential_5/lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_14/strided_slice_1/stack_1¦
,sequential_5/lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_14/strided_slice_1/stack_2ì
$sequential_5/lstm_14/strided_slice_1StridedSlice%sequential_5/lstm_14/Shape_1:output:03sequential_5/lstm_14/strided_slice_1/stack:output:05sequential_5/lstm_14/strided_slice_1/stack_1:output:05sequential_5/lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_14/strided_slice_1¯
0sequential_5/lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_5/lstm_14/TensorArrayV2/element_shape
"sequential_5/lstm_14/TensorArrayV2TensorListReserve9sequential_5/lstm_14/TensorArrayV2/element_shape:output:0-sequential_5/lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_14/TensorArrayV2é
Jsequential_5/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2L
Jsequential_5/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_5/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_14/transpose:y:0Ssequential_5/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_14/TensorArrayUnstack/TensorListFromTensor¢
*sequential_5/lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_14/strided_slice_2/stack¦
,sequential_5/lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_14/strided_slice_2/stack_1¦
,sequential_5/lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_14/strided_slice_2/stack_2ú
$sequential_5/lstm_14/strided_slice_2StridedSlice"sequential_5/lstm_14/transpose:y:03sequential_5/lstm_14/strided_slice_2/stack:output:05sequential_5/lstm_14/strided_slice_2/stack_1:output:05sequential_5/lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2&
$sequential_5/lstm_14/strided_slice_2¹
1sequential_5/lstm_14/lstm_cell_14/ones_like/ShapeShape#sequential_5/lstm_14/zeros:output:0*
T0*
_output_shapes
:23
1sequential_5/lstm_14/lstm_cell_14/ones_like/Shape«
1sequential_5/lstm_14/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?23
1sequential_5/lstm_14/lstm_cell_14/ones_like/Const
+sequential_5/lstm_14/lstm_cell_14/ones_likeFill:sequential_5/lstm_14/lstm_cell_14/ones_like/Shape:output:0:sequential_5/lstm_14/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/lstm_cell_14/ones_like¨
1sequential_5/lstm_14/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_14/lstm_cell_14/split/split_dimñ
6sequential_5/lstm_14/lstm_cell_14/split/ReadVariableOpReadVariableOp?sequential_5_lstm_14_lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype028
6sequential_5/lstm_14/lstm_cell_14/split/ReadVariableOp¯
'sequential_5/lstm_14/lstm_cell_14/splitSplit:sequential_5/lstm_14/lstm_cell_14/split/split_dim:output:0>sequential_5/lstm_14/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2)
'sequential_5/lstm_14/lstm_cell_14/splitñ
(sequential_5/lstm_14/lstm_cell_14/MatMulMatMul-sequential_5/lstm_14/strided_slice_2:output:00sequential_5/lstm_14/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(sequential_5/lstm_14/lstm_cell_14/MatMulõ
*sequential_5/lstm_14/lstm_cell_14/MatMul_1MatMul-sequential_5/lstm_14/strided_slice_2:output:00sequential_5/lstm_14/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_5/lstm_14/lstm_cell_14/MatMul_1õ
*sequential_5/lstm_14/lstm_cell_14/MatMul_2MatMul-sequential_5/lstm_14/strided_slice_2:output:00sequential_5/lstm_14/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_5/lstm_14/lstm_cell_14/MatMul_2õ
*sequential_5/lstm_14/lstm_cell_14/MatMul_3MatMul-sequential_5/lstm_14/strided_slice_2:output:00sequential_5/lstm_14/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_5/lstm_14/lstm_cell_14/MatMul_3¬
3sequential_5/lstm_14/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 25
3sequential_5/lstm_14/lstm_cell_14/split_1/split_dimó
8sequential_5/lstm_14/lstm_cell_14/split_1/ReadVariableOpReadVariableOpAsequential_5_lstm_14_lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02:
8sequential_5/lstm_14/lstm_cell_14/split_1/ReadVariableOp§
)sequential_5/lstm_14/lstm_cell_14/split_1Split<sequential_5/lstm_14/lstm_cell_14/split_1/split_dim:output:0@sequential_5/lstm_14/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2+
)sequential_5/lstm_14/lstm_cell_14/split_1û
)sequential_5/lstm_14/lstm_cell_14/BiasAddBiasAdd2sequential_5/lstm_14/lstm_cell_14/MatMul:product:02sequential_5/lstm_14/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)sequential_5/lstm_14/lstm_cell_14/BiasAdd
+sequential_5/lstm_14/lstm_cell_14/BiasAdd_1BiasAdd4sequential_5/lstm_14/lstm_cell_14/MatMul_1:product:02sequential_5/lstm_14/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/lstm_cell_14/BiasAdd_1
+sequential_5/lstm_14/lstm_cell_14/BiasAdd_2BiasAdd4sequential_5/lstm_14/lstm_cell_14/MatMul_2:product:02sequential_5/lstm_14/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/lstm_cell_14/BiasAdd_2
+sequential_5/lstm_14/lstm_cell_14/BiasAdd_3BiasAdd4sequential_5/lstm_14/lstm_cell_14/MatMul_3:product:02sequential_5/lstm_14/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/lstm_cell_14/BiasAdd_3â
%sequential_5/lstm_14/lstm_cell_14/mulMul#sequential_5/lstm_14/zeros:output:04sequential_5/lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_5/lstm_14/lstm_cell_14/mulæ
'sequential_5/lstm_14/lstm_cell_14/mul_1Mul#sequential_5/lstm_14/zeros:output:04sequential_5/lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/mul_1æ
'sequential_5/lstm_14/lstm_cell_14/mul_2Mul#sequential_5/lstm_14/zeros:output:04sequential_5/lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/mul_2æ
'sequential_5/lstm_14/lstm_cell_14/mul_3Mul#sequential_5/lstm_14/zeros:output:04sequential_5/lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/mul_3ß
0sequential_5/lstm_14/lstm_cell_14/ReadVariableOpReadVariableOp9sequential_5_lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype022
0sequential_5/lstm_14/lstm_cell_14/ReadVariableOp¿
5sequential_5/lstm_14/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_5/lstm_14/lstm_cell_14/strided_slice/stackÃ
7sequential_5/lstm_14/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   29
7sequential_5/lstm_14/lstm_cell_14/strided_slice/stack_1Ã
7sequential_5/lstm_14/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_5/lstm_14/lstm_cell_14/strided_slice/stack_2È
/sequential_5/lstm_14/lstm_cell_14/strided_sliceStridedSlice8sequential_5/lstm_14/lstm_cell_14/ReadVariableOp:value:0>sequential_5/lstm_14/lstm_cell_14/strided_slice/stack:output:0@sequential_5/lstm_14/lstm_cell_14/strided_slice/stack_1:output:0@sequential_5/lstm_14/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential_5/lstm_14/lstm_cell_14/strided_sliceù
*sequential_5/lstm_14/lstm_cell_14/MatMul_4MatMul)sequential_5/lstm_14/lstm_cell_14/mul:z:08sequential_5/lstm_14/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_5/lstm_14/lstm_cell_14/MatMul_4ó
%sequential_5/lstm_14/lstm_cell_14/addAddV22sequential_5/lstm_14/lstm_cell_14/BiasAdd:output:04sequential_5/lstm_14/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_5/lstm_14/lstm_cell_14/add¾
)sequential_5/lstm_14/lstm_cell_14/SigmoidSigmoid)sequential_5/lstm_14/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)sequential_5/lstm_14/lstm_cell_14/Sigmoidã
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_1ReadVariableOp9sequential_5_lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype024
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_1Ã
7sequential_5/lstm_14/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7sequential_5/lstm_14/lstm_cell_14/strided_slice_1/stackÇ
9sequential_5/lstm_14/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2;
9sequential_5/lstm_14/lstm_cell_14/strided_slice_1/stack_1Ç
9sequential_5/lstm_14/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_5/lstm_14/lstm_cell_14/strided_slice_1/stack_2Ô
1sequential_5/lstm_14/lstm_cell_14/strided_slice_1StridedSlice:sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_1:value:0@sequential_5/lstm_14/lstm_cell_14/strided_slice_1/stack:output:0Bsequential_5/lstm_14/lstm_cell_14/strided_slice_1/stack_1:output:0Bsequential_5/lstm_14/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask23
1sequential_5/lstm_14/lstm_cell_14/strided_slice_1ý
*sequential_5/lstm_14/lstm_cell_14/MatMul_5MatMul+sequential_5/lstm_14/lstm_cell_14/mul_1:z:0:sequential_5/lstm_14/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_5/lstm_14/lstm_cell_14/MatMul_5ù
'sequential_5/lstm_14/lstm_cell_14/add_1AddV24sequential_5/lstm_14/lstm_cell_14/BiasAdd_1:output:04sequential_5/lstm_14/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/add_1Ä
+sequential_5/lstm_14/lstm_cell_14/Sigmoid_1Sigmoid+sequential_5/lstm_14/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/lstm_cell_14/Sigmoid_1ã
'sequential_5/lstm_14/lstm_cell_14/mul_4Mul/sequential_5/lstm_14/lstm_cell_14/Sigmoid_1:y:0%sequential_5/lstm_14/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/mul_4ã
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_2ReadVariableOp9sequential_5_lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype024
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_2Ã
7sequential_5/lstm_14/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_5/lstm_14/lstm_cell_14/strided_slice_2/stackÇ
9sequential_5/lstm_14/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2;
9sequential_5/lstm_14/lstm_cell_14/strided_slice_2/stack_1Ç
9sequential_5/lstm_14/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_5/lstm_14/lstm_cell_14/strided_slice_2/stack_2Ô
1sequential_5/lstm_14/lstm_cell_14/strided_slice_2StridedSlice:sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_2:value:0@sequential_5/lstm_14/lstm_cell_14/strided_slice_2/stack:output:0Bsequential_5/lstm_14/lstm_cell_14/strided_slice_2/stack_1:output:0Bsequential_5/lstm_14/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask23
1sequential_5/lstm_14/lstm_cell_14/strided_slice_2ý
*sequential_5/lstm_14/lstm_cell_14/MatMul_6MatMul+sequential_5/lstm_14/lstm_cell_14/mul_2:z:0:sequential_5/lstm_14/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_5/lstm_14/lstm_cell_14/MatMul_6ù
'sequential_5/lstm_14/lstm_cell_14/add_2AddV24sequential_5/lstm_14/lstm_cell_14/BiasAdd_2:output:04sequential_5/lstm_14/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/add_2·
&sequential_5/lstm_14/lstm_cell_14/ReluRelu+sequential_5/lstm_14/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&sequential_5/lstm_14/lstm_cell_14/Reluð
'sequential_5/lstm_14/lstm_cell_14/mul_5Mul-sequential_5/lstm_14/lstm_cell_14/Sigmoid:y:04sequential_5/lstm_14/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/mul_5ç
'sequential_5/lstm_14/lstm_cell_14/add_3AddV2+sequential_5/lstm_14/lstm_cell_14/mul_4:z:0+sequential_5/lstm_14/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/add_3ã
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_3ReadVariableOp9sequential_5_lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype024
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_3Ã
7sequential_5/lstm_14/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   29
7sequential_5/lstm_14/lstm_cell_14/strided_slice_3/stackÇ
9sequential_5/lstm_14/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_5/lstm_14/lstm_cell_14/strided_slice_3/stack_1Ç
9sequential_5/lstm_14/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_5/lstm_14/lstm_cell_14/strided_slice_3/stack_2Ô
1sequential_5/lstm_14/lstm_cell_14/strided_slice_3StridedSlice:sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_3:value:0@sequential_5/lstm_14/lstm_cell_14/strided_slice_3/stack:output:0Bsequential_5/lstm_14/lstm_cell_14/strided_slice_3/stack_1:output:0Bsequential_5/lstm_14/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask23
1sequential_5/lstm_14/lstm_cell_14/strided_slice_3ý
*sequential_5/lstm_14/lstm_cell_14/MatMul_7MatMul+sequential_5/lstm_14/lstm_cell_14/mul_3:z:0:sequential_5/lstm_14/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*sequential_5/lstm_14/lstm_cell_14/MatMul_7ù
'sequential_5/lstm_14/lstm_cell_14/add_4AddV24sequential_5/lstm_14/lstm_cell_14/BiasAdd_3:output:04sequential_5/lstm_14/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/add_4Ä
+sequential_5/lstm_14/lstm_cell_14/Sigmoid_2Sigmoid+sequential_5/lstm_14/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2-
+sequential_5/lstm_14/lstm_cell_14/Sigmoid_2»
(sequential_5/lstm_14/lstm_cell_14/Relu_1Relu+sequential_5/lstm_14/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(sequential_5/lstm_14/lstm_cell_14/Relu_1ô
'sequential_5/lstm_14/lstm_cell_14/mul_6Mul/sequential_5/lstm_14/lstm_cell_14/Sigmoid_2:y:06sequential_5/lstm_14/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'sequential_5/lstm_14/lstm_cell_14/mul_6¹
2sequential_5/lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   24
2sequential_5/lstm_14/TensorArrayV2_1/element_shape
$sequential_5/lstm_14/TensorArrayV2_1TensorListReserve;sequential_5/lstm_14/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_5/lstm_14/TensorArrayV2_1x
sequential_5/lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_5/lstm_14/time©
-sequential_5/lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_5/lstm_14/while/maximum_iterations
'sequential_5/lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_14/while/loop_counter¼
sequential_5/lstm_14/whileWhile0sequential_5/lstm_14/while/loop_counter:output:06sequential_5/lstm_14/while/maximum_iterations:output:0"sequential_5/lstm_14/time:output:0-sequential_5/lstm_14/TensorArrayV2_1:handle:0#sequential_5/lstm_14/zeros:output:0%sequential_5/lstm_14/zeros_1:output:0-sequential_5/lstm_14/strided_slice_1:output:0Lsequential_5/lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_5_lstm_14_lstm_cell_14_split_readvariableop_resourceAsequential_5_lstm_14_lstm_cell_14_split_1_readvariableop_resource9sequential_5_lstm_14_lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_14_while_body_423558*2
cond*R(
&sequential_5_lstm_14_while_cond_423557*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
sequential_5/lstm_14/whileß
Esequential_5/lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2G
Esequential_5/lstm_14/TensorArrayV2Stack/TensorListStack/element_shape¼
7sequential_5/lstm_14/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_14/while:output:3Nsequential_5/lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype029
7sequential_5/lstm_14/TensorArrayV2Stack/TensorListStack«
*sequential_5/lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_5/lstm_14/strided_slice_3/stack¦
,sequential_5/lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_14/strided_slice_3/stack_1¦
,sequential_5/lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_14/strided_slice_3/stack_2
$sequential_5/lstm_14/strided_slice_3StridedSlice@sequential_5/lstm_14/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_14/strided_slice_3/stack:output:05sequential_5/lstm_14/strided_slice_3/stack_1:output:05sequential_5/lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2&
$sequential_5/lstm_14/strided_slice_3£
%sequential_5/lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_14/transpose_1/permù
 sequential_5/lstm_14/transpose_1	Transpose@sequential_5/lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 sequential_5/lstm_14/transpose_1
sequential_5/lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_14/runtimeÏ
+sequential_5/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_16_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02-
+sequential_5/dense_16/MatMul/ReadVariableOpÜ
sequential_5/dense_16/MatMulMatMul-sequential_5/lstm_14/strided_slice_3:output:03sequential_5/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_5/dense_16/MatMulÎ
,sequential_5/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_5/dense_16/BiasAdd/ReadVariableOpÙ
sequential_5/dense_16/BiasAddBiasAdd&sequential_5/dense_16/MatMul:product:04sequential_5/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_5/dense_16/BiasAdd
sequential_5/dense_16/ReluRelu&sequential_5/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_5/dense_16/ReluÏ
+sequential_5/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_17_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02-
+sequential_5/dense_17/MatMul/ReadVariableOp×
sequential_5/dense_17/MatMulMatMul(sequential_5/dense_16/Relu:activations:03sequential_5/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/dense_17/MatMulÎ
,sequential_5/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_5/dense_17/BiasAdd/ReadVariableOpÙ
sequential_5/dense_17/BiasAddBiasAdd&sequential_5/dense_17/MatMul:product:04sequential_5/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_5/dense_17/BiasAdd
sequential_5/reshape_8/ShapeShape&sequential_5/dense_17/BiasAdd:output:0*
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
sequential_5/reshape_8/ReshapeReshape&sequential_5/dense_17/BiasAdd:output:0-sequential_5/reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_5/reshape_8/Reshape
IdentityIdentity'sequential_5/reshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp-^sequential_5/conv1d_4/BiasAdd/ReadVariableOp9^sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp-^sequential_5/conv1d_5/BiasAdd/ReadVariableOp9^sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp-^sequential_5/dense_16/BiasAdd/ReadVariableOp,^sequential_5/dense_16/MatMul/ReadVariableOp-^sequential_5/dense_17/BiasAdd/ReadVariableOp,^sequential_5/dense_17/MatMul/ReadVariableOp9^sequential_5/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp8^sequential_5/lstm_13/lstm_cell_13/MatMul/ReadVariableOp:^sequential_5/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp^sequential_5/lstm_13/while1^sequential_5/lstm_14/lstm_cell_14/ReadVariableOp3^sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_13^sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_23^sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_37^sequential_5/lstm_14/lstm_cell_14/split/ReadVariableOp9^sequential_5/lstm_14/lstm_cell_14/split_1/ReadVariableOp^sequential_5/lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2\
,sequential_5/conv1d_4/BiasAdd/ReadVariableOp,sequential_5/conv1d_4/BiasAdd/ReadVariableOp2t
8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp8sequential_5/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_5/conv1d_5/BiasAdd/ReadVariableOp,sequential_5/conv1d_5/BiasAdd/ReadVariableOp2t
8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp8sequential_5/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_5/dense_16/BiasAdd/ReadVariableOp,sequential_5/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_16/MatMul/ReadVariableOp+sequential_5/dense_16/MatMul/ReadVariableOp2\
,sequential_5/dense_17/BiasAdd/ReadVariableOp,sequential_5/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_17/MatMul/ReadVariableOp+sequential_5/dense_17/MatMul/ReadVariableOp2t
8sequential_5/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp8sequential_5/lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_13/lstm_cell_13/MatMul/ReadVariableOp7sequential_5/lstm_13/lstm_cell_13/MatMul/ReadVariableOp2v
9sequential_5/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp9sequential_5/lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp28
sequential_5/lstm_13/whilesequential_5/lstm_13/while2d
0sequential_5/lstm_14/lstm_cell_14/ReadVariableOp0sequential_5/lstm_14/lstm_cell_14/ReadVariableOp2h
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_12sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_12h
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_22sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_22h
2sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_32sequential_5/lstm_14/lstm_cell_14/ReadVariableOp_32p
6sequential_5/lstm_14/lstm_cell_14/split/ReadVariableOp6sequential_5/lstm_14/lstm_cell_14/split/ReadVariableOp2t
8sequential_5/lstm_14/lstm_cell_14/split_1/ReadVariableOp8sequential_5/lstm_14/lstm_cell_14/split_1/ReadVariableOp28
sequential_5/lstm_14/whilesequential_5/lstm_14/while:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
R
Å
C__inference_lstm_14_layer_call_and_return_conditional_losses_424875

inputs&
lstm_cell_14_424787:	 "
lstm_cell_14_424789:	&
lstm_cell_14_424791:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_14/StatefulPartitionedCall¢whileD
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_14_424787lstm_cell_14_424789lstm_cell_14_424791*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_4247222&
$lstm_cell_14/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_424787lstm_cell_14_424789lstm_cell_14_424791*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_424800*
condR
while_cond_424799*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÓ
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_14_424787*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity½
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
]
ñ
&sequential_5_lstm_13_while_body_423368F
Bsequential_5_lstm_13_while_sequential_5_lstm_13_while_loop_counterL
Hsequential_5_lstm_13_while_sequential_5_lstm_13_while_maximum_iterations*
&sequential_5_lstm_13_while_placeholder,
(sequential_5_lstm_13_while_placeholder_1,
(sequential_5_lstm_13_while_placeholder_2,
(sequential_5_lstm_13_while_placeholder_3E
Asequential_5_lstm_13_while_sequential_5_lstm_13_strided_slice_1_0
}sequential_5_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_13_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_5_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0:	@]
Jsequential_5_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 X
Isequential_5_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0:	'
#sequential_5_lstm_13_while_identity)
%sequential_5_lstm_13_while_identity_1)
%sequential_5_lstm_13_while_identity_2)
%sequential_5_lstm_13_while_identity_3)
%sequential_5_lstm_13_while_identity_4)
%sequential_5_lstm_13_while_identity_5C
?sequential_5_lstm_13_while_sequential_5_lstm_13_strided_slice_1
{sequential_5_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_13_tensorarrayunstack_tensorlistfromtensorY
Fsequential_5_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource:	@[
Hsequential_5_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource:	 V
Gsequential_5_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource:	¢>sequential_5/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp¢=sequential_5/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp¢?sequential_5/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpí
Lsequential_5/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2N
Lsequential_5/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_5/lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_13_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_13_while_placeholderUsequential_5/lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02@
>sequential_5/lstm_13/while/TensorArrayV2Read/TensorListGetItem
=sequential_5/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02?
=sequential_5/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp«
.sequential_5/lstm_13/while/lstm_cell_13/MatMulMatMulEsequential_5/lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_5/lstm_13/while/lstm_cell_13/MatMul
?sequential_5/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype02A
?sequential_5/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp
0sequential_5/lstm_13/while/lstm_cell_13/MatMul_1MatMul(sequential_5_lstm_13_while_placeholder_2Gsequential_5/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_5/lstm_13/while/lstm_cell_13/MatMul_1
+sequential_5/lstm_13/while/lstm_cell_13/addAddV28sequential_5/lstm_13/while/lstm_cell_13/MatMul:product:0:sequential_5/lstm_13/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_5/lstm_13/while/lstm_cell_13/add
>sequential_5/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02@
>sequential_5/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp
/sequential_5/lstm_13/while/lstm_cell_13/BiasAddBiasAdd/sequential_5/lstm_13/while/lstm_cell_13/add:z:0Fsequential_5/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_5/lstm_13/while/lstm_cell_13/BiasAdd´
7sequential_5/lstm_13/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_13/while/lstm_cell_13/split/split_dimß
-sequential_5/lstm_13/while/lstm_cell_13/splitSplit@sequential_5/lstm_13/while/lstm_cell_13/split/split_dim:output:08sequential_5/lstm_13/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2/
-sequential_5/lstm_13/while/lstm_cell_13/split×
/sequential_5/lstm_13/while/lstm_cell_13/SigmoidSigmoid6sequential_5/lstm_13/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_5/lstm_13/while/lstm_cell_13/SigmoidÛ
1sequential_5/lstm_13/while/lstm_cell_13/Sigmoid_1Sigmoid6sequential_5/lstm_13/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_5/lstm_13/while/lstm_cell_13/Sigmoid_1ô
+sequential_5/lstm_13/while/lstm_cell_13/mulMul5sequential_5/lstm_13/while/lstm_cell_13/Sigmoid_1:y:0(sequential_5_lstm_13_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_5/lstm_13/while/lstm_cell_13/mulÎ
,sequential_5/lstm_13/while/lstm_cell_13/ReluRelu6sequential_5/lstm_13/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_5/lstm_13/while/lstm_cell_13/Relu
-sequential_5/lstm_13/while/lstm_cell_13/mul_1Mul3sequential_5/lstm_13/while/lstm_cell_13/Sigmoid:y:0:sequential_5/lstm_13/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_5/lstm_13/while/lstm_cell_13/mul_1ý
-sequential_5/lstm_13/while/lstm_cell_13/add_1AddV2/sequential_5/lstm_13/while/lstm_cell_13/mul:z:01sequential_5/lstm_13/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_5/lstm_13/while/lstm_cell_13/add_1Û
1sequential_5/lstm_13/while/lstm_cell_13/Sigmoid_2Sigmoid6sequential_5/lstm_13/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_5/lstm_13/while/lstm_cell_13/Sigmoid_2Í
.sequential_5/lstm_13/while/lstm_cell_13/Relu_1Relu1sequential_5/lstm_13/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_5/lstm_13/while/lstm_cell_13/Relu_1
-sequential_5/lstm_13/while/lstm_cell_13/mul_2Mul5sequential_5/lstm_13/while/lstm_cell_13/Sigmoid_2:y:0<sequential_5/lstm_13/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_5/lstm_13/while/lstm_cell_13/mul_2É
?sequential_5/lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_13_while_placeholder_1&sequential_5_lstm_13_while_placeholder1sequential_5/lstm_13/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_13/while/TensorArrayV2Write/TensorListSetItem
 sequential_5/lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_13/while/add/y½
sequential_5/lstm_13/while/addAddV2&sequential_5_lstm_13_while_placeholder)sequential_5/lstm_13/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_13/while/add
"sequential_5/lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_13/while/add_1/yß
 sequential_5/lstm_13/while/add_1AddV2Bsequential_5_lstm_13_while_sequential_5_lstm_13_while_loop_counter+sequential_5/lstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_13/while/add_1¿
#sequential_5/lstm_13/while/IdentityIdentity$sequential_5/lstm_13/while/add_1:z:0 ^sequential_5/lstm_13/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_13/while/Identityç
%sequential_5/lstm_13/while/Identity_1IdentityHsequential_5_lstm_13_while_sequential_5_lstm_13_while_maximum_iterations ^sequential_5/lstm_13/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_13/while/Identity_1Á
%sequential_5/lstm_13/while/Identity_2Identity"sequential_5/lstm_13/while/add:z:0 ^sequential_5/lstm_13/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_13/while/Identity_2î
%sequential_5/lstm_13/while/Identity_3IdentityOsequential_5/lstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_13/while/NoOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_13/while/Identity_3á
%sequential_5/lstm_13/while/Identity_4Identity1sequential_5/lstm_13/while/lstm_cell_13/mul_2:z:0 ^sequential_5/lstm_13/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_5/lstm_13/while/Identity_4á
%sequential_5/lstm_13/while/Identity_5Identity1sequential_5/lstm_13/while/lstm_cell_13/add_1:z:0 ^sequential_5/lstm_13/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_5/lstm_13/while/Identity_5Ç
sequential_5/lstm_13/while/NoOpNoOp?^sequential_5/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp>^sequential_5/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp@^sequential_5/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2!
sequential_5/lstm_13/while/NoOp"S
#sequential_5_lstm_13_while_identity,sequential_5/lstm_13/while/Identity:output:0"W
%sequential_5_lstm_13_while_identity_1.sequential_5/lstm_13/while/Identity_1:output:0"W
%sequential_5_lstm_13_while_identity_2.sequential_5/lstm_13/while/Identity_2:output:0"W
%sequential_5_lstm_13_while_identity_3.sequential_5/lstm_13/while/Identity_3:output:0"W
%sequential_5_lstm_13_while_identity_4.sequential_5/lstm_13/while/Identity_4:output:0"W
%sequential_5_lstm_13_while_identity_5.sequential_5/lstm_13/while/Identity_5:output:0"
Gsequential_5_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resourceIsequential_5_lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0"
Hsequential_5_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resourceJsequential_5_lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0"
Fsequential_5_lstm_13_while_lstm_cell_13_matmul_readvariableop_resourceHsequential_5_lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0"
?sequential_5_lstm_13_while_sequential_5_lstm_13_strided_slice_1Asequential_5_lstm_13_while_sequential_5_lstm_13_strided_slice_1_0"ü
{sequential_5_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_13_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_13_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2
>sequential_5/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp>sequential_5/lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp=sequential_5/lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp2
?sequential_5/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp?sequential_5/lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Õ
Ã
while_cond_427800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_427800___redundant_placeholder04
0while_while_cond_427800___redundant_placeholder14
0while_while_cond_427800___redundant_placeholder24
0while_while_cond_427800___redundant_placeholder3
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
Õ
Ã
while_cond_424799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_424799___redundant_placeholder04
0while_while_cond_424799___redundant_placeholder14
0while_while_cond_424799___redundant_placeholder24
0while_while_cond_424799___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ù
·
(__inference_lstm_13_layer_call_fn_428360
inputs_0
unknown:	@
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4241032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

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
¶
ö
-__inference_lstm_cell_13_layer_call_fn_429704

inputs
states_0
states_1
unknown:	@
	unknown_0:	 
	unknown_1:	
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
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_4238102
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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
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
ñ

)__inference_dense_16_layer_call_fn_429552

inputs
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4256342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
F

C__inference_lstm_13_layer_call_and_return_conditional_losses_423893

inputs&
lstm_cell_13_423811:	@&
lstm_cell_13_423813:	 "
lstm_cell_13_423815:	
identity¢$lstm_cell_13/StatefulPartitionedCall¢whileD
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
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_423811lstm_cell_13_423813lstm_cell_13_423815*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_4238102&
$lstm_cell_13/StatefulPartitionedCall
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
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_423811lstm_cell_13_423813lstm_cell_13_423815*
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
bodyR
while_body_423824*
condR
while_cond_423823*K
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
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity}
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
R
Å
C__inference_lstm_14_layer_call_and_return_conditional_losses_424578

inputs&
lstm_cell_14_424490:	 "
lstm_cell_14_424492:	&
lstm_cell_14_424494:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢$lstm_cell_14/StatefulPartitionedCall¢whileD
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_14_424490lstm_cell_14_424492lstm_cell_14_424494*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_4244892&
$lstm_cell_14/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_424490lstm_cell_14_424492lstm_cell_14_424494*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_424503*
condR
while_cond_424502*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeÓ
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_14_424490*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity½
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp%^lstm_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
û

H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_429655

inputs
states_0
states_11
matmul_readvariableop_resource:	@3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
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
û
ç
H__inference_sequential_5_layer_call_and_return_conditional_losses_427064

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource: @6
(conv1d_5_biasadd_readvariableop_resource:@F
3lstm_13_lstm_cell_13_matmul_readvariableop_resource:	@H
5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource:	 C
4lstm_13_lstm_cell_13_biasadd_readvariableop_resource:	E
2lstm_14_lstm_cell_14_split_readvariableop_resource:	 C
4lstm_14_lstm_cell_14_split_1_readvariableop_resource:	?
,lstm_14_lstm_cell_14_readvariableop_resource:	@9
'dense_16_matmul_readvariableop_resource:@@6
(dense_16_biasadd_readvariableop_resource:@9
'dense_17_matmul_readvariableop_resource:@6
(dense_17_biasadd_readvariableop_resource:
identity¢conv1d_4/BiasAdd/ReadVariableOp¢+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢conv1d_5/BiasAdd/ReadVariableOp¢+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢/dense_17/bias/Regularizer/Square/ReadVariableOp¢+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp¢*lstm_13/lstm_cell_13/MatMul/ReadVariableOp¢,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp¢lstm_13/while¢#lstm_14/lstm_cell_14/ReadVariableOp¢%lstm_14/lstm_cell_14/ReadVariableOp_1¢%lstm_14/lstm_cell_14/ReadVariableOp_2¢%lstm_14/lstm_cell_14/ReadVariableOp_3¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢)lstm_14/lstm_cell_14/split/ReadVariableOp¢+lstm_14/lstm_cell_14/split_1/ReadVariableOp¢lstm_14/while
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
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/ExpandDimsÓ
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
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
: 2
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
lstm_13/ShapeShape max_pooling1d_2/Squeeze:output:0*
T0*
_output_shapes
:2
lstm_13/Shape
lstm_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice/stack
lstm_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_1
lstm_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_13/strided_slice/stack_2
lstm_13/strided_sliceStridedSlicelstm_13/Shape:output:0$lstm_13/strided_slice/stack:output:0&lstm_13/strided_slice/stack_1:output:0&lstm_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slicel
lstm_13/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros/mul/y
lstm_13/zeros/mulMullstm_13/strided_slice:output:0lstm_13/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/mulo
lstm_13/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_13/zeros/Less/y
lstm_13/zeros/LessLesslstm_13/zeros/mul:z:0lstm_13/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros/Lessr
lstm_13/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros/packed/1£
lstm_13/zeros/packedPacklstm_13/strided_slice:output:0lstm_13/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros/packedo
lstm_13/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros/Const
lstm_13/zerosFilllstm_13/zeros/packed:output:0lstm_13/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/zerosp
lstm_13/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros_1/mul/y
lstm_13/zeros_1/mulMullstm_13/strided_slice:output:0lstm_13/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/muls
lstm_13/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_13/zeros_1/Less/y
lstm_13/zeros_1/LessLesslstm_13/zeros_1/mul:z:0lstm_13/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_13/zeros_1/Lessv
lstm_13/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/zeros_1/packed/1©
lstm_13/zeros_1/packedPacklstm_13/strided_slice:output:0!lstm_13/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_13/zeros_1/packeds
lstm_13/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/zeros_1/Const
lstm_13/zeros_1Filllstm_13/zeros_1/packed:output:0lstm_13/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/zeros_1
lstm_13/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose/perm¬
lstm_13/transpose	Transpose max_pooling1d_2/Squeeze:output:0lstm_13/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_13/transposeg
lstm_13/Shape_1Shapelstm_13/transpose:y:0*
T0*
_output_shapes
:2
lstm_13/Shape_1
lstm_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_1/stack
lstm_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_1
lstm_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_1/stack_2
lstm_13/strided_slice_1StridedSlicelstm_13/Shape_1:output:0&lstm_13/strided_slice_1/stack:output:0(lstm_13/strided_slice_1/stack_1:output:0(lstm_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_13/strided_slice_1
#lstm_13/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_13/TensorArrayV2/element_shapeÒ
lstm_13/TensorArrayV2TensorListReserve,lstm_13/TensorArrayV2/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2Ï
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2?
=lstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_13/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_13/transpose:y:0Flstm_13/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_13/TensorArrayUnstack/TensorListFromTensor
lstm_13/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_13/strided_slice_2/stack
lstm_13/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_1
lstm_13/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_2/stack_2¬
lstm_13/strided_slice_2StridedSlicelstm_13/transpose:y:0&lstm_13/strided_slice_2/stack:output:0(lstm_13/strided_slice_2/stack_1:output:0(lstm_13/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_13/strided_slice_2Í
*lstm_13/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3lstm_13_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02,
*lstm_13/lstm_cell_13/MatMul/ReadVariableOpÍ
lstm_13/lstm_cell_13/MatMulMatMul lstm_13/strided_slice_2:output:02lstm_13/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/MatMulÓ
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02.
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOpÉ
lstm_13/lstm_cell_13/MatMul_1MatMullstm_13/zeros:output:04lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/MatMul_1À
lstm_13/lstm_cell_13/addAddV2%lstm_13/lstm_cell_13/MatMul:product:0'lstm_13/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/addÌ
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOpÍ
lstm_13/lstm_cell_13/BiasAddBiasAddlstm_13/lstm_cell_13/add:z:03lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_13/lstm_cell_13/BiasAdd
$lstm_13/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_13/lstm_cell_13/split/split_dim
lstm_13/lstm_cell_13/splitSplit-lstm_13/lstm_cell_13/split/split_dim:output:0%lstm_13/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_13/lstm_cell_13/split
lstm_13/lstm_cell_13/SigmoidSigmoid#lstm_13/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/Sigmoid¢
lstm_13/lstm_cell_13/Sigmoid_1Sigmoid#lstm_13/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_13/lstm_cell_13/Sigmoid_1«
lstm_13/lstm_cell_13/mulMul"lstm_13/lstm_cell_13/Sigmoid_1:y:0lstm_13/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/mul
lstm_13/lstm_cell_13/ReluRelu#lstm_13/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/Relu¼
lstm_13/lstm_cell_13/mul_1Mul lstm_13/lstm_cell_13/Sigmoid:y:0'lstm_13/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/mul_1±
lstm_13/lstm_cell_13/add_1AddV2lstm_13/lstm_cell_13/mul:z:0lstm_13/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/add_1¢
lstm_13/lstm_cell_13/Sigmoid_2Sigmoid#lstm_13/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_13/lstm_cell_13/Sigmoid_2
lstm_13/lstm_cell_13/Relu_1Relulstm_13/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/Relu_1À
lstm_13/lstm_cell_13/mul_2Mul"lstm_13/lstm_cell_13/Sigmoid_2:y:0)lstm_13/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/lstm_cell_13/mul_2
%lstm_13/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2'
%lstm_13/TensorArrayV2_1/element_shapeØ
lstm_13/TensorArrayV2_1TensorListReserve.lstm_13/TensorArrayV2_1/element_shape:output:0 lstm_13/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_13/TensorArrayV2_1^
lstm_13/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/time
 lstm_13/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_13/while/maximum_iterationsz
lstm_13/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_13/while/loop_counter
lstm_13/whileWhile#lstm_13/while/loop_counter:output:0)lstm_13/while/maximum_iterations:output:0lstm_13/time:output:0 lstm_13/TensorArrayV2_1:handle:0lstm_13/zeros:output:0lstm_13/zeros_1:output:0 lstm_13/strided_slice_1:output:0?lstm_13/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_13_lstm_cell_13_matmul_readvariableop_resource5lstm_13_lstm_cell_13_matmul_1_readvariableop_resource4lstm_13_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_13_while_body_426707*%
condR
lstm_13_while_cond_426706*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 2
lstm_13/whileÅ
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2:
8lstm_13/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_13/TensorArrayV2Stack/TensorListStackTensorListStacklstm_13/while:output:3Alstm_13/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02,
*lstm_13/TensorArrayV2Stack/TensorListStack
lstm_13/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_13/strided_slice_3/stack
lstm_13/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_13/strided_slice_3/stack_1
lstm_13/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_13/strided_slice_3/stack_2Ê
lstm_13/strided_slice_3StridedSlice3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_13/strided_slice_3/stack:output:0(lstm_13/strided_slice_3/stack_1:output:0(lstm_13/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_13/strided_slice_3
lstm_13/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_13/transpose_1/permÅ
lstm_13/transpose_1	Transpose3lstm_13/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_13/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/transpose_1v
lstm_13/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_13/runtimee
lstm_14/ShapeShapelstm_13/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_14/Shape
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice/stack
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_1
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_2
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_14/strided_slicel
lstm_14/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros/mul/y
lstm_14/zeros/mulMullstm_14/strided_slice:output:0lstm_14/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros/mulo
lstm_14/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_14/zeros/Less/y
lstm_14/zeros/LessLesslstm_14/zeros/mul:z:0lstm_14/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros/Lessr
lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros/packed/1£
lstm_14/zeros/packedPacklstm_14/strided_slice:output:0lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_14/zeros/packedo
lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/zeros/Const
lstm_14/zerosFilllstm_14/zeros/packed:output:0lstm_14/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/zerosp
lstm_14/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros_1/mul/y
lstm_14/zeros_1/mulMullstm_14/strided_slice:output:0lstm_14/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros_1/muls
lstm_14/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_14/zeros_1/Less/y
lstm_14/zeros_1/LessLesslstm_14/zeros_1/mul:z:0lstm_14/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_14/zeros_1/Lessv
lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_14/zeros_1/packed/1©
lstm_14/zeros_1/packedPacklstm_14/strided_slice:output:0!lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_14/zeros_1/packeds
lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/zeros_1/Const
lstm_14/zeros_1Filllstm_14/zeros_1/packed:output:0lstm_14/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/zeros_1
lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose/perm£
lstm_14/transpose	Transposelstm_13/transpose_1:y:0lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_14/transposeg
lstm_14/Shape_1Shapelstm_14/transpose:y:0*
T0*
_output_shapes
:2
lstm_14/Shape_1
lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice_1/stack
lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_1
lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_2
lstm_14/strided_slice_1StridedSlicelstm_14/Shape_1:output:0&lstm_14/strided_slice_1/stack:output:0(lstm_14/strided_slice_1/stack_1:output:0(lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_14/strided_slice_1
#lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_14/TensorArrayV2/element_shapeÒ
lstm_14/TensorArrayV2TensorListReserve,lstm_14/TensorArrayV2/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2Ï
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2?
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_14/transpose:y:0Flstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_14/TensorArrayUnstack/TensorListFromTensor
lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice_2/stack
lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_2/stack_1
lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_2/stack_2¬
lstm_14/strided_slice_2StridedSlicelstm_14/transpose:y:0&lstm_14/strided_slice_2/stack:output:0(lstm_14/strided_slice_2/stack_1:output:0(lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_14/strided_slice_2
$lstm_14/lstm_cell_14/ones_like/ShapeShapelstm_14/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_14/lstm_cell_14/ones_like/Shape
$lstm_14/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_14/lstm_cell_14/ones_like/ConstØ
lstm_14/lstm_cell_14/ones_likeFill-lstm_14/lstm_cell_14/ones_like/Shape:output:0-lstm_14/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/ones_like
$lstm_14/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_14/lstm_cell_14/split/split_dimÊ
)lstm_14/lstm_cell_14/split/ReadVariableOpReadVariableOp2lstm_14_lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02+
)lstm_14/lstm_cell_14/split/ReadVariableOpû
lstm_14/lstm_cell_14/splitSplit-lstm_14/lstm_cell_14/split/split_dim:output:01lstm_14/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_14/lstm_cell_14/split½
lstm_14/lstm_cell_14/MatMulMatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMulÁ
lstm_14/lstm_cell_14/MatMul_1MatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_1Á
lstm_14/lstm_cell_14/MatMul_2MatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_2Á
lstm_14/lstm_cell_14/MatMul_3MatMul lstm_14/strided_slice_2:output:0#lstm_14/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_3
&lstm_14/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm_14/lstm_cell_14/split_1/split_dimÌ
+lstm_14/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4lstm_14_lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02-
+lstm_14/lstm_cell_14/split_1/ReadVariableOpó
lstm_14/lstm_cell_14/split_1Split/lstm_14/lstm_cell_14/split_1/split_dim:output:03lstm_14/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_14/lstm_cell_14/split_1Ç
lstm_14/lstm_cell_14/BiasAddBiasAdd%lstm_14/lstm_cell_14/MatMul:product:0%lstm_14/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/BiasAddÍ
lstm_14/lstm_cell_14/BiasAdd_1BiasAdd'lstm_14/lstm_cell_14/MatMul_1:product:0%lstm_14/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/BiasAdd_1Í
lstm_14/lstm_cell_14/BiasAdd_2BiasAdd'lstm_14/lstm_cell_14/MatMul_2:product:0%lstm_14/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/BiasAdd_2Í
lstm_14/lstm_cell_14/BiasAdd_3BiasAdd'lstm_14/lstm_cell_14/MatMul_3:product:0%lstm_14/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/BiasAdd_3®
lstm_14/lstm_cell_14/mulMullstm_14/zeros:output:0'lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul²
lstm_14/lstm_cell_14/mul_1Mullstm_14/zeros:output:0'lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_1²
lstm_14/lstm_cell_14/mul_2Mullstm_14/zeros:output:0'lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_2²
lstm_14/lstm_cell_14/mul_3Mullstm_14/zeros:output:0'lstm_14/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_3¸
#lstm_14/lstm_cell_14/ReadVariableOpReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_14/lstm_cell_14/ReadVariableOp¥
(lstm_14/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_14/lstm_cell_14/strided_slice/stack©
*lstm_14/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_14/lstm_cell_14/strided_slice/stack_1©
*lstm_14/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_14/lstm_cell_14/strided_slice/stack_2ú
"lstm_14/lstm_cell_14/strided_sliceStridedSlice+lstm_14/lstm_cell_14/ReadVariableOp:value:01lstm_14/lstm_cell_14/strided_slice/stack:output:03lstm_14/lstm_cell_14/strided_slice/stack_1:output:03lstm_14/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_14/lstm_cell_14/strided_sliceÅ
lstm_14/lstm_cell_14/MatMul_4MatMullstm_14/lstm_cell_14/mul:z:0+lstm_14/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_4¿
lstm_14/lstm_cell_14/addAddV2%lstm_14/lstm_cell_14/BiasAdd:output:0'lstm_14/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add
lstm_14/lstm_cell_14/SigmoidSigmoidlstm_14/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/Sigmoid¼
%lstm_14/lstm_cell_14/ReadVariableOp_1ReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02'
%lstm_14/lstm_cell_14/ReadVariableOp_1©
*lstm_14/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_14/lstm_cell_14/strided_slice_1/stack­
,lstm_14/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,lstm_14/lstm_cell_14/strided_slice_1/stack_1­
,lstm_14/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_14/lstm_cell_14/strided_slice_1/stack_2
$lstm_14/lstm_cell_14/strided_slice_1StridedSlice-lstm_14/lstm_cell_14/ReadVariableOp_1:value:03lstm_14/lstm_cell_14/strided_slice_1/stack:output:05lstm_14/lstm_cell_14/strided_slice_1/stack_1:output:05lstm_14/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm_14/lstm_cell_14/strided_slice_1É
lstm_14/lstm_cell_14/MatMul_5MatMullstm_14/lstm_cell_14/mul_1:z:0-lstm_14/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_5Å
lstm_14/lstm_cell_14/add_1AddV2'lstm_14/lstm_cell_14/BiasAdd_1:output:0'lstm_14/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_1
lstm_14/lstm_cell_14/Sigmoid_1Sigmoidlstm_14/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/Sigmoid_1¯
lstm_14/lstm_cell_14/mul_4Mul"lstm_14/lstm_cell_14/Sigmoid_1:y:0lstm_14/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_4¼
%lstm_14/lstm_cell_14/ReadVariableOp_2ReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02'
%lstm_14/lstm_cell_14/ReadVariableOp_2©
*lstm_14/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm_14/lstm_cell_14/strided_slice_2/stack­
,lstm_14/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2.
,lstm_14/lstm_cell_14/strided_slice_2/stack_1­
,lstm_14/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_14/lstm_cell_14/strided_slice_2/stack_2
$lstm_14/lstm_cell_14/strided_slice_2StridedSlice-lstm_14/lstm_cell_14/ReadVariableOp_2:value:03lstm_14/lstm_cell_14/strided_slice_2/stack:output:05lstm_14/lstm_cell_14/strided_slice_2/stack_1:output:05lstm_14/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm_14/lstm_cell_14/strided_slice_2É
lstm_14/lstm_cell_14/MatMul_6MatMullstm_14/lstm_cell_14/mul_2:z:0-lstm_14/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_6Å
lstm_14/lstm_cell_14/add_2AddV2'lstm_14/lstm_cell_14/BiasAdd_2:output:0'lstm_14/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_2
lstm_14/lstm_cell_14/ReluRelulstm_14/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/Relu¼
lstm_14/lstm_cell_14/mul_5Mul lstm_14/lstm_cell_14/Sigmoid:y:0'lstm_14/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_5³
lstm_14/lstm_cell_14/add_3AddV2lstm_14/lstm_cell_14/mul_4:z:0lstm_14/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_3¼
%lstm_14/lstm_cell_14/ReadVariableOp_3ReadVariableOp,lstm_14_lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02'
%lstm_14/lstm_cell_14/ReadVariableOp_3©
*lstm_14/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2,
*lstm_14/lstm_cell_14/strided_slice_3/stack­
,lstm_14/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_14/lstm_cell_14/strided_slice_3/stack_1­
,lstm_14/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm_14/lstm_cell_14/strided_slice_3/stack_2
$lstm_14/lstm_cell_14/strided_slice_3StridedSlice-lstm_14/lstm_cell_14/ReadVariableOp_3:value:03lstm_14/lstm_cell_14/strided_slice_3/stack:output:05lstm_14/lstm_cell_14/strided_slice_3/stack_1:output:05lstm_14/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm_14/lstm_cell_14/strided_slice_3É
lstm_14/lstm_cell_14/MatMul_7MatMullstm_14/lstm_cell_14/mul_3:z:0-lstm_14/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/MatMul_7Å
lstm_14/lstm_cell_14/add_4AddV2'lstm_14/lstm_cell_14/BiasAdd_3:output:0'lstm_14/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/add_4
lstm_14/lstm_cell_14/Sigmoid_2Sigmoidlstm_14/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/lstm_cell_14/Sigmoid_2
lstm_14/lstm_cell_14/Relu_1Relulstm_14/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/Relu_1À
lstm_14/lstm_cell_14/mul_6Mul"lstm_14/lstm_cell_14/Sigmoid_2:y:0)lstm_14/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/lstm_cell_14/mul_6
%lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2'
%lstm_14/TensorArrayV2_1/element_shapeØ
lstm_14/TensorArrayV2_1TensorListReserve.lstm_14/TensorArrayV2_1/element_shape:output:0 lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2_1^
lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/time
 lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_14/while/maximum_iterationsz
lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/while/loop_counterù
lstm_14/whileWhile#lstm_14/while/loop_counter:output:0)lstm_14/while/maximum_iterations:output:0lstm_14/time:output:0 lstm_14/TensorArrayV2_1:handle:0lstm_14/zeros:output:0lstm_14/zeros_1:output:0 lstm_14/strided_slice_1:output:0?lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_14_lstm_cell_14_split_readvariableop_resource4lstm_14_lstm_cell_14_split_1_readvariableop_resource,lstm_14_lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_14_while_body_426897*%
condR
lstm_14_while_cond_426896*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
lstm_14/whileÅ
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2:
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_14/TensorArrayV2Stack/TensorListStackTensorListStacklstm_14/while:output:3Alstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype02,
*lstm_14/TensorArrayV2Stack/TensorListStack
lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_14/strided_slice_3/stack
lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_14/strided_slice_3/stack_1
lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_3/stack_2Ê
lstm_14/strided_slice_3StridedSlice3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_14/strided_slice_3/stack:output:0(lstm_14/strided_slice_3/stack_1:output:0(lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask2
lstm_14/strided_slice_3
lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose_1/permÅ
lstm_14/transpose_1	Transpose3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_14/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/transpose_1v
lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/runtime¨
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_16/MatMul/ReadVariableOp¨
dense_16/MatMulMatMul lstm_14/strided_slice_3:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/MatMul§
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_16/BiasAdd/ReadVariableOp¥
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/BiasAdds
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_16/Relu¨
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_17/MatMul/ReadVariableOp£
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/MatMul§
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp¥
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_17/BiasAddk
reshape_8/ShapeShapedense_17/BiasAdd:output:0*
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
reshape_8/ReshapeReshapedense_17/BiasAdd:output:0 reshape_8/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_8/Reshapeß
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulò
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2lstm_14_lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/mulÇ
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/muly
IdentityIdentityreshape_8/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¼
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp0^dense_17/bias/Regularizer/Square/ReadVariableOp,^lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+^lstm_13/lstm_cell_13/MatMul/ReadVariableOp-^lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_13/while$^lstm_14/lstm_cell_14/ReadVariableOp&^lstm_14/lstm_cell_14/ReadVariableOp_1&^lstm_14/lstm_cell_14/ReadVariableOp_2&^lstm_14/lstm_cell_14/ReadVariableOp_3>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp*^lstm_14/lstm_cell_14/split/ReadVariableOp,^lstm_14/lstm_cell_14/split_1/ReadVariableOp^lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp2Z
+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp+lstm_13/lstm_cell_13/BiasAdd/ReadVariableOp2X
*lstm_13/lstm_cell_13/MatMul/ReadVariableOp*lstm_13/lstm_cell_13/MatMul/ReadVariableOp2\
,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp,lstm_13/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_13/whilelstm_13/while2J
#lstm_14/lstm_cell_14/ReadVariableOp#lstm_14/lstm_cell_14/ReadVariableOp2N
%lstm_14/lstm_cell_14/ReadVariableOp_1%lstm_14/lstm_cell_14/ReadVariableOp_12N
%lstm_14/lstm_cell_14/ReadVariableOp_2%lstm_14/lstm_cell_14/ReadVariableOp_22N
%lstm_14/lstm_cell_14/ReadVariableOp_3%lstm_14/lstm_cell_14/ReadVariableOp_32~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2V
)lstm_14/lstm_cell_14/split/ReadVariableOp)lstm_14/lstm_cell_14/split/ReadVariableOp2Z
+lstm_14/lstm_cell_14/split_1/ReadVariableOp+lstm_14/lstm_cell_14/split_1/ReadVariableOp2
lstm_14/whilelstm_14/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_428253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_428253___redundant_placeholder04
0while_while_cond_428253___redundant_placeholder14
0while_while_cond_428253___redundant_placeholder24
0while_while_cond_428253___redundant_placeholder3
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
Æ

ã
lstm_14_while_cond_426896,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3.
*lstm_14_while_less_lstm_14_strided_slice_1D
@lstm_14_while_lstm_14_while_cond_426896___redundant_placeholder0D
@lstm_14_while_lstm_14_while_cond_426896___redundant_placeholder1D
@lstm_14_while_lstm_14_while_cond_426896___redundant_placeholder2D
@lstm_14_while_lstm_14_while_cond_426896___redundant_placeholder3
lstm_14_while_identity

lstm_14/while/LessLesslstm_14_while_placeholder*lstm_14_while_less_lstm_14_strided_slice_1*
T0*
_output_shapes
: 2
lstm_14/while/Lessu
lstm_14/while/IdentityIdentitylstm_14/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_14/while/Identity"9
lstm_14_while_identitylstm_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:

ó
-__inference_sequential_5_layer_call_fn_427646

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@
	unknown_4:	 
	unknown_5:	
	unknown_6:	 
	unknown_7:	
	unknown_8:	@
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:
identity¢StatefulPartitionedCall
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4263732
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


)__inference_conv1d_4_layer_call_fn_427683

inputs
unknown: 
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
D__inference_conv1d_4_layer_call_and_return_conditional_losses_4251782
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
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
µ
(__inference_lstm_14_layer_call_fn_429532

inputs
unknown:	 
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4260732
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
áH
¿
H__inference_sequential_5_layer_call_and_return_conditional_losses_426495
conv1d_4_input%
conv1d_4_426440: 
conv1d_4_426442: %
conv1d_5_426445: @
conv1d_5_426447:@!
lstm_13_426451:	@!
lstm_13_426453:	 
lstm_13_426455:	!
lstm_14_426458:	 
lstm_14_426460:	!
lstm_14_426462:	@!
dense_16_426465:@@
dense_16_426467:@!
dense_17_426470:@
dense_17_426472:
identity¢ conv1d_4/StatefulPartitionedCall¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/dense_17/bias/Regularizer/Square/ReadVariableOp¢lstm_13/StatefulPartitionedCall¢lstm_14/StatefulPartitionedCall¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp 
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_426440conv1d_4_426442*
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
D__inference_conv1d_4_layer_call_and_return_conditional_losses_4251782"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_426445conv1d_5_426447*
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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_4252002"
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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_4252132!
max_pooling1d_2/PartitionedCallÇ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_13_426451lstm_13_426453lstm_13_426455*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4253652!
lstm_13/StatefulPartitionedCallÃ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_426458lstm_14_426460lstm_14_426462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4256152!
lstm_14/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_16_426465dense_16_426467*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4256342"
 dense_16/StatefulPartitionedCall·
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_426470dense_17_426472*
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
D__inference_dense_17_layer_call_and_return_conditional_losses_4256562"
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_4256752
reshape_8/PartitionedCallº
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_426440*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulÎ
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_14_426458*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/mul®
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_17_426472*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/mul
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÄ
NoOpNoOp!^conv1d_4/StatefulPartitionedCall2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^dense_17/bias/Regularizer/Square/ReadVariableOp ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
?
Ð
while_body_428254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_13_biasadd_readvariableop_resource:	¢)while/lstm_cell_13/BiasAdd/ReadVariableOp¢(while/lstm_cell_13/MatMul/ReadVariableOp¢*while/lstm_cell_13/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp×
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMulÏ
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOpÀ
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMul_1¸
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/addÈ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOpÅ
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/BiasAdd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dim
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/lstm_cell_13/split
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_1 
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu´
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_1©
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/add_1
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_2
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu_1¸
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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


)__inference_conv1d_5_layer_call_fn_427708

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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_4252002
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
®v
é
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_424722

inputs

states
states_10
split_readvariableop_resource:	 .
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:ÿÿÿÿÿÿÿÿÿ@2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÒ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2 õ|2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2¶î2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ëá²2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2êÃþ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_3/Mul_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_3^
mulMulstatesdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
muld
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1d
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2d
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   2
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

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
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

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_6Ý
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
ßg
¬
__inference__traced_save_430136
file_prefix.
*savev2_conv1d_4_kernel_read_readvariableop,
(savev2_conv1d_4_bias_read_readvariableop.
*savev2_conv1d_5_kernel_read_readvariableop,
(savev2_conv1d_5_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_13_lstm_cell_13_kernel_read_readvariableopD
@savev2_lstm_13_lstm_cell_13_recurrent_kernel_read_readvariableop8
4savev2_lstm_13_lstm_cell_13_bias_read_readvariableop:
6savev2_lstm_14_lstm_cell_14_kernel_read_readvariableopD
@savev2_lstm_14_lstm_cell_14_recurrent_kernel_read_readvariableop8
4savev2_lstm_14_lstm_cell_14_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_4_kernel_m_read_readvariableop3
/savev2_adam_conv1d_4_bias_m_read_readvariableop5
1savev2_adam_conv1d_5_kernel_m_read_readvariableop3
/savev2_adam_conv1d_5_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableopA
=savev2_adam_lstm_13_lstm_cell_13_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_13_lstm_cell_13_bias_m_read_readvariableopA
=savev2_adam_lstm_14_lstm_cell_14_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_14_lstm_cell_14_bias_m_read_readvariableop5
1savev2_adam_conv1d_4_kernel_v_read_readvariableop3
/savev2_adam_conv1d_4_bias_v_read_readvariableop5
1savev2_adam_conv1d_5_kernel_v_read_readvariableop3
/savev2_adam_conv1d_5_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableopA
=savev2_adam_lstm_13_lstm_cell_13_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_13_lstm_cell_13_bias_v_read_readvariableopA
=savev2_adam_lstm_14_lstm_cell_14_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_14_lstm_cell_14_bias_v_read_readvariableop
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
ShardedFilenameú
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*
valueBÿ2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesì
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop*savev2_conv1d_5_kernel_read_readvariableop(savev2_conv1d_5_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_13_lstm_cell_13_kernel_read_readvariableop@savev2_lstm_13_lstm_cell_13_recurrent_kernel_read_readvariableop4savev2_lstm_13_lstm_cell_13_bias_read_readvariableop6savev2_lstm_14_lstm_cell_14_kernel_read_readvariableop@savev2_lstm_14_lstm_cell_14_recurrent_kernel_read_readvariableop4savev2_lstm_14_lstm_cell_14_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_4_kernel_m_read_readvariableop/savev2_adam_conv1d_4_bias_m_read_readvariableop1savev2_adam_conv1d_5_kernel_m_read_readvariableop/savev2_adam_conv1d_5_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop=savev2_adam_lstm_13_lstm_cell_13_kernel_m_read_readvariableopGsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_13_lstm_cell_13_bias_m_read_readvariableop=savev2_adam_lstm_14_lstm_cell_14_kernel_m_read_readvariableopGsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_14_lstm_cell_14_bias_m_read_readvariableop1savev2_adam_conv1d_4_kernel_v_read_readvariableop/savev2_adam_conv1d_4_bias_v_read_readvariableop1savev2_adam_conv1d_5_kernel_v_read_readvariableop/savev2_adam_conv1d_5_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop=savev2_adam_lstm_13_lstm_cell_13_kernel_v_read_readvariableopGsavev2_adam_lstm_13_lstm_cell_13_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_13_lstm_cell_13_bias_v_read_readvariableop=savev2_adam_lstm_14_lstm_cell_14_kernel_v_read_readvariableopGsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_14_lstm_cell_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*­
_input_shapes
: : : : @:@:@@:@:@:: : : : : :	@:	 ::	 :	@:: : : : : @:@:@@:@:@::	@:	 ::	 :	@:: : : @:@:@@:@:@::	@:	 ::	 :	@:: 2(
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

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 
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
: :%!

_output_shapes
:	@:%!

_output_shapes
:	 :!

_output_shapes	
::%!

_output_shapes
:	 :%!

_output_shapes
:	@:!

_output_shapes	
::
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

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	@:%!

_output_shapes
:	 :! 

_output_shapes	
::%!!

_output_shapes
:	 :%"!

_output_shapes
:	@:!#

_output_shapes	
::($$
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

:@@: )

_output_shapes
:@:$* 

_output_shapes

:@: +

_output_shapes
::%,!

_output_shapes
:	@:%-!

_output_shapes
:	 :!.

_output_shapes	
::%/!

_output_shapes
:	 :%0!

_output_shapes
:	@:!1

_output_shapes	
::2

_output_shapes
: 
§
¤	
while_body_428498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_14_split_readvariableop_resource_0:	 C
4while_lstm_cell_14_split_1_readvariableop_resource_0:	?
,while_lstm_cell_14_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_14_split_readvariableop_resource:	 A
2while_lstm_cell_14_split_1_readvariableop_resource:	=
*while_lstm_cell_14_readvariableop_resource:	@¢!while/lstm_cell_14/ReadVariableOp¢#while/lstm_cell_14/ReadVariableOp_1¢#while/lstm_cell_14/ReadVariableOp_2¢#while/lstm_cell_14/ReadVariableOp_3¢'while/lstm_cell_14/split/ReadVariableOp¢)while/lstm_cell_14/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_14/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_14/ones_like/Shape
"while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_14/ones_like/ConstÐ
while/lstm_cell_14/ones_likeFill+while/lstm_cell_14/ones_like/Shape:output:0+while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/ones_like
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dimÆ
'while/lstm_cell_14/split/ReadVariableOpReadVariableOp2while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype02)
'while/lstm_cell_14/split/ReadVariableOpó
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
while/lstm_cell_14/splitÇ
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMulË
while/lstm_cell_14/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_1Ë
while/lstm_cell_14/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_2Ë
while/lstm_cell_14/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_3
$while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_14/split_1/split_dimÈ
)while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_14/split_1/ReadVariableOpë
while/lstm_cell_14/split_1Split-while/lstm_cell_14/split_1/split_dim:output:01while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_14/split_1¿
while/lstm_cell_14/BiasAddBiasAdd#while/lstm_cell_14/MatMul:product:0#while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAddÅ
while/lstm_cell_14/BiasAdd_1BiasAdd%while/lstm_cell_14/MatMul_1:product:0#while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_1Å
while/lstm_cell_14/BiasAdd_2BiasAdd%while/lstm_cell_14/MatMul_2:product:0#while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_2Å
while/lstm_cell_14/BiasAdd_3BiasAdd%while/lstm_cell_14/MatMul_3:product:0#while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_3¥
while/lstm_cell_14/mulMulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul©
while/lstm_cell_14/mul_1Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_1©
while/lstm_cell_14/mul_2Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_2©
while/lstm_cell_14/mul_3Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_3´
!while/lstm_cell_14/ReadVariableOpReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02#
!while/lstm_cell_14/ReadVariableOp¡
&while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_14/strided_slice/stack¥
(while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice/stack_1¥
(while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_14/strided_slice/stack_2î
 while/lstm_cell_14/strided_sliceStridedSlice)while/lstm_cell_14/ReadVariableOp:value:0/while/lstm_cell_14/strided_slice/stack:output:01while/lstm_cell_14/strided_slice/stack_1:output:01while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 while/lstm_cell_14/strided_slice½
while/lstm_cell_14/MatMul_4MatMulwhile/lstm_cell_14/mul:z:0)while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_4·
while/lstm_cell_14/addAddV2#while/lstm_cell_14/BiasAdd:output:0%while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add
while/lstm_cell_14/SigmoidSigmoidwhile/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid¸
#while/lstm_cell_14/ReadVariableOp_1ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_1¥
(while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice_1/stack©
*while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*while/lstm_cell_14/strided_slice_1/stack_1©
*while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_1/stack_2ú
"while/lstm_cell_14/strided_slice_1StridedSlice+while/lstm_cell_14/ReadVariableOp_1:value:01while/lstm_cell_14/strided_slice_1/stack:output:03while/lstm_cell_14/strided_slice_1/stack_1:output:03while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_1Á
while/lstm_cell_14/MatMul_5MatMulwhile/lstm_cell_14/mul_1:z:0+while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_5½
while/lstm_cell_14/add_1AddV2%while/lstm_cell_14/BiasAdd_1:output:0%while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_1
while/lstm_cell_14/Sigmoid_1Sigmoidwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_1¤
while/lstm_cell_14/mul_4Mul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_4¸
#while/lstm_cell_14/ReadVariableOp_2ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_2¥
(while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(while/lstm_cell_14/strided_slice_2/stack©
*while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2,
*while/lstm_cell_14/strided_slice_2/stack_1©
*while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_2/stack_2ú
"while/lstm_cell_14/strided_slice_2StridedSlice+while/lstm_cell_14/ReadVariableOp_2:value:01while/lstm_cell_14/strided_slice_2/stack:output:03while/lstm_cell_14/strided_slice_2/stack_1:output:03while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_2Á
while/lstm_cell_14/MatMul_6MatMulwhile/lstm_cell_14/mul_2:z:0+while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_6½
while/lstm_cell_14/add_2AddV2%while/lstm_cell_14/BiasAdd_2:output:0%while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_2
while/lstm_cell_14/ReluReluwhile/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu´
while/lstm_cell_14/mul_5Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_5«
while/lstm_cell_14/add_3AddV2while/lstm_cell_14/mul_4:z:0while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_3¸
#while/lstm_cell_14/ReadVariableOp_3ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_3¥
(while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2*
(while/lstm_cell_14/strided_slice_3/stack©
*while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_14/strided_slice_3/stack_1©
*while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_3/stack_2ú
"while/lstm_cell_14/strided_slice_3StridedSlice+while/lstm_cell_14/ReadVariableOp_3:value:01while/lstm_cell_14/strided_slice_3/stack:output:03while/lstm_cell_14/strided_slice_3/stack_1:output:03while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_3Á
while/lstm_cell_14/MatMul_7MatMulwhile/lstm_cell_14/mul_3:z:0+while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_7½
while/lstm_cell_14/add_4AddV2%while/lstm_cell_14/BiasAdd_3:output:0%while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_4
while/lstm_cell_14/Sigmoid_2Sigmoidwhile/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_2
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu_1¸
while/lstm_cell_14/mul_6Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_14/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_14/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_14/ReadVariableOp$^while/lstm_cell_14/ReadVariableOp_1$^while/lstm_cell_14/ReadVariableOp_2$^while/lstm_cell_14/ReadVariableOp_3(^while/lstm_cell_14/split/ReadVariableOp*^while/lstm_cell_14/split_1/ReadVariableOp*"
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
*while_lstm_cell_14_readvariableop_resource,while_lstm_cell_14_readvariableop_resource_0"j
2while_lstm_cell_14_split_1_readvariableop_resource4while_lstm_cell_14_split_1_readvariableop_resource_0"f
0while_lstm_cell_14_split_readvariableop_resource2while_lstm_cell_14_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_14/ReadVariableOp!while/lstm_cell_14/ReadVariableOp2J
#while/lstm_cell_14/ReadVariableOp_1#while/lstm_cell_14/ReadVariableOp_12J
#while/lstm_cell_14/ReadVariableOp_2#while/lstm_cell_14/ReadVariableOp_22J
#while/lstm_cell_14/ReadVariableOp_3#while/lstm_cell_14/ReadVariableOp_32R
'while/lstm_cell_14/split/ReadVariableOp'while/lstm_cell_14/split/ReadVariableOp2V
)while/lstm_cell_14/split_1/ReadVariableOp)while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
?
Ð
while_body_428103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_13_biasadd_readvariableop_resource:	¢)while/lstm_cell_13/BiasAdd/ReadVariableOp¢(while/lstm_cell_13/MatMul/ReadVariableOp¢*while/lstm_cell_13/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp×
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMulÏ
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOpÀ
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMul_1¸
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/addÈ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOpÅ
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/BiasAdd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dim
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/lstm_cell_13/split
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_1 
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu´
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_1©
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/add_1
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_2
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu_1¸
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
±
û
-__inference_sequential_5_layer_call_fn_425727
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@
	unknown_4:	 
	unknown_5:	
	unknown_6:	 
	unknown_7:	
	unknown_8:	@
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:
identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4256962
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
¬

D__inference_conv1d_5_layer_call_and_return_conditional_losses_427699

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
Õ
Ã
while_cond_424502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_424502___redundant_placeholder04
0while_while_cond_424502___redundant_placeholder14
0while_while_cond_424502___redundant_placeholder24
0while_while_cond_424502___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:

a
E__inference_reshape_8_layer_call_and_return_conditional_losses_425675

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
á[

C__inference_lstm_13_layer_call_and_return_conditional_losses_425365

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@@
-lstm_cell_13_matmul_1_readvariableop_resource:	 ;
,lstm_cell_13_biasadd_readvariableop_resource:	
identity¢#lstm_cell_13/BiasAdd/ReadVariableOp¢"lstm_cell_13/MatMul/ReadVariableOp¢$lstm_cell_13/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOp­
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul»
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOp©
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul_1 
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/add´
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOp­
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimó
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_cell_13/split
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_1
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_1
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/add_1
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu_1 
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
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
bodyR
while_body_425281*
condR
while_cond_425280*K
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
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ 2
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
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÈ
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¶
ö
-__inference_lstm_cell_13_layer_call_fn_429721

inputs
states_0
states_1
unknown:	@
	unknown_0:	 
	unknown_1:	
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
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_4239562
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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
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
¶
ö
-__inference_lstm_cell_14_layer_call_fn_429955

inputs
states_0
states_1
unknown:	 
	unknown_0:	
	unknown_1:	@
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
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_4247222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

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
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
ÍJ
Ð

lstm_13_while_body_427159,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0:	@P
=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 K
<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0:	
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorL
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource:	@N
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource:	 I
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource:	¢1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp¢0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp¢2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpÓ
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_13/while/TensorArrayV2Read/TensorListGetItemá
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype022
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp÷
!lstm_13/while/lstm_cell_13/MatMulMatMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_13/while/lstm_cell_13/MatMulç
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype024
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpà
#lstm_13/while/lstm_cell_13/MatMul_1MatMullstm_13_while_placeholder_2:lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_13/while/lstm_cell_13/MatMul_1Ø
lstm_13/while/lstm_cell_13/addAddV2+lstm_13/while/lstm_cell_13/MatMul:product:0-lstm_13/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_13/while/lstm_cell_13/addà
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpå
"lstm_13/while/lstm_cell_13/BiasAddBiasAdd"lstm_13/while/lstm_cell_13/add:z:09lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_13/while/lstm_cell_13/BiasAdd
*lstm_13/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_13/while/lstm_cell_13/split/split_dim«
 lstm_13/while/lstm_cell_13/splitSplit3lstm_13/while/lstm_cell_13/split/split_dim:output:0+lstm_13/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2"
 lstm_13/while/lstm_cell_13/split°
"lstm_13/while/lstm_cell_13/SigmoidSigmoid)lstm_13/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_13/while/lstm_cell_13/Sigmoid´
$lstm_13/while/lstm_cell_13/Sigmoid_1Sigmoid)lstm_13/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_13/while/lstm_cell_13/Sigmoid_1À
lstm_13/while/lstm_cell_13/mulMul(lstm_13/while/lstm_cell_13/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_13/while/lstm_cell_13/mul§
lstm_13/while/lstm_cell_13/ReluRelu)lstm_13/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_13/while/lstm_cell_13/ReluÔ
 lstm_13/while/lstm_cell_13/mul_1Mul&lstm_13/while/lstm_cell_13/Sigmoid:y:0-lstm_13/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_13/while/lstm_cell_13/mul_1É
 lstm_13/while/lstm_cell_13/add_1AddV2"lstm_13/while/lstm_cell_13/mul:z:0$lstm_13/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_13/while/lstm_cell_13/add_1´
$lstm_13/while/lstm_cell_13/Sigmoid_2Sigmoid)lstm_13/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_13/while/lstm_cell_13/Sigmoid_2¦
!lstm_13/while/lstm_cell_13/Relu_1Relu$lstm_13/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_13/while/lstm_cell_13/Relu_1Ø
 lstm_13/while/lstm_cell_13/mul_2Mul(lstm_13/while/lstm_cell_13/Sigmoid_2:y:0/lstm_13/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_13/while/lstm_cell_13/mul_2
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1lstm_13_while_placeholder$lstm_13/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_13/while/TensorArrayV2Write/TensorListSetIteml
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add/y
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/addp
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add_1/y
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/add_1
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity¦
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_1
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_2º
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_3­
lstm_13/while/Identity_4Identity$lstm_13/while/lstm_cell_13/mul_2:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/while/Identity_4­
lstm_13/while/Identity_5Identity$lstm_13/while/lstm_cell_13/add_1:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/while/Identity_5
lstm_13/while/NoOpNoOp2^lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1^lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp3^lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_13/while/NoOp"9
lstm_13_while_identitylstm_13/while/Identity:output:0"=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"z
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0"|
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0"x
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0"È
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2f
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp2d
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp2h
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Õ
Ã
while_cond_427951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_427951___redundant_placeholder04
0while_while_cond_427951___redundant_placeholder14
0while_while_cond_427951___redundant_placeholder24
0while_while_cond_427951___redundant_placeholder3
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
Õ
Ã
while_cond_428497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_428497___redundant_placeholder04
0while_while_cond_428497___redundant_placeholder14
0while_while_cond_428497___redundant_placeholder24
0while_while_cond_428497___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
 \

C__inference_lstm_13_layer_call_and_return_conditional_losses_427885
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	@@
-lstm_cell_13_matmul_1_readvariableop_resource:	 ;
,lstm_cell_13_biasadd_readvariableop_resource:	
identity¢#lstm_cell_13/BiasAdd/ReadVariableOp¢"lstm_cell_13/MatMul/ReadVariableOp¢$lstm_cell_13/MatMul_1/ReadVariableOp¢whileF
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
strided_slice_2µ
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOp­
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul»
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOp©
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul_1 
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/add´
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOp­
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimó
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_cell_13/split
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_1
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_1
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/add_1
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu_1 
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
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
bodyR
while_body_427801*
condR
while_cond_427800*K
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
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

IdentityÈ
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0

ó
-__inference_sequential_5_layer_call_fn_427613

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@
	unknown_4:	 
	unknown_5:	
	unknown_6:	 
	unknown_7:	
	unknown_8:	@
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:
identity¢StatefulPartitionedCall
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4256962
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
?
Ð
while_body_426162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_13_biasadd_readvariableop_resource:	¢)while/lstm_cell_13/BiasAdd/ReadVariableOp¢(while/lstm_cell_13/MatMul/ReadVariableOp¢*while/lstm_cell_13/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp×
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMulÏ
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOpÀ
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMul_1¸
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/addÈ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOpÅ
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/BiasAdd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dim
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/lstm_cell_13/split
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_1 
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu´
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_1©
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/add_1
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_2
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu_1¸
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Õ
Ã
while_cond_429047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_429047___redundant_placeholder04
0while_while_cond_429047___redundant_placeholder14
0while_while_cond_429047___redundant_placeholder24
0while_while_cond_429047___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
£
L
0__inference_max_pooling1d_2_layer_call_fn_427729

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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_4237192
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
ó

H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_423956

inputs

states
states_11
matmul_readvariableop_resource:	@3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
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
®
µ
(__inference_lstm_13_layer_call_fn_428371

inputs
unknown:	@
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4253652
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

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
ÉH
·
H__inference_sequential_5_layer_call_and_return_conditional_losses_426373

inputs%
conv1d_4_426318: 
conv1d_4_426320: %
conv1d_5_426323: @
conv1d_5_426325:@!
lstm_13_426329:	@!
lstm_13_426331:	 
lstm_13_426333:	!
lstm_14_426336:	 
lstm_14_426338:	!
lstm_14_426340:	@!
dense_16_426343:@@
dense_16_426345:@!
dense_17_426348:@
dense_17_426350:
identity¢ conv1d_4/StatefulPartitionedCall¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/dense_17/bias/Regularizer/Square/ReadVariableOp¢lstm_13/StatefulPartitionedCall¢lstm_14/StatefulPartitionedCall¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_426318conv1d_4_426320*
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
D__inference_conv1d_4_layer_call_and_return_conditional_losses_4251782"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_426323conv1d_5_426325*
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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_4252002"
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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_4252132!
max_pooling1d_2/PartitionedCallÇ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_13_426329lstm_13_426331lstm_13_426333*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4262462!
lstm_13/StatefulPartitionedCallÃ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_426336lstm_14_426338lstm_14_426340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4260732!
lstm_14/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_16_426343dense_16_426345*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4256342"
 dense_16/StatefulPartitionedCall·
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_426348dense_17_426350*
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
D__inference_dense_17_layer_call_and_return_conditional_losses_4256562"
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_4256752
reshape_8/PartitionedCallº
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_426318*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulÎ
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_14_426336*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/mul®
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_17_426350*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/mul
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÄ
NoOpNoOp!^conv1d_4/StatefulPartitionedCall2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^dense_17/bias/Regularizer/Square/ReadVariableOp ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á[

C__inference_lstm_13_layer_call_and_return_conditional_losses_428338

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@@
-lstm_cell_13_matmul_1_readvariableop_resource:	 ;
,lstm_cell_13_biasadd_readvariableop_resource:	
identity¢#lstm_cell_13/BiasAdd/ReadVariableOp¢"lstm_cell_13/MatMul/ReadVariableOp¢$lstm_cell_13/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOp­
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul»
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOp©
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul_1 
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/add´
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOp­
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimó
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_cell_13/split
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_1
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_1
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/add_1
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu_1 
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
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
bodyR
while_body_428254*
condR
while_cond_428253*K
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
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ 2
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
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÈ
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ó

H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_423810

inputs

states
states_11
matmul_readvariableop_resource:	@3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
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
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

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
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
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
Õ
Ã
while_cond_425481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_425481___redundant_placeholder04
0while_while_cond_425481___redundant_placeholder14
0while_while_cond_425481___redundant_placeholder24
0while_while_cond_425481___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
áÏ
§
C__inference_lstm_14_layer_call_and_return_conditional_losses_429488

inputs=
*lstm_cell_14_split_readvariableop_resource:	 ;
,lstm_cell_14_split_1_readvariableop_resource:	7
$lstm_cell_14_readvariableop_resource:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_14/ReadVariableOp¢lstm_cell_14/ReadVariableOp_1¢lstm_cell_14/ReadVariableOp_2¢lstm_cell_14/ReadVariableOp_3¢!lstm_cell_14/split/ReadVariableOp¢#lstm_cell_14/split_1/ReadVariableOp¢whileD
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
:ÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2z
lstm_cell_14/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_14/ones_like/Shape
lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_14/ones_like/Const¸
lstm_cell_14/ones_likeFill%lstm_cell_14/ones_like/Shape:output:0%lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/ones_like}
lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout/Const³
lstm_cell_14/dropout/MulMullstm_cell_14/ones_like:output:0#lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Mul
lstm_cell_14/dropout/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout/Shapeú
1lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2°ª23
1lstm_cell_14/dropout/random_uniform/RandomUniform
#lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2%
#lstm_cell_14/dropout/GreaterEqual/yò
!lstm_cell_14/dropout/GreaterEqualGreaterEqual:lstm_cell_14/dropout/random_uniform/RandomUniform:output:0,lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_cell_14/dropout/GreaterEqual¦
lstm_cell_14/dropout/CastCast%lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Cast®
lstm_cell_14/dropout/Mul_1Mullstm_cell_14/dropout/Mul:z:0lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Mul_1
lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_1/Const¹
lstm_cell_14/dropout_1/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Mul
lstm_cell_14/dropout_1/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_1/Shape
3lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ùÁÃ25
3lstm_cell_14/dropout_1/random_uniform/RandomUniform
%lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_1/GreaterEqual/yú
#lstm_cell_14/dropout_1/GreaterEqualGreaterEqual<lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_1/GreaterEqual¬
lstm_cell_14/dropout_1/CastCast'lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Cast¶
lstm_cell_14/dropout_1/Mul_1Mullstm_cell_14/dropout_1/Mul:z:0lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Mul_1
lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_2/Const¹
lstm_cell_14/dropout_2/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Mul
lstm_cell_14/dropout_2/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_2/Shape
3lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2å25
3lstm_cell_14/dropout_2/random_uniform/RandomUniform
%lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_2/GreaterEqual/yú
#lstm_cell_14/dropout_2/GreaterEqualGreaterEqual<lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_2/GreaterEqual¬
lstm_cell_14/dropout_2/CastCast'lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Cast¶
lstm_cell_14/dropout_2/Mul_1Mullstm_cell_14/dropout_2/Mul:z:0lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Mul_1
lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_3/Const¹
lstm_cell_14/dropout_3/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Mul
lstm_cell_14/dropout_3/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_3/Shape
3lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2£¼25
3lstm_cell_14/dropout_3/random_uniform/RandomUniform
%lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_3/GreaterEqual/yú
#lstm_cell_14/dropout_3/GreaterEqualGreaterEqual<lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_3/GreaterEqual¬
lstm_cell_14/dropout_3/CastCast'lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Cast¶
lstm_cell_14/dropout_3/Mul_1Mullstm_cell_14/dropout_3/Mul:z:0lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Mul_1~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim²
!lstm_cell_14/split/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02#
!lstm_cell_14/split/ReadVariableOpÛ
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0)lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_cell_14/split
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul¡
lstm_cell_14/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_1¡
lstm_cell_14/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_2¡
lstm_cell_14/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_3
lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_14/split_1/split_dim´
#lstm_cell_14/split_1/ReadVariableOpReadVariableOp,lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_14/split_1/ReadVariableOpÓ
lstm_cell_14/split_1Split'lstm_cell_14/split_1/split_dim:output:0+lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_14/split_1§
lstm_cell_14/BiasAddBiasAddlstm_cell_14/MatMul:product:0lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd­
lstm_cell_14/BiasAdd_1BiasAddlstm_cell_14/MatMul_1:product:0lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_1­
lstm_cell_14/BiasAdd_2BiasAddlstm_cell_14/MatMul_2:product:0lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_2­
lstm_cell_14/BiasAdd_3BiasAddlstm_cell_14/MatMul_3:product:0lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_3
lstm_cell_14/mulMulzeros:output:0lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul
lstm_cell_14/mul_1Mulzeros:output:0 lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_1
lstm_cell_14/mul_2Mulzeros:output:0 lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_2
lstm_cell_14/mul_3Mulzeros:output:0 lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_3 
lstm_cell_14/ReadVariableOpReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp
 lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_14/strided_slice/stack
"lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice/stack_1
"lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_14/strided_slice/stack_2Ê
lstm_cell_14/strided_sliceStridedSlice#lstm_cell_14/ReadVariableOp:value:0)lstm_cell_14/strided_slice/stack:output:0+lstm_cell_14/strided_slice/stack_1:output:0+lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice¥
lstm_cell_14/MatMul_4MatMullstm_cell_14/mul:z:0#lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_4
lstm_cell_14/addAddV2lstm_cell_14/BiasAdd:output:0lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add
lstm_cell_14/SigmoidSigmoidlstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid¤
lstm_cell_14/ReadVariableOp_1ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_1
"lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice_1/stack
$lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_cell_14/strided_slice_1/stack_1
$lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_1/stack_2Ö
lstm_cell_14/strided_slice_1StridedSlice%lstm_cell_14/ReadVariableOp_1:value:0+lstm_cell_14/strided_slice_1/stack:output:0-lstm_cell_14/strided_slice_1/stack_1:output:0-lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_1©
lstm_cell_14/MatMul_5MatMullstm_cell_14/mul_1:z:0%lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_5¥
lstm_cell_14/add_1AddV2lstm_cell_14/BiasAdd_1:output:0lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_1
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_1
lstm_cell_14/mul_4Mullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_4¤
lstm_cell_14/ReadVariableOp_2ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_2
"lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_cell_14/strided_slice_2/stack
$lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2&
$lstm_cell_14/strided_slice_2/stack_1
$lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_2/stack_2Ö
lstm_cell_14/strided_slice_2StridedSlice%lstm_cell_14/ReadVariableOp_2:value:0+lstm_cell_14/strided_slice_2/stack:output:0-lstm_cell_14/strided_slice_2/stack_1:output:0-lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_2©
lstm_cell_14/MatMul_6MatMullstm_cell_14/mul_2:z:0%lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_6¥
lstm_cell_14/add_2AddV2lstm_cell_14/BiasAdd_2:output:0lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_2x
lstm_cell_14/ReluRelulstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu
lstm_cell_14/mul_5Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_5
lstm_cell_14/add_3AddV2lstm_cell_14/mul_4:z:0lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_3¤
lstm_cell_14/ReadVariableOp_3ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_3
"lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2$
"lstm_cell_14/strided_slice_3/stack
$lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_14/strided_slice_3/stack_1
$lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_3/stack_2Ö
lstm_cell_14/strided_slice_3StridedSlice%lstm_cell_14/ReadVariableOp_3:value:0+lstm_cell_14/strided_slice_3/stack:output:0-lstm_cell_14/strided_slice_3/stack_1:output:0-lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_3©
lstm_cell_14/MatMul_7MatMullstm_cell_14/mul_3:z:0%lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_7¥
lstm_cell_14/add_4AddV2lstm_cell_14/BiasAdd_3:output:0lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_4
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_2|
lstm_cell_14/Relu_1Relulstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu_1 
lstm_cell_14/mul_6Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_14_split_readvariableop_resource,lstm_cell_14_split_1_readvariableop_resource$lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_429323*
condR
while_cond_429322*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeè
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

IdentityÞ
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_14/ReadVariableOp^lstm_cell_14/ReadVariableOp_1^lstm_cell_14/ReadVariableOp_2^lstm_cell_14/ReadVariableOp_3"^lstm_cell_14/split/ReadVariableOp$^lstm_cell_14/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_14/ReadVariableOplstm_cell_14/ReadVariableOp2>
lstm_cell_14/ReadVariableOp_1lstm_cell_14/ReadVariableOp_12>
lstm_cell_14/ReadVariableOp_2lstm_cell_14/ReadVariableOp_22>
lstm_cell_14/ReadVariableOp_3lstm_cell_14/ReadVariableOp_32F
!lstm_cell_14/split/ReadVariableOp!lstm_cell_14/split/ReadVariableOp2J
#lstm_cell_14/split_1/ReadVariableOp#lstm_cell_14/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
³
¤	
while_body_425908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_14_split_readvariableop_resource_0:	 C
4while_lstm_cell_14_split_1_readvariableop_resource_0:	?
,while_lstm_cell_14_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_14_split_readvariableop_resource:	 A
2while_lstm_cell_14_split_1_readvariableop_resource:	=
*while_lstm_cell_14_readvariableop_resource:	@¢!while/lstm_cell_14/ReadVariableOp¢#while/lstm_cell_14/ReadVariableOp_1¢#while/lstm_cell_14/ReadVariableOp_2¢#while/lstm_cell_14/ReadVariableOp_3¢'while/lstm_cell_14/split/ReadVariableOp¢)while/lstm_cell_14/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_14/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_14/ones_like/Shape
"while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_14/ones_like/ConstÐ
while/lstm_cell_14/ones_likeFill+while/lstm_cell_14/ones_like/Shape:output:0+while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/ones_like
 while/lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2"
 while/lstm_cell_14/dropout/ConstË
while/lstm_cell_14/dropout/MulMul%while/lstm_cell_14/ones_like:output:0)while/lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_14/dropout/Mul
 while/lstm_cell_14/dropout/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_14/dropout/Shape
7while/lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ÝÏ»29
7while/lstm_cell_14/dropout/random_uniform/RandomUniform
)while/lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2+
)while/lstm_cell_14/dropout/GreaterEqual/y
'while/lstm_cell_14/dropout/GreaterEqualGreaterEqual@while/lstm_cell_14/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'while/lstm_cell_14/dropout/GreaterEqual¸
while/lstm_cell_14/dropout/CastCast+while/lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/lstm_cell_14/dropout/CastÆ
 while/lstm_cell_14/dropout/Mul_1Mul"while/lstm_cell_14/dropout/Mul:z:0#while/lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout/Mul_1
"while/lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_1/ConstÑ
 while/lstm_cell_14/dropout_1/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_1/Mul
"while/lstm_cell_14/dropout_1/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_1/Shape
9while/lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ÇÇÃ2;
9while/lstm_cell_14/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_1/GreaterEqual/y
)while/lstm_cell_14/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_1/GreaterEqual¾
!while/lstm_cell_14/dropout_1/CastCast-while/lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_1/CastÎ
"while/lstm_cell_14/dropout_1/Mul_1Mul$while/lstm_cell_14/dropout_1/Mul:z:0%while/lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_1/Mul_1
"while/lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_2/ConstÑ
 while/lstm_cell_14/dropout_2/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_2/Mul
"while/lstm_cell_14/dropout_2/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_2/Shape
9while/lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2¼ä2;
9while/lstm_cell_14/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_2/GreaterEqual/y
)while/lstm_cell_14/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_2/GreaterEqual¾
!while/lstm_cell_14/dropout_2/CastCast-while/lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_2/CastÎ
"while/lstm_cell_14/dropout_2/Mul_1Mul$while/lstm_cell_14/dropout_2/Mul:z:0%while/lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_2/Mul_1
"while/lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_3/ConstÑ
 while/lstm_cell_14/dropout_3/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_3/Mul
"while/lstm_cell_14/dropout_3/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_3/Shape
9while/lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2õ2;
9while/lstm_cell_14/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_3/GreaterEqual/y
)while/lstm_cell_14/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_3/GreaterEqual¾
!while/lstm_cell_14/dropout_3/CastCast-while/lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_3/CastÎ
"while/lstm_cell_14/dropout_3/Mul_1Mul$while/lstm_cell_14/dropout_3/Mul:z:0%while/lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_3/Mul_1
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dimÆ
'while/lstm_cell_14/split/ReadVariableOpReadVariableOp2while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype02)
'while/lstm_cell_14/split/ReadVariableOpó
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
while/lstm_cell_14/splitÇ
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMulË
while/lstm_cell_14/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_1Ë
while/lstm_cell_14/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_2Ë
while/lstm_cell_14/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_3
$while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_14/split_1/split_dimÈ
)while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_14/split_1/ReadVariableOpë
while/lstm_cell_14/split_1Split-while/lstm_cell_14/split_1/split_dim:output:01while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_14/split_1¿
while/lstm_cell_14/BiasAddBiasAdd#while/lstm_cell_14/MatMul:product:0#while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAddÅ
while/lstm_cell_14/BiasAdd_1BiasAdd%while/lstm_cell_14/MatMul_1:product:0#while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_1Å
while/lstm_cell_14/BiasAdd_2BiasAdd%while/lstm_cell_14/MatMul_2:product:0#while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_2Å
while/lstm_cell_14/BiasAdd_3BiasAdd%while/lstm_cell_14/MatMul_3:product:0#while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_3¤
while/lstm_cell_14/mulMulwhile_placeholder_2$while/lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mulª
while/lstm_cell_14/mul_1Mulwhile_placeholder_2&while/lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_1ª
while/lstm_cell_14/mul_2Mulwhile_placeholder_2&while/lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_2ª
while/lstm_cell_14/mul_3Mulwhile_placeholder_2&while/lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_3´
!while/lstm_cell_14/ReadVariableOpReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02#
!while/lstm_cell_14/ReadVariableOp¡
&while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_14/strided_slice/stack¥
(while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice/stack_1¥
(while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_14/strided_slice/stack_2î
 while/lstm_cell_14/strided_sliceStridedSlice)while/lstm_cell_14/ReadVariableOp:value:0/while/lstm_cell_14/strided_slice/stack:output:01while/lstm_cell_14/strided_slice/stack_1:output:01while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 while/lstm_cell_14/strided_slice½
while/lstm_cell_14/MatMul_4MatMulwhile/lstm_cell_14/mul:z:0)while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_4·
while/lstm_cell_14/addAddV2#while/lstm_cell_14/BiasAdd:output:0%while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add
while/lstm_cell_14/SigmoidSigmoidwhile/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid¸
#while/lstm_cell_14/ReadVariableOp_1ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_1¥
(while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice_1/stack©
*while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*while/lstm_cell_14/strided_slice_1/stack_1©
*while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_1/stack_2ú
"while/lstm_cell_14/strided_slice_1StridedSlice+while/lstm_cell_14/ReadVariableOp_1:value:01while/lstm_cell_14/strided_slice_1/stack:output:03while/lstm_cell_14/strided_slice_1/stack_1:output:03while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_1Á
while/lstm_cell_14/MatMul_5MatMulwhile/lstm_cell_14/mul_1:z:0+while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_5½
while/lstm_cell_14/add_1AddV2%while/lstm_cell_14/BiasAdd_1:output:0%while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_1
while/lstm_cell_14/Sigmoid_1Sigmoidwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_1¤
while/lstm_cell_14/mul_4Mul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_4¸
#while/lstm_cell_14/ReadVariableOp_2ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_2¥
(while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(while/lstm_cell_14/strided_slice_2/stack©
*while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2,
*while/lstm_cell_14/strided_slice_2/stack_1©
*while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_2/stack_2ú
"while/lstm_cell_14/strided_slice_2StridedSlice+while/lstm_cell_14/ReadVariableOp_2:value:01while/lstm_cell_14/strided_slice_2/stack:output:03while/lstm_cell_14/strided_slice_2/stack_1:output:03while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_2Á
while/lstm_cell_14/MatMul_6MatMulwhile/lstm_cell_14/mul_2:z:0+while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_6½
while/lstm_cell_14/add_2AddV2%while/lstm_cell_14/BiasAdd_2:output:0%while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_2
while/lstm_cell_14/ReluReluwhile/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu´
while/lstm_cell_14/mul_5Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_5«
while/lstm_cell_14/add_3AddV2while/lstm_cell_14/mul_4:z:0while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_3¸
#while/lstm_cell_14/ReadVariableOp_3ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_3¥
(while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2*
(while/lstm_cell_14/strided_slice_3/stack©
*while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_14/strided_slice_3/stack_1©
*while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_3/stack_2ú
"while/lstm_cell_14/strided_slice_3StridedSlice+while/lstm_cell_14/ReadVariableOp_3:value:01while/lstm_cell_14/strided_slice_3/stack:output:03while/lstm_cell_14/strided_slice_3/stack_1:output:03while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_3Á
while/lstm_cell_14/MatMul_7MatMulwhile/lstm_cell_14/mul_3:z:0+while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_7½
while/lstm_cell_14/add_4AddV2%while/lstm_cell_14/BiasAdd_3:output:0%while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_4
while/lstm_cell_14/Sigmoid_2Sigmoidwhile/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_2
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu_1¸
while/lstm_cell_14/mul_6Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_14/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_14/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_14/ReadVariableOp$^while/lstm_cell_14/ReadVariableOp_1$^while/lstm_cell_14/ReadVariableOp_2$^while/lstm_cell_14/ReadVariableOp_3(^while/lstm_cell_14/split/ReadVariableOp*^while/lstm_cell_14/split_1/ReadVariableOp*"
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
*while_lstm_cell_14_readvariableop_resource,while_lstm_cell_14_readvariableop_resource_0"j
2while_lstm_cell_14_split_1_readvariableop_resource4while_lstm_cell_14_split_1_readvariableop_resource_0"f
0while_lstm_cell_14_split_readvariableop_resource2while_lstm_cell_14_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_14/ReadVariableOp!while/lstm_cell_14/ReadVariableOp2J
#while/lstm_cell_14/ReadVariableOp_1#while/lstm_cell_14/ReadVariableOp_12J
#while/lstm_cell_14/ReadVariableOp_2#while/lstm_cell_14/ReadVariableOp_22J
#while/lstm_cell_14/ReadVariableOp_3#while/lstm_cell_14/ReadVariableOp_32R
'while/lstm_cell_14/split/ReadVariableOp'while/lstm_cell_14/split/ReadVariableOp2V
)while/lstm_cell_14/split_1/ReadVariableOp)while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Â
Ç
D__inference_conv1d_4_layer_call_and_return_conditional_losses_425178

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOpy
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
ReluÖ
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÀ
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á[

C__inference_lstm_13_layer_call_and_return_conditional_losses_426246

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@@
-lstm_cell_13_matmul_1_readvariableop_resource:	 ;
,lstm_cell_13_biasadd_readvariableop_resource:	
identity¢#lstm_cell_13/BiasAdd/ReadVariableOp¢"lstm_cell_13/MatMul/ReadVariableOp¢$lstm_cell_13/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOp­
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul»
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOp©
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul_1 
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/add´
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOp­
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimó
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_cell_13/split
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_1
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_1
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/add_1
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu_1 
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
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
bodyR
while_body_426162*
condR
while_cond_426161*K
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
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ 2
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
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÈ
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Æ

ã
lstm_14_while_cond_427380,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3.
*lstm_14_while_less_lstm_14_strided_slice_1D
@lstm_14_while_lstm_14_while_cond_427380___redundant_placeholder0D
@lstm_14_while_lstm_14_while_cond_427380___redundant_placeholder1D
@lstm_14_while_lstm_14_while_cond_427380___redundant_placeholder2D
@lstm_14_while_lstm_14_while_cond_427380___redundant_placeholder3
lstm_14_while_identity

lstm_14/while/LessLesslstm_14_while_placeholder*lstm_14_while_less_lstm_14_strided_slice_1*
T0*
_output_shapes
: 2
lstm_14/while/Lessu
lstm_14/while/IdentityIdentitylstm_14/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_14/while/Identity"9
lstm_14_while_identitylstm_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ü
Ê
__inference_loss_fn_2_429966Y
Flstm_14_lstm_cell_14_kernel_regularizer_square_readvariableop_resource:	 
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpFlstm_14_lstm_cell_14_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muly
IdentityIdentity/lstm_14/lstm_cell_14/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp

õ
D__inference_dense_16_layer_call_and_return_conditional_losses_425634

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
øÍ
¼
lstm_14_while_body_427381,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3+
'lstm_14_while_lstm_14_strided_slice_1_0g
clstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_14_while_lstm_cell_14_split_readvariableop_resource_0:	 K
<lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0:	G
4lstm_14_while_lstm_cell_14_readvariableop_resource_0:	@
lstm_14_while_identity
lstm_14_while_identity_1
lstm_14_while_identity_2
lstm_14_while_identity_3
lstm_14_while_identity_4
lstm_14_while_identity_5)
%lstm_14_while_lstm_14_strided_slice_1e
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorK
8lstm_14_while_lstm_cell_14_split_readvariableop_resource:	 I
:lstm_14_while_lstm_cell_14_split_1_readvariableop_resource:	E
2lstm_14_while_lstm_cell_14_readvariableop_resource:	@¢)lstm_14/while/lstm_cell_14/ReadVariableOp¢+lstm_14/while/lstm_cell_14/ReadVariableOp_1¢+lstm_14/while/lstm_cell_14/ReadVariableOp_2¢+lstm_14/while/lstm_cell_14/ReadVariableOp_3¢/lstm_14/while/lstm_cell_14/split/ReadVariableOp¢1lstm_14/while/lstm_cell_14/split_1/ReadVariableOpÓ
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2A
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0lstm_14_while_placeholderHlstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype023
1lstm_14/while/TensorArrayV2Read/TensorListGetItem£
*lstm_14/while/lstm_cell_14/ones_like/ShapeShapelstm_14_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_14/while/lstm_cell_14/ones_like/Shape
*lstm_14/while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_14/while/lstm_cell_14/ones_like/Constð
$lstm_14/while/lstm_cell_14/ones_likeFill3lstm_14/while/lstm_cell_14/ones_like/Shape:output:03lstm_14/while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/ones_like
(lstm_14/while/lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2*
(lstm_14/while/lstm_cell_14/dropout/Constë
&lstm_14/while/lstm_cell_14/dropout/MulMul-lstm_14/while/lstm_cell_14/ones_like:output:01lstm_14/while/lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&lstm_14/while/lstm_cell_14/dropout/Mul±
(lstm_14/while/lstm_cell_14/dropout/ShapeShape-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_14/while/lstm_cell_14/dropout/Shape¤
?lstm_14/while/lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform1lstm_14/while/lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ÔþÂ2A
?lstm_14/while/lstm_cell_14/dropout/random_uniform/RandomUniform«
1lstm_14/while/lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>23
1lstm_14/while/lstm_cell_14/dropout/GreaterEqual/yª
/lstm_14/while/lstm_cell_14/dropout/GreaterEqualGreaterEqualHlstm_14/while/lstm_cell_14/dropout/random_uniform/RandomUniform:output:0:lstm_14/while/lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@21
/lstm_14/while/lstm_cell_14/dropout/GreaterEqualÐ
'lstm_14/while/lstm_cell_14/dropout/CastCast3lstm_14/while/lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'lstm_14/while/lstm_cell_14/dropout/Castæ
(lstm_14/while/lstm_cell_14/dropout/Mul_1Mul*lstm_14/while/lstm_cell_14/dropout/Mul:z:0+lstm_14/while/lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(lstm_14/while/lstm_cell_14/dropout/Mul_1
*lstm_14/while/lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2,
*lstm_14/while/lstm_cell_14/dropout_1/Constñ
(lstm_14/while/lstm_cell_14/dropout_1/MulMul-lstm_14/while/lstm_cell_14/ones_like:output:03lstm_14/while/lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(lstm_14/while/lstm_cell_14/dropout_1/Mulµ
*lstm_14/while/lstm_cell_14/dropout_1/ShapeShape-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_14/while/lstm_cell_14/dropout_1/Shapeª
Alstm_14/while/lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_14/while/lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ÁÂ2C
Alstm_14/while/lstm_cell_14/dropout_1/random_uniform/RandomUniform¯
3lstm_14/while/lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>25
3lstm_14/while/lstm_cell_14/dropout_1/GreaterEqual/y²
1lstm_14/while/lstm_cell_14/dropout_1/GreaterEqualGreaterEqualJlstm_14/while/lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:0<lstm_14/while/lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1lstm_14/while/lstm_cell_14/dropout_1/GreaterEqualÖ
)lstm_14/while/lstm_cell_14/dropout_1/CastCast5lstm_14/while/lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)lstm_14/while/lstm_cell_14/dropout_1/Castî
*lstm_14/while/lstm_cell_14/dropout_1/Mul_1Mul,lstm_14/while/lstm_cell_14/dropout_1/Mul:z:0-lstm_14/while/lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*lstm_14/while/lstm_cell_14/dropout_1/Mul_1
*lstm_14/while/lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2,
*lstm_14/while/lstm_cell_14/dropout_2/Constñ
(lstm_14/while/lstm_cell_14/dropout_2/MulMul-lstm_14/while/lstm_cell_14/ones_like:output:03lstm_14/while/lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(lstm_14/while/lstm_cell_14/dropout_2/Mulµ
*lstm_14/while/lstm_cell_14/dropout_2/ShapeShape-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_14/while/lstm_cell_14/dropout_2/Shapeª
Alstm_14/while/lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_14/while/lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2°ç2C
Alstm_14/while/lstm_cell_14/dropout_2/random_uniform/RandomUniform¯
3lstm_14/while/lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>25
3lstm_14/while/lstm_cell_14/dropout_2/GreaterEqual/y²
1lstm_14/while/lstm_cell_14/dropout_2/GreaterEqualGreaterEqualJlstm_14/while/lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:0<lstm_14/while/lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1lstm_14/while/lstm_cell_14/dropout_2/GreaterEqualÖ
)lstm_14/while/lstm_cell_14/dropout_2/CastCast5lstm_14/while/lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)lstm_14/while/lstm_cell_14/dropout_2/Castî
*lstm_14/while/lstm_cell_14/dropout_2/Mul_1Mul,lstm_14/while/lstm_cell_14/dropout_2/Mul:z:0-lstm_14/while/lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*lstm_14/while/lstm_cell_14/dropout_2/Mul_1
*lstm_14/while/lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2,
*lstm_14/while/lstm_cell_14/dropout_3/Constñ
(lstm_14/while/lstm_cell_14/dropout_3/MulMul-lstm_14/while/lstm_cell_14/ones_like:output:03lstm_14/while/lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2*
(lstm_14/while/lstm_cell_14/dropout_3/Mulµ
*lstm_14/while/lstm_cell_14/dropout_3/ShapeShape-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2,
*lstm_14/while/lstm_cell_14/dropout_3/Shapeª
Alstm_14/while/lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_14/while/lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed22C
Alstm_14/while/lstm_cell_14/dropout_3/random_uniform/RandomUniform¯
3lstm_14/while/lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>25
3lstm_14/while/lstm_cell_14/dropout_3/GreaterEqual/y²
1lstm_14/while/lstm_cell_14/dropout_3/GreaterEqualGreaterEqualJlstm_14/while/lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:0<lstm_14/while/lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@23
1lstm_14/while/lstm_cell_14/dropout_3/GreaterEqualÖ
)lstm_14/while/lstm_cell_14/dropout_3/CastCast5lstm_14/while/lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)lstm_14/while/lstm_cell_14/dropout_3/Castî
*lstm_14/while/lstm_cell_14/dropout_3/Mul_1Mul,lstm_14/while/lstm_cell_14/dropout_3/Mul:z:0-lstm_14/while/lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*lstm_14/while/lstm_cell_14/dropout_3/Mul_1
*lstm_14/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_14/while/lstm_cell_14/split/split_dimÞ
/lstm_14/while/lstm_cell_14/split/ReadVariableOpReadVariableOp:lstm_14_while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype021
/lstm_14/while/lstm_cell_14/split/ReadVariableOp
 lstm_14/while/lstm_cell_14/splitSplit3lstm_14/while/lstm_cell_14/split/split_dim:output:07lstm_14/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2"
 lstm_14/while/lstm_cell_14/splitç
!lstm_14/while/lstm_cell_14/MatMulMatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_14/while/lstm_cell_14/MatMulë
#lstm_14/while/lstm_cell_14/MatMul_1MatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_1ë
#lstm_14/while/lstm_cell_14/MatMul_2MatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_2ë
#lstm_14/while/lstm_cell_14/MatMul_3MatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_3
,lstm_14/while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_14/while/lstm_cell_14/split_1/split_dimà
1lstm_14/while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp<lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_14/while/lstm_cell_14/split_1/ReadVariableOp
"lstm_14/while/lstm_cell_14/split_1Split5lstm_14/while/lstm_cell_14/split_1/split_dim:output:09lstm_14/while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2$
"lstm_14/while/lstm_cell_14/split_1ß
"lstm_14/while/lstm_cell_14/BiasAddBiasAdd+lstm_14/while/lstm_cell_14/MatMul:product:0+lstm_14/while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/while/lstm_cell_14/BiasAddå
$lstm_14/while/lstm_cell_14/BiasAdd_1BiasAdd-lstm_14/while/lstm_cell_14/MatMul_1:product:0+lstm_14/while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/BiasAdd_1å
$lstm_14/while/lstm_cell_14/BiasAdd_2BiasAdd-lstm_14/while/lstm_cell_14/MatMul_2:product:0+lstm_14/while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/BiasAdd_2å
$lstm_14/while/lstm_cell_14/BiasAdd_3BiasAdd-lstm_14/while/lstm_cell_14/MatMul_3:product:0+lstm_14/while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/BiasAdd_3Ä
lstm_14/while/lstm_cell_14/mulMullstm_14_while_placeholder_2,lstm_14/while/lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/while/lstm_cell_14/mulÊ
 lstm_14/while/lstm_cell_14/mul_1Mullstm_14_while_placeholder_2.lstm_14/while/lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_1Ê
 lstm_14/while/lstm_cell_14/mul_2Mullstm_14_while_placeholder_2.lstm_14/while/lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_2Ê
 lstm_14/while/lstm_cell_14/mul_3Mullstm_14_while_placeholder_2.lstm_14/while/lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_3Ì
)lstm_14/while/lstm_cell_14/ReadVariableOpReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_14/while/lstm_cell_14/ReadVariableOp±
.lstm_14/while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_14/while/lstm_cell_14/strided_slice/stackµ
0lstm_14/while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_14/while/lstm_cell_14/strided_slice/stack_1µ
0lstm_14/while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_14/while/lstm_cell_14/strided_slice/stack_2
(lstm_14/while/lstm_cell_14/strided_sliceStridedSlice1lstm_14/while/lstm_cell_14/ReadVariableOp:value:07lstm_14/while/lstm_cell_14/strided_slice/stack:output:09lstm_14/while/lstm_cell_14/strided_slice/stack_1:output:09lstm_14/while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_14/while/lstm_cell_14/strided_sliceÝ
#lstm_14/while/lstm_cell_14/MatMul_4MatMul"lstm_14/while/lstm_cell_14/mul:z:01lstm_14/while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_4×
lstm_14/while/lstm_cell_14/addAddV2+lstm_14/while/lstm_cell_14/BiasAdd:output:0-lstm_14/while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/while/lstm_cell_14/add©
"lstm_14/while/lstm_cell_14/SigmoidSigmoid"lstm_14/while/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/while/lstm_cell_14/SigmoidÐ
+lstm_14/while/lstm_cell_14/ReadVariableOp_1ReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02-
+lstm_14/while/lstm_cell_14/ReadVariableOp_1µ
0lstm_14/while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_14/while/lstm_cell_14/strided_slice_1/stack¹
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_1¹
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_2ª
*lstm_14/while/lstm_cell_14/strided_slice_1StridedSlice3lstm_14/while/lstm_cell_14/ReadVariableOp_1:value:09lstm_14/while/lstm_cell_14/strided_slice_1/stack:output:0;lstm_14/while/lstm_cell_14/strided_slice_1/stack_1:output:0;lstm_14/while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2,
*lstm_14/while/lstm_cell_14/strided_slice_1á
#lstm_14/while/lstm_cell_14/MatMul_5MatMul$lstm_14/while/lstm_cell_14/mul_1:z:03lstm_14/while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_5Ý
 lstm_14/while/lstm_cell_14/add_1AddV2-lstm_14/while/lstm_cell_14/BiasAdd_1:output:0-lstm_14/while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_1¯
$lstm_14/while/lstm_cell_14/Sigmoid_1Sigmoid$lstm_14/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/Sigmoid_1Ä
 lstm_14/while/lstm_cell_14/mul_4Mul(lstm_14/while/lstm_cell_14/Sigmoid_1:y:0lstm_14_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_4Ð
+lstm_14/while/lstm_cell_14/ReadVariableOp_2ReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02-
+lstm_14/while/lstm_cell_14/ReadVariableOp_2µ
0lstm_14/while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0lstm_14/while/lstm_cell_14/strided_slice_2/stack¹
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   24
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_1¹
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_2ª
*lstm_14/while/lstm_cell_14/strided_slice_2StridedSlice3lstm_14/while/lstm_cell_14/ReadVariableOp_2:value:09lstm_14/while/lstm_cell_14/strided_slice_2/stack:output:0;lstm_14/while/lstm_cell_14/strided_slice_2/stack_1:output:0;lstm_14/while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2,
*lstm_14/while/lstm_cell_14/strided_slice_2á
#lstm_14/while/lstm_cell_14/MatMul_6MatMul$lstm_14/while/lstm_cell_14/mul_2:z:03lstm_14/while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_6Ý
 lstm_14/while/lstm_cell_14/add_2AddV2-lstm_14/while/lstm_cell_14/BiasAdd_2:output:0-lstm_14/while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_2¢
lstm_14/while/lstm_cell_14/ReluRelu$lstm_14/while/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
lstm_14/while/lstm_cell_14/ReluÔ
 lstm_14/while/lstm_cell_14/mul_5Mul&lstm_14/while/lstm_cell_14/Sigmoid:y:0-lstm_14/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_5Ë
 lstm_14/while/lstm_cell_14/add_3AddV2$lstm_14/while/lstm_cell_14/mul_4:z:0$lstm_14/while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_3Ð
+lstm_14/while/lstm_cell_14/ReadVariableOp_3ReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02-
+lstm_14/while/lstm_cell_14/ReadVariableOp_3µ
0lstm_14/while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   22
0lstm_14/while/lstm_cell_14/strided_slice_3/stack¹
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_1¹
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_2ª
*lstm_14/while/lstm_cell_14/strided_slice_3StridedSlice3lstm_14/while/lstm_cell_14/ReadVariableOp_3:value:09lstm_14/while/lstm_cell_14/strided_slice_3/stack:output:0;lstm_14/while/lstm_cell_14/strided_slice_3/stack_1:output:0;lstm_14/while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2,
*lstm_14/while/lstm_cell_14/strided_slice_3á
#lstm_14/while/lstm_cell_14/MatMul_7MatMul$lstm_14/while/lstm_cell_14/mul_3:z:03lstm_14/while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_7Ý
 lstm_14/while/lstm_cell_14/add_4AddV2-lstm_14/while/lstm_cell_14/BiasAdd_3:output:0-lstm_14/while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_4¯
$lstm_14/while/lstm_cell_14/Sigmoid_2Sigmoid$lstm_14/while/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/Sigmoid_2¦
!lstm_14/while/lstm_cell_14/Relu_1Relu$lstm_14/while/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_14/while/lstm_cell_14/Relu_1Ø
 lstm_14/while/lstm_cell_14/mul_6Mul(lstm_14/while/lstm_cell_14/Sigmoid_2:y:0/lstm_14/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_6
2lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_14_while_placeholder_1lstm_14_while_placeholder$lstm_14/while/lstm_cell_14/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_14/while/TensorArrayV2Write/TensorListSetIteml
lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add/y
lstm_14/while/addAddV2lstm_14_while_placeholderlstm_14/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/addp
lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add_1/y
lstm_14/while/add_1AddV2(lstm_14_while_lstm_14_while_loop_counterlstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/add_1
lstm_14/while/IdentityIdentitylstm_14/while/add_1:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity¦
lstm_14/while/Identity_1Identity.lstm_14_while_lstm_14_while_maximum_iterations^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_1
lstm_14/while/Identity_2Identitylstm_14/while/add:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_2º
lstm_14/while/Identity_3IdentityBlstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_3­
lstm_14/while/Identity_4Identity$lstm_14/while/lstm_cell_14/mul_6:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/while/Identity_4­
lstm_14/while/Identity_5Identity$lstm_14/while/lstm_cell_14/add_3:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/while/Identity_5
lstm_14/while/NoOpNoOp*^lstm_14/while/lstm_cell_14/ReadVariableOp,^lstm_14/while/lstm_cell_14/ReadVariableOp_1,^lstm_14/while/lstm_cell_14/ReadVariableOp_2,^lstm_14/while/lstm_cell_14/ReadVariableOp_30^lstm_14/while/lstm_cell_14/split/ReadVariableOp2^lstm_14/while/lstm_cell_14/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_14/while/NoOp"9
lstm_14_while_identitylstm_14/while/Identity:output:0"=
lstm_14_while_identity_1!lstm_14/while/Identity_1:output:0"=
lstm_14_while_identity_2!lstm_14/while/Identity_2:output:0"=
lstm_14_while_identity_3!lstm_14/while/Identity_3:output:0"=
lstm_14_while_identity_4!lstm_14/while/Identity_4:output:0"=
lstm_14_while_identity_5!lstm_14/while/Identity_5:output:0"P
%lstm_14_while_lstm_14_strided_slice_1'lstm_14_while_lstm_14_strided_slice_1_0"j
2lstm_14_while_lstm_cell_14_readvariableop_resource4lstm_14_while_lstm_cell_14_readvariableop_resource_0"z
:lstm_14_while_lstm_cell_14_split_1_readvariableop_resource<lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0"v
8lstm_14_while_lstm_cell_14_split_readvariableop_resource:lstm_14_while_lstm_cell_14_split_readvariableop_resource_0"È
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2V
)lstm_14/while/lstm_cell_14/ReadVariableOp)lstm_14/while/lstm_cell_14/ReadVariableOp2Z
+lstm_14/while/lstm_cell_14/ReadVariableOp_1+lstm_14/while/lstm_cell_14/ReadVariableOp_12Z
+lstm_14/while/lstm_cell_14/ReadVariableOp_2+lstm_14/while/lstm_cell_14/ReadVariableOp_22Z
+lstm_14/while/lstm_cell_14/ReadVariableOp_3+lstm_14/while/lstm_cell_14/ReadVariableOp_32b
/lstm_14/while/lstm_cell_14/split/ReadVariableOp/lstm_14/while/lstm_cell_14/split/ReadVariableOp2f
1lstm_14/while/lstm_cell_14/split_1/ReadVariableOp1lstm_14/while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
?
Ð
while_body_427801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_13_biasadd_readvariableop_resource:	¢)while/lstm_cell_13/BiasAdd/ReadVariableOp¢(while/lstm_cell_13/MatMul/ReadVariableOp¢*while/lstm_cell_13/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp×
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMulÏ
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOpÀ
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMul_1¸
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/addÈ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOpÅ
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/BiasAdd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dim
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/lstm_cell_13/split
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_1 
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu´
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_1©
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/add_1
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_2
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu_1¸
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
Ð
while_body_427952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_13_biasadd_readvariableop_resource:	¢)while/lstm_cell_13/BiasAdd/ReadVariableOp¢(while/lstm_cell_13/MatMul/ReadVariableOp¢*while/lstm_cell_13/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp×
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMulÏ
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOpÀ
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMul_1¸
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/addÈ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOpÅ
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/BiasAdd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dim
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/lstm_cell_13/split
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_1 
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu´
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_1©
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/add_1
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_2
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu_1¸
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

ò
$__inference_signature_wrapper_426612
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@
	unknown_4:	 
	unknown_5:	
	unknown_6:	 
	unknown_7:	
	unknown_8:	@
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_4237072
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
¶
ö
-__inference_lstm_cell_14_layer_call_fn_429938

inputs
states_0
states_1
unknown:	 
	unknown_0:	
	unknown_1:	@
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
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_4244892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

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
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
F

C__inference_lstm_13_layer_call_and_return_conditional_losses_424103

inputs&
lstm_cell_13_424021:	@&
lstm_cell_13_424023:	 "
lstm_cell_13_424025:	
identity¢$lstm_cell_13/StatefulPartitionedCall¢whileD
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
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_424021lstm_cell_13_424023lstm_cell_13_424025*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_4239562&
$lstm_cell_13/StatefulPartitionedCall
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
while/loop_counterÀ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_424021lstm_cell_13_424023lstm_cell_13_424025*
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
bodyR
while_body_424034*
condR
while_cond_424033*K
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
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity}
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
®
µ
(__inference_lstm_13_layer_call_fn_428382

inputs
unknown:	@
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4262462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

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
¥
g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_425213

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
³
¤	
while_body_429323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_14_split_readvariableop_resource_0:	 C
4while_lstm_cell_14_split_1_readvariableop_resource_0:	?
,while_lstm_cell_14_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_14_split_readvariableop_resource:	 A
2while_lstm_cell_14_split_1_readvariableop_resource:	=
*while_lstm_cell_14_readvariableop_resource:	@¢!while/lstm_cell_14/ReadVariableOp¢#while/lstm_cell_14/ReadVariableOp_1¢#while/lstm_cell_14/ReadVariableOp_2¢#while/lstm_cell_14/ReadVariableOp_3¢'while/lstm_cell_14/split/ReadVariableOp¢)while/lstm_cell_14/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_14/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_14/ones_like/Shape
"while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_14/ones_like/ConstÐ
while/lstm_cell_14/ones_likeFill+while/lstm_cell_14/ones_like/Shape:output:0+while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/ones_like
 while/lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2"
 while/lstm_cell_14/dropout/ConstË
while/lstm_cell_14/dropout/MulMul%while/lstm_cell_14/ones_like:output:0)while/lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
while/lstm_cell_14/dropout/Mul
 while/lstm_cell_14/dropout/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_14/dropout/Shape
7while/lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2Öå÷29
7while/lstm_cell_14/dropout/random_uniform/RandomUniform
)while/lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2+
)while/lstm_cell_14/dropout/GreaterEqual/y
'while/lstm_cell_14/dropout/GreaterEqualGreaterEqual@while/lstm_cell_14/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'while/lstm_cell_14/dropout/GreaterEqual¸
while/lstm_cell_14/dropout/CastCast+while/lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
while/lstm_cell_14/dropout/CastÆ
 while/lstm_cell_14/dropout/Mul_1Mul"while/lstm_cell_14/dropout/Mul:z:0#while/lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout/Mul_1
"while/lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_1/ConstÑ
 while/lstm_cell_14/dropout_1/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_1/Mul
"while/lstm_cell_14/dropout_1/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_1/Shape
9while/lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2àÐü2;
9while/lstm_cell_14/dropout_1/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_1/GreaterEqual/y
)while/lstm_cell_14/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_1/GreaterEqual¾
!while/lstm_cell_14/dropout_1/CastCast-while/lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_1/CastÎ
"while/lstm_cell_14/dropout_1/Mul_1Mul$while/lstm_cell_14/dropout_1/Mul:z:0%while/lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_1/Mul_1
"while/lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_2/ConstÑ
 while/lstm_cell_14/dropout_2/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_2/Mul
"while/lstm_cell_14/dropout_2/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_2/Shape
9while/lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2Ïª2;
9while/lstm_cell_14/dropout_2/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_2/GreaterEqual/y
)while/lstm_cell_14/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_2/GreaterEqual¾
!while/lstm_cell_14/dropout_2/CastCast-while/lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_2/CastÎ
"while/lstm_cell_14/dropout_2/Mul_1Mul$while/lstm_cell_14/dropout_2/Mul:z:0%while/lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_2/Mul_1
"while/lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"while/lstm_cell_14/dropout_3/ConstÑ
 while/lstm_cell_14/dropout_3/MulMul%while/lstm_cell_14/ones_like:output:0+while/lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 while/lstm_cell_14/dropout_3/Mul
"while/lstm_cell_14/dropout_3/ShapeShape%while/lstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_14/dropout_3/Shape
9while/lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2æÕ¥2;
9while/lstm_cell_14/dropout_3/random_uniform/RandomUniform
+while/lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+while/lstm_cell_14/dropout_3/GreaterEqual/y
)while/lstm_cell_14/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)while/lstm_cell_14/dropout_3/GreaterEqual¾
!while/lstm_cell_14/dropout_3/CastCast-while/lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!while/lstm_cell_14/dropout_3/CastÎ
"while/lstm_cell_14/dropout_3/Mul_1Mul$while/lstm_cell_14/dropout_3/Mul:z:0%while/lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"while/lstm_cell_14/dropout_3/Mul_1
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dimÆ
'while/lstm_cell_14/split/ReadVariableOpReadVariableOp2while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype02)
'while/lstm_cell_14/split/ReadVariableOpó
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
while/lstm_cell_14/splitÇ
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMulË
while/lstm_cell_14/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_1Ë
while/lstm_cell_14/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_2Ë
while/lstm_cell_14/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_3
$while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_14/split_1/split_dimÈ
)while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_14/split_1/ReadVariableOpë
while/lstm_cell_14/split_1Split-while/lstm_cell_14/split_1/split_dim:output:01while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_14/split_1¿
while/lstm_cell_14/BiasAddBiasAdd#while/lstm_cell_14/MatMul:product:0#while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAddÅ
while/lstm_cell_14/BiasAdd_1BiasAdd%while/lstm_cell_14/MatMul_1:product:0#while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_1Å
while/lstm_cell_14/BiasAdd_2BiasAdd%while/lstm_cell_14/MatMul_2:product:0#while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_2Å
while/lstm_cell_14/BiasAdd_3BiasAdd%while/lstm_cell_14/MatMul_3:product:0#while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_3¤
while/lstm_cell_14/mulMulwhile_placeholder_2$while/lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mulª
while/lstm_cell_14/mul_1Mulwhile_placeholder_2&while/lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_1ª
while/lstm_cell_14/mul_2Mulwhile_placeholder_2&while/lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_2ª
while/lstm_cell_14/mul_3Mulwhile_placeholder_2&while/lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_3´
!while/lstm_cell_14/ReadVariableOpReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02#
!while/lstm_cell_14/ReadVariableOp¡
&while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_14/strided_slice/stack¥
(while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice/stack_1¥
(while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_14/strided_slice/stack_2î
 while/lstm_cell_14/strided_sliceStridedSlice)while/lstm_cell_14/ReadVariableOp:value:0/while/lstm_cell_14/strided_slice/stack:output:01while/lstm_cell_14/strided_slice/stack_1:output:01while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 while/lstm_cell_14/strided_slice½
while/lstm_cell_14/MatMul_4MatMulwhile/lstm_cell_14/mul:z:0)while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_4·
while/lstm_cell_14/addAddV2#while/lstm_cell_14/BiasAdd:output:0%while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add
while/lstm_cell_14/SigmoidSigmoidwhile/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid¸
#while/lstm_cell_14/ReadVariableOp_1ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_1¥
(while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice_1/stack©
*while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*while/lstm_cell_14/strided_slice_1/stack_1©
*while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_1/stack_2ú
"while/lstm_cell_14/strided_slice_1StridedSlice+while/lstm_cell_14/ReadVariableOp_1:value:01while/lstm_cell_14/strided_slice_1/stack:output:03while/lstm_cell_14/strided_slice_1/stack_1:output:03while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_1Á
while/lstm_cell_14/MatMul_5MatMulwhile/lstm_cell_14/mul_1:z:0+while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_5½
while/lstm_cell_14/add_1AddV2%while/lstm_cell_14/BiasAdd_1:output:0%while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_1
while/lstm_cell_14/Sigmoid_1Sigmoidwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_1¤
while/lstm_cell_14/mul_4Mul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_4¸
#while/lstm_cell_14/ReadVariableOp_2ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_2¥
(while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(while/lstm_cell_14/strided_slice_2/stack©
*while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2,
*while/lstm_cell_14/strided_slice_2/stack_1©
*while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_2/stack_2ú
"while/lstm_cell_14/strided_slice_2StridedSlice+while/lstm_cell_14/ReadVariableOp_2:value:01while/lstm_cell_14/strided_slice_2/stack:output:03while/lstm_cell_14/strided_slice_2/stack_1:output:03while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_2Á
while/lstm_cell_14/MatMul_6MatMulwhile/lstm_cell_14/mul_2:z:0+while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_6½
while/lstm_cell_14/add_2AddV2%while/lstm_cell_14/BiasAdd_2:output:0%while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_2
while/lstm_cell_14/ReluReluwhile/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu´
while/lstm_cell_14/mul_5Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_5«
while/lstm_cell_14/add_3AddV2while/lstm_cell_14/mul_4:z:0while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_3¸
#while/lstm_cell_14/ReadVariableOp_3ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_3¥
(while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2*
(while/lstm_cell_14/strided_slice_3/stack©
*while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_14/strided_slice_3/stack_1©
*while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_3/stack_2ú
"while/lstm_cell_14/strided_slice_3StridedSlice+while/lstm_cell_14/ReadVariableOp_3:value:01while/lstm_cell_14/strided_slice_3/stack:output:03while/lstm_cell_14/strided_slice_3/stack_1:output:03while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_3Á
while/lstm_cell_14/MatMul_7MatMulwhile/lstm_cell_14/mul_3:z:0+while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_7½
while/lstm_cell_14/add_4AddV2%while/lstm_cell_14/BiasAdd_3:output:0%while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_4
while/lstm_cell_14/Sigmoid_2Sigmoidwhile/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_2
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu_1¸
while/lstm_cell_14/mul_6Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_14/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_14/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_14/ReadVariableOp$^while/lstm_cell_14/ReadVariableOp_1$^while/lstm_cell_14/ReadVariableOp_2$^while/lstm_cell_14/ReadVariableOp_3(^while/lstm_cell_14/split/ReadVariableOp*^while/lstm_cell_14/split_1/ReadVariableOp*"
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
*while_lstm_cell_14_readvariableop_resource,while_lstm_cell_14_readvariableop_resource_0"j
2while_lstm_cell_14_split_1_readvariableop_resource4while_lstm_cell_14_split_1_readvariableop_resource_0"f
0while_lstm_cell_14_split_readvariableop_resource2while_lstm_cell_14_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_14/ReadVariableOp!while/lstm_cell_14/ReadVariableOp2J
#while/lstm_cell_14/ReadVariableOp_1#while/lstm_cell_14/ReadVariableOp_12J
#while/lstm_cell_14/ReadVariableOp_2#while/lstm_cell_14/ReadVariableOp_22J
#while/lstm_cell_14/ReadVariableOp_3#while/lstm_cell_14/ReadVariableOp_32R
'while/lstm_cell_14/split/ReadVariableOp'while/lstm_cell_14/split/ReadVariableOp2V
)while/lstm_cell_14/split_1/ReadVariableOp)while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ÍJ
Ð

lstm_13_while_body_426707,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3+
'lstm_13_while_lstm_13_strided_slice_1_0g
clstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0:	@P
=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 K
<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0:	
lstm_13_while_identity
lstm_13_while_identity_1
lstm_13_while_identity_2
lstm_13_while_identity_3
lstm_13_while_identity_4
lstm_13_while_identity_5)
%lstm_13_while_lstm_13_strided_slice_1e
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorL
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource:	@N
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource:	 I
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource:	¢1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp¢0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp¢2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpÓ
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2A
?lstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_13/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0lstm_13_while_placeholderHlstm_13/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype023
1lstm_13/while/TensorArrayV2Read/TensorListGetItemá
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype022
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp÷
!lstm_13/while/lstm_cell_13/MatMulMatMul8lstm_13/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_13/while/lstm_cell_13/MatMulç
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype024
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOpà
#lstm_13/while/lstm_cell_13/MatMul_1MatMullstm_13_while_placeholder_2:lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_13/while/lstm_cell_13/MatMul_1Ø
lstm_13/while/lstm_cell_13/addAddV2+lstm_13/while/lstm_cell_13/MatMul:product:0-lstm_13/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_13/while/lstm_cell_13/addà
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOpå
"lstm_13/while/lstm_cell_13/BiasAddBiasAdd"lstm_13/while/lstm_cell_13/add:z:09lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_13/while/lstm_cell_13/BiasAdd
*lstm_13/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_13/while/lstm_cell_13/split/split_dim«
 lstm_13/while/lstm_cell_13/splitSplit3lstm_13/while/lstm_cell_13/split/split_dim:output:0+lstm_13/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2"
 lstm_13/while/lstm_cell_13/split°
"lstm_13/while/lstm_cell_13/SigmoidSigmoid)lstm_13/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_13/while/lstm_cell_13/Sigmoid´
$lstm_13/while/lstm_cell_13/Sigmoid_1Sigmoid)lstm_13/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_13/while/lstm_cell_13/Sigmoid_1À
lstm_13/while/lstm_cell_13/mulMul(lstm_13/while/lstm_cell_13/Sigmoid_1:y:0lstm_13_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_13/while/lstm_cell_13/mul§
lstm_13/while/lstm_cell_13/ReluRelu)lstm_13/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_13/while/lstm_cell_13/ReluÔ
 lstm_13/while/lstm_cell_13/mul_1Mul&lstm_13/while/lstm_cell_13/Sigmoid:y:0-lstm_13/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_13/while/lstm_cell_13/mul_1É
 lstm_13/while/lstm_cell_13/add_1AddV2"lstm_13/while/lstm_cell_13/mul:z:0$lstm_13/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_13/while/lstm_cell_13/add_1´
$lstm_13/while/lstm_cell_13/Sigmoid_2Sigmoid)lstm_13/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_13/while/lstm_cell_13/Sigmoid_2¦
!lstm_13/while/lstm_cell_13/Relu_1Relu$lstm_13/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_13/while/lstm_cell_13/Relu_1Ø
 lstm_13/while/lstm_cell_13/mul_2Mul(lstm_13/while/lstm_cell_13/Sigmoid_2:y:0/lstm_13/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_13/while/lstm_cell_13/mul_2
2lstm_13/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_13_while_placeholder_1lstm_13_while_placeholder$lstm_13/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_13/while/TensorArrayV2Write/TensorListSetIteml
lstm_13/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add/y
lstm_13/while/addAddV2lstm_13_while_placeholderlstm_13/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/addp
lstm_13/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_13/while/add_1/y
lstm_13/while/add_1AddV2(lstm_13_while_lstm_13_while_loop_counterlstm_13/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_13/while/add_1
lstm_13/while/IdentityIdentitylstm_13/while/add_1:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity¦
lstm_13/while/Identity_1Identity.lstm_13_while_lstm_13_while_maximum_iterations^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_1
lstm_13/while/Identity_2Identitylstm_13/while/add:z:0^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_2º
lstm_13/while/Identity_3IdentityBlstm_13/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_13/while/NoOp*
T0*
_output_shapes
: 2
lstm_13/while/Identity_3­
lstm_13/while/Identity_4Identity$lstm_13/while/lstm_cell_13/mul_2:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/while/Identity_4­
lstm_13/while/Identity_5Identity$lstm_13/while/lstm_cell_13/add_1:z:0^lstm_13/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_13/while/Identity_5
lstm_13/while/NoOpNoOp2^lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1^lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp3^lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_13/while/NoOp"9
lstm_13_while_identitylstm_13/while/Identity:output:0"=
lstm_13_while_identity_1!lstm_13/while/Identity_1:output:0"=
lstm_13_while_identity_2!lstm_13/while/Identity_2:output:0"=
lstm_13_while_identity_3!lstm_13/while/Identity_3:output:0"=
lstm_13_while_identity_4!lstm_13/while/Identity_4:output:0"=
lstm_13_while_identity_5!lstm_13/while/Identity_5:output:0"P
%lstm_13_while_lstm_13_strided_slice_1'lstm_13_while_lstm_13_strided_slice_1_0"z
:lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource<lstm_13_while_lstm_cell_13_biasadd_readvariableop_resource_0"|
;lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource=lstm_13_while_lstm_cell_13_matmul_1_readvariableop_resource_0"x
9lstm_13_while_lstm_cell_13_matmul_readvariableop_resource;lstm_13_while_lstm_cell_13_matmul_readvariableop_resource_0"È
alstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensorclstm_13_while_tensorarrayv2read_tensorlistgetitem_lstm_13_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2f
1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp1lstm_13/while/lstm_cell_13/BiasAdd/ReadVariableOp2d
0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp0lstm_13/while/lstm_cell_13/MatMul/ReadVariableOp2h
2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp2lstm_13/while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ù
·
(__inference_lstm_13_layer_call_fn_428349
inputs_0
unknown:	@
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4238932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

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
Æ

ã
lstm_13_while_cond_427158,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1D
@lstm_13_while_lstm_13_while_cond_427158___redundant_placeholder0D
@lstm_13_while_lstm_13_while_cond_427158___redundant_placeholder1D
@lstm_13_while_lstm_13_while_cond_427158___redundant_placeholder2D
@lstm_13_while_lstm_13_while_cond_427158___redundant_placeholder3
lstm_13_while_identity

lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: 2
lstm_13/while/Lessu
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_13/while/Identity"9
lstm_13_while_identitylstm_13/while/Identity:output:0*(
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
Õ
Ã
while_cond_425280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_425280___redundant_placeholder04
0while_while_cond_425280___redundant_placeholder14
0while_while_cond_425280___redundant_placeholder24
0while_while_cond_425280___redundant_placeholder3
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
§
¤	
while_body_429048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_14_split_readvariableop_resource_0:	 C
4while_lstm_cell_14_split_1_readvariableop_resource_0:	?
,while_lstm_cell_14_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_14_split_readvariableop_resource:	 A
2while_lstm_cell_14_split_1_readvariableop_resource:	=
*while_lstm_cell_14_readvariableop_resource:	@¢!while/lstm_cell_14/ReadVariableOp¢#while/lstm_cell_14/ReadVariableOp_1¢#while/lstm_cell_14/ReadVariableOp_2¢#while/lstm_cell_14/ReadVariableOp_3¢'while/lstm_cell_14/split/ReadVariableOp¢)while/lstm_cell_14/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
"while/lstm_cell_14/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/lstm_cell_14/ones_like/Shape
"while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/lstm_cell_14/ones_like/ConstÐ
while/lstm_cell_14/ones_likeFill+while/lstm_cell_14/ones_like/Shape:output:0+while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/ones_like
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dimÆ
'while/lstm_cell_14/split/ReadVariableOpReadVariableOp2while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype02)
'while/lstm_cell_14/split/ReadVariableOpó
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
while/lstm_cell_14/splitÇ
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMulË
while/lstm_cell_14/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_1Ë
while/lstm_cell_14/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_2Ë
while/lstm_cell_14/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_3
$while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_14/split_1/split_dimÈ
)while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_14/split_1/ReadVariableOpë
while/lstm_cell_14/split_1Split-while/lstm_cell_14/split_1/split_dim:output:01while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_14/split_1¿
while/lstm_cell_14/BiasAddBiasAdd#while/lstm_cell_14/MatMul:product:0#while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAddÅ
while/lstm_cell_14/BiasAdd_1BiasAdd%while/lstm_cell_14/MatMul_1:product:0#while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_1Å
while/lstm_cell_14/BiasAdd_2BiasAdd%while/lstm_cell_14/MatMul_2:product:0#while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_2Å
while/lstm_cell_14/BiasAdd_3BiasAdd%while/lstm_cell_14/MatMul_3:product:0#while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/BiasAdd_3¥
while/lstm_cell_14/mulMulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul©
while/lstm_cell_14/mul_1Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_1©
while/lstm_cell_14/mul_2Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_2©
while/lstm_cell_14/mul_3Mulwhile_placeholder_2%while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_3´
!while/lstm_cell_14/ReadVariableOpReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02#
!while/lstm_cell_14/ReadVariableOp¡
&while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_14/strided_slice/stack¥
(while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice/stack_1¥
(while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_14/strided_slice/stack_2î
 while/lstm_cell_14/strided_sliceStridedSlice)while/lstm_cell_14/ReadVariableOp:value:0/while/lstm_cell_14/strided_slice/stack:output:01while/lstm_cell_14/strided_slice/stack_1:output:01while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 while/lstm_cell_14/strided_slice½
while/lstm_cell_14/MatMul_4MatMulwhile/lstm_cell_14/mul:z:0)while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_4·
while/lstm_cell_14/addAddV2#while/lstm_cell_14/BiasAdd:output:0%while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add
while/lstm_cell_14/SigmoidSigmoidwhile/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid¸
#while/lstm_cell_14/ReadVariableOp_1ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_1¥
(while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(while/lstm_cell_14/strided_slice_1/stack©
*while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*while/lstm_cell_14/strided_slice_1/stack_1©
*while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_1/stack_2ú
"while/lstm_cell_14/strided_slice_1StridedSlice+while/lstm_cell_14/ReadVariableOp_1:value:01while/lstm_cell_14/strided_slice_1/stack:output:03while/lstm_cell_14/strided_slice_1/stack_1:output:03while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_1Á
while/lstm_cell_14/MatMul_5MatMulwhile/lstm_cell_14/mul_1:z:0+while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_5½
while/lstm_cell_14/add_1AddV2%while/lstm_cell_14/BiasAdd_1:output:0%while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_1
while/lstm_cell_14/Sigmoid_1Sigmoidwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_1¤
while/lstm_cell_14/mul_4Mul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_4¸
#while/lstm_cell_14/ReadVariableOp_2ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_2¥
(while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(while/lstm_cell_14/strided_slice_2/stack©
*while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2,
*while/lstm_cell_14/strided_slice_2/stack_1©
*while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_2/stack_2ú
"while/lstm_cell_14/strided_slice_2StridedSlice+while/lstm_cell_14/ReadVariableOp_2:value:01while/lstm_cell_14/strided_slice_2/stack:output:03while/lstm_cell_14/strided_slice_2/stack_1:output:03while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_2Á
while/lstm_cell_14/MatMul_6MatMulwhile/lstm_cell_14/mul_2:z:0+while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_6½
while/lstm_cell_14/add_2AddV2%while/lstm_cell_14/BiasAdd_2:output:0%while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_2
while/lstm_cell_14/ReluReluwhile/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu´
while/lstm_cell_14/mul_5Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_5«
while/lstm_cell_14/add_3AddV2while/lstm_cell_14/mul_4:z:0while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_3¸
#while/lstm_cell_14/ReadVariableOp_3ReadVariableOp,while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02%
#while/lstm_cell_14/ReadVariableOp_3¥
(while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2*
(while/lstm_cell_14/strided_slice_3/stack©
*while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_14/strided_slice_3/stack_1©
*while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_14/strided_slice_3/stack_2ú
"while/lstm_cell_14/strided_slice_3StridedSlice+while/lstm_cell_14/ReadVariableOp_3:value:01while/lstm_cell_14/strided_slice_3/stack:output:03while/lstm_cell_14/strided_slice_3/stack_1:output:03while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"while/lstm_cell_14/strided_slice_3Á
while/lstm_cell_14/MatMul_7MatMulwhile/lstm_cell_14/mul_3:z:0+while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/MatMul_7½
while/lstm_cell_14/add_4AddV2%while/lstm_cell_14/BiasAdd_3:output:0%while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/add_4
while/lstm_cell_14/Sigmoid_2Sigmoidwhile/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Sigmoid_2
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/Relu_1¸
while/lstm_cell_14/mul_6Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/lstm_cell_14/mul_6à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_14/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_14/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5Æ

while/NoOpNoOp"^while/lstm_cell_14/ReadVariableOp$^while/lstm_cell_14/ReadVariableOp_1$^while/lstm_cell_14/ReadVariableOp_2$^while/lstm_cell_14/ReadVariableOp_3(^while/lstm_cell_14/split/ReadVariableOp*^while/lstm_cell_14/split_1/ReadVariableOp*"
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
*while_lstm_cell_14_readvariableop_resource,while_lstm_cell_14_readvariableop_resource_0"j
2while_lstm_cell_14_split_1_readvariableop_resource4while_lstm_cell_14_split_1_readvariableop_resource_0"f
0while_lstm_cell_14_split_readvariableop_resource2while_lstm_cell_14_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_14/ReadVariableOp!while/lstm_cell_14/ReadVariableOp2J
#while/lstm_cell_14/ReadVariableOp_1#while/lstm_cell_14/ReadVariableOp_12J
#while/lstm_cell_14/ReadVariableOp_2#while/lstm_cell_14/ReadVariableOp_22J
#while/lstm_cell_14/ReadVariableOp_3#while/lstm_cell_14/ReadVariableOp_32R
'while/lstm_cell_14/split/ReadVariableOp'while/lstm_cell_14/split/ReadVariableOp2V
)while/lstm_cell_14/split_1/ReadVariableOp)while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ø%
ã
while_body_424800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_14_424824_0:	 *
while_lstm_cell_14_424826_0:	.
while_lstm_cell_14_424828_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_14_424824:	 (
while_lstm_cell_14_424826:	,
while_lstm_cell_14_424828:	@¢*while/lstm_cell_14/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_424824_0while_lstm_cell_14_424826_0while_lstm_cell_14_424828_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_4247222,
*while/lstm_cell_14/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_14/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_14/StatefulPartitionedCall*"
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
while_lstm_cell_14_424824while_lstm_cell_14_424824_0"8
while_lstm_cell_14_424826while_lstm_cell_14_424826_0"8
while_lstm_cell_14_424828while_lstm_cell_14_424828_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ø%
ã
while_body_424034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_13_424058_0:	@.
while_lstm_cell_13_424060_0:	 *
while_lstm_cell_13_424062_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_13_424058:	@,
while_lstm_cell_13_424060:	 (
while_lstm_cell_13_424062:	¢*while/lstm_cell_13/StatefulPartitionedCallÃ
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
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_424058_0while_lstm_cell_13_424060_0while_lstm_cell_13_424062_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_4239562,
*while/lstm_cell_13/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_13/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
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
while_lstm_cell_13_424058while_lstm_cell_13_424058_0"8
while_lstm_cell_13_424060while_lstm_cell_13_424060_0"8
while_lstm_cell_13_424062while_lstm_cell_13_424062_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Æ
F
*__inference_reshape_8_layer_call_fn_429601

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
E__inference_reshape_8_layer_call_and_return_conditional_losses_4256752
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
Í
ç
&sequential_5_lstm_14_while_cond_423557F
Bsequential_5_lstm_14_while_sequential_5_lstm_14_while_loop_counterL
Hsequential_5_lstm_14_while_sequential_5_lstm_14_while_maximum_iterations*
&sequential_5_lstm_14_while_placeholder,
(sequential_5_lstm_14_while_placeholder_1,
(sequential_5_lstm_14_while_placeholder_2,
(sequential_5_lstm_14_while_placeholder_3H
Dsequential_5_lstm_14_while_less_sequential_5_lstm_14_strided_slice_1^
Zsequential_5_lstm_14_while_sequential_5_lstm_14_while_cond_423557___redundant_placeholder0^
Zsequential_5_lstm_14_while_sequential_5_lstm_14_while_cond_423557___redundant_placeholder1^
Zsequential_5_lstm_14_while_sequential_5_lstm_14_while_cond_423557___redundant_placeholder2^
Zsequential_5_lstm_14_while_sequential_5_lstm_14_while_cond_423557___redundant_placeholder3'
#sequential_5_lstm_14_while_identity
Ù
sequential_5/lstm_14/while/LessLess&sequential_5_lstm_14_while_placeholderDsequential_5_lstm_14_while_less_sequential_5_lstm_14_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_14/while/Less
#sequential_5/lstm_14/while/IdentityIdentity#sequential_5/lstm_14/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_14/while/Identity"S
#sequential_5_lstm_14_while_identity,sequential_5/lstm_14/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ü
¼
lstm_14_while_body_426897,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3+
'lstm_14_while_lstm_14_strided_slice_1_0g
clstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_14_while_lstm_cell_14_split_readvariableop_resource_0:	 K
<lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0:	G
4lstm_14_while_lstm_cell_14_readvariableop_resource_0:	@
lstm_14_while_identity
lstm_14_while_identity_1
lstm_14_while_identity_2
lstm_14_while_identity_3
lstm_14_while_identity_4
lstm_14_while_identity_5)
%lstm_14_while_lstm_14_strided_slice_1e
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorK
8lstm_14_while_lstm_cell_14_split_readvariableop_resource:	 I
:lstm_14_while_lstm_cell_14_split_1_readvariableop_resource:	E
2lstm_14_while_lstm_cell_14_readvariableop_resource:	@¢)lstm_14/while/lstm_cell_14/ReadVariableOp¢+lstm_14/while/lstm_cell_14/ReadVariableOp_1¢+lstm_14/while/lstm_cell_14/ReadVariableOp_2¢+lstm_14/while/lstm_cell_14/ReadVariableOp_3¢/lstm_14/while/lstm_cell_14/split/ReadVariableOp¢1lstm_14/while/lstm_cell_14/split_1/ReadVariableOpÓ
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2A
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0lstm_14_while_placeholderHlstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype023
1lstm_14/while/TensorArrayV2Read/TensorListGetItem£
*lstm_14/while/lstm_cell_14/ones_like/ShapeShapelstm_14_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_14/while/lstm_cell_14/ones_like/Shape
*lstm_14/while/lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_14/while/lstm_cell_14/ones_like/Constð
$lstm_14/while/lstm_cell_14/ones_likeFill3lstm_14/while/lstm_cell_14/ones_like/Shape:output:03lstm_14/while/lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/ones_like
*lstm_14/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_14/while/lstm_cell_14/split/split_dimÞ
/lstm_14/while/lstm_cell_14/split/ReadVariableOpReadVariableOp:lstm_14_while_lstm_cell_14_split_readvariableop_resource_0*
_output_shapes
:	 *
dtype021
/lstm_14/while/lstm_cell_14/split/ReadVariableOp
 lstm_14/while/lstm_cell_14/splitSplit3lstm_14/while/lstm_cell_14/split/split_dim:output:07lstm_14/while/lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2"
 lstm_14/while/lstm_cell_14/splitç
!lstm_14/while/lstm_cell_14/MatMulMatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_14/while/lstm_cell_14/MatMulë
#lstm_14/while/lstm_cell_14/MatMul_1MatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_1ë
#lstm_14/while/lstm_cell_14/MatMul_2MatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_2ë
#lstm_14/while/lstm_cell_14/MatMul_3MatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_14/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_3
,lstm_14/while/lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,lstm_14/while/lstm_cell_14/split_1/split_dimà
1lstm_14/while/lstm_cell_14/split_1/ReadVariableOpReadVariableOp<lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype023
1lstm_14/while/lstm_cell_14/split_1/ReadVariableOp
"lstm_14/while/lstm_cell_14/split_1Split5lstm_14/while/lstm_cell_14/split_1/split_dim:output:09lstm_14/while/lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2$
"lstm_14/while/lstm_cell_14/split_1ß
"lstm_14/while/lstm_cell_14/BiasAddBiasAdd+lstm_14/while/lstm_cell_14/MatMul:product:0+lstm_14/while/lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/while/lstm_cell_14/BiasAddå
$lstm_14/while/lstm_cell_14/BiasAdd_1BiasAdd-lstm_14/while/lstm_cell_14/MatMul_1:product:0+lstm_14/while/lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/BiasAdd_1å
$lstm_14/while/lstm_cell_14/BiasAdd_2BiasAdd-lstm_14/while/lstm_cell_14/MatMul_2:product:0+lstm_14/while/lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/BiasAdd_2å
$lstm_14/while/lstm_cell_14/BiasAdd_3BiasAdd-lstm_14/while/lstm_cell_14/MatMul_3:product:0+lstm_14/while/lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/BiasAdd_3Å
lstm_14/while/lstm_cell_14/mulMullstm_14_while_placeholder_2-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/while/lstm_cell_14/mulÉ
 lstm_14/while/lstm_cell_14/mul_1Mullstm_14_while_placeholder_2-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_1É
 lstm_14/while/lstm_cell_14/mul_2Mullstm_14_while_placeholder_2-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_2É
 lstm_14/while/lstm_cell_14/mul_3Mullstm_14_while_placeholder_2-lstm_14/while/lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_3Ì
)lstm_14/while/lstm_cell_14/ReadVariableOpReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_14/while/lstm_cell_14/ReadVariableOp±
.lstm_14/while/lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_14/while/lstm_cell_14/strided_slice/stackµ
0lstm_14/while/lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_14/while/lstm_cell_14/strided_slice/stack_1µ
0lstm_14/while/lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_14/while/lstm_cell_14/strided_slice/stack_2
(lstm_14/while/lstm_cell_14/strided_sliceStridedSlice1lstm_14/while/lstm_cell_14/ReadVariableOp:value:07lstm_14/while/lstm_cell_14/strided_slice/stack:output:09lstm_14/while/lstm_cell_14/strided_slice/stack_1:output:09lstm_14/while/lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_14/while/lstm_cell_14/strided_sliceÝ
#lstm_14/while/lstm_cell_14/MatMul_4MatMul"lstm_14/while/lstm_cell_14/mul:z:01lstm_14/while/lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_4×
lstm_14/while/lstm_cell_14/addAddV2+lstm_14/while/lstm_cell_14/BiasAdd:output:0-lstm_14/while/lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
lstm_14/while/lstm_cell_14/add©
"lstm_14/while/lstm_cell_14/SigmoidSigmoid"lstm_14/while/lstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"lstm_14/while/lstm_cell_14/SigmoidÐ
+lstm_14/while/lstm_cell_14/ReadVariableOp_1ReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02-
+lstm_14/while/lstm_cell_14/ReadVariableOp_1µ
0lstm_14/while/lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_14/while/lstm_cell_14/strided_slice_1/stack¹
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       24
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_1¹
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_14/while/lstm_cell_14/strided_slice_1/stack_2ª
*lstm_14/while/lstm_cell_14/strided_slice_1StridedSlice3lstm_14/while/lstm_cell_14/ReadVariableOp_1:value:09lstm_14/while/lstm_cell_14/strided_slice_1/stack:output:0;lstm_14/while/lstm_cell_14/strided_slice_1/stack_1:output:0;lstm_14/while/lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2,
*lstm_14/while/lstm_cell_14/strided_slice_1á
#lstm_14/while/lstm_cell_14/MatMul_5MatMul$lstm_14/while/lstm_cell_14/mul_1:z:03lstm_14/while/lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_5Ý
 lstm_14/while/lstm_cell_14/add_1AddV2-lstm_14/while/lstm_cell_14/BiasAdd_1:output:0-lstm_14/while/lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_1¯
$lstm_14/while/lstm_cell_14/Sigmoid_1Sigmoid$lstm_14/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/Sigmoid_1Ä
 lstm_14/while/lstm_cell_14/mul_4Mul(lstm_14/while/lstm_cell_14/Sigmoid_1:y:0lstm_14_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_4Ð
+lstm_14/while/lstm_cell_14/ReadVariableOp_2ReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02-
+lstm_14/while/lstm_cell_14/ReadVariableOp_2µ
0lstm_14/while/lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       22
0lstm_14/while/lstm_cell_14/strided_slice_2/stack¹
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   24
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_1¹
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_14/while/lstm_cell_14/strided_slice_2/stack_2ª
*lstm_14/while/lstm_cell_14/strided_slice_2StridedSlice3lstm_14/while/lstm_cell_14/ReadVariableOp_2:value:09lstm_14/while/lstm_cell_14/strided_slice_2/stack:output:0;lstm_14/while/lstm_cell_14/strided_slice_2/stack_1:output:0;lstm_14/while/lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2,
*lstm_14/while/lstm_cell_14/strided_slice_2á
#lstm_14/while/lstm_cell_14/MatMul_6MatMul$lstm_14/while/lstm_cell_14/mul_2:z:03lstm_14/while/lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_6Ý
 lstm_14/while/lstm_cell_14/add_2AddV2-lstm_14/while/lstm_cell_14/BiasAdd_2:output:0-lstm_14/while/lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_2¢
lstm_14/while/lstm_cell_14/ReluRelu$lstm_14/while/lstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
lstm_14/while/lstm_cell_14/ReluÔ
 lstm_14/while/lstm_cell_14/mul_5Mul&lstm_14/while/lstm_cell_14/Sigmoid:y:0-lstm_14/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_5Ë
 lstm_14/while/lstm_cell_14/add_3AddV2$lstm_14/while/lstm_cell_14/mul_4:z:0$lstm_14/while/lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_3Ð
+lstm_14/while/lstm_cell_14/ReadVariableOp_3ReadVariableOp4lstm_14_while_lstm_cell_14_readvariableop_resource_0*
_output_shapes
:	@*
dtype02-
+lstm_14/while/lstm_cell_14/ReadVariableOp_3µ
0lstm_14/while/lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   22
0lstm_14/while/lstm_cell_14/strided_slice_3/stack¹
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_1¹
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2lstm_14/while/lstm_cell_14/strided_slice_3/stack_2ª
*lstm_14/while/lstm_cell_14/strided_slice_3StridedSlice3lstm_14/while/lstm_cell_14/ReadVariableOp_3:value:09lstm_14/while/lstm_cell_14/strided_slice_3/stack:output:0;lstm_14/while/lstm_cell_14/strided_slice_3/stack_1:output:0;lstm_14/while/lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2,
*lstm_14/while/lstm_cell_14/strided_slice_3á
#lstm_14/while/lstm_cell_14/MatMul_7MatMul$lstm_14/while/lstm_cell_14/mul_3:z:03lstm_14/while/lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_14/while/lstm_cell_14/MatMul_7Ý
 lstm_14/while/lstm_cell_14/add_4AddV2-lstm_14/while/lstm_cell_14/BiasAdd_3:output:0-lstm_14/while/lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/add_4¯
$lstm_14/while/lstm_cell_14/Sigmoid_2Sigmoid$lstm_14/while/lstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2&
$lstm_14/while/lstm_cell_14/Sigmoid_2¦
!lstm_14/while/lstm_cell_14/Relu_1Relu$lstm_14/while/lstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_14/while/lstm_cell_14/Relu_1Ø
 lstm_14/while/lstm_cell_14/mul_6Mul(lstm_14/while/lstm_cell_14/Sigmoid_2:y:0/lstm_14/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 lstm_14/while/lstm_cell_14/mul_6
2lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_14_while_placeholder_1lstm_14_while_placeholder$lstm_14/while/lstm_cell_14/mul_6:z:0*
_output_shapes
: *
element_dtype024
2lstm_14/while/TensorArrayV2Write/TensorListSetIteml
lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add/y
lstm_14/while/addAddV2lstm_14_while_placeholderlstm_14/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/addp
lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add_1/y
lstm_14/while/add_1AddV2(lstm_14_while_lstm_14_while_loop_counterlstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/add_1
lstm_14/while/IdentityIdentitylstm_14/while/add_1:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity¦
lstm_14/while/Identity_1Identity.lstm_14_while_lstm_14_while_maximum_iterations^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_1
lstm_14/while/Identity_2Identitylstm_14/while/add:z:0^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_2º
lstm_14/while/Identity_3IdentityBlstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_14/while/NoOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_3­
lstm_14/while/Identity_4Identity$lstm_14/while/lstm_cell_14/mul_6:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/while/Identity_4­
lstm_14/while/Identity_5Identity$lstm_14/while/lstm_cell_14/add_3:z:0^lstm_14/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_14/while/Identity_5
lstm_14/while/NoOpNoOp*^lstm_14/while/lstm_cell_14/ReadVariableOp,^lstm_14/while/lstm_cell_14/ReadVariableOp_1,^lstm_14/while/lstm_cell_14/ReadVariableOp_2,^lstm_14/while/lstm_cell_14/ReadVariableOp_30^lstm_14/while/lstm_cell_14/split/ReadVariableOp2^lstm_14/while/lstm_cell_14/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_14/while/NoOp"9
lstm_14_while_identitylstm_14/while/Identity:output:0"=
lstm_14_while_identity_1!lstm_14/while/Identity_1:output:0"=
lstm_14_while_identity_2!lstm_14/while/Identity_2:output:0"=
lstm_14_while_identity_3!lstm_14/while/Identity_3:output:0"=
lstm_14_while_identity_4!lstm_14/while/Identity_4:output:0"=
lstm_14_while_identity_5!lstm_14/while/Identity_5:output:0"P
%lstm_14_while_lstm_14_strided_slice_1'lstm_14_while_lstm_14_strided_slice_1_0"j
2lstm_14_while_lstm_cell_14_readvariableop_resource4lstm_14_while_lstm_cell_14_readvariableop_resource_0"z
:lstm_14_while_lstm_cell_14_split_1_readvariableop_resource<lstm_14_while_lstm_cell_14_split_1_readvariableop_resource_0"v
8lstm_14_while_lstm_cell_14_split_readvariableop_resource:lstm_14_while_lstm_cell_14_split_readvariableop_resource_0"È
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2V
)lstm_14/while/lstm_cell_14/ReadVariableOp)lstm_14/while/lstm_cell_14/ReadVariableOp2Z
+lstm_14/while/lstm_cell_14/ReadVariableOp_1+lstm_14/while/lstm_cell_14/ReadVariableOp_12Z
+lstm_14/while/lstm_cell_14/ReadVariableOp_2+lstm_14/while/lstm_cell_14/ReadVariableOp_22Z
+lstm_14/while/lstm_cell_14/ReadVariableOp_3+lstm_14/while/lstm_cell_14/ReadVariableOp_32b
/lstm_14/while/lstm_cell_14/split/ReadVariableOp/lstm_14/while/lstm_cell_14/split/ReadVariableOp2f
1lstm_14/while/lstm_cell_14/split_1/ReadVariableOp1lstm_14/while/lstm_cell_14/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Â
Ç
D__inference_conv1d_4_layer_call_and_return_conditional_losses_427674

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOpy
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
ReluÖ
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÀ
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

a
E__inference_reshape_8_layer_call_and_return_conditional_losses_429596

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
ñ

)__inference_dense_17_layer_call_fn_429583

inputs
unknown:@
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
D__inference_dense_17_layer_call_and_return_conditional_losses_4256562
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
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
áH
¿
H__inference_sequential_5_layer_call_and_return_conditional_losses_426553
conv1d_4_input%
conv1d_4_426498: 
conv1d_4_426500: %
conv1d_5_426503: @
conv1d_5_426505:@!
lstm_13_426509:	@!
lstm_13_426511:	 
lstm_13_426513:	!
lstm_14_426516:	 
lstm_14_426518:	!
lstm_14_426520:	@!
dense_16_426523:@@
dense_16_426525:@!
dense_17_426528:@
dense_17_426530:
identity¢ conv1d_4/StatefulPartitionedCall¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/dense_17/bias/Regularizer/Square/ReadVariableOp¢lstm_13/StatefulPartitionedCall¢lstm_14/StatefulPartitionedCall¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp 
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_426498conv1d_4_426500*
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
D__inference_conv1d_4_layer_call_and_return_conditional_losses_4251782"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_426503conv1d_5_426505*
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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_4252002"
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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_4252132!
max_pooling1d_2/PartitionedCallÇ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_13_426509lstm_13_426511lstm_13_426513*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4262462!
lstm_13/StatefulPartitionedCallÃ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_426516lstm_14_426518lstm_14_426520*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4260732!
lstm_14/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_16_426523dense_16_426525*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4256342"
 dense_16/StatefulPartitionedCall·
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_426528dense_17_426530*
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
D__inference_dense_17_layer_call_and_return_conditional_losses_4256562"
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_4256752
reshape_8/PartitionedCallº
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_426498*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulÎ
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_14_426516*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/mul®
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_17_426530*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/mul
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÄ
NoOpNoOp!^conv1d_4/StatefulPartitionedCall2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^dense_17/bias/Regularizer/Square/ReadVariableOp ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input
?
Ð
while_body_425281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_13_biasadd_readvariableop_resource:	¢)while/lstm_cell_13/BiasAdd/ReadVariableOp¢(while/lstm_cell_13/MatMul/ReadVariableOp¢*while/lstm_cell_13/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp×
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMulÏ
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOpÀ
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/MatMul_1¸
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/addÈ
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOpÅ
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_13/BiasAdd
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dim
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/lstm_cell_13/split
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_1 
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu´
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_1©
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/add_1
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Sigmoid_2
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/Relu_1¸
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_13/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ì
§
D__inference_dense_17_layer_call_and_return_conditional_losses_425656

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_17/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
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
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_17/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÞR
ë
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_429808

inputs
states_0
states_10
split_readvariableop_resource:	 .
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpZ
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
:ÿÿÿÿÿÿÿÿÿ@2
	ones_liked
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_3a
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mule
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1e
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2e
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   2
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

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
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

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_6Ý
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
¾
·
(__inference_lstm_14_layer_call_fn_429510
inputs_0
unknown:	 
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4248752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
ÉH
·
H__inference_sequential_5_layer_call_and_return_conditional_losses_425696

inputs%
conv1d_4_425179: 
conv1d_4_425181: %
conv1d_5_425201: @
conv1d_5_425203:@!
lstm_13_425366:	@!
lstm_13_425368:	 
lstm_13_425370:	!
lstm_14_425616:	 
lstm_14_425618:	!
lstm_14_425620:	@!
dense_16_425635:@@
dense_16_425637:@!
dense_17_425657:@
dense_17_425659:
identity¢ conv1d_4/StatefulPartitionedCall¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_5/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢/dense_17/bias/Regularizer/Square/ReadVariableOp¢lstm_13/StatefulPartitionedCall¢lstm_14/StatefulPartitionedCall¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_425179conv1d_4_425181*
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
D__inference_conv1d_4_layer_call_and_return_conditional_losses_4251782"
 conv1d_4/StatefulPartitionedCall»
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0conv1d_5_425201conv1d_5_425203*
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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_4252002"
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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_4252132!
max_pooling1d_2/PartitionedCallÇ
lstm_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_2/PartitionedCall:output:0lstm_13_425366lstm_13_425368lstm_13_425370*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_13_layer_call_and_return_conditional_losses_4253652!
lstm_13/StatefulPartitionedCallÃ
lstm_14/StatefulPartitionedCallStatefulPartitionedCall(lstm_13/StatefulPartitionedCall:output:0lstm_14_425616lstm_14_425618lstm_14_425620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_4256152!
lstm_14/StatefulPartitionedCall¶
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_16_425635dense_16_425637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_4256342"
 dense_16/StatefulPartitionedCall·
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_425657dense_17_425659*
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
D__inference_dense_17_layer_call_and_return_conditional_losses_4256562"
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_4256752
reshape_8/PartitionedCallº
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_425179*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulÎ
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_14_425616*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/mul®
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_17_425659*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/mul
IdentityIdentity"reshape_8/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÄ
NoOpNoOp!^conv1d_4/StatefulPartitionedCall2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^conv1d_5/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall0^dense_17/bias/Regularizer/Square/ReadVariableOp ^lstm_13/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp2B
lstm_13/StatefulPartitionedCalllstm_13/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á[

C__inference_lstm_13_layer_call_and_return_conditional_losses_428187

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@@
-lstm_cell_13_matmul_1_readvariableop_resource:	 ;
,lstm_cell_13_biasadd_readvariableop_resource:	
identity¢#lstm_cell_13/BiasAdd/ReadVariableOp¢"lstm_cell_13/MatMul/ReadVariableOp¢$lstm_cell_13/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOp­
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul»
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOp©
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/MatMul_1 
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/add´
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOp­
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimó
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split2
lstm_cell_13/split
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_1
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_1
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/add_1
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/Relu_1 
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_13/mul_2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
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
bodyR
while_body_428103*
condR
while_cond_428102*K
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
:ÿÿÿÿÿÿÿÿÿ *
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
:ÿÿÿÿÿÿÿÿÿ 2
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
:ÿÿÿÿÿÿÿÿÿ 2

IdentityÈ
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
±
û
-__inference_sequential_5_layer_call_fn_426437
conv1d_4_input
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@
	unknown_4:	 
	unknown_5:	
	unknown_6:	 
	unknown_7:	
	unknown_8:	@
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:
identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_4263732
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameconv1d_4_input

g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_427716

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
while_cond_425907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_425907___redundant_placeholder04
0while_while_cond_425907___redundant_placeholder14
0while_while_cond_425907___redundant_placeholder24
0while_while_cond_425907___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
É
µ
__inference_loss_fn_0_429612P
:conv1d_4_kernel_regularizer_square_readvariableop_resource: 
identity¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOpå
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_4_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
: *
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: 2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½752#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulm
IdentityIdentity#conv1d_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp

g
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_423719

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
Í
ç
&sequential_5_lstm_13_while_cond_423367F
Bsequential_5_lstm_13_while_sequential_5_lstm_13_while_loop_counterL
Hsequential_5_lstm_13_while_sequential_5_lstm_13_while_maximum_iterations*
&sequential_5_lstm_13_while_placeholder,
(sequential_5_lstm_13_while_placeholder_1,
(sequential_5_lstm_13_while_placeholder_2,
(sequential_5_lstm_13_while_placeholder_3H
Dsequential_5_lstm_13_while_less_sequential_5_lstm_13_strided_slice_1^
Zsequential_5_lstm_13_while_sequential_5_lstm_13_while_cond_423367___redundant_placeholder0^
Zsequential_5_lstm_13_while_sequential_5_lstm_13_while_cond_423367___redundant_placeholder1^
Zsequential_5_lstm_13_while_sequential_5_lstm_13_while_cond_423367___redundant_placeholder2^
Zsequential_5_lstm_13_while_sequential_5_lstm_13_while_cond_423367___redundant_placeholder3'
#sequential_5_lstm_13_while_identity
Ù
sequential_5/lstm_13/while/LessLess&sequential_5_lstm_13_while_placeholderDsequential_5_lstm_13_while_less_sequential_5_lstm_13_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_13/while/Less
#sequential_5/lstm_13/while/IdentityIdentity#sequential_5/lstm_13/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_13/while/Identity"S
#sequential_5_lstm_13_while_identity,sequential_5/lstm_13/while/Identity:output:0*(
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
Õ
Ã
while_cond_428772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_428772___redundant_placeholder04
0while_while_cond_428772___redundant_placeholder14
0while_while_cond_428772___redundant_placeholder24
0while_while_cond_428772___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ð
©
C__inference_lstm_14_layer_call_and_return_conditional_losses_428938
inputs_0=
*lstm_cell_14_split_readvariableop_resource:	 ;
,lstm_cell_14_split_1_readvariableop_resource:	7
$lstm_cell_14_readvariableop_resource:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_14/ReadVariableOp¢lstm_cell_14/ReadVariableOp_1¢lstm_cell_14/ReadVariableOp_2¢lstm_cell_14/ReadVariableOp_3¢!lstm_cell_14/split/ReadVariableOp¢#lstm_cell_14/split_1/ReadVariableOp¢whileF
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2z
lstm_cell_14/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_14/ones_like/Shape
lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_14/ones_like/Const¸
lstm_cell_14/ones_likeFill%lstm_cell_14/ones_like/Shape:output:0%lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/ones_like}
lstm_cell_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout/Const³
lstm_cell_14/dropout/MulMullstm_cell_14/ones_like:output:0#lstm_cell_14/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Mul
lstm_cell_14/dropout/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout/Shapeú
1lstm_cell_14/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_14/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2å23
1lstm_cell_14/dropout/random_uniform/RandomUniform
#lstm_cell_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2%
#lstm_cell_14/dropout/GreaterEqual/yò
!lstm_cell_14/dropout/GreaterEqualGreaterEqual:lstm_cell_14/dropout/random_uniform/RandomUniform:output:0,lstm_cell_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2#
!lstm_cell_14/dropout/GreaterEqual¦
lstm_cell_14/dropout/CastCast%lstm_cell_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Cast®
lstm_cell_14/dropout/Mul_1Mullstm_cell_14/dropout/Mul:z:0lstm_cell_14/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout/Mul_1
lstm_cell_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_1/Const¹
lstm_cell_14/dropout_1/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Mul
lstm_cell_14/dropout_1/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_1/Shapeÿ
3lstm_cell_14/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ÿ>25
3lstm_cell_14/dropout_1/random_uniform/RandomUniform
%lstm_cell_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_1/GreaterEqual/yú
#lstm_cell_14/dropout_1/GreaterEqualGreaterEqual<lstm_cell_14/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_1/GreaterEqual¬
lstm_cell_14/dropout_1/CastCast'lstm_cell_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Cast¶
lstm_cell_14/dropout_1/Mul_1Mullstm_cell_14/dropout_1/Mul:z:0lstm_cell_14/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_1/Mul_1
lstm_cell_14/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_2/Const¹
lstm_cell_14/dropout_2/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Mul
lstm_cell_14/dropout_2/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_2/Shapeÿ
3lstm_cell_14/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2ý¬v25
3lstm_cell_14/dropout_2/random_uniform/RandomUniform
%lstm_cell_14/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_2/GreaterEqual/yú
#lstm_cell_14/dropout_2/GreaterEqualGreaterEqual<lstm_cell_14/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_2/GreaterEqual¬
lstm_cell_14/dropout_2/CastCast'lstm_cell_14/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Cast¶
lstm_cell_14/dropout_2/Mul_1Mullstm_cell_14/dropout_2/Mul:z:0lstm_cell_14/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_2/Mul_1
lstm_cell_14/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_14/dropout_3/Const¹
lstm_cell_14/dropout_3/MulMullstm_cell_14/ones_like:output:0%lstm_cell_14/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Mul
lstm_cell_14/dropout_3/ShapeShapelstm_cell_14/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_14/dropout_3/Shape
3lstm_cell_14/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_14/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2Ð25
3lstm_cell_14/dropout_3/random_uniform/RandomUniform
%lstm_cell_14/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2'
%lstm_cell_14/dropout_3/GreaterEqual/yú
#lstm_cell_14/dropout_3/GreaterEqualGreaterEqual<lstm_cell_14/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_14/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2%
#lstm_cell_14/dropout_3/GreaterEqual¬
lstm_cell_14/dropout_3/CastCast'lstm_cell_14/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Cast¶
lstm_cell_14/dropout_3/Mul_1Mullstm_cell_14/dropout_3/Mul:z:0lstm_cell_14/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/dropout_3/Mul_1~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim²
!lstm_cell_14/split/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02#
!lstm_cell_14/split/ReadVariableOpÛ
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0)lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_cell_14/split
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul¡
lstm_cell_14/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_1¡
lstm_cell_14/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_2¡
lstm_cell_14/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_3
lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_14/split_1/split_dim´
#lstm_cell_14/split_1/ReadVariableOpReadVariableOp,lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_14/split_1/ReadVariableOpÓ
lstm_cell_14/split_1Split'lstm_cell_14/split_1/split_dim:output:0+lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_14/split_1§
lstm_cell_14/BiasAddBiasAddlstm_cell_14/MatMul:product:0lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd­
lstm_cell_14/BiasAdd_1BiasAddlstm_cell_14/MatMul_1:product:0lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_1­
lstm_cell_14/BiasAdd_2BiasAddlstm_cell_14/MatMul_2:product:0lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_2­
lstm_cell_14/BiasAdd_3BiasAddlstm_cell_14/MatMul_3:product:0lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_3
lstm_cell_14/mulMulzeros:output:0lstm_cell_14/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul
lstm_cell_14/mul_1Mulzeros:output:0 lstm_cell_14/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_1
lstm_cell_14/mul_2Mulzeros:output:0 lstm_cell_14/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_2
lstm_cell_14/mul_3Mulzeros:output:0 lstm_cell_14/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_3 
lstm_cell_14/ReadVariableOpReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp
 lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_14/strided_slice/stack
"lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice/stack_1
"lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_14/strided_slice/stack_2Ê
lstm_cell_14/strided_sliceStridedSlice#lstm_cell_14/ReadVariableOp:value:0)lstm_cell_14/strided_slice/stack:output:0+lstm_cell_14/strided_slice/stack_1:output:0+lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice¥
lstm_cell_14/MatMul_4MatMullstm_cell_14/mul:z:0#lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_4
lstm_cell_14/addAddV2lstm_cell_14/BiasAdd:output:0lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add
lstm_cell_14/SigmoidSigmoidlstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid¤
lstm_cell_14/ReadVariableOp_1ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_1
"lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice_1/stack
$lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_cell_14/strided_slice_1/stack_1
$lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_1/stack_2Ö
lstm_cell_14/strided_slice_1StridedSlice%lstm_cell_14/ReadVariableOp_1:value:0+lstm_cell_14/strided_slice_1/stack:output:0-lstm_cell_14/strided_slice_1/stack_1:output:0-lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_1©
lstm_cell_14/MatMul_5MatMullstm_cell_14/mul_1:z:0%lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_5¥
lstm_cell_14/add_1AddV2lstm_cell_14/BiasAdd_1:output:0lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_1
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_1
lstm_cell_14/mul_4Mullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_4¤
lstm_cell_14/ReadVariableOp_2ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_2
"lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_cell_14/strided_slice_2/stack
$lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2&
$lstm_cell_14/strided_slice_2/stack_1
$lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_2/stack_2Ö
lstm_cell_14/strided_slice_2StridedSlice%lstm_cell_14/ReadVariableOp_2:value:0+lstm_cell_14/strided_slice_2/stack:output:0-lstm_cell_14/strided_slice_2/stack_1:output:0-lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_2©
lstm_cell_14/MatMul_6MatMullstm_cell_14/mul_2:z:0%lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_6¥
lstm_cell_14/add_2AddV2lstm_cell_14/BiasAdd_2:output:0lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_2x
lstm_cell_14/ReluRelulstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu
lstm_cell_14/mul_5Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_5
lstm_cell_14/add_3AddV2lstm_cell_14/mul_4:z:0lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_3¤
lstm_cell_14/ReadVariableOp_3ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_3
"lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2$
"lstm_cell_14/strided_slice_3/stack
$lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_14/strided_slice_3/stack_1
$lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_3/stack_2Ö
lstm_cell_14/strided_slice_3StridedSlice%lstm_cell_14/ReadVariableOp_3:value:0+lstm_cell_14/strided_slice_3/stack:output:0-lstm_cell_14/strided_slice_3/stack_1:output:0-lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_3©
lstm_cell_14/MatMul_7MatMullstm_cell_14/mul_3:z:0%lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_7¥
lstm_cell_14/add_4AddV2lstm_cell_14/BiasAdd_3:output:0lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_4
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_2|
lstm_cell_14/Relu_1Relulstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu_1 
lstm_cell_14/mul_6Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_14_split_readvariableop_resource,lstm_cell_14_split_1_readvariableop_resource$lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_428773*
condR
while_cond_428772*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

IdentityÞ
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_14/ReadVariableOp^lstm_cell_14/ReadVariableOp_1^lstm_cell_14/ReadVariableOp_2^lstm_cell_14/ReadVariableOp_3"^lstm_cell_14/split/ReadVariableOp$^lstm_cell_14/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_14/ReadVariableOplstm_cell_14/ReadVariableOp2>
lstm_cell_14/ReadVariableOp_1lstm_cell_14/ReadVariableOp_12>
lstm_cell_14/ReadVariableOp_2lstm_cell_14/ReadVariableOp_22>
lstm_cell_14/ReadVariableOp_3lstm_cell_14/ReadVariableOp_32F
!lstm_cell_14/split/ReadVariableOp!lstm_cell_14/split/ReadVariableOp2J
#lstm_cell_14/split_1/ReadVariableOp#lstm_cell_14/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
ì
§
D__inference_dense_17_layer_call_and_return_conditional_losses_429574

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_17/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
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
/dense_17/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_17/bias/Regularizer/Square/ReadVariableOp¬
 dense_17/bias/Regularizer/SquareSquare7dense_17/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_17/bias/Regularizer/Square
dense_17/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_17/bias/Regularizer/Const¶
dense_17/bias/Regularizer/SumSum$dense_17/bias/Regularizer/Square:y:0(dense_17/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/Sum
dense_17/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_17/bias/Regularizer/mul/x¸
dense_17/bias/Regularizer/mulMul(dense_17/bias/Regularizer/mul/x:output:0&dense_17/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_17/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity±
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_17/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_17/bias/Regularizer/Square/ReadVariableOp/dense_17/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÎR
é
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_424489

inputs

states
states_10
split_readvariableop_resource:	 .
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢split/ReadVariableOp¢split_1/ReadVariableOpX
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
:ÿÿÿÿÿÿÿÿÿ@2
	ones_liked
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	BiasAdd_3_
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mulc
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_1c
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_2c
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
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
valueB"    @   2
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

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
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

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_1`
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_4}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_2Q
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Reluh
mul_5MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_5_
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2
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

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Sigmoid_2U
Relu_1Relu	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu_1l
mul_6MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
mul_6Ý
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muld
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1h

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_2
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
¬

D__inference_conv1d_5_layer_call_and_return_conditional_losses_425200

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
¢
©
C__inference_lstm_14_layer_call_and_return_conditional_losses_428631
inputs_0=
*lstm_cell_14_split_readvariableop_resource:	 ;
,lstm_cell_14_split_1_readvariableop_resource:	7
$lstm_cell_14_readvariableop_resource:	@
identity¢=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp¢lstm_cell_14/ReadVariableOp¢lstm_cell_14/ReadVariableOp_1¢lstm_cell_14/ReadVariableOp_2¢lstm_cell_14/ReadVariableOp_3¢!lstm_cell_14/split/ReadVariableOp¢#lstm_cell_14/split_1/ReadVariableOp¢whileF
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
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
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
value	B :@2
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
:ÿÿÿÿÿÿÿÿÿ@2	
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
valueB"ÿÿÿÿ    27
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
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2z
lstm_cell_14/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_14/ones_like/Shape
lstm_cell_14/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_14/ones_like/Const¸
lstm_cell_14/ones_likeFill%lstm_cell_14/ones_like/Shape:output:0%lstm_cell_14/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/ones_like~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim²
!lstm_cell_14/split/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02#
!lstm_cell_14/split/ReadVariableOpÛ
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0)lstm_cell_14/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: @: @: @: @*
	num_split2
lstm_cell_14/split
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul¡
lstm_cell_14/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_1¡
lstm_cell_14/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_2¡
lstm_cell_14/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_3
lstm_cell_14/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_14/split_1/split_dim´
#lstm_cell_14/split_1/ReadVariableOpReadVariableOp,lstm_cell_14_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_14/split_1/ReadVariableOpÓ
lstm_cell_14/split_1Split'lstm_cell_14/split_1/split_dim:output:0+lstm_cell_14/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_14/split_1§
lstm_cell_14/BiasAddBiasAddlstm_cell_14/MatMul:product:0lstm_cell_14/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd­
lstm_cell_14/BiasAdd_1BiasAddlstm_cell_14/MatMul_1:product:0lstm_cell_14/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_1­
lstm_cell_14/BiasAdd_2BiasAddlstm_cell_14/MatMul_2:product:0lstm_cell_14/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_2­
lstm_cell_14/BiasAdd_3BiasAddlstm_cell_14/MatMul_3:product:0lstm_cell_14/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/BiasAdd_3
lstm_cell_14/mulMulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul
lstm_cell_14/mul_1Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_1
lstm_cell_14/mul_2Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_2
lstm_cell_14/mul_3Mulzeros:output:0lstm_cell_14/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_3 
lstm_cell_14/ReadVariableOpReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp
 lstm_cell_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_14/strided_slice/stack
"lstm_cell_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice/stack_1
"lstm_cell_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_14/strided_slice/stack_2Ê
lstm_cell_14/strided_sliceStridedSlice#lstm_cell_14/ReadVariableOp:value:0)lstm_cell_14/strided_slice/stack:output:0+lstm_cell_14/strided_slice/stack_1:output:0+lstm_cell_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice¥
lstm_cell_14/MatMul_4MatMullstm_cell_14/mul:z:0#lstm_cell_14/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_4
lstm_cell_14/addAddV2lstm_cell_14/BiasAdd:output:0lstm_cell_14/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add
lstm_cell_14/SigmoidSigmoidlstm_cell_14/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid¤
lstm_cell_14/ReadVariableOp_1ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_1
"lstm_cell_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2$
"lstm_cell_14/strided_slice_1/stack
$lstm_cell_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2&
$lstm_cell_14/strided_slice_1/stack_1
$lstm_cell_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_1/stack_2Ö
lstm_cell_14/strided_slice_1StridedSlice%lstm_cell_14/ReadVariableOp_1:value:0+lstm_cell_14/strided_slice_1/stack:output:0-lstm_cell_14/strided_slice_1/stack_1:output:0-lstm_cell_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_1©
lstm_cell_14/MatMul_5MatMullstm_cell_14/mul_1:z:0%lstm_cell_14/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_5¥
lstm_cell_14/add_1AddV2lstm_cell_14/BiasAdd_1:output:0lstm_cell_14/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_1
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_1
lstm_cell_14/mul_4Mullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_4¤
lstm_cell_14/ReadVariableOp_2ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_2
"lstm_cell_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2$
"lstm_cell_14/strided_slice_2/stack
$lstm_cell_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   2&
$lstm_cell_14/strided_slice_2/stack_1
$lstm_cell_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_2/stack_2Ö
lstm_cell_14/strided_slice_2StridedSlice%lstm_cell_14/ReadVariableOp_2:value:0+lstm_cell_14/strided_slice_2/stack:output:0-lstm_cell_14/strided_slice_2/stack_1:output:0-lstm_cell_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_2©
lstm_cell_14/MatMul_6MatMullstm_cell_14/mul_2:z:0%lstm_cell_14/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_6¥
lstm_cell_14/add_2AddV2lstm_cell_14/BiasAdd_2:output:0lstm_cell_14/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_2x
lstm_cell_14/ReluRelulstm_cell_14/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu
lstm_cell_14/mul_5Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_5
lstm_cell_14/add_3AddV2lstm_cell_14/mul_4:z:0lstm_cell_14/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_3¤
lstm_cell_14/ReadVariableOp_3ReadVariableOp$lstm_cell_14_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_14/ReadVariableOp_3
"lstm_cell_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   2$
"lstm_cell_14/strided_slice_3/stack
$lstm_cell_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_14/strided_slice_3/stack_1
$lstm_cell_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_14/strided_slice_3/stack_2Ö
lstm_cell_14/strided_slice_3StridedSlice%lstm_cell_14/ReadVariableOp_3:value:0+lstm_cell_14/strided_slice_3/stack:output:0-lstm_cell_14/strided_slice_3/stack_1:output:0-lstm_cell_14/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_14/strided_slice_3©
lstm_cell_14/MatMul_7MatMullstm_cell_14/mul_3:z:0%lstm_cell_14/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/MatMul_7¥
lstm_cell_14/add_4AddV2lstm_cell_14/BiasAdd_3:output:0lstm_cell_14/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/add_4
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Sigmoid_2|
lstm_cell_14/Relu_1Relulstm_cell_14/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/Relu_1 
lstm_cell_14/mul_6Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
lstm_cell_14/mul_6
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   2
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
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_14_split_readvariableop_resource,lstm_cell_14_split_1_readvariableop_resource$lstm_cell_14_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_428498*
condR
while_cond_428497*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
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
:ÿÿÿÿÿÿÿÿÿ@*
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeê
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*lstm_cell_14_split_readvariableop_resource*
_output_shapes
:	 *
dtype02?
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOpÛ
.lstm_14/lstm_cell_14/kernel/Regularizer/SquareSquareElstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 20
.lstm_14/lstm_cell_14/kernel/Regularizer/Square¯
-lstm_14/lstm_cell_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2/
-lstm_14/lstm_cell_14/kernel/Regularizer/Constî
+lstm_14/lstm_cell_14/kernel/Regularizer/SumSum2lstm_14/lstm_cell_14/kernel/Regularizer/Square:y:06lstm_14/lstm_cell_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/Sum£
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82/
-lstm_14/lstm_cell_14/kernel/Regularizer/mul/xð
+lstm_14/lstm_cell_14/kernel/Regularizer/mulMul6lstm_14/lstm_cell_14/kernel/Regularizer/mul/x:output:04lstm_14/lstm_cell_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2-
+lstm_14/lstm_cell_14/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

IdentityÞ
NoOpNoOp>^lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_14/ReadVariableOp^lstm_cell_14/ReadVariableOp_1^lstm_cell_14/ReadVariableOp_2^lstm_cell_14/ReadVariableOp_3"^lstm_cell_14/split/ReadVariableOp$^lstm_cell_14/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2~
=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp=lstm_14/lstm_cell_14/kernel/Regularizer/Square/ReadVariableOp2:
lstm_cell_14/ReadVariableOplstm_cell_14/ReadVariableOp2>
lstm_cell_14/ReadVariableOp_1lstm_cell_14/ReadVariableOp_12>
lstm_cell_14/ReadVariableOp_2lstm_cell_14/ReadVariableOp_22>
lstm_cell_14/ReadVariableOp_3lstm_cell_14/ReadVariableOp_32F
!lstm_cell_14/split/ReadVariableOp!lstm_cell_14/split/ReadVariableOp2J
#lstm_cell_14/split_1/ReadVariableOp#lstm_cell_14/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
Æ

ã
lstm_13_while_cond_426706,
(lstm_13_while_lstm_13_while_loop_counter2
.lstm_13_while_lstm_13_while_maximum_iterations
lstm_13_while_placeholder
lstm_13_while_placeholder_1
lstm_13_while_placeholder_2
lstm_13_while_placeholder_3.
*lstm_13_while_less_lstm_13_strided_slice_1D
@lstm_13_while_lstm_13_while_cond_426706___redundant_placeholder0D
@lstm_13_while_lstm_13_while_cond_426706___redundant_placeholder1D
@lstm_13_while_lstm_13_while_cond_426706___redundant_placeholder2D
@lstm_13_while_lstm_13_while_cond_426706___redundant_placeholder3
lstm_13_while_identity

lstm_13/while/LessLesslstm_13_while_placeholder*lstm_13_while_less_lstm_13_strided_slice_1*
T0*
_output_shapes
: 2
lstm_13/while/Lessu
lstm_13/while/IdentityIdentitylstm_13/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_13/while/Identity"9
lstm_13_while_identitylstm_13/while/Identity:output:0*(
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

NoOp*Â
serving_default®
M
conv1d_4_input;
 serving_default_conv1d_4_input:0ÿÿÿÿÿÿÿÿÿA
	reshape_84
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¸ç
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

	variables
trainable_variables
regularization_losses
	keras_api

signatures
ª_default_save_signature
+«&call_and_return_all_conditional_losses
¬__call__"
_tf_keras_sequential
½

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+­&call_and_return_all_conditional_losses
®__call__"
_tf_keras_layer
½

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+¯&call_and_return_all_conditional_losses
°__call__"
_tf_keras_layer
§
	variables
trainable_variables
regularization_losses
	keras_api
+±&call_and_return_all_conditional_losses
²__call__"
_tf_keras_layer
Å
cell
 
state_spec
!	variables
"trainable_variables
#regularization_losses
$	keras_api
+³&call_and_return_all_conditional_losses
´__call__"
_tf_keras_rnn_layer
Å
%cell
&
state_spec
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+µ&call_and_return_all_conditional_losses
¶__call__"
_tf_keras_rnn_layer
½

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
+·&call_and_return_all_conditional_losses
¸__call__"
_tf_keras_layer
½

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
+¹&call_and_return_all_conditional_losses
º__call__"
_tf_keras_layer
§
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+»&call_and_return_all_conditional_losses
¼__call__"
_tf_keras_layer
ë
;iter

<beta_1

=beta_2
	>decay
?learning_ratemmmm+m,m1m2m@mAmBmCmDmEmvvvv+v ,v¡1v¢2v£@v¤Av¥Bv¦Cv§Dv¨Ev©"
	optimizer

0
1
2
3
@4
A5
B6
C7
D8
E9
+10
,11
112
213"
trackable_list_wrapper

0
1
2
3
@4
A5
B6
C7
D8
E9
+10
,11
112
213"
trackable_list_wrapper
0
½0
¾1"
trackable_list_wrapper
Î

	variables
trainable_variables
Flayer_metrics

Glayers
Hlayer_regularization_losses
regularization_losses
Inon_trainable_variables
Jmetrics
¬__call__
ª_default_save_signature
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
-
¿serving_default"
signature_map
%:# 2conv1d_4/kernel
: 2conv1d_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
½0"
trackable_list_wrapper
°
	variables
trainable_variables
Klayer_metrics

Llayers
Mlayer_regularization_losses
regularization_losses
Nnon_trainable_variables
Ometrics
®__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_5/kernel
:@2conv1d_5/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
	variables
trainable_variables
Player_metrics

Qlayers
Rlayer_regularization_losses
regularization_losses
Snon_trainable_variables
Tmetrics
°__call__
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
	variables
trainable_variables
Ulayer_metrics

Vlayers
Wlayer_regularization_losses
regularization_losses
Xnon_trainable_variables
Ymetrics
²__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
ã
Z
state_size

@kernel
Arecurrent_kernel
Bbias
[	variables
\trainable_variables
]regularization_losses
^	keras_api
+À&call_and_return_all_conditional_losses
Á__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
 "
trackable_list_wrapper
¼

_states
!	variables
"trainable_variables
`layer_metrics

alayers
blayer_regularization_losses
#regularization_losses
cnon_trainable_variables
dmetrics
´__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
ã
e
state_size

Ckernel
Drecurrent_kernel
Ebias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
+Â&call_and_return_all_conditional_losses
Ã__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
(
Ä0"
trackable_list_wrapper
¼

jstates
'	variables
(trainable_variables
klayer_metrics

llayers
mlayer_regularization_losses
)regularization_losses
nnon_trainable_variables
ometrics
¶__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
!:@@2dense_16/kernel
:@2dense_16/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
-	variables
.trainable_variables
player_metrics

qlayers
rlayer_regularization_losses
/regularization_losses
snon_trainable_variables
tmetrics
¸__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_17/kernel
:2dense_17/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
(
¾0"
trackable_list_wrapper
°
3	variables
4trainable_variables
ulayer_metrics

vlayers
wlayer_regularization_losses
5regularization_losses
xnon_trainable_variables
ymetrics
º__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
7	variables
8trainable_variables
zlayer_metrics

{layers
|layer_regularization_losses
9regularization_losses
}non_trainable_variables
~metrics
¼__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	@2lstm_13/lstm_cell_13/kernel
8:6	 2%lstm_13/lstm_cell_13/recurrent_kernel
(:&2lstm_13/lstm_cell_13/bias
.:,	 2lstm_14/lstm_cell_14/kernel
8:6	@2%lstm_14/lstm_cell_14/recurrent_kernel
(:&2lstm_14/lstm_cell_14/bias
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
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
½0"
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
@0
A1
B2"
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
[	variables
\trainable_variables
layer_metrics
layers
 layer_regularization_losses
]regularization_losses
non_trainable_variables
metrics
Á__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
(
Ä0"
trackable_list_wrapper
µ
f	variables
gtrainable_variables
layer_metrics
layers
 layer_regularization_losses
hregularization_losses
non_trainable_variables
metrics
Ã__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
(
¾0"
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

total

count
	variables
	keras_api"
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
(
Ä0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
*:( 2Adam/conv1d_4/kernel/m
 : 2Adam/conv1d_4/bias/m
*:( @2Adam/conv1d_5/kernel/m
 :@2Adam/conv1d_5/bias/m
&:$@@2Adam/dense_16/kernel/m
 :@2Adam/dense_16/bias/m
&:$@2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
3:1	@2"Adam/lstm_13/lstm_cell_13/kernel/m
=:;	 2,Adam/lstm_13/lstm_cell_13/recurrent_kernel/m
-:+2 Adam/lstm_13/lstm_cell_13/bias/m
3:1	 2"Adam/lstm_14/lstm_cell_14/kernel/m
=:;	@2,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m
-:+2 Adam/lstm_14/lstm_cell_14/bias/m
*:( 2Adam/conv1d_4/kernel/v
 : 2Adam/conv1d_4/bias/v
*:( @2Adam/conv1d_5/kernel/v
 :@2Adam/conv1d_5/bias/v
&:$@@2Adam/dense_16/kernel/v
 :@2Adam/dense_16/bias/v
&:$@2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v
3:1	@2"Adam/lstm_13/lstm_cell_13/kernel/v
=:;	 2,Adam/lstm_13/lstm_cell_13/recurrent_kernel/v
-:+2 Adam/lstm_13/lstm_cell_13/bias/v
3:1	 2"Adam/lstm_14/lstm_cell_14/kernel/v
=:;	@2,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v
-:+2 Adam/lstm_14/lstm_cell_14/bias/v
ÓBÐ
!__inference__wrapped_model_423707conv1d_4_input"
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
H__inference_sequential_5_layer_call_and_return_conditional_losses_427064
H__inference_sequential_5_layer_call_and_return_conditional_losses_427580
H__inference_sequential_5_layer_call_and_return_conditional_losses_426495
H__inference_sequential_5_layer_call_and_return_conditional_losses_426553À
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
-__inference_sequential_5_layer_call_fn_425727
-__inference_sequential_5_layer_call_fn_427613
-__inference_sequential_5_layer_call_fn_427646
-__inference_sequential_5_layer_call_fn_426437À
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
D__inference_conv1d_4_layer_call_and_return_conditional_losses_427674¢
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
)__inference_conv1d_4_layer_call_fn_427683¢
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
D__inference_conv1d_5_layer_call_and_return_conditional_losses_427699¢
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
)__inference_conv1d_5_layer_call_fn_427708¢
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
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_427716
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_427724¢
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
0__inference_max_pooling1d_2_layer_call_fn_427729
0__inference_max_pooling1d_2_layer_call_fn_427734¢
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
C__inference_lstm_13_layer_call_and_return_conditional_losses_427885
C__inference_lstm_13_layer_call_and_return_conditional_losses_428036
C__inference_lstm_13_layer_call_and_return_conditional_losses_428187
C__inference_lstm_13_layer_call_and_return_conditional_losses_428338Õ
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
(__inference_lstm_13_layer_call_fn_428349
(__inference_lstm_13_layer_call_fn_428360
(__inference_lstm_13_layer_call_fn_428371
(__inference_lstm_13_layer_call_fn_428382Õ
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
C__inference_lstm_14_layer_call_and_return_conditional_losses_428631
C__inference_lstm_14_layer_call_and_return_conditional_losses_428938
C__inference_lstm_14_layer_call_and_return_conditional_losses_429181
C__inference_lstm_14_layer_call_and_return_conditional_losses_429488Õ
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
(__inference_lstm_14_layer_call_fn_429499
(__inference_lstm_14_layer_call_fn_429510
(__inference_lstm_14_layer_call_fn_429521
(__inference_lstm_14_layer_call_fn_429532Õ
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
D__inference_dense_16_layer_call_and_return_conditional_losses_429543¢
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
)__inference_dense_16_layer_call_fn_429552¢
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
D__inference_dense_17_layer_call_and_return_conditional_losses_429574¢
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
)__inference_dense_17_layer_call_fn_429583¢
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
E__inference_reshape_8_layer_call_and_return_conditional_losses_429596¢
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
*__inference_reshape_8_layer_call_fn_429601¢
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
³2°
__inference_loss_fn_0_429612
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
³2°
__inference_loss_fn_1_429623
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
ÒBÏ
$__inference_signature_wrapper_426612conv1d_4_input"
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
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_429655
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_429687¾
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
-__inference_lstm_cell_13_layer_call_fn_429704
-__inference_lstm_cell_13_layer_call_fn_429721¾
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
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_429808
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_429921¾
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
-__inference_lstm_cell_14_layer_call_fn_429938
-__inference_lstm_cell_14_layer_call_fn_429955¾
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
³2°
__inference_loss_fn_2_429966
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
annotationsª *¢ ®
!__inference__wrapped_model_423707@ABCED+,12;¢8
1¢.
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
ª "9ª6
4
	reshape_8'$
	reshape_8ÿÿÿÿÿÿÿÿÿ¬
D__inference_conv1d_4_layer_call_and_return_conditional_losses_427674d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
)__inference_conv1d_4_layer_call_fn_427683W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¬
D__inference_conv1d_5_layer_call_and_return_conditional_losses_427699d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
@
 
)__inference_conv1d_5_layer_call_fn_427708W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ
@¤
D__inference_dense_16_layer_call_and_return_conditional_losses_429543\+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
)__inference_dense_16_layer_call_fn_429552O+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@¤
D__inference_dense_17_layer_call_and_return_conditional_losses_429574\12/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_17_layer_call_fn_429583O12/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ;
__inference_loss_fn_0_429612¢

¢ 
ª " ;
__inference_loss_fn_1_4296232¢

¢ 
ª " ;
__inference_loss_fn_2_429966C¢

¢ 
ª " Ò
C__inference_lstm_13_layer_call_and_return_conditional_losses_427885@ABO¢L
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
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Ò
C__inference_lstm_13_layer_call_and_return_conditional_losses_428036@ABO¢L
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
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ¸
C__inference_lstm_13_layer_call_and_return_conditional_losses_428187q@AB?¢<
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
0ÿÿÿÿÿÿÿÿÿ 
 ¸
C__inference_lstm_13_layer_call_and_return_conditional_losses_428338q@AB?¢<
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
0ÿÿÿÿÿÿÿÿÿ 
 ©
(__inference_lstm_13_layer_call_fn_428349}@ABO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ©
(__inference_lstm_13_layer_call_fn_428360}@ABO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_13_layer_call_fn_428371d@AB?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_13_layer_call_fn_428382d@AB?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ä
C__inference_lstm_14_layer_call_and_return_conditional_losses_428631}CEDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ä
C__inference_lstm_14_layer_call_and_return_conditional_losses_428938}CEDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
C__inference_lstm_14_layer_call_and_return_conditional_losses_429181mCED?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
C__inference_lstm_14_layer_call_and_return_conditional_losses_429488mCED?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_lstm_14_layer_call_fn_429499pCEDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_14_layer_call_fn_429510pCEDO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_14_layer_call_fn_429521`CED?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_14_layer_call_fn_429532`CED?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ê
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_429655ý@AB¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
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
 Ê
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_429687ý@AB¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
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
 
-__inference_lstm_cell_13_layer_call_fn_429704í@AB¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
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
1/1ÿÿÿÿÿÿÿÿÿ 
-__inference_lstm_cell_13_layer_call_fn_429721í@AB¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ@
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
1/1ÿÿÿÿÿÿÿÿÿ Ê
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_429808ýCED¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 Ê
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_429921ýCED¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 
-__inference_lstm_cell_14_layer_call_fn_429938íCED¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@
-__inference_lstm_cell_14_layer_call_fn_429955íCED¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@Ô
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_427716E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
K__inference_max_pooling1d_2_layer_call_and_return_conditional_losses_427724`3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 «
0__inference_max_pooling1d_2_layer_call_fn_427729wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
0__inference_max_pooling1d_2_layer_call_fn_427734S3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
@
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_reshape_8_layer_call_and_return_conditional_losses_429596\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_reshape_8_layer_call_fn_429601O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÍ
H__inference_sequential_5_layer_call_and_return_conditional_losses_426495@ABCED+,12C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Í
H__inference_sequential_5_layer_call_and_return_conditional_losses_426553@ABCED+,12C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ä
H__inference_sequential_5_layer_call_and_return_conditional_losses_427064x@ABCED+,12;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ä
H__inference_sequential_5_layer_call_and_return_conditional_losses_427580x@ABCED+,12;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¤
-__inference_sequential_5_layer_call_fn_425727s@ABCED+,12C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¤
-__inference_sequential_5_layer_call_fn_426437s@ABCED+,12C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_5_layer_call_fn_427613k@ABCED+,12;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_5_layer_call_fn_427646k@ABCED+,12;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÃ
$__inference_signature_wrapper_426612@ABCED+,12M¢J
¢ 
Cª@
>
conv1d_4_input,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ"9ª6
4
	reshape_8'$
	reshape_8ÿÿÿÿÿÿÿÿÿ