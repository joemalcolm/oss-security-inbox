Received: (qmail 32640 invoked by uid 550); 8 Sep 2025 17:46:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5637 invoked from network); 8 Sep 2025 15:44:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.net; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1757346261; x=1757432661; bh=HyPsHIdO6c
	UhXbakNOJO9qmQ641dgq7nknx0y2uIPkE=; b=CPybZ55dx+nvWwcr9mOIZFytu/
	kz+bQVHBcX21UP5IWRV9Dq2xXf/GzvH2dwhZyWbnXeRrgMNjioLMhcWCaLUmYEm5
	0/Z8PduU/n+sggm8BPOdwckhh1x0+JJPSKnbTCrtDJt1YFkbOywyRHTlk0AqJsFu
	I4RHweWG4NAaHzboStlMY/RcmlD2CRpXp4oUaHFxSIk7Pa9+5l9c+VBPwupaJDa7
	AJyBvWNswuL5qx7KjsRSSxCEouuZ9MllKInhO1hZFByGuP6UhYndOmdSlfhdh5o7
	P4cidRcey+KSxAOK/IMc/62IuxinjzvbE1GBC0LvtOR6NnKRioKrpI2QOaig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1757346261; x=1757432661; bh=HyPsHIdO6cUhXbakNOJO9qmQ641dgq7nknx
	0y2uIPkE=; b=PcvIaDdcK0LUBOBqAhc6HFn49mX3NivvRIvqdGQrJa+Dg7kj9+c
	KkxTC/WCl7X5C5Z+mzzMQwduU4Jw0RGtV2uEyb3AgAqTdTNfzFPTgxW6IdtuZ78U
	FiScQEGtr/lD/Sxik3hFP3Fnitc++f7Oj9ENBrBWRJGX48y7vIAt5EqpCzv9GL7a
	9zbQVfqjyQwTnHpenBt5/WqpXsLWm8q1BERA2V7eJyc3MNmdBwaHTlwZ6fmMU82P
	l7dVSPgeXia0PFPnvvBoxPkDvjWhYJdupYKhI/Zov+z1ieeonQzjntFBfyKecpkI
	g5icLhggrOjimJHSDwoYr39PvtTr6PCfG3A==
X-ME-Sender: <xms:1fm-aDKnsRNAVa28KxWbIjN0dayt5UraDDRQgZx0tAwOW_Axlr4pjg>
    <xme:1fm-aJKHFfmBQM9-ikM8VgmN6QY1jC4PlH0oewF8XdOVUVRaMydz8EsEHF2l0d55r
    dTdPwfUM-jqwnbz>
X-ME-Received: <xmr:1fm-aFFmBWU4cSnC-Ped9_62hjBEySvLlFefve_94GCG_HlUQia_QiBpCkXnisfmqnVVHPYK4wuPNwIfoexKvaceG8O1joX9>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeelfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfvffhufgtgfesthekredttddvje
    enucfhrhhomheptfhosggvrhhtucftohhthhgvnhgsvghrghcuoehrohgssehfrghsthhm
    rghilhdrnhgvtheqnecuggftrfgrthhtvghrnhepudfhveejgfeuffefkefhtedvgefgve
    ejjeffteektdffgeejvdegkeduvedukeeinecuffhomhgrihhnpehmvghtrggtphgrnhdr
    ohhrghdpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomheprhhosgesfhgrshhtmhgrihhlrdhnvghtpdhnsggprhgtphht
    thhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrih
    hthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:1fm-aOlLCg-6wxp4qj1ccSNzfP--daCZHQiGfpYUkaOfb0k1pSfntg>
    <xmx:1fm-aCKVDHKQph29YdyvRhR0zwmQDO1fCmJIPimG6OW7AfFb3FA5hg>
    <xmx:1fm-aPYUr-OCjZIro8w93md61bvjspr8EyiUV79j-rEHr_E0_nMZmg>
    <xmx:1fm-aEaQvL3ot81TEJjHrL7pvD0xTlBs9rjyXWsQWleV2eNH83zqtg>
    <xmx:1fm-aDcSPJZtm8VFXwTO1snBP0pZ0nntnHPsqRJ5c89VixcJy5GurFUk>
Feedback-ID: ia82c4180:Fastmail
Message-ID: <25b3c572-4f05-4352-8c58-88df2b364dd6@fastmail.net>
Date: Mon, 8 Sep 2025 16:44:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Robert Rothenberg <rob@fastmail.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40930: JSON::SIMD before version 1.07 and earlier for Perl
 has an integer buffer overflow causing a segfault when parsing crafted JSON,
 enabling denial-of-service attacks or other unspecified impact

========================================================================
CVE-2025-40930                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40930
   Distribution:  JSON-SIMD
       Versions:  before 1.07

       MetaCPAN:  https://metacpan.org/dist/JSON-SIMD
       VCS Repo:  https://github.com/pjuhasz/JSON-SIMD

JSON::SIMD before version 1.07 and earlier for Perl has an integer
buffer overflow causing a segfault when parsing crafted JSON, enabling
denial-of-service attacks or other unspecified impact

Description
-----------
JSON::SIMD before version 1.07 and earlier for Perl has an integer
buffer overflow causing a segfault when parsing crafted JSON, enabling
denial-of-service attacks or other unspecified impact.

Problem types
-------------
- CWE-122 Heap-based Buffer Overflow

Solutions
---------
Update to 1.07, or apply the provided patch

References
----------
https://metacpan.org/release/PJUHASZ/JSON-SIMD-1.06/source/SIMD.xs#L248
https://metacpan.org/release/PJUHASZ/JSON-SIMD-1.07/changes
https://github.com/pjuhasz/JSON-SIMD/commit/9a87de7331c9fa5198cae404a83b17649cf7b918.patch

Credits
-------
Michael Hudak of rasotec, reporter
