extends Sprite

const SMOOTH_SPEED = 2
var repos = Vector2()
var repos_velo = Vector2()

func _process(delta):
	var mpos = get_viewport().get_mouse_position()#.get_mouse_pos()
	var destination = position
	repos.x = mpos.x - destination.x
	repos.y = mpos.y - destination.y
	repos_velo.x = repos.x * SMOOTH_SPEED * delta
	repos_velo.y = repos.y * SMOOTH_SPEED * delta
	position.x += repos_velo.x
	position.y += repos_velo.y
