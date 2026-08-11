extends Area2D

var velocidade = 600

func _process(delta):
	position.x += velocidade * delta
	if position.x > 1200:
		queue_free()

func _on_area_entered(area):
	if area.is_in_group("Inimigo"):
		area.explodir()       # chaama a função explodir
		queue_free()          # remove o tiro, ele não atravessa
