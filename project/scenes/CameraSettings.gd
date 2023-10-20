@tool
extends Node

@export var resolution := Vector2i(640,480):
	set(value):
		resolution = value
		update_viewports()

@onready var viewport1 := %SubViewport1
@onready var viewport2 := %SubViewport2
@onready var viewport3 := %SubViewport3
@onready var viewport4 := %SubViewport4
@onready var viewport5 := %SubViewport5
@onready var viewport6 := %SubViewport6
@onready var viewports := [viewport1,viewport2,viewport3,viewport4,viewport5,viewport6]

@onready var camera1 := %Camera1
@onready var camera2 := %Camera2
@onready var camera3 := %Camera3
@onready var camera4 := %Camera4
@onready var camera5 := %Camera5
@onready var camera6 := %Camera6
@onready var cameras := [camera1,camera2,camera3,camera4,camera5,camera6]

func update_viewports():
	for viewport in viewports:
		viewport.size = resolution
