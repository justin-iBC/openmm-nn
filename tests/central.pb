
C
	positionsPlaceholder*
shape:���������*
dtype0
2
pow/yConst*
dtype0*
valueB
 *   @
%
powPow	positionspow/y*
T0
:
ConstConst*
valueB"       *
dtype0
?
energySumpowConst*

Tidx0*
	keep_dims( *
T0

NegNegenergy*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
dtype0*
valueB
 *  �?
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
6
gradients/Neg_grad/NegNeggradients/Fill*
T0
X
#gradients/energy_grad/Reshape/shapeConst*
valueB"      *
dtype0
|
gradients/energy_grad/ReshapeReshapegradients/Neg_grad/Neg#gradients/energy_grad/Reshape/shape*
T0*
Tshape0
B
gradients/energy_grad/ShapeShapepow*
T0*
out_type0
y
gradients/energy_grad/TileTilegradients/energy_grad/Reshapegradients/energy_grad/Shape*

Tmultiples0*
T0
E
gradients/pow_grad/ShapeShape	positions*
T0*
out_type0
C
gradients/pow_grad/Shape_1Const*
dtype0*
valueB 
�
(gradients/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_grad/Shapegradients/pow_grad/Shape_1*
T0
I
gradients/pow_grad/mulMulgradients/energy_grad/Tilepow/y*
T0
E
gradients/pow_grad/sub/yConst*
valueB
 *  �?*
dtype0
G
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
T0
I
gradients/pow_grad/PowPow	positionsgradients/pow_grad/sub*
T0
X
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*
T0
�
gradients/pow_grad/SumSumgradients/pow_grad/mul_1(gradients/pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sumgradients/pow_grad/Shape*
T0*
Tshape0
I
gradients/pow_grad/Greater/yConst*
valueB
 *    *
dtype0
W
gradients/pow_grad/GreaterGreater	positionsgradients/pow_grad/Greater/y*
T0
1
gradients/pow_grad/LogLog	positions*
T0
>
gradients/pow_grad/zeros_like	ZerosLike	positions*
T0

gradients/pow_grad/SelectSelectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*
T0
I
gradients/pow_grad/mul_2Mulgradients/energy_grad/Tilepow*
T0
]
gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select*
T0
�
gradients/pow_grad/Sum_1Sumgradients/pow_grad/mul_3*gradients/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/pow_grad/Reshape_1Reshapegradients/pow_grad/Sum_1gradients/pow_grad/Shape_1*
T0*
Tshape0
N
forces/inputPackgradients/pow_grad/Reshape*
T0*

axis *
N
)
forcesIdentityforces/input*
T0"