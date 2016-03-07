package steam.net;
import dp.type.SteamID;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("steam.net")
extern class P2P {
	
	@:native("accept_p2p_session")
	static function acceptSession(id:SteamID):Bool;
	
	@:native("close_p2p_session")
	static function closeSession(id:SteamID):Bool;
	
	/** Dispatches events and stuff. */
	static function update():Void;
	
}
