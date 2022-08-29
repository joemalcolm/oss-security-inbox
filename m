Received: (qmail 32236 invoked by uid 550); 29 Aug 2022 18:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31812 invoked from network); 29 Aug 2022 17:55:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=monjalon.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1661795720; x=1661882120; bh=o0QQ+CYUkY
	0JBM5LJleTev3PrUZieipjs772V66YA1U=; b=eSnXBGZNl9Nzsch9KNTFE3CiKf
	/9iUpB4uWOuxa2/xSbP4cKC14DFMZgP+jo9Xr8meFAEmwjjfb+u4NtFo2MM68G+Z
	/ebI0SOJP9KCiSbQPgYuSMrSoHtEvQCaNJiB1D+PoVBawzZyYTbd3W60pgehSe6r
	+c95FMS20FDJCpOp6YwQz2KZ/JHLgbf+792hTi8uuiySjMcID3iJc0b90W1FgfU6
	ToG3E70MYCG1Vua7vYR6d+WqEW8krfwke9C/elUeIGf+QkZwEhN8jncw1HJ2LOr/
	5IX8Amq6eAb1FP5ZYzGT0CJJ6mOaF28e6t+Tn750Q2kyg0v0GL2gK2dI+AsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1661795720; x=1661882120; bh=o0QQ+CYUkY0JB
	M5LJleTev3PrUZieipjs772V66YA1U=; b=k8KjYsu4ouGts7aIW/DDxAkoeKHm2
	/Rl0MMxuXFyWMO+HmPqyAI3Bve5yqla4tJ0zyOPZrYNtd1W2nxb29gGE3IUr5bNn
	ocFULGK4NRm8pAC2gknGQgR5iKxoiZjVedqhI/LPf6JWdQlXCJdKYeABl0MddHlY
	7ru1C4EhZVgFw3vOsE+ewSZODW96jUEzByL0wmS0QzZMcwgVlKjGK1i8R9w3AzX+
	rjj+abBYvICZNv7+xI/cYNlpznTK/14sCKm5bJAD81RpwkQ3Uj/VxhxTXHGDazmR
	4NzNk0rwZYKR+TDOwo8mgNbd4n5hi3hXPEyyOIpcK2/MHWiHs7JPyZAZA==
X-ME-Sender: <xms:iP0MY-pVxN4_dlSE7_i3OCgfJaYic-wtq6vZwiNQGPaYnfBKEf5BXQ>
    <xme:iP0MY8rsdqbRN43xJTkMAbDFb7NNgabm0Cy5EpAunx1PkjULnekLzwVejvtNJ5eXO
    gjcmgACrhtgyKF5BQ>
X-ME-Received: <xmr:iP0MYzOm-CZE8ENZn_4w9X6X6OFKGL2dRS2A43-JCsU1stszSGiMfrt961ec-RoRNofoiTf5Ex3d2Cty9Lednrjxcg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekuddguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkggfgtgesthfure
    dttddtvdenucfhrhhomhepvfhhohhmrghsucfoohhnjhgrlhhonhcuoehthhhomhgrshes
    mhhonhhjrghlohhnrdhnvghtqeenucggtffrrghtthgvrhhnpeeuhedtudelvdekffekud
    duiefftdekhfelgffggeeifffhvdekvddvgffhteelffenucffohhmrghinhepughpughk
    rdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epthhhohhmrghssehmohhnjhgrlhhonhdrnhgvth
X-ME-Proxy: <xmx:iP0MY94BGLOox8EwxZV1C9sLb3dJxYDPcHRO0PhXqCsKZCpYIhFMzQ>
    <xmx:iP0MY94D0kuazz6RedmOK81MJ07KGcuQ2qoNN1OldCU-BwiwZjtYBA>
    <xmx:iP0MY9i1c43Vk-T5J7fJ-7KSja63-7IAhq3V0ZPgGxv48J34fpBg3w>
    <xmx:iP0MY6g280_Hms1yiA3PiYxsnseHfAarAoo_gcIc1U3Z93u9kSzhsQ>
Feedback-ID: i47234305:Fastmail
From: Thomas Monjalon <thomas@monjalon.net>
To: announce@dpdk.org
Cc: oss-security@lists.openwall.com
Date: Mon, 29 Aug 2022 19:55:17 +0200
Message-ID: <16136472.hlxOUv9cDv@thomas>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] CVE-2022-28199: DPDK mlx5 driver error recovery handling vulnerability

A vulnerability was fixed in DPDK.
Some downstream stakeholders were warned in advance
in order to coordinate the release of fixes
and reduce the vulnerability window.

When having a failure with the mlx5 driver,
the error recovery was not handled properly,
which can allow a remote attacker to cause denial of service
and some impact to data integrity and confidentiality.

CVE: CVE-2022-28199
Severity: 6.5
CVSS scores: AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H

Commits per branch:
	main  - https://git.dpdk.org/dpdk/commit/?id=60b254e392
	21.11 - https://git.dpdk.org/dpdk-stable/commit/?id=25c01bd323
	20.11 - https://git.dpdk.org/dpdk-stable/commit/?id=ef311075d2
	19.11 - https://git.dpdk.org/dpdk-stable/commit/?id=8b090f2664

LTS Releases:
	21.11 - http://fast.dpdk.org/rel/dpdk-21.11.2.tar.xz
	20.11 - http://fast.dpdk.org/rel/dpdk-20.11.6.tar.xz
	19.11 - http://fast.dpdk.org/rel/dpdk-19.11.13.tar.xz



