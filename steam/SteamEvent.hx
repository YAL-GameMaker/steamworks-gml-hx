package steam;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("steam_net")
extern class SteamEvent {
	static inline var USER_PERSONA_NAME:String = "user_persona_name";
	static inline var LOBBY_JOINED:String = "lobby_joined";
	static inline var LOBBY_CREATED:String = "lobby_created";
	static inline var LOBBY_LIST:String = "lobby_list";
	static inline var P2P_SESSION_REQUEST:String = "p2p_session_request";
}
