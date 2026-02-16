extends StaticBody2D

@onready var damage_recever := $DamageRecever

func _ready() -> void:
	damage_recever.damage_received.connect(on_receive_damage.bind())
	
func on_receive_damage(damage: int) -> void:
	print(damage)
	queue_free() 
