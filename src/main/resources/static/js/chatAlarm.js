/**
 * web socket
 */

function getId(id){
	return document.getElementById(id);
}

var data = {};//전송 데이터(JSON)

var ws ;

var chatAlarm = getId("chatAlarm");
let i = 0;


ws = new WebSocket("ws://localhost:8080/chatt");
ws.onmessage = function(msg){
	console.log("넘엉오나?");

	chatAlarm.innerText = ++i;

	//data.mid를 member.name으로 바꿔야함.
	//
}
	
