±´(
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8²Æ&
z
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_36/kernel
s
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes

:*
dtype0
r
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_36/bias
k
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes
:*
dtype0
z
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_37/kernel
s
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes

:*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
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
lstm_36/lstm_cell_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_36/lstm_cell_36/kernel

/lstm_36/lstm_cell_36/kernel/Read/ReadVariableOpReadVariableOplstm_36/lstm_cell_36/kernel*
_output_shapes

: *
dtype0
¦
%lstm_36/lstm_cell_36/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_36/lstm_cell_36/recurrent_kernel

9lstm_36/lstm_cell_36/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_36/lstm_cell_36/recurrent_kernel*
_output_shapes

: *
dtype0

lstm_36/lstm_cell_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_36/lstm_cell_36/bias

-lstm_36/lstm_cell_36/bias/Read/ReadVariableOpReadVariableOplstm_36/lstm_cell_36/bias*
_output_shapes
: *
dtype0

lstm_37/lstm_cell_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_37/lstm_cell_37/kernel

/lstm_37/lstm_cell_37/kernel/Read/ReadVariableOpReadVariableOplstm_37/lstm_cell_37/kernel*
_output_shapes

: *
dtype0
¦
%lstm_37/lstm_cell_37/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_37/lstm_cell_37/recurrent_kernel

9lstm_37/lstm_cell_37/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_37/lstm_cell_37/recurrent_kernel*
_output_shapes

: *
dtype0

lstm_37/lstm_cell_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_37/lstm_cell_37/bias

-lstm_37/lstm_cell_37/bias/Read/ReadVariableOpReadVariableOplstm_37/lstm_cell_37/bias*
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

Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_36/kernel/m

*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_36/bias/m
y
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes
:*
dtype0

Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_37/kernel/m

*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_36/lstm_cell_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_36/lstm_cell_36/kernel/m

6Adam/lstm_36/lstm_cell_36/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_36/lstm_cell_36/kernel/m*
_output_shapes

: *
dtype0
´
,Adam/lstm_36/lstm_cell_36/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m
­
@Adam/lstm_36/lstm_cell_36/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m*
_output_shapes

: *
dtype0

 Adam/lstm_36/lstm_cell_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_36/lstm_cell_36/bias/m

4Adam/lstm_36/lstm_cell_36/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_36/lstm_cell_36/bias/m*
_output_shapes
: *
dtype0
 
"Adam/lstm_37/lstm_cell_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_37/lstm_cell_37/kernel/m

6Adam/lstm_37/lstm_cell_37/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_37/lstm_cell_37/kernel/m*
_output_shapes

: *
dtype0
´
,Adam/lstm_37/lstm_cell_37/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m
­
@Adam/lstm_37/lstm_cell_37/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m*
_output_shapes

: *
dtype0

 Adam/lstm_37/lstm_cell_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_37/lstm_cell_37/bias/m

4Adam/lstm_37/lstm_cell_37/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_37/lstm_cell_37/bias/m*
_output_shapes
: *
dtype0

Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_36/kernel/v

*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_36/bias/v
y
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes
:*
dtype0

Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_37/kernel/v

*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_36/lstm_cell_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_36/lstm_cell_36/kernel/v

6Adam/lstm_36/lstm_cell_36/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_36/lstm_cell_36/kernel/v*
_output_shapes

: *
dtype0
´
,Adam/lstm_36/lstm_cell_36/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v
­
@Adam/lstm_36/lstm_cell_36/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v*
_output_shapes

: *
dtype0

 Adam/lstm_36/lstm_cell_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_36/lstm_cell_36/bias/v

4Adam/lstm_36/lstm_cell_36/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_36/lstm_cell_36/bias/v*
_output_shapes
: *
dtype0
 
"Adam/lstm_37/lstm_cell_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_37/lstm_cell_37/kernel/v

6Adam/lstm_37/lstm_cell_37/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_37/lstm_cell_37/kernel/v*
_output_shapes

: *
dtype0
´
,Adam/lstm_37/lstm_cell_37/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v
­
@Adam/lstm_37/lstm_cell_37/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v*
_output_shapes

: *
dtype0

 Adam/lstm_37/lstm_cell_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_37/lstm_cell_37/bias/v

4Adam/lstm_37/lstm_cell_37/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_37/lstm_cell_37/bias/v*
_output_shapes
: *
dtype0

NoOpNoOp
A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Á@
value·@B´@ B­@
´
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
 	variables
!	keras_api
h

"kernel
#bias
$regularization_losses
%trainable_variables
&	variables
'	keras_api
h

(kernel
)bias
*regularization_losses
+trainable_variables
,	variables
-	keras_api
R
.regularization_losses
/trainable_variables
0	variables
1	keras_api

2iter

3beta_1

4beta_2
	5decay
6learning_rate"m#m(m)m7m8m9m:m;m<m"v#v(v)v7v8v9v:v;v<v
 
F
70
81
92
:3
;4
<5
"6
#7
(8
)9
F
70
81
92
:3
;4
<5
"6
#7
(8
)9
­
=layer_regularization_losses
	regularization_losses
>layer_metrics

trainable_variables

?layers
@non_trainable_variables
Ametrics
	variables
 

B
state_size

7kernel
8recurrent_kernel
9bias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
 
 

70
81
92

70
81
92
¹
Glayer_regularization_losses
regularization_losses
Hlayer_metrics
trainable_variables

Ilayers

Jstates
Knon_trainable_variables
Lmetrics
	variables
 
 
 
­
Mlayer_regularization_losses
regularization_losses
Nlayer_metrics
trainable_variables

Olayers
Pnon_trainable_variables
Qmetrics
	variables

R
state_size

:kernel
;recurrent_kernel
<bias
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
 
 

:0
;1
<2

:0
;1
<2
¹
Wlayer_regularization_losses
regularization_losses
Xlayer_metrics
trainable_variables

Ylayers

Zstates
[non_trainable_variables
\metrics
	variables
 
 
 
­
]layer_regularization_losses
regularization_losses
^layer_metrics
trainable_variables

_layers
`non_trainable_variables
ametrics
 	variables
[Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_36/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

"0
#1

"0
#1
­
blayer_regularization_losses
$regularization_losses
clayer_metrics
%trainable_variables

dlayers
enon_trainable_variables
fmetrics
&	variables
[Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_37/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
­
glayer_regularization_losses
*regularization_losses
hlayer_metrics
+trainable_variables

ilayers
jnon_trainable_variables
kmetrics
,	variables
 
 
 
­
llayer_regularization_losses
.regularization_losses
mlayer_metrics
/trainable_variables

nlayers
onon_trainable_variables
pmetrics
0	variables
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
a_
VARIABLE_VALUElstm_37/lstm_cell_37/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_37/lstm_cell_37/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_37/lstm_cell_37/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
 
1
0
1
2
3
4
5
6
 

q0
 
 

70
81
92

70
81
92
­
rlayer_regularization_losses
Cregularization_losses
slayer_metrics
Dtrainable_variables

tlayers
unon_trainable_variables
vmetrics
E	variables
 
 

0
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
:0
;1
<2

:0
;1
<2
­
wlayer_regularization_losses
Sregularization_losses
xlayer_metrics
Ttrainable_variables

ylayers
znon_trainable_variables
{metrics
U	variables
 
 

0
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
4
	|total
	}count
~	variables
	keras_api
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

|0
}1

~	variables
~|
VARIABLE_VALUEAdam/dense_36/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_36/lstm_cell_36/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_36/lstm_cell_36/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_36/lstm_cell_36/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_37/lstm_cell_37/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_37/lstm_cell_37/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_37/lstm_cell_37/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_36/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_36/lstm_cell_36/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_36/lstm_cell_36/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_36/lstm_cell_36/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_37/lstm_cell_37/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_37/lstm_cell_37/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_37/lstm_cell_37/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_17Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
É
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_17lstm_36/lstm_cell_36/kernel%lstm_36/lstm_cell_36/recurrent_kernellstm_36/lstm_cell_36/biaslstm_37/lstm_cell_37/kernel%lstm_37/lstm_cell_37/recurrent_kernellstm_37/lstm_cell_37/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_357748
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ý
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_36/lstm_cell_36/kernel/Read/ReadVariableOp9lstm_36/lstm_cell_36/recurrent_kernel/Read/ReadVariableOp-lstm_36/lstm_cell_36/bias/Read/ReadVariableOp/lstm_37/lstm_cell_37/kernel/Read/ReadVariableOp9lstm_37/lstm_cell_37/recurrent_kernel/Read/ReadVariableOp-lstm_37/lstm_cell_37/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp6Adam/lstm_36/lstm_cell_36/kernel/m/Read/ReadVariableOp@Adam/lstm_36/lstm_cell_36/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_36/lstm_cell_36/bias/m/Read/ReadVariableOp6Adam/lstm_37/lstm_cell_37/kernel/m/Read/ReadVariableOp@Adam/lstm_37/lstm_cell_37/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_37/lstm_cell_37/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp6Adam/lstm_36/lstm_cell_36/kernel/v/Read/ReadVariableOp@Adam/lstm_36/lstm_cell_36/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_36/lstm_cell_36/bias/v/Read/ReadVariableOp6Adam/lstm_37/lstm_cell_37/kernel/v/Read/ReadVariableOp@Adam/lstm_37/lstm_cell_37/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_37/lstm_cell_37/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
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
__inference__traced_save_360193


StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_36/kerneldense_36/biasdense_37/kerneldense_37/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_36/lstm_cell_36/kernel%lstm_36/lstm_cell_36/recurrent_kernellstm_36/lstm_cell_36/biaslstm_37/lstm_cell_37/kernel%lstm_37/lstm_cell_37/recurrent_kernellstm_37/lstm_cell_37/biastotalcountAdam/dense_36/kernel/mAdam/dense_36/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/m"Adam/lstm_36/lstm_cell_36/kernel/m,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m Adam/lstm_36/lstm_cell_36/bias/m"Adam/lstm_37/lstm_cell_37/kernel/m,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m Adam/lstm_37/lstm_cell_37/bias/mAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/v"Adam/lstm_36/lstm_cell_36/kernel/v,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v Adam/lstm_36/lstm_cell_36/bias/v"Adam/lstm_37/lstm_cell_37/kernel/v,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v Adam/lstm_37/lstm_cell_37/bias/v*1
Tin*
(2&*
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
"__inference__traced_restore_360314%
ß

÷
.__inference_sequential_13_layer_call_fn_357773

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_3571062
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
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_357258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_37_matmul_readvariableop_resource_0: G
5while_lstm_cell_37_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_37_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_37_matmul_readvariableop_resource: E
3while_lstm_cell_37_matmul_1_readvariableop_resource: @
2while_lstm_cell_37_biasadd_readvariableop_resource: ¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_37/MatMul/ReadVariableOpÖ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMulÎ
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_37/MatMul_1/ReadVariableOp¿
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMul_1·
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/addÇ
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_37/BiasAdd/ReadVariableOpÄ
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/BiasAdd
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_37/split/split_dim
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_37/split
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_1 
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu´
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_1©
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/add_1
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_2
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu_1¸
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_356388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356388___redundant_placeholder04
0while_while_cond_356388___redundant_placeholder14
0while_while_cond_356388___redundant_placeholder24
0while_while_cond_356388___redundant_placeholder3
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_359929

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
Äñ
°	
I__inference_sequential_13_layer_call_and_return_conditional_losses_358120

inputsE
3lstm_36_lstm_cell_36_matmul_readvariableop_resource: G
5lstm_36_lstm_cell_36_matmul_1_readvariableop_resource: B
4lstm_36_lstm_cell_36_biasadd_readvariableop_resource: E
3lstm_37_lstm_cell_37_matmul_readvariableop_resource: G
5lstm_37_lstm_cell_37_matmul_1_readvariableop_resource: B
4lstm_37_lstm_cell_37_biasadd_readvariableop_resource: 9
'dense_36_matmul_readvariableop_resource:6
(dense_36_biasadd_readvariableop_resource:9
'dense_37_matmul_readvariableop_resource:6
(dense_37_biasadd_readvariableop_resource:
identity¢dense_36/BiasAdd/ReadVariableOp¢dense_36/MatMul/ReadVariableOp¢dense_37/BiasAdd/ReadVariableOp¢dense_37/MatMul/ReadVariableOp¢+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp¢*lstm_36/lstm_cell_36/MatMul/ReadVariableOp¢,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp¢lstm_36/while¢+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp¢*lstm_37/lstm_cell_37/MatMul/ReadVariableOp¢,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp¢lstm_37/whileT
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/zerosp
lstm_36/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   2?
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_36/strided_slice_2Ì
*lstm_36/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3lstm_36_lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*lstm_36/lstm_cell_36/MatMul/ReadVariableOpÌ
lstm_36/lstm_cell_36/MatMulMatMul lstm_36/strided_slice_2:output:02lstm_36/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMulÒ
,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5lstm_36_lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOpÈ
lstm_36/lstm_cell_36/MatMul_1MatMullstm_36/zeros:output:04lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_1¿
lstm_36/lstm_cell_36/addAddV2%lstm_36/lstm_cell_36/MatMul:product:0'lstm_36/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/addË
+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4lstm_36_lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOpÌ
lstm_36/lstm_cell_36/BiasAddBiasAddlstm_36/lstm_cell_36/add:z:03lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/BiasAdd
$lstm_36/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_36/lstm_cell_36/split/split_dim
lstm_36/lstm_cell_36/splitSplit-lstm_36/lstm_cell_36/split/split_dim:output:0%lstm_36/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_36/lstm_cell_36/split
lstm_36/lstm_cell_36/SigmoidSigmoid#lstm_36/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/Sigmoid¢
lstm_36/lstm_cell_36/Sigmoid_1Sigmoid#lstm_36/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_36/lstm_cell_36/Sigmoid_1«
lstm_36/lstm_cell_36/mulMul"lstm_36/lstm_cell_36/Sigmoid_1:y:0lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/mul
lstm_36/lstm_cell_36/ReluRelu#lstm_36/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/Relu¼
lstm_36/lstm_cell_36/mul_1Mul lstm_36/lstm_cell_36/Sigmoid:y:0'lstm_36/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/mul_1±
lstm_36/lstm_cell_36/add_1AddV2lstm_36/lstm_cell_36/mul:z:0lstm_36/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/add_1¢
lstm_36/lstm_cell_36/Sigmoid_2Sigmoid#lstm_36/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_36/lstm_cell_36/Sigmoid_2
lstm_36/lstm_cell_36/Relu_1Relulstm_36/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/Relu_1À
lstm_36/lstm_cell_36/mul_2Mul"lstm_36/lstm_cell_36/Sigmoid_2:y:0)lstm_36/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/mul_2
%lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
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
lstm_36/while/loop_counter
lstm_36/whileWhile#lstm_36/while/loop_counter:output:0)lstm_36/while/maximum_iterations:output:0lstm_36/time:output:0 lstm_36/TensorArrayV2_1:handle:0lstm_36/zeros:output:0lstm_36/zeros_1:output:0 lstm_36/strided_slice_1:output:0?lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_36_lstm_cell_36_matmul_readvariableop_resource5lstm_36_lstm_cell_36_matmul_1_readvariableop_resource4lstm_36_lstm_cell_36_biasadd_readvariableop_resource*
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
lstm_36_while_body_357865*%
condR
lstm_36_while_cond_357864*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_36/whileÅ
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_36/TensorArrayV2Stack/TensorListStackTensorListStacklstm_36/while:output:3Alstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/transpose_1v
lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/runtime
dropout_20/IdentityIdentitylstm_36/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_20/Identityj
lstm_37/ShapeShapedropout_20/Identity:output:0*
T0*
_output_shapes
:2
lstm_37/Shape
lstm_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_37/strided_slice/stack
lstm_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_37/strided_slice/stack_1
lstm_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_37/strided_slice/stack_2
lstm_37/strided_sliceStridedSlicelstm_37/Shape:output:0$lstm_37/strided_slice/stack:output:0&lstm_37/strided_slice/stack_1:output:0&lstm_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_37/strided_slicel
lstm_37/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros/mul/y
lstm_37/zeros/mulMullstm_37/strided_slice:output:0lstm_37/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros/mulo
lstm_37/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_37/zeros/Less/y
lstm_37/zeros/LessLesslstm_37/zeros/mul:z:0lstm_37/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros/Lessr
lstm_37/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros/packed/1£
lstm_37/zeros/packedPacklstm_37/strided_slice:output:0lstm_37/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_37/zeros/packedo
lstm_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_37/zeros/Const
lstm_37/zerosFilllstm_37/zeros/packed:output:0lstm_37/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/zerosp
lstm_37/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros_1/mul/y
lstm_37/zeros_1/mulMullstm_37/strided_slice:output:0lstm_37/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros_1/muls
lstm_37/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_37/zeros_1/Less/y
lstm_37/zeros_1/LessLesslstm_37/zeros_1/mul:z:0lstm_37/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros_1/Lessv
lstm_37/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros_1/packed/1©
lstm_37/zeros_1/packedPacklstm_37/strided_slice:output:0!lstm_37/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_37/zeros_1/packeds
lstm_37/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_37/zeros_1/Const
lstm_37/zeros_1Filllstm_37/zeros_1/packed:output:0lstm_37/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/zeros_1
lstm_37/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_37/transpose/perm¨
lstm_37/transpose	Transposedropout_20/Identity:output:0lstm_37/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/transposeg
lstm_37/Shape_1Shapelstm_37/transpose:y:0*
T0*
_output_shapes
:2
lstm_37/Shape_1
lstm_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_37/strided_slice_1/stack
lstm_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_1/stack_1
lstm_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_1/stack_2
lstm_37/strided_slice_1StridedSlicelstm_37/Shape_1:output:0&lstm_37/strided_slice_1/stack:output:0(lstm_37/strided_slice_1/stack_1:output:0(lstm_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_37/strided_slice_1
#lstm_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_37/TensorArrayV2/element_shapeÒ
lstm_37/TensorArrayV2TensorListReserve,lstm_37/TensorArrayV2/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_37/TensorArrayV2Ï
=lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_37/transpose:y:0Flstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_37/TensorArrayUnstack/TensorListFromTensor
lstm_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_37/strided_slice_2/stack
lstm_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_2/stack_1
lstm_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_2/stack_2¬
lstm_37/strided_slice_2StridedSlicelstm_37/transpose:y:0&lstm_37/strided_slice_2/stack:output:0(lstm_37/strided_slice_2/stack_1:output:0(lstm_37/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_37/strided_slice_2Ì
*lstm_37/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3lstm_37_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*lstm_37/lstm_cell_37/MatMul/ReadVariableOpÌ
lstm_37/lstm_cell_37/MatMulMatMul lstm_37/strided_slice_2:output:02lstm_37/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/MatMulÒ
,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5lstm_37_lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOpÈ
lstm_37/lstm_cell_37/MatMul_1MatMullstm_37/zeros:output:04lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/MatMul_1¿
lstm_37/lstm_cell_37/addAddV2%lstm_37/lstm_cell_37/MatMul:product:0'lstm_37/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/addË
+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4lstm_37_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOpÌ
lstm_37/lstm_cell_37/BiasAddBiasAddlstm_37/lstm_cell_37/add:z:03lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/BiasAdd
$lstm_37/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_37/lstm_cell_37/split/split_dim
lstm_37/lstm_cell_37/splitSplit-lstm_37/lstm_cell_37/split/split_dim:output:0%lstm_37/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_37/lstm_cell_37/split
lstm_37/lstm_cell_37/SigmoidSigmoid#lstm_37/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/Sigmoid¢
lstm_37/lstm_cell_37/Sigmoid_1Sigmoid#lstm_37/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_37/lstm_cell_37/Sigmoid_1«
lstm_37/lstm_cell_37/mulMul"lstm_37/lstm_cell_37/Sigmoid_1:y:0lstm_37/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/mul
lstm_37/lstm_cell_37/ReluRelu#lstm_37/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/Relu¼
lstm_37/lstm_cell_37/mul_1Mul lstm_37/lstm_cell_37/Sigmoid:y:0'lstm_37/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/mul_1±
lstm_37/lstm_cell_37/add_1AddV2lstm_37/lstm_cell_37/mul:z:0lstm_37/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/add_1¢
lstm_37/lstm_cell_37/Sigmoid_2Sigmoid#lstm_37/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_37/lstm_cell_37/Sigmoid_2
lstm_37/lstm_cell_37/Relu_1Relulstm_37/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/Relu_1À
lstm_37/lstm_cell_37/mul_2Mul"lstm_37/lstm_cell_37/Sigmoid_2:y:0)lstm_37/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/mul_2
%lstm_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_37/TensorArrayV2_1/element_shapeØ
lstm_37/TensorArrayV2_1TensorListReserve.lstm_37/TensorArrayV2_1/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_37/TensorArrayV2_1^
lstm_37/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_37/time
 lstm_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/maximum_iterationsz
lstm_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_37/while/loop_counter
lstm_37/whileWhile#lstm_37/while/loop_counter:output:0)lstm_37/while/maximum_iterations:output:0lstm_37/time:output:0 lstm_37/TensorArrayV2_1:handle:0lstm_37/zeros:output:0lstm_37/zeros_1:output:0 lstm_37/strided_slice_1:output:0?lstm_37/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_37_lstm_cell_37_matmul_readvariableop_resource5lstm_37_lstm_cell_37_matmul_1_readvariableop_resource4lstm_37_lstm_cell_37_biasadd_readvariableop_resource*
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
lstm_37_while_body_358013*%
condR
lstm_37_while_cond_358012*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_37/whileÅ
8lstm_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_37/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_37/TensorArrayV2Stack/TensorListStackTensorListStacklstm_37/while:output:3Alstm_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_37/TensorArrayV2Stack/TensorListStack
lstm_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_37/strided_slice_3/stack
lstm_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_37/strided_slice_3/stack_1
lstm_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_3/stack_2Ê
lstm_37/strided_slice_3StridedSlice3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_37/strided_slice_3/stack:output:0(lstm_37/strided_slice_3/stack_1:output:0(lstm_37/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_37/strided_slice_3
lstm_37/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_37/transpose_1/permÅ
lstm_37/transpose_1	Transpose3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_37/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/transpose_1v
lstm_37/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_37/runtime
dropout_21/IdentityIdentity lstm_37/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_21/Identity¨
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_36/MatMul/ReadVariableOp¤
dense_36/MatMulMatMuldropout_21/Identity:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_36/MatMul§
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_36/BiasAdd/ReadVariableOp¥
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_36/BiasAdds
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_36/Relu¨
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_37/MatMul/ReadVariableOp£
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_37/MatMul§
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_37/BiasAdd/ReadVariableOp¥
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_37/BiasAddm
reshape_18/ShapeShapedense_37/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_18/Shape
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_18/strided_slice/stack
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_1
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_2¤
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_18/strided_slicez
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_18/Reshape/shape/1z
reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_18/Reshape/shape/2×
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0#reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_18/Reshape/shape§
reshape_18/ReshapeReshapedense_37/BiasAdd:output:0!reshape_18/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_18/Reshapez
IdentityIdentityreshape_18/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp,^lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp+^lstm_36/lstm_cell_36/MatMul/ReadVariableOp-^lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp^lstm_36/while,^lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp+^lstm_37/lstm_cell_37/MatMul/ReadVariableOp-^lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp^lstm_37/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2Z
+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp2X
*lstm_36/lstm_cell_36/MatMul/ReadVariableOp*lstm_36/lstm_cell_36/MatMul/ReadVariableOp2\
,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp2
lstm_36/whilelstm_36/while2Z
+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp2X
*lstm_37/lstm_cell_37/MatMul/ReadVariableOp*lstm_37/lstm_cell_37/MatMul/ReadVariableOp2\
,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp2
lstm_37/whilelstm_37/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_358869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_36_matmul_readvariableop_resource_0: G
5while_lstm_cell_36_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_36_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_36_matmul_readvariableop_resource: E
3while_lstm_cell_36_matmul_1_readvariableop_resource: @
2while_lstm_cell_36_biasadd_readvariableop_resource: ¢)while/lstm_cell_36/BiasAdd/ReadVariableOp¢(while/lstm_cell_36/MatMul/ReadVariableOp¢*while/lstm_cell_36/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_36/MatMul/ReadVariableOpÖ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulÎ
*while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_36/MatMul_1/ReadVariableOp¿
while/lstm_cell_36/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/MatMul:product:0%while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/addÇ
)while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_36/BiasAdd/ReadVariableOpÄ
while/lstm_cell_36/BiasAddBiasAddwhile/lstm_cell_36/add:z:01while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dim
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0#while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_36/split
while/lstm_cell_36/SigmoidSigmoid!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid
while/lstm_cell_36/Sigmoid_1Sigmoid!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_1 
while/lstm_cell_36/mulMul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul
while/lstm_cell_36/ReluRelu!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_1Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/add_1AddV2while/lstm_cell_36/mul:z:0while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_2Sigmoid!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_2Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_36/BiasAdd/ReadVariableOp)^while/lstm_cell_36/MatMul/ReadVariableOp+^while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_36_biasadd_readvariableop_resource4while_lstm_cell_36_biasadd_readvariableop_resource_0"l
3while_lstm_cell_36_matmul_1_readvariableop_resource5while_lstm_cell_36_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_36_matmul_readvariableop_resource3while_lstm_cell_36_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_36/BiasAdd/ReadVariableOp)while/lstm_cell_36/BiasAdd/ReadVariableOp2T
(while/lstm_cell_36/MatMul/ReadVariableOp(while/lstm_cell_36/MatMul/ReadVariableOp2X
*while/lstm_cell_36/MatMul_1/ReadVariableOp*while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_36_while_cond_358186,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3.
*lstm_36_while_less_lstm_36_strided_slice_1D
@lstm_36_while_lstm_36_while_cond_358186___redundant_placeholder0D
@lstm_36_while_lstm_36_while_cond_358186___redundant_placeholder1D
@lstm_36_while_lstm_36_while_cond_358186___redundant_placeholder2D
@lstm_36_while_lstm_36_while_cond_358186___redundant_placeholder3
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
while_body_358567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_36_matmul_readvariableop_resource_0: G
5while_lstm_cell_36_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_36_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_36_matmul_readvariableop_resource: E
3while_lstm_cell_36_matmul_1_readvariableop_resource: @
2while_lstm_cell_36_biasadd_readvariableop_resource: ¢)while/lstm_cell_36/BiasAdd/ReadVariableOp¢(while/lstm_cell_36/MatMul/ReadVariableOp¢*while/lstm_cell_36/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_36/MatMul/ReadVariableOpÖ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulÎ
*while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_36/MatMul_1/ReadVariableOp¿
while/lstm_cell_36/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/MatMul:product:0%while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/addÇ
)while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_36/BiasAdd/ReadVariableOpÄ
while/lstm_cell_36/BiasAddBiasAddwhile/lstm_cell_36/add:z:01while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dim
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0#while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_36/split
while/lstm_cell_36/SigmoidSigmoid!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid
while/lstm_cell_36/Sigmoid_1Sigmoid!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_1 
while/lstm_cell_36/mulMul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul
while/lstm_cell_36/ReluRelu!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_1Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/add_1AddV2while/lstm_cell_36/mul:z:0while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_2Sigmoid!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_2Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_36/BiasAdd/ReadVariableOp)^while/lstm_cell_36/MatMul/ReadVariableOp+^while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_36_biasadd_readvariableop_resource4while_lstm_cell_36_biasadd_readvariableop_resource_0"l
3while_lstm_cell_36_matmul_1_readvariableop_resource5while_lstm_cell_36_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_36_matmul_readvariableop_resource3while_lstm_cell_36_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_36/BiasAdd/ReadVariableOp)while/lstm_cell_36/BiasAdd/ReadVariableOp2T
(while/lstm_cell_36/MatMul/ReadVariableOp(while/lstm_cell_36/MatMul/ReadVariableOp2X
*while/lstm_cell_36/MatMul_1/ReadVariableOp*while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_357342

inputs=
+lstm_cell_37_matmul_readvariableop_resource: ?
-lstm_cell_37_matmul_1_readvariableop_resource: :
,lstm_cell_37_biasadd_readvariableop_resource: 
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_37/MatMul/ReadVariableOp¬
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMulº
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_37/MatMul_1/ReadVariableOp¨
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMul_1
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/add³
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_37/BiasAdd/ReadVariableOp¬
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/BiasAdd~
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_37/split/split_dimó
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_37/split
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_1
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul}
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_1
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/add_1
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_2|
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu_1 
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
while_body_357258*
condR
while_cond_357257*K
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

õ
D__inference_dense_37_layer_call_and_return_conditional_losses_359845

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
Ü[

C__inference_lstm_37_layer_call_and_return_conditional_losses_359779

inputs=
+lstm_cell_37_matmul_readvariableop_resource: ?
-lstm_cell_37_matmul_1_readvariableop_resource: :
,lstm_cell_37_biasadd_readvariableop_resource: 
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_37/MatMul/ReadVariableOp¬
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMulº
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_37/MatMul_1/ReadVariableOp¨
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMul_1
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/add³
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_37/BiasAdd/ReadVariableOp¬
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/BiasAdd~
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_37/split/split_dimó
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_37/split
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_1
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul}
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_1
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/add_1
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_2|
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu_1 
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
while_body_359695*
condR
while_cond_359694*K
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
G
+__inference_dropout_21_layer_call_fn_359784

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
F__inference_dropout_21_layer_call_and_return_conditional_losses_3570552
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
é

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_356311

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
?
Ê
while_body_356958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_37_matmul_readvariableop_resource_0: G
5while_lstm_cell_37_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_37_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_37_matmul_readvariableop_resource: E
3while_lstm_cell_37_matmul_1_readvariableop_resource: @
2while_lstm_cell_37_biasadd_readvariableop_resource: ¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_37/MatMul/ReadVariableOpÖ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMulÎ
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_37/MatMul_1/ReadVariableOp¿
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMul_1·
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/addÇ
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_37/BiasAdd/ReadVariableOpÄ
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/BiasAdd
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_37/split/split_dim
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_37/split
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_1 
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu´
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_1©
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/add_1
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_2
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu_1¸
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_358717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358717___redundant_placeholder04
0while_while_cond_358717___redundant_placeholder14
0while_while_cond_358717___redundant_placeholder24
0while_while_cond_358717___redundant_placeholder3
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
)__inference_dense_37_layer_call_fn_359835

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
D__inference_dense_37_layer_call_and_return_conditional_losses_3570842
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
?
Ê
while_body_358718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_36_matmul_readvariableop_resource_0: G
5while_lstm_cell_36_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_36_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_36_matmul_readvariableop_resource: E
3while_lstm_cell_36_matmul_1_readvariableop_resource: @
2while_lstm_cell_36_biasadd_readvariableop_resource: ¢)while/lstm_cell_36/BiasAdd/ReadVariableOp¢(while/lstm_cell_36/MatMul/ReadVariableOp¢*while/lstm_cell_36/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_36/MatMul/ReadVariableOpÖ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulÎ
*while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_36/MatMul_1/ReadVariableOp¿
while/lstm_cell_36/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/MatMul:product:0%while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/addÇ
)while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_36/BiasAdd/ReadVariableOpÄ
while/lstm_cell_36/BiasAddBiasAddwhile/lstm_cell_36/add:z:01while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dim
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0#while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_36/split
while/lstm_cell_36/SigmoidSigmoid!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid
while/lstm_cell_36/Sigmoid_1Sigmoid!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_1 
while/lstm_cell_36/mulMul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul
while/lstm_cell_36/ReluRelu!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_1Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/add_1AddV2while/lstm_cell_36/mul:z:0while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_2Sigmoid!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_2Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_36/BiasAdd/ReadVariableOp)^while/lstm_cell_36/MatMul/ReadVariableOp+^while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_36_biasadd_readvariableop_resource4while_lstm_cell_36_biasadd_readvariableop_resource_0"l
3while_lstm_cell_36_matmul_1_readvariableop_resource5while_lstm_cell_36_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_36_matmul_readvariableop_resource3while_lstm_cell_36_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_36/BiasAdd/ReadVariableOp)while/lstm_cell_36/BiasAdd/ReadVariableOp2T
(while/lstm_cell_36/MatMul/ReadVariableOp(while/lstm_cell_36/MatMul/ReadVariableOp2X
*while/lstm_cell_36/MatMul_1/ReadVariableOp*while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ë
û
'sequential_13_lstm_36_while_cond_355204H
Dsequential_13_lstm_36_while_sequential_13_lstm_36_while_loop_counterN
Jsequential_13_lstm_36_while_sequential_13_lstm_36_while_maximum_iterations+
'sequential_13_lstm_36_while_placeholder-
)sequential_13_lstm_36_while_placeholder_1-
)sequential_13_lstm_36_while_placeholder_2-
)sequential_13_lstm_36_while_placeholder_3J
Fsequential_13_lstm_36_while_less_sequential_13_lstm_36_strided_slice_1`
\sequential_13_lstm_36_while_sequential_13_lstm_36_while_cond_355204___redundant_placeholder0`
\sequential_13_lstm_36_while_sequential_13_lstm_36_while_cond_355204___redundant_placeholder1`
\sequential_13_lstm_36_while_sequential_13_lstm_36_while_cond_355204___redundant_placeholder2`
\sequential_13_lstm_36_while_sequential_13_lstm_36_while_cond_355204___redundant_placeholder3(
$sequential_13_lstm_36_while_identity
Þ
 sequential_13/lstm_36/while/LessLess'sequential_13_lstm_36_while_placeholderFsequential_13_lstm_36_while_less_sequential_13_lstm_36_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_13/lstm_36/while/Less
$sequential_13/lstm_36/while/IdentityIdentity$sequential_13/lstm_36/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_13/lstm_36/while/Identity"U
$sequential_13_lstm_36_while_identity-sequential_13/lstm_36/while/Identity:output:0*(
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
while_body_357454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_36_matmul_readvariableop_resource_0: G
5while_lstm_cell_36_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_36_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_36_matmul_readvariableop_resource: E
3while_lstm_cell_36_matmul_1_readvariableop_resource: @
2while_lstm_cell_36_biasadd_readvariableop_resource: ¢)while/lstm_cell_36/BiasAdd/ReadVariableOp¢(while/lstm_cell_36/MatMul/ReadVariableOp¢*while/lstm_cell_36/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_36/MatMul/ReadVariableOpÖ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulÎ
*while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_36/MatMul_1/ReadVariableOp¿
while/lstm_cell_36/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/MatMul:product:0%while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/addÇ
)while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_36/BiasAdd/ReadVariableOpÄ
while/lstm_cell_36/BiasAddBiasAddwhile/lstm_cell_36/add:z:01while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dim
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0#while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_36/split
while/lstm_cell_36/SigmoidSigmoid!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid
while/lstm_cell_36/Sigmoid_1Sigmoid!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_1 
while/lstm_cell_36/mulMul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul
while/lstm_cell_36/ReluRelu!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_1Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/add_1AddV2while/lstm_cell_36/mul:z:0while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_2Sigmoid!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_2Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_36/BiasAdd/ReadVariableOp)^while/lstm_cell_36/MatMul/ReadVariableOp+^while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_36_biasadd_readvariableop_resource4while_lstm_cell_36_biasadd_readvariableop_resource_0"l
3while_lstm_cell_36_matmul_1_readvariableop_resource5while_lstm_cell_36_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_36_matmul_readvariableop_resource3while_lstm_cell_36_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_36/BiasAdd/ReadVariableOp)while/lstm_cell_36/BiasAdd/ReadVariableOp2T
(while/lstm_cell_36/MatMul/ReadVariableOp(while/lstm_cell_36/MatMul/ReadVariableOp2X
*while/lstm_cell_36/MatMul_1/ReadVariableOp*while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_357257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357257___redundant_placeholder04
0while_while_cond_357257___redundant_placeholder14
0while_while_cond_357257___redundant_placeholder24
0while_while_cond_357257___redundant_placeholder3
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
while_body_359020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_36_matmul_readvariableop_resource_0: G
5while_lstm_cell_36_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_36_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_36_matmul_readvariableop_resource: E
3while_lstm_cell_36_matmul_1_readvariableop_resource: @
2while_lstm_cell_36_biasadd_readvariableop_resource: ¢)while/lstm_cell_36/BiasAdd/ReadVariableOp¢(while/lstm_cell_36/MatMul/ReadVariableOp¢*while/lstm_cell_36/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_36/MatMul/ReadVariableOpÖ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulÎ
*while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_36/MatMul_1/ReadVariableOp¿
while/lstm_cell_36/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/MatMul:product:0%while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/addÇ
)while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_36/BiasAdd/ReadVariableOpÄ
while/lstm_cell_36/BiasAddBiasAddwhile/lstm_cell_36/add:z:01while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dim
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0#while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_36/split
while/lstm_cell_36/SigmoidSigmoid!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid
while/lstm_cell_36/Sigmoid_1Sigmoid!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_1 
while/lstm_cell_36/mulMul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul
while/lstm_cell_36/ReluRelu!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_1Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/add_1AddV2while/lstm_cell_36/mul:z:0while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_2Sigmoid!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_2Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_36/BiasAdd/ReadVariableOp)^while/lstm_cell_36/MatMul/ReadVariableOp+^while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_36_biasadd_readvariableop_resource4while_lstm_cell_36_biasadd_readvariableop_resource_0"l
3while_lstm_cell_36_matmul_1_readvariableop_resource5while_lstm_cell_36_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_36_matmul_readvariableop_resource3while_lstm_cell_36_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_36/BiasAdd/ReadVariableOp)while/lstm_cell_36/BiasAdd/ReadVariableOp2T
(while/lstm_cell_36/MatMul/ReadVariableOp(while/lstm_cell_36/MatMul/ReadVariableOp2X
*while/lstm_cell_36/MatMul_1/ReadVariableOp*while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
£
²
(__inference_lstm_37_layer_call_fn_359175

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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3573422
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
³
ó
-__inference_lstm_cell_36_layer_call_fn_359897

inputs
states_0
states_1
unknown: 
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_3556812
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
Æ

ã
lstm_37_while_cond_358341,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3.
*lstm_37_while_less_lstm_37_strided_slice_1D
@lstm_37_while_lstm_37_while_cond_358341___redundant_placeholder0D
@lstm_37_while_lstm_37_while_cond_358341___redundant_placeholder1D
@lstm_37_while_lstm_37_while_cond_358341___redundant_placeholder2D
@lstm_37_while_lstm_37_while_cond_358341___redundant_placeholder3
lstm_37_while_identity

lstm_37/while/LessLesslstm_37_while_placeholder*lstm_37_while_less_lstm_37_strided_slice_1*
T0*
_output_shapes
: 2
lstm_37/while/Lessu
lstm_37/while/IdentityIdentitylstm_37/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_37/while/Identity"9
lstm_37_while_identitylstm_37/while/Identity:output:0*(
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_355681

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
?
Ê
while_body_359393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_37_matmul_readvariableop_resource_0: G
5while_lstm_cell_37_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_37_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_37_matmul_readvariableop_resource: E
3while_lstm_cell_37_matmul_1_readvariableop_resource: @
2while_lstm_cell_37_biasadd_readvariableop_resource: ¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_37/MatMul/ReadVariableOpÖ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMulÎ
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_37/MatMul_1/ReadVariableOp¿
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMul_1·
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/addÇ
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_37/BiasAdd/ReadVariableOpÄ
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/BiasAdd
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_37/split/split_dim
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_37/split
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_1 
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu´
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_1©
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/add_1
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_2
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu_1¸
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ë
û
'sequential_13_lstm_37_while_cond_355352H
Dsequential_13_lstm_37_while_sequential_13_lstm_37_while_loop_counterN
Jsequential_13_lstm_37_while_sequential_13_lstm_37_while_maximum_iterations+
'sequential_13_lstm_37_while_placeholder-
)sequential_13_lstm_37_while_placeholder_1-
)sequential_13_lstm_37_while_placeholder_2-
)sequential_13_lstm_37_while_placeholder_3J
Fsequential_13_lstm_37_while_less_sequential_13_lstm_37_strided_slice_1`
\sequential_13_lstm_37_while_sequential_13_lstm_37_while_cond_355352___redundant_placeholder0`
\sequential_13_lstm_37_while_sequential_13_lstm_37_while_cond_355352___redundant_placeholder1`
\sequential_13_lstm_37_while_sequential_13_lstm_37_while_cond_355352___redundant_placeholder2`
\sequential_13_lstm_37_while_sequential_13_lstm_37_while_cond_355352___redundant_placeholder3(
$sequential_13_lstm_37_while_identity
Þ
 sequential_13/lstm_37/while/LessLess'sequential_13_lstm_37_while_placeholderFsequential_13_lstm_37_while_less_sequential_13_lstm_37_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_13/lstm_37/while/Less
$sequential_13/lstm_37/while/IdentityIdentity$sequential_13/lstm_37/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_13/lstm_37/while/Identity"U
$sequential_13_lstm_37_while_identity-sequential_13/lstm_37/while/Identity:output:0*(
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
while_body_359242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_37_matmul_readvariableop_resource_0: G
5while_lstm_cell_37_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_37_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_37_matmul_readvariableop_resource: E
3while_lstm_cell_37_matmul_1_readvariableop_resource: @
2while_lstm_cell_37_biasadd_readvariableop_resource: ¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_37/MatMul/ReadVariableOpÖ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMulÎ
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_37/MatMul_1/ReadVariableOp¿
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMul_1·
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/addÇ
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_37/BiasAdd/ReadVariableOpÄ
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/BiasAdd
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_37/split/split_dim
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_37/split
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_1 
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu´
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_1©
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/add_1
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_2
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu_1¸
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ó
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_359794

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
¬
e
F__inference_dropout_21_layer_call_and_return_conditional_losses_359806

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
ò!
¼
I__inference_sequential_13_layer_call_and_return_conditional_losses_357684
input_17 
lstm_36_357656:  
lstm_36_357658: 
lstm_36_357660:  
lstm_37_357664:  
lstm_37_357666: 
lstm_37_357668: !
dense_36_357672:
dense_36_357674:!
dense_37_357677:
dense_37_357679:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢lstm_36/StatefulPartitionedCall¢lstm_37/StatefulPartitionedCall§
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinput_17lstm_36_357656lstm_36_357658lstm_36_357660*
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3568772!
lstm_36/StatefulPartitionedCall
dropout_20/PartitionedCallPartitionedCall(lstm_36/StatefulPartitionedCall:output:0*
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_3568902
dropout_20/PartitionedCall¾
lstm_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0lstm_37_357664lstm_37_357666lstm_37_357668*
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3570422!
lstm_37/StatefulPartitionedCallü
dropout_21/PartitionedCallPartitionedCall(lstm_37/StatefulPartitionedCall:output:0*
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
F__inference_dropout_21_layer_call_and_return_conditional_losses_3570552
dropout_21/PartitionedCall±
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0dense_36_357672dense_36_357674*
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
D__inference_dense_36_layer_call_and_return_conditional_losses_3570682"
 dense_36/StatefulPartitionedCall·
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_357677dense_37_357679*
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
D__inference_dense_37_layer_call_and_return_conditional_losses_3570842"
 dense_37/StatefulPartitionedCall
reshape_18/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
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
F__inference_reshape_18_layer_call_and_return_conditional_losses_3571032
reshape_18/PartitionedCall
IdentityIdentity#reshape_18/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_17
Õ
Ã
while_cond_355548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_355548___redundant_placeholder04
0while_while_cond_355548___redundant_placeholder14
0while_while_cond_355548___redundant_placeholder24
0while_while_cond_355548___redundant_placeholder3
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
Ö
´
(__inference_lstm_36_layer_call_fn_358467
inputs_0
unknown: 
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3556182
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
å

ù
.__inference_sequential_13_layer_call_fn_357129
input_17
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_3571062
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
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_17
Õ
Ã
while_cond_355758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_355758___redundant_placeholder04
0while_while_cond_355758___redundant_placeholder14
0while_while_cond_355758___redundant_placeholder24
0while_while_cond_355758___redundant_placeholder3
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
Ð¯
¾
!__inference__wrapped_model_355460
input_17S
Asequential_13_lstm_36_lstm_cell_36_matmul_readvariableop_resource: U
Csequential_13_lstm_36_lstm_cell_36_matmul_1_readvariableop_resource: P
Bsequential_13_lstm_36_lstm_cell_36_biasadd_readvariableop_resource: S
Asequential_13_lstm_37_lstm_cell_37_matmul_readvariableop_resource: U
Csequential_13_lstm_37_lstm_cell_37_matmul_1_readvariableop_resource: P
Bsequential_13_lstm_37_lstm_cell_37_biasadd_readvariableop_resource: G
5sequential_13_dense_36_matmul_readvariableop_resource:D
6sequential_13_dense_36_biasadd_readvariableop_resource:G
5sequential_13_dense_37_matmul_readvariableop_resource:D
6sequential_13_dense_37_biasadd_readvariableop_resource:
identity¢-sequential_13/dense_36/BiasAdd/ReadVariableOp¢,sequential_13/dense_36/MatMul/ReadVariableOp¢-sequential_13/dense_37/BiasAdd/ReadVariableOp¢,sequential_13/dense_37/MatMul/ReadVariableOp¢9sequential_13/lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp¢8sequential_13/lstm_36/lstm_cell_36/MatMul/ReadVariableOp¢:sequential_13/lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp¢sequential_13/lstm_36/while¢9sequential_13/lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp¢8sequential_13/lstm_37/lstm_cell_37/MatMul/ReadVariableOp¢:sequential_13/lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp¢sequential_13/lstm_37/whiler
sequential_13/lstm_36/ShapeShapeinput_17*
T0*
_output_shapes
:2
sequential_13/lstm_36/Shape 
)sequential_13/lstm_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_13/lstm_36/strided_slice/stack¤
+sequential_13/lstm_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_13/lstm_36/strided_slice/stack_1¤
+sequential_13/lstm_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_13/lstm_36/strided_slice/stack_2æ
#sequential_13/lstm_36/strided_sliceStridedSlice$sequential_13/lstm_36/Shape:output:02sequential_13/lstm_36/strided_slice/stack:output:04sequential_13/lstm_36/strided_slice/stack_1:output:04sequential_13/lstm_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_13/lstm_36/strided_slice
!sequential_13/lstm_36/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_13/lstm_36/zeros/mul/yÄ
sequential_13/lstm_36/zeros/mulMul,sequential_13/lstm_36/strided_slice:output:0*sequential_13/lstm_36/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_13/lstm_36/zeros/mul
"sequential_13/lstm_36/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_13/lstm_36/zeros/Less/y¿
 sequential_13/lstm_36/zeros/LessLess#sequential_13/lstm_36/zeros/mul:z:0+sequential_13/lstm_36/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_13/lstm_36/zeros/Less
$sequential_13/lstm_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_13/lstm_36/zeros/packed/1Û
"sequential_13/lstm_36/zeros/packedPack,sequential_13/lstm_36/strided_slice:output:0-sequential_13/lstm_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_13/lstm_36/zeros/packed
!sequential_13/lstm_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_13/lstm_36/zeros/ConstÍ
sequential_13/lstm_36/zerosFill+sequential_13/lstm_36/zeros/packed:output:0*sequential_13/lstm_36/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/lstm_36/zeros
#sequential_13/lstm_36/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_13/lstm_36/zeros_1/mul/yÊ
!sequential_13/lstm_36/zeros_1/mulMul,sequential_13/lstm_36/strided_slice:output:0,sequential_13/lstm_36/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_13/lstm_36/zeros_1/mul
$sequential_13/lstm_36/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_13/lstm_36/zeros_1/Less/yÇ
"sequential_13/lstm_36/zeros_1/LessLess%sequential_13/lstm_36/zeros_1/mul:z:0-sequential_13/lstm_36/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_13/lstm_36/zeros_1/Less
&sequential_13/lstm_36/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_13/lstm_36/zeros_1/packed/1á
$sequential_13/lstm_36/zeros_1/packedPack,sequential_13/lstm_36/strided_slice:output:0/sequential_13/lstm_36/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_13/lstm_36/zeros_1/packed
#sequential_13/lstm_36/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_13/lstm_36/zeros_1/ConstÕ
sequential_13/lstm_36/zeros_1Fill-sequential_13/lstm_36/zeros_1/packed:output:0,sequential_13/lstm_36/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/lstm_36/zeros_1¡
$sequential_13/lstm_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_13/lstm_36/transpose/perm¾
sequential_13/lstm_36/transpose	Transposeinput_17-sequential_13/lstm_36/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_13/lstm_36/transpose
sequential_13/lstm_36/Shape_1Shape#sequential_13/lstm_36/transpose:y:0*
T0*
_output_shapes
:2
sequential_13/lstm_36/Shape_1¤
+sequential_13/lstm_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_13/lstm_36/strided_slice_1/stack¨
-sequential_13/lstm_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_36/strided_slice_1/stack_1¨
-sequential_13/lstm_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_36/strided_slice_1/stack_2ò
%sequential_13/lstm_36/strided_slice_1StridedSlice&sequential_13/lstm_36/Shape_1:output:04sequential_13/lstm_36/strided_slice_1/stack:output:06sequential_13/lstm_36/strided_slice_1/stack_1:output:06sequential_13/lstm_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_13/lstm_36/strided_slice_1±
1sequential_13/lstm_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_13/lstm_36/TensorArrayV2/element_shape
#sequential_13/lstm_36/TensorArrayV2TensorListReserve:sequential_13/lstm_36/TensorArrayV2/element_shape:output:0.sequential_13/lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_13/lstm_36/TensorArrayV2ë
Ksequential_13/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_13/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_13/lstm_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_13/lstm_36/transpose:y:0Tsequential_13/lstm_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_13/lstm_36/TensorArrayUnstack/TensorListFromTensor¤
+sequential_13/lstm_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_13/lstm_36/strided_slice_2/stack¨
-sequential_13/lstm_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_36/strided_slice_2/stack_1¨
-sequential_13/lstm_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_36/strided_slice_2/stack_2
%sequential_13/lstm_36/strided_slice_2StridedSlice#sequential_13/lstm_36/transpose:y:04sequential_13/lstm_36/strided_slice_2/stack:output:06sequential_13/lstm_36/strided_slice_2/stack_1:output:06sequential_13/lstm_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_13/lstm_36/strided_slice_2ö
8sequential_13/lstm_36/lstm_cell_36/MatMul/ReadVariableOpReadVariableOpAsequential_13_lstm_36_lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02:
8sequential_13/lstm_36/lstm_cell_36/MatMul/ReadVariableOp
)sequential_13/lstm_36/lstm_cell_36/MatMulMatMul.sequential_13/lstm_36/strided_slice_2:output:0@sequential_13/lstm_36/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_13/lstm_36/lstm_cell_36/MatMulü
:sequential_13/lstm_36/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOpCsequential_13_lstm_36_lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02<
:sequential_13/lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp
+sequential_13/lstm_36/lstm_cell_36/MatMul_1MatMul$sequential_13/lstm_36/zeros:output:0Bsequential_13/lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_13/lstm_36/lstm_cell_36/MatMul_1÷
&sequential_13/lstm_36/lstm_cell_36/addAddV23sequential_13/lstm_36/lstm_cell_36/MatMul:product:05sequential_13/lstm_36/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_13/lstm_36/lstm_cell_36/addõ
9sequential_13/lstm_36/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOpBsequential_13_lstm_36_lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_13/lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp
*sequential_13/lstm_36/lstm_cell_36/BiasAddBiasAdd*sequential_13/lstm_36/lstm_cell_36/add:z:0Asequential_13/lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_13/lstm_36/lstm_cell_36/BiasAddª
2sequential_13/lstm_36/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_13/lstm_36/lstm_cell_36/split/split_dimË
(sequential_13/lstm_36/lstm_cell_36/splitSplit;sequential_13/lstm_36/lstm_cell_36/split/split_dim:output:03sequential_13/lstm_36/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_13/lstm_36/lstm_cell_36/splitÈ
*sequential_13/lstm_36/lstm_cell_36/SigmoidSigmoid1sequential_13/lstm_36/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_13/lstm_36/lstm_cell_36/SigmoidÌ
,sequential_13/lstm_36/lstm_cell_36/Sigmoid_1Sigmoid1sequential_13/lstm_36/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_13/lstm_36/lstm_cell_36/Sigmoid_1ã
&sequential_13/lstm_36/lstm_cell_36/mulMul0sequential_13/lstm_36/lstm_cell_36/Sigmoid_1:y:0&sequential_13/lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_13/lstm_36/lstm_cell_36/mul¿
'sequential_13/lstm_36/lstm_cell_36/ReluRelu1sequential_13/lstm_36/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_13/lstm_36/lstm_cell_36/Reluô
(sequential_13/lstm_36/lstm_cell_36/mul_1Mul.sequential_13/lstm_36/lstm_cell_36/Sigmoid:y:05sequential_13/lstm_36/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_13/lstm_36/lstm_cell_36/mul_1é
(sequential_13/lstm_36/lstm_cell_36/add_1AddV2*sequential_13/lstm_36/lstm_cell_36/mul:z:0,sequential_13/lstm_36/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_13/lstm_36/lstm_cell_36/add_1Ì
,sequential_13/lstm_36/lstm_cell_36/Sigmoid_2Sigmoid1sequential_13/lstm_36/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_13/lstm_36/lstm_cell_36/Sigmoid_2¾
)sequential_13/lstm_36/lstm_cell_36/Relu_1Relu,sequential_13/lstm_36/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_13/lstm_36/lstm_cell_36/Relu_1ø
(sequential_13/lstm_36/lstm_cell_36/mul_2Mul0sequential_13/lstm_36/lstm_cell_36/Sigmoid_2:y:07sequential_13/lstm_36/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_13/lstm_36/lstm_cell_36/mul_2»
3sequential_13/lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_13/lstm_36/TensorArrayV2_1/element_shape
%sequential_13/lstm_36/TensorArrayV2_1TensorListReserve<sequential_13/lstm_36/TensorArrayV2_1/element_shape:output:0.sequential_13/lstm_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_13/lstm_36/TensorArrayV2_1z
sequential_13/lstm_36/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_13/lstm_36/time«
.sequential_13/lstm_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_36/while/maximum_iterations
(sequential_13/lstm_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_13/lstm_36/while/loop_counterÕ
sequential_13/lstm_36/whileWhile1sequential_13/lstm_36/while/loop_counter:output:07sequential_13/lstm_36/while/maximum_iterations:output:0#sequential_13/lstm_36/time:output:0.sequential_13/lstm_36/TensorArrayV2_1:handle:0$sequential_13/lstm_36/zeros:output:0&sequential_13/lstm_36/zeros_1:output:0.sequential_13/lstm_36/strided_slice_1:output:0Msequential_13/lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_13_lstm_36_lstm_cell_36_matmul_readvariableop_resourceCsequential_13_lstm_36_lstm_cell_36_matmul_1_readvariableop_resourceBsequential_13_lstm_36_lstm_cell_36_biasadd_readvariableop_resource*
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
'sequential_13_lstm_36_while_body_355205*3
cond+R)
'sequential_13_lstm_36_while_cond_355204*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_13/lstm_36/whileá
Fsequential_13/lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_13/lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_13/lstm_36/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_13/lstm_36/while:output:3Osequential_13/lstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_13/lstm_36/TensorArrayV2Stack/TensorListStack­
+sequential_13/lstm_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_13/lstm_36/strided_slice_3/stack¨
-sequential_13/lstm_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_13/lstm_36/strided_slice_3/stack_1¨
-sequential_13/lstm_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_36/strided_slice_3/stack_2
%sequential_13/lstm_36/strided_slice_3StridedSliceAsequential_13/lstm_36/TensorArrayV2Stack/TensorListStack:tensor:04sequential_13/lstm_36/strided_slice_3/stack:output:06sequential_13/lstm_36/strided_slice_3/stack_1:output:06sequential_13/lstm_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_13/lstm_36/strided_slice_3¥
&sequential_13/lstm_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_13/lstm_36/transpose_1/permý
!sequential_13/lstm_36/transpose_1	TransposeAsequential_13/lstm_36/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_13/lstm_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_13/lstm_36/transpose_1
sequential_13/lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_13/lstm_36/runtime¯
!sequential_13/dropout_20/IdentityIdentity%sequential_13/lstm_36/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_13/dropout_20/Identity
sequential_13/lstm_37/ShapeShape*sequential_13/dropout_20/Identity:output:0*
T0*
_output_shapes
:2
sequential_13/lstm_37/Shape 
)sequential_13/lstm_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_13/lstm_37/strided_slice/stack¤
+sequential_13/lstm_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_13/lstm_37/strided_slice/stack_1¤
+sequential_13/lstm_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_13/lstm_37/strided_slice/stack_2æ
#sequential_13/lstm_37/strided_sliceStridedSlice$sequential_13/lstm_37/Shape:output:02sequential_13/lstm_37/strided_slice/stack:output:04sequential_13/lstm_37/strided_slice/stack_1:output:04sequential_13/lstm_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_13/lstm_37/strided_slice
!sequential_13/lstm_37/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_13/lstm_37/zeros/mul/yÄ
sequential_13/lstm_37/zeros/mulMul,sequential_13/lstm_37/strided_slice:output:0*sequential_13/lstm_37/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_13/lstm_37/zeros/mul
"sequential_13/lstm_37/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_13/lstm_37/zeros/Less/y¿
 sequential_13/lstm_37/zeros/LessLess#sequential_13/lstm_37/zeros/mul:z:0+sequential_13/lstm_37/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_13/lstm_37/zeros/Less
$sequential_13/lstm_37/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_13/lstm_37/zeros/packed/1Û
"sequential_13/lstm_37/zeros/packedPack,sequential_13/lstm_37/strided_slice:output:0-sequential_13/lstm_37/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_13/lstm_37/zeros/packed
!sequential_13/lstm_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_13/lstm_37/zeros/ConstÍ
sequential_13/lstm_37/zerosFill+sequential_13/lstm_37/zeros/packed:output:0*sequential_13/lstm_37/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/lstm_37/zeros
#sequential_13/lstm_37/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_13/lstm_37/zeros_1/mul/yÊ
!sequential_13/lstm_37/zeros_1/mulMul,sequential_13/lstm_37/strided_slice:output:0,sequential_13/lstm_37/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_13/lstm_37/zeros_1/mul
$sequential_13/lstm_37/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_13/lstm_37/zeros_1/Less/yÇ
"sequential_13/lstm_37/zeros_1/LessLess%sequential_13/lstm_37/zeros_1/mul:z:0-sequential_13/lstm_37/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_13/lstm_37/zeros_1/Less
&sequential_13/lstm_37/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_13/lstm_37/zeros_1/packed/1á
$sequential_13/lstm_37/zeros_1/packedPack,sequential_13/lstm_37/strided_slice:output:0/sequential_13/lstm_37/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_13/lstm_37/zeros_1/packed
#sequential_13/lstm_37/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_13/lstm_37/zeros_1/ConstÕ
sequential_13/lstm_37/zeros_1Fill-sequential_13/lstm_37/zeros_1/packed:output:0,sequential_13/lstm_37/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/lstm_37/zeros_1¡
$sequential_13/lstm_37/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_13/lstm_37/transpose/permà
sequential_13/lstm_37/transpose	Transpose*sequential_13/dropout_20/Identity:output:0-sequential_13/lstm_37/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_13/lstm_37/transpose
sequential_13/lstm_37/Shape_1Shape#sequential_13/lstm_37/transpose:y:0*
T0*
_output_shapes
:2
sequential_13/lstm_37/Shape_1¤
+sequential_13/lstm_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_13/lstm_37/strided_slice_1/stack¨
-sequential_13/lstm_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_37/strided_slice_1/stack_1¨
-sequential_13/lstm_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_37/strided_slice_1/stack_2ò
%sequential_13/lstm_37/strided_slice_1StridedSlice&sequential_13/lstm_37/Shape_1:output:04sequential_13/lstm_37/strided_slice_1/stack:output:06sequential_13/lstm_37/strided_slice_1/stack_1:output:06sequential_13/lstm_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_13/lstm_37/strided_slice_1±
1sequential_13/lstm_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_13/lstm_37/TensorArrayV2/element_shape
#sequential_13/lstm_37/TensorArrayV2TensorListReserve:sequential_13/lstm_37/TensorArrayV2/element_shape:output:0.sequential_13/lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_13/lstm_37/TensorArrayV2ë
Ksequential_13/lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_13/lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_13/lstm_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_13/lstm_37/transpose:y:0Tsequential_13/lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_13/lstm_37/TensorArrayUnstack/TensorListFromTensor¤
+sequential_13/lstm_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_13/lstm_37/strided_slice_2/stack¨
-sequential_13/lstm_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_37/strided_slice_2/stack_1¨
-sequential_13/lstm_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_37/strided_slice_2/stack_2
%sequential_13/lstm_37/strided_slice_2StridedSlice#sequential_13/lstm_37/transpose:y:04sequential_13/lstm_37/strided_slice_2/stack:output:06sequential_13/lstm_37/strided_slice_2/stack_1:output:06sequential_13/lstm_37/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_13/lstm_37/strided_slice_2ö
8sequential_13/lstm_37/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpAsequential_13_lstm_37_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02:
8sequential_13/lstm_37/lstm_cell_37/MatMul/ReadVariableOp
)sequential_13/lstm_37/lstm_cell_37/MatMulMatMul.sequential_13/lstm_37/strided_slice_2:output:0@sequential_13/lstm_37/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_13/lstm_37/lstm_cell_37/MatMulü
:sequential_13/lstm_37/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpCsequential_13_lstm_37_lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02<
:sequential_13/lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp
+sequential_13/lstm_37/lstm_cell_37/MatMul_1MatMul$sequential_13/lstm_37/zeros:output:0Bsequential_13/lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_13/lstm_37/lstm_cell_37/MatMul_1÷
&sequential_13/lstm_37/lstm_cell_37/addAddV23sequential_13/lstm_37/lstm_cell_37/MatMul:product:05sequential_13/lstm_37/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_13/lstm_37/lstm_cell_37/addõ
9sequential_13/lstm_37/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpBsequential_13_lstm_37_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_13/lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp
*sequential_13/lstm_37/lstm_cell_37/BiasAddBiasAdd*sequential_13/lstm_37/lstm_cell_37/add:z:0Asequential_13/lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_13/lstm_37/lstm_cell_37/BiasAddª
2sequential_13/lstm_37/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_13/lstm_37/lstm_cell_37/split/split_dimË
(sequential_13/lstm_37/lstm_cell_37/splitSplit;sequential_13/lstm_37/lstm_cell_37/split/split_dim:output:03sequential_13/lstm_37/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_13/lstm_37/lstm_cell_37/splitÈ
*sequential_13/lstm_37/lstm_cell_37/SigmoidSigmoid1sequential_13/lstm_37/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_13/lstm_37/lstm_cell_37/SigmoidÌ
,sequential_13/lstm_37/lstm_cell_37/Sigmoid_1Sigmoid1sequential_13/lstm_37/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_13/lstm_37/lstm_cell_37/Sigmoid_1ã
&sequential_13/lstm_37/lstm_cell_37/mulMul0sequential_13/lstm_37/lstm_cell_37/Sigmoid_1:y:0&sequential_13/lstm_37/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_13/lstm_37/lstm_cell_37/mul¿
'sequential_13/lstm_37/lstm_cell_37/ReluRelu1sequential_13/lstm_37/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_13/lstm_37/lstm_cell_37/Reluô
(sequential_13/lstm_37/lstm_cell_37/mul_1Mul.sequential_13/lstm_37/lstm_cell_37/Sigmoid:y:05sequential_13/lstm_37/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_13/lstm_37/lstm_cell_37/mul_1é
(sequential_13/lstm_37/lstm_cell_37/add_1AddV2*sequential_13/lstm_37/lstm_cell_37/mul:z:0,sequential_13/lstm_37/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_13/lstm_37/lstm_cell_37/add_1Ì
,sequential_13/lstm_37/lstm_cell_37/Sigmoid_2Sigmoid1sequential_13/lstm_37/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_13/lstm_37/lstm_cell_37/Sigmoid_2¾
)sequential_13/lstm_37/lstm_cell_37/Relu_1Relu,sequential_13/lstm_37/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_13/lstm_37/lstm_cell_37/Relu_1ø
(sequential_13/lstm_37/lstm_cell_37/mul_2Mul0sequential_13/lstm_37/lstm_cell_37/Sigmoid_2:y:07sequential_13/lstm_37/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_13/lstm_37/lstm_cell_37/mul_2»
3sequential_13/lstm_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_13/lstm_37/TensorArrayV2_1/element_shape
%sequential_13/lstm_37/TensorArrayV2_1TensorListReserve<sequential_13/lstm_37/TensorArrayV2_1/element_shape:output:0.sequential_13/lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_13/lstm_37/TensorArrayV2_1z
sequential_13/lstm_37/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_13/lstm_37/time«
.sequential_13/lstm_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_37/while/maximum_iterations
(sequential_13/lstm_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_13/lstm_37/while/loop_counterÕ
sequential_13/lstm_37/whileWhile1sequential_13/lstm_37/while/loop_counter:output:07sequential_13/lstm_37/while/maximum_iterations:output:0#sequential_13/lstm_37/time:output:0.sequential_13/lstm_37/TensorArrayV2_1:handle:0$sequential_13/lstm_37/zeros:output:0&sequential_13/lstm_37/zeros_1:output:0.sequential_13/lstm_37/strided_slice_1:output:0Msequential_13/lstm_37/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_13_lstm_37_lstm_cell_37_matmul_readvariableop_resourceCsequential_13_lstm_37_lstm_cell_37_matmul_1_readvariableop_resourceBsequential_13_lstm_37_lstm_cell_37_biasadd_readvariableop_resource*
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
'sequential_13_lstm_37_while_body_355353*3
cond+R)
'sequential_13_lstm_37_while_cond_355352*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_13/lstm_37/whileá
Fsequential_13/lstm_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_13/lstm_37/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_13/lstm_37/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_13/lstm_37/while:output:3Osequential_13/lstm_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_13/lstm_37/TensorArrayV2Stack/TensorListStack­
+sequential_13/lstm_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_13/lstm_37/strided_slice_3/stack¨
-sequential_13/lstm_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_13/lstm_37/strided_slice_3/stack_1¨
-sequential_13/lstm_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_13/lstm_37/strided_slice_3/stack_2
%sequential_13/lstm_37/strided_slice_3StridedSliceAsequential_13/lstm_37/TensorArrayV2Stack/TensorListStack:tensor:04sequential_13/lstm_37/strided_slice_3/stack:output:06sequential_13/lstm_37/strided_slice_3/stack_1:output:06sequential_13/lstm_37/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_13/lstm_37/strided_slice_3¥
&sequential_13/lstm_37/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_13/lstm_37/transpose_1/permý
!sequential_13/lstm_37/transpose_1	TransposeAsequential_13/lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_13/lstm_37/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_13/lstm_37/transpose_1
sequential_13/lstm_37/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_13/lstm_37/runtime´
!sequential_13/dropout_21/IdentityIdentity.sequential_13/lstm_37/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_13/dropout_21/IdentityÒ
,sequential_13/dense_36/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_36_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_13/dense_36/MatMul/ReadVariableOpÜ
sequential_13/dense_36/MatMulMatMul*sequential_13/dropout_21/Identity:output:04sequential_13/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_36/MatMulÑ
-sequential_13/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_13/dense_36/BiasAdd/ReadVariableOpÝ
sequential_13/dense_36/BiasAddBiasAdd'sequential_13/dense_36/MatMul:product:05sequential_13/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_13/dense_36/BiasAdd
sequential_13/dense_36/ReluRelu'sequential_13/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_36/ReluÒ
,sequential_13/dense_37/MatMul/ReadVariableOpReadVariableOp5sequential_13_dense_37_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_13/dense_37/MatMul/ReadVariableOpÛ
sequential_13/dense_37/MatMulMatMul)sequential_13/dense_36/Relu:activations:04sequential_13/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_13/dense_37/MatMulÑ
-sequential_13/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_13_dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_13/dense_37/BiasAdd/ReadVariableOpÝ
sequential_13/dense_37/BiasAddBiasAdd'sequential_13/dense_37/MatMul:product:05sequential_13/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_13/dense_37/BiasAdd
sequential_13/reshape_18/ShapeShape'sequential_13/dense_37/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_13/reshape_18/Shape¦
,sequential_13/reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_13/reshape_18/strided_slice/stackª
.sequential_13/reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_13/reshape_18/strided_slice/stack_1ª
.sequential_13/reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_13/reshape_18/strided_slice/stack_2ø
&sequential_13/reshape_18/strided_sliceStridedSlice'sequential_13/reshape_18/Shape:output:05sequential_13/reshape_18/strided_slice/stack:output:07sequential_13/reshape_18/strided_slice/stack_1:output:07sequential_13/reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_13/reshape_18/strided_slice
(sequential_13/reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_13/reshape_18/Reshape/shape/1
(sequential_13/reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_13/reshape_18/Reshape/shape/2
&sequential_13/reshape_18/Reshape/shapePack/sequential_13/reshape_18/strided_slice:output:01sequential_13/reshape_18/Reshape/shape/1:output:01sequential_13/reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_13/reshape_18/Reshape/shapeß
 sequential_13/reshape_18/ReshapeReshape'sequential_13/dense_37/BiasAdd:output:0/sequential_13/reshape_18/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_13/reshape_18/Reshape
IdentityIdentity)sequential_13/reshape_18/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity°
NoOpNoOp.^sequential_13/dense_36/BiasAdd/ReadVariableOp-^sequential_13/dense_36/MatMul/ReadVariableOp.^sequential_13/dense_37/BiasAdd/ReadVariableOp-^sequential_13/dense_37/MatMul/ReadVariableOp:^sequential_13/lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp9^sequential_13/lstm_36/lstm_cell_36/MatMul/ReadVariableOp;^sequential_13/lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp^sequential_13/lstm_36/while:^sequential_13/lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp9^sequential_13/lstm_37/lstm_cell_37/MatMul/ReadVariableOp;^sequential_13/lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp^sequential_13/lstm_37/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2^
-sequential_13/dense_36/BiasAdd/ReadVariableOp-sequential_13/dense_36/BiasAdd/ReadVariableOp2\
,sequential_13/dense_36/MatMul/ReadVariableOp,sequential_13/dense_36/MatMul/ReadVariableOp2^
-sequential_13/dense_37/BiasAdd/ReadVariableOp-sequential_13/dense_37/BiasAdd/ReadVariableOp2\
,sequential_13/dense_37/MatMul/ReadVariableOp,sequential_13/dense_37/MatMul/ReadVariableOp2v
9sequential_13/lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp9sequential_13/lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp2t
8sequential_13/lstm_36/lstm_cell_36/MatMul/ReadVariableOp8sequential_13/lstm_36/lstm_cell_36/MatMul/ReadVariableOp2x
:sequential_13/lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp:sequential_13/lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp2:
sequential_13/lstm_36/whilesequential_13/lstm_36/while2v
9sequential_13/lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp9sequential_13/lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp2t
8sequential_13/lstm_37/lstm_cell_37/MatMul/ReadVariableOp8sequential_13/lstm_37/lstm_cell_37/MatMul/ReadVariableOp2x
:sequential_13/lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp:sequential_13/lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp2:
sequential_13/lstm_37/whilesequential_13/lstm_37/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_17
»
´
(__inference_lstm_37_layer_call_fn_359153
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3564582
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

lstm_37_while_body_358342,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3+
'lstm_37_while_lstm_37_strided_slice_1_0g
clstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0: O
=lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0: J
<lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0: 
lstm_37_while_identity
lstm_37_while_identity_1
lstm_37_while_identity_2
lstm_37_while_identity_3
lstm_37_while_identity_4
lstm_37_while_identity_5)
%lstm_37_while_lstm_37_strided_slice_1e
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorK
9lstm_37_while_lstm_cell_37_matmul_readvariableop_resource: M
;lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource: H
:lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource: ¢1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp¢0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp¢2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpÓ
?lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0lstm_37_while_placeholderHlstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_37/while/TensorArrayV2Read/TensorListGetItemà
0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp;lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype022
0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOpö
!lstm_37/while/lstm_cell_37/MatMulMatMul8lstm_37/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_37/while/lstm_cell_37/MatMulæ
2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp=lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpß
#lstm_37/while/lstm_cell_37/MatMul_1MatMullstm_37_while_placeholder_2:lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_37/while/lstm_cell_37/MatMul_1×
lstm_37/while/lstm_cell_37/addAddV2+lstm_37/while/lstm_cell_37/MatMul:product:0-lstm_37/while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_37/while/lstm_cell_37/addß
1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp<lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOpä
"lstm_37/while/lstm_cell_37/BiasAddBiasAdd"lstm_37/while/lstm_cell_37/add:z:09lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_37/while/lstm_cell_37/BiasAdd
*lstm_37/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_37/while/lstm_cell_37/split/split_dim«
 lstm_37/while/lstm_cell_37/splitSplit3lstm_37/while/lstm_cell_37/split/split_dim:output:0+lstm_37/while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_37/while/lstm_cell_37/split°
"lstm_37/while/lstm_cell_37/SigmoidSigmoid)lstm_37/while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_37/while/lstm_cell_37/Sigmoid´
$lstm_37/while/lstm_cell_37/Sigmoid_1Sigmoid)lstm_37/while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_37/while/lstm_cell_37/Sigmoid_1À
lstm_37/while/lstm_cell_37/mulMul(lstm_37/while/lstm_cell_37/Sigmoid_1:y:0lstm_37_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_37/while/lstm_cell_37/mul§
lstm_37/while/lstm_cell_37/ReluRelu)lstm_37/while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_37/while/lstm_cell_37/ReluÔ
 lstm_37/while/lstm_cell_37/mul_1Mul&lstm_37/while/lstm_cell_37/Sigmoid:y:0-lstm_37/while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/lstm_cell_37/mul_1É
 lstm_37/while/lstm_cell_37/add_1AddV2"lstm_37/while/lstm_cell_37/mul:z:0$lstm_37/while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/lstm_cell_37/add_1´
$lstm_37/while/lstm_cell_37/Sigmoid_2Sigmoid)lstm_37/while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_37/while/lstm_cell_37/Sigmoid_2¦
!lstm_37/while/lstm_cell_37/Relu_1Relu$lstm_37/while/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_37/while/lstm_cell_37/Relu_1Ø
 lstm_37/while/lstm_cell_37/mul_2Mul(lstm_37/while/lstm_cell_37/Sigmoid_2:y:0/lstm_37/while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/lstm_cell_37/mul_2
2lstm_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_37_while_placeholder_1lstm_37_while_placeholder$lstm_37/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_37/while/TensorArrayV2Write/TensorListSetIteml
lstm_37/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/while/add/y
lstm_37/while/addAddV2lstm_37_while_placeholderlstm_37/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_37/while/addp
lstm_37/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/while/add_1/y
lstm_37/while/add_1AddV2(lstm_37_while_lstm_37_while_loop_counterlstm_37/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_37/while/add_1
lstm_37/while/IdentityIdentitylstm_37/while/add_1:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity¦
lstm_37/while/Identity_1Identity.lstm_37_while_lstm_37_while_maximum_iterations^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity_1
lstm_37/while/Identity_2Identitylstm_37/while/add:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity_2º
lstm_37/while/Identity_3IdentityBlstm_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity_3­
lstm_37/while/Identity_4Identity$lstm_37/while/lstm_cell_37/mul_2:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/while/Identity_4­
lstm_37/while/Identity_5Identity$lstm_37/while/lstm_cell_37/add_1:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/while/Identity_5
lstm_37/while/NoOpNoOp2^lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp1^lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp3^lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_37/while/NoOp"9
lstm_37_while_identitylstm_37/while/Identity:output:0"=
lstm_37_while_identity_1!lstm_37/while/Identity_1:output:0"=
lstm_37_while_identity_2!lstm_37/while/Identity_2:output:0"=
lstm_37_while_identity_3!lstm_37/while/Identity_3:output:0"=
lstm_37_while_identity_4!lstm_37/while/Identity_4:output:0"=
lstm_37_while_identity_5!lstm_37/while/Identity_5:output:0"P
%lstm_37_while_lstm_37_strided_slice_1'lstm_37_while_lstm_37_strided_slice_1_0"z
:lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource<lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0"|
;lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource=lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0"x
9lstm_37_while_lstm_cell_37_matmul_readvariableop_resource;lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0"È
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp2d
0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp2h
2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F

C__inference_lstm_36_layer_call_and_return_conditional_losses_355828

inputs%
lstm_cell_36_355746: %
lstm_cell_36_355748: !
lstm_cell_36_355750: 
identity¢$lstm_cell_36/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_36_355746lstm_cell_36_355748lstm_cell_36_355750*
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_3556812&
$lstm_cell_36/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_36_355746lstm_cell_36_355748lstm_cell_36_355750*
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
while_body_355759*
condR
while_cond_355758*K
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
NoOpNoOp%^lstm_cell_36/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_36/StatefulPartitionedCall$lstm_cell_36/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_355535

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Æ

ã
lstm_37_while_cond_358012,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3.
*lstm_37_while_less_lstm_37_strided_slice_1D
@lstm_37_while_lstm_37_while_cond_358012___redundant_placeholder0D
@lstm_37_while_lstm_37_while_cond_358012___redundant_placeholder1D
@lstm_37_while_lstm_37_while_cond_358012___redundant_placeholder2D
@lstm_37_while_lstm_37_while_cond_358012___redundant_placeholder3
lstm_37_while_identity

lstm_37/while/LessLesslstm_37_while_placeholder*lstm_37_while_less_lstm_37_strided_slice_1*
T0*
_output_shapes
: 2
lstm_37/while/Lessu
lstm_37/while/IdentityIdentitylstm_37/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_37/while/Identity"9
lstm_37_while_identitylstm_37/while/Identity:output:0*(
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
²
d
+__inference_dropout_20_layer_call_fn_359114

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
F__inference_dropout_20_layer_call_and_return_conditional_losses_3573712
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
 
_user_specified_nameinputs
ó
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_357055

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
Õ
Ã
while_cond_357453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357453___redundant_placeholder04
0while_while_cond_357453___redundant_placeholder14
0while_while_cond_357453___redundant_placeholder24
0while_while_cond_357453___redundant_placeholder3
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
Õ
Ã
while_cond_356957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356957___redundant_placeholder04
0while_while_cond_356957___redundant_placeholder14
0while_while_cond_356957___redundant_placeholder24
0while_while_cond_356957___redundant_placeholder3
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
)__inference_dense_36_layer_call_fn_359815

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
D__inference_dense_36_layer_call_and_return_conditional_losses_3570682
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
×[

C__inference_lstm_36_layer_call_and_return_conditional_losses_357538

inputs=
+lstm_cell_36_matmul_readvariableop_resource: ?
-lstm_cell_36_matmul_1_readvariableop_resource: :
,lstm_cell_36_biasadd_readvariableop_resource: 
identity¢#lstm_cell_36/BiasAdd/ReadVariableOp¢"lstm_cell_36/MatMul/ReadVariableOp¢$lstm_cell_36/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_36/MatMul/ReadVariableOpReadVariableOp+lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_36/MatMul/ReadVariableOp¬
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0*lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMulº
$lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_36/MatMul_1/ReadVariableOp¨
lstm_cell_36/MatMul_1MatMulzeros:output:0,lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1
lstm_cell_36/addAddV2lstm_cell_36/MatMul:product:0lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add³
#lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_36/BiasAdd/ReadVariableOp¬
lstm_cell_36/BiasAddBiasAddlstm_cell_36/add:z:0+lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dimó
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_36/split
lstm_cell_36/SigmoidSigmoidlstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mulMullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul}
lstm_cell_36/ReluRelulstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu
lstm_cell_36/mul_1Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_1
lstm_cell_36/add_1AddV2lstm_cell_36/mul:z:0lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_2Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_36_matmul_readvariableop_resource-lstm_cell_36_matmul_1_readvariableop_resource,lstm_cell_36_biasadd_readvariableop_resource*
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
while_body_357454*
condR
while_cond_357453*K
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
NoOpNoOp$^lstm_cell_36/BiasAdd/ReadVariableOp#^lstm_cell_36/MatMul/ReadVariableOp%^lstm_cell_36/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_36/BiasAdd/ReadVariableOp#lstm_cell_36/BiasAdd/ReadVariableOp2H
"lstm_cell_36/MatMul/ReadVariableOp"lstm_cell_36/MatMul/ReadVariableOp2L
$lstm_cell_36/MatMul_1/ReadVariableOp$lstm_cell_36/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
d
+__inference_dropout_21_layer_call_fn_359789

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
F__inference_dropout_21_layer_call_and_return_conditional_losses_3571752
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
\

C__inference_lstm_36_layer_call_and_return_conditional_losses_358651
inputs_0=
+lstm_cell_36_matmul_readvariableop_resource: ?
-lstm_cell_36_matmul_1_readvariableop_resource: :
,lstm_cell_36_biasadd_readvariableop_resource: 
identity¢#lstm_cell_36/BiasAdd/ReadVariableOp¢"lstm_cell_36/MatMul/ReadVariableOp¢$lstm_cell_36/MatMul_1/ReadVariableOp¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_36/MatMul/ReadVariableOpReadVariableOp+lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_36/MatMul/ReadVariableOp¬
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0*lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMulº
$lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_36/MatMul_1/ReadVariableOp¨
lstm_cell_36/MatMul_1MatMulzeros:output:0,lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1
lstm_cell_36/addAddV2lstm_cell_36/MatMul:product:0lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add³
#lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_36/BiasAdd/ReadVariableOp¬
lstm_cell_36/BiasAddBiasAddlstm_cell_36/add:z:0+lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dimó
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_36/split
lstm_cell_36/SigmoidSigmoidlstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mulMullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul}
lstm_cell_36/ReluRelulstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu
lstm_cell_36/mul_1Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_1
lstm_cell_36/add_1AddV2lstm_cell_36/mul:z:0lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_2Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_36_matmul_readvariableop_resource-lstm_cell_36_matmul_1_readvariableop_resource,lstm_cell_36_biasadd_readvariableop_resource*
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
while_body_358567*
condR
while_cond_358566*K
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
NoOpNoOp$^lstm_cell_36/BiasAdd/ReadVariableOp#^lstm_cell_36/MatMul/ReadVariableOp%^lstm_cell_36/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_36/BiasAdd/ReadVariableOp#lstm_cell_36/BiasAdd/ReadVariableOp2H
"lstm_cell_36/MatMul/ReadVariableOp"lstm_cell_36/MatMul/ReadVariableOp2L
$lstm_cell_36/MatMul_1/ReadVariableOp$lstm_cell_36/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Í
e
F__inference_dropout_20_layer_call_and_return_conditional_losses_357371

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
Õ
Ã
while_cond_356178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356178___redundant_placeholder04
0while_while_cond_356178___redundant_placeholder14
0while_while_cond_356178___redundant_placeholder24
0while_while_cond_356178___redundant_placeholder3
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

ï
$__inference_signature_wrapper_357748
input_17
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_3554602
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
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_17
³
ó
-__inference_lstm_cell_36_layer_call_fn_359880

inputs
states_0
states_1
unknown: 
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_3555352
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

õ
D__inference_dense_36_layer_call_and_return_conditional_losses_357068

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
Ð
G
+__inference_dropout_20_layer_call_fn_359109

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
F__inference_dropout_20_layer_call_and_return_conditional_losses_3568902
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
\

C__inference_lstm_37_layer_call_and_return_conditional_losses_359326
inputs_0=
+lstm_cell_37_matmul_readvariableop_resource: ?
-lstm_cell_37_matmul_1_readvariableop_resource: :
,lstm_cell_37_biasadd_readvariableop_resource: 
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_37/MatMul/ReadVariableOp¬
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMulº
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_37/MatMul_1/ReadVariableOp¨
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMul_1
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/add³
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_37/BiasAdd/ReadVariableOp¬
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/BiasAdd~
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_37/split/split_dimó
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_37/split
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_1
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul}
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_1
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/add_1
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_2|
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu_1 
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
while_body_359242*
condR
while_cond_359241*K
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
×[

C__inference_lstm_36_layer_call_and_return_conditional_losses_356877

inputs=
+lstm_cell_36_matmul_readvariableop_resource: ?
-lstm_cell_36_matmul_1_readvariableop_resource: :
,lstm_cell_36_biasadd_readvariableop_resource: 
identity¢#lstm_cell_36/BiasAdd/ReadVariableOp¢"lstm_cell_36/MatMul/ReadVariableOp¢$lstm_cell_36/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_36/MatMul/ReadVariableOpReadVariableOp+lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_36/MatMul/ReadVariableOp¬
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0*lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMulº
$lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_36/MatMul_1/ReadVariableOp¨
lstm_cell_36/MatMul_1MatMulzeros:output:0,lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1
lstm_cell_36/addAddV2lstm_cell_36/MatMul:product:0lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add³
#lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_36/BiasAdd/ReadVariableOp¬
lstm_cell_36/BiasAddBiasAddlstm_cell_36/add:z:0+lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dimó
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_36/split
lstm_cell_36/SigmoidSigmoidlstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mulMullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul}
lstm_cell_36/ReluRelulstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu
lstm_cell_36/mul_1Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_1
lstm_cell_36/add_1AddV2lstm_cell_36/mul:z:0lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_2Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_36_matmul_readvariableop_resource-lstm_cell_36_matmul_1_readvariableop_resource,lstm_cell_36_biasadd_readvariableop_resource*
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
while_body_356793*
condR
while_cond_356792*K
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
NoOpNoOp$^lstm_cell_36/BiasAdd/ReadVariableOp#^lstm_cell_36/MatMul/ReadVariableOp%^lstm_cell_36/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_36/BiasAdd/ReadVariableOp#lstm_cell_36/BiasAdd/ReadVariableOp2H
"lstm_cell_36/MatMul/ReadVariableOp"lstm_cell_36/MatMul/ReadVariableOp2L
$lstm_cell_36/MatMul_1/ReadVariableOp$lstm_cell_36/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
e
F__inference_dropout_21_layer_call_and_return_conditional_losses_357175

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
Ô
°	
I__inference_sequential_13_layer_call_and_return_conditional_losses_358456

inputsE
3lstm_36_lstm_cell_36_matmul_readvariableop_resource: G
5lstm_36_lstm_cell_36_matmul_1_readvariableop_resource: B
4lstm_36_lstm_cell_36_biasadd_readvariableop_resource: E
3lstm_37_lstm_cell_37_matmul_readvariableop_resource: G
5lstm_37_lstm_cell_37_matmul_1_readvariableop_resource: B
4lstm_37_lstm_cell_37_biasadd_readvariableop_resource: 9
'dense_36_matmul_readvariableop_resource:6
(dense_36_biasadd_readvariableop_resource:9
'dense_37_matmul_readvariableop_resource:6
(dense_37_biasadd_readvariableop_resource:
identity¢dense_36/BiasAdd/ReadVariableOp¢dense_36/MatMul/ReadVariableOp¢dense_37/BiasAdd/ReadVariableOp¢dense_37/MatMul/ReadVariableOp¢+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp¢*lstm_36/lstm_cell_36/MatMul/ReadVariableOp¢,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp¢lstm_36/while¢+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp¢*lstm_37/lstm_cell_37/MatMul/ReadVariableOp¢,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp¢lstm_37/whileT
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
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/zerosp
lstm_36/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
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
value	B :2
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   2?
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_36/strided_slice_2Ì
*lstm_36/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3lstm_36_lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*lstm_36/lstm_cell_36/MatMul/ReadVariableOpÌ
lstm_36/lstm_cell_36/MatMulMatMul lstm_36/strided_slice_2:output:02lstm_36/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMulÒ
,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5lstm_36_lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOpÈ
lstm_36/lstm_cell_36/MatMul_1MatMullstm_36/zeros:output:04lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/MatMul_1¿
lstm_36/lstm_cell_36/addAddV2%lstm_36/lstm_cell_36/MatMul:product:0'lstm_36/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/addË
+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4lstm_36_lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOpÌ
lstm_36/lstm_cell_36/BiasAddBiasAddlstm_36/lstm_cell_36/add:z:03lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_36/lstm_cell_36/BiasAdd
$lstm_36/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_36/lstm_cell_36/split/split_dim
lstm_36/lstm_cell_36/splitSplit-lstm_36/lstm_cell_36/split/split_dim:output:0%lstm_36/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_36/lstm_cell_36/split
lstm_36/lstm_cell_36/SigmoidSigmoid#lstm_36/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/Sigmoid¢
lstm_36/lstm_cell_36/Sigmoid_1Sigmoid#lstm_36/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_36/lstm_cell_36/Sigmoid_1«
lstm_36/lstm_cell_36/mulMul"lstm_36/lstm_cell_36/Sigmoid_1:y:0lstm_36/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/mul
lstm_36/lstm_cell_36/ReluRelu#lstm_36/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/Relu¼
lstm_36/lstm_cell_36/mul_1Mul lstm_36/lstm_cell_36/Sigmoid:y:0'lstm_36/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/mul_1±
lstm_36/lstm_cell_36/add_1AddV2lstm_36/lstm_cell_36/mul:z:0lstm_36/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/add_1¢
lstm_36/lstm_cell_36/Sigmoid_2Sigmoid#lstm_36/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_36/lstm_cell_36/Sigmoid_2
lstm_36/lstm_cell_36/Relu_1Relulstm_36/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/Relu_1À
lstm_36/lstm_cell_36/mul_2Mul"lstm_36/lstm_cell_36/Sigmoid_2:y:0)lstm_36/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/lstm_cell_36/mul_2
%lstm_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
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
lstm_36/while/loop_counter
lstm_36/whileWhile#lstm_36/while/loop_counter:output:0)lstm_36/while/maximum_iterations:output:0lstm_36/time:output:0 lstm_36/TensorArrayV2_1:handle:0lstm_36/zeros:output:0lstm_36/zeros_1:output:0 lstm_36/strided_slice_1:output:0?lstm_36/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_36_lstm_cell_36_matmul_readvariableop_resource5lstm_36_lstm_cell_36_matmul_1_readvariableop_resource4lstm_36_lstm_cell_36_biasadd_readvariableop_resource*
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
lstm_36_while_body_358187*%
condR
lstm_36_while_cond_358186*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_36/whileÅ
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_36/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_36/TensorArrayV2Stack/TensorListStackTensorListStacklstm_36/while:output:3Alstm_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/transpose_1v
lstm_36/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_36/runtimey
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_20/dropout/Const©
dropout_20/dropout/MulMullstm_36/transpose_1:y:0!dropout_20/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_20/dropout/Mul{
dropout_20/dropout/ShapeShapelstm_36/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_20/dropout/ShapeÙ
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_20/dropout/random_uniform/RandomUniform
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_20/dropout/GreaterEqual/yî
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_20/dropout/GreaterEqual¤
dropout_20/dropout/CastCast#dropout_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_20/dropout/Castª
dropout_20/dropout/Mul_1Muldropout_20/dropout/Mul:z:0dropout_20/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_20/dropout/Mul_1j
lstm_37/ShapeShapedropout_20/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_37/Shape
lstm_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_37/strided_slice/stack
lstm_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_37/strided_slice/stack_1
lstm_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_37/strided_slice/stack_2
lstm_37/strided_sliceStridedSlicelstm_37/Shape:output:0$lstm_37/strided_slice/stack:output:0&lstm_37/strided_slice/stack_1:output:0&lstm_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_37/strided_slicel
lstm_37/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros/mul/y
lstm_37/zeros/mulMullstm_37/strided_slice:output:0lstm_37/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros/mulo
lstm_37/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_37/zeros/Less/y
lstm_37/zeros/LessLesslstm_37/zeros/mul:z:0lstm_37/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros/Lessr
lstm_37/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros/packed/1£
lstm_37/zeros/packedPacklstm_37/strided_slice:output:0lstm_37/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_37/zeros/packedo
lstm_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_37/zeros/Const
lstm_37/zerosFilllstm_37/zeros/packed:output:0lstm_37/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/zerosp
lstm_37/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros_1/mul/y
lstm_37/zeros_1/mulMullstm_37/strided_slice:output:0lstm_37/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros_1/muls
lstm_37/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_37/zeros_1/Less/y
lstm_37/zeros_1/LessLesslstm_37/zeros_1/mul:z:0lstm_37/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_37/zeros_1/Lessv
lstm_37/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/zeros_1/packed/1©
lstm_37/zeros_1/packedPacklstm_37/strided_slice:output:0!lstm_37/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_37/zeros_1/packeds
lstm_37/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_37/zeros_1/Const
lstm_37/zeros_1Filllstm_37/zeros_1/packed:output:0lstm_37/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/zeros_1
lstm_37/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_37/transpose/perm¨
lstm_37/transpose	Transposedropout_20/dropout/Mul_1:z:0lstm_37/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/transposeg
lstm_37/Shape_1Shapelstm_37/transpose:y:0*
T0*
_output_shapes
:2
lstm_37/Shape_1
lstm_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_37/strided_slice_1/stack
lstm_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_1/stack_1
lstm_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_1/stack_2
lstm_37/strided_slice_1StridedSlicelstm_37/Shape_1:output:0&lstm_37/strided_slice_1/stack:output:0(lstm_37/strided_slice_1/stack_1:output:0(lstm_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_37/strided_slice_1
#lstm_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_37/TensorArrayV2/element_shapeÒ
lstm_37/TensorArrayV2TensorListReserve,lstm_37/TensorArrayV2/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_37/TensorArrayV2Ï
=lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_37/transpose:y:0Flstm_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_37/TensorArrayUnstack/TensorListFromTensor
lstm_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_37/strided_slice_2/stack
lstm_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_2/stack_1
lstm_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_2/stack_2¬
lstm_37/strided_slice_2StridedSlicelstm_37/transpose:y:0&lstm_37/strided_slice_2/stack:output:0(lstm_37/strided_slice_2/stack_1:output:0(lstm_37/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_37/strided_slice_2Ì
*lstm_37/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3lstm_37_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*lstm_37/lstm_cell_37/MatMul/ReadVariableOpÌ
lstm_37/lstm_cell_37/MatMulMatMul lstm_37/strided_slice_2:output:02lstm_37/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/MatMulÒ
,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5lstm_37_lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOpÈ
lstm_37/lstm_cell_37/MatMul_1MatMullstm_37/zeros:output:04lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/MatMul_1¿
lstm_37/lstm_cell_37/addAddV2%lstm_37/lstm_cell_37/MatMul:product:0'lstm_37/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/addË
+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4lstm_37_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOpÌ
lstm_37/lstm_cell_37/BiasAddBiasAddlstm_37/lstm_cell_37/add:z:03lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_37/lstm_cell_37/BiasAdd
$lstm_37/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_37/lstm_cell_37/split/split_dim
lstm_37/lstm_cell_37/splitSplit-lstm_37/lstm_cell_37/split/split_dim:output:0%lstm_37/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_37/lstm_cell_37/split
lstm_37/lstm_cell_37/SigmoidSigmoid#lstm_37/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/Sigmoid¢
lstm_37/lstm_cell_37/Sigmoid_1Sigmoid#lstm_37/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_37/lstm_cell_37/Sigmoid_1«
lstm_37/lstm_cell_37/mulMul"lstm_37/lstm_cell_37/Sigmoid_1:y:0lstm_37/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/mul
lstm_37/lstm_cell_37/ReluRelu#lstm_37/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/Relu¼
lstm_37/lstm_cell_37/mul_1Mul lstm_37/lstm_cell_37/Sigmoid:y:0'lstm_37/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/mul_1±
lstm_37/lstm_cell_37/add_1AddV2lstm_37/lstm_cell_37/mul:z:0lstm_37/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/add_1¢
lstm_37/lstm_cell_37/Sigmoid_2Sigmoid#lstm_37/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_37/lstm_cell_37/Sigmoid_2
lstm_37/lstm_cell_37/Relu_1Relulstm_37/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/Relu_1À
lstm_37/lstm_cell_37/mul_2Mul"lstm_37/lstm_cell_37/Sigmoid_2:y:0)lstm_37/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/lstm_cell_37/mul_2
%lstm_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_37/TensorArrayV2_1/element_shapeØ
lstm_37/TensorArrayV2_1TensorListReserve.lstm_37/TensorArrayV2_1/element_shape:output:0 lstm_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_37/TensorArrayV2_1^
lstm_37/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_37/time
 lstm_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/maximum_iterationsz
lstm_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_37/while/loop_counter
lstm_37/whileWhile#lstm_37/while/loop_counter:output:0)lstm_37/while/maximum_iterations:output:0lstm_37/time:output:0 lstm_37/TensorArrayV2_1:handle:0lstm_37/zeros:output:0lstm_37/zeros_1:output:0 lstm_37/strided_slice_1:output:0?lstm_37/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_37_lstm_cell_37_matmul_readvariableop_resource5lstm_37_lstm_cell_37_matmul_1_readvariableop_resource4lstm_37_lstm_cell_37_biasadd_readvariableop_resource*
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
lstm_37_while_body_358342*%
condR
lstm_37_while_cond_358341*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_37/whileÅ
8lstm_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_37/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_37/TensorArrayV2Stack/TensorListStackTensorListStacklstm_37/while:output:3Alstm_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_37/TensorArrayV2Stack/TensorListStack
lstm_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_37/strided_slice_3/stack
lstm_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_37/strided_slice_3/stack_1
lstm_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_37/strided_slice_3/stack_2Ê
lstm_37/strided_slice_3StridedSlice3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_37/strided_slice_3/stack:output:0(lstm_37/strided_slice_3/stack_1:output:0(lstm_37/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_37/strided_slice_3
lstm_37/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_37/transpose_1/permÅ
lstm_37/transpose_1	Transpose3lstm_37/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_37/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/transpose_1v
lstm_37/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_37/runtimey
dropout_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_21/dropout/Const®
dropout_21/dropout/MulMul lstm_37/strided_slice_3:output:0!dropout_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_21/dropout/Mul
dropout_21/dropout/ShapeShape lstm_37/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_21/dropout/ShapeÕ
/dropout_21/dropout/random_uniform/RandomUniformRandomUniform!dropout_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_21/dropout/random_uniform/RandomUniform
!dropout_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_21/dropout/GreaterEqual/yê
dropout_21/dropout/GreaterEqualGreaterEqual8dropout_21/dropout/random_uniform/RandomUniform:output:0*dropout_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_21/dropout/GreaterEqual 
dropout_21/dropout/CastCast#dropout_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_21/dropout/Cast¦
dropout_21/dropout/Mul_1Muldropout_21/dropout/Mul:z:0dropout_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_21/dropout/Mul_1¨
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_36/MatMul/ReadVariableOp¤
dense_36/MatMulMatMuldropout_21/dropout/Mul_1:z:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_36/MatMul§
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_36/BiasAdd/ReadVariableOp¥
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_36/BiasAdds
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_36/Relu¨
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_37/MatMul/ReadVariableOp£
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_37/MatMul§
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_37/BiasAdd/ReadVariableOp¥
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_37/BiasAddm
reshape_18/ShapeShapedense_37/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_18/Shape
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_18/strided_slice/stack
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_1
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_18/strided_slice/stack_2¤
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_18/strided_slicez
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_18/Reshape/shape/1z
reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_18/Reshape/shape/2×
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0#reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_18/Reshape/shape§
reshape_18/ReshapeReshapedense_37/BiasAdd:output:0!reshape_18/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_18/Reshapez
IdentityIdentityreshape_18/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp,^lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp+^lstm_36/lstm_cell_36/MatMul/ReadVariableOp-^lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp^lstm_36/while,^lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp+^lstm_37/lstm_cell_37/MatMul/ReadVariableOp-^lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp^lstm_37/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2Z
+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp+lstm_36/lstm_cell_36/BiasAdd/ReadVariableOp2X
*lstm_36/lstm_cell_36/MatMul/ReadVariableOp*lstm_36/lstm_cell_36/MatMul/ReadVariableOp2\
,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp,lstm_36/lstm_cell_36/MatMul_1/ReadVariableOp2
lstm_36/whilelstm_36/while2Z
+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp+lstm_37/lstm_cell_37/BiasAdd/ReadVariableOp2X
*lstm_37/lstm_cell_37/MatMul/ReadVariableOp*lstm_37/lstm_cell_37/MatMul/ReadVariableOp2\
,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp,lstm_37/lstm_cell_37/MatMul_1/ReadVariableOp2
lstm_37/whilelstm_37/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_360059

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
ß

÷
.__inference_sequential_13_layer_call_fn_357798

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_3576052
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
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_358868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358868___redundant_placeholder04
0while_while_cond_358868___redundant_placeholder14
0while_while_cond_358868___redundant_placeholder24
0while_while_cond_358868___redundant_placeholder3
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
F

C__inference_lstm_37_layer_call_and_return_conditional_losses_356248

inputs%
lstm_cell_37_356166: %
lstm_cell_37_356168: !
lstm_cell_37_356170: 
identity¢$lstm_cell_37/StatefulPartitionedCall¢whileD
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
$lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_37_356166lstm_cell_37_356168lstm_cell_37_356170*
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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_3561652&
$lstm_cell_37/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_37_356166lstm_cell_37_356168lstm_cell_37_356170*
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
while_body_356179*
condR
while_cond_356178*K
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
NoOpNoOp%^lstm_cell_37/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_37/StatefulPartitionedCall$lstm_cell_37/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\

C__inference_lstm_36_layer_call_and_return_conditional_losses_358802
inputs_0=
+lstm_cell_36_matmul_readvariableop_resource: ?
-lstm_cell_36_matmul_1_readvariableop_resource: :
,lstm_cell_36_biasadd_readvariableop_resource: 
identity¢#lstm_cell_36/BiasAdd/ReadVariableOp¢"lstm_cell_36/MatMul/ReadVariableOp¢$lstm_cell_36/MatMul_1/ReadVariableOp¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_36/MatMul/ReadVariableOpReadVariableOp+lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_36/MatMul/ReadVariableOp¬
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0*lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMulº
$lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_36/MatMul_1/ReadVariableOp¨
lstm_cell_36/MatMul_1MatMulzeros:output:0,lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1
lstm_cell_36/addAddV2lstm_cell_36/MatMul:product:0lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add³
#lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_36/BiasAdd/ReadVariableOp¬
lstm_cell_36/BiasAddBiasAddlstm_cell_36/add:z:0+lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dimó
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_36/split
lstm_cell_36/SigmoidSigmoidlstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mulMullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul}
lstm_cell_36/ReluRelulstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu
lstm_cell_36/mul_1Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_1
lstm_cell_36/add_1AddV2lstm_cell_36/mul:z:0lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_2Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_36_matmul_readvariableop_resource-lstm_cell_36_matmul_1_readvariableop_resource,lstm_cell_36_biasadd_readvariableop_resource*
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
while_body_358718*
condR
while_cond_358717*K
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
NoOpNoOp$^lstm_cell_36/BiasAdd/ReadVariableOp#^lstm_cell_36/MatMul/ReadVariableOp%^lstm_cell_36/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_36/BiasAdd/ReadVariableOp#lstm_cell_36/BiasAdd/ReadVariableOp2H
"lstm_cell_36/MatMul/ReadVariableOp"lstm_cell_36/MatMul/ReadVariableOp2L
$lstm_cell_36/MatMul_1/ReadVariableOp$lstm_cell_36/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
F

C__inference_lstm_37_layer_call_and_return_conditional_losses_356458

inputs%
lstm_cell_37_356376: %
lstm_cell_37_356378: !
lstm_cell_37_356380: 
identity¢$lstm_cell_37/StatefulPartitionedCall¢whileD
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
$lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_37_356376lstm_cell_37_356378lstm_cell_37_356380*
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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_3563112&
$lstm_cell_37/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_37_356376lstm_cell_37_356378lstm_cell_37_356380*
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
while_body_356389*
condR
while_cond_356388*K
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
NoOpNoOp%^lstm_cell_37/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_37/StatefulPartitionedCall$lstm_cell_37/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
²
(__inference_lstm_37_layer_call_fn_359164

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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3570422
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
Ò%
Ý
while_body_356389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_37_356413_0: -
while_lstm_cell_37_356415_0: )
while_lstm_cell_37_356417_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_37_356413: +
while_lstm_cell_37_356415: '
while_lstm_cell_37_356417: ¢*while/lstm_cell_37/StatefulPartitionedCallÃ
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
*while/lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_37_356413_0while_lstm_cell_37_356415_0while_lstm_cell_37_356417_0*
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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_3563112,
*while/lstm_cell_37/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_37/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_37/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_37/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_37/StatefulPartitionedCall*"
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
while_lstm_cell_37_356413while_lstm_cell_37_356413_0"8
while_lstm_cell_37_356415while_lstm_cell_37_356415_0"8
while_lstm_cell_37_356417while_lstm_cell_37_356417_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_37/StatefulPartitionedCall*while/lstm_cell_37/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_358566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358566___redundant_placeholder04
0while_while_cond_358566___redundant_placeholder14
0while_while_cond_358566___redundant_placeholder24
0while_while_cond_358566___redundant_placeholder3
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
»
´
(__inference_lstm_37_layer_call_fn_359142
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3562482
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
«
²
(__inference_lstm_36_layer_call_fn_358489

inputs
unknown: 
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3568772
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

b
F__inference_reshape_18_layer_call_and_return_conditional_losses_359863

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
¿^

'sequential_13_lstm_36_while_body_355205H
Dsequential_13_lstm_36_while_sequential_13_lstm_36_while_loop_counterN
Jsequential_13_lstm_36_while_sequential_13_lstm_36_while_maximum_iterations+
'sequential_13_lstm_36_while_placeholder-
)sequential_13_lstm_36_while_placeholder_1-
)sequential_13_lstm_36_while_placeholder_2-
)sequential_13_lstm_36_while_placeholder_3G
Csequential_13_lstm_36_while_sequential_13_lstm_36_strided_slice_1_0
sequential_13_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_36_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_13_lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0: ]
Ksequential_13_lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0: X
Jsequential_13_lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0: (
$sequential_13_lstm_36_while_identity*
&sequential_13_lstm_36_while_identity_1*
&sequential_13_lstm_36_while_identity_2*
&sequential_13_lstm_36_while_identity_3*
&sequential_13_lstm_36_while_identity_4*
&sequential_13_lstm_36_while_identity_5E
Asequential_13_lstm_36_while_sequential_13_lstm_36_strided_slice_1
}sequential_13_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_36_tensorarrayunstack_tensorlistfromtensorY
Gsequential_13_lstm_36_while_lstm_cell_36_matmul_readvariableop_resource: [
Isequential_13_lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource: V
Hsequential_13_lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource: ¢?sequential_13/lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp¢>sequential_13/lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp¢@sequential_13/lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpï
Msequential_13/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_13/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_13/lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_13_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_36_tensorarrayunstack_tensorlistfromtensor_0'sequential_13_lstm_36_while_placeholderVsequential_13/lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_13/lstm_36/while/TensorArrayV2Read/TensorListGetItem
>sequential_13/lstm_36/while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOpIsequential_13_lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02@
>sequential_13/lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp®
/sequential_13/lstm_36/while/lstm_cell_36/MatMulMatMulFsequential_13/lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_13/lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_13/lstm_36/while/lstm_cell_36/MatMul
@sequential_13/lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOpKsequential_13_lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02B
@sequential_13/lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp
1sequential_13/lstm_36/while/lstm_cell_36/MatMul_1MatMul)sequential_13_lstm_36_while_placeholder_2Hsequential_13/lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_13/lstm_36/while/lstm_cell_36/MatMul_1
,sequential_13/lstm_36/while/lstm_cell_36/addAddV29sequential_13/lstm_36/while/lstm_cell_36/MatMul:product:0;sequential_13/lstm_36/while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_13/lstm_36/while/lstm_cell_36/add
?sequential_13/lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOpJsequential_13_lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02A
?sequential_13/lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp
0sequential_13/lstm_36/while/lstm_cell_36/BiasAddBiasAdd0sequential_13/lstm_36/while/lstm_cell_36/add:z:0Gsequential_13/lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_13/lstm_36/while/lstm_cell_36/BiasAdd¶
8sequential_13/lstm_36/while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_13/lstm_36/while/lstm_cell_36/split/split_dimã
.sequential_13/lstm_36/while/lstm_cell_36/splitSplitAsequential_13/lstm_36/while/lstm_cell_36/split/split_dim:output:09sequential_13/lstm_36/while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_13/lstm_36/while/lstm_cell_36/splitÚ
0sequential_13/lstm_36/while/lstm_cell_36/SigmoidSigmoid7sequential_13/lstm_36/while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_13/lstm_36/while/lstm_cell_36/SigmoidÞ
2sequential_13/lstm_36/while/lstm_cell_36/Sigmoid_1Sigmoid7sequential_13/lstm_36/while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_13/lstm_36/while/lstm_cell_36/Sigmoid_1ø
,sequential_13/lstm_36/while/lstm_cell_36/mulMul6sequential_13/lstm_36/while/lstm_cell_36/Sigmoid_1:y:0)sequential_13_lstm_36_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_13/lstm_36/while/lstm_cell_36/mulÑ
-sequential_13/lstm_36/while/lstm_cell_36/ReluRelu7sequential_13/lstm_36/while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_13/lstm_36/while/lstm_cell_36/Relu
.sequential_13/lstm_36/while/lstm_cell_36/mul_1Mul4sequential_13/lstm_36/while/lstm_cell_36/Sigmoid:y:0;sequential_13/lstm_36/while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_36/while/lstm_cell_36/mul_1
.sequential_13/lstm_36/while/lstm_cell_36/add_1AddV20sequential_13/lstm_36/while/lstm_cell_36/mul:z:02sequential_13/lstm_36/while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_36/while/lstm_cell_36/add_1Þ
2sequential_13/lstm_36/while/lstm_cell_36/Sigmoid_2Sigmoid7sequential_13/lstm_36/while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_13/lstm_36/while/lstm_cell_36/Sigmoid_2Ð
/sequential_13/lstm_36/while/lstm_cell_36/Relu_1Relu2sequential_13/lstm_36/while/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_13/lstm_36/while/lstm_cell_36/Relu_1
.sequential_13/lstm_36/while/lstm_cell_36/mul_2Mul6sequential_13/lstm_36/while/lstm_cell_36/Sigmoid_2:y:0=sequential_13/lstm_36/while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_36/while/lstm_cell_36/mul_2Î
@sequential_13/lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_13_lstm_36_while_placeholder_1'sequential_13_lstm_36_while_placeholder2sequential_13/lstm_36/while/lstm_cell_36/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_13/lstm_36/while/TensorArrayV2Write/TensorListSetItem
!sequential_13/lstm_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_13/lstm_36/while/add/yÁ
sequential_13/lstm_36/while/addAddV2'sequential_13_lstm_36_while_placeholder*sequential_13/lstm_36/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_13/lstm_36/while/add
#sequential_13/lstm_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_13/lstm_36/while/add_1/yä
!sequential_13/lstm_36/while/add_1AddV2Dsequential_13_lstm_36_while_sequential_13_lstm_36_while_loop_counter,sequential_13/lstm_36/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_13/lstm_36/while/add_1Ã
$sequential_13/lstm_36/while/IdentityIdentity%sequential_13/lstm_36/while/add_1:z:0!^sequential_13/lstm_36/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_13/lstm_36/while/Identityì
&sequential_13/lstm_36/while/Identity_1IdentityJsequential_13_lstm_36_while_sequential_13_lstm_36_while_maximum_iterations!^sequential_13/lstm_36/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_13/lstm_36/while/Identity_1Å
&sequential_13/lstm_36/while/Identity_2Identity#sequential_13/lstm_36/while/add:z:0!^sequential_13/lstm_36/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_13/lstm_36/while/Identity_2ò
&sequential_13/lstm_36/while/Identity_3IdentityPsequential_13/lstm_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_13/lstm_36/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_13/lstm_36/while/Identity_3å
&sequential_13/lstm_36/while/Identity_4Identity2sequential_13/lstm_36/while/lstm_cell_36/mul_2:z:0!^sequential_13/lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_13/lstm_36/while/Identity_4å
&sequential_13/lstm_36/while/Identity_5Identity2sequential_13/lstm_36/while/lstm_cell_36/add_1:z:0!^sequential_13/lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_13/lstm_36/while/Identity_5Ì
 sequential_13/lstm_36/while/NoOpNoOp@^sequential_13/lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp?^sequential_13/lstm_36/while/lstm_cell_36/MatMul/ReadVariableOpA^sequential_13/lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_13/lstm_36/while/NoOp"U
$sequential_13_lstm_36_while_identity-sequential_13/lstm_36/while/Identity:output:0"Y
&sequential_13_lstm_36_while_identity_1/sequential_13/lstm_36/while/Identity_1:output:0"Y
&sequential_13_lstm_36_while_identity_2/sequential_13/lstm_36/while/Identity_2:output:0"Y
&sequential_13_lstm_36_while_identity_3/sequential_13/lstm_36/while/Identity_3:output:0"Y
&sequential_13_lstm_36_while_identity_4/sequential_13/lstm_36/while/Identity_4:output:0"Y
&sequential_13_lstm_36_while_identity_5/sequential_13/lstm_36/while/Identity_5:output:0"
Hsequential_13_lstm_36_while_lstm_cell_36_biasadd_readvariableop_resourceJsequential_13_lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0"
Isequential_13_lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resourceKsequential_13_lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0"
Gsequential_13_lstm_36_while_lstm_cell_36_matmul_readvariableop_resourceIsequential_13_lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0"
Asequential_13_lstm_36_while_sequential_13_lstm_36_strided_slice_1Csequential_13_lstm_36_while_sequential_13_lstm_36_strided_slice_1_0"
}sequential_13_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_36_tensorarrayunstack_tensorlistfromtensorsequential_13_lstm_36_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_13/lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp?sequential_13/lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp2
>sequential_13/lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp>sequential_13/lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp2
@sequential_13/lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp@sequential_13/lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Í
e
F__inference_dropout_20_layer_call_and_return_conditional_losses_359131

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
ù$

I__inference_sequential_13_layer_call_and_return_conditional_losses_357605

inputs 
lstm_36_357577:  
lstm_36_357579: 
lstm_36_357581:  
lstm_37_357585:  
lstm_37_357587: 
lstm_37_357589: !
dense_36_357593:
dense_36_357595:!
dense_37_357598:
dense_37_357600:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢"dropout_20/StatefulPartitionedCall¢"dropout_21/StatefulPartitionedCall¢lstm_36/StatefulPartitionedCall¢lstm_37/StatefulPartitionedCall¥
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinputslstm_36_357577lstm_36_357579lstm_36_357581*
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3575382!
lstm_36/StatefulPartitionedCall
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0*
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_3573712$
"dropout_20/StatefulPartitionedCallÆ
lstm_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0lstm_37_357585lstm_37_357587lstm_37_357589*
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3573422!
lstm_37/StatefulPartitionedCall¹
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_37/StatefulPartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
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
F__inference_dropout_21_layer_call_and_return_conditional_losses_3571752$
"dropout_21/StatefulPartitionedCall¹
 dense_36/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0dense_36_357593dense_36_357595*
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
D__inference_dense_36_layer_call_and_return_conditional_losses_3570682"
 dense_36/StatefulPartitionedCall·
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_357598dense_37_357600*
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
D__inference_dense_37_layer_call_and_return_conditional_losses_3570842"
 dense_37/StatefulPartitionedCall
reshape_18/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
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
F__inference_reshape_18_layer_call_and_return_conditional_losses_3571032
reshape_18/PartitionedCall
IdentityIdentity#reshape_18/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¢
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_359961

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

b
F__inference_reshape_18_layer_call_and_return_conditional_losses_357103

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
È
G
+__inference_reshape_18_layer_call_fn_359850

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
F__inference_reshape_18_layer_call_and_return_conditional_losses_3571032
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
ì!
º
I__inference_sequential_13_layer_call_and_return_conditional_losses_357106

inputs 
lstm_36_356878:  
lstm_36_356880: 
lstm_36_356882:  
lstm_37_357043:  
lstm_37_357045: 
lstm_37_357047: !
dense_36_357069:
dense_36_357071:!
dense_37_357085:
dense_37_357087:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢lstm_36/StatefulPartitionedCall¢lstm_37/StatefulPartitionedCall¥
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinputslstm_36_356878lstm_36_356880lstm_36_356882*
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3568772!
lstm_36/StatefulPartitionedCall
dropout_20/PartitionedCallPartitionedCall(lstm_36/StatefulPartitionedCall:output:0*
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_3568902
dropout_20/PartitionedCall¾
lstm_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0lstm_37_357043lstm_37_357045lstm_37_357047*
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3570422!
lstm_37/StatefulPartitionedCallü
dropout_21/PartitionedCallPartitionedCall(lstm_37/StatefulPartitionedCall:output:0*
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
F__inference_dropout_21_layer_call_and_return_conditional_losses_3570552
dropout_21/PartitionedCall±
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0dense_36_357069dense_36_357071*
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
D__inference_dense_36_layer_call_and_return_conditional_losses_3570682"
 dense_36/StatefulPartitionedCall·
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_357085dense_37_357087*
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
D__inference_dense_37_layer_call_and_return_conditional_losses_3570842"
 dense_37/StatefulPartitionedCall
reshape_18/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
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
F__inference_reshape_18_layer_call_and_return_conditional_losses_3571032
reshape_18/PartitionedCall
IdentityIdentity#reshape_18/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_360027

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
ÀJ
Ê

lstm_36_while_body_357865,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3+
'lstm_36_while_lstm_36_strided_slice_1_0g
clstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0: O
=lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0: J
<lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0: 
lstm_36_while_identity
lstm_36_while_identity_1
lstm_36_while_identity_2
lstm_36_while_identity_3
lstm_36_while_identity_4
lstm_36_while_identity_5)
%lstm_36_while_lstm_36_strided_slice_1e
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorK
9lstm_36_while_lstm_cell_36_matmul_readvariableop_resource: M
;lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource: H
:lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource: ¢1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp¢0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp¢2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpÓ
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0lstm_36_while_placeholderHlstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_36/while/TensorArrayV2Read/TensorListGetItemà
0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp;lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype022
0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOpö
!lstm_36/while/lstm_cell_36/MatMulMatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_36/while/lstm_cell_36/MatMulæ
2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp=lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpß
#lstm_36/while/lstm_cell_36/MatMul_1MatMullstm_36_while_placeholder_2:lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_1×
lstm_36/while/lstm_cell_36/addAddV2+lstm_36/while/lstm_cell_36/MatMul:product:0-lstm_36/while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/while/lstm_cell_36/addß
1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp<lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOpä
"lstm_36/while/lstm_cell_36/BiasAddBiasAdd"lstm_36/while/lstm_cell_36/add:z:09lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/while/lstm_cell_36/BiasAdd
*lstm_36/while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_36/while/lstm_cell_36/split/split_dim«
 lstm_36/while/lstm_cell_36/splitSplit3lstm_36/while/lstm_cell_36/split/split_dim:output:0+lstm_36/while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_36/while/lstm_cell_36/split°
"lstm_36/while/lstm_cell_36/SigmoidSigmoid)lstm_36/while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_36/while/lstm_cell_36/Sigmoid´
$lstm_36/while/lstm_cell_36/Sigmoid_1Sigmoid)lstm_36/while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_36/while/lstm_cell_36/Sigmoid_1À
lstm_36/while/lstm_cell_36/mulMul(lstm_36/while/lstm_cell_36/Sigmoid_1:y:0lstm_36_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_36/while/lstm_cell_36/mul§
lstm_36/while/lstm_cell_36/ReluRelu)lstm_36/while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_36/while/lstm_cell_36/ReluÔ
 lstm_36/while/lstm_cell_36/mul_1Mul&lstm_36/while/lstm_cell_36/Sigmoid:y:0-lstm_36/while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/lstm_cell_36/mul_1É
 lstm_36/while/lstm_cell_36/add_1AddV2"lstm_36/while/lstm_cell_36/mul:z:0$lstm_36/while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/lstm_cell_36/add_1´
$lstm_36/while/lstm_cell_36/Sigmoid_2Sigmoid)lstm_36/while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_36/while/lstm_cell_36/Sigmoid_2¦
!lstm_36/while/lstm_cell_36/Relu_1Relu$lstm_36/while/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_36/while/lstm_cell_36/Relu_1Ø
 lstm_36/while/lstm_cell_36/mul_2Mul(lstm_36/while/lstm_cell_36/Sigmoid_2:y:0/lstm_36/while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/lstm_cell_36/mul_2
2lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_36_while_placeholder_1lstm_36_while_placeholder$lstm_36/while/lstm_cell_36/mul_2:z:0*
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
lstm_36/while/Identity_4Identity$lstm_36/while/lstm_cell_36/mul_2:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/while/Identity_4­
lstm_36/while/Identity_5Identity$lstm_36/while/lstm_cell_36/add_1:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/while/Identity_5
lstm_36/while/NoOpNoOp2^lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp1^lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp3^lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
%lstm_36_while_lstm_36_strided_slice_1'lstm_36_while_lstm_36_strided_slice_1_0"z
:lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource<lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0"|
;lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource=lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0"x
9lstm_36_while_lstm_cell_36_matmul_readvariableop_resource;lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0"È
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp2d
0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp2h
2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_359477
inputs_0=
+lstm_cell_37_matmul_readvariableop_resource: ?
-lstm_cell_37_matmul_1_readvariableop_resource: :
,lstm_cell_37_biasadd_readvariableop_resource: 
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_37/MatMul/ReadVariableOp¬
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMulº
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_37/MatMul_1/ReadVariableOp¨
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMul_1
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/add³
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_37/BiasAdd/ReadVariableOp¬
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/BiasAdd~
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_37/split/split_dimó
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_37/split
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_1
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul}
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_1
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/add_1
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_2|
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu_1 
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
while_body_359393*
condR
while_cond_359392*K
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ïS
À
__inference__traced_save_360193
file_prefix.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_36_lstm_cell_36_kernel_read_readvariableopD
@savev2_lstm_36_lstm_cell_36_recurrent_kernel_read_readvariableop8
4savev2_lstm_36_lstm_cell_36_bias_read_readvariableop:
6savev2_lstm_37_lstm_cell_37_kernel_read_readvariableopD
@savev2_lstm_37_lstm_cell_37_recurrent_kernel_read_readvariableop8
4savev2_lstm_37_lstm_cell_37_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableopA
=savev2_adam_lstm_36_lstm_cell_36_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_36_lstm_cell_36_bias_m_read_readvariableopA
=savev2_adam_lstm_37_lstm_cell_37_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_37_lstm_cell_37_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableopA
=savev2_adam_lstm_36_lstm_cell_36_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_36_lstm_cell_36_bias_v_read_readvariableopA
=savev2_adam_lstm_37_lstm_cell_37_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_37_lstm_cell_37_bias_v_read_readvariableop
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
ShardedFilenameº
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*Ì
valueÂB¿&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÔ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_36_lstm_cell_36_kernel_read_readvariableop@savev2_lstm_36_lstm_cell_36_recurrent_kernel_read_readvariableop4savev2_lstm_36_lstm_cell_36_bias_read_readvariableop6savev2_lstm_37_lstm_cell_37_kernel_read_readvariableop@savev2_lstm_37_lstm_cell_37_recurrent_kernel_read_readvariableop4savev2_lstm_37_lstm_cell_37_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop=savev2_adam_lstm_36_lstm_cell_36_kernel_m_read_readvariableopGsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_36_lstm_cell_36_bias_m_read_readvariableop=savev2_adam_lstm_37_lstm_cell_37_kernel_m_read_readvariableopGsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_37_lstm_cell_37_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop=savev2_adam_lstm_36_lstm_cell_36_kernel_v_read_readvariableopGsavev2_adam_lstm_36_lstm_cell_36_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_36_lstm_cell_36_bias_v_read_readvariableop=savev2_adam_lstm_37_lstm_cell_37_kernel_v_read_readvariableopGsavev2_adam_lstm_37_lstm_cell_37_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_37_lstm_cell_37_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	2
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

identity_1Identity_1:output:0*£
_input_shapes
: ::::: : : : : : : : : : : : : ::::: : : : : : ::::: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 
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
: :$
 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

: :$! 

_output_shapes

: : "

_output_shapes
: :$# 

_output_shapes

: :$$ 

_output_shapes

: : %

_output_shapes
: :&

_output_shapes
: 
Ö
´
(__inference_lstm_36_layer_call_fn_358478
inputs_0
unknown: 
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3558282
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
×[

C__inference_lstm_36_layer_call_and_return_conditional_losses_359104

inputs=
+lstm_cell_36_matmul_readvariableop_resource: ?
-lstm_cell_36_matmul_1_readvariableop_resource: :
,lstm_cell_36_biasadd_readvariableop_resource: 
identity¢#lstm_cell_36/BiasAdd/ReadVariableOp¢"lstm_cell_36/MatMul/ReadVariableOp¢$lstm_cell_36/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_36/MatMul/ReadVariableOpReadVariableOp+lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_36/MatMul/ReadVariableOp¬
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0*lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMulº
$lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_36/MatMul_1/ReadVariableOp¨
lstm_cell_36/MatMul_1MatMulzeros:output:0,lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1
lstm_cell_36/addAddV2lstm_cell_36/MatMul:product:0lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add³
#lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_36/BiasAdd/ReadVariableOp¬
lstm_cell_36/BiasAddBiasAddlstm_cell_36/add:z:0+lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dimó
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_36/split
lstm_cell_36/SigmoidSigmoidlstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mulMullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul}
lstm_cell_36/ReluRelulstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu
lstm_cell_36/mul_1Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_1
lstm_cell_36/add_1AddV2lstm_cell_36/mul:z:0lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_2Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_36_matmul_readvariableop_resource-lstm_cell_36_matmul_1_readvariableop_resource,lstm_cell_36_biasadd_readvariableop_resource*
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
while_body_359020*
condR
while_cond_359019*K
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
NoOpNoOp$^lstm_cell_36/BiasAdd/ReadVariableOp#^lstm_cell_36/MatMul/ReadVariableOp%^lstm_cell_36/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_36/BiasAdd/ReadVariableOp#lstm_cell_36/BiasAdd/ReadVariableOp2H
"lstm_cell_36/MatMul/ReadVariableOp"lstm_cell_36/MatMul/ReadVariableOp2L
$lstm_cell_36/MatMul_1/ReadVariableOp$lstm_cell_36/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_356179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_37_356203_0: -
while_lstm_cell_37_356205_0: )
while_lstm_cell_37_356207_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_37_356203: +
while_lstm_cell_37_356205: '
while_lstm_cell_37_356207: ¢*while/lstm_cell_37/StatefulPartitionedCallÃ
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
*while/lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_37_356203_0while_lstm_cell_37_356205_0while_lstm_cell_37_356207_0*
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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_3561652,
*while/lstm_cell_37/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_37/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_37/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_37/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_37/StatefulPartitionedCall*"
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
while_lstm_cell_37_356203while_lstm_cell_37_356203_0"8
while_lstm_cell_37_356205while_lstm_cell_37_356205_0"8
while_lstm_cell_37_356207while_lstm_cell_37_356207_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_37/StatefulPartitionedCall*while/lstm_cell_37/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_357042

inputs=
+lstm_cell_37_matmul_readvariableop_resource: ?
-lstm_cell_37_matmul_1_readvariableop_resource: :
,lstm_cell_37_biasadd_readvariableop_resource: 
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_37/MatMul/ReadVariableOp¬
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMulº
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_37/MatMul_1/ReadVariableOp¨
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMul_1
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/add³
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_37/BiasAdd/ReadVariableOp¬
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/BiasAdd~
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_37/split/split_dimó
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_37/split
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_1
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul}
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_1
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/add_1
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_2|
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu_1 
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
while_body_356958*
condR
while_cond_356957*K
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ$

I__inference_sequential_13_layer_call_and_return_conditional_losses_357715
input_17 
lstm_36_357687:  
lstm_36_357689: 
lstm_36_357691:  
lstm_37_357695:  
lstm_37_357697: 
lstm_37_357699: !
dense_36_357703:
dense_36_357705:!
dense_37_357708:
dense_37_357710:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢"dropout_20/StatefulPartitionedCall¢"dropout_21/StatefulPartitionedCall¢lstm_36/StatefulPartitionedCall¢lstm_37/StatefulPartitionedCall§
lstm_36/StatefulPartitionedCallStatefulPartitionedCallinput_17lstm_36_357687lstm_36_357689lstm_36_357691*
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3575382!
lstm_36/StatefulPartitionedCall
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_36/StatefulPartitionedCall:output:0*
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_3573712$
"dropout_20/StatefulPartitionedCallÆ
lstm_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0lstm_37_357695lstm_37_357697lstm_37_357699*
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_3573422!
lstm_37/StatefulPartitionedCall¹
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_37/StatefulPartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
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
F__inference_dropout_21_layer_call_and_return_conditional_losses_3571752$
"dropout_21/StatefulPartitionedCall¹
 dense_36/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0dense_36_357703dense_36_357705*
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
D__inference_dense_36_layer_call_and_return_conditional_losses_3570682"
 dense_36/StatefulPartitionedCall·
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_357708dense_37_357710*
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
D__inference_dense_37_layer_call_and_return_conditional_losses_3570842"
 dense_37/StatefulPartitionedCall
reshape_18/PartitionedCallPartitionedCall)dense_37/StatefulPartitionedCall:output:0*
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
F__inference_reshape_18_layer_call_and_return_conditional_losses_3571032
reshape_18/PartitionedCall
IdentityIdentity#reshape_18/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¢
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall ^lstm_36/StatefulPartitionedCall ^lstm_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2B
lstm_36/StatefulPartitionedCalllstm_36/StatefulPartitionedCall2B
lstm_37/StatefulPartitionedCalllstm_37/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_17
ÀJ
Ê

lstm_36_while_body_358187,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3+
'lstm_36_while_lstm_36_strided_slice_1_0g
clstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0: O
=lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0: J
<lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0: 
lstm_36_while_identity
lstm_36_while_identity_1
lstm_36_while_identity_2
lstm_36_while_identity_3
lstm_36_while_identity_4
lstm_36_while_identity_5)
%lstm_36_while_lstm_36_strided_slice_1e
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorK
9lstm_36_while_lstm_cell_36_matmul_readvariableop_resource: M
;lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource: H
:lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource: ¢1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp¢0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp¢2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpÓ
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0lstm_36_while_placeholderHlstm_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_36/while/TensorArrayV2Read/TensorListGetItemà
0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp;lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype022
0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOpö
!lstm_36/while/lstm_cell_36/MatMulMatMul8lstm_36/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_36/while/lstm_cell_36/MatMulæ
2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp=lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOpß
#lstm_36/while/lstm_cell_36/MatMul_1MatMullstm_36_while_placeholder_2:lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_36/while/lstm_cell_36/MatMul_1×
lstm_36/while/lstm_cell_36/addAddV2+lstm_36/while/lstm_cell_36/MatMul:product:0-lstm_36/while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_36/while/lstm_cell_36/addß
1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp<lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOpä
"lstm_36/while/lstm_cell_36/BiasAddBiasAdd"lstm_36/while/lstm_cell_36/add:z:09lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_36/while/lstm_cell_36/BiasAdd
*lstm_36/while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_36/while/lstm_cell_36/split/split_dim«
 lstm_36/while/lstm_cell_36/splitSplit3lstm_36/while/lstm_cell_36/split/split_dim:output:0+lstm_36/while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_36/while/lstm_cell_36/split°
"lstm_36/while/lstm_cell_36/SigmoidSigmoid)lstm_36/while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_36/while/lstm_cell_36/Sigmoid´
$lstm_36/while/lstm_cell_36/Sigmoid_1Sigmoid)lstm_36/while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_36/while/lstm_cell_36/Sigmoid_1À
lstm_36/while/lstm_cell_36/mulMul(lstm_36/while/lstm_cell_36/Sigmoid_1:y:0lstm_36_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_36/while/lstm_cell_36/mul§
lstm_36/while/lstm_cell_36/ReluRelu)lstm_36/while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_36/while/lstm_cell_36/ReluÔ
 lstm_36/while/lstm_cell_36/mul_1Mul&lstm_36/while/lstm_cell_36/Sigmoid:y:0-lstm_36/while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/lstm_cell_36/mul_1É
 lstm_36/while/lstm_cell_36/add_1AddV2"lstm_36/while/lstm_cell_36/mul:z:0$lstm_36/while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/lstm_cell_36/add_1´
$lstm_36/while/lstm_cell_36/Sigmoid_2Sigmoid)lstm_36/while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_36/while/lstm_cell_36/Sigmoid_2¦
!lstm_36/while/lstm_cell_36/Relu_1Relu$lstm_36/while/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_36/while/lstm_cell_36/Relu_1Ø
 lstm_36/while/lstm_cell_36/mul_2Mul(lstm_36/while/lstm_cell_36/Sigmoid_2:y:0/lstm_36/while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_36/while/lstm_cell_36/mul_2
2lstm_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_36_while_placeholder_1lstm_36_while_placeholder$lstm_36/while/lstm_cell_36/mul_2:z:0*
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
lstm_36/while/Identity_4Identity$lstm_36/while/lstm_cell_36/mul_2:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/while/Identity_4­
lstm_36/while/Identity_5Identity$lstm_36/while/lstm_cell_36/add_1:z:0^lstm_36/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_36/while/Identity_5
lstm_36/while/NoOpNoOp2^lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp1^lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp3^lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
%lstm_36_while_lstm_36_strided_slice_1'lstm_36_while_lstm_36_strided_slice_1_0"z
:lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource<lstm_36_while_lstm_cell_36_biasadd_readvariableop_resource_0"|
;lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource=lstm_36_while_lstm_cell_36_matmul_1_readvariableop_resource_0"x
9lstm_36_while_lstm_cell_36_matmul_readvariableop_resource;lstm_36_while_lstm_cell_36_matmul_readvariableop_resource_0"È
alstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensorclstm_36_while_tensorarrayv2read_tensorlistgetitem_lstm_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp1lstm_36/while/lstm_cell_36/BiasAdd/ReadVariableOp2d
0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp0lstm_36/while/lstm_cell_36/MatMul/ReadVariableOp2h
2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp2lstm_36/while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_359544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_37_matmul_readvariableop_resource_0: G
5while_lstm_cell_37_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_37_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_37_matmul_readvariableop_resource: E
3while_lstm_cell_37_matmul_1_readvariableop_resource: @
2while_lstm_cell_37_biasadd_readvariableop_resource: ¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_37/MatMul/ReadVariableOpÖ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMulÎ
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_37/MatMul_1/ReadVariableOp¿
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMul_1·
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/addÇ
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_37/BiasAdd/ReadVariableOpÄ
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/BiasAdd
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_37/split/split_dim
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_37/split
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_1 
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu´
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_1©
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/add_1
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_2
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu_1¸
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_lstm_cell_37_layer_call_fn_359995

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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_3563112
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
¦

õ
D__inference_dense_37_layer_call_and_return_conditional_losses_357084

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
¿^

'sequential_13_lstm_37_while_body_355353H
Dsequential_13_lstm_37_while_sequential_13_lstm_37_while_loop_counterN
Jsequential_13_lstm_37_while_sequential_13_lstm_37_while_maximum_iterations+
'sequential_13_lstm_37_while_placeholder-
)sequential_13_lstm_37_while_placeholder_1-
)sequential_13_lstm_37_while_placeholder_2-
)sequential_13_lstm_37_while_placeholder_3G
Csequential_13_lstm_37_while_sequential_13_lstm_37_strided_slice_1_0
sequential_13_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_37_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_13_lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0: ]
Ksequential_13_lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0: X
Jsequential_13_lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0: (
$sequential_13_lstm_37_while_identity*
&sequential_13_lstm_37_while_identity_1*
&sequential_13_lstm_37_while_identity_2*
&sequential_13_lstm_37_while_identity_3*
&sequential_13_lstm_37_while_identity_4*
&sequential_13_lstm_37_while_identity_5E
Asequential_13_lstm_37_while_sequential_13_lstm_37_strided_slice_1
}sequential_13_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_37_tensorarrayunstack_tensorlistfromtensorY
Gsequential_13_lstm_37_while_lstm_cell_37_matmul_readvariableop_resource: [
Isequential_13_lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource: V
Hsequential_13_lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource: ¢?sequential_13/lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp¢>sequential_13/lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp¢@sequential_13/lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpï
Msequential_13/lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_13/lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_13/lstm_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_13_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_37_tensorarrayunstack_tensorlistfromtensor_0'sequential_13_lstm_37_while_placeholderVsequential_13/lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_13/lstm_37/while/TensorArrayV2Read/TensorListGetItem
>sequential_13/lstm_37/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpIsequential_13_lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02@
>sequential_13/lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp®
/sequential_13/lstm_37/while/lstm_cell_37/MatMulMatMulFsequential_13/lstm_37/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_13/lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_13/lstm_37/while/lstm_cell_37/MatMul
@sequential_13/lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpKsequential_13_lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02B
@sequential_13/lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp
1sequential_13/lstm_37/while/lstm_cell_37/MatMul_1MatMul)sequential_13_lstm_37_while_placeholder_2Hsequential_13/lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_13/lstm_37/while/lstm_cell_37/MatMul_1
,sequential_13/lstm_37/while/lstm_cell_37/addAddV29sequential_13/lstm_37/while/lstm_cell_37/MatMul:product:0;sequential_13/lstm_37/while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_13/lstm_37/while/lstm_cell_37/add
?sequential_13/lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpJsequential_13_lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02A
?sequential_13/lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp
0sequential_13/lstm_37/while/lstm_cell_37/BiasAddBiasAdd0sequential_13/lstm_37/while/lstm_cell_37/add:z:0Gsequential_13/lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_13/lstm_37/while/lstm_cell_37/BiasAdd¶
8sequential_13/lstm_37/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_13/lstm_37/while/lstm_cell_37/split/split_dimã
.sequential_13/lstm_37/while/lstm_cell_37/splitSplitAsequential_13/lstm_37/while/lstm_cell_37/split/split_dim:output:09sequential_13/lstm_37/while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_13/lstm_37/while/lstm_cell_37/splitÚ
0sequential_13/lstm_37/while/lstm_cell_37/SigmoidSigmoid7sequential_13/lstm_37/while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_13/lstm_37/while/lstm_cell_37/SigmoidÞ
2sequential_13/lstm_37/while/lstm_cell_37/Sigmoid_1Sigmoid7sequential_13/lstm_37/while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_13/lstm_37/while/lstm_cell_37/Sigmoid_1ø
,sequential_13/lstm_37/while/lstm_cell_37/mulMul6sequential_13/lstm_37/while/lstm_cell_37/Sigmoid_1:y:0)sequential_13_lstm_37_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_13/lstm_37/while/lstm_cell_37/mulÑ
-sequential_13/lstm_37/while/lstm_cell_37/ReluRelu7sequential_13/lstm_37/while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_13/lstm_37/while/lstm_cell_37/Relu
.sequential_13/lstm_37/while/lstm_cell_37/mul_1Mul4sequential_13/lstm_37/while/lstm_cell_37/Sigmoid:y:0;sequential_13/lstm_37/while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_37/while/lstm_cell_37/mul_1
.sequential_13/lstm_37/while/lstm_cell_37/add_1AddV20sequential_13/lstm_37/while/lstm_cell_37/mul:z:02sequential_13/lstm_37/while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_37/while/lstm_cell_37/add_1Þ
2sequential_13/lstm_37/while/lstm_cell_37/Sigmoid_2Sigmoid7sequential_13/lstm_37/while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_13/lstm_37/while/lstm_cell_37/Sigmoid_2Ð
/sequential_13/lstm_37/while/lstm_cell_37/Relu_1Relu2sequential_13/lstm_37/while/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_13/lstm_37/while/lstm_cell_37/Relu_1
.sequential_13/lstm_37/while/lstm_cell_37/mul_2Mul6sequential_13/lstm_37/while/lstm_cell_37/Sigmoid_2:y:0=sequential_13/lstm_37/while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_13/lstm_37/while/lstm_cell_37/mul_2Î
@sequential_13/lstm_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_13_lstm_37_while_placeholder_1'sequential_13_lstm_37_while_placeholder2sequential_13/lstm_37/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_13/lstm_37/while/TensorArrayV2Write/TensorListSetItem
!sequential_13/lstm_37/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_13/lstm_37/while/add/yÁ
sequential_13/lstm_37/while/addAddV2'sequential_13_lstm_37_while_placeholder*sequential_13/lstm_37/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_13/lstm_37/while/add
#sequential_13/lstm_37/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_13/lstm_37/while/add_1/yä
!sequential_13/lstm_37/while/add_1AddV2Dsequential_13_lstm_37_while_sequential_13_lstm_37_while_loop_counter,sequential_13/lstm_37/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_13/lstm_37/while/add_1Ã
$sequential_13/lstm_37/while/IdentityIdentity%sequential_13/lstm_37/while/add_1:z:0!^sequential_13/lstm_37/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_13/lstm_37/while/Identityì
&sequential_13/lstm_37/while/Identity_1IdentityJsequential_13_lstm_37_while_sequential_13_lstm_37_while_maximum_iterations!^sequential_13/lstm_37/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_13/lstm_37/while/Identity_1Å
&sequential_13/lstm_37/while/Identity_2Identity#sequential_13/lstm_37/while/add:z:0!^sequential_13/lstm_37/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_13/lstm_37/while/Identity_2ò
&sequential_13/lstm_37/while/Identity_3IdentityPsequential_13/lstm_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_13/lstm_37/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_13/lstm_37/while/Identity_3å
&sequential_13/lstm_37/while/Identity_4Identity2sequential_13/lstm_37/while/lstm_cell_37/mul_2:z:0!^sequential_13/lstm_37/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_13/lstm_37/while/Identity_4å
&sequential_13/lstm_37/while/Identity_5Identity2sequential_13/lstm_37/while/lstm_cell_37/add_1:z:0!^sequential_13/lstm_37/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_13/lstm_37/while/Identity_5Ì
 sequential_13/lstm_37/while/NoOpNoOp@^sequential_13/lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp?^sequential_13/lstm_37/while/lstm_cell_37/MatMul/ReadVariableOpA^sequential_13/lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_13/lstm_37/while/NoOp"U
$sequential_13_lstm_37_while_identity-sequential_13/lstm_37/while/Identity:output:0"Y
&sequential_13_lstm_37_while_identity_1/sequential_13/lstm_37/while/Identity_1:output:0"Y
&sequential_13_lstm_37_while_identity_2/sequential_13/lstm_37/while/Identity_2:output:0"Y
&sequential_13_lstm_37_while_identity_3/sequential_13/lstm_37/while/Identity_3:output:0"Y
&sequential_13_lstm_37_while_identity_4/sequential_13/lstm_37/while/Identity_4:output:0"Y
&sequential_13_lstm_37_while_identity_5/sequential_13/lstm_37/while/Identity_5:output:0"
Hsequential_13_lstm_37_while_lstm_cell_37_biasadd_readvariableop_resourceJsequential_13_lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0"
Isequential_13_lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resourceKsequential_13_lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0"
Gsequential_13_lstm_37_while_lstm_cell_37_matmul_readvariableop_resourceIsequential_13_lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0"
Asequential_13_lstm_37_while_sequential_13_lstm_37_strided_slice_1Csequential_13_lstm_37_while_sequential_13_lstm_37_strided_slice_1_0"
}sequential_13_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_37_tensorarrayunstack_tensorlistfromtensorsequential_13_lstm_37_while_tensorarrayv2read_tensorlistgetitem_sequential_13_lstm_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_13/lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp?sequential_13/lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp2
>sequential_13/lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp>sequential_13/lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp2
@sequential_13/lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp@sequential_13/lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_359019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359019___redundant_placeholder04
0while_while_cond_359019___redundant_placeholder14
0while_while_cond_359019___redundant_placeholder24
0while_while_cond_359019___redundant_placeholder3
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
-__inference_lstm_cell_37_layer_call_fn_359978

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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_3561652
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
¤
Î
"__inference__traced_restore_360314
file_prefix2
 assignvariableop_dense_36_kernel:.
 assignvariableop_1_dense_36_bias:4
"assignvariableop_2_dense_37_kernel:.
 assignvariableop_3_dense_37_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: @
.assignvariableop_9_lstm_36_lstm_cell_36_kernel: K
9assignvariableop_10_lstm_36_lstm_cell_36_recurrent_kernel: ;
-assignvariableop_11_lstm_36_lstm_cell_36_bias: A
/assignvariableop_12_lstm_37_lstm_cell_37_kernel: K
9assignvariableop_13_lstm_37_lstm_cell_37_recurrent_kernel: ;
-assignvariableop_14_lstm_37_lstm_cell_37_bias: #
assignvariableop_15_total: #
assignvariableop_16_count: <
*assignvariableop_17_adam_dense_36_kernel_m:6
(assignvariableop_18_adam_dense_36_bias_m:<
*assignvariableop_19_adam_dense_37_kernel_m:6
(assignvariableop_20_adam_dense_37_bias_m:H
6assignvariableop_21_adam_lstm_36_lstm_cell_36_kernel_m: R
@assignvariableop_22_adam_lstm_36_lstm_cell_36_recurrent_kernel_m: B
4assignvariableop_23_adam_lstm_36_lstm_cell_36_bias_m: H
6assignvariableop_24_adam_lstm_37_lstm_cell_37_kernel_m: R
@assignvariableop_25_adam_lstm_37_lstm_cell_37_recurrent_kernel_m: B
4assignvariableop_26_adam_lstm_37_lstm_cell_37_bias_m: <
*assignvariableop_27_adam_dense_36_kernel_v:6
(assignvariableop_28_adam_dense_36_bias_v:<
*assignvariableop_29_adam_dense_37_kernel_v:6
(assignvariableop_30_adam_dense_37_bias_v:H
6assignvariableop_31_adam_lstm_36_lstm_cell_36_kernel_v: R
@assignvariableop_32_adam_lstm_36_lstm_cell_36_recurrent_kernel_v: B
4assignvariableop_33_adam_lstm_36_lstm_cell_36_bias_v: H
6assignvariableop_34_adam_lstm_37_lstm_cell_37_kernel_v: R
@assignvariableop_35_adam_lstm_37_lstm_cell_37_recurrent_kernel_v: B
4assignvariableop_36_adam_lstm_37_lstm_cell_37_bias_v: 
identity_38¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9À
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*Ì
valueÂB¿&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÚ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesì
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*®
_output_shapes
::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_36_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_36_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_37_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_37_biasIdentity_3:output:0"/device:CPU:0*
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
Identity_12·
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_37_lstm_cell_37_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Á
AssignVariableOp_13AssignVariableOp9assignvariableop_13_lstm_37_lstm_cell_37_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14µ
AssignVariableOp_14AssignVariableOp-assignvariableop_14_lstm_37_lstm_cell_37_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17²
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_36_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_36_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_37_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_37_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¾
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_lstm_36_lstm_cell_36_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22È
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_lstm_36_lstm_cell_36_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¼
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_lstm_36_lstm_cell_36_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¾
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_37_lstm_cell_37_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25È
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_37_lstm_cell_37_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¼
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_37_lstm_cell_37_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_36_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_36_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_37_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_37_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¾
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_36_lstm_cell_36_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32È
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_36_lstm_cell_36_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¼
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_36_lstm_cell_36_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¾
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_37_lstm_cell_37_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35È
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_37_lstm_cell_37_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¼
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_37_lstm_cell_37_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37f
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_38ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362(
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

d
F__inference_dropout_20_layer_call_and_return_conditional_losses_356890

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

õ
D__inference_dense_36_layer_call_and_return_conditional_losses_359826

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
F

C__inference_lstm_36_layer_call_and_return_conditional_losses_355618

inputs%
lstm_cell_36_355536: %
lstm_cell_36_355538: !
lstm_cell_36_355540: 
identity¢$lstm_cell_36/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
$lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_36_355536lstm_cell_36_355538lstm_cell_36_355540*
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_3555352&
$lstm_cell_36/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_36_355536lstm_cell_36_355538lstm_cell_36_355540*
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
while_body_355549*
condR
while_cond_355548*K
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
NoOpNoOp%^lstm_cell_36/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_36/StatefulPartitionedCall$lstm_cell_36/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_359543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359543___redundant_placeholder04
0while_while_cond_359543___redundant_placeholder14
0while_while_cond_359543___redundant_placeholder24
0while_while_cond_359543___redundant_placeholder3
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
Õ
Ã
while_cond_359694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359694___redundant_placeholder04
0while_while_cond_359694___redundant_placeholder14
0while_while_cond_359694___redundant_placeholder24
0while_while_cond_359694___redundant_placeholder3
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
Õ
Ã
while_cond_359241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359241___redundant_placeholder04
0while_while_cond_359241___redundant_placeholder14
0while_while_cond_359241___redundant_placeholder24
0while_while_cond_359241___redundant_placeholder3
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
Ò%
Ý
while_body_355549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_36_355573_0: -
while_lstm_cell_36_355575_0: )
while_lstm_cell_36_355577_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_36_355573: +
while_lstm_cell_36_355575: '
while_lstm_cell_36_355577: ¢*while/lstm_cell_36/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_36_355573_0while_lstm_cell_36_355575_0while_lstm_cell_36_355577_0*
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_3555352,
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
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_36/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_36_355573while_lstm_cell_36_355573_0"8
while_lstm_cell_36_355575while_lstm_cell_36_355575_0"8
while_lstm_cell_36_355577while_lstm_cell_36_355577_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
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
while_cond_359392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359392___redundant_placeholder04
0while_while_cond_359392___redundant_placeholder14
0while_while_cond_359392___redundant_placeholder24
0while_while_cond_359392___redundant_placeholder3
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
Æ

ã
lstm_36_while_cond_357864,
(lstm_36_while_lstm_36_while_loop_counter2
.lstm_36_while_lstm_36_while_maximum_iterations
lstm_36_while_placeholder
lstm_36_while_placeholder_1
lstm_36_while_placeholder_2
lstm_36_while_placeholder_3.
*lstm_36_while_less_lstm_36_strided_slice_1D
@lstm_36_while_lstm_36_while_cond_357864___redundant_placeholder0D
@lstm_36_while_lstm_36_while_cond_357864___redundant_placeholder1D
@lstm_36_while_lstm_36_while_cond_357864___redundant_placeholder2D
@lstm_36_while_lstm_36_while_cond_357864___redundant_placeholder3
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
«
²
(__inference_lstm_36_layer_call_fn_358500

inputs
unknown: 
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_3575382
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_355759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_36_355783_0: -
while_lstm_cell_36_355785_0: )
while_lstm_cell_36_355787_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_36_355783: +
while_lstm_cell_36_355785: '
while_lstm_cell_36_355787: ¢*while/lstm_cell_36/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemá
*while/lstm_cell_36/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_36_355783_0while_lstm_cell_36_355785_0while_lstm_cell_36_355787_0*
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_3556812,
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
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_36/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_36_355783while_lstm_cell_36_355783_0"8
while_lstm_cell_36_355785while_lstm_cell_36_355785_0"8
while_lstm_cell_36_355787while_lstm_cell_36_355787_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
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
é

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_356165

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
å

ù
.__inference_sequential_13_layer_call_fn_357653
input_17
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_3576052
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
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_17
Õ
Ã
while_cond_356792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356792___redundant_placeholder04
0while_while_cond_356792___redundant_placeholder14
0while_while_cond_356792___redundant_placeholder24
0while_while_cond_356792___redundant_placeholder3
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

lstm_37_while_body_358013,
(lstm_37_while_lstm_37_while_loop_counter2
.lstm_37_while_lstm_37_while_maximum_iterations
lstm_37_while_placeholder
lstm_37_while_placeholder_1
lstm_37_while_placeholder_2
lstm_37_while_placeholder_3+
'lstm_37_while_lstm_37_strided_slice_1_0g
clstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0: O
=lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0: J
<lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0: 
lstm_37_while_identity
lstm_37_while_identity_1
lstm_37_while_identity_2
lstm_37_while_identity_3
lstm_37_while_identity_4
lstm_37_while_identity_5)
%lstm_37_while_lstm_37_strided_slice_1e
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorK
9lstm_37_while_lstm_cell_37_matmul_readvariableop_resource: M
;lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource: H
:lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource: ¢1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp¢0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp¢2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpÓ
?lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0lstm_37_while_placeholderHlstm_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_37/while/TensorArrayV2Read/TensorListGetItemà
0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp;lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype022
0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOpö
!lstm_37/while/lstm_cell_37/MatMulMatMul8lstm_37/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_37/while/lstm_cell_37/MatMulæ
2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp=lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype024
2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOpß
#lstm_37/while/lstm_cell_37/MatMul_1MatMullstm_37_while_placeholder_2:lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_37/while/lstm_cell_37/MatMul_1×
lstm_37/while/lstm_cell_37/addAddV2+lstm_37/while/lstm_cell_37/MatMul:product:0-lstm_37/while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_37/while/lstm_cell_37/addß
1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp<lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype023
1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOpä
"lstm_37/while/lstm_cell_37/BiasAddBiasAdd"lstm_37/while/lstm_cell_37/add:z:09lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_37/while/lstm_cell_37/BiasAdd
*lstm_37/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_37/while/lstm_cell_37/split/split_dim«
 lstm_37/while/lstm_cell_37/splitSplit3lstm_37/while/lstm_cell_37/split/split_dim:output:0+lstm_37/while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_37/while/lstm_cell_37/split°
"lstm_37/while/lstm_cell_37/SigmoidSigmoid)lstm_37/while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_37/while/lstm_cell_37/Sigmoid´
$lstm_37/while/lstm_cell_37/Sigmoid_1Sigmoid)lstm_37/while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_37/while/lstm_cell_37/Sigmoid_1À
lstm_37/while/lstm_cell_37/mulMul(lstm_37/while/lstm_cell_37/Sigmoid_1:y:0lstm_37_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_37/while/lstm_cell_37/mul§
lstm_37/while/lstm_cell_37/ReluRelu)lstm_37/while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_37/while/lstm_cell_37/ReluÔ
 lstm_37/while/lstm_cell_37/mul_1Mul&lstm_37/while/lstm_cell_37/Sigmoid:y:0-lstm_37/while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/lstm_cell_37/mul_1É
 lstm_37/while/lstm_cell_37/add_1AddV2"lstm_37/while/lstm_cell_37/mul:z:0$lstm_37/while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/lstm_cell_37/add_1´
$lstm_37/while/lstm_cell_37/Sigmoid_2Sigmoid)lstm_37/while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_37/while/lstm_cell_37/Sigmoid_2¦
!lstm_37/while/lstm_cell_37/Relu_1Relu$lstm_37/while/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_37/while/lstm_cell_37/Relu_1Ø
 lstm_37/while/lstm_cell_37/mul_2Mul(lstm_37/while/lstm_cell_37/Sigmoid_2:y:0/lstm_37/while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_37/while/lstm_cell_37/mul_2
2lstm_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_37_while_placeholder_1lstm_37_while_placeholder$lstm_37/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_37/while/TensorArrayV2Write/TensorListSetIteml
lstm_37/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/while/add/y
lstm_37/while/addAddV2lstm_37_while_placeholderlstm_37/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_37/while/addp
lstm_37/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_37/while/add_1/y
lstm_37/while/add_1AddV2(lstm_37_while_lstm_37_while_loop_counterlstm_37/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_37/while/add_1
lstm_37/while/IdentityIdentitylstm_37/while/add_1:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity¦
lstm_37/while/Identity_1Identity.lstm_37_while_lstm_37_while_maximum_iterations^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity_1
lstm_37/while/Identity_2Identitylstm_37/while/add:z:0^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity_2º
lstm_37/while/Identity_3IdentityBlstm_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_37/while/NoOp*
T0*
_output_shapes
: 2
lstm_37/while/Identity_3­
lstm_37/while/Identity_4Identity$lstm_37/while/lstm_cell_37/mul_2:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/while/Identity_4­
lstm_37/while/Identity_5Identity$lstm_37/while/lstm_cell_37/add_1:z:0^lstm_37/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_37/while/Identity_5
lstm_37/while/NoOpNoOp2^lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp1^lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp3^lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_37/while/NoOp"9
lstm_37_while_identitylstm_37/while/Identity:output:0"=
lstm_37_while_identity_1!lstm_37/while/Identity_1:output:0"=
lstm_37_while_identity_2!lstm_37/while/Identity_2:output:0"=
lstm_37_while_identity_3!lstm_37/while/Identity_3:output:0"=
lstm_37_while_identity_4!lstm_37/while/Identity_4:output:0"=
lstm_37_while_identity_5!lstm_37/while/Identity_5:output:0"P
%lstm_37_while_lstm_37_strided_slice_1'lstm_37_while_lstm_37_strided_slice_1_0"z
:lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource<lstm_37_while_lstm_cell_37_biasadd_readvariableop_resource_0"|
;lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource=lstm_37_while_lstm_cell_37_matmul_1_readvariableop_resource_0"x
9lstm_37_while_lstm_cell_37_matmul_readvariableop_resource;lstm_37_while_lstm_cell_37_matmul_readvariableop_resource_0"È
alstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensorclstm_37_while_tensorarrayv2read_tensorlistgetitem_lstm_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp1lstm_37/while/lstm_cell_37/BiasAdd/ReadVariableOp2d
0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp0lstm_37/while/lstm_cell_37/MatMul/ReadVariableOp2h
2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp2lstm_37/while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

d
F__inference_dropout_20_layer_call_and_return_conditional_losses_359119

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
Ü[

C__inference_lstm_37_layer_call_and_return_conditional_losses_359628

inputs=
+lstm_cell_37_matmul_readvariableop_resource: ?
-lstm_cell_37_matmul_1_readvariableop_resource: :
,lstm_cell_37_biasadd_readvariableop_resource: 
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_37/MatMul/ReadVariableOp¬
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMulº
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_37/MatMul_1/ReadVariableOp¨
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/MatMul_1
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/add³
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_37/BiasAdd/ReadVariableOp¬
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_37/BiasAdd~
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_37/split/split_dimó
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_37/split
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_1
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul}
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_1
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/add_1
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Sigmoid_2|
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/Relu_1 
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_37/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
while_body_359544*
condR
while_cond_359543*K
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_356793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_36_matmul_readvariableop_resource_0: G
5while_lstm_cell_36_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_36_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_36_matmul_readvariableop_resource: E
3while_lstm_cell_36_matmul_1_readvariableop_resource: @
2while_lstm_cell_36_biasadd_readvariableop_resource: ¢)while/lstm_cell_36/BiasAdd/ReadVariableOp¢(while/lstm_cell_36/MatMul/ReadVariableOp¢*while/lstm_cell_36/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÈ
(while/lstm_cell_36/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_36_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_36/MatMul/ReadVariableOpÖ
while/lstm_cell_36/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMulÎ
*while/lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_36_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_36/MatMul_1/ReadVariableOp¿
while/lstm_cell_36/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/MatMul_1·
while/lstm_cell_36/addAddV2#while/lstm_cell_36/MatMul:product:0%while/lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/addÇ
)while/lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_36_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_36/BiasAdd/ReadVariableOpÄ
while/lstm_cell_36/BiasAddBiasAddwhile/lstm_cell_36/add:z:01while/lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_36/BiasAdd
"while/lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_36/split/split_dim
while/lstm_cell_36/splitSplit+while/lstm_cell_36/split/split_dim:output:0#while/lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_36/split
while/lstm_cell_36/SigmoidSigmoid!while/lstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid
while/lstm_cell_36/Sigmoid_1Sigmoid!while/lstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_1 
while/lstm_cell_36/mulMul while/lstm_cell_36/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul
while/lstm_cell_36/ReluRelu!while/lstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu´
while/lstm_cell_36/mul_1Mulwhile/lstm_cell_36/Sigmoid:y:0%while/lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_1©
while/lstm_cell_36/add_1AddV2while/lstm_cell_36/mul:z:0while/lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/add_1
while/lstm_cell_36/Sigmoid_2Sigmoid!while/lstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Sigmoid_2
while/lstm_cell_36/Relu_1Reluwhile/lstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/Relu_1¸
while/lstm_cell_36/mul_2Mul while/lstm_cell_36/Sigmoid_2:y:0'while/lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_36/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_36/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_36/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_36/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_36/BiasAdd/ReadVariableOp)^while/lstm_cell_36/MatMul/ReadVariableOp+^while/lstm_cell_36/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_36_biasadd_readvariableop_resource4while_lstm_cell_36_biasadd_readvariableop_resource_0"l
3while_lstm_cell_36_matmul_1_readvariableop_resource5while_lstm_cell_36_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_36_matmul_readvariableop_resource3while_lstm_cell_36_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_36/BiasAdd/ReadVariableOp)while/lstm_cell_36/BiasAdd/ReadVariableOp2T
(while/lstm_cell_36/MatMul/ReadVariableOp(while/lstm_cell_36/MatMul/ReadVariableOp2X
*while/lstm_cell_36/MatMul_1/ReadVariableOp*while/lstm_cell_36/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_359695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_37_matmul_readvariableop_resource_0: G
5while_lstm_cell_37_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_37_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_37_matmul_readvariableop_resource: E
3while_lstm_cell_37_matmul_1_readvariableop_resource: @
2while_lstm_cell_37_biasadd_readvariableop_resource: ¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype02*
(while/lstm_cell_37/MatMul/ReadVariableOpÖ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMulÎ
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype02,
*while/lstm_cell_37/MatMul_1/ReadVariableOp¿
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/MatMul_1·
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/addÇ
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02+
)while/lstm_cell_37/BiasAdd/ReadVariableOpÄ
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_37/BiasAdd
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_37/split/split_dim
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_37/split
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_1 
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu´
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_1©
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/add_1
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Sigmoid_2
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/Relu_1¸
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_37/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
×[

C__inference_lstm_36_layer_call_and_return_conditional_losses_358953

inputs=
+lstm_cell_36_matmul_readvariableop_resource: ?
-lstm_cell_36_matmul_1_readvariableop_resource: :
,lstm_cell_36_biasadd_readvariableop_resource: 
identity¢#lstm_cell_36/BiasAdd/ReadVariableOp¢"lstm_cell_36/MatMul/ReadVariableOp¢$lstm_cell_36/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2´
"lstm_cell_36/MatMul/ReadVariableOpReadVariableOp+lstm_cell_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"lstm_cell_36/MatMul/ReadVariableOp¬
lstm_cell_36/MatMulMatMulstrided_slice_2:output:0*lstm_cell_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMulº
$lstm_cell_36/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_36_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_36/MatMul_1/ReadVariableOp¨
lstm_cell_36/MatMul_1MatMulzeros:output:0,lstm_cell_36/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/MatMul_1
lstm_cell_36/addAddV2lstm_cell_36/MatMul:product:0lstm_cell_36/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/add³
#lstm_cell_36/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#lstm_cell_36/BiasAdd/ReadVariableOp¬
lstm_cell_36/BiasAddBiasAddlstm_cell_36/add:z:0+lstm_cell_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_36/BiasAdd~
lstm_cell_36/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_36/split/split_dimó
lstm_cell_36/splitSplit%lstm_cell_36/split/split_dim:output:0lstm_cell_36/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_36/split
lstm_cell_36/SigmoidSigmoidlstm_cell_36/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid
lstm_cell_36/Sigmoid_1Sigmoidlstm_cell_36/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_1
lstm_cell_36/mulMullstm_cell_36/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul}
lstm_cell_36/ReluRelulstm_cell_36/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu
lstm_cell_36/mul_1Mullstm_cell_36/Sigmoid:y:0lstm_cell_36/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_1
lstm_cell_36/add_1AddV2lstm_cell_36/mul:z:0lstm_cell_36/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/add_1
lstm_cell_36/Sigmoid_2Sigmoidlstm_cell_36/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Sigmoid_2|
lstm_cell_36/Relu_1Relulstm_cell_36/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/Relu_1 
lstm_cell_36/mul_2Mullstm_cell_36/Sigmoid_2:y:0!lstm_cell_36/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_36/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_36_matmul_readvariableop_resource-lstm_cell_36_matmul_1_readvariableop_resource,lstm_cell_36_biasadd_readvariableop_resource*
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
while_body_358869*
condR
while_cond_358868*K
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
NoOpNoOp$^lstm_cell_36/BiasAdd/ReadVariableOp#^lstm_cell_36/MatMul/ReadVariableOp%^lstm_cell_36/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_36/BiasAdd/ReadVariableOp#lstm_cell_36/BiasAdd/ReadVariableOp2H
"lstm_cell_36/MatMul/ReadVariableOp"lstm_cell_36/MatMul/ReadVariableOp2L
$lstm_cell_36/MatMul_1/ReadVariableOp$lstm_cell_36/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
A
input_175
serving_default_input_17:0ÿÿÿÿÿÿÿÿÿB

reshape_184
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÀÑ
¬
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
Å
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
§
regularization_losses
trainable_variables
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
§
regularization_losses
trainable_variables
 	variables
!	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

"kernel
#bias
$regularization_losses
%trainable_variables
&	variables
'	keras_api
__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
½

(kernel
)bias
*regularization_losses
+trainable_variables
,	variables
-	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses"
_tf_keras_layer
§
.regularization_losses
/trainable_variables
0	variables
1	keras_api
£__call__
+¤&call_and_return_all_conditional_losses"
_tf_keras_layer

2iter

3beta_1

4beta_2
	5decay
6learning_rate"m#m(m)m7m8m9m:m;m<m"v#v(v)v7v8v9v:v;v<v"
	optimizer
 "
trackable_list_wrapper
f
70
81
92
:3
;4
<5
"6
#7
(8
)9"
trackable_list_wrapper
f
70
81
92
:3
;4
<5
"6
#7
(8
)9"
trackable_list_wrapper
Î
=layer_regularization_losses
	regularization_losses
>layer_metrics

trainable_variables

?layers
@non_trainable_variables
Ametrics
	variables
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
¥serving_default"
signature_map
ã
B
state_size

7kernel
8recurrent_kernel
9bias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
¦__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
¼
Glayer_regularization_losses
regularization_losses
Hlayer_metrics
trainable_variables

Ilayers

Jstates
Knon_trainable_variables
Lmetrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Mlayer_regularization_losses
regularization_losses
Nlayer_metrics
trainable_variables

Olayers
Pnon_trainable_variables
Qmetrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ã
R
state_size

:kernel
;recurrent_kernel
<bias
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
¨__call__
+©&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
¼
Wlayer_regularization_losses
regularization_losses
Xlayer_metrics
trainable_variables

Ylayers

Zstates
[non_trainable_variables
\metrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
]layer_regularization_losses
regularization_losses
^layer_metrics
trainable_variables

_layers
`non_trainable_variables
ametrics
 	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:2dense_36/kernel
:2dense_36/bias
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
°
blayer_regularization_losses
$regularization_losses
clayer_metrics
%trainable_variables

dlayers
enon_trainable_variables
fmetrics
&	variables
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
!:2dense_37/kernel
:2dense_37/bias
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
°
glayer_regularization_losses
*regularization_losses
hlayer_metrics
+trainable_variables

ilayers
jnon_trainable_variables
kmetrics
,	variables
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
llayer_regularization_losses
.regularization_losses
mlayer_metrics
/trainable_variables

nlayers
onon_trainable_variables
pmetrics
0	variables
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+ 2lstm_36/lstm_cell_36/kernel
7:5 2%lstm_36/lstm_cell_36/recurrent_kernel
':% 2lstm_36/lstm_cell_36/bias
-:+ 2lstm_37/lstm_cell_37/kernel
7:5 2%lstm_37/lstm_cell_37/recurrent_kernel
':% 2lstm_37/lstm_cell_37/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
°
rlayer_regularization_losses
Cregularization_losses
slayer_metrics
Dtrainable_variables

tlayers
unon_trainable_variables
vmetrics
E	variables
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
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
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
°
wlayer_regularization_losses
Sregularization_losses
xlayer_metrics
Ttrainable_variables

ylayers
znon_trainable_variables
{metrics
U	variables
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
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
N
	|total
	}count
~	variables
	keras_api"
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
.
|0
}1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
&:$2Adam/dense_36/kernel/m
 :2Adam/dense_36/bias/m
&:$2Adam/dense_37/kernel/m
 :2Adam/dense_37/bias/m
2:0 2"Adam/lstm_36/lstm_cell_36/kernel/m
<:: 2,Adam/lstm_36/lstm_cell_36/recurrent_kernel/m
,:* 2 Adam/lstm_36/lstm_cell_36/bias/m
2:0 2"Adam/lstm_37/lstm_cell_37/kernel/m
<:: 2,Adam/lstm_37/lstm_cell_37/recurrent_kernel/m
,:* 2 Adam/lstm_37/lstm_cell_37/bias/m
&:$2Adam/dense_36/kernel/v
 :2Adam/dense_36/bias/v
&:$2Adam/dense_37/kernel/v
 :2Adam/dense_37/bias/v
2:0 2"Adam/lstm_36/lstm_cell_36/kernel/v
<:: 2,Adam/lstm_36/lstm_cell_36/recurrent_kernel/v
,:* 2 Adam/lstm_36/lstm_cell_36/bias/v
2:0 2"Adam/lstm_37/lstm_cell_37/kernel/v
<:: 2,Adam/lstm_37/lstm_cell_37/recurrent_kernel/v
,:* 2 Adam/lstm_37/lstm_cell_37/bias/v
2
.__inference_sequential_13_layer_call_fn_357129
.__inference_sequential_13_layer_call_fn_357773
.__inference_sequential_13_layer_call_fn_357798
.__inference_sequential_13_layer_call_fn_357653À
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
I__inference_sequential_13_layer_call_and_return_conditional_losses_358120
I__inference_sequential_13_layer_call_and_return_conditional_losses_358456
I__inference_sequential_13_layer_call_and_return_conditional_losses_357684
I__inference_sequential_13_layer_call_and_return_conditional_losses_357715À
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
ÍBÊ
!__inference__wrapped_model_355460input_17"
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
2
(__inference_lstm_36_layer_call_fn_358467
(__inference_lstm_36_layer_call_fn_358478
(__inference_lstm_36_layer_call_fn_358489
(__inference_lstm_36_layer_call_fn_358500Õ
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
C__inference_lstm_36_layer_call_and_return_conditional_losses_358651
C__inference_lstm_36_layer_call_and_return_conditional_losses_358802
C__inference_lstm_36_layer_call_and_return_conditional_losses_358953
C__inference_lstm_36_layer_call_and_return_conditional_losses_359104Õ
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
+__inference_dropout_20_layer_call_fn_359109
+__inference_dropout_20_layer_call_fn_359114´
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
F__inference_dropout_20_layer_call_and_return_conditional_losses_359119
F__inference_dropout_20_layer_call_and_return_conditional_losses_359131´
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
(__inference_lstm_37_layer_call_fn_359142
(__inference_lstm_37_layer_call_fn_359153
(__inference_lstm_37_layer_call_fn_359164
(__inference_lstm_37_layer_call_fn_359175Õ
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_359326
C__inference_lstm_37_layer_call_and_return_conditional_losses_359477
C__inference_lstm_37_layer_call_and_return_conditional_losses_359628
C__inference_lstm_37_layer_call_and_return_conditional_losses_359779Õ
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
+__inference_dropout_21_layer_call_fn_359784
+__inference_dropout_21_layer_call_fn_359789´
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
F__inference_dropout_21_layer_call_and_return_conditional_losses_359794
F__inference_dropout_21_layer_call_and_return_conditional_losses_359806´
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
)__inference_dense_36_layer_call_fn_359815¢
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
D__inference_dense_36_layer_call_and_return_conditional_losses_359826¢
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
)__inference_dense_37_layer_call_fn_359835¢
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
D__inference_dense_37_layer_call_and_return_conditional_losses_359845¢
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
+__inference_reshape_18_layer_call_fn_359850¢
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
F__inference_reshape_18_layer_call_and_return_conditional_losses_359863¢
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
ÌBÉ
$__inference_signature_wrapper_357748input_17"
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
-__inference_lstm_cell_36_layer_call_fn_359880
-__inference_lstm_cell_36_layer_call_fn_359897¾
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_359929
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_359961¾
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
-__inference_lstm_cell_37_layer_call_fn_359978
-__inference_lstm_cell_37_layer_call_fn_359995¾
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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_360027
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_360059¾
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
 ¦
!__inference__wrapped_model_355460
789:;<"#()5¢2
+¢(
&#
input_17ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_18(%

reshape_18ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_36_layer_call_and_return_conditional_losses_359826\"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_36_layer_call_fn_359815O"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_37_layer_call_and_return_conditional_losses_359845\()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_37_layer_call_fn_359835O()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ®
F__inference_dropout_20_layer_call_and_return_conditional_losses_359119d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ®
F__inference_dropout_20_layer_call_and_return_conditional_losses_359131d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_20_layer_call_fn_359109W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_20_layer_call_fn_359114W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_21_layer_call_and_return_conditional_losses_359794\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¦
F__inference_dropout_21_layer_call_and_return_conditional_losses_359806\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dropout_21_layer_call_fn_359784O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ~
+__inference_dropout_21_layer_call_fn_359789O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÒ
C__inference_lstm_36_layer_call_and_return_conditional_losses_358651789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
C__inference_lstm_36_layer_call_and_return_conditional_losses_358802789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_36_layer_call_and_return_conditional_losses_358953q789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_36_layer_call_and_return_conditional_losses_359104q789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ©
(__inference_lstm_36_layer_call_fn_358467}789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
(__inference_lstm_36_layer_call_fn_358478}789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(__inference_lstm_36_layer_call_fn_358489d789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_36_layer_call_fn_358500d789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_37_layer_call_and_return_conditional_losses_359326}:;<O¢L
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_359477}:;<O¢L
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_359628m:;<?¢<
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
C__inference_lstm_37_layer_call_and_return_conditional_losses_359779m:;<?¢<
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
(__inference_lstm_37_layer_call_fn_359142p:;<O¢L
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
(__inference_lstm_37_layer_call_fn_359153p:;<O¢L
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
(__inference_lstm_37_layer_call_fn_359164`:;<?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_37_layer_call_fn_359175`:;<?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_359929ý789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
H__inference_lstm_cell_36_layer_call_and_return_conditional_losses_359961ý789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
-__inference_lstm_cell_36_layer_call_fn_359880í789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
-__inference_lstm_cell_36_layer_call_fn_359897í789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_360027ý:;<¢}
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
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_360059ý:;<¢}
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
-__inference_lstm_cell_37_layer_call_fn_359978í:;<¢}
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
-__inference_lstm_cell_37_layer_call_fn_359995í:;<¢}
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
1/1ÿÿÿÿÿÿÿÿÿ¦
F__inference_reshape_18_layer_call_and_return_conditional_losses_359863\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_reshape_18_layer_call_fn_359850O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÃ
I__inference_sequential_13_layer_call_and_return_conditional_losses_357684v
789:;<"#()=¢:
3¢0
&#
input_17ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ã
I__inference_sequential_13_layer_call_and_return_conditional_losses_357715v
789:;<"#()=¢:
3¢0
&#
input_17ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
I__inference_sequential_13_layer_call_and_return_conditional_losses_358120t
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
I__inference_sequential_13_layer_call_and_return_conditional_losses_358456t
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_13_layer_call_fn_357129i
789:;<"#()=¢:
3¢0
&#
input_17ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_13_layer_call_fn_357653i
789:;<"#()=¢:
3¢0
&#
input_17ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_13_layer_call_fn_357773g
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_13_layer_call_fn_357798g
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_357748
789:;<"#()A¢>
¢ 
7ª4
2
input_17&#
input_17ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_18(%

reshape_18ÿÿÿÿÿÿÿÿÿ