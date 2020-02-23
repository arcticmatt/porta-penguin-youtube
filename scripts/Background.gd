extends Sprite

const VELOCITY = -1.5
var g_texture_width = null

func _ready():
	g_texture_width = texture.get_size().x * scale.x

func _process(delta):
	position.x += VELOCITY
	_attempt_reposition()

func _attempt_reposition():
	if position.x < -g_texture_width:
		# Don't just do position.x = g_texture_width, that would leave a gap
		position.x += 2 * g_texture_width
