Received: (qmail 31937 invoked by uid 550); 5 Mar 2026 09:27:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25641 invoked from network); 5 Mar 2026 08:53:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1772700826; x=1772787226; bh=6A86Ub6usJplH0AryjDe1pmWKZ6BLbDvjeg
	cuJ11ZqE=; b=dW56ImOvLZF9KXjW6ABEUi42AQ2Q2iDfdNVoxIyDFxPhGA2r9Gv
	0XhG1QJ+0E3Q9OhxH9BScomBGcJER2NmEnwq8gNwxUX2vC5LbT4WDXws6dK09hJd
	NGdwlGXZ2DSq102KZ46QaNzaXQMJdlWRYPuk5y5vF+xbZIJE4MWt5l3RVgiR6twY
	/nlDKW0Sq+ZwcK/HG6vEHi7dEEVYwwPt3ZQZFNGxwXIVQqDgwtazp5T1dSORMmof
	6zJfKXBvq4cQSC+Rpf68rdKh+H6JA1mPBkhUnXpGsLPRpnHMgb0Q5dGXW5GfIp7g
	myqAvL2CbJF2uTwgsKmU8LXnX0em9uSVA7Q==
X-ME-Sender: <xms:mUSpaQgZjh06rQc-RJsBj_O6L11P7TL4stuUySjo8aniBDzxF-8HmQ>
    <xme:mUSpafB38Rs6TVQg9t9-YeptGmsElTnD50vObBC8Wo_zFiuGvoVV7d4uNZJtB0EA8
    eT2T6wRBK2eTdppHEy9SnwAz1m0yiXYC9TC72x973JP8wcXYT6TcQ>
X-ME-Received: <xmr:mUSpaVunGr2ZWIX7yAjRL3aw5UjHqS2d_p8-T1Aam-fr1DoJVZ9yzzq7Mt8Mlcama2n8r7LSd0rs9K4tZqehj3mnl_LRvXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieehleehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfvhffutgfgsehtkeertddtvd
    ejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhrfihosegtphgr
    nhdrohhrgheqnecuggftrfgrthhtvghrnhepvdettdfhgeelvefgtdevgeejteekvdduie
    dvuedvheehieejffefhefhleejhedtnecuffhomhgrihhnpehmvghtrggtphgrnhdrohhr
    ghdpghhithhhuhgsrdgtohhmpdhinhhithhirghlphgrtghkvghtrdhpmhdpghhithhhuh
    gsuhhsvghrtghonhhtvghnthdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgr
    rhgrmhepmhgrihhlfhhrohhmpehrrhifohestghprghnrdhorhhgpdhnsggprhgtphhtth
    hopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihht
    hieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdhrtghpthhtohepughouhhgsehsoh
    hmvghthhhinhhgughouhhgrdgtohhm
X-ME-Proxy: <xmx:mUSpacZMc9Aaq7pnK-fzbppHH2kuEAjYWhpo34760xzzXdC9LequNw>
    <xmx:mUSpaQUSYLzzHGd1Yt-N6GrwWENo2MZ-pCGhVOJUlkFo7jv-1GN71g>
    <xmx:mUSpaY4VTBXr1KQodfAN-kXR_DDHN7c3zsdylpV3fRCdRbL-iSGYLA>
    <xmx:mUSpaTh0P0vXDdoqucxueNvgBFA7jFCcWiGhj1etgwcLlGk42tzajA>
    <xmx:mUSpaXfD4HFVt4mk2Y3SPLjTMgYEwA-gn2zEhS7AYXXkozpRmQI6TA>
    <xmx:mkSpaWhCEEzsdL9wFmP2rZoTF0oMnoMV3YZmjs1CCYX5_cnXUtFg_lkyZka->
Feedback-ID: ia0f04183:Fastmail
Message-ID: <e7be087e-d638-40cf-9be5-517aed96a2f5@cpan.org>
Date: Thu, 5 Mar 2026 08:53:43 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2024-57854: Net::NSCA::Client versions through 0.009002 for Perl
 uses a poor random number generator

========================================================================
CVE-2024-57854                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2024-57854
   Distribution:  Net-NSCA-Client
       Versions:  through 0.009002

       MetaCPAN:  https://metacpan.org/dist/Net-NSCA-Client
       VCS Repo:  https://github.com/dougwilson/perl5-net-nsca-client


Net::NSCA::Client versions through 0.009002 for Perl uses a poor random
number generator

Description
-----------
Net::NSCA::Client versions through 0.009002 for Perl uses a poor random
number generator.

Version v0.003 switched to use Data::Rand::Obscure instead of
Crypt::Random for generation of a random initialisation vectors.

Data::Rand::Obscure uses Perl's built-in rand() function, which is not
suitable for cryptographic functions.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

Solutions
---------
Apply a manual patch or migrate to a different solution


References
----------
https://metacpan.org/release/DOUGDUDE/Net-NSCA-Client-0.009002/source/lib/Net/NSCA/Client/InitialPacket.pm#L119
https://patch-diff.githubusercontent.com/raw/dougwilson/perl5-net-nsca-client/pull/2.patch

Credits
-------
Robert Rothenberg, finder

