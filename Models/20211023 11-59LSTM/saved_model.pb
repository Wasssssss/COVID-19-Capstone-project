??%
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
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ͧ$
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:  *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

: *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
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
lstm_5/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_5/lstm_cell_5/kernel
?
-lstm_5/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_5/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*4
shared_name%#lstm_5/lstm_cell_5/recurrent_kernel
?
7lstm_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_5/lstm_cell_5/recurrent_kernel*
_output_shapes
:	 ?*
dtype0
?
lstm_5/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_5/lstm_cell_5/bias
?
+lstm_5/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_5/bias*
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
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_5/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/m
?
4Adam/lstm_5/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
?
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m*
_output_shapes
:	 ?*
dtype0
?
Adam/lstm_5/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_5/lstm_cell_5/bias/m
?
2Adam/lstm_5/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
?
 Adam/lstm_5/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_5/lstm_cell_5/kernel/v
?
4Adam/lstm_5/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_5/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*;
shared_name,*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
?
>Adam/lstm_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v*
_output_shapes
:	 ?*
dtype0
?
Adam/lstm_5/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_5/lstm_cell_5/bias/v
?
2Adam/lstm_5/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_5/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value?+B?+ B?+
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
	optimizer
regularization_losses
trainable_variables
	variables
		keras_api


signatures
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
 	keras_api
?
!iter

"beta_1

#beta_2
	$decay
%learning_ratemRmSmTmU&mV'mW(mXvYvZv[v\&v]'v^(v_
 
1
&0
'1
(2
3
4
5
6
1
&0
'1
(2
3
4
5
6
?
)layer_regularization_losses
regularization_losses
*metrics
+layer_metrics
trainable_variables

,layers
	variables
-non_trainable_variables
 
?
.
state_size

&kernel
'recurrent_kernel
(bias
/regularization_losses
0	variables
1trainable_variables
2	keras_api
 
 

&0
'1
(2

&0
'1
(2
?
3layer_regularization_losses
regularization_losses
trainable_variables
4metrics
5layer_metrics

6states

7layers
	variables
8non_trainable_variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
9layer_regularization_losses
regularization_losses
:metrics
	variables
;layer_metrics
trainable_variables

<layers
=non_trainable_variables
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
>layer_regularization_losses
regularization_losses
?metrics
	variables
@layer_metrics
trainable_variables

Alayers
Bnon_trainable_variables
 
 
 
?
Clayer_regularization_losses
regularization_losses
Dmetrics
	variables
Elayer_metrics
trainable_variables

Flayers
Gnon_trainable_variables
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
VARIABLE_VALUElstm_5/lstm_cell_5/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_5/lstm_cell_5/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_5/lstm_cell_5/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

H0
 

0
1
2
3
 
 
 

&0
'1
(2

&0
'1
(2
?
Ilayer_regularization_losses
/regularization_losses
Jmetrics
0	variables
Klayer_metrics
1trainable_variables

Llayers
Mnon_trainable_variables
 
 
 
 

0
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
	Ntotal
	Ocount
P	variables
Q	keras_api
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
N0
O1

P	variables
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_5/lstm_cell_5/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_5/lstm_cell_5/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_3Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3lstm_5/lstm_cell_5/kernellstm_5/lstm_cell_5/bias#lstm_5/lstm_cell_5/recurrent_kerneldense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_280073
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_5/lstm_cell_5/kernel/Read/ReadVariableOp7lstm_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp+lstm_5/lstm_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_5/kernel/m/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_5/kernel/v/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_5/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
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
__inference__traced_save_282264
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_5/lstm_cell_5/kernel#lstm_5/lstm_cell_5/recurrent_kernellstm_5/lstm_cell_5/biastotalcountAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/m Adam/lstm_5/lstm_cell_5/kernel/m*Adam/lstm_5/lstm_cell_5/recurrent_kernel/mAdam/lstm_5/lstm_cell_5/bias/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v Adam/lstm_5/lstm_cell_5/kernel/v*Adam/lstm_5/lstm_cell_5/recurrent_kernel/vAdam/lstm_5/lstm_cell_5/bias/v*(
Tin!
2*
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
"__inference__traced_restore_282358??#
?
?
while_cond_281414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_281414___redundant_placeholder04
0while_while_cond_281414___redundant_placeholder14
0while_while_cond_281414___redundant_placeholder24
0while_while_cond_281414___redundant_placeholder3
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
?
!__inference__wrapped_model_278431
input_3P
=sequential_2_lstm_5_lstm_cell_5_split_readvariableop_resource:	?N
?sequential_2_lstm_5_lstm_cell_5_split_1_readvariableop_resource:	?J
7sequential_2_lstm_5_lstm_cell_5_readvariableop_resource:	 ?E
3sequential_2_dense_6_matmul_readvariableop_resource:  B
4sequential_2_dense_6_biasadd_readvariableop_resource: E
3sequential_2_dense_7_matmul_readvariableop_resource: B
4sequential_2_dense_7_biasadd_readvariableop_resource:
identity??+sequential_2/dense_6/BiasAdd/ReadVariableOp?*sequential_2/dense_6/MatMul/ReadVariableOp?+sequential_2/dense_7/BiasAdd/ReadVariableOp?*sequential_2/dense_7/MatMul/ReadVariableOp?.sequential_2/lstm_5/lstm_cell_5/ReadVariableOp?0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_1?0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_2?0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_3?4sequential_2/lstm_5/lstm_cell_5/split/ReadVariableOp?6sequential_2/lstm_5/lstm_cell_5/split_1/ReadVariableOp?sequential_2/lstm_5/whilem
sequential_2/lstm_5/ShapeShapeinput_3*
T0*
_output_shapes
:2
sequential_2/lstm_5/Shape?
'sequential_2/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_2/lstm_5/strided_slice/stack?
)sequential_2/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_5/strided_slice/stack_1?
)sequential_2/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_2/lstm_5/strided_slice/stack_2?
!sequential_2/lstm_5/strided_sliceStridedSlice"sequential_2/lstm_5/Shape:output:00sequential_2/lstm_5/strided_slice/stack:output:02sequential_2/lstm_5/strided_slice/stack_1:output:02sequential_2/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_2/lstm_5/strided_slice?
sequential_2/lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_2/lstm_5/zeros/mul/y?
sequential_2/lstm_5/zeros/mulMul*sequential_2/lstm_5/strided_slice:output:0(sequential_2/lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_5/zeros/mul?
 sequential_2/lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_2/lstm_5/zeros/Less/y?
sequential_2/lstm_5/zeros/LessLess!sequential_2/lstm_5/zeros/mul:z:0)sequential_2/lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_2/lstm_5/zeros/Less?
"sequential_2/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_2/lstm_5/zeros/packed/1?
 sequential_2/lstm_5/zeros/packedPack*sequential_2/lstm_5/strided_slice:output:0+sequential_2/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_2/lstm_5/zeros/packed?
sequential_2/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_2/lstm_5/zeros/Const?
sequential_2/lstm_5/zerosFill)sequential_2/lstm_5/zeros/packed:output:0(sequential_2/lstm_5/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_2/lstm_5/zeros?
!sequential_2/lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_2/lstm_5/zeros_1/mul/y?
sequential_2/lstm_5/zeros_1/mulMul*sequential_2/lstm_5/strided_slice:output:0*sequential_2/lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_5/zeros_1/mul?
"sequential_2/lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_2/lstm_5/zeros_1/Less/y?
 sequential_2/lstm_5/zeros_1/LessLess#sequential_2/lstm_5/zeros_1/mul:z:0+sequential_2/lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_2/lstm_5/zeros_1/Less?
$sequential_2/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_2/lstm_5/zeros_1/packed/1?
"sequential_2/lstm_5/zeros_1/packedPack*sequential_2/lstm_5/strided_slice:output:0-sequential_2/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_2/lstm_5/zeros_1/packed?
!sequential_2/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_2/lstm_5/zeros_1/Const?
sequential_2/lstm_5/zeros_1Fill+sequential_2/lstm_5/zeros_1/packed:output:0*sequential_2/lstm_5/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
sequential_2/lstm_5/zeros_1?
"sequential_2/lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_2/lstm_5/transpose/perm?
sequential_2/lstm_5/transpose	Transposeinput_3+sequential_2/lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
sequential_2/lstm_5/transpose?
sequential_2/lstm_5/Shape_1Shape!sequential_2/lstm_5/transpose:y:0*
T0*
_output_shapes
:2
sequential_2/lstm_5/Shape_1?
)sequential_2/lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_5/strided_slice_1/stack?
+sequential_2/lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_1/stack_1?
+sequential_2/lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_1/stack_2?
#sequential_2/lstm_5/strided_slice_1StridedSlice$sequential_2/lstm_5/Shape_1:output:02sequential_2/lstm_5/strided_slice_1/stack:output:04sequential_2/lstm_5/strided_slice_1/stack_1:output:04sequential_2/lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_2/lstm_5/strided_slice_1?
/sequential_2/lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_2/lstm_5/TensorArrayV2/element_shape?
!sequential_2/lstm_5/TensorArrayV2TensorListReserve8sequential_2/lstm_5/TensorArrayV2/element_shape:output:0,sequential_2/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_2/lstm_5/TensorArrayV2?
Isequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Isequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_5/transpose:y:0Rsequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor?
)sequential_2/lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_2/lstm_5/strided_slice_2/stack?
+sequential_2/lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_2/stack_1?
+sequential_2/lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_2/stack_2?
#sequential_2/lstm_5/strided_slice_2StridedSlice!sequential_2/lstm_5/transpose:y:02sequential_2/lstm_5/strided_slice_2/stack:output:04sequential_2/lstm_5/strided_slice_2/stack_1:output:04sequential_2/lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2%
#sequential_2/lstm_5/strided_slice_2?
/sequential_2/lstm_5/lstm_cell_5/ones_like/ShapeShape"sequential_2/lstm_5/zeros:output:0*
T0*
_output_shapes
:21
/sequential_2/lstm_5/lstm_cell_5/ones_like/Shape?
/sequential_2/lstm_5/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_2/lstm_5/lstm_cell_5/ones_like/Const?
)sequential_2/lstm_5/lstm_cell_5/ones_likeFill8sequential_2/lstm_5/lstm_cell_5/ones_like/Shape:output:08sequential_2/lstm_5/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/lstm_cell_5/ones_like?
/sequential_2/lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_2/lstm_5/lstm_cell_5/split/split_dim?
4sequential_2/lstm_5/lstm_cell_5/split/ReadVariableOpReadVariableOp=sequential_2_lstm_5_lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype026
4sequential_2/lstm_5/lstm_cell_5/split/ReadVariableOp?
%sequential_2/lstm_5/lstm_cell_5/splitSplit8sequential_2/lstm_5/lstm_cell_5/split/split_dim:output:0<sequential_2/lstm_5/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2'
%sequential_2/lstm_5/lstm_cell_5/split?
&sequential_2/lstm_5/lstm_cell_5/MatMulMatMul,sequential_2/lstm_5/strided_slice_2:output:0.sequential_2/lstm_5/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2(
&sequential_2/lstm_5/lstm_cell_5/MatMul?
(sequential_2/lstm_5/lstm_cell_5/MatMul_1MatMul,sequential_2/lstm_5/strided_slice_2:output:0.sequential_2/lstm_5/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_1?
(sequential_2/lstm_5/lstm_cell_5/MatMul_2MatMul,sequential_2/lstm_5/strided_slice_2:output:0.sequential_2/lstm_5/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_2?
(sequential_2/lstm_5/lstm_cell_5/MatMul_3MatMul,sequential_2/lstm_5/strided_slice_2:output:0.sequential_2/lstm_5/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_3?
1sequential_2/lstm_5/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_2/lstm_5/lstm_cell_5/split_1/split_dim?
6sequential_2/lstm_5/lstm_cell_5/split_1/ReadVariableOpReadVariableOp?sequential_2_lstm_5_lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_2/lstm_5/lstm_cell_5/split_1/ReadVariableOp?
'sequential_2/lstm_5/lstm_cell_5/split_1Split:sequential_2/lstm_5/lstm_cell_5/split_1/split_dim:output:0>sequential_2/lstm_5/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2)
'sequential_2/lstm_5/lstm_cell_5/split_1?
'sequential_2/lstm_5/lstm_cell_5/BiasAddBiasAdd0sequential_2/lstm_5/lstm_cell_5/MatMul:product:00sequential_2/lstm_5/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2)
'sequential_2/lstm_5/lstm_cell_5/BiasAdd?
)sequential_2/lstm_5/lstm_cell_5/BiasAdd_1BiasAdd2sequential_2/lstm_5/lstm_cell_5/MatMul_1:product:00sequential_2/lstm_5/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/lstm_cell_5/BiasAdd_1?
)sequential_2/lstm_5/lstm_cell_5/BiasAdd_2BiasAdd2sequential_2/lstm_5/lstm_cell_5/MatMul_2:product:00sequential_2/lstm_5/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/lstm_cell_5/BiasAdd_2?
)sequential_2/lstm_5/lstm_cell_5/BiasAdd_3BiasAdd2sequential_2/lstm_5/lstm_cell_5/MatMul_3:product:00sequential_2/lstm_5/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/lstm_cell_5/BiasAdd_3?
#sequential_2/lstm_5/lstm_cell_5/mulMul"sequential_2/lstm_5/zeros:output:02sequential_2/lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2%
#sequential_2/lstm_5/lstm_cell_5/mul?
%sequential_2/lstm_5/lstm_cell_5/mul_1Mul"sequential_2/lstm_5/zeros:output:02sequential_2/lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/mul_1?
%sequential_2/lstm_5/lstm_cell_5/mul_2Mul"sequential_2/lstm_5/zeros:output:02sequential_2/lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/mul_2?
%sequential_2/lstm_5/lstm_cell_5/mul_3Mul"sequential_2/lstm_5/zeros:output:02sequential_2/lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/mul_3?
.sequential_2/lstm_5/lstm_cell_5/ReadVariableOpReadVariableOp7sequential_2_lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype020
.sequential_2/lstm_5/lstm_cell_5/ReadVariableOp?
3sequential_2/lstm_5/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_2/lstm_5/lstm_cell_5/strided_slice/stack?
5sequential_2/lstm_5/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_2/lstm_5/lstm_cell_5/strided_slice/stack_1?
5sequential_2/lstm_5/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_2/lstm_5/lstm_cell_5/strided_slice/stack_2?
-sequential_2/lstm_5/lstm_cell_5/strided_sliceStridedSlice6sequential_2/lstm_5/lstm_cell_5/ReadVariableOp:value:0<sequential_2/lstm_5/lstm_cell_5/strided_slice/stack:output:0>sequential_2/lstm_5/lstm_cell_5/strided_slice/stack_1:output:0>sequential_2/lstm_5/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2/
-sequential_2/lstm_5/lstm_cell_5/strided_slice?
(sequential_2/lstm_5/lstm_cell_5/MatMul_4MatMul'sequential_2/lstm_5/lstm_cell_5/mul:z:06sequential_2/lstm_5/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_4?
#sequential_2/lstm_5/lstm_cell_5/addAddV20sequential_2/lstm_5/lstm_cell_5/BiasAdd:output:02sequential_2/lstm_5/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2%
#sequential_2/lstm_5/lstm_cell_5/add?
'sequential_2/lstm_5/lstm_cell_5/SigmoidSigmoid'sequential_2/lstm_5/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2)
'sequential_2/lstm_5/lstm_cell_5/Sigmoid?
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_1ReadVariableOp7sequential_2_lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_1?
5sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack?
7sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   29
7sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack_1?
7sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack_2?
/sequential_2/lstm_5/lstm_cell_5/strided_slice_1StridedSlice8sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_1:value:0>sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack:output:0@sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack_1:output:0@sequential_2/lstm_5/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_2/lstm_5/lstm_cell_5/strided_slice_1?
(sequential_2/lstm_5/lstm_cell_5/MatMul_5MatMul)sequential_2/lstm_5/lstm_cell_5/mul_1:z:08sequential_2/lstm_5/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_5?
%sequential_2/lstm_5/lstm_cell_5/add_1AddV22sequential_2/lstm_5/lstm_cell_5/BiasAdd_1:output:02sequential_2/lstm_5/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/add_1?
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_1Sigmoid)sequential_2/lstm_5/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_1?
%sequential_2/lstm_5/lstm_cell_5/mul_4Mul-sequential_2/lstm_5/lstm_cell_5/Sigmoid_1:y:0$sequential_2/lstm_5/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/mul_4?
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_2ReadVariableOp7sequential_2_lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_2?
5sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack?
7sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   29
7sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack_1?
7sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack_2?
/sequential_2/lstm_5/lstm_cell_5/strided_slice_2StridedSlice8sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_2:value:0>sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack:output:0@sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack_1:output:0@sequential_2/lstm_5/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_2/lstm_5/lstm_cell_5/strided_slice_2?
(sequential_2/lstm_5/lstm_cell_5/MatMul_6MatMul)sequential_2/lstm_5/lstm_cell_5/mul_2:z:08sequential_2/lstm_5/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_6?
%sequential_2/lstm_5/lstm_cell_5/add_2AddV22sequential_2/lstm_5/lstm_cell_5/BiasAdd_2:output:02sequential_2/lstm_5/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/add_2?
$sequential_2/lstm_5/lstm_cell_5/ReluRelu)sequential_2/lstm_5/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2&
$sequential_2/lstm_5/lstm_cell_5/Relu?
%sequential_2/lstm_5/lstm_cell_5/mul_5Mul+sequential_2/lstm_5/lstm_cell_5/Sigmoid:y:02sequential_2/lstm_5/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/mul_5?
%sequential_2/lstm_5/lstm_cell_5/add_3AddV2)sequential_2/lstm_5/lstm_cell_5/mul_4:z:0)sequential_2/lstm_5/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/add_3?
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_3ReadVariableOp7sequential_2_lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype022
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_3?
5sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   27
5sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack?
7sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack_1?
7sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack_2?
/sequential_2/lstm_5/lstm_cell_5/strided_slice_3StridedSlice8sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_3:value:0>sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack:output:0@sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack_1:output:0@sequential_2/lstm_5/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask21
/sequential_2/lstm_5/lstm_cell_5/strided_slice_3?
(sequential_2/lstm_5/lstm_cell_5/MatMul_7MatMul)sequential_2/lstm_5/lstm_cell_5/mul_3:z:08sequential_2/lstm_5/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential_2/lstm_5/lstm_cell_5/MatMul_7?
%sequential_2/lstm_5/lstm_cell_5/add_4AddV22sequential_2/lstm_5/lstm_cell_5/BiasAdd_3:output:02sequential_2/lstm_5/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/add_4?
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_2Sigmoid)sequential_2/lstm_5/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/lstm_cell_5/Sigmoid_2?
&sequential_2/lstm_5/lstm_cell_5/Relu_1Relu)sequential_2/lstm_5/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2(
&sequential_2/lstm_5/lstm_cell_5/Relu_1?
%sequential_2/lstm_5/lstm_cell_5/mul_6Mul-sequential_2/lstm_5/lstm_cell_5/Sigmoid_2:y:04sequential_2/lstm_5/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2'
%sequential_2/lstm_5/lstm_cell_5/mul_6?
1sequential_2/lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    23
1sequential_2/lstm_5/TensorArrayV2_1/element_shape?
#sequential_2/lstm_5/TensorArrayV2_1TensorListReserve:sequential_2/lstm_5/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_2/lstm_5/TensorArrayV2_1v
sequential_2/lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_2/lstm_5/time?
,sequential_2/lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_2/lstm_5/while/maximum_iterations?
&sequential_2/lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_2/lstm_5/while/loop_counter?
sequential_2/lstm_5/whileWhile/sequential_2/lstm_5/while/loop_counter:output:05sequential_2/lstm_5/while/maximum_iterations:output:0!sequential_2/lstm_5/time:output:0,sequential_2/lstm_5/TensorArrayV2_1:handle:0"sequential_2/lstm_5/zeros:output:0$sequential_2/lstm_5/zeros_1:output:0,sequential_2/lstm_5/strided_slice_1:output:0Ksequential_2/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_2_lstm_5_lstm_cell_5_split_readvariableop_resource?sequential_2_lstm_5_lstm_cell_5_split_1_readvariableop_resource7sequential_2_lstm_5_lstm_cell_5_readvariableop_resource*
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
%sequential_2_lstm_5_while_body_278282*1
cond)R'
%sequential_2_lstm_5_while_cond_278281*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
sequential_2/lstm_5/while?
Dsequential_2/lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2F
Dsequential_2/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_2/lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_5/while:output:3Msequential_2/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype028
6sequential_2/lstm_5/TensorArrayV2Stack/TensorListStack?
)sequential_2/lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_2/lstm_5/strided_slice_3/stack?
+sequential_2/lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_2/lstm_5/strided_slice_3/stack_1?
+sequential_2/lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_2/lstm_5/strided_slice_3/stack_2?
#sequential_2/lstm_5/strided_slice_3StridedSlice?sequential_2/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_5/strided_slice_3/stack:output:04sequential_2/lstm_5/strided_slice_3/stack_1:output:04sequential_2/lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2%
#sequential_2/lstm_5/strided_slice_3?
$sequential_2/lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_2/lstm_5/transpose_1/perm?
sequential_2/lstm_5/transpose_1	Transpose?sequential_2/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2!
sequential_2/lstm_5/transpose_1?
sequential_2/lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_2/lstm_5/runtime?
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02,
*sequential_2/dense_6/MatMul/ReadVariableOp?
sequential_2/dense_6/MatMulMatMul,sequential_2/lstm_5/strided_slice_3:output:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_2/dense_6/MatMul?
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_2/dense_6/BiasAdd/ReadVariableOp?
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_2/dense_6/BiasAdd?
sequential_2/dense_6/ReluRelu%sequential_2/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_2/dense_6/Relu?
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*sequential_2/dense_7/MatMul/ReadVariableOp?
sequential_2/dense_7/MatMulMatMul'sequential_2/dense_6/Relu:activations:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_2/dense_7/MatMul?
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_2/dense_7/BiasAdd/ReadVariableOp?
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_2/dense_7/BiasAdd?
sequential_2/reshape_3/ShapeShape%sequential_2/dense_7/BiasAdd:output:0*
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
sequential_2/reshape_3/ReshapeReshape%sequential_2/dense_7/BiasAdd:output:0-sequential_2/reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2 
sequential_2/reshape_3/Reshape?
IdentityIdentity'sequential_2/reshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp/^sequential_2/lstm_5/lstm_cell_5/ReadVariableOp1^sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_11^sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_21^sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_35^sequential_2/lstm_5/lstm_cell_5/split/ReadVariableOp7^sequential_2/lstm_5/lstm_cell_5/split_1/ReadVariableOp^sequential_2/lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2`
.sequential_2/lstm_5/lstm_cell_5/ReadVariableOp.sequential_2/lstm_5/lstm_cell_5/ReadVariableOp2d
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_10sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_12d
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_20sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_22d
0sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_30sequential_2/lstm_5/lstm_cell_5/ReadVariableOp_32l
4sequential_2/lstm_5/lstm_cell_5/split/ReadVariableOp4sequential_2/lstm_5/lstm_cell_5/split/ReadVariableOp2p
6sequential_2/lstm_5/lstm_cell_5/split_1/ReadVariableOp6sequential_2/lstm_5/lstm_cell_5/split_1/ReadVariableOp26
sequential_2/lstm_5/whilesequential_2/lstm_5/while:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?v
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_278788

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
seed2???2&
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
seed2Įm2(
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
seed2???2(
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
??
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_279890

inputs<
)lstm_cell_5_split_readvariableop_resource:	?:
+lstm_cell_5_split_1_readvariableop_resource:	?6
#lstm_cell_5_readvariableop_resource:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_5/ReadVariableOp?lstm_cell_5/ReadVariableOp_1?lstm_cell_5/ReadVariableOp_2?lstm_cell_5/ReadVariableOp_3? lstm_cell_5/split/ReadVariableOp?"lstm_cell_5/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_5/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_5/ones_like/Const?
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout/Const?
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Mul?
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shape?
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2κ?22
0lstm_cell_5/dropout/random_uniform/RandomUniform?
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_5/dropout/GreaterEqual/y?
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_5/dropout/GreaterEqual?
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Cast?
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_1/Const?
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Mul?
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shape?
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform?
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_1/GreaterEqual/y?
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_1/GreaterEqual?
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Cast?
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_2/Const?
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Mul?
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shape?
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform?
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_2/GreaterEqual/y?
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_2/GreaterEqual?
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Cast?
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_3/Const?
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Mul?
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shape?
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform?
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_3/GreaterEqual/y?
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_3/GreaterEqual?
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Cast?
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Mul_1|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_5/split/ReadVariableOp?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_5/split?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul?
lstm_cell_5/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_1?
lstm_cell_5/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_2?
lstm_cell_5/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_3?
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim?
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/split_1/ReadVariableOp?
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_5/split_1?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd?
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_1?
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_2?
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_3?
lstm_cell_5/mulMulzeros:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul?
lstm_cell_5/mul_1Mulzeros:output:0lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_1?
lstm_cell_5/mul_2Mulzeros:output:0lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_2?
lstm_cell_5/mul_3Mulzeros:output:0lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_3?
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp?
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack?
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice/stack_1?
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2?
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice?
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul:z:0"lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_4?
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add|
lstm_cell_5/SigmoidSigmoidlstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid?
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_1?
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice_1/stack?
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_5/strided_slice_1/stack_1?
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2?
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1?
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_1:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_5?
lstm_cell_5/add_1AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_4?
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_2?
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_5/strided_slice_2/stack?
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_5/strided_slice_2/stack_1?
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2?
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2?
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_2:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_6?
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_2u
lstm_cell_5/ReluRelulstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu?
lstm_cell_5/mul_5Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_5?
lstm_cell_5/add_3AddV2lstm_cell_5/mul_4:z:0lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_3?
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_3?
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_5/strided_slice_3/stack?
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1?
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2?
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3?
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_3:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_7?
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_4?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu_1?
lstm_cell_5/mul_6Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
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
while_body_279725*
condR
while_cond_279724*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
%sequential_2_lstm_5_while_body_278282D
@sequential_2_lstm_5_while_sequential_2_lstm_5_while_loop_counterJ
Fsequential_2_lstm_5_while_sequential_2_lstm_5_while_maximum_iterations)
%sequential_2_lstm_5_while_placeholder+
'sequential_2_lstm_5_while_placeholder_1+
'sequential_2_lstm_5_while_placeholder_2+
'sequential_2_lstm_5_while_placeholder_3C
?sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1_0
{sequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor_0X
Esequential_2_lstm_5_while_lstm_cell_5_split_readvariableop_resource_0:	?V
Gsequential_2_lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0:	?R
?sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource_0:	 ?&
"sequential_2_lstm_5_while_identity(
$sequential_2_lstm_5_while_identity_1(
$sequential_2_lstm_5_while_identity_2(
$sequential_2_lstm_5_while_identity_3(
$sequential_2_lstm_5_while_identity_4(
$sequential_2_lstm_5_while_identity_5A
=sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1}
ysequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensorV
Csequential_2_lstm_5_while_lstm_cell_5_split_readvariableop_resource:	?T
Esequential_2_lstm_5_while_lstm_cell_5_split_1_readvariableop_resource:	?P
=sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource:	 ???4sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp?6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_1?6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_2?6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_3?:sequential_2/lstm_5/while/lstm_cell_5/split/ReadVariableOp?<sequential_2/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp?
Ksequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_5_while_placeholderTsequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02?
=sequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem?
5sequential_2/lstm_5/while/lstm_cell_5/ones_like/ShapeShape'sequential_2_lstm_5_while_placeholder_2*
T0*
_output_shapes
:27
5sequential_2/lstm_5/while/lstm_cell_5/ones_like/Shape?
5sequential_2/lstm_5/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5sequential_2/lstm_5/while/lstm_cell_5/ones_like/Const?
/sequential_2/lstm_5/while/lstm_cell_5/ones_likeFill>sequential_2/lstm_5/while/lstm_cell_5/ones_like/Shape:output:0>sequential_2/lstm_5/while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_2/lstm_5/while/lstm_cell_5/ones_like?
5sequential_2/lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_2/lstm_5/while/lstm_cell_5/split/split_dim?
:sequential_2/lstm_5/while/lstm_cell_5/split/ReadVariableOpReadVariableOpEsequential_2_lstm_5_while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02<
:sequential_2/lstm_5/while/lstm_cell_5/split/ReadVariableOp?
+sequential_2/lstm_5/while/lstm_cell_5/splitSplit>sequential_2/lstm_5/while/lstm_cell_5/split/split_dim:output:0Bsequential_2/lstm_5/while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2-
+sequential_2/lstm_5/while/lstm_cell_5/split?
,sequential_2/lstm_5/while/lstm_cell_5/MatMulMatMulDsequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_2/lstm_5/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2.
,sequential_2/lstm_5/while/lstm_cell_5/MatMul?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_1MatMulDsequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_2/lstm_5/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_1?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_2MatMulDsequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_2/lstm_5/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_2?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_3MatMulDsequential_2/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_2/lstm_5/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_3?
7sequential_2/lstm_5/while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_2/lstm_5/while/lstm_cell_5/split_1/split_dim?
<sequential_2/lstm_5/while/lstm_cell_5/split_1/ReadVariableOpReadVariableOpGsequential_2_lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_2/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp?
-sequential_2/lstm_5/while/lstm_cell_5/split_1Split@sequential_2/lstm_5/while/lstm_cell_5/split_1/split_dim:output:0Dsequential_2/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2/
-sequential_2/lstm_5/while/lstm_cell_5/split_1?
-sequential_2/lstm_5/while/lstm_cell_5/BiasAddBiasAdd6sequential_2/lstm_5/while/lstm_cell_5/MatMul:product:06sequential_2/lstm_5/while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2/
-sequential_2/lstm_5/while/lstm_cell_5/BiasAdd?
/sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_1BiasAdd8sequential_2/lstm_5/while/lstm_cell_5/MatMul_1:product:06sequential_2/lstm_5/while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 21
/sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_1?
/sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_2BiasAdd8sequential_2/lstm_5/while/lstm_cell_5/MatMul_2:product:06sequential_2/lstm_5/while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 21
/sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_2?
/sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_3BiasAdd8sequential_2/lstm_5/while/lstm_cell_5/MatMul_3:product:06sequential_2/lstm_5/while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 21
/sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_3?
)sequential_2/lstm_5/while/lstm_cell_5/mulMul'sequential_2_lstm_5_while_placeholder_28sequential_2/lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/while/lstm_cell_5/mul?
+sequential_2/lstm_5/while/lstm_cell_5/mul_1Mul'sequential_2_lstm_5_while_placeholder_28sequential_2/lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_1?
+sequential_2/lstm_5/while/lstm_cell_5/mul_2Mul'sequential_2_lstm_5_while_placeholder_28sequential_2/lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_2?
+sequential_2/lstm_5/while/lstm_cell_5/mul_3Mul'sequential_2_lstm_5_while_placeholder_28sequential_2/lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_3?
4sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOpReadVariableOp?sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype026
4sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp?
9sequential_2/lstm_5/while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack?
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack_1?
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack_2?
3sequential_2/lstm_5/while/lstm_cell_5/strided_sliceStridedSlice<sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp:value:0Bsequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack:output:0Dsequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack_1:output:0Dsequential_2/lstm_5/while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask25
3sequential_2/lstm_5/while/lstm_cell_5/strided_slice?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_4MatMul-sequential_2/lstm_5/while/lstm_cell_5/mul:z:0<sequential_2/lstm_5/while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_4?
)sequential_2/lstm_5/while/lstm_cell_5/addAddV26sequential_2/lstm_5/while/lstm_cell_5/BiasAdd:output:08sequential_2/lstm_5/while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2+
)sequential_2/lstm_5/while/lstm_cell_5/add?
-sequential_2/lstm_5/while/lstm_cell_5/SigmoidSigmoid-sequential_2/lstm_5/while/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2/
-sequential_2/lstm_5/while/lstm_cell_5/Sigmoid?
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_1ReadVariableOp?sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_1?
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack_1?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack_2?
5sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1StridedSlice>sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_1:value:0Dsequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack:output:0Fsequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack_1:output:0Fsequential_2/lstm_5/while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_5MatMul/sequential_2/lstm_5/while/lstm_cell_5/mul_1:z:0>sequential_2/lstm_5/while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_5?
+sequential_2/lstm_5/while/lstm_cell_5/add_1AddV28sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_1:output:08sequential_2/lstm_5/while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/add_1?
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid/sequential_2/lstm_5/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_1?
+sequential_2/lstm_5/while/lstm_cell_5/mul_4Mul3sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_1:y:0'sequential_2_lstm_5_while_placeholder_3*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_4?
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_2ReadVariableOp?sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_2?
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2=
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack_1?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack_2?
5sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2StridedSlice>sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_2:value:0Dsequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack:output:0Fsequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack_1:output:0Fsequential_2/lstm_5/while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_6MatMul/sequential_2/lstm_5/while/lstm_cell_5/mul_2:z:0>sequential_2/lstm_5/while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_6?
+sequential_2/lstm_5/while/lstm_cell_5/add_2AddV28sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_2:output:08sequential_2/lstm_5/while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/add_2?
*sequential_2/lstm_5/while/lstm_cell_5/ReluRelu/sequential_2/lstm_5/while/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2,
*sequential_2/lstm_5/while/lstm_cell_5/Relu?
+sequential_2/lstm_5/while/lstm_cell_5/mul_5Mul1sequential_2/lstm_5/while/lstm_cell_5/Sigmoid:y:08sequential_2/lstm_5/while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_5?
+sequential_2/lstm_5/while/lstm_cell_5/add_3AddV2/sequential_2/lstm_5/while/lstm_cell_5/mul_4:z:0/sequential_2/lstm_5/while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/add_3?
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_3ReadVariableOp?sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype028
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_3?
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2=
;sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack_1?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack_2?
5sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3StridedSlice>sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_3:value:0Dsequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack:output:0Fsequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack_1:output:0Fsequential_2/lstm_5/while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask27
5sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3?
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_7MatMul/sequential_2/lstm_5/while/lstm_cell_5/mul_3:z:0>sequential_2/lstm_5/while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 20
.sequential_2/lstm_5/while/lstm_cell_5/MatMul_7?
+sequential_2/lstm_5/while/lstm_cell_5/add_4AddV28sequential_2/lstm_5/while/lstm_cell_5/BiasAdd_3:output:08sequential_2/lstm_5/while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/add_4?
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid/sequential_2/lstm_5/while/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 21
/sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_2?
,sequential_2/lstm_5/while/lstm_cell_5/Relu_1Relu/sequential_2/lstm_5/while/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2.
,sequential_2/lstm_5/while/lstm_cell_5/Relu_1?
+sequential_2/lstm_5/while/lstm_cell_5/mul_6Mul3sequential_2/lstm_5/while/lstm_cell_5/Sigmoid_2:y:0:sequential_2/lstm_5/while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2-
+sequential_2/lstm_5/while/lstm_cell_5/mul_6?
>sequential_2/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_5_while_placeholder_1%sequential_2_lstm_5_while_placeholder/sequential_2/lstm_5/while/lstm_cell_5/mul_6:z:0*
_output_shapes
: *
element_dtype02@
>sequential_2/lstm_5/while/TensorArrayV2Write/TensorListSetItem?
sequential_2/lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_2/lstm_5/while/add/y?
sequential_2/lstm_5/while/addAddV2%sequential_2_lstm_5_while_placeholder(sequential_2/lstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_2/lstm_5/while/add?
!sequential_2/lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_2/lstm_5/while/add_1/y?
sequential_2/lstm_5/while/add_1AddV2@sequential_2_lstm_5_while_sequential_2_lstm_5_while_loop_counter*sequential_2/lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_2/lstm_5/while/add_1?
"sequential_2/lstm_5/while/IdentityIdentity#sequential_2/lstm_5/while/add_1:z:0^sequential_2/lstm_5/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_2/lstm_5/while/Identity?
$sequential_2/lstm_5/while/Identity_1IdentityFsequential_2_lstm_5_while_sequential_2_lstm_5_while_maximum_iterations^sequential_2/lstm_5/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_5/while/Identity_1?
$sequential_2/lstm_5/while/Identity_2Identity!sequential_2/lstm_5/while/add:z:0^sequential_2/lstm_5/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_5/while/Identity_2?
$sequential_2/lstm_5/while/Identity_3IdentityNsequential_2/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_5/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_2/lstm_5/while/Identity_3?
$sequential_2/lstm_5/while/Identity_4Identity/sequential_2/lstm_5/while/lstm_cell_5/mul_6:z:0^sequential_2/lstm_5/while/NoOp*
T0*'
_output_shapes
:????????? 2&
$sequential_2/lstm_5/while/Identity_4?
$sequential_2/lstm_5/while/Identity_5Identity/sequential_2/lstm_5/while/lstm_cell_5/add_3:z:0^sequential_2/lstm_5/while/NoOp*
T0*'
_output_shapes
:????????? 2&
$sequential_2/lstm_5/while/Identity_5?
sequential_2/lstm_5/while/NoOpNoOp5^sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp7^sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_17^sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_27^sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_3;^sequential_2/lstm_5/while/lstm_cell_5/split/ReadVariableOp=^sequential_2/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_2/lstm_5/while/NoOp"Q
"sequential_2_lstm_5_while_identity+sequential_2/lstm_5/while/Identity:output:0"U
$sequential_2_lstm_5_while_identity_1-sequential_2/lstm_5/while/Identity_1:output:0"U
$sequential_2_lstm_5_while_identity_2-sequential_2/lstm_5/while/Identity_2:output:0"U
$sequential_2_lstm_5_while_identity_3-sequential_2/lstm_5/while/Identity_3:output:0"U
$sequential_2_lstm_5_while_identity_4-sequential_2/lstm_5/while/Identity_4:output:0"U
$sequential_2_lstm_5_while_identity_5-sequential_2/lstm_5/while/Identity_5:output:0"?
=sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource?sequential_2_lstm_5_while_lstm_cell_5_readvariableop_resource_0"?
Esequential_2_lstm_5_while_lstm_cell_5_split_1_readvariableop_resourceGsequential_2_lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0"?
Csequential_2_lstm_5_while_lstm_cell_5_split_readvariableop_resourceEsequential_2_lstm_5_while_lstm_cell_5_split_readvariableop_resource_0"?
=sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1?sequential_2_lstm_5_while_sequential_2_lstm_5_strided_slice_1_0"?
ysequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2l
4sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp4sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp2p
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_16sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_12p
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_26sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_22p
6sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_36sequential_2/lstm_5/while/lstm_cell_5/ReadVariableOp_32x
:sequential_2/lstm_5/while/lstm_cell_5/split/ReadVariableOp:sequential_2/lstm_5/while/lstm_cell_5/split/ReadVariableOp2|
<sequential_2/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp<sequential_2/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
lstm_5_while_cond_280517*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_280517___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_280517___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_280517___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_280517___redundant_placeholder3
lstm_5_while_identity
?
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*(
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
lstm_5_while_cond_280220*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_280220___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_280220___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_280220___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_280220___redundant_placeholder3
lstm_5_while_identity
?
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*(
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
?
while_cond_278568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_278568___redundant_placeholder04
0while_while_cond_278568___redundant_placeholder14
0while_while_cond_278568___redundant_placeholder24
0while_while_cond_278568___redundant_placeholder3
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
?%
?
while_body_278569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_5_278593_0:	?)
while_lstm_cell_5_278595_0:	?-
while_lstm_cell_5_278597_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_5_278593:	?'
while_lstm_cell_5_278595:	?+
while_lstm_cell_5_278597:	 ???)while/lstm_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_278593_0while_lstm_cell_5_278595_0while_lstm_cell_5_278597_0*
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_2785552+
)while/lstm_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
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
while_lstm_cell_5_278593while_lstm_cell_5_278593_0"6
while_lstm_cell_5_278595while_lstm_cell_5_278595_0"6
while_lstm_cell_5_278597while_lstm_cell_5_278597_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
(__inference_dense_7_layer_call_fn_281884

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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2794992
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
ן
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_279464

inputs<
)lstm_cell_5_split_readvariableop_resource:	?:
+lstm_cell_5_split_1_readvariableop_resource:	?6
#lstm_cell_5_readvariableop_resource:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_5/ReadVariableOp?lstm_cell_5/ReadVariableOp_1?lstm_cell_5/ReadVariableOp_2?lstm_cell_5/ReadVariableOp_3? lstm_cell_5/split/ReadVariableOp?"lstm_cell_5/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_5/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_5/ones_like/Const?
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/ones_like|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_5/split/ReadVariableOp?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_5/split?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul?
lstm_cell_5/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_1?
lstm_cell_5/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_2?
lstm_cell_5/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_3?
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim?
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/split_1/ReadVariableOp?
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_5/split_1?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd?
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_1?
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_2?
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_3?
lstm_cell_5/mulMulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul?
lstm_cell_5/mul_1Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_1?
lstm_cell_5/mul_2Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_2?
lstm_cell_5/mul_3Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_3?
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp?
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack?
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice/stack_1?
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2?
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice?
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul:z:0"lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_4?
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add|
lstm_cell_5/SigmoidSigmoidlstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid?
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_1?
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice_1/stack?
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_5/strided_slice_1/stack_1?
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2?
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1?
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_1:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_5?
lstm_cell_5/add_1AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_4?
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_2?
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_5/strided_slice_2/stack?
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_5/strided_slice_2/stack_1?
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2?
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2?
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_2:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_6?
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_2u
lstm_cell_5/ReluRelulstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu?
lstm_cell_5/mul_5Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_5?
lstm_cell_5/add_3AddV2lstm_cell_5/mul_4:z:0lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_3?
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_3?
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_5/strided_slice_3/stack?
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1?
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2?
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3?
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_3:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_7?
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_4?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu_1?
lstm_cell_5/mul_6Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
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
while_body_279331*
condR
while_cond_279330*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_279330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_279330___redundant_placeholder04
0while_while_cond_279330___redundant_placeholder14
0while_while_cond_279330___redundant_placeholder24
0while_while_cond_279330___redundant_placeholder3
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
?	
while_body_279725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_5_split_readvariableop_resource_0:	?B
3while_lstm_cell_5_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_5_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_5_split_readvariableop_resource:	?@
1while_lstm_cell_5_split_1_readvariableop_resource:	?<
)while_lstm_cell_5_readvariableop_resource:	 ??? while/lstm_cell_5/ReadVariableOp?"while/lstm_cell_5/ReadVariableOp_1?"while/lstm_cell_5/ReadVariableOp_2?"while/lstm_cell_5/ReadVariableOp_3?&while/lstm_cell_5/split/ReadVariableOp?(while/lstm_cell_5/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_5/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape?
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_5/ones_like/Const?
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/ones_like?
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2!
while/lstm_cell_5/dropout/Const?
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/dropout/Mul?
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape?
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform?
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_5/dropout/GreaterEqual/y?
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_5/dropout/GreaterEqual?
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_5/dropout/Cast?
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout/Mul_1?
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_1/Const?
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_1/Mul?
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape?
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y?
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_1/GreaterEqual?
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_1/Cast?
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_1/Mul_1?
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_2/Const?
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_2/Mul?
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape?
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y?
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_2/GreaterEqual?
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_2/Cast?
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_2/Mul_1?
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_3/Const?
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_3/Mul?
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape?
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y?
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_3/GreaterEqual?
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_3/Cast?
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_3/Mul_1?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul?
while/lstm_cell_5/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_2?
while/lstm_cell_5/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_3?
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dim?
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOp?
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_5/split_1?
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd?
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_1?
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_2?
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_3?
while/lstm_cell_5/mulMulwhile_placeholder_2#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul?
while/lstm_cell_5/mul_1Mulwhile_placeholder_2%while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/mul_2Mulwhile_placeholder_2%while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/mul_3Mulwhile_placeholder_2%while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_3?
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_5/ReadVariableOp?
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack?
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice/stack_1?
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2?
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice?
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_4?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add?
while/lstm_cell_5/SigmoidSigmoidwhile/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid?
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1?
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice_1/stack?
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_5/strided_slice_1/stack_1?
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2?
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1?
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_1:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_5?
while/lstm_cell_5/add_1AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_1Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_4?
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2?
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_5/strided_slice_2/stack?
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_5/strided_slice_2/stack_1?
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2?
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2?
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_2:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_6?
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_2?
while/lstm_cell_5/ReluReluwhile/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu?
while/lstm_cell_5/mul_5Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_5?
while/lstm_cell_5/add_3AddV2while/lstm_cell_5/mul_4:z:0while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_3?
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3?
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_5/strided_slice_3/stack?
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1?
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2?
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3?
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_3:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_7?
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_4?
while/lstm_cell_5/Sigmoid_2Sigmoidwhile/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu_1?
while/lstm_cell_5/mul_6Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_5/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
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
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?	
while_body_281690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_5_split_readvariableop_resource_0:	?B
3while_lstm_cell_5_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_5_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_5_split_readvariableop_resource:	?@
1while_lstm_cell_5_split_1_readvariableop_resource:	?<
)while_lstm_cell_5_readvariableop_resource:	 ??? while/lstm_cell_5/ReadVariableOp?"while/lstm_cell_5/ReadVariableOp_1?"while/lstm_cell_5/ReadVariableOp_2?"while/lstm_cell_5/ReadVariableOp_3?&while/lstm_cell_5/split/ReadVariableOp?(while/lstm_cell_5/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_5/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape?
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_5/ones_like/Const?
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/ones_like?
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2!
while/lstm_cell_5/dropout/Const?
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/dropout/Mul?
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape?
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform?
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_5/dropout/GreaterEqual/y?
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_5/dropout/GreaterEqual?
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_5/dropout/Cast?
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout/Mul_1?
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_1/Const?
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_1/Mul?
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape?
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y?
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_1/GreaterEqual?
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_1/Cast?
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_1/Mul_1?
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_2/Const?
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_2/Mul?
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape?
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ϛS2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y?
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_2/GreaterEqual?
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_2/Cast?
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_2/Mul_1?
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_3/Const?
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_3/Mul?
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape?
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y?
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_3/GreaterEqual?
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_3/Cast?
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_3/Mul_1?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul?
while/lstm_cell_5/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_2?
while/lstm_cell_5/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_3?
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dim?
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOp?
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_5/split_1?
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd?
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_1?
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_2?
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_3?
while/lstm_cell_5/mulMulwhile_placeholder_2#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul?
while/lstm_cell_5/mul_1Mulwhile_placeholder_2%while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/mul_2Mulwhile_placeholder_2%while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/mul_3Mulwhile_placeholder_2%while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_3?
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_5/ReadVariableOp?
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack?
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice/stack_1?
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2?
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice?
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_4?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add?
while/lstm_cell_5/SigmoidSigmoidwhile/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid?
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1?
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice_1/stack?
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_5/strided_slice_1/stack_1?
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2?
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1?
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_1:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_5?
while/lstm_cell_5/add_1AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_1Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_4?
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2?
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_5/strided_slice_2/stack?
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_5/strided_slice_2/stack_1?
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2?
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2?
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_2:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_6?
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_2?
while/lstm_cell_5/ReluReluwhile/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu?
while/lstm_cell_5/mul_5Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_5?
while/lstm_cell_5/add_3AddV2while/lstm_cell_5/mul_4:z:0while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_3?
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3?
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_5/strided_slice_3/stack?
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1?
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2?
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3?
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_3:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_7?
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_4?
while/lstm_cell_5/Sigmoid_2Sigmoidwhile/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu_1?
while/lstm_cell_5/mul_6Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_5/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
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
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
%sequential_2_lstm_5_while_cond_278281D
@sequential_2_lstm_5_while_sequential_2_lstm_5_while_loop_counterJ
Fsequential_2_lstm_5_while_sequential_2_lstm_5_while_maximum_iterations)
%sequential_2_lstm_5_while_placeholder+
'sequential_2_lstm_5_while_placeholder_1+
'sequential_2_lstm_5_while_placeholder_2+
'sequential_2_lstm_5_while_placeholder_3F
Bsequential_2_lstm_5_while_less_sequential_2_lstm_5_strided_slice_1\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_278281___redundant_placeholder0\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_278281___redundant_placeholder1\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_278281___redundant_placeholder2\
Xsequential_2_lstm_5_while_sequential_2_lstm_5_while_cond_278281___redundant_placeholder3&
"sequential_2_lstm_5_while_identity
?
sequential_2/lstm_5/while/LessLess%sequential_2_lstm_5_while_placeholderBsequential_2_lstm_5_while_less_sequential_2_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_2/lstm_5/while/Less?
"sequential_2/lstm_5/while/IdentityIdentity"sequential_2/lstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_2/lstm_5/while/Identity"Q
"sequential_2_lstm_5_while_identity+sequential_2/lstm_5/while/Identity:output:0*(
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
ϐ
?
lstm_5_while_body_280221*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_5_while_lstm_cell_5_split_readvariableop_resource_0:	?I
:lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0:	?E
2lstm_5_while_lstm_cell_5_readvariableop_resource_0:	 ?
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensorI
6lstm_5_while_lstm_cell_5_split_readvariableop_resource:	?G
8lstm_5_while_lstm_cell_5_split_1_readvariableop_resource:	?C
0lstm_5_while_lstm_cell_5_readvariableop_resource:	 ???'lstm_5/while/lstm_cell_5/ReadVariableOp?)lstm_5/while/lstm_cell_5/ReadVariableOp_1?)lstm_5/while/lstm_cell_5/ReadVariableOp_2?)lstm_5/while/lstm_cell_5/ReadVariableOp_3?-lstm_5/while/lstm_cell_5/split/ReadVariableOp?/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp?
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItem?
(lstm_5/while/lstm_cell_5/ones_like/ShapeShapelstm_5_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_5/while/lstm_cell_5/ones_like/Shape?
(lstm_5/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_5/while/lstm_cell_5/ones_like/Const?
"lstm_5/while/lstm_cell_5/ones_likeFill1lstm_5/while/lstm_cell_5/ones_like/Shape:output:01lstm_5/while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/ones_like?
(lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_5/while/lstm_cell_5/split/split_dim?
-lstm_5/while/lstm_cell_5/split/ReadVariableOpReadVariableOp8lstm_5_while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02/
-lstm_5/while/lstm_cell_5/split/ReadVariableOp?
lstm_5/while/lstm_cell_5/splitSplit1lstm_5/while/lstm_cell_5/split/split_dim:output:05lstm_5/while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_5/while/lstm_cell_5/split?
lstm_5/while/lstm_cell_5/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2!
lstm_5/while/lstm_cell_5/MatMul?
!lstm_5/while/lstm_cell_5/MatMul_1MatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_1?
!lstm_5/while/lstm_cell_5/MatMul_2MatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_2?
!lstm_5/while/lstm_cell_5/MatMul_3MatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_3?
*lstm_5/while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_5/while/lstm_cell_5/split_1/split_dim?
/lstm_5/while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp?
 lstm_5/while/lstm_cell_5/split_1Split3lstm_5/while/lstm_cell_5/split_1/split_dim:output:07lstm_5/while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2"
 lstm_5/while/lstm_cell_5/split_1?
 lstm_5/while/lstm_cell_5/BiasAddBiasAdd)lstm_5/while/lstm_cell_5/MatMul:product:0)lstm_5/while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/while/lstm_cell_5/BiasAdd?
"lstm_5/while/lstm_cell_5/BiasAdd_1BiasAdd+lstm_5/while/lstm_cell_5/MatMul_1:product:0)lstm_5/while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/BiasAdd_1?
"lstm_5/while/lstm_cell_5/BiasAdd_2BiasAdd+lstm_5/while/lstm_cell_5/MatMul_2:product:0)lstm_5/while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/BiasAdd_2?
"lstm_5/while/lstm_cell_5/BiasAdd_3BiasAdd+lstm_5/while/lstm_cell_5/MatMul_3:product:0)lstm_5/while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/BiasAdd_3?
lstm_5/while/lstm_cell_5/mulMullstm_5_while_placeholder_2+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/while/lstm_cell_5/mul?
lstm_5/while/lstm_cell_5/mul_1Mullstm_5_while_placeholder_2+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_1?
lstm_5/while/lstm_cell_5/mul_2Mullstm_5_while_placeholder_2+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_2?
lstm_5/while/lstm_cell_5/mul_3Mullstm_5_while_placeholder_2+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_3?
'lstm_5/while/lstm_cell_5/ReadVariableOpReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm_5/while/lstm_cell_5/ReadVariableOp?
,lstm_5/while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_5/while/lstm_cell_5/strided_slice/stack?
.lstm_5/while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_5/while/lstm_cell_5/strided_slice/stack_1?
.lstm_5/while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_5/while/lstm_cell_5/strided_slice/stack_2?
&lstm_5/while/lstm_cell_5/strided_sliceStridedSlice/lstm_5/while/lstm_cell_5/ReadVariableOp:value:05lstm_5/while/lstm_cell_5/strided_slice/stack:output:07lstm_5/while/lstm_cell_5/strided_slice/stack_1:output:07lstm_5/while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_5/while/lstm_cell_5/strided_slice?
!lstm_5/while/lstm_cell_5/MatMul_4MatMul lstm_5/while/lstm_cell_5/mul:z:0/lstm_5/while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_4?
lstm_5/while/lstm_cell_5/addAddV2)lstm_5/while/lstm_cell_5/BiasAdd:output:0+lstm_5/while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/while/lstm_cell_5/add?
 lstm_5/while/lstm_cell_5/SigmoidSigmoid lstm_5/while/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/while/lstm_cell_5/Sigmoid?
)lstm_5/while/lstm_cell_5/ReadVariableOp_1ReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_5/while/lstm_cell_5/ReadVariableOp_1?
.lstm_5/while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_5/while/lstm_cell_5/strided_slice_1/stack?
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_1?
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_2?
(lstm_5/while/lstm_cell_5/strided_slice_1StridedSlice1lstm_5/while/lstm_cell_5/ReadVariableOp_1:value:07lstm_5/while/lstm_cell_5/strided_slice_1/stack:output:09lstm_5/while/lstm_cell_5/strided_slice_1/stack_1:output:09lstm_5/while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_5/while/lstm_cell_5/strided_slice_1?
!lstm_5/while/lstm_cell_5/MatMul_5MatMul"lstm_5/while/lstm_cell_5/mul_1:z:01lstm_5/while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_5?
lstm_5/while/lstm_cell_5/add_1AddV2+lstm_5/while/lstm_cell_5/BiasAdd_1:output:0+lstm_5/while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_1?
"lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid"lstm_5/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/Sigmoid_1?
lstm_5/while/lstm_cell_5/mul_4Mul&lstm_5/while/lstm_cell_5/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_4?
)lstm_5/while/lstm_cell_5/ReadVariableOp_2ReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_5/while/lstm_cell_5/ReadVariableOp_2?
.lstm_5/while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_5/while/lstm_cell_5/strided_slice_2/stack?
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_1?
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_2?
(lstm_5/while/lstm_cell_5/strided_slice_2StridedSlice1lstm_5/while/lstm_cell_5/ReadVariableOp_2:value:07lstm_5/while/lstm_cell_5/strided_slice_2/stack:output:09lstm_5/while/lstm_cell_5/strided_slice_2/stack_1:output:09lstm_5/while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_5/while/lstm_cell_5/strided_slice_2?
!lstm_5/while/lstm_cell_5/MatMul_6MatMul"lstm_5/while/lstm_cell_5/mul_2:z:01lstm_5/while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_6?
lstm_5/while/lstm_cell_5/add_2AddV2+lstm_5/while/lstm_cell_5/BiasAdd_2:output:0+lstm_5/while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_2?
lstm_5/while/lstm_cell_5/ReluRelu"lstm_5/while/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/while/lstm_cell_5/Relu?
lstm_5/while/lstm_cell_5/mul_5Mul$lstm_5/while/lstm_cell_5/Sigmoid:y:0+lstm_5/while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_5?
lstm_5/while/lstm_cell_5/add_3AddV2"lstm_5/while/lstm_cell_5/mul_4:z:0"lstm_5/while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_3?
)lstm_5/while/lstm_cell_5/ReadVariableOp_3ReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_5/while/lstm_cell_5/ReadVariableOp_3?
.lstm_5/while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_5/while/lstm_cell_5/strided_slice_3/stack?
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_1?
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_2?
(lstm_5/while/lstm_cell_5/strided_slice_3StridedSlice1lstm_5/while/lstm_cell_5/ReadVariableOp_3:value:07lstm_5/while/lstm_cell_5/strided_slice_3/stack:output:09lstm_5/while/lstm_cell_5/strided_slice_3/stack_1:output:09lstm_5/while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_5/while/lstm_cell_5/strided_slice_3?
!lstm_5/while/lstm_cell_5/MatMul_7MatMul"lstm_5/while/lstm_cell_5/mul_3:z:01lstm_5/while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_7?
lstm_5/while/lstm_cell_5/add_4AddV2+lstm_5/while/lstm_cell_5/BiasAdd_3:output:0+lstm_5/while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_4?
"lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid"lstm_5/while/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/Sigmoid_2?
lstm_5/while/lstm_cell_5/Relu_1Relu"lstm_5/while/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_5/while/lstm_cell_5/Relu_1?
lstm_5/while/lstm_cell_5/mul_6Mul&lstm_5/while/lstm_cell_5/Sigmoid_2:y:0-lstm_5/while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_6?
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder"lstm_5/while/lstm_cell_5/mul_6:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/y?
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/y?
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1?
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity"lstm_5/while/lstm_cell_5/mul_6:z:0^lstm_5/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_5/add_3:z:0^lstm_5/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_5/while/Identity_5?
lstm_5/while/NoOpNoOp(^lstm_5/while/lstm_cell_5/ReadVariableOp*^lstm_5/while/lstm_cell_5/ReadVariableOp_1*^lstm_5/while/lstm_cell_5/ReadVariableOp_2*^lstm_5/while/lstm_cell_5/ReadVariableOp_3.^lstm_5/while/lstm_cell_5/split/ReadVariableOp0^lstm_5/while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_5/while/NoOp"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"f
0lstm_5_while_lstm_cell_5_readvariableop_resource2lstm_5_while_lstm_cell_5_readvariableop_resource_0"v
8lstm_5_while_lstm_cell_5_split_1_readvariableop_resource:lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0"r
6lstm_5_while_lstm_cell_5_split_readvariableop_resource8lstm_5_while_lstm_cell_5_split_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'lstm_5/while/lstm_cell_5/ReadVariableOp'lstm_5/while/lstm_cell_5/ReadVariableOp2V
)lstm_5/while/lstm_cell_5/ReadVariableOp_1)lstm_5/while/lstm_cell_5/ReadVariableOp_12V
)lstm_5/while/lstm_cell_5/ReadVariableOp_2)lstm_5/while/lstm_cell_5/ReadVariableOp_22V
)lstm_5/while/lstm_cell_5/ReadVariableOp_3)lstm_5/while/lstm_cell_5/ReadVariableOp_32^
-lstm_5/while/lstm_cell_5/split/ReadVariableOp-lstm_5/while/lstm_cell_5/split/ReadVariableOp2b
/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
'__inference_lstm_5_layer_call_fn_280722
inputs_0
unknown:	?
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2786442
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
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?R
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_282033

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
(__inference_dense_6_layer_call_fn_281864

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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2794832
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
?
a
E__inference_reshape_3_layer_call_and_return_conditional_losses_281912

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
?
?
__inference_loss_fn_0_282157W
Dlstm_5_lstm_cell_5_kernel_regularizer_square_readvariableop_resource:	?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpDlstm_5_lstm_cell_5_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/mulw
IdentityIdentity-lstm_5/lstm_cell_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp
?%
?
while_body_278866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_5_278890_0:	?)
while_lstm_cell_5_278892_0:	?-
while_lstm_cell_5_278894_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_5_278890:	?'
while_lstm_cell_5_278892:	?+
while_lstm_cell_5_278894:	 ???)while/lstm_cell_5/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_278890_0while_lstm_cell_5_278892_0while_lstm_cell_5_278894_0*
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_2787882+
)while/lstm_cell_5/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
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
while_lstm_cell_5_278890while_lstm_cell_5_278890_0"6
while_lstm_cell_5_278892while_lstm_cell_5_278892_0"6
while_lstm_cell_5_278894while_lstm_cell_5_278894_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
?
'__inference_lstm_5_layer_call_fn_280755

inputs
unknown:	?
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2798902
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
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_2_layer_call_fn_279544
input_3
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_2795272
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
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?~
?	
while_body_280865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_5_split_readvariableop_resource_0:	?B
3while_lstm_cell_5_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_5_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_5_split_readvariableop_resource:	?@
1while_lstm_cell_5_split_1_readvariableop_resource:	?<
)while_lstm_cell_5_readvariableop_resource:	 ??? while/lstm_cell_5/ReadVariableOp?"while/lstm_cell_5/ReadVariableOp_1?"while/lstm_cell_5/ReadVariableOp_2?"while/lstm_cell_5/ReadVariableOp_3?&while/lstm_cell_5/split/ReadVariableOp?(while/lstm_cell_5/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_5/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape?
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_5/ones_like/Const?
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/ones_like?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul?
while/lstm_cell_5/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_2?
while/lstm_cell_5/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_3?
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dim?
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOp?
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_5/split_1?
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd?
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_1?
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_2?
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_3?
while/lstm_cell_5/mulMulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul?
while/lstm_cell_5/mul_1Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/mul_2Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/mul_3Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_3?
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_5/ReadVariableOp?
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack?
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice/stack_1?
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2?
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice?
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_4?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add?
while/lstm_cell_5/SigmoidSigmoidwhile/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid?
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1?
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice_1/stack?
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_5/strided_slice_1/stack_1?
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2?
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1?
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_1:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_5?
while/lstm_cell_5/add_1AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_1Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_4?
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2?
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_5/strided_slice_2/stack?
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_5/strided_slice_2/stack_1?
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2?
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2?
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_2:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_6?
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_2?
while/lstm_cell_5/ReluReluwhile/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu?
while/lstm_cell_5/mul_5Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_5?
while/lstm_cell_5/add_3AddV2while/lstm_cell_5/mul_4:z:0while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_3?
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3?
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_5/strided_slice_3/stack?
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1?
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2?
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3?
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_3:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_7?
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_4?
while/lstm_cell_5/Sigmoid_2Sigmoidwhile/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu_1?
while/lstm_cell_5/mul_6Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_5/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
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
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
-__inference_sequential_2_layer_call_fn_280111

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_2799482
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
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_5_layer_call_fn_280744

inputs
unknown:	?
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2794642
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
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_dense_7_layer_call_and_return_conditional_losses_281894

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
?	
?
$__inference_signature_wrapper_280073
input_3
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2784312
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
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
??
?
lstm_5_while_body_280518*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_5_while_lstm_cell_5_split_readvariableop_resource_0:	?I
:lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0:	?E
2lstm_5_while_lstm_cell_5_readvariableop_resource_0:	 ?
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensorI
6lstm_5_while_lstm_cell_5_split_readvariableop_resource:	?G
8lstm_5_while_lstm_cell_5_split_1_readvariableop_resource:	?C
0lstm_5_while_lstm_cell_5_readvariableop_resource:	 ???'lstm_5/while/lstm_cell_5/ReadVariableOp?)lstm_5/while/lstm_cell_5/ReadVariableOp_1?)lstm_5/while/lstm_cell_5/ReadVariableOp_2?)lstm_5/while/lstm_cell_5/ReadVariableOp_3?-lstm_5/while/lstm_cell_5/split/ReadVariableOp?/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp?
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItem?
(lstm_5/while/lstm_cell_5/ones_like/ShapeShapelstm_5_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_5/while/lstm_cell_5/ones_like/Shape?
(lstm_5/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_5/while/lstm_cell_5/ones_like/Const?
"lstm_5/while/lstm_cell_5/ones_likeFill1lstm_5/while/lstm_cell_5/ones_like/Shape:output:01lstm_5/while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/ones_like?
&lstm_5/while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2(
&lstm_5/while/lstm_cell_5/dropout/Const?
$lstm_5/while/lstm_cell_5/dropout/MulMul+lstm_5/while/lstm_cell_5/ones_like:output:0/lstm_5/while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_5/while/lstm_cell_5/dropout/Mul?
&lstm_5/while/lstm_cell_5/dropout/ShapeShape+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_5/while/lstm_cell_5/dropout/Shape?
=lstm_5/while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform/lstm_5/while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2?
=lstm_5/while/lstm_cell_5/dropout/random_uniform/RandomUniform?
/lstm_5/while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>21
/lstm_5/while/lstm_cell_5/dropout/GreaterEqual/y?
-lstm_5/while/lstm_cell_5/dropout/GreaterEqualGreaterEqualFlstm_5/while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:08lstm_5/while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-lstm_5/while/lstm_cell_5/dropout/GreaterEqual?
%lstm_5/while/lstm_cell_5/dropout/CastCast1lstm_5/while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%lstm_5/while/lstm_cell_5/dropout/Cast?
&lstm_5/while/lstm_cell_5/dropout/Mul_1Mul(lstm_5/while/lstm_cell_5/dropout/Mul:z:0)lstm_5/while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&lstm_5/while/lstm_cell_5/dropout/Mul_1?
(lstm_5/while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2*
(lstm_5/while/lstm_cell_5/dropout_1/Const?
&lstm_5/while/lstm_cell_5/dropout_1/MulMul+lstm_5/while/lstm_cell_5/ones_like:output:01lstm_5/while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_5/while/lstm_cell_5/dropout_1/Mul?
(lstm_5/while/lstm_cell_5/dropout_1/ShapeShape+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_5/while/lstm_cell_5/dropout_1/Shape?
?lstm_5/while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2A
?lstm_5/while/lstm_cell_5/dropout_1/random_uniform/RandomUniform?
1lstm_5/while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_5/while/lstm_cell_5/dropout_1/GreaterEqual/y?
/lstm_5/while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_5/while/lstm_cell_5/dropout_1/GreaterEqual?
'lstm_5/while/lstm_cell_5/dropout_1/CastCast3lstm_5/while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_5/while/lstm_cell_5/dropout_1/Cast?
(lstm_5/while/lstm_cell_5/dropout_1/Mul_1Mul*lstm_5/while/lstm_cell_5/dropout_1/Mul:z:0+lstm_5/while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_5/while/lstm_cell_5/dropout_1/Mul_1?
(lstm_5/while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2*
(lstm_5/while/lstm_cell_5/dropout_2/Const?
&lstm_5/while/lstm_cell_5/dropout_2/MulMul+lstm_5/while/lstm_cell_5/ones_like:output:01lstm_5/while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_5/while/lstm_cell_5/dropout_2/Mul?
(lstm_5/while/lstm_cell_5/dropout_2/ShapeShape+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_5/while/lstm_cell_5/dropout_2/Shape?
?lstm_5/while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2A
?lstm_5/while/lstm_cell_5/dropout_2/random_uniform/RandomUniform?
1lstm_5/while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_5/while/lstm_cell_5/dropout_2/GreaterEqual/y?
/lstm_5/while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_5/while/lstm_cell_5/dropout_2/GreaterEqual?
'lstm_5/while/lstm_cell_5/dropout_2/CastCast3lstm_5/while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_5/while/lstm_cell_5/dropout_2/Cast?
(lstm_5/while/lstm_cell_5/dropout_2/Mul_1Mul*lstm_5/while/lstm_cell_5/dropout_2/Mul:z:0+lstm_5/while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_5/while/lstm_cell_5/dropout_2/Mul_1?
(lstm_5/while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2*
(lstm_5/while/lstm_cell_5/dropout_3/Const?
&lstm_5/while/lstm_cell_5/dropout_3/MulMul+lstm_5/while/lstm_cell_5/ones_like:output:01lstm_5/while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_5/while/lstm_cell_5/dropout_3/Mul?
(lstm_5/while/lstm_cell_5/dropout_3/ShapeShape+lstm_5/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_5/while/lstm_cell_5/dropout_3/Shape?
?lstm_5/while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2A
?lstm_5/while/lstm_cell_5/dropout_3/random_uniform/RandomUniform?
1lstm_5/while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>23
1lstm_5/while/lstm_cell_5/dropout_3/GreaterEqual/y?
/lstm_5/while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_5/while/lstm_cell_5/dropout_3/GreaterEqual?
'lstm_5/while/lstm_cell_5/dropout_3/CastCast3lstm_5/while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_5/while/lstm_cell_5/dropout_3/Cast?
(lstm_5/while/lstm_cell_5/dropout_3/Mul_1Mul*lstm_5/while/lstm_cell_5/dropout_3/Mul:z:0+lstm_5/while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_5/while/lstm_cell_5/dropout_3/Mul_1?
(lstm_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_5/while/lstm_cell_5/split/split_dim?
-lstm_5/while/lstm_cell_5/split/ReadVariableOpReadVariableOp8lstm_5_while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02/
-lstm_5/while/lstm_cell_5/split/ReadVariableOp?
lstm_5/while/lstm_cell_5/splitSplit1lstm_5/while/lstm_cell_5/split/split_dim:output:05lstm_5/while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2 
lstm_5/while/lstm_cell_5/split?
lstm_5/while/lstm_cell_5/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2!
lstm_5/while/lstm_cell_5/MatMul?
!lstm_5/while/lstm_cell_5/MatMul_1MatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_1?
!lstm_5/while/lstm_cell_5/MatMul_2MatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_2?
!lstm_5/while/lstm_cell_5/MatMul_3MatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_5/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_3?
*lstm_5/while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_5/while/lstm_cell_5/split_1/split_dim?
/lstm_5/while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp?
 lstm_5/while/lstm_cell_5/split_1Split3lstm_5/while/lstm_cell_5/split_1/split_dim:output:07lstm_5/while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2"
 lstm_5/while/lstm_cell_5/split_1?
 lstm_5/while/lstm_cell_5/BiasAddBiasAdd)lstm_5/while/lstm_cell_5/MatMul:product:0)lstm_5/while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/while/lstm_cell_5/BiasAdd?
"lstm_5/while/lstm_cell_5/BiasAdd_1BiasAdd+lstm_5/while/lstm_cell_5/MatMul_1:product:0)lstm_5/while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/BiasAdd_1?
"lstm_5/while/lstm_cell_5/BiasAdd_2BiasAdd+lstm_5/while/lstm_cell_5/MatMul_2:product:0)lstm_5/while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/BiasAdd_2?
"lstm_5/while/lstm_cell_5/BiasAdd_3BiasAdd+lstm_5/while/lstm_cell_5/MatMul_3:product:0)lstm_5/while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/BiasAdd_3?
lstm_5/while/lstm_cell_5/mulMullstm_5_while_placeholder_2*lstm_5/while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/while/lstm_cell_5/mul?
lstm_5/while/lstm_cell_5/mul_1Mullstm_5_while_placeholder_2,lstm_5/while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_1?
lstm_5/while/lstm_cell_5/mul_2Mullstm_5_while_placeholder_2,lstm_5/while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_2?
lstm_5/while/lstm_cell_5/mul_3Mullstm_5_while_placeholder_2,lstm_5/while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_3?
'lstm_5/while/lstm_cell_5/ReadVariableOpReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02)
'lstm_5/while/lstm_cell_5/ReadVariableOp?
,lstm_5/while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_5/while/lstm_cell_5/strided_slice/stack?
.lstm_5/while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_5/while/lstm_cell_5/strided_slice/stack_1?
.lstm_5/while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_5/while/lstm_cell_5/strided_slice/stack_2?
&lstm_5/while/lstm_cell_5/strided_sliceStridedSlice/lstm_5/while/lstm_cell_5/ReadVariableOp:value:05lstm_5/while/lstm_cell_5/strided_slice/stack:output:07lstm_5/while/lstm_cell_5/strided_slice/stack_1:output:07lstm_5/while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2(
&lstm_5/while/lstm_cell_5/strided_slice?
!lstm_5/while/lstm_cell_5/MatMul_4MatMul lstm_5/while/lstm_cell_5/mul:z:0/lstm_5/while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_4?
lstm_5/while/lstm_cell_5/addAddV2)lstm_5/while/lstm_cell_5/BiasAdd:output:0+lstm_5/while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/while/lstm_cell_5/add?
 lstm_5/while/lstm_cell_5/SigmoidSigmoid lstm_5/while/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/while/lstm_cell_5/Sigmoid?
)lstm_5/while/lstm_cell_5/ReadVariableOp_1ReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_5/while/lstm_cell_5/ReadVariableOp_1?
.lstm_5/while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.lstm_5/while/lstm_cell_5/strided_slice_1/stack?
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   22
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_1?
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_5/while/lstm_cell_5/strided_slice_1/stack_2?
(lstm_5/while/lstm_cell_5/strided_slice_1StridedSlice1lstm_5/while/lstm_cell_5/ReadVariableOp_1:value:07lstm_5/while/lstm_cell_5/strided_slice_1/stack:output:09lstm_5/while/lstm_cell_5/strided_slice_1/stack_1:output:09lstm_5/while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_5/while/lstm_cell_5/strided_slice_1?
!lstm_5/while/lstm_cell_5/MatMul_5MatMul"lstm_5/while/lstm_cell_5/mul_1:z:01lstm_5/while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_5?
lstm_5/while/lstm_cell_5/add_1AddV2+lstm_5/while/lstm_cell_5/BiasAdd_1:output:0+lstm_5/while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_1?
"lstm_5/while/lstm_cell_5/Sigmoid_1Sigmoid"lstm_5/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/Sigmoid_1?
lstm_5/while/lstm_cell_5/mul_4Mul&lstm_5/while/lstm_cell_5/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_4?
)lstm_5/while/lstm_cell_5/ReadVariableOp_2ReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_5/while/lstm_cell_5/ReadVariableOp_2?
.lstm_5/while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_5/while/lstm_cell_5/strided_slice_2/stack?
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   22
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_1?
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_5/while/lstm_cell_5/strided_slice_2/stack_2?
(lstm_5/while/lstm_cell_5/strided_slice_2StridedSlice1lstm_5/while/lstm_cell_5/ReadVariableOp_2:value:07lstm_5/while/lstm_cell_5/strided_slice_2/stack:output:09lstm_5/while/lstm_cell_5/strided_slice_2/stack_1:output:09lstm_5/while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_5/while/lstm_cell_5/strided_slice_2?
!lstm_5/while/lstm_cell_5/MatMul_6MatMul"lstm_5/while/lstm_cell_5/mul_2:z:01lstm_5/while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_6?
lstm_5/while/lstm_cell_5/add_2AddV2+lstm_5/while/lstm_cell_5/BiasAdd_2:output:0+lstm_5/while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_2?
lstm_5/while/lstm_cell_5/ReluRelu"lstm_5/while/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/while/lstm_cell_5/Relu?
lstm_5/while/lstm_cell_5/mul_5Mul$lstm_5/while/lstm_cell_5/Sigmoid:y:0+lstm_5/while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_5?
lstm_5/while/lstm_cell_5/add_3AddV2"lstm_5/while/lstm_cell_5/mul_4:z:0"lstm_5/while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_3?
)lstm_5/while/lstm_cell_5/ReadVariableOp_3ReadVariableOp2lstm_5_while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02+
)lstm_5/while/lstm_cell_5/ReadVariableOp_3?
.lstm_5/while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   20
.lstm_5/while/lstm_cell_5/strided_slice_3/stack?
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_1?
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_5/while/lstm_cell_5/strided_slice_3/stack_2?
(lstm_5/while/lstm_cell_5/strided_slice_3StridedSlice1lstm_5/while/lstm_cell_5/ReadVariableOp_3:value:07lstm_5/while/lstm_cell_5/strided_slice_3/stack:output:09lstm_5/while/lstm_cell_5/strided_slice_3/stack_1:output:09lstm_5/while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2*
(lstm_5/while/lstm_cell_5/strided_slice_3?
!lstm_5/while/lstm_cell_5/MatMul_7MatMul"lstm_5/while/lstm_cell_5/mul_3:z:01lstm_5/while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2#
!lstm_5/while/lstm_cell_5/MatMul_7?
lstm_5/while/lstm_cell_5/add_4AddV2+lstm_5/while/lstm_cell_5/BiasAdd_3:output:0+lstm_5/while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/add_4?
"lstm_5/while/lstm_cell_5/Sigmoid_2Sigmoid"lstm_5/while/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/while/lstm_cell_5/Sigmoid_2?
lstm_5/while/lstm_cell_5/Relu_1Relu"lstm_5/while/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2!
lstm_5/while/lstm_cell_5/Relu_1?
lstm_5/while/lstm_cell_5/mul_6Mul&lstm_5/while/lstm_cell_5/Sigmoid_2:y:0-lstm_5/while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/while/lstm_cell_5/mul_6?
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder"lstm_5/while/lstm_cell_5/mul_6:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/y?
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/y?
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1?
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity?
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1?
lstm_5/while/Identity_2Identitylstm_5/while/add:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2?
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3?
lstm_5/while/Identity_4Identity"lstm_5/while/lstm_cell_5/mul_6:z:0^lstm_5/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_5/while/Identity_4?
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_5/add_3:z:0^lstm_5/while/NoOp*
T0*'
_output_shapes
:????????? 2
lstm_5/while/Identity_5?
lstm_5/while/NoOpNoOp(^lstm_5/while/lstm_cell_5/ReadVariableOp*^lstm_5/while/lstm_cell_5/ReadVariableOp_1*^lstm_5/while/lstm_cell_5/ReadVariableOp_2*^lstm_5/while/lstm_cell_5/ReadVariableOp_3.^lstm_5/while/lstm_cell_5/split/ReadVariableOp0^lstm_5/while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_5/while/NoOp"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"f
0lstm_5_while_lstm_cell_5_readvariableop_resource2lstm_5_while_lstm_cell_5_readvariableop_resource_0"v
8lstm_5_while_lstm_cell_5_split_1_readvariableop_resource:lstm_5_while_lstm_cell_5_split_1_readvariableop_resource_0"r
6lstm_5_while_lstm_cell_5_split_readvariableop_resource8lstm_5_while_lstm_cell_5_split_readvariableop_resource_0"?
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2R
'lstm_5/while/lstm_cell_5/ReadVariableOp'lstm_5/while/lstm_cell_5/ReadVariableOp2V
)lstm_5/while/lstm_cell_5/ReadVariableOp_1)lstm_5/while/lstm_cell_5/ReadVariableOp_12V
)lstm_5/while/lstm_cell_5/ReadVariableOp_2)lstm_5/while/lstm_cell_5/ReadVariableOp_22V
)lstm_5/while/lstm_cell_5/ReadVariableOp_3)lstm_5/while/lstm_cell_5/ReadVariableOp_32^
-lstm_5/while/lstm_cell_5/split/ReadVariableOp-lstm_5/while/lstm_cell_5/split/ReadVariableOp2b
/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp/lstm_5/while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_dense_7_layer_call_and_return_conditional_losses_279499

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
?!
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_279527

inputs 
lstm_5_279465:	?
lstm_5_279467:	? 
lstm_5_279469:	 ? 
dense_6_279484:  
dense_6_279486:  
dense_7_279500: 
dense_7_279502:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_279465lstm_5_279467lstm_5_279469*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2794642 
lstm_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_6_279484dense_6_279486*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2794832!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_279500dense_7_279502*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2794992!
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_2795182
reshape_3/PartitionedCall?
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_5_279465*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/mul?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_280864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_280864___redundant_placeholder04
0while_while_cond_280864___redundant_placeholder14
0while_while_cond_280864___redundant_placeholder24
0while_while_cond_280864___redundant_placeholder3
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
?
while_cond_279724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_279724___redundant_placeholder04
0while_while_cond_279724___redundant_placeholder14
0while_while_cond_279724___redundant_placeholder24
0while_while_cond_279724___redundant_placeholder3
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
?R
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_278555

inputs

states
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpX
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates:OK
'
_output_shapes
:????????? 
 
_user_specified_namestates
?Q
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_278644

inputs%
lstm_cell_5_278556:	?!
lstm_cell_5_278558:	?%
lstm_cell_5_278560:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?#lstm_cell_5/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_278556lstm_cell_5_278558lstm_cell_5_278560*
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_2785552%
#lstm_cell_5/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_278556lstm_cell_5_278558lstm_cell_5_278560*
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
while_body_278569*
condR
while_cond_278568*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_5_278556*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?{
?
"__inference__traced_restore_282358
file_prefix1
assignvariableop_dense_6_kernel:  -
assignvariableop_1_dense_6_bias: 3
!assignvariableop_2_dense_7_kernel: -
assignvariableop_3_dense_7_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: ?
,assignvariableop_9_lstm_5_lstm_cell_5_kernel:	?J
7assignvariableop_10_lstm_5_lstm_cell_5_recurrent_kernel:	 ?:
+assignvariableop_11_lstm_5_lstm_cell_5_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: ;
)assignvariableop_14_adam_dense_6_kernel_m:  5
'assignvariableop_15_adam_dense_6_bias_m: ;
)assignvariableop_16_adam_dense_7_kernel_m: 5
'assignvariableop_17_adam_dense_7_bias_m:G
4assignvariableop_18_adam_lstm_5_lstm_cell_5_kernel_m:	?Q
>assignvariableop_19_adam_lstm_5_lstm_cell_5_recurrent_kernel_m:	 ?A
2assignvariableop_20_adam_lstm_5_lstm_cell_5_bias_m:	?;
)assignvariableop_21_adam_dense_6_kernel_v:  5
'assignvariableop_22_adam_dense_6_bias_v: ;
)assignvariableop_23_adam_dense_7_kernel_v: 5
'assignvariableop_24_adam_dense_7_bias_v:G
4assignvariableop_25_adam_lstm_5_lstm_cell_5_kernel_v:	?Q
>assignvariableop_26_adam_lstm_5_lstm_cell_5_recurrent_kernel_v:	 ?A
2assignvariableop_27_adam_lstm_5_lstm_cell_5_bias_v:	?
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
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
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_5_lstm_cell_5_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_lstm_5_lstm_cell_5_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_lstm_5_lstm_cell_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_6_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_6_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_7_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_7_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_5_lstm_cell_5_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_5_lstm_cell_5_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_5_lstm_cell_5_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_6_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_6_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_7_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_7_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_lstm_5_lstm_cell_5_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_lstm_5_lstm_cell_5_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_lstm_5_lstm_cell_5_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28f
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_29?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
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
C__inference_dense_6_layer_call_and_return_conditional_losses_281875

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
?Q
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_278941

inputs%
lstm_cell_5_278853:	?!
lstm_cell_5_278855:	?%
lstm_cell_5_278857:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?#lstm_cell_5/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_278853lstm_cell_5_278855lstm_cell_5_278857*
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_2787882%
#lstm_cell_5/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_278853lstm_cell_5_278855lstm_cell_5_278857*
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
while_body_278866*
condR
while_cond_278865*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_cell_5_278853*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_2_layer_call_fn_280092

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_2795272
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
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_5_layer_call_fn_280733
inputs_0
unknown:	?
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2789412
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
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_281305
inputs_0<
)lstm_cell_5_split_readvariableop_resource:	?:
+lstm_cell_5_split_1_readvariableop_resource:	?6
#lstm_cell_5_readvariableop_resource:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_5/ReadVariableOp?lstm_cell_5/ReadVariableOp_1?lstm_cell_5/ReadVariableOp_2?lstm_cell_5/ReadVariableOp_3? lstm_cell_5/split/ReadVariableOp?"lstm_cell_5/split_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_5/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_5/ones_like/Const?
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout/Const?
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Mul?
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shape?
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ɳ?22
0lstm_cell_5/dropout/random_uniform/RandomUniform?
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_5/dropout/GreaterEqual/y?
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_5/dropout/GreaterEqual?
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Cast?
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_1/Const?
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Mul?
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shape?
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform?
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_1/GreaterEqual/y?
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_1/GreaterEqual?
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Cast?
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_2/Const?
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Mul?
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shape?
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform?
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_2/GreaterEqual/y?
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_2/GreaterEqual?
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Cast?
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_3/Const?
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Mul?
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shape?
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform?
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_3/GreaterEqual/y?
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_3/GreaterEqual?
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Cast?
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Mul_1|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_5/split/ReadVariableOp?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_5/split?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul?
lstm_cell_5/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_1?
lstm_cell_5/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_2?
lstm_cell_5/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_3?
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim?
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/split_1/ReadVariableOp?
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_5/split_1?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd?
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_1?
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_2?
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_3?
lstm_cell_5/mulMulzeros:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul?
lstm_cell_5/mul_1Mulzeros:output:0lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_1?
lstm_cell_5/mul_2Mulzeros:output:0lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_2?
lstm_cell_5/mul_3Mulzeros:output:0lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_3?
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp?
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack?
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice/stack_1?
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2?
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice?
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul:z:0"lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_4?
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add|
lstm_cell_5/SigmoidSigmoidlstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid?
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_1?
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice_1/stack?
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_5/strided_slice_1/stack_1?
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2?
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1?
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_1:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_5?
lstm_cell_5/add_1AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_4?
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_2?
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_5/strided_slice_2/stack?
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_5/strided_slice_2/stack_1?
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2?
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2?
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_2:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_6?
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_2u
lstm_cell_5/ReluRelulstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu?
lstm_cell_5/mul_5Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_5?
lstm_cell_5/add_3AddV2lstm_cell_5/mul_4:z:0lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_3?
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_3?
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_5/strided_slice_3/stack?
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1?
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2?
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3?
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_3:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_7?
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_4?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu_1?
lstm_cell_5/mul_6Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
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
while_body_281140*
condR
while_cond_281139*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?B
?
__inference__traced_save_282264
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_5_lstm_cell_5_kernel_read_readvariableopB
>savev2_lstm_5_lstm_cell_5_recurrent_kernel_read_readvariableop6
2savev2_lstm_5_lstm_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_5_kernel_m_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_5_kernel_v_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_5_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_5_lstm_cell_5_kernel_read_readvariableop>savev2_lstm_5_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_lstm_5_lstm_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop;savev2_adam_lstm_5_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_5_lstm_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :  : : :: : : : : :	?:	 ?:?: : :  : : ::	?:	 ?:?:  : : ::	?:	 ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 
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
: :%
!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:

_output_shapes
: 
ן
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_281548

inputs<
)lstm_cell_5_split_readvariableop_resource:	?:
+lstm_cell_5_split_1_readvariableop_resource:	?6
#lstm_cell_5_readvariableop_resource:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_5/ReadVariableOp?lstm_cell_5/ReadVariableOp_1?lstm_cell_5/ReadVariableOp_2?lstm_cell_5/ReadVariableOp_3? lstm_cell_5/split/ReadVariableOp?"lstm_cell_5/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_5/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_5/ones_like/Const?
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/ones_like|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_5/split/ReadVariableOp?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_5/split?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul?
lstm_cell_5/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_1?
lstm_cell_5/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_2?
lstm_cell_5/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_3?
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim?
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/split_1/ReadVariableOp?
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_5/split_1?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd?
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_1?
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_2?
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_3?
lstm_cell_5/mulMulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul?
lstm_cell_5/mul_1Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_1?
lstm_cell_5/mul_2Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_2?
lstm_cell_5/mul_3Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_3?
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp?
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack?
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice/stack_1?
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2?
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice?
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul:z:0"lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_4?
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add|
lstm_cell_5/SigmoidSigmoidlstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid?
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_1?
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice_1/stack?
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_5/strided_slice_1/stack_1?
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2?
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1?
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_1:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_5?
lstm_cell_5/add_1AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_4?
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_2?
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_5/strided_slice_2/stack?
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_5/strided_slice_2/stack_1?
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2?
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2?
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_2:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_6?
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_2u
lstm_cell_5/ReluRelulstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu?
lstm_cell_5/mul_5Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_5?
lstm_cell_5/add_3AddV2lstm_cell_5/mul_4:z:0lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_3?
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_3?
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_5/strided_slice_3/stack?
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1?
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2?
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3?
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_3:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_7?
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_4?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu_1?
lstm_cell_5/mul_6Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
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
while_body_281415*
condR
while_cond_281414*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?!
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_280040
input_3 
lstm_5_280015:	?
lstm_5_280017:	? 
lstm_5_280019:	 ? 
dense_6_280022:  
dense_6_280024:  
dense_7_280027: 
dense_7_280029:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinput_3lstm_5_280015lstm_5_280017lstm_5_280019*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2798902 
lstm_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_6_280022dense_6_280024*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2794832!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_280027dense_7_280029*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2794992!
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_2795182
reshape_3/PartitionedCall?
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_5_280015*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/mul?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?
?
while_cond_278865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_278865___redundant_placeholder04
0while_while_cond_278865___redundant_placeholder14
0while_while_cond_278865___redundant_placeholder24
0while_while_cond_278865___redundant_placeholder3
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_281855

inputs<
)lstm_cell_5_split_readvariableop_resource:	?:
+lstm_cell_5_split_1_readvariableop_resource:	?6
#lstm_cell_5_readvariableop_resource:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_5/ReadVariableOp?lstm_cell_5/ReadVariableOp_1?lstm_cell_5/ReadVariableOp_2?lstm_cell_5/ReadVariableOp_3? lstm_cell_5/split/ReadVariableOp?"lstm_cell_5/split_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_5/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_5/ones_like/Const?
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout/Const?
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Mul?
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shape?
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell_5/dropout/random_uniform/RandomUniform?
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"lstm_cell_5/dropout/GreaterEqual/y?
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_5/dropout/GreaterEqual?
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Cast?
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_1/Const?
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Mul?
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shape?
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform?
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_1/GreaterEqual/y?
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_1/GreaterEqual?
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Cast?
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_2/Const?
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Mul?
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shape?
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform?
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_2/GreaterEqual/y?
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_2/GreaterEqual?
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Cast?
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
lstm_cell_5/dropout_3/Const?
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Mul?
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shape?
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??J24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform?
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2&
$lstm_cell_5/dropout_3/GreaterEqual/y?
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_5/dropout_3/GreaterEqual?
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Cast?
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/dropout_3/Mul_1|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_5/split/ReadVariableOp?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_5/split?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul?
lstm_cell_5/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_1?
lstm_cell_5/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_2?
lstm_cell_5/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_3?
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim?
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/split_1/ReadVariableOp?
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_5/split_1?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd?
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_1?
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_2?
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_3?
lstm_cell_5/mulMulzeros:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul?
lstm_cell_5/mul_1Mulzeros:output:0lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_1?
lstm_cell_5/mul_2Mulzeros:output:0lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_2?
lstm_cell_5/mul_3Mulzeros:output:0lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_3?
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp?
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack?
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice/stack_1?
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2?
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice?
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul:z:0"lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_4?
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add|
lstm_cell_5/SigmoidSigmoidlstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid?
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_1?
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice_1/stack?
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_5/strided_slice_1/stack_1?
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2?
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1?
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_1:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_5?
lstm_cell_5/add_1AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_4?
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_2?
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_5/strided_slice_2/stack?
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_5/strided_slice_2/stack_1?
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2?
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2?
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_2:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_6?
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_2u
lstm_cell_5/ReluRelulstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu?
lstm_cell_5/mul_5Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_5?
lstm_cell_5/add_3AddV2lstm_cell_5/mul_4:z:0lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_3?
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_3?
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_5/strided_slice_3/stack?
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1?
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2?
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3?
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_3:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_7?
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_4?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu_1?
lstm_cell_5/mul_6Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
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
while_body_281690*
condR
while_cond_281689*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?v
?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_282146

inputs
states_0
states_10
split_readvariableop_resource:	?.
split_1_readvariableop_resource:	?*
readvariableop_resource:	 ?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOpZ
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
seed2ފ?2&
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
seed2???2(
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
seed2ì?2(
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
seed2???2(
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
:	?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muld
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
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:????????? :????????? : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_280376

inputsC
0lstm_5_lstm_cell_5_split_readvariableop_resource:	?A
2lstm_5_lstm_cell_5_split_1_readvariableop_resource:	?=
*lstm_5_lstm_cell_5_readvariableop_resource:	 ?8
&dense_6_matmul_readvariableop_resource:  5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?!lstm_5/lstm_cell_5/ReadVariableOp?#lstm_5/lstm_cell_5/ReadVariableOp_1?#lstm_5/lstm_cell_5/ReadVariableOp_2?#lstm_5/lstm_cell_5/ReadVariableOp_3?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?'lstm_5/lstm_cell_5/split/ReadVariableOp?)lstm_5/lstm_cell_5/split_1/ReadVariableOp?lstm_5/whileR
lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_5/Shape?
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack?
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1?
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2?
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicej
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros/mul/y?
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/Less/y?
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessp
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros/packed/1?
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/Const?
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/zerosn
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros_1/mul/y?
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/Less/y?
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lesst
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros_1/packed/1?
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/Const?
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/zeros_1?
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm?
lstm_5/transpose	Transposeinputslstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1?
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack?
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1?
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2?
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1?
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_5/TensorArrayV2/element_shape?
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2?
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor?
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack?
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1?
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2?
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_5/strided_slice_2?
"lstm_5/lstm_cell_5/ones_like/ShapeShapelstm_5/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_5/lstm_cell_5/ones_like/Shape?
"lstm_5/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_5/lstm_cell_5/ones_like/Const?
lstm_5/lstm_cell_5/ones_likeFill+lstm_5/lstm_cell_5/ones_like/Shape:output:0+lstm_5/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/ones_like?
"lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_5/lstm_cell_5/split/split_dim?
'lstm_5/lstm_cell_5/split/ReadVariableOpReadVariableOp0lstm_5_lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02)
'lstm_5/lstm_cell_5/split/ReadVariableOp?
lstm_5/lstm_cell_5/splitSplit+lstm_5/lstm_cell_5/split/split_dim:output:0/lstm_5/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_5/lstm_cell_5/split?
lstm_5/lstm_cell_5/MatMulMatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul?
lstm_5/lstm_cell_5/MatMul_1MatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_1?
lstm_5/lstm_cell_5/MatMul_2MatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_2?
lstm_5/lstm_cell_5/MatMul_3MatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_3?
$lstm_5/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_5/lstm_cell_5/split_1/split_dim?
)lstm_5/lstm_cell_5/split_1/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_5/lstm_cell_5/split_1/ReadVariableOp?
lstm_5/lstm_cell_5/split_1Split-lstm_5/lstm_cell_5/split_1/split_dim:output:01lstm_5/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_5/lstm_cell_5/split_1?
lstm_5/lstm_cell_5/BiasAddBiasAdd#lstm_5/lstm_cell_5/MatMul:product:0#lstm_5/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd?
lstm_5/lstm_cell_5/BiasAdd_1BiasAdd%lstm_5/lstm_cell_5/MatMul_1:product:0#lstm_5/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd_1?
lstm_5/lstm_cell_5/BiasAdd_2BiasAdd%lstm_5/lstm_cell_5/MatMul_2:product:0#lstm_5/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd_2?
lstm_5/lstm_cell_5/BiasAdd_3BiasAdd%lstm_5/lstm_cell_5/MatMul_3:product:0#lstm_5/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd_3?
lstm_5/lstm_cell_5/mulMullstm_5/zeros:output:0%lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul?
lstm_5/lstm_cell_5/mul_1Mullstm_5/zeros:output:0%lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_1?
lstm_5/lstm_cell_5/mul_2Mullstm_5/zeros:output:0%lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_2?
lstm_5/lstm_cell_5/mul_3Mullstm_5/zeros:output:0%lstm_5/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_3?
!lstm_5/lstm_cell_5/ReadVariableOpReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_5/lstm_cell_5/ReadVariableOp?
&lstm_5/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_5/lstm_cell_5/strided_slice/stack?
(lstm_5/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_5/lstm_cell_5/strided_slice/stack_1?
(lstm_5/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_5/lstm_cell_5/strided_slice/stack_2?
 lstm_5/lstm_cell_5/strided_sliceStridedSlice)lstm_5/lstm_cell_5/ReadVariableOp:value:0/lstm_5/lstm_cell_5/strided_slice/stack:output:01lstm_5/lstm_cell_5/strided_slice/stack_1:output:01lstm_5/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm_5/lstm_cell_5/strided_slice?
lstm_5/lstm_cell_5/MatMul_4MatMullstm_5/lstm_cell_5/mul:z:0)lstm_5/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_4?
lstm_5/lstm_cell_5/addAddV2#lstm_5/lstm_cell_5/BiasAdd:output:0%lstm_5/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add?
lstm_5/lstm_cell_5/SigmoidSigmoidlstm_5/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Sigmoid?
#lstm_5/lstm_cell_5/ReadVariableOp_1ReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_5/lstm_cell_5/ReadVariableOp_1?
(lstm_5/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_5/lstm_cell_5/strided_slice_1/stack?
*lstm_5/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_5/lstm_cell_5/strided_slice_1/stack_1?
*lstm_5/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_5/lstm_cell_5/strided_slice_1/stack_2?
"lstm_5/lstm_cell_5/strided_slice_1StridedSlice+lstm_5/lstm_cell_5/ReadVariableOp_1:value:01lstm_5/lstm_cell_5/strided_slice_1/stack:output:03lstm_5/lstm_cell_5/strided_slice_1/stack_1:output:03lstm_5/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_5/lstm_cell_5/strided_slice_1?
lstm_5/lstm_cell_5/MatMul_5MatMullstm_5/lstm_cell_5/mul_1:z:0+lstm_5/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_5?
lstm_5/lstm_cell_5/add_1AddV2%lstm_5/lstm_cell_5/BiasAdd_1:output:0%lstm_5/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_1?
lstm_5/lstm_cell_5/Sigmoid_1Sigmoidlstm_5/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Sigmoid_1?
lstm_5/lstm_cell_5/mul_4Mul lstm_5/lstm_cell_5/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_4?
#lstm_5/lstm_cell_5/ReadVariableOp_2ReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_5/lstm_cell_5/ReadVariableOp_2?
(lstm_5/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_5/lstm_cell_5/strided_slice_2/stack?
*lstm_5/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_5/lstm_cell_5/strided_slice_2/stack_1?
*lstm_5/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_5/lstm_cell_5/strided_slice_2/stack_2?
"lstm_5/lstm_cell_5/strided_slice_2StridedSlice+lstm_5/lstm_cell_5/ReadVariableOp_2:value:01lstm_5/lstm_cell_5/strided_slice_2/stack:output:03lstm_5/lstm_cell_5/strided_slice_2/stack_1:output:03lstm_5/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_5/lstm_cell_5/strided_slice_2?
lstm_5/lstm_cell_5/MatMul_6MatMullstm_5/lstm_cell_5/mul_2:z:0+lstm_5/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_6?
lstm_5/lstm_cell_5/add_2AddV2%lstm_5/lstm_cell_5/BiasAdd_2:output:0%lstm_5/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_2?
lstm_5/lstm_cell_5/ReluRelulstm_5/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Relu?
lstm_5/lstm_cell_5/mul_5Mullstm_5/lstm_cell_5/Sigmoid:y:0%lstm_5/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_5?
lstm_5/lstm_cell_5/add_3AddV2lstm_5/lstm_cell_5/mul_4:z:0lstm_5/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_3?
#lstm_5/lstm_cell_5/ReadVariableOp_3ReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_5/lstm_cell_5/ReadVariableOp_3?
(lstm_5/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(lstm_5/lstm_cell_5/strided_slice_3/stack?
*lstm_5/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_5/lstm_cell_5/strided_slice_3/stack_1?
*lstm_5/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_5/lstm_cell_5/strided_slice_3/stack_2?
"lstm_5/lstm_cell_5/strided_slice_3StridedSlice+lstm_5/lstm_cell_5/ReadVariableOp_3:value:01lstm_5/lstm_cell_5/strided_slice_3/stack:output:03lstm_5/lstm_cell_5/strided_slice_3/stack_1:output:03lstm_5/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_5/lstm_cell_5/strided_slice_3?
lstm_5/lstm_cell_5/MatMul_7MatMullstm_5/lstm_cell_5/mul_3:z:0+lstm_5/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_7?
lstm_5/lstm_cell_5/add_4AddV2%lstm_5/lstm_cell_5/BiasAdd_3:output:0%lstm_5/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_4?
lstm_5/lstm_cell_5/Sigmoid_2Sigmoidlstm_5/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Sigmoid_2?
lstm_5/lstm_cell_5/Relu_1Relulstm_5/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Relu_1?
lstm_5/lstm_cell_5/mul_6Mul lstm_5/lstm_cell_5/Sigmoid_2:y:0'lstm_5/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_6?
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2&
$lstm_5/TensorArrayV2_1/element_shape?
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/time?
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counter?
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_5_lstm_cell_5_split_readvariableop_resource2lstm_5_lstm_cell_5_split_1_readvariableop_resource*lstm_5_lstm_cell_5_readvariableop_resource*
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
lstm_5_while_body_280221*$
condR
lstm_5_while_cond_280220*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_5/while?
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack?
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_5/strided_slice_3/stack?
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1?
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2?
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_5/strided_slice_3?
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm?
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtime?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMullstm_5/strided_slice_3:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_6/Relu?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddj
reshape_3/ShapeShapedense_7/BiasAdd:output:0*
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
reshape_3/ReshapeReshapedense_7/BiasAdd:output:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_3/Reshape?
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0lstm_5_lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muly
IdentityIdentityreshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp"^lstm_5/lstm_cell_5/ReadVariableOp$^lstm_5/lstm_cell_5/ReadVariableOp_1$^lstm_5/lstm_cell_5/ReadVariableOp_2$^lstm_5/lstm_cell_5/ReadVariableOp_3<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp(^lstm_5/lstm_cell_5/split/ReadVariableOp*^lstm_5/lstm_cell_5/split_1/ReadVariableOp^lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2F
!lstm_5/lstm_cell_5/ReadVariableOp!lstm_5/lstm_cell_5/ReadVariableOp2J
#lstm_5/lstm_cell_5/ReadVariableOp_1#lstm_5/lstm_cell_5/ReadVariableOp_12J
#lstm_5/lstm_cell_5/ReadVariableOp_2#lstm_5/lstm_cell_5/ReadVariableOp_22J
#lstm_5/lstm_cell_5/ReadVariableOp_3#lstm_5/lstm_cell_5/ReadVariableOp_32z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2R
'lstm_5/lstm_cell_5/split/ReadVariableOp'lstm_5/lstm_cell_5/split/ReadVariableOp2V
)lstm_5/lstm_cell_5/split_1/ReadVariableOp)lstm_5/lstm_cell_5/split_1/ReadVariableOp2
lstm_5/whilelstm_5/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_280705

inputsC
0lstm_5_lstm_cell_5_split_readvariableop_resource:	?A
2lstm_5_lstm_cell_5_split_1_readvariableop_resource:	?=
*lstm_5_lstm_cell_5_readvariableop_resource:	 ?8
&dense_6_matmul_readvariableop_resource:  5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: 5
'dense_7_biasadd_readvariableop_resource:
identity??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?!lstm_5/lstm_cell_5/ReadVariableOp?#lstm_5/lstm_cell_5/ReadVariableOp_1?#lstm_5/lstm_cell_5/ReadVariableOp_2?#lstm_5/lstm_cell_5/ReadVariableOp_3?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?'lstm_5/lstm_cell_5/split/ReadVariableOp?)lstm_5/lstm_cell_5/split_1/ReadVariableOp?lstm_5/whileR
lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_5/Shape?
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack?
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1?
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2?
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicej
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros/mul/y?
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros/Less/y?
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessp
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros/packed/1?
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/Const?
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/zerosn
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros_1/mul/y?
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_5/zeros_1/Less/y?
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lesst
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/zeros_1/packed/1?
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/Const?
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/zeros_1?
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm?
lstm_5/transpose	Transposeinputslstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1?
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack?
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1?
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2?
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1?
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_5/TensorArrayV2/element_shape?
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2?
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor?
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack?
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1?
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2?
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_5/strided_slice_2?
"lstm_5/lstm_cell_5/ones_like/ShapeShapelstm_5/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_5/lstm_cell_5/ones_like/Shape?
"lstm_5/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_5/lstm_cell_5/ones_like/Const?
lstm_5/lstm_cell_5/ones_likeFill+lstm_5/lstm_cell_5/ones_like/Shape:output:0+lstm_5/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/ones_like?
 lstm_5/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2"
 lstm_5/lstm_cell_5/dropout/Const?
lstm_5/lstm_cell_5/dropout/MulMul%lstm_5/lstm_cell_5/ones_like:output:0)lstm_5/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_5/lstm_cell_5/dropout/Mul?
 lstm_5/lstm_cell_5/dropout/ShapeShape%lstm_5/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_5/lstm_cell_5/dropout/Shape?
7lstm_5/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform)lstm_5/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???29
7lstm_5/lstm_cell_5/dropout/random_uniform/RandomUniform?
)lstm_5/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2+
)lstm_5/lstm_cell_5/dropout/GreaterEqual/y?
'lstm_5/lstm_cell_5/dropout/GreaterEqualGreaterEqual@lstm_5/lstm_cell_5/dropout/random_uniform/RandomUniform:output:02lstm_5/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'lstm_5/lstm_cell_5/dropout/GreaterEqual?
lstm_5/lstm_cell_5/dropout/CastCast+lstm_5/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
lstm_5/lstm_cell_5/dropout/Cast?
 lstm_5/lstm_cell_5/dropout/Mul_1Mul"lstm_5/lstm_cell_5/dropout/Mul:z:0#lstm_5/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/lstm_cell_5/dropout/Mul_1?
"lstm_5/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2$
"lstm_5/lstm_cell_5/dropout_1/Const?
 lstm_5/lstm_cell_5/dropout_1/MulMul%lstm_5/lstm_cell_5/ones_like:output:0+lstm_5/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/lstm_cell_5/dropout_1/Mul?
"lstm_5/lstm_cell_5/dropout_1/ShapeShape%lstm_5/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_5/lstm_cell_5/dropout_1/Shape?
9lstm_5/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2;
9lstm_5/lstm_cell_5/dropout_1/random_uniform/RandomUniform?
+lstm_5/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_5/lstm_cell_5/dropout_1/GreaterEqual/y?
)lstm_5/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualBlstm_5/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_5/lstm_cell_5/dropout_1/GreaterEqual?
!lstm_5/lstm_cell_5/dropout_1/CastCast-lstm_5/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_5/lstm_cell_5/dropout_1/Cast?
"lstm_5/lstm_cell_5/dropout_1/Mul_1Mul$lstm_5/lstm_cell_5/dropout_1/Mul:z:0%lstm_5/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/lstm_cell_5/dropout_1/Mul_1?
"lstm_5/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2$
"lstm_5/lstm_cell_5/dropout_2/Const?
 lstm_5/lstm_cell_5/dropout_2/MulMul%lstm_5/lstm_cell_5/ones_like:output:0+lstm_5/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/lstm_cell_5/dropout_2/Mul?
"lstm_5/lstm_cell_5/dropout_2/ShapeShape%lstm_5/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_5/lstm_cell_5/dropout_2/Shape?
9lstm_5/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2;
9lstm_5/lstm_cell_5/dropout_2/random_uniform/RandomUniform?
+lstm_5/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_5/lstm_cell_5/dropout_2/GreaterEqual/y?
)lstm_5/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualBlstm_5/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_5/lstm_cell_5/dropout_2/GreaterEqual?
!lstm_5/lstm_cell_5/dropout_2/CastCast-lstm_5/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_5/lstm_cell_5/dropout_2/Cast?
"lstm_5/lstm_cell_5/dropout_2/Mul_1Mul$lstm_5/lstm_cell_5/dropout_2/Mul:z:0%lstm_5/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/lstm_cell_5/dropout_2/Mul_1?
"lstm_5/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2$
"lstm_5/lstm_cell_5/dropout_3/Const?
 lstm_5/lstm_cell_5/dropout_3/MulMul%lstm_5/lstm_cell_5/ones_like:output:0+lstm_5/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_5/lstm_cell_5/dropout_3/Mul?
"lstm_5/lstm_cell_5/dropout_3/ShapeShape%lstm_5/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_5/lstm_cell_5/dropout_3/Shape?
9lstm_5/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??x2;
9lstm_5/lstm_cell_5/dropout_3/random_uniform/RandomUniform?
+lstm_5/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2-
+lstm_5/lstm_cell_5/dropout_3/GreaterEqual/y?
)lstm_5/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualBlstm_5/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_5/lstm_cell_5/dropout_3/GreaterEqual?
!lstm_5/lstm_cell_5/dropout_3/CastCast-lstm_5/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_5/lstm_cell_5/dropout_3/Cast?
"lstm_5/lstm_cell_5/dropout_3/Mul_1Mul$lstm_5/lstm_cell_5/dropout_3/Mul:z:0%lstm_5/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_5/lstm_cell_5/dropout_3/Mul_1?
"lstm_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_5/lstm_cell_5/split/split_dim?
'lstm_5/lstm_cell_5/split/ReadVariableOpReadVariableOp0lstm_5_lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02)
'lstm_5/lstm_cell_5/split/ReadVariableOp?
lstm_5/lstm_cell_5/splitSplit+lstm_5/lstm_cell_5/split/split_dim:output:0/lstm_5/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_5/lstm_cell_5/split?
lstm_5/lstm_cell_5/MatMulMatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul?
lstm_5/lstm_cell_5/MatMul_1MatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_1?
lstm_5/lstm_cell_5/MatMul_2MatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_2?
lstm_5/lstm_cell_5/MatMul_3MatMullstm_5/strided_slice_2:output:0!lstm_5/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_3?
$lstm_5/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_5/lstm_cell_5/split_1/split_dim?
)lstm_5/lstm_cell_5/split_1/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_5/lstm_cell_5/split_1/ReadVariableOp?
lstm_5/lstm_cell_5/split_1Split-lstm_5/lstm_cell_5/split_1/split_dim:output:01lstm_5/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_5/lstm_cell_5/split_1?
lstm_5/lstm_cell_5/BiasAddBiasAdd#lstm_5/lstm_cell_5/MatMul:product:0#lstm_5/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd?
lstm_5/lstm_cell_5/BiasAdd_1BiasAdd%lstm_5/lstm_cell_5/MatMul_1:product:0#lstm_5/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd_1?
lstm_5/lstm_cell_5/BiasAdd_2BiasAdd%lstm_5/lstm_cell_5/MatMul_2:product:0#lstm_5/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd_2?
lstm_5/lstm_cell_5/BiasAdd_3BiasAdd%lstm_5/lstm_cell_5/MatMul_3:product:0#lstm_5/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/BiasAdd_3?
lstm_5/lstm_cell_5/mulMullstm_5/zeros:output:0$lstm_5/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul?
lstm_5/lstm_cell_5/mul_1Mullstm_5/zeros:output:0&lstm_5/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_1?
lstm_5/lstm_cell_5/mul_2Mullstm_5/zeros:output:0&lstm_5/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_2?
lstm_5/lstm_cell_5/mul_3Mullstm_5/zeros:output:0&lstm_5/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_3?
!lstm_5/lstm_cell_5/ReadVariableOpReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02#
!lstm_5/lstm_cell_5/ReadVariableOp?
&lstm_5/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_5/lstm_cell_5/strided_slice/stack?
(lstm_5/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_5/lstm_cell_5/strided_slice/stack_1?
(lstm_5/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_5/lstm_cell_5/strided_slice/stack_2?
 lstm_5/lstm_cell_5/strided_sliceStridedSlice)lstm_5/lstm_cell_5/ReadVariableOp:value:0/lstm_5/lstm_cell_5/strided_slice/stack:output:01lstm_5/lstm_cell_5/strided_slice/stack_1:output:01lstm_5/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2"
 lstm_5/lstm_cell_5/strided_slice?
lstm_5/lstm_cell_5/MatMul_4MatMullstm_5/lstm_cell_5/mul:z:0)lstm_5/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_4?
lstm_5/lstm_cell_5/addAddV2#lstm_5/lstm_cell_5/BiasAdd:output:0%lstm_5/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add?
lstm_5/lstm_cell_5/SigmoidSigmoidlstm_5/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Sigmoid?
#lstm_5/lstm_cell_5/ReadVariableOp_1ReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_5/lstm_cell_5/ReadVariableOp_1?
(lstm_5/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm_5/lstm_cell_5/strided_slice_1/stack?
*lstm_5/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm_5/lstm_cell_5/strided_slice_1/stack_1?
*lstm_5/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_5/lstm_cell_5/strided_slice_1/stack_2?
"lstm_5/lstm_cell_5/strided_slice_1StridedSlice+lstm_5/lstm_cell_5/ReadVariableOp_1:value:01lstm_5/lstm_cell_5/strided_slice_1/stack:output:03lstm_5/lstm_cell_5/strided_slice_1/stack_1:output:03lstm_5/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_5/lstm_cell_5/strided_slice_1?
lstm_5/lstm_cell_5/MatMul_5MatMullstm_5/lstm_cell_5/mul_1:z:0+lstm_5/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_5?
lstm_5/lstm_cell_5/add_1AddV2%lstm_5/lstm_cell_5/BiasAdd_1:output:0%lstm_5/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_1?
lstm_5/lstm_cell_5/Sigmoid_1Sigmoidlstm_5/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Sigmoid_1?
lstm_5/lstm_cell_5/mul_4Mul lstm_5/lstm_cell_5/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_4?
#lstm_5/lstm_cell_5/ReadVariableOp_2ReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_5/lstm_cell_5/ReadVariableOp_2?
(lstm_5/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_5/lstm_cell_5/strided_slice_2/stack?
*lstm_5/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2,
*lstm_5/lstm_cell_5/strided_slice_2/stack_1?
*lstm_5/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_5/lstm_cell_5/strided_slice_2/stack_2?
"lstm_5/lstm_cell_5/strided_slice_2StridedSlice+lstm_5/lstm_cell_5/ReadVariableOp_2:value:01lstm_5/lstm_cell_5/strided_slice_2/stack:output:03lstm_5/lstm_cell_5/strided_slice_2/stack_1:output:03lstm_5/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_5/lstm_cell_5/strided_slice_2?
lstm_5/lstm_cell_5/MatMul_6MatMullstm_5/lstm_cell_5/mul_2:z:0+lstm_5/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_6?
lstm_5/lstm_cell_5/add_2AddV2%lstm_5/lstm_cell_5/BiasAdd_2:output:0%lstm_5/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_2?
lstm_5/lstm_cell_5/ReluRelulstm_5/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Relu?
lstm_5/lstm_cell_5/mul_5Mullstm_5/lstm_cell_5/Sigmoid:y:0%lstm_5/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_5?
lstm_5/lstm_cell_5/add_3AddV2lstm_5/lstm_cell_5/mul_4:z:0lstm_5/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_3?
#lstm_5/lstm_cell_5/ReadVariableOp_3ReadVariableOp*lstm_5_lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02%
#lstm_5/lstm_cell_5/ReadVariableOp_3?
(lstm_5/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2*
(lstm_5/lstm_cell_5/strided_slice_3/stack?
*lstm_5/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_5/lstm_cell_5/strided_slice_3/stack_1?
*lstm_5/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_5/lstm_cell_5/strided_slice_3/stack_2?
"lstm_5/lstm_cell_5/strided_slice_3StridedSlice+lstm_5/lstm_cell_5/ReadVariableOp_3:value:01lstm_5/lstm_cell_5/strided_slice_3/stack:output:03lstm_5/lstm_cell_5/strided_slice_3/stack_1:output:03lstm_5/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2$
"lstm_5/lstm_cell_5/strided_slice_3?
lstm_5/lstm_cell_5/MatMul_7MatMullstm_5/lstm_cell_5/mul_3:z:0+lstm_5/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/MatMul_7?
lstm_5/lstm_cell_5/add_4AddV2%lstm_5/lstm_cell_5/BiasAdd_3:output:0%lstm_5/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/add_4?
lstm_5/lstm_cell_5/Sigmoid_2Sigmoidlstm_5/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Sigmoid_2?
lstm_5/lstm_cell_5/Relu_1Relulstm_5/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/Relu_1?
lstm_5/lstm_cell_5/mul_6Mul lstm_5/lstm_cell_5/Sigmoid_2:y:0'lstm_5/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_5/lstm_cell_5/mul_6?
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2&
$lstm_5/TensorArrayV2_1/element_shape?
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/time?
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counter?
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_5_lstm_cell_5_split_readvariableop_resource2lstm_5_lstm_cell_5_split_1_readvariableop_resource*lstm_5_lstm_cell_5_readvariableop_resource*
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
lstm_5_while_body_280518*$
condR
lstm_5_while_cond_280517*K
output_shapes:
8: : : : :????????? :????????? : : : : : *
parallel_iterations 2
lstm_5/while?
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:????????? *
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack?
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_5/strided_slice_3/stack?
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1?
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2?
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_5/strided_slice_3?
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/perm?
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:????????? 2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtime?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMullstm_5/strided_slice_3:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_6/Relu?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddj
reshape_3/ShapeShapedense_7/BiasAdd:output:0*
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
reshape_3/ReshapeReshapedense_7/BiasAdd:output:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:?????????2
reshape_3/Reshape?
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0lstm_5_lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muly
IdentityIdentityreshape_3/Reshape:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp"^lstm_5/lstm_cell_5/ReadVariableOp$^lstm_5/lstm_cell_5/ReadVariableOp_1$^lstm_5/lstm_cell_5/ReadVariableOp_2$^lstm_5/lstm_cell_5/ReadVariableOp_3<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp(^lstm_5/lstm_cell_5/split/ReadVariableOp*^lstm_5/lstm_cell_5/split_1/ReadVariableOp^lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2F
!lstm_5/lstm_cell_5/ReadVariableOp!lstm_5/lstm_cell_5/ReadVariableOp2J
#lstm_5/lstm_cell_5/ReadVariableOp_1#lstm_5/lstm_cell_5/ReadVariableOp_12J
#lstm_5/lstm_cell_5/ReadVariableOp_2#lstm_5/lstm_cell_5/ReadVariableOp_22J
#lstm_5/lstm_cell_5/ReadVariableOp_3#lstm_5/lstm_cell_5/ReadVariableOp_32z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp2R
'lstm_5/lstm_cell_5/split/ReadVariableOp'lstm_5/lstm_cell_5/split/ReadVariableOp2V
)lstm_5/lstm_cell_5/split_1/ReadVariableOp)lstm_5/lstm_cell_5/split_1/ReadVariableOp2
lstm_5/whilelstm_5/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
-__inference_sequential_2_layer_call_fn_279984
input_3
unknown:	?
	unknown_0:	?
	unknown_1:	 ?
	unknown_2:  
	unknown_3: 
	unknown_4: 
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_2799482
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
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?~
?	
while_body_279331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_5_split_readvariableop_resource_0:	?B
3while_lstm_cell_5_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_5_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_5_split_readvariableop_resource:	?@
1while_lstm_cell_5_split_1_readvariableop_resource:	?<
)while_lstm_cell_5_readvariableop_resource:	 ??? while/lstm_cell_5/ReadVariableOp?"while/lstm_cell_5/ReadVariableOp_1?"while/lstm_cell_5/ReadVariableOp_2?"while/lstm_cell_5/ReadVariableOp_3?&while/lstm_cell_5/split/ReadVariableOp?(while/lstm_cell_5/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_5/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape?
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_5/ones_like/Const?
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/ones_like?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul?
while/lstm_cell_5/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_2?
while/lstm_cell_5/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_3?
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dim?
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOp?
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_5/split_1?
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd?
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_1?
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_2?
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_3?
while/lstm_cell_5/mulMulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul?
while/lstm_cell_5/mul_1Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/mul_2Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/mul_3Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_3?
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_5/ReadVariableOp?
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack?
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice/stack_1?
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2?
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice?
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_4?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add?
while/lstm_cell_5/SigmoidSigmoidwhile/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid?
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1?
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice_1/stack?
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_5/strided_slice_1/stack_1?
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2?
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1?
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_1:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_5?
while/lstm_cell_5/add_1AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_1Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_4?
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2?
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_5/strided_slice_2/stack?
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_5/strided_slice_2/stack_1?
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2?
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2?
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_2:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_6?
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_2?
while/lstm_cell_5/ReluReluwhile/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu?
while/lstm_cell_5/mul_5Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_5?
while/lstm_cell_5/add_3AddV2while/lstm_cell_5/mul_4:z:0while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_3?
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3?
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_5/strided_slice_3/stack?
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1?
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2?
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3?
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_3:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_7?
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_4?
while/lstm_cell_5/Sigmoid_2Sigmoidwhile/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu_1?
while/lstm_cell_5/mul_6Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_5/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
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
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
a
E__inference_reshape_3_layer_call_and_return_conditional_losses_279518

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
while_cond_281689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_281689___redundant_placeholder04
0while_while_cond_281689___redundant_placeholder14
0while_while_cond_281689___redundant_placeholder24
0while_while_cond_281689___redundant_placeholder3
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
?
F
*__inference_reshape_3_layer_call_fn_281899

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
E__inference_reshape_3_layer_call_and_return_conditional_losses_2795182
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
,__inference_lstm_cell_5_layer_call_fn_281935

inputs
states_0
states_1
unknown:	?
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_2785552
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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
while_cond_281139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_281139___redundant_placeholder04
0while_while_cond_281139___redundant_placeholder14
0while_while_cond_281139___redundant_placeholder24
0while_while_cond_281139___redundant_placeholder3
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
?!
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_279948

inputs 
lstm_5_279923:	?
lstm_5_279925:	? 
lstm_5_279927:	 ? 
dense_6_279930:  
dense_6_279932:  
dense_7_279935: 
dense_7_279937:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputslstm_5_279923lstm_5_279925lstm_5_279927*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2798902 
lstm_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_6_279930dense_6_279932*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2794832!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_279935dense_7_279937*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2794992!
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_2795182
reshape_3/PartitionedCall?
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_5_279923*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/mul?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?!
?
H__inference_sequential_2_layer_call_and_return_conditional_losses_280012
input_3 
lstm_5_279987:	?
lstm_5_279989:	? 
lstm_5_279991:	 ? 
dense_6_279994:  
dense_6_279996:  
dense_7_279999: 
dense_7_280001:
identity??dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?lstm_5/StatefulPartitionedCall?;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
lstm_5/StatefulPartitionedCallStatefulPartitionedCallinput_3lstm_5_279987lstm_5_279989lstm_5_279991*
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_2794642 
lstm_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0dense_6_279994dense_6_279996*
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
GPU 2J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_2794832!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_279999dense_7_280001*
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
GPU 2J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_2794992!
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_2795182
reshape_3/PartitionedCall?
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOplstm_5_279987*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/mul?
IdentityIdentity"reshape_3/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_3
?~
?	
while_body_281415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_5_split_readvariableop_resource_0:	?B
3while_lstm_cell_5_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_5_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_5_split_readvariableop_resource:	?@
1while_lstm_cell_5_split_1_readvariableop_resource:	?<
)while_lstm_cell_5_readvariableop_resource:	 ??? while/lstm_cell_5/ReadVariableOp?"while/lstm_cell_5/ReadVariableOp_1?"while/lstm_cell_5/ReadVariableOp_2?"while/lstm_cell_5/ReadVariableOp_3?&while/lstm_cell_5/split/ReadVariableOp?(while/lstm_cell_5/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_5/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape?
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_5/ones_like/Const?
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/ones_like?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul?
while/lstm_cell_5/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_2?
while/lstm_cell_5/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_3?
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dim?
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOp?
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_5/split_1?
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd?
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_1?
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_2?
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_3?
while/lstm_cell_5/mulMulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul?
while/lstm_cell_5/mul_1Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/mul_2Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/mul_3Mulwhile_placeholder_2$while/lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_3?
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_5/ReadVariableOp?
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack?
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice/stack_1?
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2?
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice?
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_4?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add?
while/lstm_cell_5/SigmoidSigmoidwhile/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid?
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1?
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice_1/stack?
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_5/strided_slice_1/stack_1?
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2?
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1?
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_1:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_5?
while/lstm_cell_5/add_1AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_1Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_4?
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2?
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_5/strided_slice_2/stack?
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_5/strided_slice_2/stack_1?
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2?
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2?
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_2:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_6?
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_2?
while/lstm_cell_5/ReluReluwhile/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu?
while/lstm_cell_5/mul_5Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_5?
while/lstm_cell_5/add_3AddV2while/lstm_cell_5/mul_4:z:0while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_3?
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3?
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_5/strided_slice_3/stack?
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1?
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2?
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3?
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_3:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_7?
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_4?
while/lstm_cell_5/Sigmoid_2Sigmoidwhile/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu_1?
while/lstm_cell_5/mul_6Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_5/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
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
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
,__inference_lstm_cell_5_layer_call_fn_281952

inputs
states_0
states_1
unknown:	?
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_2787882
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
?:?????????:????????? :????????? : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
??
?
B__inference_lstm_5_layer_call_and_return_conditional_losses_280998
inputs_0<
)lstm_cell_5_split_readvariableop_resource:	?:
+lstm_cell_5_split_1_readvariableop_resource:	?6
#lstm_cell_5_readvariableop_resource:	 ?
identity??;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?lstm_cell_5/ReadVariableOp?lstm_cell_5/ReadVariableOp_1?lstm_cell_5/ReadVariableOp_2?lstm_cell_5/ReadVariableOp_3? lstm_cell_5/split/ReadVariableOp?"lstm_cell_5/split_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2x
lstm_cell_5/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_5/ones_like/Const?
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/ones_like|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim?
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 lstm_cell_5/split/ReadVariableOp?
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_5/split?
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul?
lstm_cell_5/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_1?
lstm_cell_5/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_2?
lstm_cell_5/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_3?
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim?
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_5/split_1/ReadVariableOp?
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
lstm_cell_5/split_1?
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd?
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_1?
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_2?
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/BiasAdd_3?
lstm_cell_5/mulMulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul?
lstm_cell_5/mul_1Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_1?
lstm_cell_5/mul_2Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_2?
lstm_cell_5/mul_3Mulzeros:output:0lstm_cell_5/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_3?
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp?
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack?
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice/stack_1?
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2?
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice?
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul:z:0"lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_4?
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add|
lstm_cell_5/SigmoidSigmoidlstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid?
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_1?
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell_5/strided_slice_1/stack?
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2%
#lstm_cell_5/strided_slice_1/stack_1?
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2?
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1?
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_1:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_5?
lstm_cell_5/add_1AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_1?
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_1?
lstm_cell_5/mul_4Mullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_4?
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_2?
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_5/strided_slice_2/stack?
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2%
#lstm_cell_5/strided_slice_2/stack_1?
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2?
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2?
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_2:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_6?
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_2u
lstm_cell_5/ReluRelulstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu?
lstm_cell_5/mul_5Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_5?
lstm_cell_5/add_3AddV2lstm_cell_5/mul_4:z:0lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_3?
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
lstm_cell_5/ReadVariableOp_3?
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2#
!lstm_cell_5/strided_slice_3/stack?
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1?
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2?
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3?
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_3:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/MatMul_7?
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/add_4?
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Sigmoid_2y
lstm_cell_5/Relu_1Relulstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/Relu_1?
lstm_cell_5/mul_6Mullstm_cell_5/Sigmoid_2:y:0 lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_5/mul_6?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
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
while_body_280865*
condR
while_cond_280864*K
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
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp?
,lstm_5/lstm_cell_5/kernel/Regularizer/SquareSquareClstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2.
,lstm_5/lstm_cell_5/kernel/Regularizer/Square?
+lstm_5/lstm_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+lstm_5/lstm_cell_5/kernel/Regularizer/Const?
)lstm_5/lstm_cell_5/kernel/Regularizer/SumSum0lstm_5/lstm_cell_5/kernel/Regularizer/Square:y:04lstm_5/lstm_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/Sum?
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82-
+lstm_5/lstm_cell_5/kernel/Regularizer/mul/x?
)lstm_5/lstm_cell_5/kernel/Regularizer/mulMul4lstm_5/lstm_cell_5/kernel/Regularizer/mul/x:output:02lstm_5/lstm_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)lstm_5/lstm_cell_5/kernel/Regularizer/muls
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp<^lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2z
;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp;lstm_5/lstm_cell_5/kernel/Regularizer/Square/ReadVariableOp28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
??
?	
while_body_281140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_5_split_readvariableop_resource_0:	?B
3while_lstm_cell_5_split_1_readvariableop_resource_0:	?>
+while_lstm_cell_5_readvariableop_resource_0:	 ?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_5_split_readvariableop_resource:	?@
1while_lstm_cell_5_split_1_readvariableop_resource:	?<
)while_lstm_cell_5_readvariableop_resource:	 ??? while/lstm_cell_5/ReadVariableOp?"while/lstm_cell_5/ReadVariableOp_1?"while/lstm_cell_5/ReadVariableOp_2?"while/lstm_cell_5/ReadVariableOp_3?&while/lstm_cell_5/split/ReadVariableOp?(while/lstm_cell_5/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_5/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape?
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_5/ones_like/Const?
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/ones_like?
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2!
while/lstm_cell_5/dropout/Const?
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/dropout/Mul?
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape?
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2̝?28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform?
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(while/lstm_cell_5/dropout/GreaterEqual/y?
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_5/dropout/GreaterEqual?
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_5/dropout/Cast?
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout/Mul_1?
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_1/Const?
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_1/Mul?
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape?
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ć?2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y?
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_1/GreaterEqual?
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_1/Cast?
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_1/Mul_1?
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_2/Const?
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_2/Mul?
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape?
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y?
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_2/GreaterEqual?
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_2/Cast?
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_2/Mul_1?
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2#
!while/lstm_cell_5/dropout_3/Const?
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_5/dropout_3/Mul?
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape?
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ͫ2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y?
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_5/dropout_3/GreaterEqual?
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_5/dropout_3/Cast?
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_5/dropout_3/Mul_1?
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dim?
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp?
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_5/split?
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul?
while/lstm_cell_5/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_1?
while/lstm_cell_5/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_2?
while/lstm_cell_5/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_3?
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dim?
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOp?
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/lstm_cell_5/split_1?
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd?
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_1?
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_2?
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/BiasAdd_3?
while/lstm_cell_5/mulMulwhile_placeholder_2#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul?
while/lstm_cell_5/mul_1Mulwhile_placeholder_2%while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_1?
while/lstm_cell_5/mul_2Mulwhile_placeholder_2%while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_2?
while/lstm_cell_5/mul_3Mulwhile_placeholder_2%while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_3?
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02"
 while/lstm_cell_5/ReadVariableOp?
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack?
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice/stack_1?
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2?
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice?
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_4?
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add?
while/lstm_cell_5/SigmoidSigmoidwhile/lstm_cell_5/add:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid?
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1?
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell_5/strided_slice_1/stack?
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2+
)while/lstm_cell_5/strided_slice_1/stack_1?
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2?
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1?
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_1:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_5?
while/lstm_cell_5/add_1AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_1?
while/lstm_cell_5/Sigmoid_1Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_1?
while/lstm_cell_5/mul_4Mulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_4?
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2?
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_5/strided_slice_2/stack?
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   2+
)while/lstm_cell_5/strided_slice_2/stack_1?
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2?
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2?
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_2:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_6?
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_2?
while/lstm_cell_5/ReluReluwhile/lstm_cell_5/add_2:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu?
while/lstm_cell_5/mul_5Mulwhile/lstm_cell_5/Sigmoid:y:0$while/lstm_cell_5/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_5?
while/lstm_cell_5/add_3AddV2while/lstm_cell_5/mul_4:z:0while/lstm_cell_5/mul_5:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_3?
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3?
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   2)
'while/lstm_cell_5/strided_slice_3/stack?
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1?
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2?
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3?
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_3:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/MatMul_7?
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/add_4?
while/lstm_cell_5/Sigmoid_2Sigmoidwhile/lstm_cell_5/add_4:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Sigmoid_2?
while/lstm_cell_5/Relu_1Reluwhile/lstm_cell_5/add_3:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/Relu_1?
while/lstm_cell_5/mul_6Mulwhile/lstm_cell_5/Sigmoid_2:y:0&while/lstm_cell_5/Relu_1:activations:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_5/mul_6?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_5/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_5/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:????????? 2
while/Identity_5?

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
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
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :????????? :????????? : : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
C__inference_dense_6_layer_call_and_return_conditional_losses_279483

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
 
_user_specified_nameinputs"?L
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
serving_default_input_3:0?????????A
	reshape_34
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
	optimizer
regularization_losses
trainable_variables
	variables
		keras_api


signatures
`__call__
a_default_save_signature
*b&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
?
regularization_losses
	variables
trainable_variables
 	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
?
!iter

"beta_1

#beta_2
	$decay
%learning_ratemRmSmTmU&mV'mW(mXvYvZv[v\&v]'v^(v_"
	optimizer
 "
trackable_list_wrapper
Q
&0
'1
(2
3
4
5
6"
trackable_list_wrapper
Q
&0
'1
(2
3
4
5
6"
trackable_list_wrapper
?
)layer_regularization_losses
regularization_losses
*metrics
+layer_metrics
trainable_variables

,layers
	variables
-non_trainable_variables
`__call__
a_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
kserving_default"
signature_map
?
.
state_size

&kernel
'recurrent_kernel
(bias
/regularization_losses
0	variables
1trainable_variables
2	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
?
3layer_regularization_losses
regularization_losses
trainable_variables
4metrics
5layer_metrics

6states

7layers
	variables
8non_trainable_variables
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
 :  2dense_6/kernel
: 2dense_6/bias
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
?
9layer_regularization_losses
regularization_losses
:metrics
	variables
;layer_metrics
trainable_variables

<layers
=non_trainable_variables
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_7/kernel
:2dense_7/bias
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
?
>layer_regularization_losses
regularization_losses
?metrics
	variables
@layer_metrics
trainable_variables

Alayers
Bnon_trainable_variables
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Clayer_regularization_losses
regularization_losses
Dmetrics
	variables
Elayer_metrics
trainable_variables

Flayers
Gnon_trainable_variables
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	?2lstm_5/lstm_cell_5/kernel
6:4	 ?2#lstm_5/lstm_cell_5/recurrent_kernel
&:$?2lstm_5/lstm_cell_5/bias
 "
trackable_list_wrapper
'
H0"
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
?
Ilayer_regularization_losses
/regularization_losses
Jmetrics
0	variables
Klayer_metrics
1trainable_variables

Llayers
Mnon_trainable_variables
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
'
n0"
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
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
%:#  2Adam/dense_6/kernel/m
: 2Adam/dense_6/bias/m
%:# 2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
1:/	?2 Adam/lstm_5/lstm_cell_5/kernel/m
;:9	 ?2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/m
+:)?2Adam/lstm_5/lstm_cell_5/bias/m
%:#  2Adam/dense_6/kernel/v
: 2Adam/dense_6/bias/v
%:# 2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
1:/	?2 Adam/lstm_5/lstm_cell_5/kernel/v
;:9	 ?2*Adam/lstm_5/lstm_cell_5/recurrent_kernel/v
+:)?2Adam/lstm_5/lstm_cell_5/bias/v
?2?
-__inference_sequential_2_layer_call_fn_279544
-__inference_sequential_2_layer_call_fn_280092
-__inference_sequential_2_layer_call_fn_280111
-__inference_sequential_2_layer_call_fn_279984?
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
!__inference__wrapped_model_278431input_3"?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_280376
H__inference_sequential_2_layer_call_and_return_conditional_losses_280705
H__inference_sequential_2_layer_call_and_return_conditional_losses_280012
H__inference_sequential_2_layer_call_and_return_conditional_losses_280040?
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
?2?
'__inference_lstm_5_layer_call_fn_280722
'__inference_lstm_5_layer_call_fn_280733
'__inference_lstm_5_layer_call_fn_280744
'__inference_lstm_5_layer_call_fn_280755?
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
B__inference_lstm_5_layer_call_and_return_conditional_losses_280998
B__inference_lstm_5_layer_call_and_return_conditional_losses_281305
B__inference_lstm_5_layer_call_and_return_conditional_losses_281548
B__inference_lstm_5_layer_call_and_return_conditional_losses_281855?
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
(__inference_dense_6_layer_call_fn_281864?
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
C__inference_dense_6_layer_call_and_return_conditional_losses_281875?
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
(__inference_dense_7_layer_call_fn_281884?
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
C__inference_dense_7_layer_call_and_return_conditional_losses_281894?
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
*__inference_reshape_3_layer_call_fn_281899?
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_281912?
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
$__inference_signature_wrapper_280073input_3"?
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
,__inference_lstm_cell_5_layer_call_fn_281935
,__inference_lstm_cell_5_layer_call_fn_281952?
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_282033
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_282146?
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
__inference_loss_fn_0_282157?
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
!__inference__wrapped_model_278431z&('4?1
*?'
%?"
input_3?????????
? "9?6
4
	reshape_3'?$
	reshape_3??????????
C__inference_dense_6_layer_call_and_return_conditional_losses_281875\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? {
(__inference_dense_6_layer_call_fn_281864O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
C__inference_dense_7_layer_call_and_return_conditional_losses_281894\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_dense_7_layer_call_fn_281884O/?,
%?"
 ?
inputs????????? 
? "??????????;
__inference_loss_fn_0_282157&?

? 
? "? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_280998}&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0????????? 
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_281305}&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0????????? 
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_281548m&('??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0????????? 
? ?
B__inference_lstm_5_layer_call_and_return_conditional_losses_281855m&('??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0????????? 
? ?
'__inference_lstm_5_layer_call_fn_280722p&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "?????????? ?
'__inference_lstm_5_layer_call_fn_280733p&('O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "?????????? ?
'__inference_lstm_5_layer_call_fn_280744`&('??<
5?2
$?!
inputs?????????

 
p 

 
? "?????????? ?
'__inference_lstm_5_layer_call_fn_280755`&('??<
5?2
$?!
inputs?????????

 
p

 
? "?????????? ?
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_282033?&('??}
v?s
 ?
inputs?????????
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
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_282146?&('??}
v?s
 ?
inputs?????????
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
,__inference_lstm_cell_5_layer_call_fn_281935?&('??}
v?s
 ?
inputs?????????
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
,__inference_lstm_cell_5_layer_call_fn_281952?&('??}
v?s
 ?
inputs?????????
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
E__inference_reshape_3_layer_call_and_return_conditional_losses_281912\/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? }
*__inference_reshape_3_layer_call_fn_281899O/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_sequential_2_layer_call_and_return_conditional_losses_280012r&('<?9
2?/
%?"
input_3?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_280040r&('<?9
2?/
%?"
input_3?????????
p

 
? ")?&
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_280376q&(';?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
H__inference_sequential_2_layer_call_and_return_conditional_losses_280705q&(';?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
-__inference_sequential_2_layer_call_fn_279544e&('<?9
2?/
%?"
input_3?????????
p 

 
? "???????????
-__inference_sequential_2_layer_call_fn_279984e&('<?9
2?/
%?"
input_3?????????
p

 
? "???????????
-__inference_sequential_2_layer_call_fn_280092d&(';?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_2_layer_call_fn_280111d&(';?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_280073?&('??<
? 
5?2
0
input_3%?"
input_3?????????"9?6
4
	reshape_3'?$
	reshape_3?????????