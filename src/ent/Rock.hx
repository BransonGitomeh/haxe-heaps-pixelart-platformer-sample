package ent;

class Rock extends Entity {

	override function init() {
		game.level.setCollide(Std.int(x), Std.int(y - 0.5), true);
		gravity = false;
	}

	override function remove() {
		super.remove();
		game.level.setCollide(Std.int(x), Std.int(y - 0.5), false);
	}

}