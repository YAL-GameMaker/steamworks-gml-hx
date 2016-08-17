package steam.net;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("steam_lobby")
extern class Lobby {
	static function leave():Bool;
	static function create(type:Int, limit:Int):Bool;
	@:native("join_id") static function join(id:SteamID):Void;
	//
	@:native("is_owner") static function isOwner():Bool;
	@:native("get_owner_id") static function getOwner():SteamID;
	//
	@:native("set_data") static function setData(key:String, value:String):Bool;
	@:native("set_type") static function setType(type:Int):Bool;
	//
	@:native("activate_invite_overlay") static function showInviteOverlay():Bool;
}

extern class LobbyType {
	static inline var PRIVATE = 0;
	static inline var FRIENDS_ONLY = 1;
	static inline var PUBLIC = 2;
}
