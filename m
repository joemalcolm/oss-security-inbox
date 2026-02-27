Received: (qmail 32608 invoked by uid 550); 27 Feb 2026 21:59:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3686 invoked from network); 27 Feb 2026 20:21:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.net; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1772223697;
	 x=1772310097; bh=P12zPb+QMKzBH0rjckv4OjOdkii1caQ1XNL79lZeHuA=; b=
	gHmVW3bognAcLSp/b9SZZ5Sa54yQZchdLmBb1Pkb4fnf5l/+p0Do+zKIsx7q0eTU
	VvF6v8ZlMaWE2vmMNfJYvvlQyemK1Z8I1u93XXnjDaf82DB0oO2ZSAxm+4H4o1hK
	uR5iTKZkcmT/1JS25mGd7/cfyG9CPMJyrjLKIEUW23uc2ja/esPetw9xoYj48O8Q
	Kkk4VPEdtQEsTw2hS8pwVS1lfYvWhim564O7u5e5zTUqPYIsqC3SF7lmSXkHrdbY
	mgvuvzrIFSq9sCgpttiW+hyrWUGSghhoi9jwxwsaTn21xg2bjMOBf9ipQiPc2iIe
	YRdiTK2ITpTYNytXl5/JnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1772223697; x=1772310097; bh=P
	12zPb+QMKzBH0rjckv4OjOdkii1caQ1XNL79lZeHuA=; b=ZUsDnZSJM9S0sbQkG
	grE46dCpa2p914LRihv5qKGqgtl1/a+pIMqBAIbQaVx5DiXWNBCXnq/20EqO9pet
	AHnS6qTwbqW/RiE+KwQKoecEJnW1hJR3oP7HFvD+Yi+/m+7kJb3mssaN9J9zYErA
	2bx7zxu7jPHngcSh8K2i2WAiL2OIXuL+MQbo113zsLbyr6kFye7nyKlRj59ZoWHT
	QugVrCm7heyEkp13msKWxI+f7NBEtnMzEfHfWxIa9ZdOa6SThsI7m8yc6PpF8QET
	ZTCRmnbG3YfuCPc/Od/GUWCQ7ZxI3bX1CZHHok1UulW+efuqhx+Ik0UnsHxsp8v1
	lJm2Q==
X-ME-Sender: <xms:0fyhaXV_JIvuJDKysAyx27_M0xouRypqSdzYbhM2KgWR60p0z6yLjw>
    <xme:0fyhaVkCfdcQ2hy2rfPVA62mSK99VU_MeZqBq00Ymw8aTiuKtphxZVDz3jY9cZavO
    eLJlg9MQbV9BCQg473UklfQz8BuLm9fL6ctqKO8xC085-SuvgVL>
X-ME-Received: <xmr:0fyhaRDsqpyrVhe0f0Kblto72r80y4tyy4tHVQIyVd-3jtKum6Zs-O5rDYKew08>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvgeelleegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfufhfvhfgjtgfgsehtkeertd
    dtvdejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhosgesfhgr
    shhtmhgrihhlrdhnvghtqeenucggtffrrghtthgvrhhnpeevtefhudevfeekueeigfekud
    dtlefgfeelgfegleeutdetleehfeeiieegudfhleenucffohhmrghinhepmhgvthgrtghp
    rghnrdhorhhgpdhgihhthhhusgdrtghomhdprhgrnhguohhmrdhpmhdpshgvrhhvvghrsh
    htohhrvgdrphhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomheprhhosgesfhgrshhtmhgrihhlrdhnvghtpdhnsggprhgtphhtthhopedvpdhmoh
    guvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishht
    shdrohhpvghnfigrlhhlrdgtohhmpdhrtghpthhtohepthhokhhuhhhirhhomhdotghprg
    hnsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:0fyhadcrd-tl3PyZbz_g4T59SawD2pvZOaPxSZamU8v28vftrFrIhw>
    <xmx:0fyhaUJSGxl1hbsjGKn_Ua7qIWmO4EdV7B_C3lFY9sTVAll1GZVINA>
    <xmx:0fyhaYc9-eqOXsAOqu8TTQnSZm3lYDTkPl5bLFOCRb0TKKGuUYalzA>
    <xmx:0fyhaT0vb583wSNb0eH_LvdbsolZqFJi7s9vQ5RXCrHnQ5qyqJ9ETw>
    <xmx:0fyhaSRjkFWngG-iZ3sQiL2h6pX-4hOFbF0KVdHghd4rNf9KAcKAvfDf>
Feedback-ID: ia82c4180:Fastmail
Message-ID: <42bf17c9-52d0-4635-b1a0-5591b225b90d@fastmail.net>
Date: Fri, 27 Feb 2026 20:21:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <c8787214-2532-4f7f-8357-2a8258825ee9@cpan.org>
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rob@fastmail.net>
In-Reply-To: <c8787214-2532-4f7f-8357-2a8258825ee9@cpan.org>
X-Forwarded-Message-Id: <c8787214-2532-4f7f-8357-2a8258825ee9@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2026-3255: HTTP::Session2 versions before 1.12 for Perl may
 generate weak session ids using the rand() function

========================================================================
CVE-2026-3255                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-3255
   Distribution:  HTTP-Session2
       Versions:  before 1.12

       MetaCPAN:  https://metacpan.org/dist/HTTP-Session2
       VCS Repo:  https://github.com/tokuhirom/HTTP-Session2


HTTP::Session2 versions before 1.12 for Perl may generate weak session
ids using the rand() function

Description
-----------
HTTP::Session2 versions before 1.12 for Perl for Perl may generate weak
session ids using the rand() function.

The HTTP::Session2 session id generator returns a SHA-1 hash seeded
with the built-in rand function, the epoch time, and the PID. The PID
will come from a small set of numbers, and the epoch time may be
guessed, if it is not leaked from the HTTP Date header. The built-in
rand() function is unsuitable for cryptographic usage.

HTTP::Session2 after version 1.02 will attempt to use the /dev/urandom
device to generate a session id, but if the device is unavailable (for
example, under Windows), then it will revert to the insecure method
described above.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Upgrade to version 1.12 or later.


Solutions
---------
HTTP::Session2 has been deprecated since version 1.11. Migrate to a
different solution.


References
----------
https://metacpan.org/release/TOKUHIROM/HTTP-Session2-1.11/source/lib/HTTP/Session2/Random.pm#L35
https://metacpan.org/release/TOKUHIROM/HTTP-Session2-1.01/source/lib/HTTP/Session2/ServerStore.pm#L68
https://metacpan.org/release/TOKUHIROM/HTTP-Session2-1.12/changes
https://github.com/tokuhirom/HTTP-Session2/commit/9cfde4d7e0965172aef5dcfa3b03bb48df93e636.patch

Timeline
--------
- 2014-07-31: version 1.02 HTTP::Session2 released that attempts to use
   /dev/urandom.
- 2026-02-24: version 1.11 HTTP::Session2 deprecated
- 2026-02-26: version 1.12 HTTP::Session2 released with a fix with a
   portable solution.



