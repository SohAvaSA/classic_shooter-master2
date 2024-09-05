extends Area2D

func explode():
	$Body.hide()
	$AnimationPlayer.play("explode")
	set_deferred("monitoring", false)
	await $AnimationPlayer.animation_finished
	queue_free()
