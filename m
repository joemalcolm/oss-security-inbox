Received: (qmail 18199 invoked by uid 550); 13 Apr 2026 23:49:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14002 invoked from network); 13 Apr 2026 22:58:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1776121071;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=D+QUoLBjtNyIFFgT1nJr18htG5XIL2xqOgoEJ+/JHKQ=;
	b=O4r4IWndY36697HJ+BXxbgwiHk9xeQKUIP0l9M1BsPXVeIB86REOEKChj+RTBuWpP2s5Kk
	EQTpkJ+Wjnfdwk8rYBoRTXR3678NpwvqMtFGJkrhvcRr3E/55Apx8xmlrVC+StCG2U+C1m
	ADW199Ik7M78G/Gv8N8LOZLHDIyRRxixHLCNWxYdzmV3vQZKvE9uq6L7zEzeTcfqY02LoD
	GiVT0uF7QiUItpPTnYgvx+zkvzokyHF3kXeysZTDQAWV+mZkZaRNVKn1ch9cr6pcA/zliZ
	GZYju9vdR7EHO5IK9si3XuUEeNvYc3icoFBh+eTqIy1NX1Sv3BAn/oVvS22hZQ==
Message-ID: <3648aefb-aeb4-4f05-bcb2-fff9f726535c@cpansec.org>
Date: Mon, 13 Apr 2026 23:57:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTFmiVC/Gm9rjSVY+NVVsb2pIHstYpjTbMqE9FuaWGDNZmma9LETZEGbvdVkuTejRlPj8CyGvbzgmb4N2GAzE4LvjdTA0z7oBXHMiwPY4v/XND4knrB1RDwh6m7exmecMAUy5/bZjZylUWb21/RBeDaIWyUbmkuhbLwXIYkJlEfg5iqri1rQAi1FD9sW6zuIOoqqn82rszqDl2u5bSKNOu3DXRlytZyBy3aeLgs6kvhQXxK7Ot+7kbDrwHkQchDAD6SaaKdly1weSZhHhbqfzWEXM8PBenQUk10fxqA8qeCIWITFd1wyo7U4FIt2SE99UFJYjlsCJ73LrQSdr4xxIvlAa2kZiCdphy4mG7mAimXvnAeWmpXkOZ1lzKjOcp4I8ukGX93/dnlvbQPnnihI9nOjHspgWWfD/p1TQksFDMuvx5BzrX5GuiPmjzAMs5gYTBYYjbhf8P+XMwSSsfpJcvYa9X8iFNRR400hxk5qjIJXkaphRizuvNDVJLy+j2ycjQRXuRW3MZFif9Od4SZbTJVk5UCtCRVSI46by2iOryQCc8bLexS7hovyp35xC5EShzbsFEmm8DlOlXSVq8Zwvbm9owdHMrvVnULJQrGYkP5ZkqCk3e6CmH79y14tjpfixFAbmcijy/7L0CayLdiwC2EgcHpe4+lXwsgHOdNG96NF3A
Subject: [oss-security] CVE-2026-5086: Crypt::SecretBuffer versions before 0.019 for Perl is
 suseceptible to timing attacks

========================================================================
CVE-2026-5086                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5086
   Distribution:  Crypt-SecretBuffer
       Versions:  before 0.019

       MetaCPAN:  https://metacpan.org/dist/Crypt-SecretBuffer
       VCS Repo: https://github.com/nrdvana/perl-Crypt-SecretBuffer


Crypt::SecretBuffer versions before 0.019 for Perl is suseceptible to
timing attacks

Description
-----------
Crypt::SecretBuffer versions before 0.019 for Perl is suseceptible to
timing attacks.

For example, if Crypt::SecretBuffer was used to store and compare
plaintext passwords, then discrepencies in timing could be used to
guess the secret password.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Solutions
---------
Upgrade to version 0.019 or later.


References
----------
https://metacpan.org/release/NERDVANA/Crypt-SecretBuffer-0.019/source/Changes



