#渲染一个爱心
extends MeshInstance2D

export(int) var size 

func _ready():
	# 初始化ArrayMesh所需部分信息
	## 顶点坐标数组
	var vertices = Array()
	vertices.push_back(Vector2(0, 0))
	vertices.push_back(Vector2(0, -1*size))
	vertices.push_back(Vector2(1*size, -1.5*size))
	vertices.push_back(Vector2(2*size, -0.75*size))
	vertices.push_back(Vector2(1.75*size, 0.25*size))
	vertices.push_back(Vector2(1*size, 1.25*size))
	vertices.push_back(Vector2(0*size, 2*size))
	vertices.push_back(Vector2(-1*size, 1.25*size))
	vertices.push_back(Vector2(-1.75*size, 0.25*size))
	vertices.push_back(Vector2(-2*size, -0.75*size))
	vertices.push_back(Vector2(-1*size, -1.5*size))
	vertices.push_back(Vector2(0, -1*size))
	## 顶点颜色数组
	var colors = PoolColorArray()
	colors.push_back(Color(1.0,1.0,1.0,1.0))
	colors.push_back(Color(1.0,0.0,0.0,1.0))
	colors.push_back(Color(0.0,1.0,0.0,1.0))
	colors.push_back(Color(0.0,0.0,1.0,1.0))
	colors.push_back(Color(0.0,1.0,0.0,1.0))
	colors.push_back(Color(1.0,0.0,0.0,1.0))
	colors.push_back(Color(0.0,1.0,0.0,1.0))
	colors.push_back(Color(0.0,0.0,1.0,1.0))
	colors.push_back(Color(0.0,1.0,0.0,1.0))
	colors.push_back(Color(1.0,0.0,0.0,1.0))
	colors.push_back(Color(0.0,1.0,0.0,1.0))
	colors.push_back(Color(0.0,0.0,1.0,1.0))
	
	
	# 初始化ArrayMesh.
	var arr_mesh = ArrayMesh.new()
	var arrays = []
	arrays.resize(ArrayMesh.ARRAY_MAX)#定义数组大小
	arrays[ArrayMesh.ARRAY_VERTEX] = vertices#顶点坐标集合赋值
	arrays[ArrayMesh.ARRAY_COLOR] = colors#顶点颜色集合赋值
	
	# 生成对应ArrayMesh,并赋值给当前对象的mesh
	arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLE_FAN, arrays)
	mesh = arr_mesh
	pass 
