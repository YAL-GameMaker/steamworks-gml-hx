package steam.net;
import gml.io.Buffer;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("steam_net_packet")
extern class Packet {
	static function send(id:SteamID, data:Buffer, size:Int, type:PacketType):Bool;
	@:native("send_raw")
	static function sendRaw(idh:Int, idl:Int, data:Buffer, size:Int, type:PacketType):Bool;
	static function receive():Bool;
	@:native("get_size") static function getSize():Int;
	@:native("get_data") static function getData(buf:Buffer):Bool;
	@:native("get_sender_id") static function getSender():SteamID;
}

enum abstract PacketType(Int) {
	var UNRELIABLE = 0;
	var UNRELIABLE_NODELAY = 1;
	var RELIABLE = 2;
	var RELIABLE_BUFFER = 3;
}
