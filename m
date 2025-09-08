Received: (qmail 24329 invoked by uid 550); 8 Sep 2025 17:46:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20221 invoked from network); 8 Sep 2025 15:42:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1757346131; x=1757432531; bh=5vbdc0meTzPfo3W6kPYKpmJHlRyDC5vXwp4
	atzuJLUg=; b=S3WhP8UzDZcxw2pwCiWQzpb3/fJ64ZEKO38J2Kp3/ch9Z01IUuo
	T24m6VmeBP8rV9Pt09xQ+ccl1mkVQ8k7MQ76J2CqGxqCercNkdEkUNsQAcf8npO1
	HkgGhDJXHnsXUCxlWN54+LR7k9bu5Fw2lw8nRswZSLFGKMjyyWtoec/Sd8FdIgPr
	C/7ccMa42/pgdGJj1+acjT7mCCArdQHD/hc4iEWDBcEaZiwndVbmOpjmIFup7EXY
	Djz1fy91L+ZEiPMLNR/lFh4QEXtMF7IXfL1/WFYckJ48rsZT4VHYHHTSooxPCDRE
	/Ivy3f7R+toRKzyg2Rsm7iYpWhWvakVrNyg==
X-ME-Sender: <xms:Uvm-aG__d6Z-mu2Vo7PKbP4yFDcLvI6sLV2IinJovYwfgfmY9zabhQ>
    <xme:Uvm-aIvnC-lG3xJp8R4hbeY3-VFEXtdhaFcP_yboknCexijROjXmxyCVWntpN1kkN
    GqpqNcMevt8MFk8>
X-ME-Received: <xmr:Uvm-aFb5sVJaeD3K7sM5xHywhawcf4VQ0zVJaTjSuURh7qwmgy4Qsp9lG9DlraEinxBvONQZx6fe46IiTzNSP9gIg3mlOxfU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeelvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfvffhufgtgfesthekredttddvje
    enucfhrhhomheptfhosggvrhhtucftohhthhgvnhgsvghrghcuoehrrhifohestghprghn
    rdhorhhgqeenucggtffrrghtthgvrhhnpedtjeeuueduvefflefgjeehgeffffevueeule
    eitddutdeggefgjeetgedtveehgfenucffohhmrghinhepmhgvthgrtghprghnrdhorhhg
    pdhstghhmhhorhhprdguvgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpehrrhifohestghprghnrdhorhhgpdhnsggprhgtphhtthhopedupdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhish
    htshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:Uvm-aApjNyyAtCSAma_UizPA_5GN-Y5MIQenUZD-RIa0pXmo2TPRJg>
    <xmx:Uvm-aC8Uc1ElI0ykd-yknDVUR2F1IRV_Ukiym2QfcZDkN3SQZ7eZcg>
    <xmx:Uvm-aH_bdH6vnwxpciKSTMPZXQ6r3ZXE5_0XXPn8tcePrYxxtVLMKQ>
    <xmx:Uvm-aJsunSjBxb0Dl1vE1jYYqiUWGjeCiLcWRF-3ceKFGqRWrS5PuQ>
    <xmx:Uvm-aCoQ-RfBxyKLqwHE2dWE_vR7dDcSY4JzUlXelgOduXk_zKRszQ>
    <xmx:U_m-aDFluk9tvOJwN4plInTnNc9z88QLo9nPHBfrOmAixMK_Fg2gqNAxuAvn>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <37b51746-e74b-48c4-8181-46b3a1c47c42@cpan.org>
Date: Mon, 8 Sep 2025 16:42:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Content-Language: en-GB
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40928: JSON::XS before version 4.04 for Perl has an integer
 buffer overflow causing a segfault when parsing crafted JSON, enabling
 denial-of-service attacks or other unspecified

========================================================================
CVE-2025-40928                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40928
   Distribution:  JSON-XS
       Versions:  before 4.04

       MetaCPAN:  https://metacpan.org/dist/JSON-XS
       VCS Repo:  https://cvs.schmorp.de/JSON-XS/

JSON::XS before version 4.04 for Perl has an integer buffer overflow
causing a segfault when parsing crafted JSON, enabling
denial-of-service attacks or other unspecified impact

Description
-----------
JSON::XS before version 4.04 for Perl has an integer buffer overflow
causing a segfault when parsing crafted JSON, enabling
denial-of-service attacks or other unspecified impact

Problem types
-------------
- CWE-122 Heap-based Buffer Overflow

Solutions
---------
Update to 4.04, or apply the provided patch

References
----------
https://metacpan.org/release/MLEHMANN/JSON-XS-4.03/source/XS.xs#L256
https://security.metacpan.org/patches/J/JSON-XS/4.03/CVE-2025-40928-r1.patch

Credits
-------
Michael Hudak of rasotec, reporter
