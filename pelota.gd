extends CharacterBody2D


var speed = 200
var dir = Vector2.DOWN
var is_active = true

func _ready() -> void:
	velocity = Vector2(speed * -1, speed)
	


func _physics_process(delta: float) -> void: #Movimiento de la pelota
	if is_active:
		
		var collision = move_and_collide(velocity * delta)
		
		if collision:
			velocity = velocity.bounce(collision.get_normal())  #Sirve para conseguir la velocidad contraria para simular el rebote de la pelota
			
			if collision.get_collider().has_method("hit"):
				collision.get_collider().hit()
			
			
		if(velocity.y > 0 and velocity.y < 100):
			velocity.y = -200
			
		if velocity.x == 0:
			velocity.x = -200
			
			
func gameOver():
	get_tree().call_deferred("change_scene_to_file", "res://menu_derrota.tscn")

func _on_muerte_body_entered(body: Node2D) -> void:
	gameOver()
