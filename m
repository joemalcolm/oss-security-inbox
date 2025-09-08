Received: (qmail 24307 invoked by uid 550); 8 Sep 2025 17:46:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27785 invoked from network); 8 Sep 2025 15:43:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1757346207; x=1757432607; bh=IJ8c6pz6DqzCYBUbAB4aSWPbExgaAtZ/FPx
	3tX3+WHo=; b=Dn+AfTDLTdwwjgE3EeXS+B5kIwiywNIuAAW4gZGOJshEdoBWN5s
	9TfsAxKztA5AQFIMCUpQW6zugVpHjd3kew3brVh9jeR3mL3TNnCYNcufN/eWNkmP
	hkrH7SG3MBBDuPWuqW9t0k5ePMO03GSA29wiyDwyDDNQ6UH/F6sTxbhaBovUJRvH
	sf8cZR/+7IhO4ZSxa7PK9jIpfGJ8CeDVCk9bXbtswIX0pVuOyjEkuvj1MVkjNZ9o
	vmi+1jhg7UnX0DapXoC9jQwoxY2LpJu7nsv1Oj95DLVABmB9qgYwP88FvO4sZg75
	FDednyxMPetqO7rnJldLQLoFM7/1CTrtuPw==
X-ME-Sender: <xms:n_m-aCCmES_9ReD6_-MfewbG882REad5x5-78bgsCRJ3deA3nsgdXA>
    <xme:n_m-aOjmZkdX6PC7g6bR0bwLzjmpK0jYp8JgEvj7MeJe3vqdp0zXsp1scUlJCXC6F
    S_nOcPh5PFEBQOe>
X-ME-Received: <xmr:n_m-aO9BmlDWWtq0YBpE96KxuVmuHxdAN5bykid0hGK5JhTtJa465pJUXUewaA49ZB5nOeltUW3NIOe928NGh2m7OrbgkBAy>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeelvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfvffhufgtgfesthekredttddvje
    enucfhrhhomheptfhosggvrhhtucftohhthhgvnhgsvghrghcuoehrrhifohestghprghn
    rdhorhhgqeenucggtffrrghtthgvrhhnpeejgfduleelgeelgfeigeeigfdvjeeghfduve
    fhgeefvefghedttddvjeeklefhvdenucffohhmrghinhepmhgvthgrtghprghnrdhorhhg
    pdhgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpehrrhifohestghprghnrdhorhhgpdhnsggprhgtphhtthhopedupdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhish
    htshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:n_m-aC_CY5RhZM13On6NWcpq4lkgr2hObhRZGGfg6DsXO7FSQ9HpCQ>
    <xmx:n_m-aPDU7lXDmThKJq9WX9EeHStOqwskWjtZt5eXUj7GH854IilCbA>
    <xmx:n_m-aKxTP6bGNZNfKTRFThtRjlcIIKvacY4h-SI9oq7qkKsVzQgk7A>
    <xmx:n_m-aMTHRtEcHfbTAgeYb4MSsIkN7CfT6RA7XnU9kqFRAqyP8k4ThQ>
    <xmx:n_m-aJ8clgdY37o1TwPqrus4G2LGrO6nlUkNF59XwIm1uew-1bqK2Q>
    <xmx:n_m-aFLX3DK94nwN3ps927A79aBY35OgkfVENZpylpmiKQdSfnhwRZ-O5g8i>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <d8715cdb-d2be-4fd7-aafe-502e74ebd585@cpan.org>
Date: Mon, 8 Sep 2025 16:43:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40929: Cpanel::JSON::XS before version 4.40 for Perl has an
 integer buffer overflow causing a segfault when parsing crafted JSON,
 enabling denial-of-service attacks or other unspecified impact

========================================================================
CVE-2025-40929                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40929
   Distribution:  Cpanel-JSON-XS
       Versions:  before 4.40

       MetaCPAN:  https://metacpan.org/dist/Cpanel-JSON-XS
       VCS Repo:  https://github.com/rurban/Cpanel-JSON-XS

Cpanel::JSON::XS before version 4.40 for Perl has an integer buffer
overflow causing a segfault when parsing crafted JSON, enabling
denial-of-service attacks or other unspecified impact

Description
-----------
Cpanel::JSON::XS before version 4.40 for Perl has an integer buffer
overflow causing a segfault when parsing crafted JSON, enabling
denial-of-service attacks or other unspecified impact

Problem types
-------------
- CWE-122 Heap-based Buffer Overflow

Solutions
---------
Update to 4.40 or later, or apply the provided patch

References
----------
https://metacpan.org/release/RURBAN/Cpanel-JSON-XS-4.39/source/XS.xs#L713
https://metacpan.org/release/RURBAN/Cpanel-JSON-XS-4.40/changes
https://github.com/rurban/Cpanel-JSON-XS/commit/378236219eaa35742c3962ecbdee364903b0a1f2.patch

Credits
-------
Michael Hudak of rasotec, reporter

