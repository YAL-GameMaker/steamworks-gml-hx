package steam;
import haxe.Int64;

/**
 * Represents a Steam ID. Kind of immutable.
 * @author YellowAfterlife
 */
#if (steam_int64)
abstract SteamID(Int64) from Int64 to Int64 {
	public var high(get, never):Int;
	private inline function get_high():Int {
		return this.high;
	}
	public var low(get, never):Int;
	private inline function get_low():Int {
		return this.low;
	}
	//
	public inline function new(hi:Int, lo:Int) {
		this = Int64.make(hi, lo);
	}
	public static inline function ofInt64(i64:Int64):SteamID {
		return i64;
	}
	//
	public static var defValue:SteamID = cast 0;
	public inline function toString():String {
		return Std.string(cast this);
	}
}
#else
abstract SteamID(Array<Int>) {
	public var high(get, never):Int;
	public var low(get, never):Int;
	public inline function new(high:Int, low:Int) {
		this = SfTools.raw("steam_id_create")(high, low);
	}
	@:extern public static inline function create(high:Int, low:Int) {
		return SfTools.raw("steam_id_create")(high, low);
	}
	public static inline function ofInt64(i64:Int64):SteamID {
		return new SteamID(i64.high, i64.low);
	}
	//
	private inline function get_high() return this[0];
	private inline function get_low() return this[1];
	//
	public static var defValue(get, never):SteamID;
	private static inline function get_defValue():SteamID {
		return new SteamID(0, 0);
	}
	public inline function toString():String {
		return Std.string(cast this);
	}
}
#end
