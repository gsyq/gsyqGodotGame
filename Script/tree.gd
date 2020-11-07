#渲染多个三角形
extends MeshInstance2D

export(int) var size 

func _ready():
	# 初始化ArrayMesh所需部分信息
	## 顶点坐标数组
	var vertices = Array()
	vertices.push_back(Vector2(-0.5*size, 0))
	vertices.push_back(Vector2(0.5*size, 0))
	for i in range(1,5):#遍历生成上部顶点(4个点)
		if i % 2 == 0:
			vertices.push_back(Vector2(1*(0.5*size+i*size), -i*size))
		else:
			vertices.push_back(Vector2(-1*(0.5*size+i*size), -i*size))
	## 顶点颜色数组
	var colors = PoolColorArray()
	colors.push_back(Color(1.0,0.0,0.0,1.0))
	colors.push_back(Color(0.0,1.0,0.0,1.0))
	colors.push_back(Color(0.0,0.0,1.0,1.0))
	colors.push_back(Color(0.0,0.0,0.0,1.0))
	colors.push_back(Color(0.0,1.0,0.0,1.0))
	colors.push_back(Color(1.0,0.0,0.0,1.0))
	
	
	# 初始化ArrayMesh.
	var arr_mesh = ArrayMesh.new()
	var arrays = []
	arrays.resize(ArrayMesh.ARRAY_MAX)#定义数组大小
	arrays[ArrayMesh.ARRAY_VERTEX] = vertices#顶点坐标集合赋值
	arrays[ArrayMesh.ARRAY_COLOR] = colors#顶点颜色集合赋值
	
	# 生成对应ArrayMesh,并赋值给当前对象的mesh
	arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLE_STRIP, arrays)
	mesh = arr_mesh
	pass 
