Received: (qmail 1672 invoked by uid 550); 5 Mar 2026 09:28:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16133 invoked from network); 5 Mar 2026 09:02:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1772701344; x=1772787744; bh=+yEsJgRcGq/67lct2dnpxW61ORFMhJETepY
	QoN0g0IE=; b=qnBMCmH5GyB1Yck9lzkkwzvRfjXnoqAhmo+2135BE06WjxRLBxx
	e1T8K39e75gIRdIB9B+zUYAjTPd8Xv5sRPnQukc91jETpq/DnlA0gZtOe176li10
	hGOSVyXZxWvZ3HBJj9Fe4vwhBOFArmvVX7B81Ek7a8F8ef2e6jWSwGaoxjFuzuAJ
	vWfsW0DFQauDP3ZGK7NYuH/1KUYTkFqBRQnTQGQQPddT0cj+l9p7rwAz6TwikLGJ
	4Pamo44SoJ3PgXyhrrKyWMwfYRa6E4OQnsObmwcGMgjJhJUDUxieElQ1ZUmDEyS9
	guglUafmrt3t2EODVhhrKodOpZt39liUicQ==
X-ME-Sender: <xms:oEapabGiUrq0oabdjJrsosDWU623p0S_fH-9C34w2GT1ZYZv1vRqLQ>
    <xme:oEapaeXqGeU2jBoSbAjaZ1ljhUsdN4F5z6eX4_2SmeUZx8kl1vszKm-qpNu9TXBh6
    JrUESGn5f4Ux2VVnrPGeQuVVAy0F42aNSCh0DJGA7AXeY_jnRQisA>
X-ME-Received: <xmr:oEapaay3dyovsaBtzkbhX4h0llmDLQChj7ma69q08QWFhTXCtLIvMVzgWfFJHOWfFs4EIr55SK2Mr6Qzd7KEqIzwP07VBL8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieehleejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfvhffutgfgsehtkeertddtvd
    ejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhrfihosegtphgr
    nhdrohhrgheqnecuggftrfgrthhtvghrnhepveehjeeiieffffetleeuleekhfduieffge
    ehvdfftdegvdekiefhieehhfffueeunecuffhomhgrihhnpehmvghtrggtphgrnhdrohhr
    ghdpghhithhhuhgsrdgtohhmpdhmugehrdhpmhenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehrrhifohestghprghnrdhorhhgpdhnsggprhgt
    phhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuh
    hrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdhrtghpthhtoheprghlvgig
    tghhohhrnhihsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:oEapaUMFaEbgUABfUFhTEtPAot5ftiDgLNj30Y5qQoggY1md0n5xVw>
    <xmx:oEapaT7tjkwo5OAZ6mv_UMWj_fwBt5Oc69c5UF0KJ3TKQ_5-uMHELA>
    <xmx:oEapadOiwBjxoHAWPjrP9SUr3mQZSxf-pP0e7vtWk5Gc1kRj-x4_mA>
    <xmx:oEapaZmYZ4zyaJt4tlvfmlEyuXyA_5R1iUZOONiRtU8Bu9PP2miTXQ>
    <xmx:oEapacRmE-iEs_FlKckkzUAWb2d3jYsOmzUj782E1dQqBnuWWN-qjA>
    <xmx:oEapabQdIx1TOLj7Zj1eISqiXZCqnMZc7dO2StaLOpzX4KWrUwVJN4gH0dkA>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <450f03da-626a-48c3-9fac-575427db40f9@cpan.org>
Date: Thu, 5 Mar 2026 09:02:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40931: Apache::Session::Generate::MD5 versions through 1.94
 for Perl create insecure session id

========================================================================
CVE-2025-40931                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40931
   Distribution:  Apache-Session
       Versions:  through 1.94

       MetaCPAN:  https://metacpan.org/dist/Apache-Session
       VCS Repo:  https://github.com/chorny/Apache-Session


Apache::Session::Generate::MD5 versions through 1.94 for Perl create
insecure session id

Description
-----------
Apache::Session::Generate::MD5 versions through 1.94 for Perl create
insecure session id.

Apache::Session::Generate::MD5 generates session ids insecurely. The
default session id generator returns a MD5 hash seeded with the
built-in rand() function, the epoch time, and the PID. The PID will
come from a small set of numbers, and the epoch time may be guessed, if
it is not leaked from the HTTP Date header. The built-in rand function
is unsuitable for cryptographic usage. Predicable session ids could
allow an attacker to gain access to systems.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Solutions
---------
Consider alternate solutions like
https://metacpan.org/pod/Apache::Session::Generate::Random


References
----------
https://metacpan.org/dist/Apache-Session/source/lib/Apache/Session/Generate/MD5.pm#L27
https://security.metacpan.org/docs/guides/random-data-for-security.html

Credits
-------
Robert Rothenberg, finder

