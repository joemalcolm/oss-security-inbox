Received: (qmail 26495 invoked by uid 550); 16 Jul 2025 16:10:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24147 invoked from network); 16 Jul 2025 14:16:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1752675379; x=1752761779; bh=3TunJ3aXDelW4ASAISrvJlSYgJMwr9BQ9xx
	0DXuno88=; b=JBtzofTCTJH2mli6DhnlI5Uh4ZeuCgABIB4rpDcxyRz+vgY9qnh
	J/+2f6gQr29nZI5A5/k0Ex1oVkMrwJWWN9QLffgqqbZf1cYQWLgZnXLDGs6SR9Sf
	I7xHcKkXL1EuTr9xcQ7DbG6L6issjW9qjX3VM9NmTyEYfGFP3Jsoj0BBC1b/QfiL
	dxP0Hh0uAl3cbkgFiSC8+c6GTQDrzu5AJQq6vzu/tBm6DV7YmgLzkq8BzNGyk5b1
	WF8Ncm2RHwW7lzf3tcIsc4hc9Uf6abvSEf2WVw9eg1+gI9pFHdRAzJNQjXrYZP63
	wwD7bRxPTp5h0UY2X/oOAMX/o5Dn4jv6lOA==
X-ME-Sender: <xms:MrR3aIWXvAm3WFblKqioXDDe39FZul0fMvZ8nepla72DE1uQJVhXCw>
    <xme:MrR3aOlsLBaAX_9IZsQ3PBjarn_xmPej0rH5dyJUioSnsDTIKlOVAbLSAkhCjzI33
    -POCyIlbTmyjoBQ>
X-ME-Received: <xmr:MrR3aFw2BTiZz6kvKjTi7wlsxdkTIqOsV6cYOEZ51N7yrqpa9AfX55r-lf6kn3HFat952IXIWn7wbcGFUCtddjyjeRzY9XEq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdehjeelvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfvffhufgtgfesthekredttddvje
    enucfhrhhomheptfhosggvrhhtucftohhthhgvnhgsvghrghcuoehrrhifohestghprghn
    rdhorhhgqeenucggtffrrghtthgvrhhnpeffveetleekudekvdefleefledvieehffffud
    evheelhfeiudefjeevffetgeekkeenucffohhmrghinhepmhgvthgrtghprghnrdhorhhg
    pdhgihhthhhusgdrtghomhdpughighgvshhtpghmugehrdhpmhdpihgvthhfrdhorhhgne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhhrfiho
    segtphgrnhdrohhrghdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpd
    hrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdr
    tghomh
X-ME-Proxy: <xmx:MrR3aJjCAw-aSFEs3HAspDzZ26EVAwcaVRU3BChT1f7J5RfUOXE_6A>
    <xmx:MrR3aKVXObu0BWgdjgDyScDCMwu1OcqYV__lf15lfxQZY1zlbz5ARg>
    <xmx:MrR3aL2YQy2BFKf3pYXCF8hofFwqYV8bAXFwmr2IOalAZvyLyYzN4Q>
    <xmx:MrR3aAF20Y20Fx3jMDBIMyz5Sa0HiB369MWvs0PYlKcfziKT9x2pwA>
    <xmx:MrR3aJgaaW22SJjMj30tlU4NYlpQnqIE0qKKnMmoDNnQLIaSi3JxWQ>
    <xmx:M7R3aOfabM-LfJP56eCbPSOyhKMHbS4Cwf5TICKKWkmYiiRQPQCAEiWe_Ibx>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <1cca4277-694d-4d8b-a570-4c2bdaf22099@cpan.org>
Date: Wed, 16 Jul 2025 15:16:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Content-Language: en-GB
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40918: Authen::SASL::Perl::DIGEST_MD5 versions 2.04 through
 2.1800 for Perl generates the cnonce insecurely


========================================================================
CVE-2025-40918                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40918
   Distribution:  Authen-SASL
       Versions:  from 2.04 through 2.1800

       MetaCPAN:  https://metacpan.org/dist/Authen-SASL
       VCS Repo:  https://github.com/gbarr/perl-authen-sasl


Authen::SASL::Perl::DIGEST_MD5 versions 2.04 through 2.1800 for Perl
generates the cnonce insecurely

Description
-----------
Authen::SASL::Perl::DIGEST_MD5 versions 2.04 through 2.1800 for Perl
generates the cnonce insecurely.

The cnonce (client nonce) is generated from an MD5 hash of the PID, the
epoch time and the built-in rand function. The PID will come from a
small set of numbers, and the epoch time may be guessed, if it is not
leaked from the HTTP Date header. The built-in rand function is
unsuitable for cryptographic usage.

According to RFC 2831, "The cnonce-value is an opaque quoted string
value provided by the client and used by both client and server to
avoid chosen plaintext attacks, and to provide mutual authentication.
The security of the implementation depends on a good choice. It is
RECOMMENDED that it contain at least 64 bits of entropy."

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

References
----------
https://metacpan.org/dist/Authen-SASL/source/lib/Authen/SASL/Perl/DIGEST_MD5.pm#L263
https://datatracker.ietf.org/doc/html/rfc2831
https://security.metacpan.org/patches/A/Authen-SASL/2.1800/CVE-2025-40918-r1.patch



