package steam;

/**
 * Represents a Steam ID. Kind of immutable.
 * @author YellowAfterlife
 */
abstract SteamID(Array<Int>) {
	public var high(get, never):Int;
	public var low(get, never):Int;
	public inline function new(high:Int, low:Int) {
		this = [high, low];
	}
	//
	private inline function get_high() return this[0];
	private inline function get_low() return this[1];
	//
	public static var defValue(get, never):SteamID;
	private static inline function get_defValue():SteamID {
		return new SteamID(0, 0);
	}
}
