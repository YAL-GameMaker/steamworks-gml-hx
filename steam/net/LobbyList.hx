package steam.net;
import dp.type.SteamID;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("steam_lobby_list")
extern class LobbyList {
	static function request():Void;
	@:native("is_loading") static function isLoading():Bool;
	//
	@:native("add_string_filter")
	static function addStringFilter(key:String, value:String, cmp:Int):Void;
	@:native("add_numerical_filter")
	static function addNumericalFilter(key:String, value:Int, cmp:Int):Void;
	@:native("add_near_filter")
	static function addNearFilter(key:String, value:Int, cmp:Int):Void;
	@:native("add_distance_filter")
	static function addDistanceFilter(kind:Int):Void;
	//
	@:native("get_count") static function getCount():Int;
	@:native("get_data") static function getData(index:Int, key:String):String;
	@:native("get_lobby_id") static function getLobbyID(index:Int):SteamID;
	static function join(index:Int):Bool;
}

extern class LobbyFilterCmp {
	static inline var EQ = 0;
	static inline var NE = 3;
	static inline var LT = -1;
	static inline var GT = 1;
	static inline var LE = -2;
	static inline var GE = 2;
}
