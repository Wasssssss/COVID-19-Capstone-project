??'
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
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:		*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:	*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:	*
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
lstm_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$**
shared_namelstm_6/lstm_cell_6/kernel
?
-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/kernel*
_output_shapes

:$*
dtype0
?
#lstm_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*4
shared_name%#lstm_6/lstm_cell_6/recurrent_kernel
?
7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_6/lstm_cell_6/recurrent_kernel*
_output_shapes

:	$*
dtype0
?
lstm_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*(
shared_namelstm_6/lstm_cell_6/bias

+lstm_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/bias*
_output_shapes
:$*
dtype0
?
lstm_7/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$**
shared_namelstm_7/lstm_cell_7/kernel
?
-lstm_7/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_7/kernel*
_output_shapes

:	$*
dtype0
?
#lstm_7/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*4
shared_name%#lstm_7/lstm_cell_7/recurrent_kernel
?
7lstm_7/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_7/lstm_cell_7/recurrent_kernel*
_output_shapes

:	$*
dtype0
?
lstm_7/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*(
shared_namelstm_7/lstm_cell_7/bias

+lstm_7/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_7/bias*
_output_shapes
:$*
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
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:		*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:	*
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:	*
dtype0
?
 Adam/lstm_6/lstm_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/m
?
4Adam/lstm_6/lstm_cell_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/m*
_output_shapes

:$*
dtype0
?
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
?
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m*
_output_shapes

:	$*
dtype0
?
Adam/lstm_6/lstm_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*/
shared_name Adam/lstm_6/lstm_cell_6/bias/m
?
2Adam/lstm_6/lstm_cell_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/m*
_output_shapes
:$*
dtype0
?
 Adam/lstm_7/lstm_cell_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*1
shared_name" Adam/lstm_7/lstm_cell_7/kernel/m
?
4Adam/lstm_7/lstm_cell_7/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_7/lstm_cell_7/kernel/m*
_output_shapes

:	$*
dtype0
?
*Adam/lstm_7/lstm_cell_7/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*;
shared_name,*Adam/lstm_7/lstm_cell_7/recurrent_kernel/m
?
>Adam/lstm_7/lstm_cell_7/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_7/lstm_cell_7/recurrent_kernel/m*
_output_shapes

:	$*
dtype0
?
Adam/lstm_7/lstm_cell_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*/
shared_name Adam/lstm_7/lstm_cell_7/bias/m
?
2Adam/lstm_7/lstm_cell_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_7/lstm_cell_7/bias/m*
_output_shapes
:$*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:		*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:	*
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:	*
dtype0
?
 Adam/lstm_6/lstm_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/v
?
4Adam/lstm_6/lstm_cell_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/v*
_output_shapes

:$*
dtype0
?
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
?
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v*
_output_shapes

:	$*
dtype0
?
Adam/lstm_6/lstm_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*/
shared_name Adam/lstm_6/lstm_cell_6/bias/v
?
2Adam/lstm_6/lstm_cell_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/v*
_output_shapes
:$*
dtype0
?
 Adam/lstm_7/lstm_cell_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*1
shared_name" Adam/lstm_7/lstm_cell_7/kernel/v
?
4Adam/lstm_7/lstm_cell_7/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_7/lstm_cell_7/kernel/v*
_output_shapes

:	$*
dtype0
?
*Adam/lstm_7/lstm_cell_7/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	$*;
shared_name,*Adam/lstm_7/lstm_cell_7/recurrent_kernel/v
?
>Adam/lstm_7/lstm_cell_7/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_7/lstm_cell_7/recurrent_kernel/v*
_output_shapes

:	$*
dtype0
?
Adam/lstm_7/lstm_cell_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*/
shared_name Adam/lstm_7/lstm_cell_7/bias/v
?
2Adam/lstm_7/lstm_cell_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_7/lstm_cell_7/bias/v*
_output_shapes
:$*
dtype0

NoOpNoOp
?=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?<B?< B?<
?
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
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
 	variables
!	keras_api
h

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
^

(kernel
)trainable_variables
*regularization_losses
+	variables
,	keras_api
R
-trainable_variables
.regularization_losses
/	variables
0	keras_api
?
1iter

2beta_1

3beta_2
	4decay
5learning_rate"m#m?(m?6m?7m?8m?9m?:m?;m?"v?#v?(v?6v?7v?8v?9v?:v?;v?
?
60
71
82
93
:4
;5
"6
#7
(8
 
?
60
71
82
93
:4
;5
"6
#7
(8
?
	trainable_variables
<non_trainable_variables
=layer_metrics

>layers
?metrics
@layer_regularization_losses

regularization_losses
	variables
 
?
A
state_size

6kernel
7recurrent_kernel
8bias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
 

60
71
82
 

60
71
82
?
trainable_variables
Fnon_trainable_variables
Glayer_metrics

Hlayers

Istates
Jmetrics
Klayer_regularization_losses
regularization_losses
	variables
 
 
 
?
trainable_variables
Lnon_trainable_variables
Mlayer_metrics

Nlayers
Ometrics
Player_regularization_losses
regularization_losses
	variables
?
Q
state_size

9kernel
:recurrent_kernel
;bias
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
 

90
:1
;2
 

90
:1
;2
?
trainable_variables
Vnon_trainable_variables
Wlayer_metrics

Xlayers

Ystates
Zmetrics
[layer_regularization_losses
regularization_losses
	variables
 
 
 
?
trainable_variables
\non_trainable_variables
]layer_metrics

^layers
_metrics
`layer_regularization_losses
regularization_losses
 	variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
?
$trainable_variables
anon_trainable_variables
blayer_metrics

clayers
dmetrics
elayer_regularization_losses
%regularization_losses
&	variables
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE

(0
 

(0
?
)trainable_variables
fnon_trainable_variables
glayer_metrics

hlayers
imetrics
jlayer_regularization_losses
*regularization_losses
+	variables
 
 
 
?
-trainable_variables
knon_trainable_variables
llayer_metrics

mlayers
nmetrics
olayer_regularization_losses
.regularization_losses
/	variables
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
_]
VARIABLE_VALUElstm_6/lstm_cell_6/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_6/lstm_cell_6/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_6/lstm_cell_6/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_7/lstm_cell_7/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_7/lstm_cell_7/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_7/lstm_cell_7/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
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

p0
 
 

60
71
82
 

60
71
82
?
Btrainable_variables
qnon_trainable_variables
rlayer_metrics

slayers
tmetrics
ulayer_regularization_losses
Cregularization_losses
D	variables
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

90
:1
;2
 

90
:1
;2
?
Rtrainable_variables
vnon_trainable_variables
wlayer_metrics

xlayers
ymetrics
zlayer_regularization_losses
Sregularization_losses
T	variables
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
	{total
	|count
}	variables
~	keras_api
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
{0
|1

}	variables
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_7/lstm_cell_7/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_7/lstm_cell_7/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_7/lstm_cell_7/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_7/lstm_cell_7/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_7/lstm_cell_7/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_7/lstm_cell_7/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_3Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3lstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biaslstm_7/lstm_cell_7/kernel#lstm_7/lstm_cell_7/recurrent_kernellstm_7/lstm_cell_7/biasdense_6/kerneldense_6/biasdense_7/kernel*
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
$__inference_signature_wrapper_146916
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOp7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOp+lstm_6/lstm_cell_6/bias/Read/ReadVariableOp-lstm_7/lstm_cell_7/kernel/Read/ReadVariableOp7lstm_7/lstm_cell_7/recurrent_kernel/Read/ReadVariableOp+lstm_7/lstm_cell_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp4Adam/lstm_6/lstm_cell_6/kernel/m/Read/ReadVariableOp>Adam/lstm_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_6/lstm_cell_6/bias/m/Read/ReadVariableOp4Adam/lstm_7/lstm_cell_7/kernel/m/Read/ReadVariableOp>Adam/lstm_7/lstm_cell_7/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_7/lstm_cell_7/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp4Adam/lstm_6/lstm_cell_6/kernel/v/Read/ReadVariableOp>Adam/lstm_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_6/lstm_cell_6/bias/v/Read/ReadVariableOp4Adam/lstm_7/lstm_cell_7/kernel/v/Read/ReadVariableOp>Adam/lstm_7/lstm_cell_7/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_7/lstm_cell_7/bias/v/Read/ReadVariableOpConst*/
Tin(
&2$	*
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
__inference__traced_save_149337
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kernel	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biaslstm_7/lstm_cell_7/kernel#lstm_7/lstm_cell_7/recurrent_kernellstm_7/lstm_cell_7/biastotalcountAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/m Adam/lstm_6/lstm_cell_6/kernel/m*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mAdam/lstm_6/lstm_cell_6/bias/m Adam/lstm_7/lstm_cell_7/kernel/m*Adam/lstm_7/lstm_cell_7/recurrent_kernel/mAdam/lstm_7/lstm_cell_7/bias/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/v Adam/lstm_6/lstm_cell_6/kernel/v*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vAdam/lstm_6/lstm_cell_6/bias/v Adam/lstm_7/lstm_cell_7/kernel/v*Adam/lstm_7/lstm_cell_7/recurrent_kernel/vAdam/lstm_7/lstm_cell_7/bias/v*.
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
"__inference__traced_restore_149449??$
?$
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_146885
input_3
lstm_6_146859:$
lstm_6_146861:	$
lstm_6_146863:$
lstm_7_146867:	$
lstm_7_146869:	$
lstm_7_146871:$ 
dense_6_146875:		
dense_6_146877:	 
dense_7_146880:	
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?lstm_7/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinput_3lstm_6_146859lstm_6_146861lstm_6_146863*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1467202 
lstm_6/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1465532#
!dropout_2/StatefulPartitionedCall?
lstm_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0lstm_7_146867lstm_7_146869lstm_7_146871*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1465242 
lstm_7/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1463572#
!dropout_3/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_6_146875dense_6_146877*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1462592!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_146880*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_1462722!
dense_7/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_1462892
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?[
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_147916
inputs_0<
*lstm_cell_6_matmul_readvariableop_resource:$>
,lstm_cell_6_matmul_1_readvariableop_resource:	$9
+lstm_cell_6_biasadd_readvariableop_resource:$
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileF
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mulz
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_2y
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_147832*
condR
while_cond_147831*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
 :??????????????????	2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_148133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_148133___redundant_placeholder04
0while_while_cond_148133___redundant_placeholder14
0while_while_cond_148133___redundant_placeholder24
0while_while_cond_148133___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_148657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_148657___redundant_placeholder04
0while_while_cond_148657___redundant_placeholder14
0while_while_cond_148657___redundant_placeholder24
0while_while_cond_148657___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?>
?
while_body_148809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0:	$F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_7_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource:	$D
2while_lstm_cell_7_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_7_biasadd_readvariableop_resource:$??(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?>
?
while_body_146149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0:	$F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_7_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource:	$D
2while_lstm_cell_7_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_7_biasadd_readvariableop_resource:$??(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
F
*__inference_dropout_2_layer_call_fn_148284

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
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1460812
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?N
?
__inference__traced_save_149337
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_6_lstm_cell_6_kernel_read_readvariableopB
>savev2_lstm_6_lstm_cell_6_recurrent_kernel_read_readvariableop6
2savev2_lstm_6_lstm_cell_6_bias_read_readvariableop8
4savev2_lstm_7_lstm_cell_7_kernel_read_readvariableopB
>savev2_lstm_7_lstm_cell_7_recurrent_kernel_read_readvariableop6
2savev2_lstm_7_lstm_cell_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop?
;savev2_adam_lstm_6_lstm_cell_6_kernel_m_read_readvariableopI
Esavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_6_lstm_cell_6_bias_m_read_readvariableop?
;savev2_adam_lstm_7_lstm_cell_7_kernel_m_read_readvariableopI
Esavev2_adam_lstm_7_lstm_cell_7_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_7_lstm_cell_7_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop?
;savev2_adam_lstm_6_lstm_cell_6_kernel_v_read_readvariableopI
Esavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_6_lstm_cell_6_bias_v_read_readvariableop?
;savev2_adam_lstm_7_lstm_cell_7_kernel_v_read_readvariableopI
Esavev2_adam_lstm_7_lstm_cell_7_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_7_lstm_cell_7_bias_v_read_readvariableop
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
value?B?#B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_6_lstm_cell_6_kernel_read_readvariableop>savev2_lstm_6_lstm_cell_6_recurrent_kernel_read_readvariableop2savev2_lstm_6_lstm_cell_6_bias_read_readvariableop4savev2_lstm_7_lstm_cell_7_kernel_read_readvariableop>savev2_lstm_7_lstm_cell_7_recurrent_kernel_read_readvariableop2savev2_lstm_7_lstm_cell_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_m_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_m_read_readvariableop;savev2_adam_lstm_7_lstm_cell_7_kernel_m_read_readvariableopEsavev2_adam_lstm_7_lstm_cell_7_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_7_lstm_cell_7_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_v_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_v_read_readvariableop;savev2_adam_lstm_7_lstm_cell_7_kernel_v_read_readvariableopEsavev2_adam_lstm_7_lstm_cell_7_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_7_lstm_cell_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#	2
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
?: :		:	:	: : : : : :$:	$:$:	$:	$:$: : :		:	:	:$:	$:$:	$:	$:$:		:	:	:$:	$:$:	$:	$:$: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:	:

_output_shapes
: :
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
: :$	 

_output_shapes

:$:$
 

_output_shapes

:	$: 

_output_shapes
:$:$ 

_output_shapes

:	$:$ 

_output_shapes

:	$: 

_output_shapes
:$:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:	:$ 

_output_shapes

:$:$ 

_output_shapes

:	$: 

_output_shapes
:$:$ 

_output_shapes

:	$:$ 

_output_shapes

:	$: 

_output_shapes
:$:$ 

_output_shapes

:		: 

_output_shapes
:	:$ 

_output_shapes

:	:$ 

_output_shapes

:$:$ 

_output_shapes

:	$: 

_output_shapes
:$:$  

_output_shapes

:	$:$! 

_output_shapes

:	$: "

_output_shapes
:$:#

_output_shapes
: 
?

?
lstm_7_while_cond_147456*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1B
>lstm_7_while_lstm_7_while_cond_147456___redundant_placeholder0B
>lstm_7_while_lstm_7_while_cond_147456___redundant_placeholder1B
>lstm_7_while_lstm_7_while_cond_147456___redundant_placeholder2B
>lstm_7_while_lstm_7_while_cond_147456___redundant_placeholder3
lstm_7_while_identity
?
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: 2
lstm_7/while/Lessr
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_7/while/Identity"7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?F
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_144809

inputs$
lstm_cell_6_144727:$$
lstm_cell_6_144729:	$ 
lstm_cell_6_144731:$
identity??#lstm_cell_6/StatefulPartitionedCall?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_144727lstm_cell_6_144729lstm_cell_6_144731*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_1447262%
#lstm_cell_6/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_144727lstm_cell_6_144729lstm_cell_6_144731*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_144740*
condR
while_cond_144739*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
 :??????????????????	2

Identity|
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
%sequential_2_lstm_6_while_cond_144398D
@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counterJ
Fsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations)
%sequential_2_lstm_6_while_placeholder+
'sequential_2_lstm_6_while_placeholder_1+
'sequential_2_lstm_6_while_placeholder_2+
'sequential_2_lstm_6_while_placeholder_3F
Bsequential_2_lstm_6_while_less_sequential_2_lstm_6_strided_slice_1\
Xsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_144398___redundant_placeholder0\
Xsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_144398___redundant_placeholder1\
Xsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_144398___redundant_placeholder2\
Xsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_144398___redundant_placeholder3&
"sequential_2_lstm_6_while_identity
?
sequential_2/lstm_6/while/LessLess%sequential_2_lstm_6_while_placeholderBsequential_2_lstm_6_while_less_sequential_2_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_2/lstm_6/while/Less?
"sequential_2/lstm_6/while/IdentityIdentity"sequential_2/lstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_2/lstm_6/while/Identity"Q
"sequential_2_lstm_6_while_identity+sequential_2/lstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_144739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144739___redundant_placeholder04
0while_while_cond_144739___redundant_placeholder14
0while_while_cond_144739___redundant_placeholder24
0while_while_cond_144739___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?

?
-__inference_sequential_2_layer_call_fn_147591

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	$
	unknown_3:	$
	unknown_4:$
	unknown_5:		
	unknown_6:	
	unknown_7:	
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_1462922
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
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_2_layer_call_fn_147614

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	$
	unknown_3:	$
	unknown_4:$
	unknown_5:		
	unknown_6:	
	unknown_7:	
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_1467832
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
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_7_layer_call_fn_148915
inputs_0
unknown:	$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1456492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?[
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148893

inputs<
*lstm_cell_7_matmul_readvariableop_resource:	$>
,lstm_cell_7_matmul_1_readvariableop_resource:	$9
+lstm_cell_7_biasadd_readvariableop_resource:$
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mulz
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_2y
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_148809*
condR
while_cond_148808*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
while_cond_146635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_146635___redundant_placeholder04
0while_while_cond_146635___redundant_placeholder14
0while_while_cond_146635___redundant_placeholder24
0while_while_cond_146635___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?>
?
while_body_146636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0:$F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_6_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource:$D
2while_lstm_cell_6_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_6_biasadd_readvariableop_resource:$??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
? 
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_146292

inputs
lstm_6_146069:$
lstm_6_146071:	$
lstm_6_146073:$
lstm_7_146234:	$
lstm_7_146236:	$
lstm_7_146238:$ 
dense_6_146260:		
dense_6_146262:	 
dense_7_146273:	
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?lstm_7/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_146069lstm_6_146071lstm_6_146073*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1460682 
lstm_6/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1460812
dropout_2/PartitionedCall?
lstm_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0lstm_7_146234lstm_7_146236lstm_7_146238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1462332 
lstm_7/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1462462
dropout_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_6_146260dense_6_146262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1462592!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_146273*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_1462722!
dense_7/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_1462892
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_6_layer_call_fn_148240
inputs_0
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1450192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_145356

inputs

states
states_10
matmul_readvariableop_resource:	$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????	:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
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
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_148267

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????	2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????	2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_147235

inputsC
1lstm_6_lstm_cell_6_matmul_readvariableop_resource:$E
3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource:	$@
2lstm_6_lstm_cell_6_biasadd_readvariableop_resource:$C
1lstm_7_lstm_cell_7_matmul_readvariableop_resource:	$E
3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource:	$@
2lstm_7_lstm_cell_7_biasadd_readvariableop_resource:$8
&dense_6_matmul_readvariableop_resource:		5
'dense_6_biasadd_readvariableop_resource:	8
&dense_7_matmul_readvariableop_resource:	
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/MatMul/ReadVariableOp?)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_6/while?)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp?(lstm_7/lstm_cell_7/MatMul/ReadVariableOp?*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp?lstm_7/whileR
lstm_6/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_6/Shape?
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stack?
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1?
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2?
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicej
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros/mul/y?
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_6/zeros/Less/y?
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessp
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros/packed/1?
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/Const?
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros_1/mul/y?
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_6/zeros_1/Less/y?
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lesst
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros_1/packed/1?
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/Const?
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/zeros_1?
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/perm?
lstm_6/transpose	Transposeinputslstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1?
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stack?
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1?
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2?
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1?
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_6/TensorArrayV2/element_shape?
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2?
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensor?
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stack?
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1?
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2?
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_6/strided_slice_2?
(lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02*
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/lstm_cell_6/MatMulMatMullstm_6/strided_slice_2:output:00lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/MatMul?
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02,
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_6/lstm_cell_6/MatMul_1MatMullstm_6/zeros:output:02lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/MatMul_1?
lstm_6/lstm_cell_6/addAddV2#lstm_6/lstm_cell_6/MatMul:product:0%lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/add?
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02+
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_6/lstm_cell_6/BiasAddBiasAddlstm_6/lstm_cell_6/add:z:01lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/BiasAdd?
"lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_6/lstm_cell_6/split/split_dim?
lstm_6/lstm_cell_6/splitSplit+lstm_6/lstm_cell_6/split/split_dim:output:0#lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_6/lstm_cell_6/split?
lstm_6/lstm_cell_6/SigmoidSigmoid!lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Sigmoid?
lstm_6/lstm_cell_6/Sigmoid_1Sigmoid!lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Sigmoid_1?
lstm_6/lstm_cell_6/mulMul lstm_6/lstm_cell_6/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/mul?
lstm_6/lstm_cell_6/ReluRelu!lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Relu?
lstm_6/lstm_cell_6/mul_1Mullstm_6/lstm_cell_6/Sigmoid:y:0%lstm_6/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/mul_1?
lstm_6/lstm_cell_6/add_1AddV2lstm_6/lstm_cell_6/mul:z:0lstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/add_1?
lstm_6/lstm_cell_6/Sigmoid_2Sigmoid!lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Sigmoid_2?
lstm_6/lstm_cell_6/Relu_1Relulstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Relu_1?
lstm_6/lstm_cell_6/mul_2Mul lstm_6/lstm_cell_6/Sigmoid_2:y:0'lstm_6/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/mul_2?
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2&
$lstm_6/TensorArrayV2_1/element_shape?
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/time?
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counter?
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_6_lstm_cell_6_matmul_readvariableop_resource3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_6_while_body_146983*$
condR
lstm_6_while_cond_146982*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
lstm_6/while?
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStack?
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_6/strided_slice_3/stack?
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1?
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2?
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_6/strided_slice_3?
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm?
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtime?
dropout_2/IdentityIdentitylstm_6/transpose_1:y:0*
T0*+
_output_shapes
:?????????	2
dropout_2/Identityg
lstm_7/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
:2
lstm_7/Shape?
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice/stack?
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_1?
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_2?
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slicej
lstm_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros/mul/y?
lstm_7/zeros/mulMullstm_7/strided_slice:output:0lstm_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/mulm
lstm_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_7/zeros/Less/y?
lstm_7/zeros/LessLesslstm_7/zeros/mul:z:0lstm_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/Lessp
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros/packed/1?
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros/packedm
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros/Const?
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/zerosn
lstm_7/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros_1/mul/y?
lstm_7/zeros_1/mulMullstm_7/strided_slice:output:0lstm_7/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/mulq
lstm_7/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_7/zeros_1/Less/y?
lstm_7/zeros_1/LessLesslstm_7/zeros_1/mul:z:0lstm_7/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/Lesst
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros_1/packed/1?
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros_1/packedq
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros_1/Const?
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/zeros_1?
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose/perm?
lstm_7/transpose	Transposedropout_2/Identity:output:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_7/transposed
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
:2
lstm_7/Shape_1?
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_1/stack?
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_1?
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_2?
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slice_1?
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_7/TensorArrayV2/element_shape?
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2?
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2>
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_7/TensorArrayUnstack/TensorListFromTensor?
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_2/stack?
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_1?
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_2?
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_7/strided_slice_2?
(lstm_7/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp1lstm_7_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02*
(lstm_7/lstm_cell_7/MatMul/ReadVariableOp?
lstm_7/lstm_cell_7/MatMulMatMullstm_7/strided_slice_2:output:00lstm_7/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/MatMul?
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02,
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_7/lstm_cell_7/MatMul_1MatMullstm_7/zeros:output:02lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/MatMul_1?
lstm_7/lstm_cell_7/addAddV2#lstm_7/lstm_cell_7/MatMul:product:0%lstm_7/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/add?
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02+
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_7/lstm_cell_7/BiasAddBiasAddlstm_7/lstm_cell_7/add:z:01lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/BiasAdd?
"lstm_7/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_7/lstm_cell_7/split/split_dim?
lstm_7/lstm_cell_7/splitSplit+lstm_7/lstm_cell_7/split/split_dim:output:0#lstm_7/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_7/lstm_cell_7/split?
lstm_7/lstm_cell_7/SigmoidSigmoid!lstm_7/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Sigmoid?
lstm_7/lstm_cell_7/Sigmoid_1Sigmoid!lstm_7/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Sigmoid_1?
lstm_7/lstm_cell_7/mulMul lstm_7/lstm_cell_7/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/mul?
lstm_7/lstm_cell_7/ReluRelu!lstm_7/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Relu?
lstm_7/lstm_cell_7/mul_1Mullstm_7/lstm_cell_7/Sigmoid:y:0%lstm_7/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/mul_1?
lstm_7/lstm_cell_7/add_1AddV2lstm_7/lstm_cell_7/mul:z:0lstm_7/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/add_1?
lstm_7/lstm_cell_7/Sigmoid_2Sigmoid!lstm_7/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Sigmoid_2?
lstm_7/lstm_cell_7/Relu_1Relulstm_7/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Relu_1?
lstm_7/lstm_cell_7/mul_2Mul lstm_7/lstm_cell_7/Sigmoid_2:y:0'lstm_7/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/mul_2?
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2&
$lstm_7/TensorArrayV2_1/element_shape?
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2_1\
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/time?
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_7/while/maximum_iterationsx
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/while/loop_counter?
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_7_lstm_cell_7_matmul_readvariableop_resource3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_7_while_body_147131*$
condR
lstm_7_while_cond_147130*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
lstm_7/while?
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
element_dtype02+
)lstm_7/TensorArrayV2Stack/TensorListStack?
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_7/strided_slice_3/stack?
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_7/strided_slice_3/stack_1?
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_3/stack_2?
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_7/strided_slice_3?
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose_1/perm?
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_7/transpose_1t
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/runtime?
dropout_3/IdentityIdentitylstm_7/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????	2
dropout_3/Identity?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:		*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMuldropout_3/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
dense_6/Relu?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMulj
reshape_3/ShapeShapedense_7/MatMul:product:0*
T0*
_output_shapes
:2
reshape_3/Shape?
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_3/strided_slice/stack?
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_1?
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_2?
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_3/strided_slicex
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/1x
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/2?
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_3/Reshape/shape?
reshape_3/ReshapeReshapedense_7/MatMul:product:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_3/Reshapey
IdentityIdentityreshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/MatMul/ReadVariableOp*^lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_6/lstm_cell_6/MatMul/ReadVariableOp+^lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_6/while*^lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)^lstm_7/lstm_cell_7/MatMul/ReadVariableOp+^lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_7/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2V
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp(lstm_6/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2V
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp2T
(lstm_7/lstm_cell_7/MatMul/ReadVariableOp(lstm_7/lstm_cell_7/MatMul/ReadVariableOp2X
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_2_layer_call_fn_148289

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
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1465532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_148279

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
:?????????	2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????	*
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
:?????????	2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????	2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????	2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
C__inference_dense_7_layer_call_and_return_conditional_losses_148991

inputs0
matmul_readvariableop_resource:	
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
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
:?????????	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
while_cond_145369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145369___redundant_placeholder04
0while_while_cond_145369___redundant_placeholder14
0while_while_cond_145369___redundant_placeholder24
0while_while_cond_145369___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?>
?
while_body_148507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0:	$F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_7_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource:	$D
2while_lstm_cell_7_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_7_biasadd_readvariableop_resource:$??(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?#
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_146783

inputs
lstm_6_146757:$
lstm_6_146759:	$
lstm_6_146761:$
lstm_7_146765:	$
lstm_7_146767:	$
lstm_7_146769:$ 
dense_6_146773:		
dense_6_146775:	 
dense_7_146778:	
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?lstm_7/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_146757lstm_6_146759lstm_6_146761*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1467202 
lstm_6/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1465532#
!dropout_2/StatefulPartitionedCall?
lstm_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0lstm_7_146765lstm_7_146767lstm_7_146769*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1465242 
lstm_7/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1463572#
!dropout_3/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_6_146773dense_6_146775*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1462592!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_146778*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_1462722!
dense_7/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_1462892
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?Z
?
%sequential_2_lstm_7_while_body_144547D
@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counterJ
Fsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations)
%sequential_2_lstm_7_while_placeholder+
'sequential_2_lstm_7_while_placeholder_1+
'sequential_2_lstm_7_while_placeholder_2+
'sequential_2_lstm_7_while_placeholder_3C
?sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1_0
{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0X
Fsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0:	$Z
Hsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$U
Gsequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0:$&
"sequential_2_lstm_7_while_identity(
$sequential_2_lstm_7_while_identity_1(
$sequential_2_lstm_7_while_identity_2(
$sequential_2_lstm_7_while_identity_3(
$sequential_2_lstm_7_while_identity_4(
$sequential_2_lstm_7_while_identity_5A
=sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1}
ysequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensorV
Dsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource:	$X
Fsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource:	$S
Esequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource:$??<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp?;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp?=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp?
Ksequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2M
Ksequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_7_while_placeholderTsequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02?
=sequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem?
;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype02=
;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp?
,sequential_2/lstm_7/while/lstm_cell_7/MatMulMatMulDsequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2.
,sequential_2/lstm_7/while/lstm_cell_7/MatMul?
=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02?
=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp?
.sequential_2/lstm_7/while/lstm_cell_7/MatMul_1MatMul'sequential_2_lstm_7_while_placeholder_2Esequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$20
.sequential_2/lstm_7/while/lstm_cell_7/MatMul_1?
)sequential_2/lstm_7/while/lstm_cell_7/addAddV26sequential_2/lstm_7/while/lstm_cell_7/MatMul:product:08sequential_2/lstm_7/while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2+
)sequential_2/lstm_7/while/lstm_cell_7/add?
<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02>
<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp?
-sequential_2/lstm_7/while/lstm_cell_7/BiasAddBiasAdd-sequential_2/lstm_7/while/lstm_cell_7/add:z:0Dsequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2/
-sequential_2/lstm_7/while/lstm_cell_7/BiasAdd?
5sequential_2/lstm_7/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/lstm_7/while/lstm_cell_7/split/split_dim?
+sequential_2/lstm_7/while/lstm_cell_7/splitSplit>sequential_2/lstm_7/while/lstm_cell_7/split/split_dim:output:06sequential_2/lstm_7/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2-
+sequential_2/lstm_7/while/lstm_cell_7/split?
-sequential_2/lstm_7/while/lstm_cell_7/SigmoidSigmoid4sequential_2/lstm_7/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2/
-sequential_2/lstm_7/while/lstm_cell_7/Sigmoid?
/sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_1Sigmoid4sequential_2/lstm_7/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	21
/sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_1?
)sequential_2/lstm_7/while/lstm_cell_7/mulMul3sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_1:y:0'sequential_2_lstm_7_while_placeholder_3*
T0*'
_output_shapes
:?????????	2+
)sequential_2/lstm_7/while/lstm_cell_7/mul?
*sequential_2/lstm_7/while/lstm_cell_7/ReluRelu4sequential_2/lstm_7/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2,
*sequential_2/lstm_7/while/lstm_cell_7/Relu?
+sequential_2/lstm_7/while/lstm_cell_7/mul_1Mul1sequential_2/lstm_7/while/lstm_cell_7/Sigmoid:y:08sequential_2/lstm_7/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2-
+sequential_2/lstm_7/while/lstm_cell_7/mul_1?
+sequential_2/lstm_7/while/lstm_cell_7/add_1AddV2-sequential_2/lstm_7/while/lstm_cell_7/mul:z:0/sequential_2/lstm_7/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2-
+sequential_2/lstm_7/while/lstm_cell_7/add_1?
/sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_2Sigmoid4sequential_2/lstm_7/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	21
/sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_2?
,sequential_2/lstm_7/while/lstm_cell_7/Relu_1Relu/sequential_2/lstm_7/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2.
,sequential_2/lstm_7/while/lstm_cell_7/Relu_1?
+sequential_2/lstm_7/while/lstm_cell_7/mul_2Mul3sequential_2/lstm_7/while/lstm_cell_7/Sigmoid_2:y:0:sequential_2/lstm_7/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2-
+sequential_2/lstm_7/while/lstm_cell_7/mul_2?
>sequential_2/lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_7_while_placeholder_1%sequential_2_lstm_7_while_placeholder/sequential_2/lstm_7/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_2/lstm_7/while/TensorArrayV2Write/TensorListSetItem?
sequential_2/lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_2/lstm_7/while/add/y?
sequential_2/lstm_7/while/addAddV2%sequential_2_lstm_7_while_placeholder(sequential_2/lstm_7/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_7/while/add?
!sequential_2/lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_2/lstm_7/while/add_1/y?
sequential_2/lstm_7/while/add_1AddV2@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counter*sequential_2/lstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_7/while/add_1?
"sequential_2/lstm_7/while/IdentityIdentity#sequential_2/lstm_7/while/add_1:z:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_2/lstm_7/while/Identity?
$sequential_2/lstm_7/while/Identity_1IdentityFsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_7/while/Identity_1?
$sequential_2/lstm_7/while/Identity_2Identity!sequential_2/lstm_7/while/add:z:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_7/while/Identity_2?
$sequential_2/lstm_7/while/Identity_3IdentityNsequential_2/lstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_7/while/Identity_3?
$sequential_2/lstm_7/while/Identity_4Identity/sequential_2/lstm_7/while/lstm_cell_7/mul_2:z:0^sequential_2/lstm_7/while/NoOp*
T0*'
_output_shapes
:?????????	2&
$sequential_2/lstm_7/while/Identity_4?
$sequential_2/lstm_7/while/Identity_5Identity/sequential_2/lstm_7/while/lstm_cell_7/add_1:z:0^sequential_2/lstm_7/while/NoOp*
T0*'
_output_shapes
:?????????	2&
$sequential_2/lstm_7/while/Identity_5?
sequential_2/lstm_7/while/NoOpNoOp=^sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp<^sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp>^sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_2/lstm_7/while/NoOp"Q
"sequential_2_lstm_7_while_identity+sequential_2/lstm_7/while/Identity:output:0"U
$sequential_2_lstm_7_while_identity_1-sequential_2/lstm_7/while/Identity_1:output:0"U
$sequential_2_lstm_7_while_identity_2-sequential_2/lstm_7/while/Identity_2:output:0"U
$sequential_2_lstm_7_while_identity_3-sequential_2/lstm_7/while/Identity_3:output:0"U
$sequential_2_lstm_7_while_identity_4-sequential_2/lstm_7/while/Identity_4:output:0"U
$sequential_2_lstm_7_while_identity_5-sequential_2/lstm_7/while/Identity_5:output:0"?
Esequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resourceGsequential_2_lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0"?
Fsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resourceHsequential_2_lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0"?
Dsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resourceFsequential_2_lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0"?
=sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1?sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1_0"?
ysequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2|
<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp<sequential_2/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp;sequential_2/lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp2~
=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp=sequential_2/lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?[
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148591
inputs_0<
*lstm_cell_7_matmul_readvariableop_resource:	$>
,lstm_cell_7_matmul_1_readvariableop_resource:	$9
+lstm_cell_7_biasadd_readvariableop_resource:$
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileF
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mulz
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_2y
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_148507*
condR
while_cond_148506*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?
?
%sequential_2_lstm_7_while_cond_144546D
@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counterJ
Fsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations)
%sequential_2_lstm_7_while_placeholder+
'sequential_2_lstm_7_while_placeholder_1+
'sequential_2_lstm_7_while_placeholder_2+
'sequential_2_lstm_7_while_placeholder_3F
Bsequential_2_lstm_7_while_less_sequential_2_lstm_7_strided_slice_1\
Xsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_144546___redundant_placeholder0\
Xsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_144546___redundant_placeholder1\
Xsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_144546___redundant_placeholder2\
Xsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_144546___redundant_placeholder3&
"sequential_2_lstm_7_while_identity
?
sequential_2/lstm_7/while/LessLess%sequential_2_lstm_7_while_placeholderBsequential_2_lstm_7_while_less_sequential_2_lstm_7_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_2/lstm_7/while/Less?
"sequential_2/lstm_7/while/IdentityIdentity"sequential_2/lstm_7/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_2/lstm_7/while/Identity"Q
"sequential_2_lstm_7_while_identity+sequential_2/lstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_147982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_147982___redundant_placeholder04
0while_while_cond_147982___redundant_placeholder14
0while_while_cond_147982___redundant_placeholder24
0while_while_cond_147982___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_146720

inputs<
*lstm_cell_6_matmul_readvariableop_resource:$>
,lstm_cell_6_matmul_1_readvariableop_resource:	$9
+lstm_cell_6_biasadd_readvariableop_resource:$
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mulz
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_2y
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_146636*
condR
while_cond_146635*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_146246

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????	2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????	2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_146357

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
:?????????	2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????	*
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
:?????????	2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????	2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????	2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?>
?
while_body_147832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0:$F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_6_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource:$D
2while_lstm_cell_6_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_6_biasadd_readvariableop_resource:$??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_149080

inputs
states_0
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
?[
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_146233

inputs<
*lstm_cell_7_matmul_readvariableop_resource:	$>
,lstm_cell_7_matmul_1_readvariableop_resource:	$9
+lstm_cell_7_biasadd_readvariableop_resource:$
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mulz
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_2y
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_146149*
condR
while_cond_146148*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
,__inference_lstm_cell_6_layer_call_fn_149114

inputs
states_0
states_1
unknown:$
	unknown_0:	$
	unknown_1:$
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
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_1448722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????:?????????	:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
?F
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_145649

inputs$
lstm_cell_7_145567:	$$
lstm_cell_7_145569:	$ 
lstm_cell_7_145571:$
identity??#lstm_cell_7/StatefulPartitionedCall?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_145567lstm_cell_7_145569lstm_cell_7_145571*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_1455022%
#lstm_cell_7/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_145567lstm_cell_7_145569lstm_cell_7_145571*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_145580*
condR
while_cond_145579*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
:?????????	2

Identity|
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????	
 
_user_specified_nameinputs
?
F
*__inference_reshape_3_layer_call_fn_149016

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
E__inference_reshape_3_layer_call_and_return_conditional_losses_1462892
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

?
lstm_6_while_cond_147301*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_147301___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_147301___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_147301___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_147301___redundant_placeholder3
lstm_6_while_identity
?
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_145502

inputs

states
states_10
matmul_readvariableop_resource:	$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????	:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
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
while_cond_144949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144949___redundant_placeholder04
0while_while_cond_144949___redundant_placeholder14
0while_while_cond_144949___redundant_placeholder24
0while_while_cond_144949___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_149146

inputs
states_0
states_10
matmul_readvariableop_resource:	$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????	:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
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
?
?
(__inference_dense_6_layer_call_fn_148984

inputs
unknown:		
	unknown_0:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1462592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_149449
file_prefix1
assignvariableop_dense_6_kernel:		-
assignvariableop_1_dense_6_bias:	3
!assignvariableop_2_dense_7_kernel:	&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: >
,assignvariableop_8_lstm_6_lstm_cell_6_kernel:$H
6assignvariableop_9_lstm_6_lstm_cell_6_recurrent_kernel:	$9
+assignvariableop_10_lstm_6_lstm_cell_6_bias:$?
-assignvariableop_11_lstm_7_lstm_cell_7_kernel:	$I
7assignvariableop_12_lstm_7_lstm_cell_7_recurrent_kernel:	$9
+assignvariableop_13_lstm_7_lstm_cell_7_bias:$#
assignvariableop_14_total: #
assignvariableop_15_count: ;
)assignvariableop_16_adam_dense_6_kernel_m:		5
'assignvariableop_17_adam_dense_6_bias_m:	;
)assignvariableop_18_adam_dense_7_kernel_m:	F
4assignvariableop_19_adam_lstm_6_lstm_cell_6_kernel_m:$P
>assignvariableop_20_adam_lstm_6_lstm_cell_6_recurrent_kernel_m:	$@
2assignvariableop_21_adam_lstm_6_lstm_cell_6_bias_m:$F
4assignvariableop_22_adam_lstm_7_lstm_cell_7_kernel_m:	$P
>assignvariableop_23_adam_lstm_7_lstm_cell_7_recurrent_kernel_m:	$@
2assignvariableop_24_adam_lstm_7_lstm_cell_7_bias_m:$;
)assignvariableop_25_adam_dense_6_kernel_v:		5
'assignvariableop_26_adam_dense_6_bias_v:	;
)assignvariableop_27_adam_dense_7_kernel_v:	F
4assignvariableop_28_adam_lstm_6_lstm_cell_6_kernel_v:$P
>assignvariableop_29_adam_lstm_6_lstm_cell_6_recurrent_kernel_v:	$@
2assignvariableop_30_adam_lstm_6_lstm_cell_6_bias_v:$F
4assignvariableop_31_adam_lstm_7_lstm_cell_7_kernel_v:	$P
>assignvariableop_32_adam_lstm_7_lstm_cell_7_recurrent_kernel_v:	$@
2assignvariableop_33_adam_lstm_7_lstm_cell_7_bias_v:$
identity_35??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*?
value?B?#B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
%2#	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_6_lstm_cell_6_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_6_lstm_cell_6_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_6_lstm_cell_6_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_7_lstm_cell_7_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp7assignvariableop_12_lstm_7_lstm_cell_7_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp+assignvariableop_13_lstm_7_lstm_cell_7_biasIdentity_13:output:0"/device:CPU:0*
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
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_6_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_6_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_7_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_lstm_6_lstm_cell_6_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp>assignvariableop_20_adam_lstm_6_lstm_cell_6_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_lstm_6_lstm_cell_6_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_7_lstm_cell_7_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_lstm_7_lstm_cell_7_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_lstm_7_lstm_cell_7_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_6_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_6_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_7_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_lstm_6_lstm_cell_6_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_lstm_6_lstm_cell_6_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_lstm_6_lstm_cell_6_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_7_lstm_cell_7_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_7_lstm_cell_7_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_7_lstm_cell_7_bias_vIdentity_33:output:0"/device:CPU:0*
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
?
?
,__inference_lstm_cell_7_layer_call_fn_149195

inputs
states_0
states_1
unknown:	$
	unknown_0:	$
	unknown_1:$
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
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_1453562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????	:?????????	:?????????	: : : 22
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
?Z
?
%sequential_2_lstm_6_while_body_144399D
@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counterJ
Fsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations)
%sequential_2_lstm_6_while_placeholder+
'sequential_2_lstm_6_while_placeholder_1+
'sequential_2_lstm_6_while_placeholder_2+
'sequential_2_lstm_6_while_placeholder_3C
?sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1_0
{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0X
Fsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0:$Z
Hsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$U
Gsequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:$&
"sequential_2_lstm_6_while_identity(
$sequential_2_lstm_6_while_identity_1(
$sequential_2_lstm_6_while_identity_2(
$sequential_2_lstm_6_while_identity_3(
$sequential_2_lstm_6_while_identity_4(
$sequential_2_lstm_6_while_identity_5A
=sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1}
ysequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensorV
Dsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource:$X
Fsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	$S
Esequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:$??<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
Ksequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_6_while_placeholderTsequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02?
=sequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem?
;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOpFsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02=
;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?
,sequential_2/lstm_6/while/lstm_cell_6/MatMulMatMulDsequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2.
,sequential_2/lstm_6/while/lstm_cell_6/MatMul?
=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02?
=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
.sequential_2/lstm_6/while/lstm_cell_6/MatMul_1MatMul'sequential_2_lstm_6_while_placeholder_2Esequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$20
.sequential_2/lstm_6/while/lstm_cell_6/MatMul_1?
)sequential_2/lstm_6/while/lstm_cell_6/addAddV26sequential_2/lstm_6/while/lstm_cell_6/MatMul:product:08sequential_2/lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2+
)sequential_2/lstm_6/while/lstm_cell_6/add?
<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02>
<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?
-sequential_2/lstm_6/while/lstm_cell_6/BiasAddBiasAdd-sequential_2/lstm_6/while/lstm_cell_6/add:z:0Dsequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2/
-sequential_2/lstm_6/while/lstm_cell_6/BiasAdd?
5sequential_2/lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/lstm_6/while/lstm_cell_6/split/split_dim?
+sequential_2/lstm_6/while/lstm_cell_6/splitSplit>sequential_2/lstm_6/while/lstm_cell_6/split/split_dim:output:06sequential_2/lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2-
+sequential_2/lstm_6/while/lstm_cell_6/split?
-sequential_2/lstm_6/while/lstm_cell_6/SigmoidSigmoid4sequential_2/lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2/
-sequential_2/lstm_6/while/lstm_cell_6/Sigmoid?
/sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid4sequential_2/lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	21
/sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_1?
)sequential_2/lstm_6/while/lstm_cell_6/mulMul3sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_1:y:0'sequential_2_lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????	2+
)sequential_2/lstm_6/while/lstm_cell_6/mul?
*sequential_2/lstm_6/while/lstm_cell_6/ReluRelu4sequential_2/lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2,
*sequential_2/lstm_6/while/lstm_cell_6/Relu?
+sequential_2/lstm_6/while/lstm_cell_6/mul_1Mul1sequential_2/lstm_6/while/lstm_cell_6/Sigmoid:y:08sequential_2/lstm_6/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2-
+sequential_2/lstm_6/while/lstm_cell_6/mul_1?
+sequential_2/lstm_6/while/lstm_cell_6/add_1AddV2-sequential_2/lstm_6/while/lstm_cell_6/mul:z:0/sequential_2/lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2-
+sequential_2/lstm_6/while/lstm_cell_6/add_1?
/sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid4sequential_2/lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	21
/sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_2?
,sequential_2/lstm_6/while/lstm_cell_6/Relu_1Relu/sequential_2/lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2.
,sequential_2/lstm_6/while/lstm_cell_6/Relu_1?
+sequential_2/lstm_6/while/lstm_cell_6/mul_2Mul3sequential_2/lstm_6/while/lstm_cell_6/Sigmoid_2:y:0:sequential_2/lstm_6/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2-
+sequential_2/lstm_6/while/lstm_cell_6/mul_2?
>sequential_2/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_6_while_placeholder_1%sequential_2_lstm_6_while_placeholder/sequential_2/lstm_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_2/lstm_6/while/TensorArrayV2Write/TensorListSetItem?
sequential_2/lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_2/lstm_6/while/add/y?
sequential_2/lstm_6/while/addAddV2%sequential_2_lstm_6_while_placeholder(sequential_2/lstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_6/while/add?
!sequential_2/lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_2/lstm_6/while/add_1/y?
sequential_2/lstm_6/while/add_1AddV2@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counter*sequential_2/lstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_6/while/add_1?
"sequential_2/lstm_6/while/IdentityIdentity#sequential_2/lstm_6/while/add_1:z:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_2/lstm_6/while/Identity?
$sequential_2/lstm_6/while/Identity_1IdentityFsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_6/while/Identity_1?
$sequential_2/lstm_6/while/Identity_2Identity!sequential_2/lstm_6/while/add:z:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_6/while/Identity_2?
$sequential_2/lstm_6/while/Identity_3IdentityNsequential_2/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_6/while/Identity_3?
$sequential_2/lstm_6/while/Identity_4Identity/sequential_2/lstm_6/while/lstm_cell_6/mul_2:z:0^sequential_2/lstm_6/while/NoOp*
T0*'
_output_shapes
:?????????	2&
$sequential_2/lstm_6/while/Identity_4?
$sequential_2/lstm_6/while/Identity_5Identity/sequential_2/lstm_6/while/lstm_cell_6/add_1:z:0^sequential_2/lstm_6/while/NoOp*
T0*'
_output_shapes
:?????????	2&
$sequential_2/lstm_6/while/Identity_5?
sequential_2/lstm_6/while/NoOpNoOp=^sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<^sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp>^sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_2/lstm_6/while/NoOp"Q
"sequential_2_lstm_6_while_identity+sequential_2/lstm_6/while/Identity:output:0"U
$sequential_2_lstm_6_while_identity_1-sequential_2/lstm_6/while/Identity_1:output:0"U
$sequential_2_lstm_6_while_identity_2-sequential_2/lstm_6/while/Identity_2:output:0"U
$sequential_2_lstm_6_while_identity_3-sequential_2/lstm_6/while/Identity_3:output:0"U
$sequential_2_lstm_6_while_identity_4-sequential_2/lstm_6/while/Identity_4:output:0"U
$sequential_2_lstm_6_while_identity_5-sequential_2/lstm_6/while/Identity_5:output:0"?
Esequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resourceGsequential_2_lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"?
Fsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resourceHsequential_2_lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"?
Dsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resourceFsequential_2_lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"?
=sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1?sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1_0"?
ysequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2|
<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp<sequential_2/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2z
;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp;sequential_2/lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2~
=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp=sequential_2/lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_148506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_148506___redundant_placeholder04
0while_while_cond_148506___redundant_placeholder14
0while_while_cond_148506___redundant_placeholder24
0while_while_cond_148506___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?

?
lstm_6_while_cond_146982*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_146982___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_146982___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_146982___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_146982___redundant_placeholder3
lstm_6_while_identity
?
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_145579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145579___redundant_placeholder04
0while_while_cond_145579___redundant_placeholder14
0while_while_cond_145579___redundant_placeholder24
0while_while_cond_145579___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_145983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145983___redundant_placeholder04
0while_while_cond_145983___redundant_placeholder14
0while_while_cond_145983___redundant_placeholder24
0while_while_cond_145983___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_148942

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????	2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????	2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?>
?
while_body_148134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0:$F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_6_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource:$D
2while_lstm_cell_6_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_6_biasadd_readvariableop_resource:$??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?H
?

lstm_7_while_body_147131*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0:	$M
;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$H
:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0:$
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorI
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource:	$K
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource:	$F
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource:$??/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp?.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp?0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp?
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2@
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype022
0lstm_7/while/TensorArrayV2Read/TensorListGetItem?
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype020
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp?
lstm_7/while/lstm_cell_7/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
lstm_7/while/lstm_cell_7/MatMul?
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype022
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp?
!lstm_7/while/lstm_cell_7/MatMul_1MatMullstm_7_while_placeholder_28lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2#
!lstm_7/while/lstm_cell_7/MatMul_1?
lstm_7/while/lstm_cell_7/addAddV2)lstm_7/while/lstm_cell_7/MatMul:product:0+lstm_7/while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_7/while/lstm_cell_7/add?
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype021
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp?
 lstm_7/while/lstm_cell_7/BiasAddBiasAdd lstm_7/while/lstm_cell_7/add:z:07lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 lstm_7/while/lstm_cell_7/BiasAdd?
(lstm_7/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_7/while/lstm_cell_7/split/split_dim?
lstm_7/while/lstm_cell_7/splitSplit1lstm_7/while/lstm_cell_7/split/split_dim:output:0)lstm_7/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2 
lstm_7/while/lstm_cell_7/split?
 lstm_7/while/lstm_cell_7/SigmoidSigmoid'lstm_7/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2"
 lstm_7/while/lstm_cell_7/Sigmoid?
"lstm_7/while/lstm_cell_7/Sigmoid_1Sigmoid'lstm_7/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2$
"lstm_7/while/lstm_cell_7/Sigmoid_1?
lstm_7/while/lstm_cell_7/mulMul&lstm_7/while/lstm_cell_7/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:?????????	2
lstm_7/while/lstm_cell_7/mul?
lstm_7/while/lstm_cell_7/ReluRelu'lstm_7/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_7/while/lstm_cell_7/Relu?
lstm_7/while/lstm_cell_7/mul_1Mul$lstm_7/while/lstm_cell_7/Sigmoid:y:0+lstm_7/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_7/while/lstm_cell_7/mul_1?
lstm_7/while/lstm_cell_7/add_1AddV2 lstm_7/while/lstm_cell_7/mul:z:0"lstm_7/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2 
lstm_7/while/lstm_cell_7/add_1?
"lstm_7/while/lstm_cell_7/Sigmoid_2Sigmoid'lstm_7/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2$
"lstm_7/while/lstm_cell_7/Sigmoid_2?
lstm_7/while/lstm_cell_7/Relu_1Relu"lstm_7/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2!
lstm_7/while/lstm_cell_7/Relu_1?
lstm_7/while/lstm_cell_7/mul_2Mul&lstm_7/while/lstm_cell_7/Sigmoid_2:y:0-lstm_7/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_7/while/lstm_cell_7/mul_2?
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder"lstm_7/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_7/while/TensorArrayV2Write/TensorListSetItemj
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add/y?
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/addn
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add_1/y?
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/add_1?
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity?
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_1?
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_2?
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_3?
lstm_7/while/Identity_4Identity"lstm_7/while/lstm_cell_7/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_7/while/Identity_4?
lstm_7/while/Identity_5Identity"lstm_7/while/lstm_cell_7/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_7/while/Identity_5?
lstm_7/while/NoOpNoOp0^lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/^lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp1^lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_7/while/NoOp"7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"v
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0"x
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0"t
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0"?
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2b
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp2`
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp2d
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_144740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_6_144764_0:$,
while_lstm_cell_6_144766_0:	$(
while_lstm_cell_6_144768_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_6_144764:$*
while_lstm_cell_6_144766:	$&
while_lstm_cell_6_144768:$??)while/lstm_cell_6/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_144764_0while_lstm_cell_6_144766_0while_lstm_cell_6_144768_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_1447262+
)while/lstm_cell_6/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
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
while_lstm_cell_6_144764while_lstm_cell_6_144764_0"6
while_lstm_cell_6_144766while_lstm_cell_6_144766_0"6
while_lstm_cell_6_144768while_lstm_cell_6_144768_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?[
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148440
inputs_0<
*lstm_cell_7_matmul_readvariableop_resource:	$>
,lstm_cell_7_matmul_1_readvariableop_resource:	$9
+lstm_cell_7_biasadd_readvariableop_resource:$
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileF
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mulz
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_2y
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_148356*
condR
while_cond_148355*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?F
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_145019

inputs$
lstm_cell_6_144937:$$
lstm_cell_6_144939:	$ 
lstm_cell_6_144941:$
identity??#lstm_cell_6/StatefulPartitionedCall?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_144937lstm_cell_6_144939lstm_cell_6_144941*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_1448722%
#lstm_cell_6/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_144937lstm_cell_6_144939lstm_cell_6_144941*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_144950*
condR
while_cond_144949*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
 :??????????????????	2

Identity|
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_144872

inputs

states
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????	
 
_user_specified_namestates:OK
'
_output_shapes
:?????????	
 
_user_specified_namestates
?[
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_146068

inputs<
*lstm_cell_6_matmul_readvariableop_resource:$>
,lstm_cell_6_matmul_1_readvariableop_resource:	$9
+lstm_cell_6_biasadd_readvariableop_resource:$
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mulz
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_2y
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_145984*
condR
while_cond_145983*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_7_layer_call_fn_148937

inputs
unknown:	$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1465242
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?[
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_147765
inputs_0<
*lstm_cell_6_matmul_readvariableop_resource:$>
,lstm_cell_6_matmul_1_readvariableop_resource:	$9
+lstm_cell_6_biasadd_readvariableop_resource:$
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileF
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mulz
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_2y
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_147681*
condR
while_cond_147680*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
 :??????????????????	2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
a
E__inference_reshape_3_layer_call_and_return_conditional_losses_146289

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
?
?
while_cond_147831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_147831___redundant_placeholder04
0while_while_cond_147831___redundant_placeholder14
0while_while_cond_147831___redundant_placeholder24
0while_while_cond_147831___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?>
?
while_body_146440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0:	$F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_7_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource:	$D
2while_lstm_cell_7_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_7_biasadd_readvariableop_resource:$??(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_146439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_146439___redundant_placeholder04
0while_while_cond_146439___redundant_placeholder14
0while_while_cond_146439___redundant_placeholder24
0while_while_cond_146439___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
a
E__inference_reshape_3_layer_call_and_return_conditional_losses_149011

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
|
(__inference_dense_7_layer_call_fn_148998

inputs
unknown:	
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_1462722
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
:?????????	: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?>
?
while_body_147983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0:$F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_6_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource:$D
2while_lstm_cell_6_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_6_biasadd_readvariableop_resource:$??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_148975

inputs0
matmul_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:		*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?[
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_148067

inputs<
*lstm_cell_6_matmul_readvariableop_resource:$>
,lstm_cell_6_matmul_1_readvariableop_resource:	$9
+lstm_cell_6_biasadd_readvariableop_resource:$
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mulz
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_2y
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_147983*
condR
while_cond_147982*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_6_layer_call_fn_148229
inputs_0
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1448092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_148355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_148355___redundant_placeholder04
0while_while_cond_148355___redundant_placeholder14
0while_while_cond_148355___redundant_placeholder24
0while_while_cond_148355___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_146524

inputs<
*lstm_cell_7_matmul_readvariableop_resource:	$>
,lstm_cell_7_matmul_1_readvariableop_resource:	$9
+lstm_cell_7_biasadd_readvariableop_resource:$
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mulz
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_2y
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_146440*
condR
while_cond_146439*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?>
?
while_body_147681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0:$F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_6_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource:$D
2while_lstm_cell_6_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_6_biasadd_readvariableop_resource:$??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?H
?

lstm_6_while_body_146983*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0:$M
;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$H
:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:$
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorI
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource:$K
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	$F
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:$??/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItem?
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype020
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/while/lstm_cell_6/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
lstm_6/while/lstm_cell_6/MatMul?
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype022
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
!lstm_6/while/lstm_cell_6/MatMul_1MatMullstm_6_while_placeholder_28lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2#
!lstm_6/while/lstm_cell_6/MatMul_1?
lstm_6/while/lstm_cell_6/addAddV2)lstm_6/while/lstm_cell_6/MatMul:product:0+lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_6/while/lstm_cell_6/add?
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype021
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?
 lstm_6/while/lstm_cell_6/BiasAddBiasAdd lstm_6/while/lstm_cell_6/add:z:07lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 lstm_6/while/lstm_cell_6/BiasAdd?
(lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_6/while/lstm_cell_6/split/split_dim?
lstm_6/while/lstm_cell_6/splitSplit1lstm_6/while/lstm_cell_6/split/split_dim:output:0)lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2 
lstm_6/while/lstm_cell_6/split?
 lstm_6/while/lstm_cell_6/SigmoidSigmoid'lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2"
 lstm_6/while/lstm_cell_6/Sigmoid?
"lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2$
"lstm_6/while/lstm_cell_6/Sigmoid_1?
lstm_6/while/lstm_cell_6/mulMul&lstm_6/while/lstm_cell_6/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????	2
lstm_6/while/lstm_cell_6/mul?
lstm_6/while/lstm_cell_6/ReluRelu'lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_6/while/lstm_cell_6/Relu?
lstm_6/while/lstm_cell_6/mul_1Mul$lstm_6/while/lstm_cell_6/Sigmoid:y:0+lstm_6/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_6/while/lstm_cell_6/mul_1?
lstm_6/while/lstm_cell_6/add_1AddV2 lstm_6/while/lstm_cell_6/mul:z:0"lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2 
lstm_6/while/lstm_cell_6/add_1?
"lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2$
"lstm_6/while/lstm_cell_6/Sigmoid_2?
lstm_6/while/lstm_cell_6/Relu_1Relu"lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2!
lstm_6/while/lstm_cell_6/Relu_1?
lstm_6/while/lstm_cell_6/mul_2Mul&lstm_6/while/lstm_cell_6/Sigmoid_2:y:0-lstm_6/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_6/while/lstm_cell_6/mul_2?
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder"lstm_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/y?
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/y?
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1?
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity?
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1?
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2?
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3?
lstm_6/while/Identity_4Identity"lstm_6/while/lstm_cell_6/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_6/while/Identity_4?
lstm_6/while/Identity_5Identity"lstm_6/while/lstm_cell_6/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_6/while/Identity_5?
lstm_6/while/NoOpNoOp0^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_6/while/NoOp"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"v
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"?
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2b
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_7_while_cond_147130*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1B
>lstm_7_while_lstm_7_while_cond_147130___redundant_placeholder0B
>lstm_7_while_lstm_7_while_cond_147130___redundant_placeholder1B
>lstm_7_while_lstm_7_while_cond_147130___redundant_placeholder2B
>lstm_7_while_lstm_7_while_cond_147130___redundant_placeholder3
lstm_7_while_identity
?
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: 2
lstm_7/while/Lessr
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_7/while/Identity"7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?

?
$__inference_signature_wrapper_146916
input_3
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	$
	unknown_3:	$
	unknown_4:$
	unknown_5:		
	unknown_6:	
	unknown_7:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
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
!__inference__wrapped_model_1446512
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
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?

?
-__inference_sequential_2_layer_call_fn_146827
input_3
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	$
	unknown_3:	$
	unknown_4:$
	unknown_5:		
	unknown_6:	
	unknown_7:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_1467832
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
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?>
?
while_body_148658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0:	$F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_7_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource:	$D
2while_lstm_cell_7_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_7_biasadd_readvariableop_resource:$??(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_145580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_7_145604_0:	$,
while_lstm_cell_7_145606_0:	$(
while_lstm_cell_7_145608_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_7_145604:	$*
while_lstm_cell_7_145606:	$&
while_lstm_cell_7_145608:$??)while/lstm_cell_7/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_145604_0while_lstm_cell_7_145606_0while_lstm_cell_7_145608_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_1455022+
)while/lstm_cell_7/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
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
while_lstm_cell_7_145604while_lstm_cell_7_145604_0"6
while_lstm_cell_7_145606while_lstm_cell_7_145606_0"6
while_lstm_cell_7_145608while_lstm_cell_7_145608_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?>
?
while_body_145984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_6_matmul_readvariableop_resource_0:$F
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_6_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_6_matmul_readvariableop_resource:$D
2while_lstm_cell_6_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_6_biasadd_readvariableop_resource:$??(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
? 
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_146856
input_3
lstm_6_146830:$
lstm_6_146832:	$
lstm_6_146834:$
lstm_7_146838:	$
lstm_7_146840:	$
lstm_7_146842:$ 
dense_6_146846:		
dense_6_146848:	 
dense_7_146851:	
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?lstm_6/StatefulPartitionedCall?lstm_7/StatefulPartitionedCall?
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinput_3lstm_6_146830lstm_6_146832lstm_6_146834*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1460682 
lstm_6/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1460812
dropout_2/PartitionedCall?
lstm_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0lstm_7_146838lstm_7_146840lstm_7_146842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1462332 
lstm_7/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1462462
dropout_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_6_146846dense_6_146848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1462592!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_146851*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_1462722!
dense_7/StatefulPartitionedCall?
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_1462892
reshape_3/PartitionedCall?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?F
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_145439

inputs$
lstm_cell_7_145357:	$$
lstm_cell_7_145359:	$ 
lstm_cell_7_145361:$
identity??#lstm_cell_7/StatefulPartitionedCall?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
 :??????????????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_145357lstm_cell_7_145359lstm_cell_7_145361*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_1453562%
#lstm_cell_7/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_145357lstm_cell_7_145359lstm_cell_7_145361*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_145370*
condR
while_cond_145369*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????	*
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
:?????????	*
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
 :??????????????????	2
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
:?????????	2

Identity|
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????	
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_147568

inputsC
1lstm_6_lstm_cell_6_matmul_readvariableop_resource:$E
3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource:	$@
2lstm_6_lstm_cell_6_biasadd_readvariableop_resource:$C
1lstm_7_lstm_cell_7_matmul_readvariableop_resource:	$E
3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource:	$@
2lstm_7_lstm_cell_7_biasadd_readvariableop_resource:$8
&dense_6_matmul_readvariableop_resource:		5
'dense_6_biasadd_readvariableop_resource:	8
&dense_7_matmul_readvariableop_resource:	
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/MatMul/ReadVariableOp?)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_6/while?)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp?(lstm_7/lstm_cell_7/MatMul/ReadVariableOp?*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp?lstm_7/whileR
lstm_6/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_6/Shape?
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stack?
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1?
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2?
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicej
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros/mul/y?
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_6/zeros/Less/y?
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessp
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros/packed/1?
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/Const?
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros_1/mul/y?
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_6/zeros_1/Less/y?
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lesst
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_6/zeros_1/packed/1?
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/Const?
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/zeros_1?
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/perm?
lstm_6/transpose	Transposeinputslstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1?
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stack?
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1?
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2?
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1?
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_6/TensorArrayV2/element_shape?
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2?
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensor?
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stack?
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1?
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2?
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_6/strided_slice_2?
(lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02*
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/lstm_cell_6/MatMulMatMullstm_6/strided_slice_2:output:00lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/MatMul?
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02,
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_6/lstm_cell_6/MatMul_1MatMullstm_6/zeros:output:02lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/MatMul_1?
lstm_6/lstm_cell_6/addAddV2#lstm_6/lstm_cell_6/MatMul:product:0%lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/add?
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02+
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_6/lstm_cell_6/BiasAddBiasAddlstm_6/lstm_cell_6/add:z:01lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_6/lstm_cell_6/BiasAdd?
"lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_6/lstm_cell_6/split/split_dim?
lstm_6/lstm_cell_6/splitSplit+lstm_6/lstm_cell_6/split/split_dim:output:0#lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_6/lstm_cell_6/split?
lstm_6/lstm_cell_6/SigmoidSigmoid!lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Sigmoid?
lstm_6/lstm_cell_6/Sigmoid_1Sigmoid!lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Sigmoid_1?
lstm_6/lstm_cell_6/mulMul lstm_6/lstm_cell_6/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/mul?
lstm_6/lstm_cell_6/ReluRelu!lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Relu?
lstm_6/lstm_cell_6/mul_1Mullstm_6/lstm_cell_6/Sigmoid:y:0%lstm_6/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/mul_1?
lstm_6/lstm_cell_6/add_1AddV2lstm_6/lstm_cell_6/mul:z:0lstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/add_1?
lstm_6/lstm_cell_6/Sigmoid_2Sigmoid!lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Sigmoid_2?
lstm_6/lstm_cell_6/Relu_1Relulstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/Relu_1?
lstm_6/lstm_cell_6/mul_2Mul lstm_6/lstm_cell_6/Sigmoid_2:y:0'lstm_6/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_6/lstm_cell_6/mul_2?
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2&
$lstm_6/TensorArrayV2_1/element_shape?
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/time?
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counter?
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_6_lstm_cell_6_matmul_readvariableop_resource3lstm_6_lstm_cell_6_matmul_1_readvariableop_resource2lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_6_while_body_147302*$
condR
lstm_6_while_cond_147301*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
lstm_6/while?
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStack?
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_6/strided_slice_3/stack?
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1?
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2?
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_6/strided_slice_3?
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm?
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtimew
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMullstm_6/transpose_1:y:0 dropout_2/dropout/Const:output:0*
T0*+
_output_shapes
:?????????	2
dropout_2/dropout/Mulx
dropout_2/dropout/ShapeShapelstm_6/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????	*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????	2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????	2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????	2
dropout_2/dropout/Mul_1g
lstm_7/ShapeShapedropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_7/Shape?
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice/stack?
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_1?
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_2?
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slicej
lstm_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros/mul/y?
lstm_7/zeros/mulMullstm_7/strided_slice:output:0lstm_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/mulm
lstm_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_7/zeros/Less/y?
lstm_7/zeros/LessLesslstm_7/zeros/mul:z:0lstm_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/Lessp
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros/packed/1?
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros/packedm
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros/Const?
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/zerosn
lstm_7/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros_1/mul/y?
lstm_7/zeros_1/mulMullstm_7/strided_slice:output:0lstm_7/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/mulq
lstm_7/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_7/zeros_1/Less/y?
lstm_7/zeros_1/LessLesslstm_7/zeros_1/mul:z:0lstm_7/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/Lesst
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2
lstm_7/zeros_1/packed/1?
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros_1/packedq
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros_1/Const?
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/zeros_1?
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose/perm?
lstm_7/transpose	Transposedropout_2/dropout/Mul_1:z:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_7/transposed
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
:2
lstm_7/Shape_1?
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_1/stack?
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_1?
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_2?
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slice_1?
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_7/TensorArrayV2/element_shape?
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2?
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2>
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_7/TensorArrayUnstack/TensorListFromTensor?
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_2/stack?
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_1?
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_2?
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_7/strided_slice_2?
(lstm_7/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp1lstm_7_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02*
(lstm_7/lstm_cell_7/MatMul/ReadVariableOp?
lstm_7/lstm_cell_7/MatMulMatMullstm_7/strided_slice_2:output:00lstm_7/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/MatMul?
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02,
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_7/lstm_cell_7/MatMul_1MatMullstm_7/zeros:output:02lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/MatMul_1?
lstm_7/lstm_cell_7/addAddV2#lstm_7/lstm_cell_7/MatMul:product:0%lstm_7/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/add?
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02+
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_7/lstm_cell_7/BiasAddBiasAddlstm_7/lstm_cell_7/add:z:01lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_7/lstm_cell_7/BiasAdd?
"lstm_7/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_7/lstm_cell_7/split/split_dim?
lstm_7/lstm_cell_7/splitSplit+lstm_7/lstm_cell_7/split/split_dim:output:0#lstm_7/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_7/lstm_cell_7/split?
lstm_7/lstm_cell_7/SigmoidSigmoid!lstm_7/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Sigmoid?
lstm_7/lstm_cell_7/Sigmoid_1Sigmoid!lstm_7/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Sigmoid_1?
lstm_7/lstm_cell_7/mulMul lstm_7/lstm_cell_7/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/mul?
lstm_7/lstm_cell_7/ReluRelu!lstm_7/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Relu?
lstm_7/lstm_cell_7/mul_1Mullstm_7/lstm_cell_7/Sigmoid:y:0%lstm_7/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/mul_1?
lstm_7/lstm_cell_7/add_1AddV2lstm_7/lstm_cell_7/mul:z:0lstm_7/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/add_1?
lstm_7/lstm_cell_7/Sigmoid_2Sigmoid!lstm_7/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Sigmoid_2?
lstm_7/lstm_cell_7/Relu_1Relulstm_7/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/Relu_1?
lstm_7/lstm_cell_7/mul_2Mul lstm_7/lstm_cell_7/Sigmoid_2:y:0'lstm_7/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_7/lstm_cell_7/mul_2?
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2&
$lstm_7/TensorArrayV2_1/element_shape?
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2_1\
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/time?
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_7/while/maximum_iterationsx
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/while/loop_counter?
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_7_lstm_cell_7_matmul_readvariableop_resource3lstm_7_lstm_cell_7_matmul_1_readvariableop_resource2lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_7_while_body_147457*$
condR
lstm_7_while_cond_147456*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
lstm_7/while?
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
element_dtype02+
)lstm_7/TensorArrayV2Stack/TensorListStack?
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_7/strided_slice_3/stack?
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_7/strided_slice_3/stack_1?
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_3/stack_2?
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2
lstm_7/strided_slice_3?
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose_1/perm?
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2
lstm_7/transpose_1t
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/runtimew
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/dropout/Const?
dropout_3/dropout/MulMullstm_7/strided_slice_3:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:?????????	2
dropout_3/dropout/Mul?
dropout_3/dropout/ShapeShapelstm_7/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????	*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????	2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????	2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????	2
dropout_3/dropout/Mul_1?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:		*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
dense_6/Relu?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMulj
reshape_3/ShapeShapedense_7/MatMul:product:0*
T0*
_output_shapes
:2
reshape_3/Shape?
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_3/strided_slice/stack?
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_1?
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_2?
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_3/strided_slicex
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/1x
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/2?
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_3/Reshape/shape?
reshape_3/ReshapeReshapedense_7/MatMul:product:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_3/Reshapey
IdentityIdentityreshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/MatMul/ReadVariableOp*^lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_6/lstm_cell_6/MatMul/ReadVariableOp+^lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_6/while*^lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)^lstm_7/lstm_cell_7/MatMul/ReadVariableOp+^lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_7/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2V
)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_6/lstm_cell_6/MatMul/ReadVariableOp(lstm_6/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2V
)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp)lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp2T
(lstm_7/lstm_cell_7/MatMul/ReadVariableOp(lstm_7/lstm_cell_7/MatMul/ReadVariableOp2X
*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp*lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?

lstm_7_while_body_147457*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0:	$M
;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$H
:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0:$
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorI
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource:	$K
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource:	$F
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource:$??/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp?.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp?0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp?
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2@
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype022
0lstm_7/while/TensorArrayV2Read/TensorListGetItem?
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype020
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp?
lstm_7/while/lstm_cell_7/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
lstm_7/while/lstm_cell_7/MatMul?
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype022
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp?
!lstm_7/while/lstm_cell_7/MatMul_1MatMullstm_7_while_placeholder_28lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2#
!lstm_7/while/lstm_cell_7/MatMul_1?
lstm_7/while/lstm_cell_7/addAddV2)lstm_7/while/lstm_cell_7/MatMul:product:0+lstm_7/while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_7/while/lstm_cell_7/add?
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype021
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp?
 lstm_7/while/lstm_cell_7/BiasAddBiasAdd lstm_7/while/lstm_cell_7/add:z:07lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 lstm_7/while/lstm_cell_7/BiasAdd?
(lstm_7/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_7/while/lstm_cell_7/split/split_dim?
lstm_7/while/lstm_cell_7/splitSplit1lstm_7/while/lstm_cell_7/split/split_dim:output:0)lstm_7/while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2 
lstm_7/while/lstm_cell_7/split?
 lstm_7/while/lstm_cell_7/SigmoidSigmoid'lstm_7/while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2"
 lstm_7/while/lstm_cell_7/Sigmoid?
"lstm_7/while/lstm_cell_7/Sigmoid_1Sigmoid'lstm_7/while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2$
"lstm_7/while/lstm_cell_7/Sigmoid_1?
lstm_7/while/lstm_cell_7/mulMul&lstm_7/while/lstm_cell_7/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:?????????	2
lstm_7/while/lstm_cell_7/mul?
lstm_7/while/lstm_cell_7/ReluRelu'lstm_7/while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_7/while/lstm_cell_7/Relu?
lstm_7/while/lstm_cell_7/mul_1Mul$lstm_7/while/lstm_cell_7/Sigmoid:y:0+lstm_7/while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_7/while/lstm_cell_7/mul_1?
lstm_7/while/lstm_cell_7/add_1AddV2 lstm_7/while/lstm_cell_7/mul:z:0"lstm_7/while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2 
lstm_7/while/lstm_cell_7/add_1?
"lstm_7/while/lstm_cell_7/Sigmoid_2Sigmoid'lstm_7/while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2$
"lstm_7/while/lstm_cell_7/Sigmoid_2?
lstm_7/while/lstm_cell_7/Relu_1Relu"lstm_7/while/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2!
lstm_7/while/lstm_cell_7/Relu_1?
lstm_7/while/lstm_cell_7/mul_2Mul&lstm_7/while/lstm_cell_7/Sigmoid_2:y:0-lstm_7/while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_7/while/lstm_cell_7/mul_2?
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder"lstm_7/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_7/while/TensorArrayV2Write/TensorListSetItemj
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add/y?
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/addn
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add_1/y?
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/add_1?
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity?
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_1?
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_2?
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_3?
lstm_7/while/Identity_4Identity"lstm_7/while/lstm_cell_7/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_7/while/Identity_4?
lstm_7/while/Identity_5Identity"lstm_7/while/lstm_cell_7/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_7/while/Identity_5?
lstm_7/while/NoOpNoOp0^lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/^lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp1^lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_7/while/NoOp"7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"v
8lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource:lstm_7_while_lstm_cell_7_biasadd_readvariableop_resource_0"x
9lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource;lstm_7_while_lstm_cell_7_matmul_1_readvariableop_resource_0"t
7lstm_7_while_lstm_cell_7_matmul_readvariableop_resource9lstm_7_while_lstm_cell_7_matmul_readvariableop_resource_0"?
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2b
/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp/lstm_7/while/lstm_cell_7/BiasAdd/ReadVariableOp2`
.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp.lstm_7/while/lstm_cell_7/MatMul/ReadVariableOp2d
0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp0lstm_7/while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_144726

inputs

states
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
while_cond_148808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_148808___redundant_placeholder04
0while_while_cond_148808___redundant_placeholder14
0while_while_cond_148808___redundant_placeholder24
0while_while_cond_148808___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_lstm_cell_6_layer_call_fn_149097

inputs
states_0
states_1
unknown:$
	unknown_0:	$
	unknown_1:$
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
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_1447262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????:?????????	:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
?
,__inference_lstm_cell_7_layer_call_fn_149212

inputs
states_0
states_1
unknown:	$
	unknown_0:	$
	unknown_1:$
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
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_1455022
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????	:?????????	:?????????	: : : 22
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
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_149178

inputs
states_0
states_10
matmul_readvariableop_resource:	$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????	:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
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
while_cond_146148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_146148___redundant_placeholder04
0while_while_cond_146148___redundant_placeholder14
0while_while_cond_146148___redundant_placeholder24
0while_while_cond_146148___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
'__inference_lstm_7_layer_call_fn_148926

inputs
unknown:	$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1462332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_146081

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????	2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????	2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?

!__inference__wrapped_model_144651
input_3P
>sequential_2_lstm_6_lstm_cell_6_matmul_readvariableop_resource:$R
@sequential_2_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource:	$M
?sequential_2_lstm_6_lstm_cell_6_biasadd_readvariableop_resource:$P
>sequential_2_lstm_7_lstm_cell_7_matmul_readvariableop_resource:	$R
@sequential_2_lstm_7_lstm_cell_7_matmul_1_readvariableop_resource:	$M
?sequential_2_lstm_7_lstm_cell_7_biasadd_readvariableop_resource:$E
3sequential_2_dense_6_matmul_readvariableop_resource:		B
4sequential_2_dense_6_biasadd_readvariableop_resource:	E
3sequential_2_dense_7_matmul_readvariableop_resource:	
identity??+sequential_2/dense_6/BiasAdd/ReadVariableOp?*sequential_2/dense_6/MatMul/ReadVariableOp?*sequential_2/dense_7/MatMul/ReadVariableOp?6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp?7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?sequential_2/lstm_6/while?6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp?5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp?7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp?sequential_2/lstm_7/whilem
sequential_2/lstm_6/ShapeShapeinput_3*
T0*
_output_shapes
:2
sequential_2/lstm_6/Shape?
'sequential_2/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_2/lstm_6/strided_slice/stack?
)sequential_2/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_6/strided_slice/stack_1?
)sequential_2/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_6/strided_slice/stack_2?
!sequential_2/lstm_6/strided_sliceStridedSlice"sequential_2/lstm_6/Shape:output:00sequential_2/lstm_6/strided_slice/stack:output:02sequential_2/lstm_6/strided_slice/stack_1:output:02sequential_2/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_2/lstm_6/strided_slice?
sequential_2/lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2!
sequential_2/lstm_6/zeros/mul/y?
sequential_2/lstm_6/zeros/mulMul*sequential_2/lstm_6/strided_slice:output:0(sequential_2/lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_6/zeros/mul?
 sequential_2/lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_2/lstm_6/zeros/Less/y?
sequential_2/lstm_6/zeros/LessLess!sequential_2/lstm_6/zeros/mul:z:0)sequential_2/lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_2/lstm_6/zeros/Less?
"sequential_2/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2$
"sequential_2/lstm_6/zeros/packed/1?
 sequential_2/lstm_6/zeros/packedPack*sequential_2/lstm_6/strided_slice:output:0+sequential_2/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_2/lstm_6/zeros/packed?
sequential_2/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_2/lstm_6/zeros/Const?
sequential_2/lstm_6/zerosFill)sequential_2/lstm_6/zeros/packed:output:0(sequential_2/lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
sequential_2/lstm_6/zeros?
!sequential_2/lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2#
!sequential_2/lstm_6/zeros_1/mul/y?
sequential_2/lstm_6/zeros_1/mulMul*sequential_2/lstm_6/strided_slice:output:0*sequential_2/lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_6/zeros_1/mul?
"sequential_2/lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_2/lstm_6/zeros_1/Less/y?
 sequential_2/lstm_6/zeros_1/LessLess#sequential_2/lstm_6/zeros_1/mul:z:0+sequential_2/lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_2/lstm_6/zeros_1/Less?
$sequential_2/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2&
$sequential_2/lstm_6/zeros_1/packed/1?
"sequential_2/lstm_6/zeros_1/packedPack*sequential_2/lstm_6/strided_slice:output:0-sequential_2/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_2/lstm_6/zeros_1/packed?
!sequential_2/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_2/lstm_6/zeros_1/Const?
sequential_2/lstm_6/zeros_1Fill+sequential_2/lstm_6/zeros_1/packed:output:0*sequential_2/lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
sequential_2/lstm_6/zeros_1?
"sequential_2/lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_2/lstm_6/transpose/perm?
sequential_2/lstm_6/transpose	Transposeinput_3+sequential_2/lstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
sequential_2/lstm_6/transpose?
sequential_2/lstm_6/Shape_1Shape!sequential_2/lstm_6/transpose:y:0*
T0*
_output_shapes
:2
sequential_2/lstm_6/Shape_1?
)sequential_2/lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_6/strided_slice_1/stack?
+sequential_2/lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_6/strided_slice_1/stack_1?
+sequential_2/lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_6/strided_slice_1/stack_2?
#sequential_2/lstm_6/strided_slice_1StridedSlice$sequential_2/lstm_6/Shape_1:output:02sequential_2/lstm_6/strided_slice_1/stack:output:04sequential_2/lstm_6/strided_slice_1/stack_1:output:04sequential_2/lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_2/lstm_6/strided_slice_1?
/sequential_2/lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_2/lstm_6/TensorArrayV2/element_shape?
!sequential_2/lstm_6/TensorArrayV2TensorListReserve8sequential_2/lstm_6/TensorArrayV2/element_shape:output:0,sequential_2/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_2/lstm_6/TensorArrayV2?
Isequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Isequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_6/transpose:y:0Rsequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor?
)sequential_2/lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_6/strided_slice_2/stack?
+sequential_2/lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_6/strided_slice_2/stack_1?
+sequential_2/lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_6/strided_slice_2/stack_2?
#sequential_2/lstm_6/strided_slice_2StridedSlice!sequential_2/lstm_6/transpose:y:02sequential_2/lstm_6/strided_slice_2/stack:output:04sequential_2/lstm_6/strided_slice_2/stack_1:output:04sequential_2/lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2%
#sequential_2/lstm_6/strided_slice_2?
5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype027
5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp?
&sequential_2/lstm_6/lstm_cell_6/MatMulMatMul,sequential_2/lstm_6/strided_slice_2:output:0=sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2(
&sequential_2/lstm_6/lstm_cell_6/MatMul?
7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype029
7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp?
(sequential_2/lstm_6/lstm_cell_6/MatMul_1MatMul"sequential_2/lstm_6/zeros:output:0?sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2*
(sequential_2/lstm_6/lstm_cell_6/MatMul_1?
#sequential_2/lstm_6/lstm_cell_6/addAddV20sequential_2/lstm_6/lstm_cell_6/MatMul:product:02sequential_2/lstm_6/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2%
#sequential_2/lstm_6/lstm_cell_6/add?
6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype028
6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp?
'sequential_2/lstm_6/lstm_cell_6/BiasAddBiasAdd'sequential_2/lstm_6/lstm_cell_6/add:z:0>sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2)
'sequential_2/lstm_6/lstm_cell_6/BiasAdd?
/sequential_2/lstm_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_2/lstm_6/lstm_cell_6/split/split_dim?
%sequential_2/lstm_6/lstm_cell_6/splitSplit8sequential_2/lstm_6/lstm_cell_6/split/split_dim:output:00sequential_2/lstm_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2'
%sequential_2/lstm_6/lstm_cell_6/split?
'sequential_2/lstm_6/lstm_cell_6/SigmoidSigmoid.sequential_2/lstm_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2)
'sequential_2/lstm_6/lstm_cell_6/Sigmoid?
)sequential_2/lstm_6/lstm_cell_6/Sigmoid_1Sigmoid.sequential_2/lstm_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2+
)sequential_2/lstm_6/lstm_cell_6/Sigmoid_1?
#sequential_2/lstm_6/lstm_cell_6/mulMul-sequential_2/lstm_6/lstm_cell_6/Sigmoid_1:y:0$sequential_2/lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2%
#sequential_2/lstm_6/lstm_cell_6/mul?
$sequential_2/lstm_6/lstm_cell_6/ReluRelu.sequential_2/lstm_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2&
$sequential_2/lstm_6/lstm_cell_6/Relu?
%sequential_2/lstm_6/lstm_cell_6/mul_1Mul+sequential_2/lstm_6/lstm_cell_6/Sigmoid:y:02sequential_2/lstm_6/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2'
%sequential_2/lstm_6/lstm_cell_6/mul_1?
%sequential_2/lstm_6/lstm_cell_6/add_1AddV2'sequential_2/lstm_6/lstm_cell_6/mul:z:0)sequential_2/lstm_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2'
%sequential_2/lstm_6/lstm_cell_6/add_1?
)sequential_2/lstm_6/lstm_cell_6/Sigmoid_2Sigmoid.sequential_2/lstm_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2+
)sequential_2/lstm_6/lstm_cell_6/Sigmoid_2?
&sequential_2/lstm_6/lstm_cell_6/Relu_1Relu)sequential_2/lstm_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2(
&sequential_2/lstm_6/lstm_cell_6/Relu_1?
%sequential_2/lstm_6/lstm_cell_6/mul_2Mul-sequential_2/lstm_6/lstm_cell_6/Sigmoid_2:y:04sequential_2/lstm_6/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2'
%sequential_2/lstm_6/lstm_cell_6/mul_2?
1sequential_2/lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   23
1sequential_2/lstm_6/TensorArrayV2_1/element_shape?
#sequential_2/lstm_6/TensorArrayV2_1TensorListReserve:sequential_2/lstm_6/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_2/lstm_6/TensorArrayV2_1v
sequential_2/lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_2/lstm_6/time?
,sequential_2/lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_2/lstm_6/while/maximum_iterations?
&sequential_2/lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_2/lstm_6/while/loop_counter?
sequential_2/lstm_6/whileWhile/sequential_2/lstm_6/while/loop_counter:output:05sequential_2/lstm_6/while/maximum_iterations:output:0!sequential_2/lstm_6/time:output:0,sequential_2/lstm_6/TensorArrayV2_1:handle:0"sequential_2/lstm_6/zeros:output:0$sequential_2/lstm_6/zeros_1:output:0,sequential_2/lstm_6/strided_slice_1:output:0Ksequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_6_lstm_cell_6_matmul_readvariableop_resource@sequential_2_lstm_6_lstm_cell_6_matmul_1_readvariableop_resource?sequential_2_lstm_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_2_lstm_6_while_body_144399*1
cond)R'
%sequential_2_lstm_6_while_cond_144398*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
sequential_2/lstm_6/while?
Dsequential_2/lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2F
Dsequential_2/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_2/lstm_6/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_6/while:output:3Msequential_2/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
element_dtype028
6sequential_2/lstm_6/TensorArrayV2Stack/TensorListStack?
)sequential_2/lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_2/lstm_6/strided_slice_3/stack?
+sequential_2/lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_2/lstm_6/strided_slice_3/stack_1?
+sequential_2/lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_6/strided_slice_3/stack_2?
#sequential_2/lstm_6/strided_slice_3StridedSlice?sequential_2/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_6/strided_slice_3/stack:output:04sequential_2/lstm_6/strided_slice_3/stack_1:output:04sequential_2/lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2%
#sequential_2/lstm_6/strided_slice_3?
$sequential_2/lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_2/lstm_6/transpose_1/perm?
sequential_2/lstm_6/transpose_1	Transpose?sequential_2/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2!
sequential_2/lstm_6/transpose_1?
sequential_2/lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_2/lstm_6/runtime?
sequential_2/dropout_2/IdentityIdentity#sequential_2/lstm_6/transpose_1:y:0*
T0*+
_output_shapes
:?????????	2!
sequential_2/dropout_2/Identity?
sequential_2/lstm_7/ShapeShape(sequential_2/dropout_2/Identity:output:0*
T0*
_output_shapes
:2
sequential_2/lstm_7/Shape?
'sequential_2/lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_2/lstm_7/strided_slice/stack?
)sequential_2/lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_7/strided_slice/stack_1?
)sequential_2/lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_7/strided_slice/stack_2?
!sequential_2/lstm_7/strided_sliceStridedSlice"sequential_2/lstm_7/Shape:output:00sequential_2/lstm_7/strided_slice/stack:output:02sequential_2/lstm_7/strided_slice/stack_1:output:02sequential_2/lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_2/lstm_7/strided_slice?
sequential_2/lstm_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2!
sequential_2/lstm_7/zeros/mul/y?
sequential_2/lstm_7/zeros/mulMul*sequential_2/lstm_7/strided_slice:output:0(sequential_2/lstm_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_7/zeros/mul?
 sequential_2/lstm_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_2/lstm_7/zeros/Less/y?
sequential_2/lstm_7/zeros/LessLess!sequential_2/lstm_7/zeros/mul:z:0)sequential_2/lstm_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_2/lstm_7/zeros/Less?
"sequential_2/lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2$
"sequential_2/lstm_7/zeros/packed/1?
 sequential_2/lstm_7/zeros/packedPack*sequential_2/lstm_7/strided_slice:output:0+sequential_2/lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_2/lstm_7/zeros/packed?
sequential_2/lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_2/lstm_7/zeros/Const?
sequential_2/lstm_7/zerosFill)sequential_2/lstm_7/zeros/packed:output:0(sequential_2/lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:?????????	2
sequential_2/lstm_7/zeros?
!sequential_2/lstm_7/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2#
!sequential_2/lstm_7/zeros_1/mul/y?
sequential_2/lstm_7/zeros_1/mulMul*sequential_2/lstm_7/strided_slice:output:0*sequential_2/lstm_7/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_7/zeros_1/mul?
"sequential_2/lstm_7/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_2/lstm_7/zeros_1/Less/y?
 sequential_2/lstm_7/zeros_1/LessLess#sequential_2/lstm_7/zeros_1/mul:z:0+sequential_2/lstm_7/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_2/lstm_7/zeros_1/Less?
$sequential_2/lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :	2&
$sequential_2/lstm_7/zeros_1/packed/1?
"sequential_2/lstm_7/zeros_1/packedPack*sequential_2/lstm_7/strided_slice:output:0-sequential_2/lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_2/lstm_7/zeros_1/packed?
!sequential_2/lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_2/lstm_7/zeros_1/Const?
sequential_2/lstm_7/zeros_1Fill+sequential_2/lstm_7/zeros_1/packed:output:0*sequential_2/lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????	2
sequential_2/lstm_7/zeros_1?
"sequential_2/lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_2/lstm_7/transpose/perm?
sequential_2/lstm_7/transpose	Transpose(sequential_2/dropout_2/Identity:output:0+sequential_2/lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:?????????	2
sequential_2/lstm_7/transpose?
sequential_2/lstm_7/Shape_1Shape!sequential_2/lstm_7/transpose:y:0*
T0*
_output_shapes
:2
sequential_2/lstm_7/Shape_1?
)sequential_2/lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_7/strided_slice_1/stack?
+sequential_2/lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_7/strided_slice_1/stack_1?
+sequential_2/lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_7/strided_slice_1/stack_2?
#sequential_2/lstm_7/strided_slice_1StridedSlice$sequential_2/lstm_7/Shape_1:output:02sequential_2/lstm_7/strided_slice_1/stack:output:04sequential_2/lstm_7/strided_slice_1/stack_1:output:04sequential_2/lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_2/lstm_7/strided_slice_1?
/sequential_2/lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_2/lstm_7/TensorArrayV2/element_shape?
!sequential_2/lstm_7/TensorArrayV2TensorListReserve8sequential_2/lstm_7/TensorArrayV2/element_shape:output:0,sequential_2/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_2/lstm_7/TensorArrayV2?
Isequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2K
Isequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_7/transpose:y:0Rsequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor?
)sequential_2/lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_7/strided_slice_2/stack?
+sequential_2/lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_7/strided_slice_2/stack_1?
+sequential_2/lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_7/strided_slice_2/stack_2?
#sequential_2/lstm_7/strided_slice_2StridedSlice!sequential_2/lstm_7/transpose:y:02sequential_2/lstm_7/strided_slice_2/stack:output:04sequential_2/lstm_7/strided_slice_2/stack_1:output:04sequential_2/lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2%
#sequential_2/lstm_7/strided_slice_2?
5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp>sequential_2_lstm_7_lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype027
5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp?
&sequential_2/lstm_7/lstm_cell_7/MatMulMatMul,sequential_2/lstm_7/strided_slice_2:output:0=sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2(
&sequential_2/lstm_7/lstm_cell_7/MatMul?
7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_lstm_7_lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype029
7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp?
(sequential_2/lstm_7/lstm_cell_7/MatMul_1MatMul"sequential_2/lstm_7/zeros:output:0?sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2*
(sequential_2/lstm_7/lstm_cell_7/MatMul_1?
#sequential_2/lstm_7/lstm_cell_7/addAddV20sequential_2/lstm_7/lstm_cell_7/MatMul:product:02sequential_2/lstm_7/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2%
#sequential_2/lstm_7/lstm_cell_7/add?
6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype028
6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp?
'sequential_2/lstm_7/lstm_cell_7/BiasAddBiasAdd'sequential_2/lstm_7/lstm_cell_7/add:z:0>sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2)
'sequential_2/lstm_7/lstm_cell_7/BiasAdd?
/sequential_2/lstm_7/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_2/lstm_7/lstm_cell_7/split/split_dim?
%sequential_2/lstm_7/lstm_cell_7/splitSplit8sequential_2/lstm_7/lstm_cell_7/split/split_dim:output:00sequential_2/lstm_7/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2'
%sequential_2/lstm_7/lstm_cell_7/split?
'sequential_2/lstm_7/lstm_cell_7/SigmoidSigmoid.sequential_2/lstm_7/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2)
'sequential_2/lstm_7/lstm_cell_7/Sigmoid?
)sequential_2/lstm_7/lstm_cell_7/Sigmoid_1Sigmoid.sequential_2/lstm_7/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2+
)sequential_2/lstm_7/lstm_cell_7/Sigmoid_1?
#sequential_2/lstm_7/lstm_cell_7/mulMul-sequential_2/lstm_7/lstm_cell_7/Sigmoid_1:y:0$sequential_2/lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:?????????	2%
#sequential_2/lstm_7/lstm_cell_7/mul?
$sequential_2/lstm_7/lstm_cell_7/ReluRelu.sequential_2/lstm_7/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2&
$sequential_2/lstm_7/lstm_cell_7/Relu?
%sequential_2/lstm_7/lstm_cell_7/mul_1Mul+sequential_2/lstm_7/lstm_cell_7/Sigmoid:y:02sequential_2/lstm_7/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2'
%sequential_2/lstm_7/lstm_cell_7/mul_1?
%sequential_2/lstm_7/lstm_cell_7/add_1AddV2'sequential_2/lstm_7/lstm_cell_7/mul:z:0)sequential_2/lstm_7/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2'
%sequential_2/lstm_7/lstm_cell_7/add_1?
)sequential_2/lstm_7/lstm_cell_7/Sigmoid_2Sigmoid.sequential_2/lstm_7/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2+
)sequential_2/lstm_7/lstm_cell_7/Sigmoid_2?
&sequential_2/lstm_7/lstm_cell_7/Relu_1Relu)sequential_2/lstm_7/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2(
&sequential_2/lstm_7/lstm_cell_7/Relu_1?
%sequential_2/lstm_7/lstm_cell_7/mul_2Mul-sequential_2/lstm_7/lstm_cell_7/Sigmoid_2:y:04sequential_2/lstm_7/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2'
%sequential_2/lstm_7/lstm_cell_7/mul_2?
1sequential_2/lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   23
1sequential_2/lstm_7/TensorArrayV2_1/element_shape?
#sequential_2/lstm_7/TensorArrayV2_1TensorListReserve:sequential_2/lstm_7/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_2/lstm_7/TensorArrayV2_1v
sequential_2/lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_2/lstm_7/time?
,sequential_2/lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_2/lstm_7/while/maximum_iterations?
&sequential_2/lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_2/lstm_7/while/loop_counter?
sequential_2/lstm_7/whileWhile/sequential_2/lstm_7/while/loop_counter:output:05sequential_2/lstm_7/while/maximum_iterations:output:0!sequential_2/lstm_7/time:output:0,sequential_2/lstm_7/TensorArrayV2_1:handle:0"sequential_2/lstm_7/zeros:output:0$sequential_2/lstm_7/zeros_1:output:0,sequential_2/lstm_7/strided_slice_1:output:0Ksequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_lstm_7_lstm_cell_7_matmul_readvariableop_resource@sequential_2_lstm_7_lstm_cell_7_matmul_1_readvariableop_resource?sequential_2_lstm_7_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_2_lstm_7_while_body_144547*1
cond)R'
%sequential_2_lstm_7_while_cond_144546*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
sequential_2/lstm_7/while?
Dsequential_2/lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2F
Dsequential_2/lstm_7/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_2/lstm_7/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_7/while:output:3Msequential_2/lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
element_dtype028
6sequential_2/lstm_7/TensorArrayV2Stack/TensorListStack?
)sequential_2/lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_2/lstm_7/strided_slice_3/stack?
+sequential_2/lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_2/lstm_7/strided_slice_3/stack_1?
+sequential_2/lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_7/strided_slice_3/stack_2?
#sequential_2/lstm_7/strided_slice_3StridedSlice?sequential_2/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_7/strided_slice_3/stack:output:04sequential_2/lstm_7/strided_slice_3/stack_1:output:04sequential_2/lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????	*
shrink_axis_mask2%
#sequential_2/lstm_7/strided_slice_3?
$sequential_2/lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_2/lstm_7/transpose_1/perm?
sequential_2/lstm_7/transpose_1	Transpose?sequential_2/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????	2!
sequential_2/lstm_7/transpose_1?
sequential_2/lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_2/lstm_7/runtime?
sequential_2/dropout_3/IdentityIdentity,sequential_2/lstm_7/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????	2!
sequential_2/dropout_3/Identity?
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:		*
dtype02,
*sequential_2/dense_6/MatMul/ReadVariableOp?
sequential_2/dense_6/MatMulMatMul(sequential_2/dropout_3/Identity:output:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
sequential_2/dense_6/MatMul?
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02-
+sequential_2/dense_6/BiasAdd/ReadVariableOp?
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
sequential_2/dense_6/BiasAdd?
sequential_2/dense_6/ReluRelu%sequential_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
sequential_2/dense_6/Relu?
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02,
*sequential_2/dense_7/MatMul/ReadVariableOp?
sequential_2/dense_7/MatMulMatMul'sequential_2/dense_6/Relu:activations:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_2/dense_7/MatMul?
sequential_2/reshape_3/ShapeShape%sequential_2/dense_7/MatMul:product:0*
T0*
_output_shapes
:2
sequential_2/reshape_3/Shape?
*sequential_2/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_2/reshape_3/strided_slice/stack?
,sequential_2/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_2/reshape_3/strided_slice/stack_1?
,sequential_2/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_2/reshape_3/strided_slice/stack_2?
$sequential_2/reshape_3/strided_sliceStridedSlice%sequential_2/reshape_3/Shape:output:03sequential_2/reshape_3/strided_slice/stack:output:05sequential_2/reshape_3/strided_slice/stack_1:output:05sequential_2/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_2/reshape_3/strided_slice?
&sequential_2/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_2/reshape_3/Reshape/shape/1?
&sequential_2/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_2/reshape_3/Reshape/shape/2?
$sequential_2/reshape_3/Reshape/shapePack-sequential_2/reshape_3/strided_slice:output:0/sequential_2/reshape_3/Reshape/shape/1:output:0/sequential_2/reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$sequential_2/reshape_3/Reshape/shape?
sequential_2/reshape_3/ReshapeReshape%sequential_2/dense_7/MatMul:product:0-sequential_2/reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2 
sequential_2/reshape_3/Reshape?
IdentityIdentity'sequential_2/reshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp7^sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp6^sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp8^sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp^sequential_2/lstm_6/while7^sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp6^sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp8^sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp^sequential_2/lstm_7/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????: : : : : : : : : 2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2p
6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp6sequential_2/lstm_6/lstm_cell_6/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp5sequential_2/lstm_6/lstm_cell_6/MatMul/ReadVariableOp2r
7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp7sequential_2/lstm_6/lstm_cell_6/MatMul_1/ReadVariableOp26
sequential_2/lstm_6/whilesequential_2/lstm_6/while2p
6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp6sequential_2/lstm_7/lstm_cell_7/BiasAdd/ReadVariableOp2n
5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp5sequential_2/lstm_7/lstm_cell_7/MatMul/ReadVariableOp2r
7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp7sequential_2/lstm_7/lstm_cell_7/MatMul_1/ReadVariableOp26
sequential_2/lstm_7/whilesequential_2/lstm_7/while:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?H
?

lstm_6_while_body_147302*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0K
9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0:$M
;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	$H
:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:$
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorI
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource:$K
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	$F
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:$??/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItem?
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes

:$*
dtype020
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp?
lstm_6/while/lstm_cell_6/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
lstm_6/while/lstm_cell_6/MatMul?
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype022
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp?
!lstm_6/while/lstm_cell_6/MatMul_1MatMullstm_6_while_placeholder_28lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2#
!lstm_6/while/lstm_cell_6/MatMul_1?
lstm_6/while/lstm_cell_6/addAddV2)lstm_6/while/lstm_cell_6/MatMul:product:0+lstm_6/while/lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_6/while/lstm_cell_6/add?
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype021
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp?
 lstm_6/while/lstm_cell_6/BiasAddBiasAdd lstm_6/while/lstm_cell_6/add:z:07lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 lstm_6/while/lstm_cell_6/BiasAdd?
(lstm_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_6/while/lstm_cell_6/split/split_dim?
lstm_6/while/lstm_cell_6/splitSplit1lstm_6/while/lstm_cell_6/split/split_dim:output:0)lstm_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2 
lstm_6/while/lstm_cell_6/split?
 lstm_6/while/lstm_cell_6/SigmoidSigmoid'lstm_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2"
 lstm_6/while/lstm_cell_6/Sigmoid?
"lstm_6/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2$
"lstm_6/while/lstm_cell_6/Sigmoid_1?
lstm_6/while/lstm_cell_6/mulMul&lstm_6/while/lstm_cell_6/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:?????????	2
lstm_6/while/lstm_cell_6/mul?
lstm_6/while/lstm_cell_6/ReluRelu'lstm_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_6/while/lstm_cell_6/Relu?
lstm_6/while/lstm_cell_6/mul_1Mul$lstm_6/while/lstm_cell_6/Sigmoid:y:0+lstm_6/while/lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_6/while/lstm_cell_6/mul_1?
lstm_6/while/lstm_cell_6/add_1AddV2 lstm_6/while/lstm_cell_6/mul:z:0"lstm_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2 
lstm_6/while/lstm_cell_6/add_1?
"lstm_6/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2$
"lstm_6/while/lstm_cell_6/Sigmoid_2?
lstm_6/while/lstm_cell_6/Relu_1Relu"lstm_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2!
lstm_6/while/lstm_cell_6/Relu_1?
lstm_6/while/lstm_cell_6/mul_2Mul&lstm_6/while/lstm_cell_6/Sigmoid_2:y:0-lstm_6/while/lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2 
lstm_6/while/lstm_cell_6/mul_2?
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder"lstm_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/y?
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/y?
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1?
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity?
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1?
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2?
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3?
lstm_6/while/Identity_4Identity"lstm_6/while/lstm_cell_6/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_6/while/Identity_4?
lstm_6/while/Identity_5Identity"lstm_6/while/lstm_cell_6/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:?????????	2
lstm_6/while/Identity_5?
lstm_6/while/NoOpNoOp0^lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_6/while/NoOp"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"v
8lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_6_while_lstm_cell_6_matmul_readvariableop_resource9lstm_6_while_lstm_cell_6_matmul_readvariableop_resource_0"?
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2b
/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_6/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_147680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_147680___redundant_placeholder04
0while_while_cond_147680___redundant_placeholder14
0while_while_cond_147680___redundant_placeholder24
0while_while_cond_147680___redundant_placeholder3
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
@: : : : :?????????	:?????????	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
:
?
?
'__inference_lstm_7_layer_call_fn_148904
inputs_0
unknown:	$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1454392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????	
"
_user_specified_name
inputs/0
?
F
*__inference_dropout_3_layer_call_fn_148959

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
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1462462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?[
?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148742

inputs<
*lstm_cell_7_matmul_readvariableop_resource:	$>
,lstm_cell_7_matmul_1_readvariableop_resource:	$9
+lstm_cell_7_biasadd_readvariableop_resource:$
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????	2
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
valueB"????	   27
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
:?????????	*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource*
_output_shapes

:	$*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mulz
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Sigmoid_2y
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_148658*
condR
while_cond_148657*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????	: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?%
?
while_body_145370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_7_145394_0:	$,
while_lstm_cell_7_145396_0:	$(
while_lstm_cell_7_145398_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_7_145394:	$*
while_lstm_cell_7_145396:	$&
while_lstm_cell_7_145398:$??)while/lstm_cell_7/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_145394_0while_lstm_cell_7_145396_0while_lstm_cell_7_145398_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_1453562+
)while/lstm_cell_7/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
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
while_lstm_cell_7_145394while_lstm_cell_7_145394_0"6
while_lstm_cell_7_145396while_lstm_cell_7_145396_0"6
while_lstm_cell_7_145398while_lstm_cell_7_145398_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_146259

inputs0
matmul_readvariableop_resource:		-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:		*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?%
?
while_body_144950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_6_144974_0:$,
while_lstm_cell_6_144976_0:	$(
while_lstm_cell_6_144978_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_6_144974:$*
while_lstm_cell_6_144976:	$&
while_lstm_cell_6_144978:$??)while/lstm_cell_6/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_144974_0while_lstm_cell_6_144976_0while_lstm_cell_6_144978_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????	:?????????	:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_1448722+
)while/lstm_cell_6/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
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
while_lstm_cell_6_144974while_lstm_cell_6_144974_0"6
while_lstm_cell_6_144976while_lstm_cell_6_144976_0"6
while_lstm_cell_6_144978while_lstm_cell_6_144978_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_149048

inputs
states_0
states_10
matmul_readvariableop_resource:$2
 matmul_1_readvariableop_resource:	$-
biasadd_readvariableop_resource:$
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2	
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
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????	2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????	2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????	2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????	2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????	2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????	2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????	2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????	2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????	2

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
?:?????????:?????????	:?????????	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_148954

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
:?????????	2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????	*
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
:?????????	2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????	2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????	2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
c
*__inference_dropout_3_layer_call_fn_148964

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
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1463572
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?[
?
B__inference_lstm_6_layer_call_and_return_conditional_losses_148218

inputs<
*lstm_cell_6_matmul_readvariableop_resource:$>
,lstm_cell_6_matmul_1_readvariableop_resource:	$9
+lstm_cell_6_biasadd_readvariableop_resource:$
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
value	B :	2
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
value	B :	2
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
:?????????	2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :	2
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
value	B :	2
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
:?????????	2	
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes

:$*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes

:	$*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mulz
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Sigmoid_2y
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????	:?????????	: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_148134*
condR
while_cond_148133*K
output_shapes:
8: : : : :?????????	:?????????	: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????	*
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
:?????????	*
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
:?????????	2
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
:?????????	2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
-__inference_sequential_2_layer_call_fn_146313
input_3
unknown:$
	unknown_0:	$
	unknown_1:$
	unknown_2:	$
	unknown_3:	$
	unknown_4:$
	unknown_5:		
	unknown_6:	
	unknown_7:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_1462922
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
):?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?
?
'__inference_lstm_6_layer_call_fn_148251

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1460682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_6_layer_call_fn_148262

inputs
unknown:$
	unknown_0:	$
	unknown_1:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1467202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????	2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_146553

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
:?????????	2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????	*
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
:?????????	2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????	2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????	2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
C__inference_dense_7_layer_call_and_return_conditional_losses_146272

inputs0
matmul_readvariableop_resource:	
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
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
:?????????	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?>
?
while_body_148356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_7_matmul_readvariableop_resource_0:	$F
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:	$A
3while_lstm_cell_7_biasadd_readvariableop_resource_0:$
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_7_matmul_readvariableop_resource:	$D
2while_lstm_cell_7_matmul_1_readvariableop_resource:	$?
1while_lstm_cell_7_biasadd_readvariableop_resource:$??(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????	   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0*
_output_shapes

:	$*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0*
_output_shapes

:	$*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes
:$*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????	:?????????	:?????????	:?????????	*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*'
_output_shapes
:?????????	2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????	2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????	:?????????	: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????	:-)
'
_output_shapes
:?????????	:
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
input_34
serving_default_input_3:0?????????A
	reshape_34
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_sequential
?
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_rnn_layer
?
trainable_variables
regularization_losses
 	variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

(kernel
)trainable_variables
*regularization_losses
+	variables
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
-trainable_variables
.regularization_losses
/	variables
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
1iter

2beta_1

3beta_2
	4decay
5learning_rate"m#m?(m?6m?7m?8m?9m?:m?;m?"v?#v?(v?6v?7v?8v?9v?:v?;v?"
	optimizer
_
60
71
82
93
:4
;5
"6
#7
(8"
trackable_list_wrapper
 "
trackable_list_wrapper
_
60
71
82
93
:4
;5
"6
#7
(8"
trackable_list_wrapper
?
	trainable_variables
<non_trainable_variables
=layer_metrics

>layers
?metrics
@layer_regularization_losses

regularization_losses
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
A
state_size

6kernel
7recurrent_kernel
8bias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
?
trainable_variables
Fnon_trainable_variables
Glayer_metrics

Hlayers

Istates
Jmetrics
Klayer_regularization_losses
regularization_losses
	variables
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
trainable_variables
Lnon_trainable_variables
Mlayer_metrics

Nlayers
Ometrics
Player_regularization_losses
regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Q
state_size

9kernel
:recurrent_kernel
;bias
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
?
trainable_variables
Vnon_trainable_variables
Wlayer_metrics

Xlayers

Ystates
Zmetrics
[layer_regularization_losses
regularization_losses
	variables
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
trainable_variables
\non_trainable_variables
]layer_metrics

^layers
_metrics
`layer_regularization_losses
regularization_losses
 	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :		2dense_6/kernel
:	2dense_6/bias
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
$trainable_variables
anon_trainable_variables
blayer_metrics

clayers
dmetrics
elayer_regularization_losses
%regularization_losses
&	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	2dense_7/kernel
'
(0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
(0"
trackable_list_wrapper
?
)trainable_variables
fnon_trainable_variables
glayer_metrics

hlayers
imetrics
jlayer_regularization_losses
*regularization_losses
+	variables
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
-trainable_variables
knon_trainable_variables
llayer_metrics

mlayers
nmetrics
olayer_regularization_losses
.regularization_losses
/	variables
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
+:)$2lstm_6/lstm_cell_6/kernel
5:3	$2#lstm_6/lstm_cell_6/recurrent_kernel
%:#$2lstm_6/lstm_cell_6/bias
+:)	$2lstm_7/lstm_cell_7/kernel
5:3	$2#lstm_7/lstm_cell_7/recurrent_kernel
%:#$2lstm_7/lstm_cell_7/bias
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
'
p0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
?
Btrainable_variables
qnon_trainable_variables
rlayer_metrics

slayers
tmetrics
ulayer_regularization_losses
Cregularization_losses
D	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
?
Rtrainable_variables
vnon_trainable_variables
wlayer_metrics

xlayers
ymetrics
zlayer_regularization_losses
Sregularization_losses
T	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
	{total
	|count
}	variables
~	keras_api"
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
{0
|1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
%:#		2Adam/dense_6/kernel/m
:	2Adam/dense_6/bias/m
%:#	2Adam/dense_7/kernel/m
0:.$2 Adam/lstm_6/lstm_cell_6/kernel/m
::8	$2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
*:($2Adam/lstm_6/lstm_cell_6/bias/m
0:.	$2 Adam/lstm_7/lstm_cell_7/kernel/m
::8	$2*Adam/lstm_7/lstm_cell_7/recurrent_kernel/m
*:($2Adam/lstm_7/lstm_cell_7/bias/m
%:#		2Adam/dense_6/kernel/v
:	2Adam/dense_6/bias/v
%:#	2Adam/dense_7/kernel/v
0:.$2 Adam/lstm_6/lstm_cell_6/kernel/v
::8	$2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
*:($2Adam/lstm_6/lstm_cell_6/bias/v
0:.	$2 Adam/lstm_7/lstm_cell_7/kernel/v
::8	$2*Adam/lstm_7/lstm_cell_7/recurrent_kernel/v
*:($2Adam/lstm_7/lstm_cell_7/bias/v
?B?
!__inference__wrapped_model_144651input_3"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_147235
H__inference_sequential_2_layer_call_and_return_conditional_losses_147568
H__inference_sequential_2_layer_call_and_return_conditional_losses_146856
H__inference_sequential_2_layer_call_and_return_conditional_losses_146885?
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
?2?
-__inference_sequential_2_layer_call_fn_146313
-__inference_sequential_2_layer_call_fn_147591
-__inference_sequential_2_layer_call_fn_147614
-__inference_sequential_2_layer_call_fn_146827?
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
B__inference_lstm_6_layer_call_and_return_conditional_losses_147765
B__inference_lstm_6_layer_call_and_return_conditional_losses_147916
B__inference_lstm_6_layer_call_and_return_conditional_losses_148067
B__inference_lstm_6_layer_call_and_return_conditional_losses_148218?
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
'__inference_lstm_6_layer_call_fn_148229
'__inference_lstm_6_layer_call_fn_148240
'__inference_lstm_6_layer_call_fn_148251
'__inference_lstm_6_layer_call_fn_148262?
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
E__inference_dropout_2_layer_call_and_return_conditional_losses_148267
E__inference_dropout_2_layer_call_and_return_conditional_losses_148279?
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
*__inference_dropout_2_layer_call_fn_148284
*__inference_dropout_2_layer_call_fn_148289?
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
B__inference_lstm_7_layer_call_and_return_conditional_losses_148440
B__inference_lstm_7_layer_call_and_return_conditional_losses_148591
B__inference_lstm_7_layer_call_and_return_conditional_losses_148742
B__inference_lstm_7_layer_call_and_return_conditional_losses_148893?
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
'__inference_lstm_7_layer_call_fn_148904
'__inference_lstm_7_layer_call_fn_148915
'__inference_lstm_7_layer_call_fn_148926
'__inference_lstm_7_layer_call_fn_148937?
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
E__inference_dropout_3_layer_call_and_return_conditional_losses_148942
E__inference_dropout_3_layer_call_and_return_conditional_losses_148954?
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
*__inference_dropout_3_layer_call_fn_148959
*__inference_dropout_3_layer_call_fn_148964?
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
C__inference_dense_6_layer_call_and_return_conditional_losses_148975?
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
(__inference_dense_6_layer_call_fn_148984?
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
C__inference_dense_7_layer_call_and_return_conditional_losses_148991?
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
(__inference_dense_7_layer_call_fn_148998?
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_149011?
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
*__inference_reshape_3_layer_call_fn_149016?
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
$__inference_signature_wrapper_146916input_3"?
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
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_149048
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_149080?
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
,__inference_lstm_cell_6_layer_call_fn_149097
,__inference_lstm_cell_6_layer_call_fn_149114?
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
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_149146
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_149178?
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
,__inference_lstm_cell_7_layer_call_fn_149195
,__inference_lstm_cell_7_layer_call_fn_149212?
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
!__inference__wrapped_model_144651|	6789:;"#(4?1
*?'
%?"
input_3?????????
? "9?6
4
	reshape_3'?$
	reshape_3??????????
C__inference_dense_6_layer_call_and_return_conditional_losses_148975\"#/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????	
? {
(__inference_dense_6_layer_call_fn_148984O"#/?,
%?"
 ?
inputs?????????	
? "??????????	?
C__inference_dense_7_layer_call_and_return_conditional_losses_148991[(/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????
? z
(__inference_dense_7_layer_call_fn_148998N(/?,
%?"
 ?
inputs?????????	
? "???????????
E__inference_dropout_2_layer_call_and_return_conditional_losses_148267d7?4
-?*
$?!
inputs?????????	
p 
? ")?&
?
0?????????	
? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_148279d7?4
-?*
$?!
inputs?????????	
p
? ")?&
?
0?????????	
? ?
*__inference_dropout_2_layer_call_fn_148284W7?4
-?*
$?!
inputs?????????	
p 
? "??????????	?
*__inference_dropout_2_layer_call_fn_148289W7?4
-?*
$?!
inputs?????????	
p
? "??????????	?
E__inference_dropout_3_layer_call_and_return_conditional_losses_148942\3?0
)?&
 ?
inputs?????????	
p 
? "%?"
?
0?????????	
? ?
E__inference_dropout_3_layer_call_and_return_conditional_losses_148954\3?0
)?&
 ?
inputs?????????	
p
? "%?"
?
0?????????	
? }
*__inference_dropout_3_layer_call_fn_148959O3?0
)?&
 ?
inputs?????????	
p 
? "??????????	}
*__inference_dropout_3_layer_call_fn_148964O3?0
)?&
 ?
inputs?????????	
p
? "??????????	?
B__inference_lstm_6_layer_call_and_return_conditional_losses_147765?678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????	
? ?
B__inference_lstm_6_layer_call_and_return_conditional_losses_147916?678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????	
? ?
B__inference_lstm_6_layer_call_and_return_conditional_losses_148067q678??<
5?2
$?!
inputs?????????

 
p 

 
? ")?&
?
0?????????	
? ?
B__inference_lstm_6_layer_call_and_return_conditional_losses_148218q678??<
5?2
$?!
inputs?????????

 
p

 
? ")?&
?
0?????????	
? ?
'__inference_lstm_6_layer_call_fn_148229}678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????	?
'__inference_lstm_6_layer_call_fn_148240}678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????	?
'__inference_lstm_6_layer_call_fn_148251d678??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????	?
'__inference_lstm_6_layer_call_fn_148262d678??<
5?2
$?!
inputs?????????

 
p

 
? "??????????	?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148440}9:;O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p 

 
? "%?"
?
0?????????	
? ?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148591}9:;O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p

 
? "%?"
?
0?????????	
? ?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148742m9:;??<
5?2
$?!
inputs?????????	

 
p 

 
? "%?"
?
0?????????	
? ?
B__inference_lstm_7_layer_call_and_return_conditional_losses_148893m9:;??<
5?2
$?!
inputs?????????	

 
p

 
? "%?"
?
0?????????	
? ?
'__inference_lstm_7_layer_call_fn_148904p9:;O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p 

 
? "??????????	?
'__inference_lstm_7_layer_call_fn_148915p9:;O?L
E?B
4?1
/?,
inputs/0??????????????????	

 
p

 
? "??????????	?
'__inference_lstm_7_layer_call_fn_148926`9:;??<
5?2
$?!
inputs?????????	

 
p 

 
? "??????????	?
'__inference_lstm_7_layer_call_fn_148937`9:;??<
5?2
$?!
inputs?????????	

 
p

 
? "??????????	?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_149048?678??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p 
? "s?p
i?f
?
0/0?????????	
E?B
?
0/1/0?????????	
?
0/1/1?????????	
? ?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_149080?678??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p
? "s?p
i?f
?
0/0?????????	
E?B
?
0/1/0?????????	
?
0/1/1?????????	
? ?
,__inference_lstm_cell_6_layer_call_fn_149097?678??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p 
? "c?`
?
0?????????	
A?>
?
1/0?????????	
?
1/1?????????	?
,__inference_lstm_cell_6_layer_call_fn_149114?678??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????	
"?
states/1?????????	
p
? "c?`
?
0?????????	
A?>
?
1/0?????????	
?
1/1?????????	?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_149146?9:;??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????	
"?
states/1?????????	
p 
? "s?p
i?f
?
0/0?????????	
E?B
?
0/1/0?????????	
?
0/1/1?????????	
? ?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_149178?9:;??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????	
"?
states/1?????????	
p
? "s?p
i?f
?
0/0?????????	
E?B
?
0/1/0?????????	
?
0/1/1?????????	
? ?
,__inference_lstm_cell_7_layer_call_fn_149195?9:;??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????	
"?
states/1?????????	
p 
? "c?`
?
0?????????	
A?>
?
1/0?????????	
?
1/1?????????	?
,__inference_lstm_cell_7_layer_call_fn_149212?9:;??}
v?s
 ?
inputs?????????	
K?H
"?
states/0?????????	
"?
states/1?????????	
p
? "c?`
?
0?????????	
A?>
?
1/0?????????	
?
1/1?????????	?
E__inference_reshape_3_layer_call_and_return_conditional_losses_149011\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? }
*__inference_reshape_3_layer_call_fn_149016O/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_sequential_2_layer_call_and_return_conditional_losses_146856t	6789:;"#(<?9
2?/
%?"
input_3?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_146885t	6789:;"#(<?9
2?/
%?"
input_3?????????
p

 
? ")?&
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_147235s	6789:;"#(;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_147568s	6789:;"#(;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
-__inference_sequential_2_layer_call_fn_146313g	6789:;"#(<?9
2?/
%?"
input_3?????????
p 

 
? "???????????
-__inference_sequential_2_layer_call_fn_146827g	6789:;"#(<?9
2?/
%?"
input_3?????????
p

 
? "???????????
-__inference_sequential_2_layer_call_fn_147591f	6789:;"#(;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_2_layer_call_fn_147614f	6789:;"#(;?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_146916?	6789:;"#(??<
? 
5?2
0
input_3%?"
input_3?????????"9?6
4
	reshape_3'?$
	reshape_3?????????