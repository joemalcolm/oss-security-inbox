X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["23346" "Thursday" "11" "January" "2018" "10:47:38" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLDRxE3wOXw9AwmOR1URO0xwTAK6Ud3i72mmOV7An=67A@mail.gmail.com>" "410" "[oss-security] transmission: rpc session-id mechanism design flaw results in RCE" "^Date:" nil nil "1" "2018011118:47:38" "[oss-security] transmission: rpc session-id mechanism design flaw results in RCE" (number mark "        taviso@googl Jan 11  410/23346 " thread-indent "\"[oss-security] transmission: rpc session-id mechanism design flaw results in RCE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9957 invoked by uid 550); 11 Jan 2018 18:48:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9915 invoked from network); 11 Jan 2018 18:48:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qIz58Jet0iQZXCnQAKTWD2OeJRXkqkUhw5T9pN2S+Fw=;
        b=JiNgVj0+GSuWHgpM30K/5N9xoChq7Vt6awUW54gRzFTI1TAaE5Mzwi0xLtoJM0svAh
         mCLarmolyv7HFYHYnSBYUSvXTWIHT3HZXMck+UBPRUWkdr1f5XLHYlIePDLi1KDZf0vZ
         7CKayKKHF1cc7Q3PJVkNM3jyHHkrFpihaDXFpPG7lAV9vGM+Uo7aKfsbT41uqbPMQGc+
         NB1SAwijkqM7c/wDr7Jb40RD5ijAZsISUAxgf4O7sUG5oNyMnPe4QTVnHVmbGXoGuG5Q
         Q1Q/kQ13oNbu4a2PDLKt1o0ZV/xbsXMInkPfGtG/vwkk/PCRqNv2ivFgjycLpqpUV3Xr
         uiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qIz58Jet0iQZXCnQAKTWD2OeJRXkqkUhw5T9pN2S+Fw=;
        b=GSwPl8H5NDDz8HYQwEt0dIo6Fgysh4ibtXXWrUTHwUdk9+9OJOWtKSCaiVP15r711p
         hD+PdiPyy6xXcLzlB4iC/pf7MfSYGmdKNfzJxTefdQi+Ih65mG75a2N55aFE9TbJ0RMa
         gAOPHZhJ+YNgBfl1OuYlZLHjVdtJR494B3MQjMZaw8d/ZqZtVglWzjo0tNgzOkoofkl2
         N3C6ukiTHZoO2MuN2QmA0KeGjS0b/jm2FCRnN/l8inMDdL5GpYZnOvpmA+JgE+55j4Pb
         HcLbIhM3JcTmjTrUbQyN6hodXposQq2iLi/7n0OxnqudXwprOqxPUlNfiyJUYtJvN2k0
         yCEA==
X-Gm-Message-State: AKwxytfNWclSc5/NW7xIO9CHFklwzNFsQj6TmVOYv5ExueIrxJRrKgl5
	WRpRvoK4v13jguh+q9lDCooLgsEQHTlzprIEt+VR+GV1K9c=
X-Google-Smtp-Source: ACJfBotDOOPVk1Vm+ni97Tj8+VNB0rJh/KttNj/ugV3KeEFn3RGVS89sNHw9FPeDwFtK9gJeF5FBxQfnnlUAFMOdDjk=
X-Received: by 10.200.24.205 with SMTP id o13mr2534392qtk.79.1515696479201;
 Thu, 11 Jan 2018 10:47:59 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAJ_zFkLDRxE3wOXw9AwmOR1URO0xwTAK6Ud3i72mmOV7An=67A@mail.gmail.com>
Content-Type: multipart/mixed; boundary="94eb2c0397243ba73405628496a8"
Date: Thu, 11 Jan 2018 10:47:38 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] transmission: rpc session-id mechanism design flaw results in RCE
To: oss-security@lists.openwall.com

--94eb2c0397243ba73405628496a8
Content-Type: multipart/alternative; boundary="94eb2c0397243ba73105628496a6"

--94eb2c0397243ba73105628496a6
Content-Type: text/plain; charset="UTF-8"

Hello, the transmission bittorrent client uses a client/server
architecture, the user interface is the client and a daemon runs in the
background managing the downloading, seeding, etc.

Clients interact with the daemon using JSON RPC requests to a web server
listening on port 9091. The daemon will only accept requests from localhost
by default, but it's common to configure NAS devices to accept remote
clients.

A sample RPC session looks like this:

$ curl -sI http://localhost:9091/transmission/rpc
HTTP/1.1 409 Conflict
Server: Transmission
X-Transmission-Session-Id: JL641xTn2h53UsN6bVa0kJjRBLA6oX1Ayl06AJwuhHvSgE6H
Date: Wed, 29 Nov 2017 21:37:41 GMT

$ curl -H 'X-Transmission-Session-Id:
JL641xTn2h53UsN6bVa0kJjRBLA6oX1Ayl06AJwuhHvSgE6H'  -d
'{"method":"session-set","arguments":{"download-dir":"/home/user"}}' -si
http://localhost:9091/transmission/rpc
HTTP/1.1 200 OK
Server: Transmission
Content-Type: application/json; charset=UTF-8
Date: Wed, 29 Nov 2017 21:38:57 GMT
Content-Length: 36

{"arguments":{},"result":"success"}

As with all HTTP RPC schemes like this, any website can send requests to
the daemon listening on localhost with XMLHttpRequest(), but the theory is
they will be ignored because clients must prove they can read and set a
specific header, X-Transmission-Session-Id.

Unfortunately, this design doesn't work because of an attack called "DNS
rebinding". Any website can simply create a dns name that they are
authorized to communicate with, and then make it resolve to localhost.

The attack works like this:

1. A user visits http://attacker.com, which has an <iframe> to a subdomain
the attacker controls.
2. The attacker configures their DNS server to respond alternately with
127.0.0.1 and 123.123.123.123 (an address they control) with a very low TTL.
3. When the browser resolves to 123.123.123.123, they serve HTML that waits
for the DNS entry to expire (or force it to expire by flooding the cache
with lookups), then they have permission to read and set headers.

I have a domain I use for testing dns rebinding called rbndr.us, you can
use this page to generate hostnames (source code is here:
https://github.com/taviso/rbndr):

https://lock.cmpxchg8b.com/rebinder.html

Here I want to alternate between 127.0.0.1 and 199.241.29.227, so I use
7f000001.c7f11de3.rbndr.us:

$ host 7f000001.c7f11de3.rbndr.us
7f000001.c7f11de3.rbndr.us has address 127.0.0.1
$ host 7f000001.c7f11de3.rbndr.us
7f000001.c7f11de3.rbndr.us has address 199.241.29.227
$ host 7f000001.c7f11de3.rbndr.us
7f000001.c7f11de3.rbndr.us has address 127.0.0.1

Here you can see the resolution alternates between the two addresses I want
(note that depending on caching it might take a while to switch, the TTL is
set to minimum but some servers round up).

I just wait for the cached response to expire, and then POST commands to
the server.

Exploitation is simple, you could set script-torrent-done-enabled and run
any command, or set download-dir to /home/user/ and then upload a torrent
for ".bashrc".

Here is my (simple) demo, it's slow, but could be made very fast:

http://lock.cmpxchg8b.com/Asoquu3e.html

I've verified it works on Chrome and Firefox on Windows and Linux (I tried
Fedora and Ubuntu), I expect other platforms and browsers are affected. There
are screenshots of how the attack is supposed to look on the bug report
here:

https://github.com/transmission/transmission/pull/468

Tavis.

--94eb2c0397243ba73105628496a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, the transmission bittorrent client uses a client/se=
rver architecture, the user interface is the client and a daemon runs in th=
e background managing the downloading, seeding, etc.<br class=3D"gmail-Appl=
e-interchange-newline"><br>Clients interact with the daemon using JSON RPC =
requests to a web server listening on port 9091. The daemon will only accep=
t requests from localhost by default, but it&#39;s common to configure NAS =
devices to accept remote clients.<br><br>A sample RPC session looks like th=
is:<br><br>$ curl -sI <a href=3D"http://localhost:9091/transmission/rpc">ht=
tp://localhost:9091/transmission/rpc</a><br>HTTP/1.1 409 Conflict<br>Server=
: Transmission<br>X-Transmission-Session-Id: JL641xTn2h53UsN6bVa0kJjRBLA6oX=
1Ayl06AJwuhHvSgE6H<br>Date: Wed, 29 Nov 2017 21:37:41 GMT<br><br>$ curl -H =
&#39;X-Transmission-Session-Id: JL641xTn2h53UsN6bVa0kJjRBLA6oX1Ayl06AJwuhHv=
SgE6H&#39; =C2=A0-d &#39;{&quot;method&quot;:&quot;session-set&quot;,&quot;=
arguments&quot;:{&quot;download-dir&quot;:&quot;/home/user&quot;}}&#39; -si=
 <a href=3D"http://localhost:9091/transmission/rpc">http://localhost:9091/t=
ransmission/rpc</a><br>HTTP/1.1 200 OK<br>Server: Transmission<br>Content-T=
ype: application/json; charset=3DUTF-8<br>Date: Wed, 29 Nov 2017 21:38:57 G=
MT<br>Content-Length: 36<br><br>{&quot;arguments&quot;:{},&quot;result&quot=
;:&quot;success&quot;}<br><br>As with all HTTP RPC schemes like this, any w=
ebsite can send requests to the daemon listening on localhost with XMLHttpR=
equest(), but the theory is they will be ignored because clients must prove=
 they can read and set a specific header, X-Transmission-Session-Id.<div><b=
r></div><div>Unfortunately, this design doesn&#39;t work because of an atta=
ck called &quot;DNS rebinding&quot;. Any website can simply create a dns na=
me that they are authorized to communicate with, and then make it resolve t=
o localhost.<br><br>The attack works like this:<br><br>1. A user visits <a =
href=3D"http://attacker.com">http://attacker.com</a>, which has an=C2=A0&lt=
;iframe&gt; to a subdomain the attacker controls.</div><div>2. The attacker=
 configures their DNS server to respond alternately with 127.0.0.1 and 123.=
123.123.123 (an address they control) with a very low TTL.<br>3. When the b=
rowser resolves to 123.123.123.123, they serve HTML that waits for the DNS =
entry to expire (or force it to expire by flooding the cache with lookups),=
 then they have permission to read and set headers.<br><br>I have a domain =
I use for testing dns rebinding called <a href=3D"http://rbndr.us">rbndr.us=
</a>, you can use this page to generate hostnames (source code is here: <a =
href=3D"https://github.com/taviso/rbndr">https://github.com/taviso/rbndr</a=
>):<br><br><a href=3D"https://lock.cmpxchg8b.com/rebinder.html">https://loc=
k.cmpxchg8b.com/rebinder.html</a><br><br>Here I want to alternate between 1=
27.0.0.1 and 199.241.29.227, so I use <a href=3D"http://7f000001.c7f11de3.r=
bndr.us">7f000001.c7f11de3.rbndr.us</a>:<br><br>$ host <a href=3D"http://7f=
000001.c7f11de3.rbndr.us">7f000001.c7f11de3.rbndr.us</a><br><a href=3D"http=
://7f000001.c7f11de3.rbndr.us">7f000001.c7f11de3.rbndr.us</a> has address 1=
27.0.0.1<br>$ host <a href=3D"http://7f000001.c7f11de3.rbndr.us">7f000001.c=
7f11de3.rbndr.us</a><br><a href=3D"http://7f000001.c7f11de3.rbndr.us">7f000=
001.c7f11de3.rbndr.us</a> has address 199.241.29.227<br>$ host <a href=3D"h=
ttp://7f000001.c7f11de3.rbndr.us">7f000001.c7f11de3.rbndr.us</a><br><a href=
=3D"http://7f000001.c7f11de3.rbndr.us">7f000001.c7f11de3.rbndr.us</a> has a=
ddress 127.0.0.1<br><br>Here you can see the resolution alternates between =
the two addresses I want (note that depending on caching it might take a wh=
ile to switch, the TTL is set to minimum but some servers round up).<br><br=
>I just wait for the cached response to expire, and then POST commands to t=
he server.<br><br>Exploitation is simple, you could set script-torrent-done=
-enabled and run any command, or set download-dir to /home/user/ and then u=
pload a torrent for &quot;.bashrc&quot;. <br><br>Here is my (simple) demo, =
it&#39;s slow, but could be made very fast:<br><br><a href=3D"http://lock.c=
mpxchg8b.com/Asoquu3e.html">http://lock.cmpxchg8b.com/Asoquu3e.html</a><br>=
<br></div><div>I&#39;ve verified it works on Chrome and Firefox on Windows =
and Linux (I tried Fedora and Ubuntu), I expect other platforms and browser=
s are affected.=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">There are screenshots of how=
 the attack is supposed to look on the bug report here:</span></div><div><b=
r></div><div><a href=3D"https://github.com/transmission/transmission/pull/4=
68">https://github.com/transmission/transmission/pull/468</a><br></div><div=
><br></div><div>Tavis.</div><div><br></div></div>

--94eb2c0397243ba73105628496a6--

--94eb2c0397243ba73405628496a8
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-mitigate-dns-rebinding-attacks.patch"
Content-Disposition: attachment; 
	filename="0001-mitigate-dns-rebinding-attacks.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jcatfmxd0

RnJvbSBhODJjOWQxNTQ2MTNhNWY5OTM5NDAyOWMyOGEwMTE0ODc0OTczNWFm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBUYXZpcyBPcm1hbmR5
IDx0YXZpc29AZ21haWwuY29tPgpEYXRlOiBGcmksIDEgRGVjIDIwMTcgMTI6
NDk6MjUgLTA4MDAKU3ViamVjdDogW1BBVENIXSBtaXRpZ2F0ZSBkbnMgcmVi
aW5kaW5nIGF0dGFja3MKCi0tLQogbGlidHJhbnNtaXNzaW9uL3F1YXJrLmMg
ICAgICAgIHwgICAyICsKIGxpYnRyYW5zbWlzc2lvbi9xdWFyay5oICAgICAg
ICB8ICAgMiArCiBsaWJ0cmFuc21pc3Npb24vcnBjLXNlcnZlci5jICAgfCAx
MTYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0K
IGxpYnRyYW5zbWlzc2lvbi9ycGMtc2VydmVyLmggICB8ICAgNCArKwogbGli
dHJhbnNtaXNzaW9uL3Nlc3Npb24uYyAgICAgIHwgICAyICsKIGxpYnRyYW5z
bWlzc2lvbi90cmFuc21pc3Npb24uaCB8ICAgMSArCiBsaWJ0cmFuc21pc3Np
b24vd2ViLmMgICAgICAgICAgfCAgIDMgKysKIDcgZmlsZXMgY2hhbmdlZCwg
MTIxIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvbGlidHJhbnNtaXNzaW9uL3F1YXJrLmMgYi9saWJ0cmFuc21pc3Npb24v
cXVhcmsuYwppbmRleCA4NjEwNTAwNTcuLjg3ZWQ5ZjNlZiAxMDA2NDQKLS0t
IGEvbGlidHJhbnNtaXNzaW9uL3F1YXJrLmMKKysrIGIvbGlidHJhbnNtaXNz
aW9uL3F1YXJrLmMKQEAgLTI5Niw2ICsyOTYsOCBAQCBzdGF0aWMgc3RydWN0
IHRyX2tleV9zdHJ1Y3QgY29uc3QgbXlfc3RhdGljW10gPQogICAgIHsgInJw
Yy12ZXJzaW9uLW1pbmltdW0iLCAxOSB9LAogICAgIHsgInJwYy13aGl0ZWxp
c3QiLCAxMyB9LAogICAgIHsgInJwYy13aGl0ZWxpc3QtZW5hYmxlZCIsIDIx
IH0sCisgICAgeyAicnBjLWhvc3Qtd2hpdGVsaXN0IiwgMTggfSwKKyAgICB7
ICJycGMtaG9zdC13aGl0ZWxpc3QtZW5hYmxlZCIsIDI2IH0sCiAgICAgeyAi
c2NyYXBlIiwgNiB9LAogICAgIHsgInNjcmFwZS1wYXVzZWQtdG9ycmVudHMt
ZW5hYmxlZCIsIDMwIH0sCiAgICAgeyAic2NyYXBlU3RhdGUiLCAxMSB9LApk
aWZmIC0tZ2l0IGEvbGlidHJhbnNtaXNzaW9uL3F1YXJrLmggYi9saWJ0cmFu
c21pc3Npb24vcXVhcmsuaAppbmRleCBkNDBhYjc1ZmEuLmQ4MmM3MDUxYiAx
MDA2NDQKLS0tIGEvbGlidHJhbnNtaXNzaW9uL3F1YXJrLmgKKysrIGIvbGli
dHJhbnNtaXNzaW9uL3F1YXJrLmgKQEAgLTI5OCw2ICsyOTgsOCBAQCBlbnVt
CiAgICAgVFJfS0VZX3JwY192ZXJzaW9uX21pbmltdW0sCiAgICAgVFJfS0VZ
X3JwY193aGl0ZWxpc3QsCiAgICAgVFJfS0VZX3JwY193aGl0ZWxpc3RfZW5h
YmxlZCwKKyAgICBUUl9LRVlfcnBjX2hvc3Rfd2hpdGVsaXN0LAorICAgIFRS
X0tFWV9ycGNfaG9zdF93aGl0ZWxpc3RfZW5hYmxlZCwKICAgICBUUl9LRVlf
c2NyYXBlLAogICAgIFRSX0tFWV9zY3JhcGVfcGF1c2VkX3RvcnJlbnRzX2Vu
YWJsZWQsCiAgICAgVFJfS0VZX3NjcmFwZVN0YXRlLApkaWZmIC0tZ2l0IGEv
bGlidHJhbnNtaXNzaW9uL3JwYy1zZXJ2ZXIuYyBiL2xpYnRyYW5zbWlzc2lv
bi9ycGMtc2VydmVyLmMKaW5kZXggN2M3OGY5MmFjLi5hMzNmMDdlMTAgMTAw
NjQ0Ci0tLSBhL2xpYnRyYW5zbWlzc2lvbi9ycGMtc2VydmVyLmMKKysrIGIv
bGlidHJhbnNtaXNzaW9uL3JwYy1zZXJ2ZXIuYwpAQCAtNTEsNiArNTEsNyBA
QCBzdHJ1Y3QgdHJfcnBjX3NlcnZlcgogICAgIGJvb2wgaXNFbmFibGVkOwog
ICAgIGJvb2wgaXNQYXNzd29yZEVuYWJsZWQ7CiAgICAgYm9vbCBpc1doaXRl
bGlzdEVuYWJsZWQ7CisgICAgYm9vbCBpc0hvc3RXaGl0ZWxpc3RFbmFibGVk
OwogICAgIHRyX3BvcnQgcG9ydDsKICAgICBjaGFyKiB1cmw7CiAgICAgc3Ry
dWN0IHRyX2FkZHJlc3MgYmluZEFkZHJlc3M7CkBAIC02Miw2ICs2Myw3IEBA
IHN0cnVjdCB0cl9ycGNfc2VydmVyCiAgICAgY2hhciogcGFzc3dvcmQ7CiAg
ICAgY2hhciogd2hpdGVsaXN0U3RyOwogICAgIHRyX2xpc3QqIHdoaXRlbGlz
dDsKKyAgICB0cl9saXN0KiBob3N0V2hpdGVsaXN0OwogICAgIGludCBsb2dp
bmF0dGVtcHRzOwogCiAgICAgYm9vbCBpc1N0cmVhbUluaXRpYWxpemVkOwpA
QCAtNTQ3LDYgKzU0OSw0NyBAQCBzdGF0aWMgYm9vbCBpc0FkZHJlc3NBbGxv
d2VkKHRyX3JwY19zZXJ2ZXIgY29uc3QqIHNlcnZlciwgY2hhciBjb25zdCog
YWRkcmVzcykKICAgICByZXR1cm4gZmFsc2U7CiB9CiAKK3N0YXRpYyBib29s
IGlzSG9zdG5hbWVBbGxvd2VkKHRyX3JwY19zZXJ2ZXIgY29uc3QqIHNlcnZl
ciwgc3RydWN0IGV2aHR0cF9yZXF1ZXN0KiByZXEpCit7CisgICAgY29uc3Qg
Y2hhciAqaG9zdCA9IGV2aHR0cF9maW5kX2hlYWRlcihyZXEtPmlucHV0X2hl
YWRlcnMsICJIb3N0Iik7CisgICAgY2hhciAqaG9zdG5hbWU7CisKKyAgICAv
LyBJZiBwYXNzd29yZCBhdXRoIGlzIGVuYWJsZWQsIGFueSBob3N0bmFtZSBp
cyBwZXJtaXR0ZWQuCisgICAgaWYgKHNlcnZlci0+aXNQYXNzd29yZEVuYWJs
ZWQpCisgICAgICAgIHJldHVybiB0cnVlOworCisgICAgLy8gTm8gaG9zdCBo
ZWFkZXIsIGludmFsaWQgcmVxdWVzdC4KKyAgICBpZiAoIWhvc3QpCisgICAg
ICAgIHJldHVybiBmYWxzZTsKKworICAgIC8vIEhvc3QgaGVhZGVyIG1pZ2h0
IGluY2x1ZGUgdGhlIHBvcnQuCisgICAgaG9zdG5hbWUgPSB0cl9zdHJuZHVw
KGhvc3QsIHN0cmNzcG4oaG9zdCwgIjoiKSk7CisKKyAgICAvLyBsb2NhbGhv
c3Qgb3IgaXBhZGRyZXNzIGlzIGFsd2F5cyBhY2NlcHRhYmxlLgorICAgIGlm
IChzdHJjbXAoaG9zdG5hbWUsICJsb2NhbGhvc3QiKSA9PSAwCisgICAgIHx8
IHN0cmNtcChob3N0bmFtZSwgImxvY2FsaG9zdC4iKSA9PSAwCisgICAgIHx8
IHRyX2FkZHJlc3NJc0lQKGhvc3RuYW1lKSkKKyAgICB7CisgICAgICAgIHRy
X2ZyZWUoaG9zdG5hbWUpOworICAgICAgICByZXR1cm4gdHJ1ZTsKKyAgICB9
CisKKyAgICAvLyBPdGhlcndpc2UsIGhvc3RuYW1lIG11c3QgYmUgd2hpdGVs
aXN0ZWQuCisgICAgaWYgKHNlcnZlci0+aXNIb3N0V2hpdGVsaXN0RW5hYmxl
ZCkKKyAgICB7CisgICAgICAgIGZvciAodHJfbGlzdCogbCA9IHNlcnZlci0+
aG9zdFdoaXRlbGlzdDsgbCAhPSBOVUxMOyBsID0gbC0+bmV4dCkgeworICAg
ICAgICAgICAgaWYgKHRyX3dpbGRtYXQoaG9zdG5hbWUsIGwtPmRhdGEpKQor
ICAgICAgICAgICAgeworICAgICAgICAgICAgICAgIHRyX2ZyZWUoaG9zdG5h
bWUpOworICAgICAgICAgICAgICAgIHJldHVybiB0cnVlOworICAgICAgICAg
ICAgfQorICAgICAgICB9CisgICAgfQorCisgICAgdHJfZnJlZShob3N0bmFt
ZSk7CisgICAgcmV0dXJuIGZhbHNlOworfQorCiBzdGF0aWMgYm9vbCB0ZXN0
X3Nlc3Npb25faWQoc3RydWN0IHRyX3JwY19zZXJ2ZXIqIHNlcnZlciwgc3Ry
dWN0IGV2aHR0cF9yZXF1ZXN0KiByZXEpCiB7CiAgICAgY2hhciBjb25zdCog
b3VycyA9IGdldF9jdXJyZW50X3Nlc3Npb25faWQoc2VydmVyKTsKQEAgLTYz
Niw2ICs2NzksMjIgQEAgc3RhdGljIHZvaWQgaGFuZGxlX3JlcXVlc3Qoc3Ry
dWN0IGV2aHR0cF9yZXF1ZXN0KiByZXEsIHZvaWQqIGFyZykKIAogI2lmZGVm
IFJFUVVJUkVfU0VTU0lPTl9JRAogCisgICAgICAgIGVsc2UgaWYgKCFpc0hv
c3RuYW1lQWxsb3dlZChzZXJ2ZXIsIHJlcSkpCisgICAgICAgIHsKKyAgICAg
ICAgICAgIGNoYXIqIHRtcCA9IHRyX3N0cmR1cF9wcmludGYoCisgICAgICAg
ICAgICAgICAgIjxwPlRyYW5zbWlzc2lvbiByZWNlaXZlZCB5b3VyIHJlcXVl
c3QsIGJ1dCB0aGUgaG9zdG5hbWUgd2FzIHVucmVjb2duaXplZC48L3A+Igor
ICAgICAgICAgICAgICAgICI8cD5UbyBmaXggdGhpcywgY2hvb3NlIG9uZSBv
ZiB0aGUgZm9sbG93aW5nIG9wdGlvbnM6IgorICAgICAgICAgICAgICAgICI8
dWw+IgorICAgICAgICAgICAgICAgICI8bGk+RW5hYmxlIHBhc3N3b3JkIGF1
dGhlbnRpY2F0aW9uLCB0aGVuIGFueSBob3N0bmFtZSBpcyBhbGxvd2VkLjwv
bGk+IgorICAgICAgICAgICAgICAgICI8bGk+QWRkIHRoZSBob3N0bmFtZSB5
b3Ugd2FudCB0byB1c2UgdG8gdGhlIHdoaXRlbGlzdCBpbiBzZXR0aW5ncy48
L2xpPiIKKyAgICAgICAgICAgICAgICAiPC91bD48L3A+IgorICAgICAgICAg
ICAgICAgICI8cD5JZiB5b3UncmUgZWRpdGluZyBzZXR0aW5ncy5qc29uLCBz
ZWUgdGhlICdycGMtaG9zdC13aGl0ZWxpc3QnIGFuZCAncnBjLWhvc3Qtd2hp
dGVsaXN0LWVuYWJsZWQnIGVudHJpZXMuPC9wPiIKKyAgICAgICAgICAgICAg
ICAiPHA+VGhpcyByZXF1aXJlbWVudCBoYXMgYmVlbiBhZGRlZCB0byBoZWxw
IHByZXZlbnQgIgorICAgICAgICAgICAgICAgICI8YSBocmVmPVwiaHR0cHM6
Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRE5TX3JlYmluZGluZ1wiPkROUyBS
ZWJpbmRpbmc8L2E+ICIKKyAgICAgICAgICAgICAgICAiYXR0YWNrcy48L3A+
Iik7CisgICAgICAgICAgICBzZW5kX3NpbXBsZV9yZXNwb25zZShyZXEsIDQy
MSwgdG1wKTsKKyAgICAgICAgICAgIHRyX2ZyZWUodG1wKTsKKyAgICAgICAg
fQogICAgICAgICBlbHNlIGlmICghdGVzdF9zZXNzaW9uX2lkKHNlcnZlciwg
cmVxKSkKICAgICAgICAgewogICAgICAgICAgICAgY2hhciBjb25zdCogc2Vz
c2lvbklkID0gZ2V0X2N1cnJlbnRfc2Vzc2lvbl9pZChzZXJ2ZXIpOwpAQCAt
NjQ3LDcgKzcwNiw3IEBAIHN0YXRpYyB2b2lkIGhhbmRsZV9yZXF1ZXN0KHN0
cnVjdCBldmh0dHBfcmVxdWVzdCogcmVxLCB2b2lkKiBhcmcpCiAgICAgICAg
ICAgICAgICAgIjxsaT4gV2hlbiB5b3UgZ2V0IHRoaXMgNDA5IGVycm9yIG1l
c3NhZ2UsIHJlc2VuZCB5b3VyIHJlcXVlc3Qgd2l0aCB0aGUgdXBkYXRlZCBo
ZWFkZXIiCiAgICAgICAgICAgICAgICAgIjwvb2w+PC9wPiIKICAgICAgICAg
ICAgICAgICAiPHA+VGhpcyByZXF1aXJlbWVudCBoYXMgYmVlbiBhZGRlZCB0
byBoZWxwIHByZXZlbnQgIgotICAgICAgICAgICAgICAgICI8YSBocmVmPVwi
aHR0cDovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9Dcm9zcy1zaXRlX3JlcXVl
c3RfZm9yZ2VyeVwiPkNTUkY8L2E+ICIKKyAgICAgICAgICAgICAgICAiPGEg
aHJlZj1cImh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0Nyb3NzLXNp
dGVfcmVxdWVzdF9mb3JnZXJ5XCI+Q1NSRjwvYT4gIgogICAgICAgICAgICAg
ICAgICJhdHRhY2tzLjwvcD4iCiAgICAgICAgICAgICAgICAgIjxwPjxjb2Rl
PiVzOiAlczwvY29kZT48L3A+IiwKICAgICAgICAgICAgICAgICBUUl9SUENf
U0VTU0lPTl9JRF9IRUFERVIsIHNlc3Npb25JZCk7CkBAIC04NDQsMTcgKzkw
MywxMiBAQCBjaGFyIGNvbnN0KiB0cl9ycGNHZXRVcmwodHJfcnBjX3NlcnZl
ciBjb25zdCogc2VydmVyKQogICAgIHJldHVybiBzZXJ2ZXItPnVybCAhPSBO
VUxMID8gc2VydmVyLT51cmwgOiAiIjsKIH0KIAotdm9pZCB0cl9ycGNTZXRX
aGl0ZWxpc3QodHJfcnBjX3NlcnZlciogc2VydmVyLCBjaGFyIGNvbnN0KiB3
aGl0ZWxpc3RTdHIpCitzdGF0aWMgdm9pZCB0cl9ycGNTZXRMaXN0KGNoYXIg
Y29uc3QqIHdoaXRlbGlzdFN0ciwgdHJfbGlzdCoqIGxpc3QpCiB7CiAgICAg
dm9pZCogdG1wOwogCi0gICAgLyoga2VlcCB0aGUgc3RyaW5nICovCi0gICAg
dG1wID0gc2VydmVyLT53aGl0ZWxpc3RTdHI7Ci0gICAgc2VydmVyLT53aGl0
ZWxpc3RTdHIgPSB0cl9zdHJkdXAod2hpdGVsaXN0U3RyKTsKLSAgICB0cl9m
cmVlKHRtcCk7Ci0KICAgICAvKiBjbGVhciBvdXQgdGhlIG9sZCB3aGl0ZWxp
c3QgZW50cmllcyAqLwotICAgIHdoaWxlICgodG1wID0gdHJfbGlzdF9wb3Bf
ZnJvbnQoJnNlcnZlci0+d2hpdGVsaXN0KSkgIT0gTlVMTCkKKyAgICB3aGls
ZSAoKHRtcCA9IHRyX2xpc3RfcG9wX2Zyb250KGxpc3QpKSAhPSBOVUxMKQog
ICAgIHsKICAgICAgICAgdHJfZnJlZSh0bXApOwogICAgIH0KQEAgLTg2Niw3
ICs5MjAsNyBAQCB2b2lkIHRyX3JwY1NldFdoaXRlbGlzdCh0cl9ycGNfc2Vy
dmVyKiBzZXJ2ZXIsIGNoYXIgY29uc3QqIHdoaXRlbGlzdFN0cikKICAgICAg
ICAgc2l6ZV90IGNvbnN0IGxlbiA9IHN0cmNzcG4od2FsaywgZGVsaW1pdGVy
cyk7CiAgICAgICAgIGNoYXIqIHRva2VuID0gdHJfc3RybmR1cCh3YWxrLCBs
ZW4pOwogCi0gICAgICAgIHRyX2xpc3RfYXBwZW5kKCZzZXJ2ZXItPndoaXRl
bGlzdCwgdG9rZW4pOworICAgICAgICB0cl9saXN0X2FwcGVuZChsaXN0LCB0
b2tlbik7CiAKICAgICAgICAgaWYgKHN0cmNzcG4odG9rZW4sICIrLSIpIDwg
bGVuKQogICAgICAgICB7CkBAIC04ODksNiArOTQzLDIzIEBAIHZvaWQgdHJf
cnBjU2V0V2hpdGVsaXN0KHRyX3JwY19zZXJ2ZXIqIHNlcnZlciwgY2hhciBj
b25zdCogd2hpdGVsaXN0U3RyKQogICAgIH0KIH0KIAordm9pZCB0cl9ycGNT
ZXRIb3N0V2hpdGVsaXN0KHRyX3JwY19zZXJ2ZXIqIHNlcnZlciwgY2hhciBj
b25zdCogd2hpdGVsaXN0U3RyKQoreworICAgIHRyX3JwY1NldExpc3Qod2hp
dGVsaXN0U3RyLCAmc2VydmVyLT5ob3N0V2hpdGVsaXN0KTsKK30KKwordm9p
ZCB0cl9ycGNTZXRXaGl0ZWxpc3QodHJfcnBjX3NlcnZlciogc2VydmVyLCBj
aGFyIGNvbnN0KiB3aGl0ZWxpc3RTdHIpCit7CisgICAgdm9pZCogdG1wOwor
CisgICAgLyoga2VlcCB0aGUgc3RyaW5nICovCisgICAgdG1wID0gc2VydmVy
LT53aGl0ZWxpc3RTdHI7CisgICAgc2VydmVyLT53aGl0ZWxpc3RTdHIgPSB0
cl9zdHJkdXAod2hpdGVsaXN0U3RyKTsKKyAgICB0cl9mcmVlKHRtcCk7CisK
KyAgICB0cl9ycGNTZXRMaXN0KHdoaXRlbGlzdFN0ciwgJnNlcnZlci0+d2hp
dGVsaXN0KTsKK30KKwogY2hhciBjb25zdCogdHJfcnBjR2V0V2hpdGVsaXN0
KHRyX3JwY19zZXJ2ZXIgY29uc3QqIHNlcnZlcikKIHsKICAgICByZXR1cm4g
c2VydmVyLT53aGl0ZWxpc3RTdHIgIT0gTlVMTCA/IHNlcnZlci0+d2hpdGVs
aXN0U3RyIDogIiI7CkBAIC05MDQsNiArOTc1LDExIEBAIGJvb2wgdHJfcnBj
R2V0V2hpdGVsaXN0RW5hYmxlZCh0cl9ycGNfc2VydmVyIGNvbnN0KiBzZXJ2
ZXIpCiAgICAgcmV0dXJuIHNlcnZlci0+aXNXaGl0ZWxpc3RFbmFibGVkOwog
fQogCit2b2lkIHRyX3JwY1NldEhvc3RXaGl0ZWxpc3RFbmFibGVkKHRyX3Jw
Y19zZXJ2ZXIqIHNlcnZlciwgYm9vbCBpc0VuYWJsZWQpCit7CisgICAgc2Vy
dmVyLT5pc0hvc3RXaGl0ZWxpc3RFbmFibGVkID0gaXNFbmFibGVkOworfQor
CiAvKioqKgogKioqKiogIFBBU1NXT1JECiAqKioqLwpAQCAtMTA1NCw2ICsx
MTMwLDI4IEBAIHRyX3JwY19zZXJ2ZXIqIHRyX3JwY0luaXQodHJfc2Vzc2lv
biogc2Vzc2lvbiwgdHJfdmFyaWFudCogc2V0dGluZ3MpCiAgICAgICAgIHRy
X3JwY1NldFdoaXRlbGlzdEVuYWJsZWQocywgYm9vbFZhbCk7CiAgICAgfQog
CisgICAga2V5ID0gVFJfS0VZX3JwY19ob3N0X3doaXRlbGlzdF9lbmFibGVk
OworCisgICAgaWYgKCF0cl92YXJpYW50RGljdEZpbmRCb29sKHNldHRpbmdz
LCBrZXksICZib29sVmFsKSkKKyAgICB7CisgICAgICAgIG1pc3Npbmdfc2V0
dGluZ3Nfa2V5KGtleSk7CisgICAgfQorICAgIGVsc2UKKyAgICB7CisgICAg
ICAgIHRyX3JwY1NldEhvc3RXaGl0ZWxpc3RFbmFibGVkKHMsIGJvb2xWYWwp
OworICAgIH0KKworICAgIGtleSA9IFRSX0tFWV9ycGNfaG9zdF93aGl0ZWxp
c3Q7CisKKyAgICBpZiAoIXRyX3ZhcmlhbnREaWN0RmluZFN0cihzZXR0aW5n
cywga2V5LCAmc3RyLCBOVUxMKSAmJiBzdHIgIT0gTlVMTCkKKyAgICB7Cisg
ICAgICAgIG1pc3Npbmdfc2V0dGluZ3Nfa2V5KGtleSk7CisgICAgfQorICAg
IGVsc2UKKyAgICB7CisgICAgICAgIHRyX3JwY1NldEhvc3RXaGl0ZWxpc3Qo
cywgc3RyKTsKKyAgICB9CisKICAgICBrZXkgPSBUUl9LRVlfcnBjX2F1dGhl
bnRpY2F0aW9uX3JlcXVpcmVkOwogCiAgICAgaWYgKCF0cl92YXJpYW50RGlj
dEZpbmRCb29sKHNldHRpbmdzLCBrZXksICZib29sVmFsKSkKZGlmZiAtLWdp
dCBhL2xpYnRyYW5zbWlzc2lvbi9ycGMtc2VydmVyLmggYi9saWJ0cmFuc21p
c3Npb24vcnBjLXNlcnZlci5oCmluZGV4IDQ2ZThhODcxZi4uYWQxZWI1MjA0
IDEwMDY0NAotLS0gYS9saWJ0cmFuc21pc3Npb24vcnBjLXNlcnZlci5oCisr
KyBiL2xpYnRyYW5zbWlzc2lvbi9ycGMtc2VydmVyLmgKQEAgLTQyLDYgKzQy
LDEwIEBAIHZvaWQgdHJfcnBjU2V0V2hpdGVsaXN0KHRyX3JwY19zZXJ2ZXIq
IHNlcnZlciwgY2hhciBjb25zdCogd2hpdGVsaXN0KTsKIAogY2hhciBjb25z
dCogdHJfcnBjR2V0V2hpdGVsaXN0KHRyX3JwY19zZXJ2ZXIgY29uc3QqIHNl
cnZlcik7CiAKK3ZvaWQgdHJfcnBjU2V0SG9zdFdoaXRlbGlzdEVuYWJsZWQo
dHJfcnBjX3NlcnZlciogc2VydmVyLCBib29sIGlzRW5hYmxlZCk7CisKK3Zv
aWQgdHJfcnBjU2V0SG9zdFdoaXRlbGlzdCh0cl9ycGNfc2VydmVyKiBzZXJ2
ZXIsIGNoYXIgY29uc3QqIHdoaXRlbGlzdCk7CisKIHZvaWQgdHJfcnBjU2V0
UGFzc3dvcmQodHJfcnBjX3NlcnZlciogc2VydmVyLCBjaGFyIGNvbnN0KiBw
YXNzd29yZCk7CiAKIGNoYXIgY29uc3QqIHRyX3JwY0dldFBhc3N3b3JkKHRy
X3JwY19zZXJ2ZXIgY29uc3QqIHNlcnZlcik7CmRpZmYgLS1naXQgYS9saWJ0
cmFuc21pc3Npb24vc2Vzc2lvbi5jIGIvbGlidHJhbnNtaXNzaW9uL3Nlc3Np
b24uYwppbmRleCA4NmQwNTRmN2YuLjlhMGI3YzEwNCAxMDA2NDQKLS0tIGEv
bGlidHJhbnNtaXNzaW9uL3Nlc3Npb24uYworKysgYi9saWJ0cmFuc21pc3Np
b24vc2Vzc2lvbi5jCkBAIC0zNzEsNiArMzcxLDggQEAgdm9pZCB0cl9zZXNz
aW9uR2V0RGVmYXVsdFNldHRpbmdzKHRyX3ZhcmlhbnQqIGQpCiAgICAgdHJf
dmFyaWFudERpY3RBZGRTdHIoZCwgVFJfS0VZX3JwY191c2VybmFtZSwgIiIp
OwogICAgIHRyX3ZhcmlhbnREaWN0QWRkU3RyKGQsIFRSX0tFWV9ycGNfd2hp
dGVsaXN0LCBUUl9ERUZBVUxUX1JQQ19XSElURUxJU1QpOwogICAgIHRyX3Zh
cmlhbnREaWN0QWRkQm9vbChkLCBUUl9LRVlfcnBjX3doaXRlbGlzdF9lbmFi
bGVkLCB0cnVlKTsKKyAgICB0cl92YXJpYW50RGljdEFkZFN0cihkLCBUUl9L
RVlfcnBjX2hvc3Rfd2hpdGVsaXN0LCBUUl9ERUZBVUxUX1JQQ19IT1NUX1dI
SVRFTElTVCk7CisgICAgdHJfdmFyaWFudERpY3RBZGRCb29sKGQsIFRSX0tF
WV9ycGNfaG9zdF93aGl0ZWxpc3RfZW5hYmxlZCwgdHJ1ZSk7CiAgICAgdHJf
dmFyaWFudERpY3RBZGRJbnQoZCwgVFJfS0VZX3JwY19wb3J0LCBhdG9pKFRS
X0RFRkFVTFRfUlBDX1BPUlRfU1RSKSk7CiAgICAgdHJfdmFyaWFudERpY3RB
ZGRTdHIoZCwgVFJfS0VZX3JwY191cmwsIFRSX0RFRkFVTFRfUlBDX1VSTF9T
VFIpOwogICAgIHRyX3ZhcmlhbnREaWN0QWRkQm9vbChkLCBUUl9LRVlfc2Ny
YXBlX3BhdXNlZF90b3JyZW50c19lbmFibGVkLCB0cnVlKTsKZGlmZiAtLWdp
dCBhL2xpYnRyYW5zbWlzc2lvbi90cmFuc21pc3Npb24uaCBiL2xpYnRyYW5z
bWlzc2lvbi90cmFuc21pc3Npb24uaAppbmRleCBhYzE4NzFhZGIuLjA4YTI0
ZWNhNCAxMDA2NDQKLS0tIGEvbGlidHJhbnNtaXNzaW9uL3RyYW5zbWlzc2lv
bi5oCisrKyBiL2xpYnRyYW5zbWlzc2lvbi90cmFuc21pc3Npb24uaApAQCAt
MTA5LDYgKzEwOSw3IEBAIGNoYXIgY29uc3QqIHRyX2dldERlZmF1bHREb3du
bG9hZERpcih2b2lkKTsKICNkZWZpbmUgVFJfREVGQVVMVF9CSU5EX0FERFJF
U1NfSVBWNCAiMC4wLjAuMCIKICNkZWZpbmUgVFJfREVGQVVMVF9CSU5EX0FE
RFJFU1NfSVBWNiAiOjoiCiAjZGVmaW5lIFRSX0RFRkFVTFRfUlBDX1dISVRF
TElTVCAiMTI3LjAuMC4xLDo6MSIKKyNkZWZpbmUgVFJfREVGQVVMVF9SUENf
SE9TVF9XSElURUxJU1QgIiIKICNkZWZpbmUgVFJfREVGQVVMVF9SUENfUE9S
VF9TVFIgIjkwOTEiCiAjZGVmaW5lIFRSX0RFRkFVTFRfUlBDX1VSTF9TVFIg
Ii90cmFuc21pc3Npb24vIgogI2RlZmluZSBUUl9ERUZBVUxUX1BFRVJfUE9S
VF9TVFIgIjUxNDEzIgpkaWZmIC0tZ2l0IGEvbGlidHJhbnNtaXNzaW9uL3dl
Yi5jIGIvbGlidHJhbnNtaXNzaW9uL3dlYi5jCmluZGV4IGNjYTg4OGI2Ni4u
YTU3Yzg1NDU3IDEwMDY0NAotLS0gYS9saWJ0cmFuc21pc3Npb24vd2ViLmMK
KysrIGIvbGlidHJhbnNtaXNzaW9uL3dlYi5jCkBAIC02NzgsNiArNjc4LDkg
QEAgY2hhciBjb25zdCogdHJfd2ViR2V0UmVzcG9uc2VTdHIobG9uZyBjb2Rl
KQogICAgIGNhc2UgNDE3OgogICAgICAgICByZXR1cm4gIkV4cGVjdGF0aW9u
IEZhaWxlZCI7CiAKKyAgICBjYXNlIDQyMToKKyAgICAgICAgcmV0dXJuICJN
aXNkaXJlY3RlZCBSZXF1ZXN0IjsKKwogICAgIGNhc2UgNTAwOgogICAgICAg
ICByZXR1cm4gIkludGVybmFsIFNlcnZlciBFcnJvciI7CiAKLS0gCjIuMTUu
MC41MzEuZzJjY2IzMDEyYzktZ29vZwoK

--94eb2c0397243ba73405628496a8--
