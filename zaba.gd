extends CharacterBody2D

class_name zaba

const speed = 300


var gravity = 25
var jump_velocity = -600

var max_jumps = 2
var jump_count = 0
var is_flying = false

var fly_velocity = -1500

func start_flying():
	is_flying = true

func _physics_process(_delta):
	if not is_flying:
		if is_on_floor():
			jump_count = 0
		else:
			velocity.y += gravity
		
		
		if Input.is_action_just_pressed("ui_accept") and jump_count < max_jumps:
			jump()
			jump_count += 1
	else:
		velocity.y = fly_velocity

func jump():
	velocity.y = jump_velocity

	

func _process(_delta):			
	#  movement/
	
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		

		
			
	
	move_and_slide()
		
