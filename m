Received: (qmail 32763 invoked by uid 550); 5 Mar 2026 09:27:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18316 invoked from network); 5 Mar 2026 08:57:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1772701048; x=1772787448; bh=UTkziqT8ITutBl6sZk/wwQD04nlAGXvHtNn
	RYWsuRzM=; b=veAFmAefrO0zYGhcZ/uPDL97bywdz5Li+kMwNv2Da//xwtkza45
	9ioznDPY3HbKa1DTwiHE3A8ytiNrdPnJmdUUDGG3Q3+jBWeS1MbG0NnscbRyYp3+
	VZ74rB+U+S7Jfd+iBshhMugELlr4nDUI6Bb4s7FrFdg6WOpe3fD6cPvrOuC8Jsgo
	Nn7vwQlERdkF9HotSzlKvQLCNNnjBzwCkM9kdR7zBoYN8dHn/zFtcjMRtxnAiPyz
	/VMuNh5qVRosKOypgZmT0OEMHtPX7wa8E7NbBtP1pkxuVqr2xcLBrPCyl+ypYbIi
	Ufw2opmPGdWPlGh8EPm8+5F7ApXrmcuw2Zw==
X-ME-Sender: <xms:eEWpaQrfn3A59hIrO5fZB2mZdFtZOu4odq3iUjdi_gqOxktAMqevig>
    <xme:eEWpacqSQLi2tplkb_Daln6FjyHcjdd9n_nrqDP0LYph7Pnv6ar9cqL58C-bAeVga
    oEOMJqv2AGTt61GcMmyIba40xQhTV3vtvYhCh-XYOXD0agk_GYEig>
X-ME-Received: <xmr:eEWpaS3y4CnKoblXqHOJh5Ajwemdvd-G4uLQ1zY4AbIPjL5S2gClXpjk9DJ1-3DR19cgmNhFBeSEFNme-HyNmlL7kFk_JcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieehleeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfvhffutgfgsehtkeertddtvd
    ejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhrfihosegtphgr
    nhdrohhrgheqnecuggftrfgrthhtvghrnhepjeeifeelteeffeelteffhfeugeejveelle
    elgeejtdehgedtffevfedufeevtdegnecuffhomhgrihhnpehmvghtrggtphgrnhdrohhr
    ghdpghhithhhuhgsrdgtohhmpdhsihhmphhlvgdrphhmpdgtvhgvrdhorhhgnecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhhrfihosegtphgr
    nhdrohhrghdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomhdp
    rhgtphhtthhopehkrgiivggsuhhrohesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:eEWpaTDUsV0cRJF65pIhmhljutLDHd5OPNeyjApDuVydyPr7_2HkCA>
    <xmx:eEWpaSf2YM8A4MsnjMkR7KNsEA2ZfHzR5wtMSoLuTs1iiBzbtc79qw>
    <xmx:eEWpaQjE-8RlALWvzJWh_4lkmN3FAXRSz4NnS6ShUnEJuZLd5VvfPg>
    <xmx:eEWpaSpaRpS96uauMq5kfRiQ298xLlGeQVJGUJ5h8rpGmCsmd8nEOQ>
    <xmx:eEWpaYEXgJN9CuQya-t6djpFiCXn2wenVHOIfqAWefhpmGTjqnSwqA>
    <xmx:eEWpaYmtun_CUxamXXs7qcPjhkiNKdzJSaPWJVKt36NZ7zD1gfX1hVVl9t3b>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <b0630336-a930-46ae-a7aa-3fbcaf3dbdc0@cpan.org>
Date: Thu, 5 Mar 2026 08:57:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40926: Plack::Middleware::Session::Simple versions through
 0.04 for Perl generates session ids insecurely

========================================================================
CVE-2025-40926                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40926
   Distribution:  Plack-Middleware-Session-Simple
       Versions:  through 0.04

       MetaCPAN: https://metacpan.org/dist/Plack-Middleware-Session-Simple
       VCS Repo: https://github.com/kazeburo/Plack-Middleware-Session-Simple


Plack::Middleware::Session::Simple versions through 0.04 for Perl
generates session ids insecurely

Description
-----------
Plack::Middleware::Session::Simple versions through 0.04 for Perl
generates session ids insecurely.

The default session id generator returns a SHA-1 hash seeded with the
built-in rand function, the epoch time, and the PID. The PID will come
from a small set of numbers, and the epoch time may be guessed, if it
is not leaked from the HTTP Date header. The built-in rand function is
unsuitable for cryptographic usage.

Predicable session ids could allow an attacker to gain access to
systems.

Plack::Middleware::Session::Simple is intended to be compatible with
Plack::Middleware::Session, which had a similar security issue
CVE-2025-40923.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Users are advised to change the sid_generator attribute of
Plack::Middleware::Session::Simple to a function that returns a
securely generated session id based on a secure source of entropy from
the system.

Users may consider using Plack::Middleware::Session version 0.35 or
later.


References
----------
https://metacpan.org/release/KAZEBURO/Plack-Middleware-Session-Simple-0.04/source/lib/Plack/Middleware/Session/Simple.pm#L43
https://github.com/kazeburo/Plack-Middleware-Session-Simple/pull/4
https://github.com/kazeburo/Plack-Middleware-Session-Simple/commit/760bb358b8f53e52cf415888a4ac858fd99bb24e.patch
https://www.cve.org/CVERecord?id=CVE-2025-40923
https://security.metacpan.org/docs/guides/random-data-for-security.html


