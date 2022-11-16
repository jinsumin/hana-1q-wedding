/**
 * web socket
 */

function getId(id) {
	return document.getElementById(id);
}

var data = {};//전송 데이터(JSON)
var item;

var ws;
var mid = getId('mid');
var btnLogin = getId('btnLogin');
var btnSend = getId('btnSend');
var talk = getId('talk');
var msg = getId('msg');

ws = new WebSocket("ws://localhost:8080/chatt");
btnLogin.onclick = function() {

	ws.onmessage = function(msg) {

		console.log(msg)

		var data = JSON.parse(msg.data);
		var css;

		if (data.mid == mid.value) {
			css = 'class=right';

			item = `
							                                                <li ${css}>
                                                    <div class="conversation-list d-flex">
                                                        <div class="chat-user-img online align-self-start order-3">
                                                            <img src="chat/assets/images/users/character1.png" class="rounded-circle avatar-xs" alt="avatar"><br>
                                                            <span style="font-size: 10px">${data.mid}</span>
                                                            
                                                        </div>
                                                        
                                                        <div class="ctext-wrap">
                                                            <div class="ctext-wrap-content">
                                                                <p class="mb-0" style="font-size: 16px;font-family: hanaM;!important">${data.msg} <span class="d-inline-block font-size-12 text-muted ms-3"  style="font-size: 2px;font-family: hanaM;!important">${data.date}</span></p>
                                                            </div>
                                                            <div class="dropdown align-self-start">
                                                                <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="mdi mdi-dots-vertical"></i>
                                                                </a>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Copy</a>
                                                                    <a class="dropdown-item" href="#">Save</a>
                                                                    <a class="dropdown-item" href="#">Forward</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>`;


		} else {
			css = '';
			
			
			item = `
							                                                <li ${css}>
                                                    <div class="conversation-list d-flex">
                                                        <div class="chat-user-img online align-self-start">
                                                            <img src="chat/assets/images/users/character2.png" class="rounded-circle avatar-xs" alt="avatar"><br>
                                                            <span style="font-size: 10px">${data.mid}</span>
                                                            
                                                        </div>
                                                        
                                                        <div class="ctext-wrap">
                                                            <div class="ctext-wrap-content">
                                                                <p class="mb-0">${data.msg} <span class="d-inline-block font-size-12 text-muted ms-3">${data.date}</span></p>
                                                            </div>
                                                            <div class="dropdown align-self-start">
                                                                <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <i class="mdi mdi-dots-vertical"></i>
                                                                </a>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">Copy</a>
                                                                    <a class="dropdown-item" href="#">Save</a>
                                                                    <a class="dropdown-item" href="#">Forward</a>
                                                                    <a class="dropdown-item" href="#">Delete</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>`;
			
			
			
		}

		//data.mid를 member.name으로 바꿔야함.
		//

		talk.innerHTML += item;
		talk.scrollTop = talk.scrollHeight;//스크롤바 하단으로 이동
	}
}

msg.onkeyup = function(ev) {
	if (ev.keyCode == 13) {
		console.log("여기ㅣ다~~")
		send();
	}
}

btnSend.onclick = function() {
	send();
}

function send() {
	if (msg.value.trim() != '') {
		data.mid = getId('mid').value;
		data.msg = msg.value;
		data.date = new Date().toLocaleString();
		var temp = JSON.stringify(data);
		ws.send(temp);
	}
	msg.value = '';

}