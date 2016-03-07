package steam.net;
import gml.io.Buffer;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("steam_net_packet")
extern class Packet {
	static function send(id:SteamID, data:Buffer, size:Int, type:Int):Bool;
	@:native("send_raw")
	static function sendRaw(idh:Int, idl:Int, data:Buffer, size:Int, type:Int):Bool;
	static function receive():Bool;
	@:native("get_size") static function getSize():Int;
	@:native("get_data") static function getData(buf:Buffer):Bool;
	@:native("get_sender_id") static function getSender():SteamID;
}

extern class PacketType {
	static inline var UNRELIABLE = 0;
	static inline var UNRELIABLE_NODELAY = 1;
	static inline var RELIABLE = 2;
	static inline var RELIABLE_BUFFER = 3;
}
