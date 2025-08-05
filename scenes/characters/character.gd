extends CharacterBody2D

@export var health : int
@export var damage : int
@export var speed : float

func _process(delta: float) -> void:
	
	#if Input.is_action_pressed("ui_right"):
	#	position += Vector2.RIGHT * delta * speed
	
	#if Input.is_action_pressed("ui_left"):
	#	position += Vector2.LEFT * delta * speed

	#if Input.is_action_pressed("ui_up"):
	#	position += Vector2.UP * delta * speed	

	#if Input.is_action_pressed("ui_down"):
	#	position += Vector2.DOWN * delta * speed

	var derection := Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	#position += derection * delta * speed
	velocity = derection * speed
	move_and_slide()
