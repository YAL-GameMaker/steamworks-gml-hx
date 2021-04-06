package steam.net;
import dp.type.SteamID;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("steam_lobby_list") @:snakeCase
extern class LobbyList {
	static function request():Void;
	static function isLoading():Bool;
	//
	static function addStringFilter(key:String, value:String, cmp:LobbyFilterCmp):Void;
	static function addNumericalFilter(key:String, value:Int, cmp:LobbyFilterCmp):Void;
	static function addNearFilter(key:String, value:Int, cmp:LobbyFilterCmp):Void;
	static function addDistanceFilter(kind:Int):Void;
	//
	static function getCount():Int;
	static function getData(index:Int, key:String):String;
	static function getLobbyID(index:Int):SteamID;
	static function getLobbyMemberID(lobbyIndex:Int, memberIndex:Int):SteamID;
	static function getLobbyMemberCount(lobbyIndex:Int):Int;
	static function join(index:Int):Bool;
}

enum abstract LobbyFilterCmp(Int) from Int to Int {
	var EQ = 0;
	var NE = 3;
	var LT = -1;
	var GT = 1;
	var LE = -2;
	var GE = 2;
}
