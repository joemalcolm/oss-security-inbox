Received: (qmail 5431 invoked by uid 550); 6 Nov 2023 22:56:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28028 invoked from network); 6 Nov 2023 22:21:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1699309246; x=1699395646; bh=9IfMIb7XtS
	CqG3hJy/1X+9ujbLwpCTV3rtNnOm6pWfg=; b=c/CCjC8fd9sXFuP801XKcnYGcB
	fEsBUe80IPBr5QgqtTBkqy3Se0fjeTS4beM0oeSKTm3N7pCAnONkcp2Faw3xaRsy
	VkM/zWkDlW89lUTWo345amd+OqX5Q7AV+FlAvI3j4V5WptsHaVx5aCMeTpswwqAg
	xHr8sOH4Ux91Ngm1JpuoZdF4b81GEfpo9TpJDrbTbtNzJmsHRmUCfnaSo2yodcZO
	bWfmrYKpxJnc33tSh++Lbn+0XHXMqdbFWyPS55tyW+DegHBy5KKeyEhTUpodp3gr
	oo0pedpXNhzV25Df+WNHR/VrwkdyGezkAcBLIqhN8/CK+sHc7e0GNKj8HsYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699309246; x=
	1699395646; bh=9IfMIb7XtSCqG3hJy/1X+9ujbLwpCTV3rtNnOm6pWfg=; b=V
	8oXCdSHDyB/oZkS9oKdEnpAlGegEHud5CkRlUhHQxCvUybYQFhZnDxgvouyenAis
	wSV/mqZcB2CnthBguznk8i+n37h0ERYEBdFKuiepVLjrREcOZ3MfQO0ZR+nmph1X
	bH7wBG8uUWjLeomlByrO/k7c4v3FTSE3Btf/Lvt4a65Vz7tQmkQ+fLR2gfNFGC+t
	iJT0d2CEg7fGJG6ZEUWd7moe4Ephuhv3Vdp0WRU/yfUVSJfe+ly6u/zvU26RNQ5A
	Iu0Eh8e5yvrsGnQHaw7a/CCC/a3F0GCMEC4qmxWMjpteRUuBXqjes5Dgrr+fDgud
	sxOOCMlsxEhE3Uc1Gofmw==
X-ME-Sender: <xms:vmZJZfi-G_jSmUqAx7JojdSaGPpDPMlA5htOSHN8QRVfPtS8uk6xtQ>
    <xme:vmZJZcA7-fUSJHX-wZF29q7Jk9x_waQTWV6nbKHzoDHfbcuMlb49V5PFj1EpzqZY0
    mbDoaqXXzs9pZoC-og>
X-ME-Received: <xmr:vmZJZfFILTO7dW3ZbZ6rdtDjjoWeFK67bxCmg98LKSzn8fHVXbvRjPP53ngfarxKSAzk8oh4hwTNP1z_d_9UZGxuQlJpwp3-kRlj>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedruddugedgudehjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefkffggfgfuvfhfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpefrihgv
    thhrohcutehlsghinhhiuceophhivghtrhhosehpihgvthhrohgrlhgsihhnihdrohhrgh
    eqnecuggftrfgrthhtvghrnhepheeuvefhvdelkeeugfeludehfeekveekvddtieffuddv
    vdffieevgfeivdeifefgnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehpihgvthhrohesphhi
    vghtrhhorghlsghinhhirdhorhhg
X-ME-Proxy: <xmx:vmZJZcQA4PrCJ7yKbUETAL6snq3UdOx2KTMlDTWJW5E-VBLDm83pSg>
    <xmx:vmZJZcwvBPu9iR6E2yA8FLH4scxJQTSsu905n6JYmO26XUNHrrscCw>
    <xmx:vmZJZS4-sBxSEZI-Ae_TvzLsmcRu71MlE-FOsUn3GKSSuTuWUD60pg>
    <xmx:vmZJZZrgBGv9LF87Rpaj1f9340pc59tj5QHZ7Dp6iHQwG45gl3oPcg>
Feedback-ID: i6b794706:Fastmail
Message-ID: <dd885ef0-4191-4224-8707-73e9f1061f0e@pietroalbini.org>
Date: Mon, 6 Nov 2023 23:20:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
References: <0c602545-dfad-4d49-beaa-b5094b343af8@app.fastmail.com>
 <20231105230810.GA26924@openwall.com>
Content-Language: en-US
From: Pietro Albini <pietro@pietroalbini.org>
In-Reply-To: <20231105230810.GA26924@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2022-46176: Cargo does not check SSH host keys

Hello all,

 > I think the libgit2 issue was never brought to oss-security, so I am
 > passing its mention to here now.  Also per that thread, CVE-2022-46176
 > is only for the Cargo issue.  libgit2 was supposed to get its own CVE,
 > but no one in the thread knew whether they actually did.

The Rust project was in contact with the libgit2 maintainers to coordinate the 
two disclosures (that's why we mentioned it in the distros email), but some 
miscommunication happened and the libgit2 side of the advisory didn't end up 
being posted here by its maintainers.

libgit2's advisory is available here, and has CVE-2023-22742 assigned to it:

https://github.com/libgit2/libgit2/security/advisories/GHSA-8643-3wh5-rmjq

 > I don't know whether libgit2 was actually fixed on that date as planned.

The libgit2 advisory and fix ended up being published later, on January 20th.

Pietro.
Rust Security Response WG
