#颜色随机变化
extends Light2D

var aim_color = Color(1.0,1.0,1.0,1.0)

func _ready():
	pass

func _physics_process(delta):
	if pow(aim_color.r - color.r,2)+pow(aim_color.g - color.g,2)+pow(aim_color.b - color.b,2) < 0.01:#随机颜色
		aim_color = Color(rand_range(0,1.0),rand_range(0,1.0),rand_range(0,1.0),1.0)
	
	color = Color(color.r+(aim_color.r-color.r)*delta,color.g+(aim_color.g-color.g)*delta,color.b+(aim_color.b-color.b)*delta,1)
	$"blob".modulate = color
