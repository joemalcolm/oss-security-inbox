Received: (qmail 28256 invoked by uid 550); 19 May 2026 21:24:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5202 invoked from network); 19 May 2026 19:41:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdwaa.nl; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1779219668;
	 x=1779306068; bh=tx+tQlzy0zcWEaWL+ah2k3Q8dteTKm7KGSOLIxAEBAo=; b=
	eb4Xn8Zfb22IcbtbwV3/JsrrL85L757bP86QZNtWqiILRpV55/LtGWj9G5nTVx1W
	cowrT+BUJljOUnSErAMIvIE9BGaqYhjSJgs0WBai5ZWv8rIJP9lNp9pCmzGVAmC9
	KrMm9zoxf4pzGmxMshJNPL80za9d4A3UnQwaObT7Z2hpkztXo4xYHMnqiQh7B4RC
	gg9vqBLT57hWdTPonGp/S3AUROIAG4E5txOFECLxtUH/iWqslqaZdsZydY1D9BZN
	5rUw3iG4VdJdS3iPxemW1nElk4KkwraSy0w8BRP2WybjudbwSRuMRAX3a1w45wXM
	iNadFxmonWyLGlPcrirKtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779219668; x=1779306068; bh=t
	x+tQlzy0zcWEaWL+ah2k3Q8dteTKm7KGSOLIxAEBAo=; b=u6b5R0U8gMIdMib6k
	9gXBUeA6BhtTRTGpMq4H8nUSeYHSk2Skt/rJXuDw2Sx2urmuOnDazcLcuHd0RYiK
	MrRagl1qHGBffu7tLocANVu7ElnXWKtxhTllex7HSNFgtwv+MO+i11uYaJaNsQVr
	S13PecjnqSjv2yi/pXRHGQF2dCwBECM6Znr0u7yt3ErHAYIydTzKdsoATjAMfyb5
	hOWAxIX47fxI6QQSj4RhfN95fc2o8crvhB5/oGaIetE/S5AawoTNKgHjx+WOUT5A
	uQa9eOOHPu7LOkZsmKHYfWnlW8MtFnFp3orFSAYO2LjBAo666v+TeiaLzNrjRHQt
	Iqq8Q==
X-ME-Sender: <xms:1LwMag7OBHkEoThYfNjFEF2mUtRa3Hiczie2JL_qfSO87Mhzzl8ftg>
    <xme:1LwMao1ktJeTvhak5AGQ_UWsHyHX8e3j1V7os4zoc7Kky3mDFRG8ALMVzewnjnamv
    pubz978-bJqYknkCxXUQVzoheVYJc_x4FKHMgmlEgJS5N5VjRw3sow>
X-ME-Received: <xmr:1LwMalHpQx6_nvdVcYU4iKcXn-X0hMBCtfG7KNtIor-J2iLV7Ii0omaNKLxRYQxig1CscognICVwhg-0gg8eCqQ2EFgK7Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugedviedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmnecujf
    gurhepkfffgggfuffvfhfhjggtgfesthejredttddvjeenucfhrhhomheplfgvlhhlvgcu
    vhgrnhcuuggvrhcuhggrrgcuoehjvghllhgvsehvugifrggrrdhnlheqnecuggftrfgrth
    htvghrnhepueehgeelleeludegledvtdejuefhffehkeehgeeiteevhffhvddtgedtueel
    heejnecuffhomhgrihhnpehgihhthhhusgdrihhopdhfvgguohhrrghprhhojhgvtghtrd
    horhhgpdhgihhtlhgrsgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
    mhepmhgrihhlfhhrohhmpehjvghllhgvsehvugifrggrrdhnlhdpnhgspghrtghpthhtoh
    epuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithih
    sehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:1LwMaqSeqqPmJ5Bro5rMT9yG8O-B3QGMTjeXS3bHWGhseQOdekPHtQ>
    <xmx:1LwMakDZgRIdXqN3pnlu-Doo3EcHCpNHVANGoGKnuRBaCenfN7mZTA>
    <xmx:1LwMai3tIxPuzreWoIuCg4wZ00gVSbwoeDywkS-GM7yvseI4FC1-sg>
    <xmx:1LwMaqVz3ScLxSblIuXHKJppAN6GVNHWRaI5VoII9m9tA_hmbTHl8A>
    <xmx:1LwMamBLY1TpPrMZoCHg9gwR84L9Ig-9IaltAUNQstpKl03yox3YcqVG>
Feedback-ID: i2d0446dd:Fastmail
Message-ID: <2e40f38b-cebb-4fea-a025-5855cb9c98cc@vdwaa.nl>
Date: Tue, 19 May 2026 21:41:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <87bjebjwkq.fsf@gentoo.org> <8733znjrjv.fsf@gentoo.org>
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
In-Reply-To: <8733znjrjv.fsf@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] PinTheft Linux LPE



On 19/05/2026 18:24, Sam James wrote:
> Sam James <sam@gentoo.org> writes:
> 
>> v12-security have shared a new Linux LPE today, PinTheft [0].
>>
>> Quoting their abstract:
>>> PinTheft is a Linux local privilege escalation exploit for an RDS
>>> zerocopy double-free that can be turned into a page-cache overwrite
>>> through io_uring fixed buffers.
>>>
>>> PinTheft was discovered with V12 by Aaron Esau of the V12 security
>>> team. We duped on this bug with some other teams and a patch is
>>> available so we are releasing our PoC.
>>>
>>> The bug lived in the RDS zerocopy send
>>> path. rds_message_zcopy_from_user() pins user pages one at a time. If
>>> a later page faults, the error path drops the pages it already pinned,
>>> and later RDS message cleanup drops them again because the scatterlist
>>> entries and entry count remain live after the zcopy notifier is
>>> cleared. Each failed zerocopy send can steal one reference from the first page.
>>>
>>> The PoC uses io_uring to make that refcount bug useful. It registers
>>> an anonymous page as a fixed buffer, giving the page a FOLL_PIN bias
>>> of 1024 references. It then steals those references with failing RDS
>>> zerocopy sends, frees the page, reclaims it as page cache for a
>>> SUID-root binary, and uses the stale io_uring fixed-buffer page
>>> pointer to overwrite that page cache with a small ELF
>>> payload. Executing the SUID binary drops into a root shell.
>>>
>>> Sadly, the RDS kernel module this requires is only default on Arch
>>> Linux among the common distributions we tested.
> 
> While of course I can't know what distros they tested, this does
> seem to be on in at least Fedora too? https://oracle.github.io/kconfigs/
> seems to agree with that.
Fedora seems "unaffected", CONFIG_RDS=m is set in Fedora unlike RHEL and 
the kernel module is packaged in kernel-modules-extra which my Fedora 
Cloud Edition does not have pre-installed. [1] [2]

After installing kernel-modules-extra, the modprobe config file still 
prevents it from being loaded:

[root@fedora-44-127-0-0-2-2201 ~]# rpm -ql kernel-modules-extra | grep rds
/etc/modprobe.d/rds-blacklist.conf
/lib/modules/7.0.8-200.fc44.x86_64/kernel/net/rds/rds.ko.xz
/lib/modules/7.0.8-200.fc44.x86_64/kernel/net/rds/rds_rdma.ko.xz
/lib/modules/7.0.8-200.fc44.x86_64/kernel/net/rds/rds_tcp.ko.xz

[root@fedora-44-127-0-0-2-2201 ~]# modprobe rds
modprobe: FATAL: Module rds not found in directory 
/lib/modules/7.0.4-200.fc44.x86_64

[1] 
https://src.fedoraproject.org/rpms/kernel/blob/rawhide/f/kernel-x86_64-fedora.config#_5970
[2] 
https://gitlab.com/cki-project/kernel-ark/-/blob/os-build/redhat/configs/rhel/generic/CONFIG_RDS
