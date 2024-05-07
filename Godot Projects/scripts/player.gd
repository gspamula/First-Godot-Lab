#This is a platformer game in Godot, this game gives you complete freedom to do whatever you want.
#There's no winning or losing or any sort of a final goal or task. 
#The point of this is to make it as relaxing as possible.
#This game is based off of this tutorial: https://www.youtube.com/watch?v=9u6edV5-EEI
#author = Ganapathi Pamula
#version = 05.06.2024
extends CharacterBody2D

@export var speed = 550
@export var gravity =  18
@export var jump_force = 417.5
func _physics_process (delta):
	if !is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000:
			velocity.y = 1000
			
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_force
	var horizontal_direction = Input.get_axis("move_left", "move_right")
	velocity.x =  speed * horizontal_direction
	move_and_slide()
	print(velocity)

