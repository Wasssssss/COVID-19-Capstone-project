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
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_42/kernel
s
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes

:*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes
:*
dtype0
z
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_43/kernel
s
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes

:*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
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
lstm_42/lstm_cell_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namelstm_42/lstm_cell_42/kernel

/lstm_42/lstm_cell_42/kernel/Read/ReadVariableOpReadVariableOplstm_42/lstm_cell_42/kernel*
_output_shapes

:*
dtype0
¦
%lstm_42/lstm_cell_42/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%lstm_42/lstm_cell_42/recurrent_kernel

9lstm_42/lstm_cell_42/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_42/lstm_cell_42/recurrent_kernel*
_output_shapes

:*
dtype0

lstm_42/lstm_cell_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_42/lstm_cell_42/bias

-lstm_42/lstm_cell_42/bias/Read/ReadVariableOpReadVariableOplstm_42/lstm_cell_42/bias*
_output_shapes
:*
dtype0

lstm_43/lstm_cell_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namelstm_43/lstm_cell_43/kernel

/lstm_43/lstm_cell_43/kernel/Read/ReadVariableOpReadVariableOplstm_43/lstm_cell_43/kernel*
_output_shapes

:*
dtype0
¦
%lstm_43/lstm_cell_43/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%lstm_43/lstm_cell_43/recurrent_kernel

9lstm_43/lstm_cell_43/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_43/lstm_cell_43/recurrent_kernel*
_output_shapes

:*
dtype0

lstm_43/lstm_cell_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_43/lstm_cell_43/bias

-lstm_43/lstm_cell_43/bias/Read/ReadVariableOpReadVariableOplstm_43/lstm_cell_43/bias*
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

Adam/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_42/kernel/m

*Adam/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_42/bias/m
y
(Adam/dense_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/m*
_output_shapes
:*
dtype0

Adam/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_43/kernel/m

*Adam/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_43/bias/m
y
(Adam/dense_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_42/lstm_cell_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_42/lstm_cell_42/kernel/m

6Adam/lstm_42/lstm_cell_42/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_42/lstm_cell_42/kernel/m*
_output_shapes

:*
dtype0
´
,Adam/lstm_42/lstm_cell_42/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_42/lstm_cell_42/recurrent_kernel/m
­
@Adam/lstm_42/lstm_cell_42/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_42/lstm_cell_42/recurrent_kernel/m*
_output_shapes

:*
dtype0

 Adam/lstm_42/lstm_cell_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_42/lstm_cell_42/bias/m

4Adam/lstm_42/lstm_cell_42/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_42/lstm_cell_42/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_43/lstm_cell_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_43/lstm_cell_43/kernel/m

6Adam/lstm_43/lstm_cell_43/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_43/lstm_cell_43/kernel/m*
_output_shapes

:*
dtype0
´
,Adam/lstm_43/lstm_cell_43/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m
­
@Adam/lstm_43/lstm_cell_43/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m*
_output_shapes

:*
dtype0

 Adam/lstm_43/lstm_cell_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_43/lstm_cell_43/bias/m

4Adam/lstm_43/lstm_cell_43/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_43/lstm_cell_43/bias/m*
_output_shapes
:*
dtype0

Adam/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_42/kernel/v

*Adam/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_42/bias/v
y
(Adam/dense_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/v*
_output_shapes
:*
dtype0

Adam/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_43/kernel/v

*Adam/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_43/bias/v
y
(Adam/dense_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_42/lstm_cell_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_42/lstm_cell_42/kernel/v

6Adam/lstm_42/lstm_cell_42/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_42/lstm_cell_42/kernel/v*
_output_shapes

:*
dtype0
´
,Adam/lstm_42/lstm_cell_42/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_42/lstm_cell_42/recurrent_kernel/v
­
@Adam/lstm_42/lstm_cell_42/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_42/lstm_cell_42/recurrent_kernel/v*
_output_shapes

:*
dtype0

 Adam/lstm_42/lstm_cell_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_42/lstm_cell_42/bias/v

4Adam/lstm_42/lstm_cell_42/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_42/lstm_cell_42/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_43/lstm_cell_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/lstm_43/lstm_cell_43/kernel/v

6Adam/lstm_43/lstm_cell_43/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_43/lstm_cell_43/kernel/v*
_output_shapes

:*
dtype0
´
,Adam/lstm_43/lstm_cell_43/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v
­
@Adam/lstm_43/lstm_cell_43/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v*
_output_shapes

:*
dtype0

 Adam/lstm_43/lstm_cell_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_43/lstm_cell_43/bias/v

4Adam/lstm_43/lstm_cell_43/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_43/lstm_cell_43/bias/v*
_output_shapes
:*
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
VARIABLE_VALUEdense_42/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_42/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_43/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_43/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_42/lstm_cell_42/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_42/lstm_cell_42/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_42/lstm_cell_42/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_43/lstm_cell_43/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_43/lstm_cell_43/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_43/lstm_cell_43/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_42/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_42/lstm_cell_42/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_42/lstm_cell_42/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_42/lstm_cell_42/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_43/lstm_cell_43/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_43/lstm_cell_43/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_43/lstm_cell_43/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_42/lstm_cell_42/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_42/lstm_cell_42/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_42/lstm_cell_42/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_43/lstm_cell_43/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_43/lstm_cell_43/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_43/lstm_cell_43/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_19Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
É
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_19lstm_42/lstm_cell_42/kernel%lstm_42/lstm_cell_42/recurrent_kernellstm_42/lstm_cell_42/biaslstm_43/lstm_cell_43/kernel%lstm_43/lstm_cell_43/recurrent_kernellstm_43/lstm_cell_43/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/bias*
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
$__inference_signature_wrapper_412474
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ý
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_42/lstm_cell_42/kernel/Read/ReadVariableOp9lstm_42/lstm_cell_42/recurrent_kernel/Read/ReadVariableOp-lstm_42/lstm_cell_42/bias/Read/ReadVariableOp/lstm_43/lstm_cell_43/kernel/Read/ReadVariableOp9lstm_43/lstm_cell_43/recurrent_kernel/Read/ReadVariableOp-lstm_43/lstm_cell_43/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_42/kernel/m/Read/ReadVariableOp(Adam/dense_42/bias/m/Read/ReadVariableOp*Adam/dense_43/kernel/m/Read/ReadVariableOp(Adam/dense_43/bias/m/Read/ReadVariableOp6Adam/lstm_42/lstm_cell_42/kernel/m/Read/ReadVariableOp@Adam/lstm_42/lstm_cell_42/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_42/lstm_cell_42/bias/m/Read/ReadVariableOp6Adam/lstm_43/lstm_cell_43/kernel/m/Read/ReadVariableOp@Adam/lstm_43/lstm_cell_43/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_43/lstm_cell_43/bias/m/Read/ReadVariableOp*Adam/dense_42/kernel/v/Read/ReadVariableOp(Adam/dense_42/bias/v/Read/ReadVariableOp*Adam/dense_43/kernel/v/Read/ReadVariableOp(Adam/dense_43/bias/v/Read/ReadVariableOp6Adam/lstm_42/lstm_cell_42/kernel/v/Read/ReadVariableOp@Adam/lstm_42/lstm_cell_42/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_42/lstm_cell_42/bias/v/Read/ReadVariableOp6Adam/lstm_43/lstm_cell_43/kernel/v/Read/ReadVariableOp@Adam/lstm_43/lstm_cell_43/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_43/lstm_cell_43/bias/v/Read/ReadVariableOpConst*2
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
__inference__traced_save_414919


StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_42/kerneldense_42/biasdense_43/kerneldense_43/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_42/lstm_cell_42/kernel%lstm_42/lstm_cell_42/recurrent_kernellstm_42/lstm_cell_42/biaslstm_43/lstm_cell_43/kernel%lstm_43/lstm_cell_43/recurrent_kernellstm_43/lstm_cell_43/biastotalcountAdam/dense_42/kernel/mAdam/dense_42/bias/mAdam/dense_43/kernel/mAdam/dense_43/bias/m"Adam/lstm_42/lstm_cell_42/kernel/m,Adam/lstm_42/lstm_cell_42/recurrent_kernel/m Adam/lstm_42/lstm_cell_42/bias/m"Adam/lstm_43/lstm_cell_43/kernel/m,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m Adam/lstm_43/lstm_cell_43/bias/mAdam/dense_42/kernel/vAdam/dense_42/bias/vAdam/dense_43/kernel/vAdam/dense_43/bias/v"Adam/lstm_42/lstm_cell_42/kernel/v,Adam/lstm_42/lstm_cell_42/recurrent_kernel/v Adam/lstm_42/lstm_cell_42/bias/v"Adam/lstm_43/lstm_cell_43/kernel/v,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v Adam/lstm_43/lstm_cell_43/bias/v*1
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
"__inference__traced_restore_415040%
ó
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_414520

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
?
Ê
while_body_414119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_43_matmul_readvariableop_resource_0:G
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_43_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_43_matmul_readvariableop_resource:E
3while_lstm_cell_43_matmul_1_readvariableop_resource:@
2while_lstm_cell_43_biasadd_readvariableop_resource:¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOpÖ
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMulÎ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp¿
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMul_1·
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/addÇ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÄ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_1 
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu´
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_1©
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu_1¸
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_42_layer_call_fn_413215

inputs
unknown:
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4116032
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò%
Ý
while_body_410905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_43_410929_0:-
while_lstm_cell_43_410931_0:)
while_lstm_cell_43_410933_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_43_410929:+
while_lstm_cell_43_410931:'
while_lstm_cell_43_410933:¢*while/lstm_cell_43/StatefulPartitionedCallÃ
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
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_410929_0while_lstm_cell_43_410931_0while_lstm_cell_43_410933_0*
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_4108912,
*while/lstm_cell_43/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_43/StatefulPartitionedCall*"
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
while_lstm_cell_43_410929while_lstm_cell_43_410929_0"8
while_lstm_cell_43_410931while_lstm_cell_43_410931_0"8
while_lstm_cell_43_410933while_lstm_cell_43_410933_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_412264

inputs=
+lstm_cell_42_matmul_readvariableop_resource:?
-lstm_cell_42_matmul_1_readvariableop_resource::
,lstm_cell_42_biasadd_readvariableop_resource:
identity¢#lstm_cell_42/BiasAdd/ReadVariableOp¢"lstm_cell_42/MatMul/ReadVariableOp¢$lstm_cell_42/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp¬
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMulº
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp¨
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMul_1
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add³
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp¬
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dimó
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_42/split
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_1
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul}
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_1
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add_1
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_2|
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu_1 
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
while_body_412180*
condR
while_cond_412179*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
Î
"__inference__traced_restore_415040
file_prefix2
 assignvariableop_dense_42_kernel:.
 assignvariableop_1_dense_42_bias:4
"assignvariableop_2_dense_43_kernel:.
 assignvariableop_3_dense_43_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: @
.assignvariableop_9_lstm_42_lstm_cell_42_kernel:K
9assignvariableop_10_lstm_42_lstm_cell_42_recurrent_kernel:;
-assignvariableop_11_lstm_42_lstm_cell_42_bias:A
/assignvariableop_12_lstm_43_lstm_cell_43_kernel:K
9assignvariableop_13_lstm_43_lstm_cell_43_recurrent_kernel:;
-assignvariableop_14_lstm_43_lstm_cell_43_bias:#
assignvariableop_15_total: #
assignvariableop_16_count: <
*assignvariableop_17_adam_dense_42_kernel_m:6
(assignvariableop_18_adam_dense_42_bias_m:<
*assignvariableop_19_adam_dense_43_kernel_m:6
(assignvariableop_20_adam_dense_43_bias_m:H
6assignvariableop_21_adam_lstm_42_lstm_cell_42_kernel_m:R
@assignvariableop_22_adam_lstm_42_lstm_cell_42_recurrent_kernel_m:B
4assignvariableop_23_adam_lstm_42_lstm_cell_42_bias_m:H
6assignvariableop_24_adam_lstm_43_lstm_cell_43_kernel_m:R
@assignvariableop_25_adam_lstm_43_lstm_cell_43_recurrent_kernel_m:B
4assignvariableop_26_adam_lstm_43_lstm_cell_43_bias_m:<
*assignvariableop_27_adam_dense_42_kernel_v:6
(assignvariableop_28_adam_dense_42_bias_v:<
*assignvariableop_29_adam_dense_43_kernel_v:6
(assignvariableop_30_adam_dense_43_bias_v:H
6assignvariableop_31_adam_lstm_42_lstm_cell_42_kernel_v:R
@assignvariableop_32_adam_lstm_42_lstm_cell_42_recurrent_kernel_v:B
4assignvariableop_33_adam_lstm_42_lstm_cell_42_bias_v:H
6assignvariableop_34_adam_lstm_43_lstm_cell_43_kernel_v:R
@assignvariableop_35_adam_lstm_43_lstm_cell_43_recurrent_kernel_v:B
4assignvariableop_36_adam_lstm_43_lstm_cell_43_bias_v:
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
AssignVariableOpAssignVariableOp assignvariableop_dense_42_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_42_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_43_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_43_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_42_lstm_cell_42_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_42_lstm_cell_42_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_42_lstm_cell_42_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12·
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_43_lstm_cell_43_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Á
AssignVariableOp_13AssignVariableOp9assignvariableop_13_lstm_43_lstm_cell_43_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14µ
AssignVariableOp_14AssignVariableOp-assignvariableop_14_lstm_43_lstm_cell_43_biasIdentity_14:output:0"/device:CPU:0*
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
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_42_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_42_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_43_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_43_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¾
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_lstm_42_lstm_cell_42_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22È
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_lstm_42_lstm_cell_42_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¼
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_lstm_42_lstm_cell_42_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¾
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_43_lstm_cell_43_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25È
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_43_lstm_cell_43_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¼
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_43_lstm_cell_43_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_42_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_42_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_43_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_43_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¾
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_42_lstm_cell_42_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32È
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_42_lstm_cell_42_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¼
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_42_lstm_cell_42_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¾
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_43_lstm_cell_43_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35È
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_43_lstm_cell_43_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¼
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_43_lstm_cell_43_bias_vIdentity_36:output:0"/device:CPU:0*
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
ÀJ
Ê

lstm_43_while_body_413068,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3+
'lstm_43_while_lstm_43_strided_slice_1_0g
clstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:O
=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:J
<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:
lstm_43_while_identity
lstm_43_while_identity_1
lstm_43_while_identity_2
lstm_43_while_identity_3
lstm_43_while_identity_4
lstm_43_while_identity_5)
%lstm_43_while_lstm_43_strided_slice_1e
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorK
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:M
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:H
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:¢1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp¢0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp¢2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpÓ
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0lstm_43_while_placeholderHlstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_43/while/TensorArrayV2Read/TensorListGetItemà
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpö
!lstm_43/while/lstm_cell_43/MatMulMatMul8lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_43/while/lstm_cell_43/MatMulæ
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpß
#lstm_43/while/lstm_cell_43/MatMul_1MatMullstm_43_while_placeholder_2:lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_43/while/lstm_cell_43/MatMul_1×
lstm_43/while/lstm_cell_43/addAddV2+lstm_43/while/lstm_cell_43/MatMul:product:0-lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/while/lstm_cell_43/addß
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpä
"lstm_43/while/lstm_cell_43/BiasAddBiasAdd"lstm_43/while/lstm_cell_43/add:z:09lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_43/while/lstm_cell_43/BiasAdd
*lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_43/while/lstm_cell_43/split/split_dim«
 lstm_43/while/lstm_cell_43/splitSplit3lstm_43/while/lstm_cell_43/split/split_dim:output:0+lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_43/while/lstm_cell_43/split°
"lstm_43/while/lstm_cell_43/SigmoidSigmoid)lstm_43/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_43/while/lstm_cell_43/Sigmoid´
$lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid)lstm_43/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_43/while/lstm_cell_43/Sigmoid_1À
lstm_43/while/lstm_cell_43/mulMul(lstm_43/while/lstm_cell_43/Sigmoid_1:y:0lstm_43_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/while/lstm_cell_43/mul§
lstm_43/while/lstm_cell_43/ReluRelu)lstm_43/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_43/while/lstm_cell_43/ReluÔ
 lstm_43/while/lstm_cell_43/mul_1Mul&lstm_43/while/lstm_cell_43/Sigmoid:y:0-lstm_43/while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/lstm_cell_43/mul_1É
 lstm_43/while/lstm_cell_43/add_1AddV2"lstm_43/while/lstm_cell_43/mul:z:0$lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/lstm_cell_43/add_1´
$lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid)lstm_43/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_43/while/lstm_cell_43/Sigmoid_2¦
!lstm_43/while/lstm_cell_43/Relu_1Relu$lstm_43/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_43/while/lstm_cell_43/Relu_1Ø
 lstm_43/while/lstm_cell_43/mul_2Mul(lstm_43/while/lstm_cell_43/Sigmoid_2:y:0/lstm_43/while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/lstm_cell_43/mul_2
2lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_43_while_placeholder_1lstm_43_while_placeholder$lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_43/while/TensorArrayV2Write/TensorListSetIteml
lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add/y
lstm_43/while/addAddV2lstm_43_while_placeholderlstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/addp
lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add_1/y
lstm_43/while/add_1AddV2(lstm_43_while_lstm_43_while_loop_counterlstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/add_1
lstm_43/while/IdentityIdentitylstm_43/while/add_1:z:0^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity¦
lstm_43/while/Identity_1Identity.lstm_43_while_lstm_43_while_maximum_iterations^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_1
lstm_43/while/Identity_2Identitylstm_43/while/add:z:0^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_2º
lstm_43/while/Identity_3IdentityBlstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_3­
lstm_43/while/Identity_4Identity$lstm_43/while/lstm_cell_43/mul_2:z:0^lstm_43/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/while/Identity_4­
lstm_43/while/Identity_5Identity$lstm_43/while/lstm_cell_43/add_1:z:0^lstm_43/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/while/Identity_5
lstm_43/while/NoOpNoOp2^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_43/while/NoOp"9
lstm_43_while_identitylstm_43/while/Identity:output:0"=
lstm_43_while_identity_1!lstm_43/while/Identity_1:output:0"=
lstm_43_while_identity_2!lstm_43/while/Identity_2:output:0"=
lstm_43_while_identity_3!lstm_43/while/Identity_3:output:0"=
lstm_43_while_identity_4!lstm_43/while/Identity_4:output:0"=
lstm_43_while_identity_5!lstm_43/while/Identity_5:output:0"P
%lstm_43_while_lstm_43_strided_slice_1'lstm_43_while_lstm_43_strided_slice_1_0"z
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"|
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"x
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"È
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2d
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2h
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_413830

inputs=
+lstm_cell_42_matmul_readvariableop_resource:?
-lstm_cell_42_matmul_1_readvariableop_resource::
,lstm_cell_42_biasadd_readvariableop_resource:
identity¢#lstm_cell_42/BiasAdd/ReadVariableOp¢"lstm_cell_42/MatMul/ReadVariableOp¢$lstm_cell_42/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp¬
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMulº
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp¨
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMul_1
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add³
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp¬
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dimó
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_42/split
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_1
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul}
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_1
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add_1
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_2|
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu_1 
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
while_body_413746*
condR
while_cond_413745*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_411983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411983___redundant_placeholder04
0while_while_cond_411983___redundant_placeholder14
0while_while_cond_411983___redundant_placeholder24
0while_while_cond_411983___redundant_placeholder3
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
ñ

)__inference_dense_43_layer_call_fn_414561

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
D__inference_dense_43_layer_call_and_return_conditional_losses_4118102
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
ÀJ
Ê

lstm_42_while_body_412591,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3+
'lstm_42_while_lstm_42_strided_slice_1_0g
clstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0:O
=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0:J
<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0:
lstm_42_while_identity
lstm_42_while_identity_1
lstm_42_while_identity_2
lstm_42_while_identity_3
lstm_42_while_identity_4
lstm_42_while_identity_5)
%lstm_42_while_lstm_42_strided_slice_1e
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorK
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource:M
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource:H
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource:¢1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp¢0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp¢2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpÓ
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_42/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0lstm_42_while_placeholderHlstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_42/while/TensorArrayV2Read/TensorListGetItemà
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpö
!lstm_42/while/lstm_cell_42/MatMulMatMul8lstm_42/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_42/while/lstm_cell_42/MatMulæ
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpß
#lstm_42/while/lstm_cell_42/MatMul_1MatMullstm_42_while_placeholder_2:lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_42/while/lstm_cell_42/MatMul_1×
lstm_42/while/lstm_cell_42/addAddV2+lstm_42/while/lstm_cell_42/MatMul:product:0-lstm_42/while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/while/lstm_cell_42/addß
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpä
"lstm_42/while/lstm_cell_42/BiasAddBiasAdd"lstm_42/while/lstm_cell_42/add:z:09lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_42/while/lstm_cell_42/BiasAdd
*lstm_42/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_42/while/lstm_cell_42/split/split_dim«
 lstm_42/while/lstm_cell_42/splitSplit3lstm_42/while/lstm_cell_42/split/split_dim:output:0+lstm_42/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_42/while/lstm_cell_42/split°
"lstm_42/while/lstm_cell_42/SigmoidSigmoid)lstm_42/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_42/while/lstm_cell_42/Sigmoid´
$lstm_42/while/lstm_cell_42/Sigmoid_1Sigmoid)lstm_42/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_42/while/lstm_cell_42/Sigmoid_1À
lstm_42/while/lstm_cell_42/mulMul(lstm_42/while/lstm_cell_42/Sigmoid_1:y:0lstm_42_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/while/lstm_cell_42/mul§
lstm_42/while/lstm_cell_42/ReluRelu)lstm_42/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_42/while/lstm_cell_42/ReluÔ
 lstm_42/while/lstm_cell_42/mul_1Mul&lstm_42/while/lstm_cell_42/Sigmoid:y:0-lstm_42/while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/lstm_cell_42/mul_1É
 lstm_42/while/lstm_cell_42/add_1AddV2"lstm_42/while/lstm_cell_42/mul:z:0$lstm_42/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/lstm_cell_42/add_1´
$lstm_42/while/lstm_cell_42/Sigmoid_2Sigmoid)lstm_42/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_42/while/lstm_cell_42/Sigmoid_2¦
!lstm_42/while/lstm_cell_42/Relu_1Relu$lstm_42/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_42/while/lstm_cell_42/Relu_1Ø
 lstm_42/while/lstm_cell_42/mul_2Mul(lstm_42/while/lstm_cell_42/Sigmoid_2:y:0/lstm_42/while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/lstm_cell_42/mul_2
2lstm_42/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_42_while_placeholder_1lstm_42_while_placeholder$lstm_42/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_42/while/TensorArrayV2Write/TensorListSetIteml
lstm_42/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add/y
lstm_42/while/addAddV2lstm_42_while_placeholderlstm_42/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/addp
lstm_42/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add_1/y
lstm_42/while/add_1AddV2(lstm_42_while_lstm_42_while_loop_counterlstm_42/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/add_1
lstm_42/while/IdentityIdentitylstm_42/while/add_1:z:0^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity¦
lstm_42/while/Identity_1Identity.lstm_42_while_lstm_42_while_maximum_iterations^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_1
lstm_42/while/Identity_2Identitylstm_42/while/add:z:0^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_2º
lstm_42/while/Identity_3IdentityBlstm_42/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_3­
lstm_42/while/Identity_4Identity$lstm_42/while/lstm_cell_42/mul_2:z:0^lstm_42/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/while/Identity_4­
lstm_42/while/Identity_5Identity$lstm_42/while/lstm_cell_42/add_1:z:0^lstm_42/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/while/Identity_5
lstm_42/while/NoOpNoOp2^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_42/while/NoOp"9
lstm_42_while_identitylstm_42/while/Identity:output:0"=
lstm_42_while_identity_1!lstm_42/while/Identity_1:output:0"=
lstm_42_while_identity_2!lstm_42/while/Identity_2:output:0"=
lstm_42_while_identity_3!lstm_42/while/Identity_3:output:0"=
lstm_42_while_identity_4!lstm_42/while/Identity_4:output:0"=
lstm_42_while_identity_5!lstm_42/while/Identity_5:output:0"P
%lstm_42_while_lstm_42_strided_slice_1'lstm_42_while_lstm_42_strided_slice_1_0"z
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0"|
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0"x
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0"È
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp2d
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp2h
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_413746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_42_matmul_readvariableop_resource_0:G
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_42_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_42_matmul_readvariableop_resource:E
3while_lstm_cell_42_matmul_1_readvariableop_resource:@
2while_lstm_cell_42_biasadd_readvariableop_resource:¢)while/lstm_cell_42/BiasAdd/ReadVariableOp¢(while/lstm_cell_42/MatMul/ReadVariableOp¢*while/lstm_cell_42/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOpÖ
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMulÎ
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp¿
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMul_1·
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/addÇ
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOpÄ
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/BiasAdd
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_42/split
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_1 
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu´
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_1©
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/add_1
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_2
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu_1¸
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

b
F__inference_reshape_21_layer_call_and_return_conditional_losses_414589

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
ñ

H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_414785

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
×[

C__inference_lstm_42_layer_call_and_return_conditional_losses_411603

inputs=
+lstm_cell_42_matmul_readvariableop_resource:?
-lstm_cell_42_matmul_1_readvariableop_resource::
,lstm_cell_42_biasadd_readvariableop_resource:
identity¢#lstm_cell_42/BiasAdd/ReadVariableOp¢"lstm_cell_42/MatMul/ReadVariableOp¢$lstm_cell_42/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp¬
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMulº
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp¨
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMul_1
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add³
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp¬
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dimó
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_42/split
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_1
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul}
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_1
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add_1
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_2|
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu_1 
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
while_body_411519*
condR
while_cond_411518*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
´
(__inference_lstm_42_layer_call_fn_413193
inputs_0
unknown:
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4103442
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
³
ó
-__inference_lstm_cell_42_layer_call_fn_414623

inputs
states_0
states_1
unknown:
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_4104072
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
å

ù
.__inference_sequential_15_layer_call_fn_411855
input_19
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_15_layer_call_and_return_conditional_losses_4118322
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
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
Õ
Ã
while_cond_411518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411518___redundant_placeholder04
0while_while_cond_411518___redundant_placeholder14
0while_while_cond_411518___redundant_placeholder24
0while_while_cond_411518___redundant_placeholder3
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
Ð
G
+__inference_dropout_24_layer_call_fn_413835

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
F__inference_dropout_24_layer_call_and_return_conditional_losses_4116162
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

b
F__inference_reshape_21_layer_call_and_return_conditional_losses_411829

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
while_body_413444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_42_matmul_readvariableop_resource_0:G
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_42_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_42_matmul_readvariableop_resource:E
3while_lstm_cell_42_matmul_1_readvariableop_resource:@
2while_lstm_cell_42_biasadd_readvariableop_resource:¢)while/lstm_cell_42/BiasAdd/ReadVariableOp¢(while/lstm_cell_42/MatMul/ReadVariableOp¢*while/lstm_cell_42/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOpÖ
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMulÎ
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp¿
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMul_1·
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/addÇ
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOpÄ
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/BiasAdd
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_42/split
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_1 
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu´
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_1©
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/add_1
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_2
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu_1¸
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_414052
inputs_0=
+lstm_cell_43_matmul_readvariableop_resource:?
-lstm_cell_43_matmul_1_readvariableop_resource::
,lstm_cell_43_biasadd_readvariableop_resource:
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp¬
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMulº
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp¨
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMul_1
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add³
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp¬
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dimó
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul}
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_2|
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu_1 
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_413968*
condR
while_cond_413967*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_413745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_413745___redundant_placeholder04
0while_while_cond_413745___redundant_placeholder14
0while_while_cond_413745___redundant_placeholder24
0while_while_cond_413745___redundant_placeholder3
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
while_cond_410274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_410274___redundant_placeholder04
0while_while_cond_410274___redundant_placeholder14
0while_while_cond_410274___redundant_placeholder24
0while_while_cond_410274___redundant_placeholder3
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
Ð¯
¾
!__inference__wrapped_model_410186
input_19S
Asequential_15_lstm_42_lstm_cell_42_matmul_readvariableop_resource:U
Csequential_15_lstm_42_lstm_cell_42_matmul_1_readvariableop_resource:P
Bsequential_15_lstm_42_lstm_cell_42_biasadd_readvariableop_resource:S
Asequential_15_lstm_43_lstm_cell_43_matmul_readvariableop_resource:U
Csequential_15_lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:P
Bsequential_15_lstm_43_lstm_cell_43_biasadd_readvariableop_resource:G
5sequential_15_dense_42_matmul_readvariableop_resource:D
6sequential_15_dense_42_biasadd_readvariableop_resource:G
5sequential_15_dense_43_matmul_readvariableop_resource:D
6sequential_15_dense_43_biasadd_readvariableop_resource:
identity¢-sequential_15/dense_42/BiasAdd/ReadVariableOp¢,sequential_15/dense_42/MatMul/ReadVariableOp¢-sequential_15/dense_43/BiasAdd/ReadVariableOp¢,sequential_15/dense_43/MatMul/ReadVariableOp¢9sequential_15/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp¢8sequential_15/lstm_42/lstm_cell_42/MatMul/ReadVariableOp¢:sequential_15/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp¢sequential_15/lstm_42/while¢9sequential_15/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp¢8sequential_15/lstm_43/lstm_cell_43/MatMul/ReadVariableOp¢:sequential_15/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp¢sequential_15/lstm_43/whiler
sequential_15/lstm_42/ShapeShapeinput_19*
T0*
_output_shapes
:2
sequential_15/lstm_42/Shape 
)sequential_15/lstm_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_15/lstm_42/strided_slice/stack¤
+sequential_15/lstm_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_42/strided_slice/stack_1¤
+sequential_15/lstm_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_42/strided_slice/stack_2æ
#sequential_15/lstm_42/strided_sliceStridedSlice$sequential_15/lstm_42/Shape:output:02sequential_15/lstm_42/strided_slice/stack:output:04sequential_15/lstm_42/strided_slice/stack_1:output:04sequential_15/lstm_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_15/lstm_42/strided_slice
!sequential_15/lstm_42/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_15/lstm_42/zeros/mul/yÄ
sequential_15/lstm_42/zeros/mulMul,sequential_15/lstm_42/strided_slice:output:0*sequential_15/lstm_42/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_42/zeros/mul
"sequential_15/lstm_42/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_15/lstm_42/zeros/Less/y¿
 sequential_15/lstm_42/zeros/LessLess#sequential_15/lstm_42/zeros/mul:z:0+sequential_15/lstm_42/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_15/lstm_42/zeros/Less
$sequential_15/lstm_42/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_15/lstm_42/zeros/packed/1Û
"sequential_15/lstm_42/zeros/packedPack,sequential_15/lstm_42/strided_slice:output:0-sequential_15/lstm_42/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_15/lstm_42/zeros/packed
!sequential_15/lstm_42/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_15/lstm_42/zeros/ConstÍ
sequential_15/lstm_42/zerosFill+sequential_15/lstm_42/zeros/packed:output:0*sequential_15/lstm_42/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/lstm_42/zeros
#sequential_15/lstm_42/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_15/lstm_42/zeros_1/mul/yÊ
!sequential_15/lstm_42/zeros_1/mulMul,sequential_15/lstm_42/strided_slice:output:0,sequential_15/lstm_42/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_42/zeros_1/mul
$sequential_15/lstm_42/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_15/lstm_42/zeros_1/Less/yÇ
"sequential_15/lstm_42/zeros_1/LessLess%sequential_15/lstm_42/zeros_1/mul:z:0-sequential_15/lstm_42/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_15/lstm_42/zeros_1/Less
&sequential_15/lstm_42/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_15/lstm_42/zeros_1/packed/1á
$sequential_15/lstm_42/zeros_1/packedPack,sequential_15/lstm_42/strided_slice:output:0/sequential_15/lstm_42/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_15/lstm_42/zeros_1/packed
#sequential_15/lstm_42/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_15/lstm_42/zeros_1/ConstÕ
sequential_15/lstm_42/zeros_1Fill-sequential_15/lstm_42/zeros_1/packed:output:0,sequential_15/lstm_42/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/lstm_42/zeros_1¡
$sequential_15/lstm_42/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_15/lstm_42/transpose/perm¾
sequential_15/lstm_42/transpose	Transposeinput_19-sequential_15/lstm_42/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_15/lstm_42/transpose
sequential_15/lstm_42/Shape_1Shape#sequential_15/lstm_42/transpose:y:0*
T0*
_output_shapes
:2
sequential_15/lstm_42/Shape_1¤
+sequential_15/lstm_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_42/strided_slice_1/stack¨
-sequential_15/lstm_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_42/strided_slice_1/stack_1¨
-sequential_15/lstm_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_42/strided_slice_1/stack_2ò
%sequential_15/lstm_42/strided_slice_1StridedSlice&sequential_15/lstm_42/Shape_1:output:04sequential_15/lstm_42/strided_slice_1/stack:output:06sequential_15/lstm_42/strided_slice_1/stack_1:output:06sequential_15/lstm_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_15/lstm_42/strided_slice_1±
1sequential_15/lstm_42/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_15/lstm_42/TensorArrayV2/element_shape
#sequential_15/lstm_42/TensorArrayV2TensorListReserve:sequential_15/lstm_42/TensorArrayV2/element_shape:output:0.sequential_15/lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_15/lstm_42/TensorArrayV2ë
Ksequential_15/lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_15/lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_15/lstm_42/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_15/lstm_42/transpose:y:0Tsequential_15/lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_15/lstm_42/TensorArrayUnstack/TensorListFromTensor¤
+sequential_15/lstm_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_42/strided_slice_2/stack¨
-sequential_15/lstm_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_42/strided_slice_2/stack_1¨
-sequential_15/lstm_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_42/strided_slice_2/stack_2
%sequential_15/lstm_42/strided_slice_2StridedSlice#sequential_15/lstm_42/transpose:y:04sequential_15/lstm_42/strided_slice_2/stack:output:06sequential_15/lstm_42/strided_slice_2/stack_1:output:06sequential_15/lstm_42/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_15/lstm_42/strided_slice_2ö
8sequential_15/lstm_42/lstm_cell_42/MatMul/ReadVariableOpReadVariableOpAsequential_15_lstm_42_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02:
8sequential_15/lstm_42/lstm_cell_42/MatMul/ReadVariableOp
)sequential_15/lstm_42/lstm_cell_42/MatMulMatMul.sequential_15/lstm_42/strided_slice_2:output:0@sequential_15/lstm_42/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_15/lstm_42/lstm_cell_42/MatMulü
:sequential_15/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOpCsequential_15_lstm_42_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02<
:sequential_15/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp
+sequential_15/lstm_42/lstm_cell_42/MatMul_1MatMul$sequential_15/lstm_42/zeros:output:0Bsequential_15/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_15/lstm_42/lstm_cell_42/MatMul_1÷
&sequential_15/lstm_42/lstm_cell_42/addAddV23sequential_15/lstm_42/lstm_cell_42/MatMul:product:05sequential_15/lstm_42/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_42/lstm_cell_42/addõ
9sequential_15/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOpBsequential_15_lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9sequential_15/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp
*sequential_15/lstm_42/lstm_cell_42/BiasAddBiasAdd*sequential_15/lstm_42/lstm_cell_42/add:z:0Asequential_15/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_15/lstm_42/lstm_cell_42/BiasAddª
2sequential_15/lstm_42/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_15/lstm_42/lstm_cell_42/split/split_dimË
(sequential_15/lstm_42/lstm_cell_42/splitSplit;sequential_15/lstm_42/lstm_cell_42/split/split_dim:output:03sequential_15/lstm_42/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_15/lstm_42/lstm_cell_42/splitÈ
*sequential_15/lstm_42/lstm_cell_42/SigmoidSigmoid1sequential_15/lstm_42/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_15/lstm_42/lstm_cell_42/SigmoidÌ
,sequential_15/lstm_42/lstm_cell_42/Sigmoid_1Sigmoid1sequential_15/lstm_42/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_42/lstm_cell_42/Sigmoid_1ã
&sequential_15/lstm_42/lstm_cell_42/mulMul0sequential_15/lstm_42/lstm_cell_42/Sigmoid_1:y:0&sequential_15/lstm_42/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_42/lstm_cell_42/mul¿
'sequential_15/lstm_42/lstm_cell_42/ReluRelu1sequential_15/lstm_42/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_15/lstm_42/lstm_cell_42/Reluô
(sequential_15/lstm_42/lstm_cell_42/mul_1Mul.sequential_15/lstm_42/lstm_cell_42/Sigmoid:y:05sequential_15/lstm_42/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_15/lstm_42/lstm_cell_42/mul_1é
(sequential_15/lstm_42/lstm_cell_42/add_1AddV2*sequential_15/lstm_42/lstm_cell_42/mul:z:0,sequential_15/lstm_42/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_15/lstm_42/lstm_cell_42/add_1Ì
,sequential_15/lstm_42/lstm_cell_42/Sigmoid_2Sigmoid1sequential_15/lstm_42/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_42/lstm_cell_42/Sigmoid_2¾
)sequential_15/lstm_42/lstm_cell_42/Relu_1Relu,sequential_15/lstm_42/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_15/lstm_42/lstm_cell_42/Relu_1ø
(sequential_15/lstm_42/lstm_cell_42/mul_2Mul0sequential_15/lstm_42/lstm_cell_42/Sigmoid_2:y:07sequential_15/lstm_42/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_15/lstm_42/lstm_cell_42/mul_2»
3sequential_15/lstm_42/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_15/lstm_42/TensorArrayV2_1/element_shape
%sequential_15/lstm_42/TensorArrayV2_1TensorListReserve<sequential_15/lstm_42/TensorArrayV2_1/element_shape:output:0.sequential_15/lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_15/lstm_42/TensorArrayV2_1z
sequential_15/lstm_42/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_15/lstm_42/time«
.sequential_15/lstm_42/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_42/while/maximum_iterations
(sequential_15/lstm_42/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_15/lstm_42/while/loop_counterÕ
sequential_15/lstm_42/whileWhile1sequential_15/lstm_42/while/loop_counter:output:07sequential_15/lstm_42/while/maximum_iterations:output:0#sequential_15/lstm_42/time:output:0.sequential_15/lstm_42/TensorArrayV2_1:handle:0$sequential_15/lstm_42/zeros:output:0&sequential_15/lstm_42/zeros_1:output:0.sequential_15/lstm_42/strided_slice_1:output:0Msequential_15/lstm_42/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_15_lstm_42_lstm_cell_42_matmul_readvariableop_resourceCsequential_15_lstm_42_lstm_cell_42_matmul_1_readvariableop_resourceBsequential_15_lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
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
'sequential_15_lstm_42_while_body_409931*3
cond+R)
'sequential_15_lstm_42_while_cond_409930*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_15/lstm_42/whileá
Fsequential_15/lstm_42/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_15/lstm_42/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_15/lstm_42/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_15/lstm_42/while:output:3Osequential_15/lstm_42/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_15/lstm_42/TensorArrayV2Stack/TensorListStack­
+sequential_15/lstm_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_15/lstm_42/strided_slice_3/stack¨
-sequential_15/lstm_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_15/lstm_42/strided_slice_3/stack_1¨
-sequential_15/lstm_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_42/strided_slice_3/stack_2
%sequential_15/lstm_42/strided_slice_3StridedSliceAsequential_15/lstm_42/TensorArrayV2Stack/TensorListStack:tensor:04sequential_15/lstm_42/strided_slice_3/stack:output:06sequential_15/lstm_42/strided_slice_3/stack_1:output:06sequential_15/lstm_42/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_15/lstm_42/strided_slice_3¥
&sequential_15/lstm_42/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_15/lstm_42/transpose_1/permý
!sequential_15/lstm_42/transpose_1	TransposeAsequential_15/lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_15/lstm_42/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_15/lstm_42/transpose_1
sequential_15/lstm_42/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_15/lstm_42/runtime¯
!sequential_15/dropout_24/IdentityIdentity%sequential_15/lstm_42/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_15/dropout_24/Identity
sequential_15/lstm_43/ShapeShape*sequential_15/dropout_24/Identity:output:0*
T0*
_output_shapes
:2
sequential_15/lstm_43/Shape 
)sequential_15/lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_15/lstm_43/strided_slice/stack¤
+sequential_15/lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_43/strided_slice/stack_1¤
+sequential_15/lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_43/strided_slice/stack_2æ
#sequential_15/lstm_43/strided_sliceStridedSlice$sequential_15/lstm_43/Shape:output:02sequential_15/lstm_43/strided_slice/stack:output:04sequential_15/lstm_43/strided_slice/stack_1:output:04sequential_15/lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_15/lstm_43/strided_slice
!sequential_15/lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_15/lstm_43/zeros/mul/yÄ
sequential_15/lstm_43/zeros/mulMul,sequential_15/lstm_43/strided_slice:output:0*sequential_15/lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_43/zeros/mul
"sequential_15/lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_15/lstm_43/zeros/Less/y¿
 sequential_15/lstm_43/zeros/LessLess#sequential_15/lstm_43/zeros/mul:z:0+sequential_15/lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_15/lstm_43/zeros/Less
$sequential_15/lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_15/lstm_43/zeros/packed/1Û
"sequential_15/lstm_43/zeros/packedPack,sequential_15/lstm_43/strided_slice:output:0-sequential_15/lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_15/lstm_43/zeros/packed
!sequential_15/lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_15/lstm_43/zeros/ConstÍ
sequential_15/lstm_43/zerosFill+sequential_15/lstm_43/zeros/packed:output:0*sequential_15/lstm_43/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/lstm_43/zeros
#sequential_15/lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_15/lstm_43/zeros_1/mul/yÊ
!sequential_15/lstm_43/zeros_1/mulMul,sequential_15/lstm_43/strided_slice:output:0,sequential_15/lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_43/zeros_1/mul
$sequential_15/lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_15/lstm_43/zeros_1/Less/yÇ
"sequential_15/lstm_43/zeros_1/LessLess%sequential_15/lstm_43/zeros_1/mul:z:0-sequential_15/lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_15/lstm_43/zeros_1/Less
&sequential_15/lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_15/lstm_43/zeros_1/packed/1á
$sequential_15/lstm_43/zeros_1/packedPack,sequential_15/lstm_43/strided_slice:output:0/sequential_15/lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_15/lstm_43/zeros_1/packed
#sequential_15/lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_15/lstm_43/zeros_1/ConstÕ
sequential_15/lstm_43/zeros_1Fill-sequential_15/lstm_43/zeros_1/packed:output:0,sequential_15/lstm_43/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/lstm_43/zeros_1¡
$sequential_15/lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_15/lstm_43/transpose/permà
sequential_15/lstm_43/transpose	Transpose*sequential_15/dropout_24/Identity:output:0-sequential_15/lstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_15/lstm_43/transpose
sequential_15/lstm_43/Shape_1Shape#sequential_15/lstm_43/transpose:y:0*
T0*
_output_shapes
:2
sequential_15/lstm_43/Shape_1¤
+sequential_15/lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_43/strided_slice_1/stack¨
-sequential_15/lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_43/strided_slice_1/stack_1¨
-sequential_15/lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_43/strided_slice_1/stack_2ò
%sequential_15/lstm_43/strided_slice_1StridedSlice&sequential_15/lstm_43/Shape_1:output:04sequential_15/lstm_43/strided_slice_1/stack:output:06sequential_15/lstm_43/strided_slice_1/stack_1:output:06sequential_15/lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_15/lstm_43/strided_slice_1±
1sequential_15/lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_15/lstm_43/TensorArrayV2/element_shape
#sequential_15/lstm_43/TensorArrayV2TensorListReserve:sequential_15/lstm_43/TensorArrayV2/element_shape:output:0.sequential_15/lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_15/lstm_43/TensorArrayV2ë
Ksequential_15/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_15/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_15/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_15/lstm_43/transpose:y:0Tsequential_15/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_15/lstm_43/TensorArrayUnstack/TensorListFromTensor¤
+sequential_15/lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_43/strided_slice_2/stack¨
-sequential_15/lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_43/strided_slice_2/stack_1¨
-sequential_15/lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_43/strided_slice_2/stack_2
%sequential_15/lstm_43/strided_slice_2StridedSlice#sequential_15/lstm_43/transpose:y:04sequential_15/lstm_43/strided_slice_2/stack:output:06sequential_15/lstm_43/strided_slice_2/stack_1:output:06sequential_15/lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_15/lstm_43/strided_slice_2ö
8sequential_15/lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpAsequential_15_lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02:
8sequential_15/lstm_43/lstm_cell_43/MatMul/ReadVariableOp
)sequential_15/lstm_43/lstm_cell_43/MatMulMatMul.sequential_15/lstm_43/strided_slice_2:output:0@sequential_15/lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_15/lstm_43/lstm_cell_43/MatMulü
:sequential_15/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpCsequential_15_lstm_43_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02<
:sequential_15/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp
+sequential_15/lstm_43/lstm_cell_43/MatMul_1MatMul$sequential_15/lstm_43/zeros:output:0Bsequential_15/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_15/lstm_43/lstm_cell_43/MatMul_1÷
&sequential_15/lstm_43/lstm_cell_43/addAddV23sequential_15/lstm_43/lstm_cell_43/MatMul:product:05sequential_15/lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_43/lstm_cell_43/addõ
9sequential_15/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpBsequential_15_lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9sequential_15/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp
*sequential_15/lstm_43/lstm_cell_43/BiasAddBiasAdd*sequential_15/lstm_43/lstm_cell_43/add:z:0Asequential_15/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_15/lstm_43/lstm_cell_43/BiasAddª
2sequential_15/lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_15/lstm_43/lstm_cell_43/split/split_dimË
(sequential_15/lstm_43/lstm_cell_43/splitSplit;sequential_15/lstm_43/lstm_cell_43/split/split_dim:output:03sequential_15/lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2*
(sequential_15/lstm_43/lstm_cell_43/splitÈ
*sequential_15/lstm_43/lstm_cell_43/SigmoidSigmoid1sequential_15/lstm_43/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_15/lstm_43/lstm_cell_43/SigmoidÌ
,sequential_15/lstm_43/lstm_cell_43/Sigmoid_1Sigmoid1sequential_15/lstm_43/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_43/lstm_cell_43/Sigmoid_1ã
&sequential_15/lstm_43/lstm_cell_43/mulMul0sequential_15/lstm_43/lstm_cell_43/Sigmoid_1:y:0&sequential_15/lstm_43/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_43/lstm_cell_43/mul¿
'sequential_15/lstm_43/lstm_cell_43/ReluRelu1sequential_15/lstm_43/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_15/lstm_43/lstm_cell_43/Reluô
(sequential_15/lstm_43/lstm_cell_43/mul_1Mul.sequential_15/lstm_43/lstm_cell_43/Sigmoid:y:05sequential_15/lstm_43/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_15/lstm_43/lstm_cell_43/mul_1é
(sequential_15/lstm_43/lstm_cell_43/add_1AddV2*sequential_15/lstm_43/lstm_cell_43/mul:z:0,sequential_15/lstm_43/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_15/lstm_43/lstm_cell_43/add_1Ì
,sequential_15/lstm_43/lstm_cell_43/Sigmoid_2Sigmoid1sequential_15/lstm_43/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_43/lstm_cell_43/Sigmoid_2¾
)sequential_15/lstm_43/lstm_cell_43/Relu_1Relu,sequential_15/lstm_43/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_15/lstm_43/lstm_cell_43/Relu_1ø
(sequential_15/lstm_43/lstm_cell_43/mul_2Mul0sequential_15/lstm_43/lstm_cell_43/Sigmoid_2:y:07sequential_15/lstm_43/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_15/lstm_43/lstm_cell_43/mul_2»
3sequential_15/lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   25
3sequential_15/lstm_43/TensorArrayV2_1/element_shape
%sequential_15/lstm_43/TensorArrayV2_1TensorListReserve<sequential_15/lstm_43/TensorArrayV2_1/element_shape:output:0.sequential_15/lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_15/lstm_43/TensorArrayV2_1z
sequential_15/lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_15/lstm_43/time«
.sequential_15/lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_43/while/maximum_iterations
(sequential_15/lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_15/lstm_43/while/loop_counterÕ
sequential_15/lstm_43/whileWhile1sequential_15/lstm_43/while/loop_counter:output:07sequential_15/lstm_43/while/maximum_iterations:output:0#sequential_15/lstm_43/time:output:0.sequential_15/lstm_43/TensorArrayV2_1:handle:0$sequential_15/lstm_43/zeros:output:0&sequential_15/lstm_43/zeros_1:output:0.sequential_15/lstm_43/strided_slice_1:output:0Msequential_15/lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_15_lstm_43_lstm_cell_43_matmul_readvariableop_resourceCsequential_15_lstm_43_lstm_cell_43_matmul_1_readvariableop_resourceBsequential_15_lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
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
'sequential_15_lstm_43_while_body_410079*3
cond+R)
'sequential_15_lstm_43_while_cond_410078*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_15/lstm_43/whileá
Fsequential_15/lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2H
Fsequential_15/lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeÀ
8sequential_15/lstm_43/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_15/lstm_43/while:output:3Osequential_15/lstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02:
8sequential_15/lstm_43/TensorArrayV2Stack/TensorListStack­
+sequential_15/lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_15/lstm_43/strided_slice_3/stack¨
-sequential_15/lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_15/lstm_43/strided_slice_3/stack_1¨
-sequential_15/lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_43/strided_slice_3/stack_2
%sequential_15/lstm_43/strided_slice_3StridedSliceAsequential_15/lstm_43/TensorArrayV2Stack/TensorListStack:tensor:04sequential_15/lstm_43/strided_slice_3/stack:output:06sequential_15/lstm_43/strided_slice_3/stack_1:output:06sequential_15/lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_15/lstm_43/strided_slice_3¥
&sequential_15/lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_15/lstm_43/transpose_1/permý
!sequential_15/lstm_43/transpose_1	TransposeAsequential_15/lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_15/lstm_43/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_15/lstm_43/transpose_1
sequential_15/lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_15/lstm_43/runtime´
!sequential_15/dropout_25/IdentityIdentity.sequential_15/lstm_43/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_15/dropout_25/IdentityÒ
,sequential_15/dense_42/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_15/dense_42/MatMul/ReadVariableOpÜ
sequential_15/dense_42/MatMulMatMul*sequential_15/dropout_25/Identity:output:04sequential_15/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/dense_42/MatMulÑ
-sequential_15/dense_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_42/BiasAdd/ReadVariableOpÝ
sequential_15/dense_42/BiasAddBiasAdd'sequential_15/dense_42/MatMul:product:05sequential_15/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_15/dense_42/BiasAdd
sequential_15/dense_42/ReluRelu'sequential_15/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/dense_42/ReluÒ
,sequential_15/dense_43/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_15/dense_43/MatMul/ReadVariableOpÛ
sequential_15/dense_43/MatMulMatMul)sequential_15/dense_42/Relu:activations:04sequential_15/dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_15/dense_43/MatMulÑ
-sequential_15/dense_43/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_43/BiasAdd/ReadVariableOpÝ
sequential_15/dense_43/BiasAddBiasAdd'sequential_15/dense_43/MatMul:product:05sequential_15/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_15/dense_43/BiasAdd
sequential_15/reshape_21/ShapeShape'sequential_15/dense_43/BiasAdd:output:0*
T0*
_output_shapes
:2 
sequential_15/reshape_21/Shape¦
,sequential_15/reshape_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_15/reshape_21/strided_slice/stackª
.sequential_15/reshape_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_15/reshape_21/strided_slice/stack_1ª
.sequential_15/reshape_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_15/reshape_21/strided_slice/stack_2ø
&sequential_15/reshape_21/strided_sliceStridedSlice'sequential_15/reshape_21/Shape:output:05sequential_15/reshape_21/strided_slice/stack:output:07sequential_15/reshape_21/strided_slice/stack_1:output:07sequential_15/reshape_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_15/reshape_21/strided_slice
(sequential_15/reshape_21/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_15/reshape_21/Reshape/shape/1
(sequential_15/reshape_21/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_15/reshape_21/Reshape/shape/2
&sequential_15/reshape_21/Reshape/shapePack/sequential_15/reshape_21/strided_slice:output:01sequential_15/reshape_21/Reshape/shape/1:output:01sequential_15/reshape_21/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&sequential_15/reshape_21/Reshape/shapeß
 sequential_15/reshape_21/ReshapeReshape'sequential_15/dense_43/BiasAdd:output:0/sequential_15/reshape_21/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_15/reshape_21/Reshape
IdentityIdentity)sequential_15/reshape_21/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity°
NoOpNoOp.^sequential_15/dense_42/BiasAdd/ReadVariableOp-^sequential_15/dense_42/MatMul/ReadVariableOp.^sequential_15/dense_43/BiasAdd/ReadVariableOp-^sequential_15/dense_43/MatMul/ReadVariableOp:^sequential_15/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp9^sequential_15/lstm_42/lstm_cell_42/MatMul/ReadVariableOp;^sequential_15/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp^sequential_15/lstm_42/while:^sequential_15/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp9^sequential_15/lstm_43/lstm_cell_43/MatMul/ReadVariableOp;^sequential_15/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^sequential_15/lstm_43/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2^
-sequential_15/dense_42/BiasAdd/ReadVariableOp-sequential_15/dense_42/BiasAdd/ReadVariableOp2\
,sequential_15/dense_42/MatMul/ReadVariableOp,sequential_15/dense_42/MatMul/ReadVariableOp2^
-sequential_15/dense_43/BiasAdd/ReadVariableOp-sequential_15/dense_43/BiasAdd/ReadVariableOp2\
,sequential_15/dense_43/MatMul/ReadVariableOp,sequential_15/dense_43/MatMul/ReadVariableOp2v
9sequential_15/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp9sequential_15/lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp2t
8sequential_15/lstm_42/lstm_cell_42/MatMul/ReadVariableOp8sequential_15/lstm_42/lstm_cell_42/MatMul/ReadVariableOp2x
:sequential_15/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:sequential_15/lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp2:
sequential_15/lstm_42/whilesequential_15/lstm_42/while2v
9sequential_15/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp9sequential_15/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2t
8sequential_15/lstm_43/lstm_cell_43/MatMul/ReadVariableOp8sequential_15/lstm_43/lstm_cell_43/MatMul/ReadVariableOp2x
:sequential_15/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:sequential_15/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2:
sequential_15/lstm_43/whilesequential_15/lstm_43/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
Ö
´
(__inference_lstm_42_layer_call_fn_413204
inputs_0
unknown:
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4105542
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

d
F__inference_dropout_24_layer_call_and_return_conditional_losses_411616

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
?
Ê
while_body_411684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_43_matmul_readvariableop_resource_0:G
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_43_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_43_matmul_readvariableop_resource:E
3while_lstm_cell_43_matmul_1_readvariableop_resource:@
2while_lstm_cell_43_biasadd_readvariableop_resource:¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOpÖ
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMulÎ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp¿
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMul_1·
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/addÇ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÄ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_1 
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu´
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_1©
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu_1¸
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_413292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_413292___redundant_placeholder04
0while_while_cond_413292___redundant_placeholder14
0while_while_cond_413292___redundant_placeholder24
0while_while_cond_413292___redundant_placeholder3
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
ÿ$

I__inference_sequential_15_layer_call_and_return_conditional_losses_412441
input_19 
lstm_42_412413: 
lstm_42_412415:
lstm_42_412417: 
lstm_43_412421: 
lstm_43_412423:
lstm_43_412425:!
dense_42_412429:
dense_42_412431:!
dense_43_412434:
dense_43_412436:
identity¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¢"dropout_24/StatefulPartitionedCall¢"dropout_25/StatefulPartitionedCall¢lstm_42/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall§
lstm_42/StatefulPartitionedCallStatefulPartitionedCallinput_19lstm_42_412413lstm_42_412415lstm_42_412417*
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4122642!
lstm_42/StatefulPartitionedCall
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_42/StatefulPartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_4120972$
"dropout_24/StatefulPartitionedCallÆ
lstm_43/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0lstm_43_412421lstm_43_412423lstm_43_412425*
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4120682!
lstm_43/StatefulPartitionedCall¹
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_4119012$
"dropout_25/StatefulPartitionedCall¹
 dense_42/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_42_412429dense_42_412431*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_4117942"
 dense_42/StatefulPartitionedCall·
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_412434dense_43_412436*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_4118102"
 dense_43/StatefulPartitionedCall
reshape_21/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
F__inference_reshape_21_layer_call_and_return_conditional_losses_4118292
reshape_21/PartitionedCall
IdentityIdentity#reshape_21/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¢
NoOpNoOp!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
¬
e
F__inference_dropout_25_layer_call_and_return_conditional_losses_411901

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
¬
e
F__inference_dropout_25_layer_call_and_return_conditional_losses_414532

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
ñ

)__inference_dense_42_layer_call_fn_414541

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
D__inference_dense_42_layer_call_and_return_conditional_losses_4117942
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
Í
e
F__inference_dropout_24_layer_call_and_return_conditional_losses_413857

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
Ò%
Ý
while_body_411115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_43_411139_0:-
while_lstm_cell_43_411141_0:)
while_lstm_cell_43_411143_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_43_411139:+
while_lstm_cell_43_411141:'
while_lstm_cell_43_411143:¢*while/lstm_cell_43/StatefulPartitionedCallÃ
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
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_411139_0while_lstm_cell_43_411141_0while_lstm_cell_43_411143_0*
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_4110372,
*while/lstm_cell_43/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_43/StatefulPartitionedCall*"
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
while_lstm_cell_43_411139while_lstm_cell_43_411139_0"8
while_lstm_cell_43_411141while_lstm_cell_43_411141_0"8
while_lstm_cell_43_411143while_lstm_cell_43_411143_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ì!
º
I__inference_sequential_15_layer_call_and_return_conditional_losses_411832

inputs 
lstm_42_411604: 
lstm_42_411606:
lstm_42_411608: 
lstm_43_411769: 
lstm_43_411771:
lstm_43_411773:!
dense_42_411795:
dense_42_411797:!
dense_43_411811:
dense_43_411813:
identity¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¢lstm_42/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall¥
lstm_42/StatefulPartitionedCallStatefulPartitionedCallinputslstm_42_411604lstm_42_411606lstm_42_411608*
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4116032!
lstm_42/StatefulPartitionedCall
dropout_24/PartitionedCallPartitionedCall(lstm_42/StatefulPartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_4116162
dropout_24/PartitionedCall¾
lstm_43/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0lstm_43_411769lstm_43_411771lstm_43_411773*
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4117682!
lstm_43/StatefulPartitionedCallü
dropout_25/PartitionedCallPartitionedCall(lstm_43/StatefulPartitionedCall:output:0*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_4117812
dropout_25/PartitionedCall±
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_42_411795dense_42_411797*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_4117942"
 dense_42/StatefulPartitionedCall·
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_411811dense_43_411813*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_4118102"
 dense_43/StatefulPartitionedCall
reshape_21/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
F__inference_reshape_21_layer_call_and_return_conditional_losses_4118292
reshape_21/PartitionedCall
IdentityIdentity#reshape_21/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿^

'sequential_15_lstm_43_while_body_410079H
Dsequential_15_lstm_43_while_sequential_15_lstm_43_while_loop_counterN
Jsequential_15_lstm_43_while_sequential_15_lstm_43_while_maximum_iterations+
'sequential_15_lstm_43_while_placeholder-
)sequential_15_lstm_43_while_placeholder_1-
)sequential_15_lstm_43_while_placeholder_2-
)sequential_15_lstm_43_while_placeholder_3G
Csequential_15_lstm_43_while_sequential_15_lstm_43_strided_slice_1_0
sequential_15_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_43_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_15_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:]
Ksequential_15_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:X
Jsequential_15_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:(
$sequential_15_lstm_43_while_identity*
&sequential_15_lstm_43_while_identity_1*
&sequential_15_lstm_43_while_identity_2*
&sequential_15_lstm_43_while_identity_3*
&sequential_15_lstm_43_while_identity_4*
&sequential_15_lstm_43_while_identity_5E
Asequential_15_lstm_43_while_sequential_15_lstm_43_strided_slice_1
}sequential_15_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_43_tensorarrayunstack_tensorlistfromtensorY
Gsequential_15_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:[
Isequential_15_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:V
Hsequential_15_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:¢?sequential_15/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp¢>sequential_15/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp¢@sequential_15/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpï
Msequential_15/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_15/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_15/lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_15_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_43_tensorarrayunstack_tensorlistfromtensor_0'sequential_15_lstm_43_while_placeholderVsequential_15/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_15/lstm_43/while/TensorArrayV2Read/TensorListGetItem
>sequential_15/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpIsequential_15_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02@
>sequential_15/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp®
/sequential_15/lstm_43/while/lstm_cell_43/MatMulMatMulFsequential_15/lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_15/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_15/lstm_43/while/lstm_cell_43/MatMul
@sequential_15/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpKsequential_15_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02B
@sequential_15/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp
1sequential_15/lstm_43/while/lstm_cell_43/MatMul_1MatMul)sequential_15_lstm_43_while_placeholder_2Hsequential_15/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_15/lstm_43/while/lstm_cell_43/MatMul_1
,sequential_15/lstm_43/while/lstm_cell_43/addAddV29sequential_15/lstm_43/while/lstm_cell_43/MatMul:product:0;sequential_15/lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_43/while/lstm_cell_43/add
?sequential_15/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpJsequential_15_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02A
?sequential_15/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp
0sequential_15/lstm_43/while/lstm_cell_43/BiasAddBiasAdd0sequential_15/lstm_43/while/lstm_cell_43/add:z:0Gsequential_15/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_15/lstm_43/while/lstm_cell_43/BiasAdd¶
8sequential_15/lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_15/lstm_43/while/lstm_cell_43/split/split_dimã
.sequential_15/lstm_43/while/lstm_cell_43/splitSplitAsequential_15/lstm_43/while/lstm_cell_43/split/split_dim:output:09sequential_15/lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_15/lstm_43/while/lstm_cell_43/splitÚ
0sequential_15/lstm_43/while/lstm_cell_43/SigmoidSigmoid7sequential_15/lstm_43/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_15/lstm_43/while/lstm_cell_43/SigmoidÞ
2sequential_15/lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid7sequential_15/lstm_43/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_15/lstm_43/while/lstm_cell_43/Sigmoid_1ø
,sequential_15/lstm_43/while/lstm_cell_43/mulMul6sequential_15/lstm_43/while/lstm_cell_43/Sigmoid_1:y:0)sequential_15_lstm_43_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_43/while/lstm_cell_43/mulÑ
-sequential_15/lstm_43/while/lstm_cell_43/ReluRelu7sequential_15/lstm_43/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_15/lstm_43/while/lstm_cell_43/Relu
.sequential_15/lstm_43/while/lstm_cell_43/mul_1Mul4sequential_15/lstm_43/while/lstm_cell_43/Sigmoid:y:0;sequential_15/lstm_43/while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_43/while/lstm_cell_43/mul_1
.sequential_15/lstm_43/while/lstm_cell_43/add_1AddV20sequential_15/lstm_43/while/lstm_cell_43/mul:z:02sequential_15/lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_43/while/lstm_cell_43/add_1Þ
2sequential_15/lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid7sequential_15/lstm_43/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_15/lstm_43/while/lstm_cell_43/Sigmoid_2Ð
/sequential_15/lstm_43/while/lstm_cell_43/Relu_1Relu2sequential_15/lstm_43/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_15/lstm_43/while/lstm_cell_43/Relu_1
.sequential_15/lstm_43/while/lstm_cell_43/mul_2Mul6sequential_15/lstm_43/while/lstm_cell_43/Sigmoid_2:y:0=sequential_15/lstm_43/while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_43/while/lstm_cell_43/mul_2Î
@sequential_15/lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_15_lstm_43_while_placeholder_1'sequential_15_lstm_43_while_placeholder2sequential_15/lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_15/lstm_43/while/TensorArrayV2Write/TensorListSetItem
!sequential_15/lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_15/lstm_43/while/add/yÁ
sequential_15/lstm_43/while/addAddV2'sequential_15_lstm_43_while_placeholder*sequential_15/lstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_43/while/add
#sequential_15/lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_15/lstm_43/while/add_1/yä
!sequential_15/lstm_43/while/add_1AddV2Dsequential_15_lstm_43_while_sequential_15_lstm_43_while_loop_counter,sequential_15/lstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_43/while/add_1Ã
$sequential_15/lstm_43/while/IdentityIdentity%sequential_15/lstm_43/while/add_1:z:0!^sequential_15/lstm_43/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_15/lstm_43/while/Identityì
&sequential_15/lstm_43/while/Identity_1IdentityJsequential_15_lstm_43_while_sequential_15_lstm_43_while_maximum_iterations!^sequential_15/lstm_43/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_43/while/Identity_1Å
&sequential_15/lstm_43/while/Identity_2Identity#sequential_15/lstm_43/while/add:z:0!^sequential_15/lstm_43/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_43/while/Identity_2ò
&sequential_15/lstm_43/while/Identity_3IdentityPsequential_15/lstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_15/lstm_43/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_43/while/Identity_3å
&sequential_15/lstm_43/while/Identity_4Identity2sequential_15/lstm_43/while/lstm_cell_43/mul_2:z:0!^sequential_15/lstm_43/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_43/while/Identity_4å
&sequential_15/lstm_43/while/Identity_5Identity2sequential_15/lstm_43/while/lstm_cell_43/add_1:z:0!^sequential_15/lstm_43/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_43/while/Identity_5Ì
 sequential_15/lstm_43/while/NoOpNoOp@^sequential_15/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_15/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_15/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_15/lstm_43/while/NoOp"U
$sequential_15_lstm_43_while_identity-sequential_15/lstm_43/while/Identity:output:0"Y
&sequential_15_lstm_43_while_identity_1/sequential_15/lstm_43/while/Identity_1:output:0"Y
&sequential_15_lstm_43_while_identity_2/sequential_15/lstm_43/while/Identity_2:output:0"Y
&sequential_15_lstm_43_while_identity_3/sequential_15/lstm_43/while/Identity_3:output:0"Y
&sequential_15_lstm_43_while_identity_4/sequential_15/lstm_43/while/Identity_4:output:0"Y
&sequential_15_lstm_43_while_identity_5/sequential_15/lstm_43/while/Identity_5:output:0"
Hsequential_15_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resourceJsequential_15_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"
Isequential_15_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resourceKsequential_15_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"
Gsequential_15_lstm_43_while_lstm_cell_43_matmul_readvariableop_resourceIsequential_15_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"
Asequential_15_lstm_43_while_sequential_15_lstm_43_strided_slice_1Csequential_15_lstm_43_while_sequential_15_lstm_43_strided_slice_1_0"
}sequential_15_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_43_tensorarrayunstack_tensorlistfromtensorsequential_15_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_15/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?sequential_15/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2
>sequential_15/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp>sequential_15/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2
@sequential_15/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp@sequential_15/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ò%
Ý
while_body_410485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_42_410509_0:-
while_lstm_cell_42_410511_0:)
while_lstm_cell_42_410513_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_42_410509:+
while_lstm_cell_42_410511:'
while_lstm_cell_42_410513:¢*while/lstm_cell_42/StatefulPartitionedCallÃ
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
*while/lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_42_410509_0while_lstm_cell_42_410511_0while_lstm_cell_42_410513_0*
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_4104072,
*while/lstm_cell_42/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_42/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_42/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_42/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_42/StatefulPartitionedCall*"
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
while_lstm_cell_42_410509while_lstm_cell_42_410509_0"8
while_lstm_cell_42_410511while_lstm_cell_42_410511_0"8
while_lstm_cell_42_410513while_lstm_cell_42_410513_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_42/StatefulPartitionedCall*while/lstm_cell_42/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

õ
D__inference_dense_42_layer_call_and_return_conditional_losses_411794

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
Æ

ã
lstm_42_while_cond_412912,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3.
*lstm_42_while_less_lstm_42_strided_slice_1D
@lstm_42_while_lstm_42_while_cond_412912___redundant_placeholder0D
@lstm_42_while_lstm_42_while_cond_412912___redundant_placeholder1D
@lstm_42_while_lstm_42_while_cond_412912___redundant_placeholder2D
@lstm_42_while_lstm_42_while_cond_412912___redundant_placeholder3
lstm_42_while_identity

lstm_42/while/LessLesslstm_42_while_placeholder*lstm_42_while_less_lstm_42_strided_slice_1*
T0*
_output_shapes
: 2
lstm_42/while/Lessu
lstm_42/while/IdentityIdentitylstm_42/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_42/while/Identity"9
lstm_42_while_identitylstm_42/while/Identity:output:0*(
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
F

C__inference_lstm_43_layer_call_and_return_conditional_losses_410974

inputs%
lstm_cell_43_410892:%
lstm_cell_43_410894:!
lstm_cell_43_410896:
identity¢$lstm_cell_43/StatefulPartitionedCall¢whileD
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
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_410892lstm_cell_43_410894lstm_cell_43_410896*
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_4108912&
$lstm_cell_43/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_410892lstm_cell_43_410894lstm_cell_43_410896*
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
while_body_410905*
condR
while_cond_410904*K
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
NoOpNoOp%^lstm_cell_43/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_414655

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
while_body_414270
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_43_matmul_readvariableop_resource_0:G
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_43_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_43_matmul_readvariableop_resource:E
3while_lstm_cell_43_matmul_1_readvariableop_resource:@
2while_lstm_cell_43_biasadd_readvariableop_resource:¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOpÖ
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMulÎ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp¿
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMul_1·
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/addÇ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÄ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_1 
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu´
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_1©
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu_1¸
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_414420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414420___redundant_placeholder04
0while_while_cond_414420___redundant_placeholder14
0while_while_cond_414420___redundant_placeholder24
0while_while_cond_414420___redundant_placeholder3
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
ñ

H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_414753

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
Õ
Ã
while_cond_413594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_413594___redundant_placeholder04
0while_while_cond_413594___redundant_placeholder14
0while_while_cond_413594___redundant_placeholder24
0while_while_cond_413594___redundant_placeholder3
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
+__inference_dropout_25_layer_call_fn_414510

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
F__inference_dropout_25_layer_call_and_return_conditional_losses_4117812
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
while_body_413968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_43_matmul_readvariableop_resource_0:G
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_43_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_43_matmul_readvariableop_resource:E
3while_lstm_cell_43_matmul_1_readvariableop_resource:@
2while_lstm_cell_43_biasadd_readvariableop_resource:¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOpÖ
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMulÎ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp¿
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMul_1·
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/addÇ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÄ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_1 
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu´
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_1©
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu_1¸
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
(__inference_lstm_42_layer_call_fn_413226

inputs
unknown:
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4122642
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
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
d
+__inference_dropout_24_layer_call_fn_413840

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
F__inference_dropout_24_layer_call_and_return_conditional_losses_4120972
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
é

H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_410261

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ò%
Ý
while_body_410275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_42_410299_0:-
while_lstm_cell_42_410301_0:)
while_lstm_cell_42_410303_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_42_410299:+
while_lstm_cell_42_410301:'
while_lstm_cell_42_410303:¢*while/lstm_cell_42/StatefulPartitionedCallÃ
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
*while/lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_42_410299_0while_lstm_cell_42_410301_0while_lstm_cell_42_410303_0*
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_4102612,
*while/lstm_cell_42/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_42/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_42/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¤
while/Identity_5Identity3while/lstm_cell_42/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_42/StatefulPartitionedCall*"
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
while_lstm_cell_42_410299while_lstm_cell_42_410299_0"8
while_lstm_cell_42_410301while_lstm_cell_42_410301_0"8
while_lstm_cell_42_410303while_lstm_cell_42_410303_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_42/StatefulPartitionedCall*while/lstm_cell_42/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
ù$

I__inference_sequential_15_layer_call_and_return_conditional_losses_412331

inputs 
lstm_42_412303: 
lstm_42_412305:
lstm_42_412307: 
lstm_43_412311: 
lstm_43_412313:
lstm_43_412315:!
dense_42_412319:
dense_42_412321:!
dense_43_412324:
dense_43_412326:
identity¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¢"dropout_24/StatefulPartitionedCall¢"dropout_25/StatefulPartitionedCall¢lstm_42/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall¥
lstm_42/StatefulPartitionedCallStatefulPartitionedCallinputslstm_42_412303lstm_42_412305lstm_42_412307*
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4122642!
lstm_42/StatefulPartitionedCall
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_42/StatefulPartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_4120972$
"dropout_24/StatefulPartitionedCallÆ
lstm_43/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0lstm_43_412311lstm_43_412313lstm_43_412315*
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4120682!
lstm_43/StatefulPartitionedCall¹
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_4119012$
"dropout_25/StatefulPartitionedCall¹
 dense_42/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_42_412319dense_42_412321*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_4117942"
 dense_42/StatefulPartitionedCall·
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_412324dense_43_412326*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_4118102"
 dense_43/StatefulPartitionedCall
reshape_21/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
F__inference_reshape_21_layer_call_and_return_conditional_losses_4118292
reshape_21/PartitionedCall
IdentityIdentity#reshape_21/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¢
NoOpNoOp!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×[

C__inference_lstm_42_layer_call_and_return_conditional_losses_413679

inputs=
+lstm_cell_42_matmul_readvariableop_resource:?
-lstm_cell_42_matmul_1_readvariableop_resource::
,lstm_cell_42_biasadd_readvariableop_resource:
identity¢#lstm_cell_42/BiasAdd/ReadVariableOp¢"lstm_cell_42/MatMul/ReadVariableOp¢$lstm_cell_42/MatMul_1/ReadVariableOp¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp¬
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMulº
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp¨
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMul_1
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add³
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp¬
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dimó
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_42/split
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_1
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul}
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_1
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add_1
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_2|
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu_1 
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
while_body_413595*
condR
while_cond_413594*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü[

C__inference_lstm_43_layer_call_and_return_conditional_losses_411768

inputs=
+lstm_cell_43_matmul_readvariableop_resource:?
-lstm_cell_43_matmul_1_readvariableop_resource::
,lstm_cell_43_biasadd_readvariableop_resource:
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp¬
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMulº
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp¨
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMul_1
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add³
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp¬
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dimó
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul}
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_2|
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu_1 
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_411684*
condR
while_cond_411683*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_411519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_42_matmul_readvariableop_resource_0:G
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_42_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_42_matmul_readvariableop_resource:E
3while_lstm_cell_42_matmul_1_readvariableop_resource:@
2while_lstm_cell_42_biasadd_readvariableop_resource:¢)while/lstm_cell_42/BiasAdd/ReadVariableOp¢(while/lstm_cell_42/MatMul/ReadVariableOp¢*while/lstm_cell_42/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOpÖ
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMulÎ
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp¿
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMul_1·
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/addÇ
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOpÄ
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/BiasAdd
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_42/split
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_1 
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu´
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_1©
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/add_1
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_2
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu_1¸
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_42_while_body_412913,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3+
'lstm_42_while_lstm_42_strided_slice_1_0g
clstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0:O
=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0:J
<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0:
lstm_42_while_identity
lstm_42_while_identity_1
lstm_42_while_identity_2
lstm_42_while_identity_3
lstm_42_while_identity_4
lstm_42_while_identity_5)
%lstm_42_while_lstm_42_strided_slice_1e
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorK
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource:M
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource:H
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource:¢1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp¢0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp¢2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpÓ
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_42/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0lstm_42_while_placeholderHlstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_42/while/TensorArrayV2Read/TensorListGetItemà
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpö
!lstm_42/while/lstm_cell_42/MatMulMatMul8lstm_42/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_42/while/lstm_cell_42/MatMulæ
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpß
#lstm_42/while/lstm_cell_42/MatMul_1MatMullstm_42_while_placeholder_2:lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_42/while/lstm_cell_42/MatMul_1×
lstm_42/while/lstm_cell_42/addAddV2+lstm_42/while/lstm_cell_42/MatMul:product:0-lstm_42/while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/while/lstm_cell_42/addß
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpä
"lstm_42/while/lstm_cell_42/BiasAddBiasAdd"lstm_42/while/lstm_cell_42/add:z:09lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_42/while/lstm_cell_42/BiasAdd
*lstm_42/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_42/while/lstm_cell_42/split/split_dim«
 lstm_42/while/lstm_cell_42/splitSplit3lstm_42/while/lstm_cell_42/split/split_dim:output:0+lstm_42/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_42/while/lstm_cell_42/split°
"lstm_42/while/lstm_cell_42/SigmoidSigmoid)lstm_42/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_42/while/lstm_cell_42/Sigmoid´
$lstm_42/while/lstm_cell_42/Sigmoid_1Sigmoid)lstm_42/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_42/while/lstm_cell_42/Sigmoid_1À
lstm_42/while/lstm_cell_42/mulMul(lstm_42/while/lstm_cell_42/Sigmoid_1:y:0lstm_42_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/while/lstm_cell_42/mul§
lstm_42/while/lstm_cell_42/ReluRelu)lstm_42/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_42/while/lstm_cell_42/ReluÔ
 lstm_42/while/lstm_cell_42/mul_1Mul&lstm_42/while/lstm_cell_42/Sigmoid:y:0-lstm_42/while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/lstm_cell_42/mul_1É
 lstm_42/while/lstm_cell_42/add_1AddV2"lstm_42/while/lstm_cell_42/mul:z:0$lstm_42/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/lstm_cell_42/add_1´
$lstm_42/while/lstm_cell_42/Sigmoid_2Sigmoid)lstm_42/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_42/while/lstm_cell_42/Sigmoid_2¦
!lstm_42/while/lstm_cell_42/Relu_1Relu$lstm_42/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_42/while/lstm_cell_42/Relu_1Ø
 lstm_42/while/lstm_cell_42/mul_2Mul(lstm_42/while/lstm_cell_42/Sigmoid_2:y:0/lstm_42/while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/lstm_cell_42/mul_2
2lstm_42/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_42_while_placeholder_1lstm_42_while_placeholder$lstm_42/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_42/while/TensorArrayV2Write/TensorListSetIteml
lstm_42/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add/y
lstm_42/while/addAddV2lstm_42_while_placeholderlstm_42/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/addp
lstm_42/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/while/add_1/y
lstm_42/while/add_1AddV2(lstm_42_while_lstm_42_while_loop_counterlstm_42/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_42/while/add_1
lstm_42/while/IdentityIdentitylstm_42/while/add_1:z:0^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity¦
lstm_42/while/Identity_1Identity.lstm_42_while_lstm_42_while_maximum_iterations^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_1
lstm_42/while/Identity_2Identitylstm_42/while/add:z:0^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_2º
lstm_42/while/Identity_3IdentityBlstm_42/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_42/while/NoOp*
T0*
_output_shapes
: 2
lstm_42/while/Identity_3­
lstm_42/while/Identity_4Identity$lstm_42/while/lstm_cell_42/mul_2:z:0^lstm_42/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/while/Identity_4­
lstm_42/while/Identity_5Identity$lstm_42/while/lstm_cell_42/add_1:z:0^lstm_42/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/while/Identity_5
lstm_42/while/NoOpNoOp2^lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1^lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp3^lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_42/while/NoOp"9
lstm_42_while_identitylstm_42/while/Identity:output:0"=
lstm_42_while_identity_1!lstm_42/while/Identity_1:output:0"=
lstm_42_while_identity_2!lstm_42/while/Identity_2:output:0"=
lstm_42_while_identity_3!lstm_42/while/Identity_3:output:0"=
lstm_42_while_identity_4!lstm_42/while/Identity_4:output:0"=
lstm_42_while_identity_5!lstm_42/while/Identity_5:output:0"P
%lstm_42_while_lstm_42_strided_slice_1'lstm_42_while_lstm_42_strided_slice_1_0"z
:lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource<lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0"|
;lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource=lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0"x
9lstm_42_while_lstm_cell_42_matmul_readvariableop_resource;lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0"È
alstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensorclstm_42_while_tensorarrayv2read_tensorlistgetitem_lstm_42_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp1lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp2d
0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp0lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp2h
2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp2lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_412180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_42_matmul_readvariableop_resource_0:G
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_42_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_42_matmul_readvariableop_resource:E
3while_lstm_cell_42_matmul_1_readvariableop_resource:@
2while_lstm_cell_42_biasadd_readvariableop_resource:¢)while/lstm_cell_42/BiasAdd/ReadVariableOp¢(while/lstm_cell_42/MatMul/ReadVariableOp¢*while/lstm_cell_42/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOpÖ
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMulÎ
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp¿
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMul_1·
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/addÇ
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOpÄ
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/BiasAdd
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_42/split
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_1 
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu´
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_1©
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/add_1
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_2
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu_1¸
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
»
´
(__inference_lstm_43_layer_call_fn_413879
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4111842
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
³
ó
-__inference_lstm_cell_43_layer_call_fn_414704

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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_4108912
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
Õ
Ã
while_cond_412179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_412179___redundant_placeholder04
0while_while_cond_412179___redundant_placeholder14
0while_while_cond_412179___redundant_placeholder24
0while_while_cond_412179___redundant_placeholder3
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_413845

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
Ü[

C__inference_lstm_43_layer_call_and_return_conditional_losses_412068

inputs=
+lstm_cell_43_matmul_readvariableop_resource:?
-lstm_cell_43_matmul_1_readvariableop_resource::
,lstm_cell_43_biasadd_readvariableop_resource:
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp¬
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMulº
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp¨
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMul_1
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add³
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp¬
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dimó
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul}
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_2|
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu_1 
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_411984*
condR
while_cond_411983*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\

C__inference_lstm_43_layer_call_and_return_conditional_losses_414203
inputs_0=
+lstm_cell_43_matmul_readvariableop_resource:?
-lstm_cell_43_matmul_1_readvariableop_resource::
,lstm_cell_43_biasadd_readvariableop_resource:
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp¬
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMulº
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp¨
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMul_1
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add³
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp¬
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dimó
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul}
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_2|
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu_1 
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_414119*
condR
while_cond_414118*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_410484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_410484___redundant_placeholder04
0while_while_cond_410484___redundant_placeholder14
0while_while_cond_410484___redundant_placeholder24
0while_while_cond_410484___redundant_placeholder3
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
ïS
À
__inference__traced_save_414919
file_prefix.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_42_lstm_cell_42_kernel_read_readvariableopD
@savev2_lstm_42_lstm_cell_42_recurrent_kernel_read_readvariableop8
4savev2_lstm_42_lstm_cell_42_bias_read_readvariableop:
6savev2_lstm_43_lstm_cell_43_kernel_read_readvariableopD
@savev2_lstm_43_lstm_cell_43_recurrent_kernel_read_readvariableop8
4savev2_lstm_43_lstm_cell_43_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_42_kernel_m_read_readvariableop3
/savev2_adam_dense_42_bias_m_read_readvariableop5
1savev2_adam_dense_43_kernel_m_read_readvariableop3
/savev2_adam_dense_43_bias_m_read_readvariableopA
=savev2_adam_lstm_42_lstm_cell_42_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_42_lstm_cell_42_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_42_lstm_cell_42_bias_m_read_readvariableopA
=savev2_adam_lstm_43_lstm_cell_43_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_43_lstm_cell_43_bias_m_read_readvariableop5
1savev2_adam_dense_42_kernel_v_read_readvariableop3
/savev2_adam_dense_42_bias_v_read_readvariableop5
1savev2_adam_dense_43_kernel_v_read_readvariableop3
/savev2_adam_dense_43_bias_v_read_readvariableopA
=savev2_adam_lstm_42_lstm_cell_42_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_42_lstm_cell_42_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_42_lstm_cell_42_bias_v_read_readvariableopA
=savev2_adam_lstm_43_lstm_cell_43_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_43_lstm_cell_43_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_42_lstm_cell_42_kernel_read_readvariableop@savev2_lstm_42_lstm_cell_42_recurrent_kernel_read_readvariableop4savev2_lstm_42_lstm_cell_42_bias_read_readvariableop6savev2_lstm_43_lstm_cell_43_kernel_read_readvariableop@savev2_lstm_43_lstm_cell_43_recurrent_kernel_read_readvariableop4savev2_lstm_43_lstm_cell_43_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_42_kernel_m_read_readvariableop/savev2_adam_dense_42_bias_m_read_readvariableop1savev2_adam_dense_43_kernel_m_read_readvariableop/savev2_adam_dense_43_bias_m_read_readvariableop=savev2_adam_lstm_42_lstm_cell_42_kernel_m_read_readvariableopGsavev2_adam_lstm_42_lstm_cell_42_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_42_lstm_cell_42_bias_m_read_readvariableop=savev2_adam_lstm_43_lstm_cell_43_kernel_m_read_readvariableopGsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_43_lstm_cell_43_bias_m_read_readvariableop1savev2_adam_dense_42_kernel_v_read_readvariableop/savev2_adam_dense_42_bias_v_read_readvariableop1savev2_adam_dense_43_kernel_v_read_readvariableop/savev2_adam_dense_43_bias_v_read_readvariableop=savev2_adam_lstm_42_lstm_cell_42_kernel_v_read_readvariableopGsavev2_adam_lstm_42_lstm_cell_42_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_42_lstm_cell_42_bias_v_read_readvariableop=savev2_adam_lstm_43_lstm_cell_43_kernel_v_read_readvariableopGsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_43_lstm_cell_43_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
: ::::: : : : : ::::::: : ::::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 
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

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

::$! 

_output_shapes

:: "

_output_shapes
::$# 

_output_shapes

::$$ 

_output_shapes

:: %

_output_shapes
::&

_output_shapes
: 
Æ

ã
lstm_43_while_cond_412738,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3.
*lstm_43_while_less_lstm_43_strided_slice_1D
@lstm_43_while_lstm_43_while_cond_412738___redundant_placeholder0D
@lstm_43_while_lstm_43_while_cond_412738___redundant_placeholder1D
@lstm_43_while_lstm_43_while_cond_412738___redundant_placeholder2D
@lstm_43_while_lstm_43_while_cond_412738___redundant_placeholder3
lstm_43_while_identity

lstm_43/while/LessLesslstm_43_while_placeholder*lstm_43_while_less_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2
lstm_43/while/Lessu
lstm_43/while/IdentityIdentitylstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_43/while/Identity"9
lstm_43_while_identitylstm_43/while/Identity:output:0*(
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_410554

inputs%
lstm_cell_42_410472:%
lstm_cell_42_410474:!
lstm_cell_42_410476:
identity¢$lstm_cell_42/StatefulPartitionedCall¢whileD
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
$lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_42_410472lstm_cell_42_410474lstm_cell_42_410476*
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_4104072&
$lstm_cell_42/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_42_410472lstm_cell_42_410474lstm_cell_42_410476*
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
while_body_410485*
condR
while_cond_410484*K
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
NoOpNoOp%^lstm_cell_42/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_42/StatefulPartitionedCall$lstm_cell_42/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\

C__inference_lstm_42_layer_call_and_return_conditional_losses_413528
inputs_0=
+lstm_cell_42_matmul_readvariableop_resource:?
-lstm_cell_42_matmul_1_readvariableop_resource::
,lstm_cell_42_biasadd_readvariableop_resource:
identity¢#lstm_cell_42/BiasAdd/ReadVariableOp¢"lstm_cell_42/MatMul/ReadVariableOp¢$lstm_cell_42/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp¬
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMulº
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp¨
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMul_1
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add³
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp¬
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dimó
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_42/split
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_1
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul}
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_1
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add_1
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_2|
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu_1 
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
while_body_413444*
condR
while_cond_413443*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_411683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411683___redundant_placeholder04
0while_while_cond_411683___redundant_placeholder14
0while_while_cond_411683___redundant_placeholder24
0while_while_cond_411683___redundant_placeholder3
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
ß

÷
.__inference_sequential_15_layer_call_fn_412524

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
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
I__inference_sequential_15_layer_call_and_return_conditional_losses_4123312
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
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
?
Ê
while_body_411984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_43_matmul_readvariableop_resource_0:G
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_43_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_43_matmul_readvariableop_resource:E
3while_lstm_cell_43_matmul_1_readvariableop_resource:@
2while_lstm_cell_43_biasadd_readvariableop_resource:¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOpÖ
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMulÎ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp¿
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMul_1·
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/addÇ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÄ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_1 
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu´
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_1©
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu_1¸
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_411781

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
¦

õ
D__inference_dense_43_layer_call_and_return_conditional_losses_414571

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
¿^

'sequential_15_lstm_42_while_body_409931H
Dsequential_15_lstm_42_while_sequential_15_lstm_42_while_loop_counterN
Jsequential_15_lstm_42_while_sequential_15_lstm_42_while_maximum_iterations+
'sequential_15_lstm_42_while_placeholder-
)sequential_15_lstm_42_while_placeholder_1-
)sequential_15_lstm_42_while_placeholder_2-
)sequential_15_lstm_42_while_placeholder_3G
Csequential_15_lstm_42_while_sequential_15_lstm_42_strided_slice_1_0
sequential_15_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_42_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_15_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0:]
Ksequential_15_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0:X
Jsequential_15_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0:(
$sequential_15_lstm_42_while_identity*
&sequential_15_lstm_42_while_identity_1*
&sequential_15_lstm_42_while_identity_2*
&sequential_15_lstm_42_while_identity_3*
&sequential_15_lstm_42_while_identity_4*
&sequential_15_lstm_42_while_identity_5E
Asequential_15_lstm_42_while_sequential_15_lstm_42_strided_slice_1
}sequential_15_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_42_tensorarrayunstack_tensorlistfromtensorY
Gsequential_15_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource:[
Isequential_15_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource:V
Hsequential_15_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource:¢?sequential_15/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp¢>sequential_15/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp¢@sequential_15/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpï
Msequential_15/lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_15/lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_15/lstm_42/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_15_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_42_tensorarrayunstack_tensorlistfromtensor_0'sequential_15_lstm_42_while_placeholderVsequential_15/lstm_42/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_15/lstm_42/while/TensorArrayV2Read/TensorListGetItem
>sequential_15/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOpIsequential_15_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02@
>sequential_15/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp®
/sequential_15/lstm_42/while/lstm_cell_42/MatMulMatMulFsequential_15/lstm_42/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_15/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_15/lstm_42/while/lstm_cell_42/MatMul
@sequential_15/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOpKsequential_15_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02B
@sequential_15/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp
1sequential_15/lstm_42/while/lstm_cell_42/MatMul_1MatMul)sequential_15_lstm_42_while_placeholder_2Hsequential_15/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_15/lstm_42/while/lstm_cell_42/MatMul_1
,sequential_15/lstm_42/while/lstm_cell_42/addAddV29sequential_15/lstm_42/while/lstm_cell_42/MatMul:product:0;sequential_15/lstm_42/while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_42/while/lstm_cell_42/add
?sequential_15/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOpJsequential_15_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02A
?sequential_15/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp
0sequential_15/lstm_42/while/lstm_cell_42/BiasAddBiasAdd0sequential_15/lstm_42/while/lstm_cell_42/add:z:0Gsequential_15/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_15/lstm_42/while/lstm_cell_42/BiasAdd¶
8sequential_15/lstm_42/while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_15/lstm_42/while/lstm_cell_42/split/split_dimã
.sequential_15/lstm_42/while/lstm_cell_42/splitSplitAsequential_15/lstm_42/while/lstm_cell_42/split/split_dim:output:09sequential_15/lstm_42/while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split20
.sequential_15/lstm_42/while/lstm_cell_42/splitÚ
0sequential_15/lstm_42/while/lstm_cell_42/SigmoidSigmoid7sequential_15/lstm_42/while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_15/lstm_42/while/lstm_cell_42/SigmoidÞ
2sequential_15/lstm_42/while/lstm_cell_42/Sigmoid_1Sigmoid7sequential_15/lstm_42/while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_15/lstm_42/while/lstm_cell_42/Sigmoid_1ø
,sequential_15/lstm_42/while/lstm_cell_42/mulMul6sequential_15/lstm_42/while/lstm_cell_42/Sigmoid_1:y:0)sequential_15_lstm_42_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_15/lstm_42/while/lstm_cell_42/mulÑ
-sequential_15/lstm_42/while/lstm_cell_42/ReluRelu7sequential_15/lstm_42/while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_15/lstm_42/while/lstm_cell_42/Relu
.sequential_15/lstm_42/while/lstm_cell_42/mul_1Mul4sequential_15/lstm_42/while/lstm_cell_42/Sigmoid:y:0;sequential_15/lstm_42/while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_42/while/lstm_cell_42/mul_1
.sequential_15/lstm_42/while/lstm_cell_42/add_1AddV20sequential_15/lstm_42/while/lstm_cell_42/mul:z:02sequential_15/lstm_42/while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_42/while/lstm_cell_42/add_1Þ
2sequential_15/lstm_42/while/lstm_cell_42/Sigmoid_2Sigmoid7sequential_15/lstm_42/while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_15/lstm_42/while/lstm_cell_42/Sigmoid_2Ð
/sequential_15/lstm_42/while/lstm_cell_42/Relu_1Relu2sequential_15/lstm_42/while/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_15/lstm_42/while/lstm_cell_42/Relu_1
.sequential_15/lstm_42/while/lstm_cell_42/mul_2Mul6sequential_15/lstm_42/while/lstm_cell_42/Sigmoid_2:y:0=sequential_15/lstm_42/while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_15/lstm_42/while/lstm_cell_42/mul_2Î
@sequential_15/lstm_42/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_15_lstm_42_while_placeholder_1'sequential_15_lstm_42_while_placeholder2sequential_15/lstm_42/while/lstm_cell_42/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_15/lstm_42/while/TensorArrayV2Write/TensorListSetItem
!sequential_15/lstm_42/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_15/lstm_42/while/add/yÁ
sequential_15/lstm_42/while/addAddV2'sequential_15_lstm_42_while_placeholder*sequential_15/lstm_42/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_42/while/add
#sequential_15/lstm_42/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_15/lstm_42/while/add_1/yä
!sequential_15/lstm_42/while/add_1AddV2Dsequential_15_lstm_42_while_sequential_15_lstm_42_while_loop_counter,sequential_15/lstm_42/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_42/while/add_1Ã
$sequential_15/lstm_42/while/IdentityIdentity%sequential_15/lstm_42/while/add_1:z:0!^sequential_15/lstm_42/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_15/lstm_42/while/Identityì
&sequential_15/lstm_42/while/Identity_1IdentityJsequential_15_lstm_42_while_sequential_15_lstm_42_while_maximum_iterations!^sequential_15/lstm_42/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_42/while/Identity_1Å
&sequential_15/lstm_42/while/Identity_2Identity#sequential_15/lstm_42/while/add:z:0!^sequential_15/lstm_42/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_42/while/Identity_2ò
&sequential_15/lstm_42/while/Identity_3IdentityPsequential_15/lstm_42/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_15/lstm_42/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_42/while/Identity_3å
&sequential_15/lstm_42/while/Identity_4Identity2sequential_15/lstm_42/while/lstm_cell_42/mul_2:z:0!^sequential_15/lstm_42/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_42/while/Identity_4å
&sequential_15/lstm_42/while/Identity_5Identity2sequential_15/lstm_42/while/lstm_cell_42/add_1:z:0!^sequential_15/lstm_42/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_15/lstm_42/while/Identity_5Ì
 sequential_15/lstm_42/while/NoOpNoOp@^sequential_15/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?^sequential_15/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOpA^sequential_15/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_15/lstm_42/while/NoOp"U
$sequential_15_lstm_42_while_identity-sequential_15/lstm_42/while/Identity:output:0"Y
&sequential_15_lstm_42_while_identity_1/sequential_15/lstm_42/while/Identity_1:output:0"Y
&sequential_15_lstm_42_while_identity_2/sequential_15/lstm_42/while/Identity_2:output:0"Y
&sequential_15_lstm_42_while_identity_3/sequential_15/lstm_42/while/Identity_3:output:0"Y
&sequential_15_lstm_42_while_identity_4/sequential_15/lstm_42/while/Identity_4:output:0"Y
&sequential_15_lstm_42_while_identity_5/sequential_15/lstm_42/while/Identity_5:output:0"
Hsequential_15_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resourceJsequential_15_lstm_42_while_lstm_cell_42_biasadd_readvariableop_resource_0"
Isequential_15_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resourceKsequential_15_lstm_42_while_lstm_cell_42_matmul_1_readvariableop_resource_0"
Gsequential_15_lstm_42_while_lstm_cell_42_matmul_readvariableop_resourceIsequential_15_lstm_42_while_lstm_cell_42_matmul_readvariableop_resource_0"
Asequential_15_lstm_42_while_sequential_15_lstm_42_strided_slice_1Csequential_15_lstm_42_while_sequential_15_lstm_42_strided_slice_1_0"
}sequential_15_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_42_tensorarrayunstack_tensorlistfromtensorsequential_15_lstm_42_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_42_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_15/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp?sequential_15/lstm_42/while/lstm_cell_42/BiasAdd/ReadVariableOp2
>sequential_15/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp>sequential_15/lstm_42/while/lstm_cell_42/MatMul/ReadVariableOp2
@sequential_15/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp@sequential_15/lstm_42/while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_413967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_413967___redundant_placeholder04
0while_while_cond_413967___redundant_placeholder14
0while_while_cond_413967___redundant_placeholder24
0while_while_cond_413967___redundant_placeholder3
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
È
G
+__inference_reshape_21_layer_call_fn_414576

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
F__inference_reshape_21_layer_call_and_return_conditional_losses_4118292
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
Ü[

C__inference_lstm_43_layer_call_and_return_conditional_losses_414354

inputs=
+lstm_cell_43_matmul_readvariableop_resource:?
-lstm_cell_43_matmul_1_readvariableop_resource::
,lstm_cell_43_biasadd_readvariableop_resource:
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp¬
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMulº
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp¨
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMul_1
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add³
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp¬
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dimó
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul}
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_2|
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu_1 
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_414270*
condR
while_cond_414269*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_411037

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
³
ó
-__inference_lstm_cell_42_layer_call_fn_414606

inputs
states_0
states_1
unknown:
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_4102612
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
F

C__inference_lstm_43_layer_call_and_return_conditional_losses_411184

inputs%
lstm_cell_43_411102:%
lstm_cell_43_411104:!
lstm_cell_43_411106:
identity¢$lstm_cell_43/StatefulPartitionedCall¢whileD
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
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_411102lstm_cell_43_411104lstm_cell_43_411106*
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_4110372&
$lstm_cell_43/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_411102lstm_cell_43_411104lstm_cell_43_411106*
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
while_body_411115*
condR
while_cond_411114*K
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
NoOpNoOp%^lstm_cell_43/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_413443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_413443___redundant_placeholder04
0while_while_cond_413443___redundant_placeholder14
0while_while_cond_413443___redundant_placeholder24
0while_while_cond_413443___redundant_placeholder3
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
while_cond_414269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414269___redundant_placeholder04
0while_while_cond_414269___redundant_placeholder14
0while_while_cond_414269___redundant_placeholder24
0while_while_cond_414269___redundant_placeholder3
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
while_cond_411114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_411114___redundant_placeholder04
0while_while_cond_411114___redundant_placeholder14
0while_while_cond_411114___redundant_placeholder24
0while_while_cond_411114___redundant_placeholder3
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
Ô
°	
I__inference_sequential_15_layer_call_and_return_conditional_losses_413182

inputsE
3lstm_42_lstm_cell_42_matmul_readvariableop_resource:G
5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource:B
4lstm_42_lstm_cell_42_biasadd_readvariableop_resource:E
3lstm_43_lstm_cell_43_matmul_readvariableop_resource:G
5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:B
4lstm_43_lstm_cell_43_biasadd_readvariableop_resource:9
'dense_42_matmul_readvariableop_resource:6
(dense_42_biasadd_readvariableop_resource:9
'dense_43_matmul_readvariableop_resource:6
(dense_43_biasadd_readvariableop_resource:
identity¢dense_42/BiasAdd/ReadVariableOp¢dense_42/MatMul/ReadVariableOp¢dense_43/BiasAdd/ReadVariableOp¢dense_43/MatMul/ReadVariableOp¢+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp¢*lstm_42/lstm_cell_42/MatMul/ReadVariableOp¢,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp¢lstm_42/while¢+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp¢*lstm_43/lstm_cell_43/MatMul/ReadVariableOp¢,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp¢lstm_43/whileT
lstm_42/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_42/Shape
lstm_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice/stack
lstm_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_1
lstm_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_2
lstm_42/strided_sliceStridedSlicelstm_42/Shape:output:0$lstm_42/strided_slice/stack:output:0&lstm_42/strided_slice/stack_1:output:0&lstm_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slicel
lstm_42/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros/mul/y
lstm_42/zeros/mulMullstm_42/strided_slice:output:0lstm_42/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/mulo
lstm_42/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_42/zeros/Less/y
lstm_42/zeros/LessLesslstm_42/zeros/mul:z:0lstm_42/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/Lessr
lstm_42/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros/packed/1£
lstm_42/zeros/packedPacklstm_42/strided_slice:output:0lstm_42/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros/packedo
lstm_42/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros/Const
lstm_42/zerosFilllstm_42/zeros/packed:output:0lstm_42/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/zerosp
lstm_42/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros_1/mul/y
lstm_42/zeros_1/mulMullstm_42/strided_slice:output:0lstm_42/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/muls
lstm_42/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_42/zeros_1/Less/y
lstm_42/zeros_1/LessLesslstm_42/zeros_1/mul:z:0lstm_42/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/Lessv
lstm_42/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros_1/packed/1©
lstm_42/zeros_1/packedPacklstm_42/strided_slice:output:0!lstm_42/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros_1/packeds
lstm_42/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros_1/Const
lstm_42/zeros_1Filllstm_42/zeros_1/packed:output:0lstm_42/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/zeros_1
lstm_42/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose/perm
lstm_42/transpose	Transposeinputslstm_42/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/transposeg
lstm_42/Shape_1Shapelstm_42/transpose:y:0*
T0*
_output_shapes
:2
lstm_42/Shape_1
lstm_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_1/stack
lstm_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_1
lstm_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_2
lstm_42/strided_slice_1StridedSlicelstm_42/Shape_1:output:0&lstm_42/strided_slice_1/stack:output:0(lstm_42/strided_slice_1/stack_1:output:0(lstm_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slice_1
#lstm_42/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_42/TensorArrayV2/element_shapeÒ
lstm_42/TensorArrayV2TensorListReserve,lstm_42/TensorArrayV2/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2Ï
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_42/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_42/transpose:y:0Flstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_42/TensorArrayUnstack/TensorListFromTensor
lstm_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_2/stack
lstm_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_1
lstm_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_2¬
lstm_42/strided_slice_2StridedSlicelstm_42/transpose:y:0&lstm_42/strided_slice_2/stack:output:0(lstm_42/strided_slice_2/stack_1:output:0(lstm_42/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_42/strided_slice_2Ì
*lstm_42/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3lstm_42_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_42/lstm_cell_42/MatMul/ReadVariableOpÌ
lstm_42/lstm_cell_42/MatMulMatMul lstm_42/strided_slice_2:output:02lstm_42/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/MatMulÒ
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpÈ
lstm_42/lstm_cell_42/MatMul_1MatMullstm_42/zeros:output:04lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/MatMul_1¿
lstm_42/lstm_cell_42/addAddV2%lstm_42/lstm_cell_42/MatMul:product:0'lstm_42/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/addË
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpÌ
lstm_42/lstm_cell_42/BiasAddBiasAddlstm_42/lstm_cell_42/add:z:03lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/BiasAdd
$lstm_42/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_42/lstm_cell_42/split/split_dim
lstm_42/lstm_cell_42/splitSplit-lstm_42/lstm_cell_42/split/split_dim:output:0%lstm_42/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_42/lstm_cell_42/split
lstm_42/lstm_cell_42/SigmoidSigmoid#lstm_42/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/Sigmoid¢
lstm_42/lstm_cell_42/Sigmoid_1Sigmoid#lstm_42/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/lstm_cell_42/Sigmoid_1«
lstm_42/lstm_cell_42/mulMul"lstm_42/lstm_cell_42/Sigmoid_1:y:0lstm_42/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/mul
lstm_42/lstm_cell_42/ReluRelu#lstm_42/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/Relu¼
lstm_42/lstm_cell_42/mul_1Mul lstm_42/lstm_cell_42/Sigmoid:y:0'lstm_42/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/mul_1±
lstm_42/lstm_cell_42/add_1AddV2lstm_42/lstm_cell_42/mul:z:0lstm_42/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/add_1¢
lstm_42/lstm_cell_42/Sigmoid_2Sigmoid#lstm_42/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/lstm_cell_42/Sigmoid_2
lstm_42/lstm_cell_42/Relu_1Relulstm_42/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/Relu_1À
lstm_42/lstm_cell_42/mul_2Mul"lstm_42/lstm_cell_42/Sigmoid_2:y:0)lstm_42/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/mul_2
%lstm_42/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_42/TensorArrayV2_1/element_shapeØ
lstm_42/TensorArrayV2_1TensorListReserve.lstm_42/TensorArrayV2_1/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2_1^
lstm_42/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/time
 lstm_42/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/maximum_iterationsz
lstm_42/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/while/loop_counter
lstm_42/whileWhile#lstm_42/while/loop_counter:output:0)lstm_42/while/maximum_iterations:output:0lstm_42/time:output:0 lstm_42/TensorArrayV2_1:handle:0lstm_42/zeros:output:0lstm_42/zeros_1:output:0 lstm_42/strided_slice_1:output:0?lstm_42/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_42_lstm_cell_42_matmul_readvariableop_resource5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
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
lstm_42_while_body_412913*%
condR
lstm_42_while_cond_412912*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_42/whileÅ
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_42/TensorArrayV2Stack/TensorListStackTensorListStacklstm_42/while:output:3Alstm_42/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_42/TensorArrayV2Stack/TensorListStack
lstm_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_42/strided_slice_3/stack
lstm_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_42/strided_slice_3/stack_1
lstm_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_3/stack_2Ê
lstm_42/strided_slice_3StridedSlice3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_42/strided_slice_3/stack:output:0(lstm_42/strided_slice_3/stack_1:output:0(lstm_42/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_42/strided_slice_3
lstm_42/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose_1/permÅ
lstm_42/transpose_1	Transpose3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_42/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/transpose_1v
lstm_42/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/runtimey
dropout_24/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_24/dropout/Const©
dropout_24/dropout/MulMullstm_42/transpose_1:y:0!dropout_24/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Mul{
dropout_24/dropout/ShapeShapelstm_42/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_24/dropout/ShapeÙ
/dropout_24/dropout/random_uniform/RandomUniformRandomUniform!dropout_24/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_24/dropout/random_uniform/RandomUniform
!dropout_24/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_24/dropout/GreaterEqual/yî
dropout_24/dropout/GreaterEqualGreaterEqual8dropout_24/dropout/random_uniform/RandomUniform:output:0*dropout_24/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_24/dropout/GreaterEqual¤
dropout_24/dropout/CastCast#dropout_24/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Castª
dropout_24/dropout/Mul_1Muldropout_24/dropout/Mul:z:0dropout_24/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Mul_1j
lstm_43/ShapeShapedropout_24/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_43/Shape
lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice/stack
lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_1
lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_2
lstm_43/strided_sliceStridedSlicelstm_43/Shape:output:0$lstm_43/strided_slice/stack:output:0&lstm_43/strided_slice/stack_1:output:0&lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slicel
lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros/mul/y
lstm_43/zeros/mulMullstm_43/strided_slice:output:0lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/mulo
lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros/Less/y
lstm_43/zeros/LessLesslstm_43/zeros/mul:z:0lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/Lessr
lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros/packed/1£
lstm_43/zeros/packedPacklstm_43/strided_slice:output:0lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros/packedo
lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros/Const
lstm_43/zerosFilllstm_43/zeros/packed:output:0lstm_43/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/zerosp
lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros_1/mul/y
lstm_43/zeros_1/mulMullstm_43/strided_slice:output:0lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/muls
lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros_1/Less/y
lstm_43/zeros_1/LessLesslstm_43/zeros_1/mul:z:0lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/Lessv
lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros_1/packed/1©
lstm_43/zeros_1/packedPacklstm_43/strided_slice:output:0!lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros_1/packeds
lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros_1/Const
lstm_43/zeros_1Filllstm_43/zeros_1/packed:output:0lstm_43/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/zeros_1
lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose/perm¨
lstm_43/transpose	Transposedropout_24/dropout/Mul_1:z:0lstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/transposeg
lstm_43/Shape_1Shapelstm_43/transpose:y:0*
T0*
_output_shapes
:2
lstm_43/Shape_1
lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_1/stack
lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_1
lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_2
lstm_43/strided_slice_1StridedSlicelstm_43/Shape_1:output:0&lstm_43/strided_slice_1/stack:output:0(lstm_43/strided_slice_1/stack_1:output:0(lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slice_1
#lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_43/TensorArrayV2/element_shapeÒ
lstm_43/TensorArrayV2TensorListReserve,lstm_43/TensorArrayV2/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2Ï
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_43/transpose:y:0Flstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_43/TensorArrayUnstack/TensorListFromTensor
lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_2/stack
lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_1
lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_2¬
lstm_43/strided_slice_2StridedSlicelstm_43/transpose:y:0&lstm_43/strided_slice_2/stack:output:0(lstm_43/strided_slice_2/stack_1:output:0(lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_43/strided_slice_2Ì
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpÌ
lstm_43/lstm_cell_43/MatMulMatMul lstm_43/strided_slice_2:output:02lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/MatMulÒ
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpÈ
lstm_43/lstm_cell_43/MatMul_1MatMullstm_43/zeros:output:04lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/MatMul_1¿
lstm_43/lstm_cell_43/addAddV2%lstm_43/lstm_cell_43/MatMul:product:0'lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/addË
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpÌ
lstm_43/lstm_cell_43/BiasAddBiasAddlstm_43/lstm_cell_43/add:z:03lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/BiasAdd
$lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_43/lstm_cell_43/split/split_dim
lstm_43/lstm_cell_43/splitSplit-lstm_43/lstm_cell_43/split/split_dim:output:0%lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_43/lstm_cell_43/split
lstm_43/lstm_cell_43/SigmoidSigmoid#lstm_43/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/Sigmoid¢
lstm_43/lstm_cell_43/Sigmoid_1Sigmoid#lstm_43/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/lstm_cell_43/Sigmoid_1«
lstm_43/lstm_cell_43/mulMul"lstm_43/lstm_cell_43/Sigmoid_1:y:0lstm_43/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/mul
lstm_43/lstm_cell_43/ReluRelu#lstm_43/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/Relu¼
lstm_43/lstm_cell_43/mul_1Mul lstm_43/lstm_cell_43/Sigmoid:y:0'lstm_43/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/mul_1±
lstm_43/lstm_cell_43/add_1AddV2lstm_43/lstm_cell_43/mul:z:0lstm_43/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/add_1¢
lstm_43/lstm_cell_43/Sigmoid_2Sigmoid#lstm_43/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/lstm_cell_43/Sigmoid_2
lstm_43/lstm_cell_43/Relu_1Relulstm_43/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/Relu_1À
lstm_43/lstm_cell_43/mul_2Mul"lstm_43/lstm_cell_43/Sigmoid_2:y:0)lstm_43/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/mul_2
%lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_43/TensorArrayV2_1/element_shapeØ
lstm_43/TensorArrayV2_1TensorListReserve.lstm_43/TensorArrayV2_1/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2_1^
lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/time
 lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/maximum_iterationsz
lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/while/loop_counter
lstm_43/whileWhile#lstm_43/while/loop_counter:output:0)lstm_43/while/maximum_iterations:output:0lstm_43/time:output:0 lstm_43/TensorArrayV2_1:handle:0lstm_43/zeros:output:0lstm_43/zeros_1:output:0 lstm_43/strided_slice_1:output:0?lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_43_lstm_cell_43_matmul_readvariableop_resource5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
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
lstm_43_while_body_413068*%
condR
lstm_43_while_cond_413067*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_43/whileÅ
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_43/TensorArrayV2Stack/TensorListStackTensorListStacklstm_43/while:output:3Alstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_43/TensorArrayV2Stack/TensorListStack
lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_43/strided_slice_3/stack
lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_43/strided_slice_3/stack_1
lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_3/stack_2Ê
lstm_43/strided_slice_3StridedSlice3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_43/strided_slice_3/stack:output:0(lstm_43/strided_slice_3/stack_1:output:0(lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_43/strided_slice_3
lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose_1/permÅ
lstm_43/transpose_1	Transpose3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_43/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/transpose_1v
lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/runtimey
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_25/dropout/Const®
dropout_25/dropout/MulMul lstm_43/strided_slice_3:output:0!dropout_25/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_25/dropout/Mul
dropout_25/dropout/ShapeShape lstm_43/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_25/dropout/ShapeÕ
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_25/dropout/random_uniform/RandomUniform
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_25/dropout/GreaterEqual/yê
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_25/dropout/GreaterEqual 
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_25/dropout/Cast¦
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_25/dropout/Mul_1¨
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_42/MatMul/ReadVariableOp¤
dense_42/MatMulMatMuldropout_25/dropout/Mul_1:z:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/MatMul§
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_42/BiasAdd/ReadVariableOp¥
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/BiasAdds
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/Relu¨
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_43/MatMul/ReadVariableOp£
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/MatMul§
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_43/BiasAdd/ReadVariableOp¥
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/BiasAddm
reshape_21/ShapeShapedense_43/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_21/Shape
reshape_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_21/strided_slice/stack
 reshape_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_1
 reshape_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_2¤
reshape_21/strided_sliceStridedSlicereshape_21/Shape:output:0'reshape_21/strided_slice/stack:output:0)reshape_21/strided_slice/stack_1:output:0)reshape_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_21/strided_slicez
reshape_21/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/1z
reshape_21/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/2×
reshape_21/Reshape/shapePack!reshape_21/strided_slice:output:0#reshape_21/Reshape/shape/1:output:0#reshape_21/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_21/Reshape/shape§
reshape_21/ReshapeReshapedense_43/BiasAdd:output:0!reshape_21/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_21/Reshapez
IdentityIdentityreshape_21/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp,^lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+^lstm_42/lstm_cell_42/MatMul/ReadVariableOp-^lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp^lstm_42/while,^lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+^lstm_43/lstm_cell_43/MatMul/ReadVariableOp-^lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_43/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2Z
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp2X
*lstm_42/lstm_cell_42/MatMul/ReadVariableOp*lstm_42/lstm_cell_42/MatMul/ReadVariableOp2\
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp2
lstm_42/whilelstm_42/while2Z
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2X
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp*lstm_43/lstm_cell_43/MatMul/ReadVariableOp2\
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2
lstm_43/whilelstm_43/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_414687

inputs
states_0
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
while_body_413293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_42_matmul_readvariableop_resource_0:G
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_42_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_42_matmul_readvariableop_resource:E
3while_lstm_cell_42_matmul_1_readvariableop_resource:@
2while_lstm_cell_42_biasadd_readvariableop_resource:¢)while/lstm_cell_42/BiasAdd/ReadVariableOp¢(while/lstm_cell_42/MatMul/ReadVariableOp¢*while/lstm_cell_42/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOpÖ
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMulÎ
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp¿
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMul_1·
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/addÇ
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOpÄ
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/BiasAdd
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_42/split
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_1 
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu´
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_1©
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/add_1
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_2
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu_1¸
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
å

ù
.__inference_sequential_15_layer_call_fn_412379
input_19
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_15_layer_call_and_return_conditional_losses_4123312
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
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
F

C__inference_lstm_42_layer_call_and_return_conditional_losses_410344

inputs%
lstm_cell_42_410262:%
lstm_cell_42_410264:!
lstm_cell_42_410266:
identity¢$lstm_cell_42/StatefulPartitionedCall¢whileD
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
$lstm_cell_42/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_42_410262lstm_cell_42_410264lstm_cell_42_410266*
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_4102612&
$lstm_cell_42/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_42_410262lstm_cell_42_410264lstm_cell_42_410266*
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
while_body_410275*
condR
while_cond_410274*K
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
NoOpNoOp%^lstm_cell_42/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_42/StatefulPartitionedCall$lstm_cell_42/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
Ã
while_cond_414118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_414118___redundant_placeholder04
0while_while_cond_414118___redundant_placeholder14
0while_while_cond_414118___redundant_placeholder24
0while_while_cond_414118___redundant_placeholder3
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
é

H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_410891

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
ë
û
'sequential_15_lstm_42_while_cond_409930H
Dsequential_15_lstm_42_while_sequential_15_lstm_42_while_loop_counterN
Jsequential_15_lstm_42_while_sequential_15_lstm_42_while_maximum_iterations+
'sequential_15_lstm_42_while_placeholder-
)sequential_15_lstm_42_while_placeholder_1-
)sequential_15_lstm_42_while_placeholder_2-
)sequential_15_lstm_42_while_placeholder_3J
Fsequential_15_lstm_42_while_less_sequential_15_lstm_42_strided_slice_1`
\sequential_15_lstm_42_while_sequential_15_lstm_42_while_cond_409930___redundant_placeholder0`
\sequential_15_lstm_42_while_sequential_15_lstm_42_while_cond_409930___redundant_placeholder1`
\sequential_15_lstm_42_while_sequential_15_lstm_42_while_cond_409930___redundant_placeholder2`
\sequential_15_lstm_42_while_sequential_15_lstm_42_while_cond_409930___redundant_placeholder3(
$sequential_15_lstm_42_while_identity
Þ
 sequential_15/lstm_42/while/LessLess'sequential_15_lstm_42_while_placeholderFsequential_15_lstm_42_while_less_sequential_15_lstm_42_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_15/lstm_42/while/Less
$sequential_15/lstm_42/while/IdentityIdentity$sequential_15/lstm_42/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_15/lstm_42/while/Identity"U
$sequential_15_lstm_42_while_identity-sequential_15/lstm_42/while/Identity:output:0*(
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
lstm_43_while_cond_413067,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3.
*lstm_43_while_less_lstm_43_strided_slice_1D
@lstm_43_while_lstm_43_while_cond_413067___redundant_placeholder0D
@lstm_43_while_lstm_43_while_cond_413067___redundant_placeholder1D
@lstm_43_while_lstm_43_while_cond_413067___redundant_placeholder2D
@lstm_43_while_lstm_43_while_cond_413067___redundant_placeholder3
lstm_43_while_identity

lstm_43/while/LessLesslstm_43_while_placeholder*lstm_43_while_less_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2
lstm_43/while/Lessu
lstm_43/while/IdentityIdentitylstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_43/while/Identity"9
lstm_43_while_identitylstm_43/while/Identity:output:0*(
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
D__inference_dense_42_layer_call_and_return_conditional_losses_414552

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
\

C__inference_lstm_42_layer_call_and_return_conditional_losses_413377
inputs_0=
+lstm_cell_42_matmul_readvariableop_resource:?
-lstm_cell_42_matmul_1_readvariableop_resource::
,lstm_cell_42_biasadd_readvariableop_resource:
identity¢#lstm_cell_42/BiasAdd/ReadVariableOp¢"lstm_cell_42/MatMul/ReadVariableOp¢$lstm_cell_42/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_42/MatMul/ReadVariableOpReadVariableOp+lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_42/MatMul/ReadVariableOp¬
lstm_cell_42/MatMulMatMulstrided_slice_2:output:0*lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMulº
$lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_42/MatMul_1/ReadVariableOp¨
lstm_cell_42/MatMul_1MatMulzeros:output:0,lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/MatMul_1
lstm_cell_42/addAddV2lstm_cell_42/MatMul:product:0lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add³
#lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_42/BiasAdd/ReadVariableOp¬
lstm_cell_42/BiasAddBiasAddlstm_cell_42/add:z:0+lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/BiasAdd~
lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_42/split/split_dimó
lstm_cell_42/splitSplit%lstm_cell_42/split/split_dim:output:0lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_42/split
lstm_cell_42/SigmoidSigmoidlstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid
lstm_cell_42/Sigmoid_1Sigmoidlstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_1
lstm_cell_42/mulMullstm_cell_42/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul}
lstm_cell_42/ReluRelulstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu
lstm_cell_42/mul_1Mullstm_cell_42/Sigmoid:y:0lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_1
lstm_cell_42/add_1AddV2lstm_cell_42/mul:z:0lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/add_1
lstm_cell_42/Sigmoid_2Sigmoidlstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Sigmoid_2|
lstm_cell_42/Relu_1Relulstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/Relu_1 
lstm_cell_42/mul_2Mullstm_cell_42/Sigmoid_2:y:0!lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_42/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_42_matmul_readvariableop_resource-lstm_cell_42_matmul_1_readvariableop_resource,lstm_cell_42_biasadd_readvariableop_resource*
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
while_body_413293*
condR
while_cond_413292*K
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
NoOpNoOp$^lstm_cell_42/BiasAdd/ReadVariableOp#^lstm_cell_42/MatMul/ReadVariableOp%^lstm_cell_42/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_42/BiasAdd/ReadVariableOp#lstm_cell_42/BiasAdd/ReadVariableOp2H
"lstm_cell_42/MatMul/ReadVariableOp"lstm_cell_42/MatMul/ReadVariableOp2L
$lstm_cell_42/MatMul_1/ReadVariableOp$lstm_cell_42/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Õ
Ã
while_cond_410904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_410904___redundant_placeholder04
0while_while_cond_410904___redundant_placeholder14
0while_while_cond_410904___redundant_placeholder24
0while_while_cond_410904___redundant_placeholder3
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
+__inference_dropout_25_layer_call_fn_414515

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
F__inference_dropout_25_layer_call_and_return_conditional_losses_4119012
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
¦

õ
D__inference_dense_43_layer_call_and_return_conditional_losses_411810

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
Ü[

C__inference_lstm_43_layer_call_and_return_conditional_losses_414505

inputs=
+lstm_cell_43_matmul_readvariableop_resource:?
-lstm_cell_43_matmul_1_readvariableop_resource::
,lstm_cell_43_biasadd_readvariableop_resource:
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp¬
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMulº
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp¨
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/MatMul_1
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add³
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp¬
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dimó
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul}
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Sigmoid_2|
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/Relu_1 
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_414421*
condR
while_cond_414420*K
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
NoOpNoOp$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
û
'sequential_15_lstm_43_while_cond_410078H
Dsequential_15_lstm_43_while_sequential_15_lstm_43_while_loop_counterN
Jsequential_15_lstm_43_while_sequential_15_lstm_43_while_maximum_iterations+
'sequential_15_lstm_43_while_placeholder-
)sequential_15_lstm_43_while_placeholder_1-
)sequential_15_lstm_43_while_placeholder_2-
)sequential_15_lstm_43_while_placeholder_3J
Fsequential_15_lstm_43_while_less_sequential_15_lstm_43_strided_slice_1`
\sequential_15_lstm_43_while_sequential_15_lstm_43_while_cond_410078___redundant_placeholder0`
\sequential_15_lstm_43_while_sequential_15_lstm_43_while_cond_410078___redundant_placeholder1`
\sequential_15_lstm_43_while_sequential_15_lstm_43_while_cond_410078___redundant_placeholder2`
\sequential_15_lstm_43_while_sequential_15_lstm_43_while_cond_410078___redundant_placeholder3(
$sequential_15_lstm_43_while_identity
Þ
 sequential_15/lstm_43/while/LessLess'sequential_15_lstm_43_while_placeholderFsequential_15_lstm_43_while_less_sequential_15_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_15/lstm_43/while/Less
$sequential_15/lstm_43/while/IdentityIdentity$sequential_15/lstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_15/lstm_43/while/Identity"U
$sequential_15_lstm_43_while_identity-sequential_15/lstm_43/while/Identity:output:0*(
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
ß

÷
.__inference_sequential_15_layer_call_fn_412499

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
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
I__inference_sequential_15_layer_call_and_return_conditional_losses_4118322
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
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÀJ
Ê

lstm_43_while_body_412739,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3+
'lstm_43_while_lstm_43_strided_slice_1_0g
clstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:O
=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:J
<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:
lstm_43_while_identity
lstm_43_while_identity_1
lstm_43_while_identity_2
lstm_43_while_identity_3
lstm_43_while_identity_4
lstm_43_while_identity_5)
%lstm_43_while_lstm_43_strided_slice_1e
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorK
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:M
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:H
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:¢1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp¢0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp¢2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpÓ
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0lstm_43_while_placeholderHlstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_43/while/TensorArrayV2Read/TensorListGetItemà
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype022
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpö
!lstm_43/while/lstm_cell_43/MatMulMatMul8lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_43/while/lstm_cell_43/MatMulæ
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype024
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpß
#lstm_43/while/lstm_cell_43/MatMul_1MatMullstm_43_while_placeholder_2:lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_43/while/lstm_cell_43/MatMul_1×
lstm_43/while/lstm_cell_43/addAddV2+lstm_43/while/lstm_cell_43/MatMul:product:0-lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/while/lstm_cell_43/addß
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype023
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpä
"lstm_43/while/lstm_cell_43/BiasAddBiasAdd"lstm_43/while/lstm_cell_43/add:z:09lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_43/while/lstm_cell_43/BiasAdd
*lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_43/while/lstm_cell_43/split/split_dim«
 lstm_43/while/lstm_cell_43/splitSplit3lstm_43/while/lstm_cell_43/split/split_dim:output:0+lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2"
 lstm_43/while/lstm_cell_43/split°
"lstm_43/while/lstm_cell_43/SigmoidSigmoid)lstm_43/while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_43/while/lstm_cell_43/Sigmoid´
$lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid)lstm_43/while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_43/while/lstm_cell_43/Sigmoid_1À
lstm_43/while/lstm_cell_43/mulMul(lstm_43/while/lstm_cell_43/Sigmoid_1:y:0lstm_43_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/while/lstm_cell_43/mul§
lstm_43/while/lstm_cell_43/ReluRelu)lstm_43/while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_43/while/lstm_cell_43/ReluÔ
 lstm_43/while/lstm_cell_43/mul_1Mul&lstm_43/while/lstm_cell_43/Sigmoid:y:0-lstm_43/while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/lstm_cell_43/mul_1É
 lstm_43/while/lstm_cell_43/add_1AddV2"lstm_43/while/lstm_cell_43/mul:z:0$lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/lstm_cell_43/add_1´
$lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid)lstm_43/while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_43/while/lstm_cell_43/Sigmoid_2¦
!lstm_43/while/lstm_cell_43/Relu_1Relu$lstm_43/while/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_43/while/lstm_cell_43/Relu_1Ø
 lstm_43/while/lstm_cell_43/mul_2Mul(lstm_43/while/lstm_cell_43/Sigmoid_2:y:0/lstm_43/while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/lstm_cell_43/mul_2
2lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_43_while_placeholder_1lstm_43_while_placeholder$lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_43/while/TensorArrayV2Write/TensorListSetIteml
lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add/y
lstm_43/while/addAddV2lstm_43_while_placeholderlstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/addp
lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add_1/y
lstm_43/while/add_1AddV2(lstm_43_while_lstm_43_while_loop_counterlstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/add_1
lstm_43/while/IdentityIdentitylstm_43/while/add_1:z:0^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity¦
lstm_43/while/Identity_1Identity.lstm_43_while_lstm_43_while_maximum_iterations^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_1
lstm_43/while/Identity_2Identitylstm_43/while/add:z:0^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_2º
lstm_43/while/Identity_3IdentityBlstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_43/while/NoOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_3­
lstm_43/while/Identity_4Identity$lstm_43/while/lstm_cell_43/mul_2:z:0^lstm_43/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/while/Identity_4­
lstm_43/while/Identity_5Identity$lstm_43/while/lstm_cell_43/add_1:z:0^lstm_43/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/while/Identity_5
lstm_43/while/NoOpNoOp2^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_43/while/NoOp"9
lstm_43_while_identitylstm_43/while/Identity:output:0"=
lstm_43_while_identity_1!lstm_43/while/Identity_1:output:0"=
lstm_43_while_identity_2!lstm_43/while/Identity_2:output:0"=
lstm_43_while_identity_3!lstm_43/while/Identity_3:output:0"=
lstm_43_while_identity_4!lstm_43/while/Identity_4:output:0"=
lstm_43_while_identity_5!lstm_43/while/Identity_5:output:0"P
%lstm_43_while_lstm_43_strided_slice_1'lstm_43_while_lstm_43_strided_slice_1_0"z
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"|
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"x
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"È
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2d
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2h
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
£
²
(__inference_lstm_43_layer_call_fn_413890

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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4117682
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
»
´
(__inference_lstm_43_layer_call_fn_413868
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4109742
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
ò!
¼
I__inference_sequential_15_layer_call_and_return_conditional_losses_412410
input_19 
lstm_42_412382: 
lstm_42_412384:
lstm_42_412386: 
lstm_43_412390: 
lstm_43_412392:
lstm_43_412394:!
dense_42_412398:
dense_42_412400:!
dense_43_412403:
dense_43_412405:
identity¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¢lstm_42/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall§
lstm_42/StatefulPartitionedCallStatefulPartitionedCallinput_19lstm_42_412382lstm_42_412384lstm_42_412386*
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_4116032!
lstm_42/StatefulPartitionedCall
dropout_24/PartitionedCallPartitionedCall(lstm_42/StatefulPartitionedCall:output:0*
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_4116162
dropout_24/PartitionedCall¾
lstm_43/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0lstm_43_412390lstm_43_412392lstm_43_412394*
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4117682!
lstm_43/StatefulPartitionedCallü
dropout_25/PartitionedCallPartitionedCall(lstm_43/StatefulPartitionedCall:output:0*
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_4117812
dropout_25/PartitionedCall±
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_42_412398dense_42_412400*
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
D__inference_dense_42_layer_call_and_return_conditional_losses_4117942"
 dense_42/StatefulPartitionedCall·
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_412403dense_43_412405*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_4118102"
 dense_43/StatefulPartitionedCall
reshape_21/PartitionedCallPartitionedCall)dense_43/StatefulPartitionedCall:output:0*
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
F__inference_reshape_21_layer_call_and_return_conditional_losses_4118292
reshape_21/PartitionedCall
IdentityIdentity#reshape_21/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityØ
NoOpNoOp!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall ^lstm_42/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2B
lstm_42/StatefulPartitionedCalllstm_42/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
Äñ
°	
I__inference_sequential_15_layer_call_and_return_conditional_losses_412846

inputsE
3lstm_42_lstm_cell_42_matmul_readvariableop_resource:G
5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource:B
4lstm_42_lstm_cell_42_biasadd_readvariableop_resource:E
3lstm_43_lstm_cell_43_matmul_readvariableop_resource:G
5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:B
4lstm_43_lstm_cell_43_biasadd_readvariableop_resource:9
'dense_42_matmul_readvariableop_resource:6
(dense_42_biasadd_readvariableop_resource:9
'dense_43_matmul_readvariableop_resource:6
(dense_43_biasadd_readvariableop_resource:
identity¢dense_42/BiasAdd/ReadVariableOp¢dense_42/MatMul/ReadVariableOp¢dense_43/BiasAdd/ReadVariableOp¢dense_43/MatMul/ReadVariableOp¢+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp¢*lstm_42/lstm_cell_42/MatMul/ReadVariableOp¢,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp¢lstm_42/while¢+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp¢*lstm_43/lstm_cell_43/MatMul/ReadVariableOp¢,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp¢lstm_43/whileT
lstm_42/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_42/Shape
lstm_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice/stack
lstm_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_1
lstm_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_42/strided_slice/stack_2
lstm_42/strided_sliceStridedSlicelstm_42/Shape:output:0$lstm_42/strided_slice/stack:output:0&lstm_42/strided_slice/stack_1:output:0&lstm_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slicel
lstm_42/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros/mul/y
lstm_42/zeros/mulMullstm_42/strided_slice:output:0lstm_42/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/mulo
lstm_42/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_42/zeros/Less/y
lstm_42/zeros/LessLesslstm_42/zeros/mul:z:0lstm_42/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros/Lessr
lstm_42/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros/packed/1£
lstm_42/zeros/packedPacklstm_42/strided_slice:output:0lstm_42/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros/packedo
lstm_42/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros/Const
lstm_42/zerosFilllstm_42/zeros/packed:output:0lstm_42/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/zerosp
lstm_42/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros_1/mul/y
lstm_42/zeros_1/mulMullstm_42/strided_slice:output:0lstm_42/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/muls
lstm_42/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_42/zeros_1/Less/y
lstm_42/zeros_1/LessLesslstm_42/zeros_1/mul:z:0lstm_42/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_42/zeros_1/Lessv
lstm_42/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_42/zeros_1/packed/1©
lstm_42/zeros_1/packedPacklstm_42/strided_slice:output:0!lstm_42/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_42/zeros_1/packeds
lstm_42/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/zeros_1/Const
lstm_42/zeros_1Filllstm_42/zeros_1/packed:output:0lstm_42/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/zeros_1
lstm_42/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose/perm
lstm_42/transpose	Transposeinputslstm_42/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/transposeg
lstm_42/Shape_1Shapelstm_42/transpose:y:0*
T0*
_output_shapes
:2
lstm_42/Shape_1
lstm_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_1/stack
lstm_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_1
lstm_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_1/stack_2
lstm_42/strided_slice_1StridedSlicelstm_42/Shape_1:output:0&lstm_42/strided_slice_1/stack:output:0(lstm_42/strided_slice_1/stack_1:output:0(lstm_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_42/strided_slice_1
#lstm_42/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_42/TensorArrayV2/element_shapeÒ
lstm_42/TensorArrayV2TensorListReserve,lstm_42/TensorArrayV2/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2Ï
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_42/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_42/transpose:y:0Flstm_42/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_42/TensorArrayUnstack/TensorListFromTensor
lstm_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_42/strided_slice_2/stack
lstm_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_1
lstm_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_2/stack_2¬
lstm_42/strided_slice_2StridedSlicelstm_42/transpose:y:0&lstm_42/strided_slice_2/stack:output:0(lstm_42/strided_slice_2/stack_1:output:0(lstm_42/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_42/strided_slice_2Ì
*lstm_42/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3lstm_42_lstm_cell_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_42/lstm_cell_42/MatMul/ReadVariableOpÌ
lstm_42/lstm_cell_42/MatMulMatMul lstm_42/strided_slice_2:output:02lstm_42/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/MatMulÒ
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOpÈ
lstm_42/lstm_cell_42/MatMul_1MatMullstm_42/zeros:output:04lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/MatMul_1¿
lstm_42/lstm_cell_42/addAddV2%lstm_42/lstm_cell_42/MatMul:product:0'lstm_42/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/addË
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOpÌ
lstm_42/lstm_cell_42/BiasAddBiasAddlstm_42/lstm_cell_42/add:z:03lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/BiasAdd
$lstm_42/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_42/lstm_cell_42/split/split_dim
lstm_42/lstm_cell_42/splitSplit-lstm_42/lstm_cell_42/split/split_dim:output:0%lstm_42/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_42/lstm_cell_42/split
lstm_42/lstm_cell_42/SigmoidSigmoid#lstm_42/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/Sigmoid¢
lstm_42/lstm_cell_42/Sigmoid_1Sigmoid#lstm_42/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/lstm_cell_42/Sigmoid_1«
lstm_42/lstm_cell_42/mulMul"lstm_42/lstm_cell_42/Sigmoid_1:y:0lstm_42/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/mul
lstm_42/lstm_cell_42/ReluRelu#lstm_42/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/Relu¼
lstm_42/lstm_cell_42/mul_1Mul lstm_42/lstm_cell_42/Sigmoid:y:0'lstm_42/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/mul_1±
lstm_42/lstm_cell_42/add_1AddV2lstm_42/lstm_cell_42/mul:z:0lstm_42/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/add_1¢
lstm_42/lstm_cell_42/Sigmoid_2Sigmoid#lstm_42/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_42/lstm_cell_42/Sigmoid_2
lstm_42/lstm_cell_42/Relu_1Relulstm_42/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/Relu_1À
lstm_42/lstm_cell_42/mul_2Mul"lstm_42/lstm_cell_42/Sigmoid_2:y:0)lstm_42/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/lstm_cell_42/mul_2
%lstm_42/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_42/TensorArrayV2_1/element_shapeØ
lstm_42/TensorArrayV2_1TensorListReserve.lstm_42/TensorArrayV2_1/element_shape:output:0 lstm_42/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_42/TensorArrayV2_1^
lstm_42/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/time
 lstm_42/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_42/while/maximum_iterationsz
lstm_42/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_42/while/loop_counter
lstm_42/whileWhile#lstm_42/while/loop_counter:output:0)lstm_42/while/maximum_iterations:output:0lstm_42/time:output:0 lstm_42/TensorArrayV2_1:handle:0lstm_42/zeros:output:0lstm_42/zeros_1:output:0 lstm_42/strided_slice_1:output:0?lstm_42/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_42_lstm_cell_42_matmul_readvariableop_resource5lstm_42_lstm_cell_42_matmul_1_readvariableop_resource4lstm_42_lstm_cell_42_biasadd_readvariableop_resource*
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
lstm_42_while_body_412591*%
condR
lstm_42_while_cond_412590*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_42/whileÅ
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_42/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_42/TensorArrayV2Stack/TensorListStackTensorListStacklstm_42/while:output:3Alstm_42/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_42/TensorArrayV2Stack/TensorListStack
lstm_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_42/strided_slice_3/stack
lstm_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_42/strided_slice_3/stack_1
lstm_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_42/strided_slice_3/stack_2Ê
lstm_42/strided_slice_3StridedSlice3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_42/strided_slice_3/stack:output:0(lstm_42/strided_slice_3/stack_1:output:0(lstm_42/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_42/strided_slice_3
lstm_42/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_42/transpose_1/permÅ
lstm_42/transpose_1	Transpose3lstm_42/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_42/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_42/transpose_1v
lstm_42/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_42/runtime
dropout_24/IdentityIdentitylstm_42/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_24/Identityj
lstm_43/ShapeShapedropout_24/Identity:output:0*
T0*
_output_shapes
:2
lstm_43/Shape
lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice/stack
lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_1
lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_2
lstm_43/strided_sliceStridedSlicelstm_43/Shape:output:0$lstm_43/strided_slice/stack:output:0&lstm_43/strided_slice/stack_1:output:0&lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slicel
lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros/mul/y
lstm_43/zeros/mulMullstm_43/strided_slice:output:0lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/mulo
lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros/Less/y
lstm_43/zeros/LessLesslstm_43/zeros/mul:z:0lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/Lessr
lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros/packed/1£
lstm_43/zeros/packedPacklstm_43/strided_slice:output:0lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros/packedo
lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros/Const
lstm_43/zerosFilllstm_43/zeros/packed:output:0lstm_43/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/zerosp
lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros_1/mul/y
lstm_43/zeros_1/mulMullstm_43/strided_slice:output:0lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/muls
lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros_1/Less/y
lstm_43/zeros_1/LessLesslstm_43/zeros_1/mul:z:0lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/Lessv
lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/zeros_1/packed/1©
lstm_43/zeros_1/packedPacklstm_43/strided_slice:output:0!lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros_1/packeds
lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros_1/Const
lstm_43/zeros_1Filllstm_43/zeros_1/packed:output:0lstm_43/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/zeros_1
lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose/perm¨
lstm_43/transpose	Transposedropout_24/Identity:output:0lstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/transposeg
lstm_43/Shape_1Shapelstm_43/transpose:y:0*
T0*
_output_shapes
:2
lstm_43/Shape_1
lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_1/stack
lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_1
lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_2
lstm_43/strided_slice_1StridedSlicelstm_43/Shape_1:output:0&lstm_43/strided_slice_1/stack:output:0(lstm_43/strided_slice_1/stack_1:output:0(lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slice_1
#lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_43/TensorArrayV2/element_shapeÒ
lstm_43/TensorArrayV2TensorListReserve,lstm_43/TensorArrayV2/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2Ï
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_43/transpose:y:0Flstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_43/TensorArrayUnstack/TensorListFromTensor
lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_2/stack
lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_1
lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_2¬
lstm_43/strided_slice_2StridedSlicelstm_43/transpose:y:0&lstm_43/strided_slice_2/stack:output:0(lstm_43/strided_slice_2/stack_1:output:0(lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_43/strided_slice_2Ì
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpÌ
lstm_43/lstm_cell_43/MatMulMatMul lstm_43/strided_slice_2:output:02lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/MatMulÒ
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype02.
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpÈ
lstm_43/lstm_cell_43/MatMul_1MatMullstm_43/zeros:output:04lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/MatMul_1¿
lstm_43/lstm_cell_43/addAddV2%lstm_43/lstm_cell_43/MatMul:product:0'lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/addË
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpÌ
lstm_43/lstm_cell_43/BiasAddBiasAddlstm_43/lstm_cell_43/add:z:03lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/BiasAdd
$lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_43/lstm_cell_43/split/split_dim
lstm_43/lstm_cell_43/splitSplit-lstm_43/lstm_cell_43/split/split_dim:output:0%lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_43/lstm_cell_43/split
lstm_43/lstm_cell_43/SigmoidSigmoid#lstm_43/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/Sigmoid¢
lstm_43/lstm_cell_43/Sigmoid_1Sigmoid#lstm_43/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/lstm_cell_43/Sigmoid_1«
lstm_43/lstm_cell_43/mulMul"lstm_43/lstm_cell_43/Sigmoid_1:y:0lstm_43/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/mul
lstm_43/lstm_cell_43/ReluRelu#lstm_43/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/Relu¼
lstm_43/lstm_cell_43/mul_1Mul lstm_43/lstm_cell_43/Sigmoid:y:0'lstm_43/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/mul_1±
lstm_43/lstm_cell_43/add_1AddV2lstm_43/lstm_cell_43/mul:z:0lstm_43/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/add_1¢
lstm_43/lstm_cell_43/Sigmoid_2Sigmoid#lstm_43/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_43/lstm_cell_43/Sigmoid_2
lstm_43/lstm_cell_43/Relu_1Relulstm_43/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/Relu_1À
lstm_43/lstm_cell_43/mul_2Mul"lstm_43/lstm_cell_43/Sigmoid_2:y:0)lstm_43/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/lstm_cell_43/mul_2
%lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2'
%lstm_43/TensorArrayV2_1/element_shapeØ
lstm_43/TensorArrayV2_1TensorListReserve.lstm_43/TensorArrayV2_1/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2_1^
lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/time
 lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/maximum_iterationsz
lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/while/loop_counter
lstm_43/whileWhile#lstm_43/while/loop_counter:output:0)lstm_43/while/maximum_iterations:output:0lstm_43/time:output:0 lstm_43/TensorArrayV2_1:handle:0lstm_43/zeros:output:0lstm_43/zeros_1:output:0 lstm_43/strided_slice_1:output:0?lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_43_lstm_cell_43_matmul_readvariableop_resource5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
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
lstm_43_while_body_412739*%
condR
lstm_43_while_cond_412738*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_43/whileÅ
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2:
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_43/TensorArrayV2Stack/TensorListStackTensorListStacklstm_43/while:output:3Alstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02,
*lstm_43/TensorArrayV2Stack/TensorListStack
lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_43/strided_slice_3/stack
lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_43/strided_slice_3/stack_1
lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_3/stack_2Ê
lstm_43/strided_slice_3StridedSlice3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_43/strided_slice_3/stack:output:0(lstm_43/strided_slice_3/stack_1:output:0(lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_43/strided_slice_3
lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose_1/permÅ
lstm_43/transpose_1	Transpose3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_43/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/transpose_1v
lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/runtime
dropout_25/IdentityIdentity lstm_43/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_25/Identity¨
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_42/MatMul/ReadVariableOp¤
dense_42/MatMulMatMuldropout_25/Identity:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/MatMul§
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_42/BiasAdd/ReadVariableOp¥
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/BiasAdds
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_42/Relu¨
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_43/MatMul/ReadVariableOp£
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/MatMul§
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_43/BiasAdd/ReadVariableOp¥
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/BiasAddm
reshape_21/ShapeShapedense_43/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_21/Shape
reshape_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_21/strided_slice/stack
 reshape_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_1
 reshape_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_21/strided_slice/stack_2¤
reshape_21/strided_sliceStridedSlicereshape_21/Shape:output:0'reshape_21/strided_slice/stack:output:0)reshape_21/strided_slice/stack_1:output:0)reshape_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_21/strided_slicez
reshape_21/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/1z
reshape_21/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_21/Reshape/shape/2×
reshape_21/Reshape/shapePack!reshape_21/strided_slice:output:0#reshape_21/Reshape/shape/1:output:0#reshape_21/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_21/Reshape/shape§
reshape_21/ReshapeReshapedense_43/BiasAdd:output:0!reshape_21/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_21/Reshapez
IdentityIdentityreshape_21/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp,^lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+^lstm_42/lstm_cell_42/MatMul/ReadVariableOp-^lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp^lstm_42/while,^lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+^lstm_43/lstm_cell_43/MatMul/ReadVariableOp-^lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_43/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2Z
+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp+lstm_42/lstm_cell_42/BiasAdd/ReadVariableOp2X
*lstm_42/lstm_cell_42/MatMul/ReadVariableOp*lstm_42/lstm_cell_42/MatMul/ReadVariableOp2\
,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp,lstm_42/lstm_cell_42/MatMul_1/ReadVariableOp2
lstm_42/whilelstm_42/while2Z
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2X
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp*lstm_43/lstm_cell_43/MatMul/ReadVariableOp2\
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2
lstm_43/whilelstm_43/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é

H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_410407

inputs

states
states_10
matmul_readvariableop_resource:2
 matmul_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
while_body_413595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_42_matmul_readvariableop_resource_0:G
5while_lstm_cell_42_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_42_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_42_matmul_readvariableop_resource:E
3while_lstm_cell_42_matmul_1_readvariableop_resource:@
2while_lstm_cell_42_biasadd_readvariableop_resource:¢)while/lstm_cell_42/BiasAdd/ReadVariableOp¢(while/lstm_cell_42/MatMul/ReadVariableOp¢*while/lstm_cell_42/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_42/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_42_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_42/MatMul/ReadVariableOpÖ
while/lstm_cell_42/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMulÎ
*while/lstm_cell_42/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_42_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_42/MatMul_1/ReadVariableOp¿
while/lstm_cell_42/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_42/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/MatMul_1·
while/lstm_cell_42/addAddV2#while/lstm_cell_42/MatMul:product:0%while/lstm_cell_42/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/addÇ
)while/lstm_cell_42/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_42_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_42/BiasAdd/ReadVariableOpÄ
while/lstm_cell_42/BiasAddBiasAddwhile/lstm_cell_42/add:z:01while/lstm_cell_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/BiasAdd
"while/lstm_cell_42/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_42/split/split_dim
while/lstm_cell_42/splitSplit+while/lstm_cell_42/split/split_dim:output:0#while/lstm_cell_42/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_42/split
while/lstm_cell_42/SigmoidSigmoid!while/lstm_cell_42/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid
while/lstm_cell_42/Sigmoid_1Sigmoid!while/lstm_cell_42/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_1 
while/lstm_cell_42/mulMul while/lstm_cell_42/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul
while/lstm_cell_42/ReluRelu!while/lstm_cell_42/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu´
while/lstm_cell_42/mul_1Mulwhile/lstm_cell_42/Sigmoid:y:0%while/lstm_cell_42/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_1©
while/lstm_cell_42/add_1AddV2while/lstm_cell_42/mul:z:0while/lstm_cell_42/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/add_1
while/lstm_cell_42/Sigmoid_2Sigmoid!while/lstm_cell_42/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Sigmoid_2
while/lstm_cell_42/Relu_1Reluwhile/lstm_cell_42/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/Relu_1¸
while/lstm_cell_42/mul_2Mul while/lstm_cell_42/Sigmoid_2:y:0'while/lstm_cell_42/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_42/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_42/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_42/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_42/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_42/BiasAdd/ReadVariableOp)^while/lstm_cell_42/MatMul/ReadVariableOp+^while/lstm_cell_42/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_42_biasadd_readvariableop_resource4while_lstm_cell_42_biasadd_readvariableop_resource_0"l
3while_lstm_cell_42_matmul_1_readvariableop_resource5while_lstm_cell_42_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_42_matmul_readvariableop_resource3while_lstm_cell_42_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_42/BiasAdd/ReadVariableOp)while/lstm_cell_42/BiasAdd/ReadVariableOp2T
(while/lstm_cell_42/MatMul/ReadVariableOp(while/lstm_cell_42/MatMul/ReadVariableOp2X
*while/lstm_cell_42/MatMul_1/ReadVariableOp*while/lstm_cell_42/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Æ

ã
lstm_42_while_cond_412590,
(lstm_42_while_lstm_42_while_loop_counter2
.lstm_42_while_lstm_42_while_maximum_iterations
lstm_42_while_placeholder
lstm_42_while_placeholder_1
lstm_42_while_placeholder_2
lstm_42_while_placeholder_3.
*lstm_42_while_less_lstm_42_strided_slice_1D
@lstm_42_while_lstm_42_while_cond_412590___redundant_placeholder0D
@lstm_42_while_lstm_42_while_cond_412590___redundant_placeholder1D
@lstm_42_while_lstm_42_while_cond_412590___redundant_placeholder2D
@lstm_42_while_lstm_42_while_cond_412590___redundant_placeholder3
lstm_42_while_identity

lstm_42/while/LessLesslstm_42_while_placeholder*lstm_42_while_less_lstm_42_strided_slice_1*
T0*
_output_shapes
: 2
lstm_42/while/Lessu
lstm_42/while/IdentityIdentitylstm_42/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_42/while/Identity"9
lstm_42_while_identitylstm_42/while/Identity:output:0*(
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
³

ï
$__inference_signature_wrapper_412474
input_19
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinput_19unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_4101862
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
+:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_19
?
Ê
while_body_414421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_43_matmul_readvariableop_resource_0:G
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:B
4while_lstm_cell_43_biasadd_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_43_matmul_readvariableop_resource:E
3while_lstm_cell_43_matmul_1_readvariableop_resource:@
2while_lstm_cell_43_biasadd_readvariableop_resource:¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOpÖ
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMulÎ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOp¿
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/MatMul_1·
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/addÇ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÄ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_1 
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu´
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_1©
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/Relu_1¸
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Í
e
F__inference_dropout_24_layer_call_and_return_conditional_losses_412097

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
³
ó
-__inference_lstm_cell_43_layer_call_fn_414721

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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_4110372
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
£
²
(__inference_lstm_43_layer_call_fn_413901

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
C__inference_lstm_43_layer_call_and_return_conditional_losses_4120682
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
input_195
serving_default_input_19:0ÿÿÿÿÿÿÿÿÿB

reshape_214
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
!:2dense_42/kernel
:2dense_42/bias
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
!:2dense_43/kernel
:2dense_43/bias
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
-:+2lstm_42/lstm_cell_42/kernel
7:52%lstm_42/lstm_cell_42/recurrent_kernel
':%2lstm_42/lstm_cell_42/bias
-:+2lstm_43/lstm_cell_43/kernel
7:52%lstm_43/lstm_cell_43/recurrent_kernel
':%2lstm_43/lstm_cell_43/bias
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
&:$2Adam/dense_42/kernel/m
 :2Adam/dense_42/bias/m
&:$2Adam/dense_43/kernel/m
 :2Adam/dense_43/bias/m
2:02"Adam/lstm_42/lstm_cell_42/kernel/m
<::2,Adam/lstm_42/lstm_cell_42/recurrent_kernel/m
,:*2 Adam/lstm_42/lstm_cell_42/bias/m
2:02"Adam/lstm_43/lstm_cell_43/kernel/m
<::2,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m
,:*2 Adam/lstm_43/lstm_cell_43/bias/m
&:$2Adam/dense_42/kernel/v
 :2Adam/dense_42/bias/v
&:$2Adam/dense_43/kernel/v
 :2Adam/dense_43/bias/v
2:02"Adam/lstm_42/lstm_cell_42/kernel/v
<::2,Adam/lstm_42/lstm_cell_42/recurrent_kernel/v
,:*2 Adam/lstm_42/lstm_cell_42/bias/v
2:02"Adam/lstm_43/lstm_cell_43/kernel/v
<::2,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v
,:*2 Adam/lstm_43/lstm_cell_43/bias/v
2
.__inference_sequential_15_layer_call_fn_411855
.__inference_sequential_15_layer_call_fn_412499
.__inference_sequential_15_layer_call_fn_412524
.__inference_sequential_15_layer_call_fn_412379À
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
I__inference_sequential_15_layer_call_and_return_conditional_losses_412846
I__inference_sequential_15_layer_call_and_return_conditional_losses_413182
I__inference_sequential_15_layer_call_and_return_conditional_losses_412410
I__inference_sequential_15_layer_call_and_return_conditional_losses_412441À
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
!__inference__wrapped_model_410186input_19"
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
(__inference_lstm_42_layer_call_fn_413193
(__inference_lstm_42_layer_call_fn_413204
(__inference_lstm_42_layer_call_fn_413215
(__inference_lstm_42_layer_call_fn_413226Õ
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
C__inference_lstm_42_layer_call_and_return_conditional_losses_413377
C__inference_lstm_42_layer_call_and_return_conditional_losses_413528
C__inference_lstm_42_layer_call_and_return_conditional_losses_413679
C__inference_lstm_42_layer_call_and_return_conditional_losses_413830Õ
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
+__inference_dropout_24_layer_call_fn_413835
+__inference_dropout_24_layer_call_fn_413840´
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_413845
F__inference_dropout_24_layer_call_and_return_conditional_losses_413857´
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
(__inference_lstm_43_layer_call_fn_413868
(__inference_lstm_43_layer_call_fn_413879
(__inference_lstm_43_layer_call_fn_413890
(__inference_lstm_43_layer_call_fn_413901Õ
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_414052
C__inference_lstm_43_layer_call_and_return_conditional_losses_414203
C__inference_lstm_43_layer_call_and_return_conditional_losses_414354
C__inference_lstm_43_layer_call_and_return_conditional_losses_414505Õ
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
+__inference_dropout_25_layer_call_fn_414510
+__inference_dropout_25_layer_call_fn_414515´
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
F__inference_dropout_25_layer_call_and_return_conditional_losses_414520
F__inference_dropout_25_layer_call_and_return_conditional_losses_414532´
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
)__inference_dense_42_layer_call_fn_414541¢
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
D__inference_dense_42_layer_call_and_return_conditional_losses_414552¢
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
)__inference_dense_43_layer_call_fn_414561¢
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
D__inference_dense_43_layer_call_and_return_conditional_losses_414571¢
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
+__inference_reshape_21_layer_call_fn_414576¢
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
F__inference_reshape_21_layer_call_and_return_conditional_losses_414589¢
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
$__inference_signature_wrapper_412474input_19"
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
-__inference_lstm_cell_42_layer_call_fn_414606
-__inference_lstm_cell_42_layer_call_fn_414623¾
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_414655
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_414687¾
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
-__inference_lstm_cell_43_layer_call_fn_414704
-__inference_lstm_cell_43_layer_call_fn_414721¾
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_414753
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_414785¾
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
!__inference__wrapped_model_410186
789:;<"#()5¢2
+¢(
&#
input_19ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6

reshape_21(%

reshape_21ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_42_layer_call_and_return_conditional_losses_414552\"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_42_layer_call_fn_414541O"#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_43_layer_call_and_return_conditional_losses_414571\()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_43_layer_call_fn_414561O()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ®
F__inference_dropout_24_layer_call_and_return_conditional_losses_413845d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ®
F__inference_dropout_24_layer_call_and_return_conditional_losses_413857d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_24_layer_call_fn_413835W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_24_layer_call_fn_413840W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_25_layer_call_and_return_conditional_losses_414520\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¦
F__inference_dropout_25_layer_call_and_return_conditional_losses_414532\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dropout_25_layer_call_fn_414510O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ~
+__inference_dropout_25_layer_call_fn_414515O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÒ
C__inference_lstm_42_layer_call_and_return_conditional_losses_413377789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
C__inference_lstm_42_layer_call_and_return_conditional_losses_413528789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_42_layer_call_and_return_conditional_losses_413679q789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
C__inference_lstm_42_layer_call_and_return_conditional_losses_413830q789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ©
(__inference_lstm_42_layer_call_fn_413193}789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
(__inference_lstm_42_layer_call_fn_413204}789O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(__inference_lstm_42_layer_call_fn_413215d789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_42_layer_call_fn_413226d789?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_43_layer_call_and_return_conditional_losses_414052}:;<O¢L
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_414203}:;<O¢L
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_414354m:;<?¢<
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
C__inference_lstm_43_layer_call_and_return_conditional_losses_414505m:;<?¢<
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
(__inference_lstm_43_layer_call_fn_413868p:;<O¢L
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
(__inference_lstm_43_layer_call_fn_413879p:;<O¢L
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
(__inference_lstm_43_layer_call_fn_413890`:;<?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_lstm_43_layer_call_fn_413901`:;<?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_414655ý789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
H__inference_lstm_cell_42_layer_call_and_return_conditional_losses_414687ý789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
-__inference_lstm_cell_42_layer_call_fn_414606í789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
-__inference_lstm_cell_42_layer_call_fn_414623í789¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_414753ý:;<¢}
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
H__inference_lstm_cell_43_layer_call_and_return_conditional_losses_414785ý:;<¢}
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
-__inference_lstm_cell_43_layer_call_fn_414704í:;<¢}
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
-__inference_lstm_cell_43_layer_call_fn_414721í:;<¢}
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
1/1ÿÿÿÿÿÿÿÿÿ¦
F__inference_reshape_21_layer_call_and_return_conditional_losses_414589\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_reshape_21_layer_call_fn_414576O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÃ
I__inference_sequential_15_layer_call_and_return_conditional_losses_412410v
789:;<"#()=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ã
I__inference_sequential_15_layer_call_and_return_conditional_losses_412441v
789:;<"#()=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
I__inference_sequential_15_layer_call_and_return_conditional_losses_412846t
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Á
I__inference_sequential_15_layer_call_and_return_conditional_losses_413182t
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_15_layer_call_fn_411855i
789:;<"#()=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_15_layer_call_fn_412379i
789:;<"#()=¢:
3¢0
&#
input_19ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_15_layer_call_fn_412499g
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_15_layer_call_fn_412524g
789:;<"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_412474
789:;<"#()A¢>
¢ 
7ª4
2
input_19&#
input_19ÿÿÿÿÿÿÿÿÿ";ª8
6

reshape_21(%

reshape_21ÿÿÿÿÿÿÿÿÿ