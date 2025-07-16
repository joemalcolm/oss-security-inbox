Received: (qmail 22086 invoked by uid 550); 16 Jul 2025 16:09:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21916 invoked from network); 16 Jul 2025 13:18:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1752671899; x=1752758299; bh=sLuO9R7XGaDvBAmPGXf8W14BAYSMskyAz5l
	nTiZ9PMQ=; b=TtDutdpbddWnHSXaiAlSqtt/XOjP+G3rxeyauIyO6rZj+ceumVD
	x38rFmbygVUBZ8X0MBZwigmK/KfSkqUDZmdq3g7LOoTWtumnjMKKhqlC9XG6/BFs
	tyH08Jtdqw65wWwaPaocmQZGhqiviu1MLmiaF0ea5uBg/PJtJDDVuUT9a0EFQX+9
	z5gGne0p/dzUDom7NTcbjB7yX1M+IggsjiWFSRkVNV/S1Bf+7UXpFC7YULHQTK4w
	Hk3haqB695wKKL3U89ld0PHrPrhtIhvYNDNkWXQ7Y+vM/TdBMvJEHHmur1YaEtGZ
	LVvwBhUvUj/RTbpT93TZR9GC0U/z9qzjnbg==
X-ME-Sender: <xms:m6Z3aMlXp-C09Wtx70EVL0EUmCZIpe0RkY1u_9nt1Y_QLkf0lBrXmg>
    <xme:m6Z3aN1hjbdaLIrKuOOsf7mPKt5Pfx1F3G6MhrA6X969TBH7h7hHLaRkdKDxZzUXB
    ybMZJ2NOb9J3h4L>
X-ME-Received: <xmr:m6Z3aEC6UHNJjkBwIkXGy9fC_FaXVadXTS2dGMKqyUzVXnjMm5-ujo71IxWMD4630OA2hL2cxQ33NXwRFcsQaGdG3JSYZ4x8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdehjeekudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfvffhufgtgfesthekredttddvje
    enucfhrhhomheptfhosggvrhhtucftohhthhgvnhgsvghrghcuoehrrhifohestghprghn
    rdhorhhgqeenucggtffrrghtthgvrhhnpeeutdeuvedujedtudefveejjeeljeevvdevue
    ffgfehtedtgeevveegleeuleetgeenucffohhmrghinhepmhgvthgrtghprghnrdhorhhg
    pdhgihhthhhusgdrtghomhdpshhtrghtvgdrphhmnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomheprhhrfihosegtphgrnhdrohhrghdpnhgspghr
    tghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtg
    hurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:m6Z3aKzC2XRn03alp0gCpAOsT8zQn2gnbCRJyEAj-nNlV2-aFud0Mg>
    <xmx:m6Z3aClY2cXmYunRsK10yZ4UUmaRo0Jp1oredunCfZfpILztMoJLgA>
    <xmx:m6Z3aPFoimUtYtmImA66tz68B8yYRr8xUoq8JIFTlfbFjY-WzPH9GQ>
    <xmx:m6Z3aCXU9iosGZs7J-mHmRU3kR2EtpmPBmHmEGrilUD_PzaWF2jchw>
    <xmx:m6Z3aOyHFurgj1RiUKjEezr9EY91vUfVYod9Xky0nqfUnjfHx-8ZaQ>
    <xmx:m6Z3aOsw4JAzWt73mcCIY7XAyWQ0PPXLTwTUFFhkub7M0Liuid51Cp1rT_FQ>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <296f9f08-7ef9-4948-8913-ce542b2aa9f9@cpan.org>
Date: Wed, 16 Jul 2025 14:18:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40923: Plack-Middleware-Session before version 0.35 for Perl
 generates session ids insecurely

========================================================================
CVE-2025-40923                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40923
   Distribution:  Plack-Middleware-Session
       Versions:  from 0.01 before 0.35

       MetaCPAN:  https://metacpan.org/dist/Plack-Middleware-Session
       VCS Repo:  https://github.com/plack/Plack-Middleware-Session


Plack-Middleware-Session before version 0.35 for Perl generates session
ids insecurely

Description
-----------
Plack-Middleware-Session before version 0.35 for Perl generates session
ids insecurely.

The default session id generator returns a SHA-1 hash seeded with the
built-in rand function, the epoch time, and the PID. The PID will come
from a small set of numbers, and the epoch time may be guessed, if it
is not leaked from the HTTP Date header. The built-in rand function is
unsuitable for cryptographic usage.

Predicable session ids could allow an attacker to gain access to
systems.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Users who are unable to upgrade are advised to change the sid_generator
attribute of Plack::Session::State to a function that returns a
securely generated session id based on a secure source of entropy from
the system.


Solutions
---------
Users are advised to upgrade to Plack-Middleware-Session v0.35 or
later.


References
----------
https://metacpan.org/release/MIYAGAWA/Plack-Middleware-Session-0.34/source/lib/Plack/Session/State.pm#L22
https://github.com/plack/Plack-Middleware-Session/pull/52
https://github.com/plack/Plack-Middleware-Session/commit/1fbfbb355e34e7f4b3906f66cf958cedadd2b9be.patch
https://security.metacpan.org/docs/guides/random-data-for-security.html



