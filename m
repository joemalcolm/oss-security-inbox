X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2133" "Thursday" "17" "September" "2020" "10:43:53" "+1200" "Douglas Bagnall" "douglas.bagnall@catalyst.net.nz" "<a06dc6d7-b8b3-9abc-9c71-33dfdd9e459a@catalyst.net.nz>" "54" "[oss-security] Samba and CVE-2020-1472 (\"Zerologon\")" "^Date:" nil nil "9" "2020091622:43:53" "[oss-security] Samba and CVE-2020-1472 (\"Zerologon\")" (number mark "        douglas.bagn Sep 17   54/2133  " thread-indent "\"[oss-security] Samba and CVE-2020-1472 (\"Zerologon\")\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Samba and CVE-2020-1472 (\"Zerologon\")" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29995 invoked by uid 550); 17 Sep 2020 10:47:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26289 invoked from network); 16 Sep 2020 22:44:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=catalyst.net.nz;
	s=default; t=1600296237;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7PdeCRt4DkAqAFRrCJve1tkGpCWLVVI1trC2Lz2Df10=;
	b=ejjcKuJETw3XdRnOJm/96hUJpXaEOP2nHBvjJq8q1v4dfIq+T4ZiR7cVo9J7mVLU1b7mdi
	nRGTPx6bTqs2rIgPYXpTX3hXg+tPE7qR5SZ/i8UmGbN2onHxhOWsy3Kp6x+zwE4vIDwMDN
	lILB96jBRvAaKHTjxmqiU2YtN/dkvuD3aM5AWe3SWGm9XI1e4ED017z0nTGz6ndNrzlvyf
	OCMpCZUSbmBO/2HI0rBmc8ypTNbYZDV83X0M3axj2ahxbP1g8km8YW16x/q8dom5ctVSN8
	XKcpyYbLR5XstP9G2PV6C5dlucrnfh831JMypYZPTU8FarbVjYgkPJlXUSz2Rg==
Message-ID: <a06dc6d7-b8b3-9abc-9c71-33dfdd9e459a@catalyst.net.nz>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=douglasb@catalyst.net.nz smtp.mailfrom=douglas.bagnall@catalyst.net.nz
X-Spam: Yes
Date: Thu, 17 Sep 2020 10:43:53 +1200
From: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Samba and CVE-2020-1472 ("Zerologon")
To: oss-security@lists.openwall.com

In August, Microsoft patched CVE-2020-1472, which gives administrator
access to an unauthenticated user on a Domain Controller.  Microsoft gave
it a CVSS score of 10.

https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/CVE-2020-1472#ID0EUGAC

The Samba security team was not contacted before the announcement, which
is very sparse on detail, and was unable to learn much through an
established (and generally quite useful) channel for discussing Microsoft
protocols:

https://lists.samba.org/archive/cifs-protocol/2020-August/003520.html
https://lists.samba.org/archive/cifs-protocol/2020-August/003521.html	

On September 14, Secura, who found the vulnerability, released a blog
post, a whitepaper, and an exploit:

https://www.secura.com/blog/zero-logon

The bug is in the Netlogon *protocol*, not an implementation flaw, so any
implementation that correctly follows the protocol will be vulnerable.
Samba is vulnerable.

HOWEVER, since Samba 4.8 (2018-03), by default Samba will insist on a
secure netlogon channel

https://www.samba.org/samba/docs/current/man-html/smb.conf.5.html#SERVERSCHANNEL

The default of "server schannel = yes" gives the same protection as
Microsoft's "FullSecureChannelProtection=1" registry key (which is the
CVE-2020-1472 fix). I believe this mitigation was introduced in light of
an increased awareness of protocol level bugs following BadLock, and
particular credit should go to Stefan Metzmacher for [sort of] fixing this
bug two years before its discovery.

That is not the end of the story, though. Many distros have very old
versions of Samba, and many people set "server schannel = auto", because
who doesn't like auto, or because a third party thing requires it.

Patches allowing more fine-grained schannel policy for these third-party
cases are being worked on right now.


Distros: use supported versions of Samba!

People stuck with old versions of a Samba Domain Controller: set "server
schannel = yes" in your smb.conf, now. For you, this is a low effort
potentially catastrophic 0-day.

Follow https://bugzilla.samba.org/show_bug.cgi?id=14497

regards,
Douglas Bagnall

