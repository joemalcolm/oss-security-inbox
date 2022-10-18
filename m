Received: (qmail 26366 invoked by uid 550); 18 Oct 2022 17:26:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3073 invoked from network); 18 Oct 2022 17:00:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1666112396;
	bh=BF7nUCW5RoF2yD2tJf5siikYz9FYu7JkSzIGPG14BWc=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=pJOL16VXemFU9/CK7qWdvFqbXXHTrlVKhiI1YF+bb0nZZZUYKLfFpMxGrd/+Z+P9C
	 vZh+4PW+LU1GYAJEJxWmM3tDWtaav+aycstUehWXKndMOj2mUa+D0DfRdoFxo3xwiZ
	 yVEDLL+FXORR3vex9LfIzvhMNRT5X3IxekbiccuJhuPvWdXFyFX8lIkhBP3Uc/CKdX
	 kvmRuJqzHz0M/SPga3HJapkJjpcKrMm594m9DoR1kIrqdvoOOCr57nXluLczzjMdzg
	 nqJPP5kDGenqhpRm968SVaCZrSfTU9sX7lvQwLBNmVC6YE1qcqFOAgjzxHbwgQSFgV
	 XrPb+CMTyjUgw==
Date: Tue, 18 Oct 2022 13:59:51 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Y07bhw5Um02VYKvl@quatroqueijos.cascardo.eti.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2022-2602 - Linux kernel io_uring UAF

A local privilege escalation vulnerabilty involving Unix socket Garbage
Collection and io_uring was reported and fixed as:

0091bfc81741b8d3aeb3b7ab8636f911b2de6e80 ("io_uring/af_unix: defer registered files gc to io_uring release")

The vulnerability is a use-after-free that happens when an io_uring request
is being processed on a registered file and the Unix GC runs and frees the
io_uring fd and all the registered fds. The order at which the Unix GC
processes the inflight fds may lead to registered fds be freed before the
io_uring is released and has the chance to unregister and wait for such
requests to finish.

One way to trigger this race condition is to use userfaultfd and other
similar strategies that cause the request to be held waiting for the
attacker to trigger the free.

This issue was reported as ZDI-CAN-17428 and has been assigned
CVE-2022-2602.

It affects upstream stable 5.4.y, 5.15.y and later versions. 5.10.y may be
mitigated by the fact that commit 0f2122045b946241a9e549c2a76cea54fa58a7ff
("io_uring: don't rely on weak ->files references") is present, but it is
safer to apply the fixes.

A PoC will be posted in 7 days, on October 25th.

Cascardo.
