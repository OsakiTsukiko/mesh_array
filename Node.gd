extends Node


func _ready():
#	var vertices = PoolVector3Array()
#	vertices.push_back(Vector3(0, 0, 0))
#	vertices.push_back(Vector3(1, 0, 0))
#	vertices.push_back(Vector3(0, 0, 1))
#	vertices.push_back(Vector3(1, 0, 1))
#	# Initialize the ArrayMesh.
#	var arr_mesh = ArrayMesh.new()
#	var arrays = []
#	arrays.resize(ArrayMesh.ARRAY_MAX)
#	arrays[ArrayMesh.ARRAY_VERTEX] = vertices
#	# Create the Mesh.
#	arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
#	var m = MeshInstance.new()
#	m.mesh = arr_mesh
#	self.add_child(m)

	var tmpMesh = Mesh.new()
	var vertices = PoolVector3Array()
#	var UVs = PoolVector2Array()
	var mat = SpatialMaterial.new()
	var color = Color(0.9, 0.1, 0.1)
	
	vertices.push_back(Vector3(0,0,0))
	vertices.push_back(Vector3(1,0,0))
	vertices.push_back(Vector3(1,0,1))
	vertices.push_back(Vector3(0,0,1))
#	IT WOULD APEAR THEY MUST BE IN ORDER
	
#	UVs.push_back(Vector2(0,0))
#	UVs.push_back(Vector2(0,1))
#	UVs.push_back(Vector2(1,1))
#	UVs.push_back(Vector2(1,0))
#	I HAVE YET TO LEARN WHAT UVs ARE

	mat.albedo_color = color

	var st = SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLE_FAN)
	st.set_material(mat)

	for v in vertices.size(): 
		st.add_color(color)
#		st.add_uv(UVs[v])
		st.add_vertex(vertices[v])

	st.commit(tmpMesh)

	var m = MeshInstance.new()
	m.mesh = tmpMesh
	self.add_child(m)

	pass 
