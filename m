Received: (qmail 5254 invoked by uid 550); 10 Jan 2023 16:58:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24282 invoked from network); 10 Jan 2023 16:45:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1673369128; x=1673455528; bh=BBoDONeC4G
	52hLgGj/Yt+p0u+RjM9h3BpMOQZuDygIU=; b=kDuHGSlflghiNrGoxN18z+H5Ho
	iWoL49oWUKgIV4rLCR25poeMbREGxZn9ycXMV5cOUtO57J5nSFOv7Tv0F8GFcp/S
	ygfHUYc4R18/JVxtzVCPvGXOo/TPDrar5cpedkiyK7bCKzX9isNObc2xarDygPKI
	YwNYdEXR538J4ATH0LL2Rs9GB5++3/8hgrlb6ylAZBdGbMDWxenRTMoQYXWYlfa5
	4nlJXLvJJSoShAFhpcYhuuEqoF9t8K2zQK8/Ikzkw9+dAZyrqkWS+EU0tV9KjVmf
	mmOg5jMGo91LSIOHz3DtbMzRt04D4iy//s1sgsbGPrbXluVVHfOQ7UarljSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1673369128; x=
	1673455528; bh=BBoDONeC4G52hLgGj/Yt+p0u+RjM9h3BpMOQZuDygIU=; b=p
	6Doot6aL3FIJ9RPjpCx7Ek4dlQCpgr3UDMPx0RDQz3+QM4pZBe+EuNhN9ge/J6q6
	YfOgb+5T5KPWd8lfLZaFfhrPtup6KwkX1rHSDVU88jufag3fuXmdKHZp93nytthZ
	O/SS6wrS+SAiRt7y9bLabOv0o4xWLL9W8vcBJ7pW8Opltk4Z2PqjUGhMaVDfVJzt
	8EH+zecKXOyBQKLm5UPFJTMclMcrgbSVTzupxf0ot2vl66JNHa3wqTwbb7hh4nQE
	li36lHeUc2IRtnKFmVXl+VBpklhyedvQY3c2g8txYeEl02XMsuWqdHsYchYMQGBq
	hjy5Jiaf/HbN1L8oqoRBA==
X-ME-Sender: <xms:KJa9Y8esFFHYDSeoCwb-wBWztGRkqbvWwQvmXLX1QW2nEz5swa-Atg>
    <xme:KJa9Y-N2cjo9KFMyxXQ4gm_zMDXeKvOYpAPb-ZFZWmdIWEU2BRMJeAG44rR8PqDDx
    aNwAyIFnPsDek0e57I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrledvgddvkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtre
    ertdenucfhrhhomhepfdfrihgvthhrohcutehlsghinhhifdcuoehpihgvthhrohesphhi
    vghtrhhorghlsghinhhirdhorhhgqeenucggtffrrghtthgvrhhnpeejueejtdegveeige
    ehhefhtdeglefhffejieffudehieegkeetleevjeegtdegveenucffohhmrghinhepghhi
    thdqshgtmhdrtghomhdpghhithhhuhgsrdgtohhmpdhruhhsthdqlhgrnhhgrdhorhhgne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphhivght
    rhhosehpihgvthhrohgrlhgsihhnihdrohhrgh
X-ME-Proxy: <xmx:KJa9Y9joMCT34fdFFRt-3V39FdhkDpgeM4oJUM9xJXKBoqnFE52S6g>
    <xmx:KJa9Yx-gCJZEdGon_VkSBDxHw9Limuh0jBeEs5t9lo4PuBOGu6ZoWA>
    <xmx:KJa9Y4vLX1wAf7o52Q77QaW5aLQbQ_93ZjDnQjCXolO-7FEwxfqnyQ>
    <xmx:KJa9Y25JDWnGfCx5eZoSlc8Vl-VIYsIrqGMVaZNy_F_GPDZZYU8SJw>
Feedback-ID: i6b794706:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1185-g841157300a-fm-20221208.002-g84115730
Mime-Version: 1.0
Message-Id: <0c602545-dfad-4d49-beaa-b5094b343af8@app.fastmail.com>
Date: Tue, 10 Jan 2023 17:45:06 +0100
From: "Pietro Albini" <pietro@pietroalbini.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain
Subject: [oss-security] CVE-2022-46176: Cargo does not check SSH host keys

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

The Rust Security Response WG was notified that Cargo did not perform SSH host
key verification when cloning indexes and dependencies via SSH. An attacker
could exploit this to perform man-in-the-middle (MITM) attacks.

This vulnerability has been assigned CVE-2022-46176.

## Overview

When an SSH client establishes communication with a server, to prevent MITM
attacks the client should check whether it already communicated with that
server in the past and what the server's public key was back then. If the key
changed since the last connection, the connection must be aborted as a MITM
attack is likely taking place.

It was discovered that Cargo never implemented such checks, and performed no
validation on the server's public key, leaving Cargo users vulnerable to MITM
attacks.

## Affected Versions

All Rust versions containing Cargo before 1.66.1 are vulnerable.

Note that even if you don't explicitly use SSH for alternate registry indexes
or crate dependencies, you might be affected by this vulnerability if you have
configured git to replace HTTPS connections to GitHub with SSH (through git's
[`url.<base>.insteadOf`][1] setting), as that'd cause you to clone the
crates.io index through SSH.

## Mitigations

We will be releasing Rust 1.66.1 today, 2023-01-10, changing Cargo to check the
SSH host key and abort the connection if the server's public key is not already
trusted. We recommend everyone to upgrade as soon as possible.

Patch files for Rust 1.66.0 are also available [here][2] for custom-built
toolchains.

For the time being Cargo will not ask the user whether to trust a server's
public key during the first connection. Instead, Cargo will show an error
message detailing how to add that public key to the list of trusted keys. Note
that this might break your automated builds if the hosts you clone dependencies
or indexes from are not already trusted.

## Acknowledgments

Thanks to the Julia Security Team for disclosing this to us according to our
[security policy][1]!

We also want to thank the members of the Rust project who contributed to fixing
this issue. Thanks to Eric Huss and Weihang Lo for writing and reviewing the
patch, Pietro Albini for coordinating the disclosure and writing this advisory,
and Josh Stone, Josh Triplett and Jacob Finkelman for advising during the
disclosure.

[1]: https://git-scm.com/docs/git-config#Documentation/git-config.txt-urlltbasegtinsteadOf
[2]: https://github.com/rust-lang/wg-security-response/tree/main/patches/CVE-2022-46176
[3]: https://www.rust-lang.org/policies/security
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEV2nIi/XdPRSiNKes77mGCudSDawFAmO9P+kACgkQ77mGCudS
Dax2XRAAr3lcAyVphS3Wm8kTKEAtnE4rpWvQnlebMcXO0HF2vNtW3srxJxcyInvm
dAS6EUah7qe71uwDMeqw6HIqcrLDESoaWFxwyruBHwfP+yQl4xSshnFtk9x1HDtm
cj66y2NWA726Z0RKWaZ6ePZ95tubnhMPbbMQJq7IYBCSRV5OPr4e51B9du30iGad
3yxd55mhcMaFViRvdVBDEgQYEN9hWGTzUodITfYyGTeYc7XP//4w9lzOTdW2u20P
9THdLwCNx6YYPSPMOr/UMAqmcPiqq5iLBfKd/aM+OAab4C1866RNnL40PBYv2lkb
M3y/oyDL1Ffe6oh/PqoaTIl0TOXdbZ6nElLDiLbZfMKraMJYh4Ue2viEf97DYQ3m
Kzske/lgdpiLT5LSXK2cUpXiCtKphu5pjqjoZZmfaXQfEZfQ8Jnpiu/xX36OTQ9q
UuKnqS6tCg3PWld/05rQDNKxQSqMZiyQH2qe81sJNlpB0gxjYdb0H2BOF0Iz7tcI
bxeFFdB7WXyB/CsSO5M+zW9j8ltT05goOmo/ja04z5UPp9mIeGTSDjynCQPhceqm
6akhQzA0PyzmlZI5VPOUtc2zmU05cLcqtcU7eHaIfgNoxFtakbh+p0bkJJQwIGMV
U0w/FDNeVXfCdTMcuxK99hEvxnYK2q4/6K9cyVGKoEjJXRIgyTk=
=1E15
-----END PGP SIGNATURE-----
