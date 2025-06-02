Received: (qmail 1916 invoked by uid 550); 2 Jun 2025 15:35:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15720 invoked from network); 2 Jun 2025 12:34:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdwaa.nl; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1748867666;
	 x=1748954066; bh=/SsCUjV6XO8nmrNLiOMF4LPpmTCfkFWuTh8xxTMmFzk=; b=
	bBxN8cI9se+klb58iy2AW+1Y/r3GzKehPhkMWQiy0bqDlDCXnD7W2+1evCg4JfX9
	yqbRpPj6N80rVwlmhZrTOUwlTAIPNDcn12aymWOXoBmb60TDAlgFPeLTyW7rARFJ
	DUh5XoVZTJfehC3vTaaNhbuPo6JglUgX0FXnYB4VSmkJsEUJyFWGUFO4dfNiE2YG
	atGigdkdnzIFeVJsYvzsHTDcdmU7ImAT3+bbLKYGJEI/EPccwtaXFHkRu0z4Lw4s
	0wZhYXwe7C1CeUfrrP7b0BS06TGZoJcr+asAkMF2/QmnODXIKjpM+k3ku2flUpBk
	uwVRn4q49z13x/Csc4kZPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1748867666; x=1748954066; bh=/
	SsCUjV6XO8nmrNLiOMF4LPpmTCfkFWuTh8xxTMmFzk=; b=Mr/9htqkXGtwrpPK/
	0QL7JzT4SYR7PvG4PBf2SELD+NJHX+Nx2fgcMv6MKAzd7yvfxFVhit+HkEzMVyVD
	sU6OQ/VQIQUsVMezmQYgZy3OZiHsIoDFZBzD0v5xoSjz34Ya1yr/qNXbjhVDNuoi
	rz4rE03Gs+zi3XKyc7nFnwqpYWOqiR5YW+WKoa7Uzb3VPn2U6ANpqMhg+W99/c5V
	KStoKW3mN+NWB2qLMRs05jiZs7aYS0EJmBrfGZbYolV+M6+OCrwMjETu6V/0PyVw
	JMisMKqn+/uFHmldFfHhYZpf9f8kdSM/QGjTcaHJ1/NcyVivJxMhQoUodqnXBUis
	/1IaA==
X-ME-Sender: <xms:UZo9aAFCNc-pPXSjOvub-5yqsoqxEs6hMi9ZYQY8BzQnwMgDiiAhBQ>
    <xme:UZo9aJUc3BGjMU402wfqGHvUM4dRtLTe_swVqyYUfOxSeia-Twvjk9AODN8tVWFWP
    GEqx0RD_NA3aO-SiNo>
X-ME-Received: <xmr:UZo9aKJhIuNCZosVsS1Qvt7jqySMhQnHyKfJzLAatmw6Ee8ru6d3zOt7aU_-Ti4jTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgdefjeeileculddtuddrgeefvddrtd
    dtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggft
    fghnshhusghstghrihgsvgdpuffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftd
    dtnecunecujfgurhepkfffgggfuffvfhfhjggtgfesthejredttddvjeenucfhrhhomhep
    lfgvlhhlvgcuvhgrnhcuuggvrhcuhggrrgcuoehjvghllhgvsehvugifrggrrdhnlheqne
    cuggftrfgrthhtvghrnheptddvieejfeeuffektdeuveffuefhvedtieeihfeiueeivdfg
    vdfgudfhueduteeknecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjvghllhgvsehvugifrggr
    rdhnlhdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
    epohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:UZo9aCGKllvy3_MQm20G4pJgIuVHJv4dkzYMFkYQReDxoAdoMnGiNQ>
    <xmx:UZo9aGU64m8Wj1FO5MtyoUuMyk0WNgWT9zItSaqeGuA3FNcqLiXSCw>
    <xmx:UZo9aFM3zM9O7RPm0cFgDPv8VsOUH6D_WH3DehmT51aUUvq1ulWpIA>
    <xmx:UZo9aN2xyWCxTiukHfrW9L9_waXlkpKqGlRziUp2uXMFs6MrJ1cwRQ>
    <xmx:Upo9aBH2CQeHycNLtWA1zT8ez7IQt7kpBlFV1g4mMcz-Fi-CkkViB-Hc>
Feedback-ID: i2d0446dd:Fastmail
Message-ID: <8dd367da-4111-44d2-bda3-a9c53d7f6e8b@vdwaa.nl>
Date: Mon, 2 Jun 2025 14:33:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20250529171556.GA9260@localhost.localdomain>
Content-Language: en-US
From: Jelle van der Waa <jelle@vdwaa.nl>
Autocrypt: addr=jelle@vdwaa.nl;
 keydata= xsBNBE6QLAIBCAC3O6LmF+GKvOh7IV00TG+EKAQHAwjESnHGJOW58lKK7eAYn62ZM1uy0+6h
 yCMu5PD7+ND6U1gcgTTHYwNK8AaJt7yY4FRssgdcJk59uJBwROZtllotClJ893CuB6Wgr68b
 07gIRbENYrB8rEoGfpUG//8/ep7sY8PS03jnFb4ll6mPlUE2oQVdYOlXgF4f9qkkIi4SQeE2
 MTuERaOrDuUNDlroJ7Yfx3J/rL5Qjn578/TKCAxg0pns6VIA/P9spRGmLhT4zP+OxZXeSZme
 IxcwFdJJXHr4oGaZvqe1yHlMmKR98rrIfPWhkw2Ls/XIZIxf6prT0XyczbzBnC2y1JyNABEB
 AAHNIkplbGxlIHZhbiBkZXIgV2FhIDxqZWxsZUB2ZHdhYS5ubD7CwHsEEwECACUCGwMGCwkI
 BwMCBhUIAgkKCwQWAgMBAh4BAheABQJUX8WhAhkBAAoJEMBghjN8UHc+mFwH/jjN+Qob4O36
 YiieajRwVLGuYdUDt9Z655oQYU8V4qbWf2tjUtqTYXrxLnaY6xQoYouRz9yFbh9dIKZb67ir
 7AeVgCOtWVesGxAlGH6EY5JBZcsN0v0ScsivqQAv/Mv+4HK+XM57YlyRagD8tkprYskioWHg
 OwQfXAO6nlm4BJHWO9bHJUMgiGs7I190IKQG7iLBnJuGjsOFuy5KTLpnv+w7twmz0H+pkUPe
 jVHfJlJWdN4v1PigpgpjOR6ZepSIggMk7dHsa6GNLUOzi61yYVFe60+EGXhwyJIqSt56a4oR
 jMUcXaOugGr+JwC8Eq7Pg2+aFk+8fbe0oUzZJucHGnDOwE0ETpAsAgEIAK4Usb7B00WRxCZG
 HtM973F7V4OhOKv4kZKduxtu71bVUZsTuzn4h+m8guJ51uY/I2icUrN9gJG5aEzRqPuQi2L7
 KmZUjs3pscZWgUgiT8UZFDR6RuQ4k3CcWobsRCjYZdSblSZ8ccrLJE7xSbwKMXjAh2PEiaQT
 lS6wQbn6mHv4y3H9QVHs7+jXbmfHCxnVcwLqRmpuegSmezDaL5TlSc102voiXinhrWEZUvAB
 KDh6VuJ/60Y6zelCXVsEjRaApz90iXY1nifLhkHM8B2wG7Pum3V3X0Y0QTVD+z3EL1iq5mFu
 epKp//IOeeJN5iwHcRSJGy2s1oOzjRDyPv6v1AUAEQEAAcLAXwQYAQIACQUCTpAsAgIbDAAK
 CRDAYIYzfFB3PvDuB/0dI13hSYHW27c2Rq8BaGbIhXYYETtPD5B25/P1JJ5OQZkPmVq+vSHw
 uzUaDZHy3ZcwE+xFXzlkwXGdWos07JUGo74zV3HfeZxVEPv0HB9ACqQVU/JKjLZNj2SfhgzL
 4F+O4Zgdsf0YaZG09F5PbMvbhoCZLfAaKWz/4fLEfhrDJLhrphUyPDXosn0UxPkDv0iiixn4
 V+bEZ5/wd8dRWi58R/iND+gRGsBREm5SpzdhnsarwoX6YdsQ449379enDNUN7jV4C3Gkon2s
 VwI2ZZbS10cY8rFSAV/CJA2E9daRoz40DI0tgXgLBAVhy7y5HWZJsDZexU0HFKJfkDi7RUPj
In-Reply-To: <20250529171556.GA9260@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Local information disclosure in apport and
 systemd-coredump

On 29/05/2025 19:17, Qualys Security Advisory wrote:
> 
> Qualys Security Advisory
> 
> Local information disclosure in apport and systemd-coredump
> (CVE-2025-5054 and CVE-2025-4598)
<snip>
> 
> The fix for these vulnerabilities is twofold:
> 
> - always take account of the kernel's per-process "dumpable" flag (the
>    %d specifier), in every code path, to decide whether a non-root user
>    should be given read access to a core dump or not;
> 
> - use the new %F specifier in /proc/sys/kernel/core_pattern (a pidfd to
>    the crashed process), which was implemented during this coordinated
>    vulnerability disclosure, to detect whether the crashed process was
>    replaced or not with another process, before its analysis; for more
>    information:
> 
>    https://lore.kernel.org/all/20250414-work-coredump-v2-0-685bf231f828@kernel.org/
Christian Brauner has backported fixes for this issue to all stable 
kernel series. Quoting his mastodon post:

 > I have done custom backports of the patches to install a pidfd into 
the legacy usermodehelper coredump handler for v6.12, v6.6, v6.1, v5.14, 
v5.10, and v5.4.

LKML post:

https://lore.kernel.org/linux-fsdevel/20250602-eilte-experiment-4334f67dc5d8@brauner/T/#m03e7e205c913101dc452c391bf283661049ca494
