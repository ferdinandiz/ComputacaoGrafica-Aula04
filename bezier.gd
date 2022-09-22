extends AnimatedSprite
var ponto1 = Vector2(0,0)
var ponto2 = Vector2(40,-30)
var ponto3 = Vector2(-10,-10)
var ponto4 = Vector2(-10,0)
var tempo = 0

func _ready():
	pass


func _cubic_bezier(p0:Vector2, p1:Vector2, p2:Vector2, p3:Vector2, t: float):
	var q0 = p0.linear_interpolate(p1,t)
	var q1 = p1.linear_interpolate(p2,t)
	var q2 = p2.linear_interpolate(p3,t)
	
	var r0 = q0.linear_interpolate(q1,t)
	var r1 = q1.linear_interpolate(q2,t)
	
	var s = r0.linear_interpolate(r1, t)
	
	return s
	

func _process(delta):
	tempo += delta
	$".".position=_cubic_bezier(ponto1, ponto2, ponto3, ponto4, tempo)
	
	
