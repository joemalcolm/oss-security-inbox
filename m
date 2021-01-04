X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2461" "Monday" "4" "January" "2021" "16:20:28" "+0100" "Pietro Albini" "pietro@pietroalbini.org" "<74012016-4a10-f216-cb42-0426d698c048@pietroalbini.org>" "62" "[oss-security] CVE-2020-26297: mdBook XSS" nil nil nil "1" "2021010415:20:28" "[oss-security] CVE-2020-26297: mdBook XSS" (number mark "U       pietro@pietr Jan  4   62/2461  " thread-indent "\"[oss-security] CVE-2020-26297: mdBook XSS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-26297: mdBook XSS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5226 invoked by uid 550); 4 Jan 2021 15:42:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30546 invoked from network); 4 Jan 2021 15:20:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=to:from:subject:message-id:date:mime-version
	:content-type:content-transfer-encoding; s=fm1; bh=mfKpp6/0xqms3
	SFK8zFvrl+4ZiZZeDzq3P7Iq3RtBhk=; b=Cnwtp4EjQTQv70H3TpQXjgCbtDsnz
	h88PJZ5Y3/dkZK4RRIRGlSmw0S/b1blwn+7p51DrJuZguwUNHgZwz1+QmgYDqzRA
	eWR2bFhMuPoefqBGCMMmGuvaRGnNBBW9Wp68Krch7DLbPGCNUat7NpKJHsmqqoor
	tvUvzmlEQvLB806ovurvtG+jpEQCJgS5YmsWjpQ4E/5c1pZ1VntSqnXKTcp/wVQg
	1SAQUNln4gZtHYA/IqZKixPVAB/VldyRer7bcEMIE3ZE4Dx+i6k/QbMcUpJnnhhg
	wg9p8149YNHeDgoNRINyeBWpomwcrr/izOLsEYEAhJbhiun39YCo4WLaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=mfKpp6
	/0xqms3SFK8zFvrl+4ZiZZeDzq3P7Iq3RtBhk=; b=I6AX9tMomiycspDpxvZILO
	Svg1nyBGONZ903zpFJEL15WRIOrDs1xzeW3d21agA5DAYN9hil6aUirCfdCfw/xr
	09ka/XVdiaVwK6h/z4NXV7WI5tucosiTScgVW1hBMLaW3awveJiN+1c9KEmiyDYq
	5hPNLVoRG5z52cu1Ywzxv+Am4aK5bDKbF4B+uSEOprecqbHk5SFv+Pec4dizcWMo
	f9GNYB2G1M3SceV81Riq7fypS9chCWVsu2RjNu5C6OFPDR1lahp2j7nFWRDjFueb
	/CJYrfuUJitI1sJ7YdknBd+1eZe6Psehjl2vNGgGE/Zmapm8PpFbM50JrZ50eQNw
	==
X-ME-Sender: <xms:PTLzX7U6JcEpcSrYMKjCV74wejC-C7iRFZj1WPOh21eUOG8DUZXVSA>
    <xme:PTLzXzm5agxm8xZus4boBZFeKHm7nrHaj8o1muWR_5_6dyCOCdbp0eAReiL9PPfBD
    5DyiIxv3nBPFeplYWs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdeffedgjeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefvhffukffffgggtgfgsehtjeertd
    dtfeejnecuhfhrohhmpefrihgvthhrohcutehlsghinhhiuceophhivghtrhhosehpihgv
    thhrohgrlhgsihhnihdrohhrgheqnecuggftrfgrthhtvghrnhepffdvieejleehgfduke
    eijeehhfefheekjeffjedvleelfffhleehfeeglefhgedunecuffhomhgrihhnpehmihht
    rhgvrdhorhhgpdhruhhsthdqlhgrnhhgrdhorhhgnecukfhppeduhedurdegvddrudejie
    drvddvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhm
    pehpihgvthhrohesphhivghtrhhorghlsghinhhirdhorhhg
X-ME-Proxy: <xmx:PTLzX3ZrxlHr2GfV-d0mj_OY0a7AOSVn4hEeubgTD_nN0nIRksnNaw>
    <xmx:PTLzX2Uxs79eEZQorgp3b90pZP5AS-V6xBkjTeRG7O2nQlRvmV2RYA>
    <xmx:PTLzX1mKDPn9tvotVhCOqFZy3g8AE7m9uTwoyqmVwPZC-4nUMJaoTg>
    <xmx:PjLzXxxnvHinow5KgJb3sNO1R333UlqTNZ6jSvEcvq-rfmySl0R6mQ>
To: oss-security@lists.openwall.com
From: Pietro Albini <pietro@pietroalbini.org>
Message-ID: <74012016-4a10-f216-cb42-0426d698c048@pietroalbini.org>
Date: Mon, 4 Jan 2021 16:20:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2020-26297: mdBook XSS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

The Rust Security Response Working Group was recently notified of a security
issue affecting the search feature of mdBook, which could allow an attacker to
execute arbitrary JavaScript code on the page.

The CVE for this vulnerability is [CVE-2020-26297][1].

## Overview

The search feature of mdBook (introduced in version 0.1.4) was affected by a
cross site scripting vulnerability that allowed an attacker to execute
arbitrary JavaScript code on an user's browser by tricking the user into typing
a malicious search query, or tricking the user into clicking a link to the
search page with the malicious search query prefilled.

mdBook 0.4.5 fixes the vulnerability by properly escaping the search query.

## Mitigations

Owners of websites built with mdBook have to upgrade to mdBook 0.4.5 or greater
and rebuild their website contents with it. It's possible to install mdBook
0.4.5 on the local system with:

```
cargo install mdbook --version 0.4.5 --force
```

## Acknowledgements

Thanks to Kamil Vavra for responsibly disclosing the vulnerability to us
according to [our security policy][2].

## Timeline of events

All times are listed in UTC.

* 2020-12-30 20:14 - The issue is reported to the Rust Security Response WG
* 2020-12-30 20:32 - The issue is acknowledged and the investigation began
* 2020-12-30 21:21 - Found the cause of the vulnerability and prepared the patch
* 2021-01-04 15:00 - Patched version released and vulnerability disclosed

[1]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-26297
[2]: https://www.rust-lang.org/policies/security
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEV2nIi/XdPRSiNKes77mGCudSDawFAl/zJ2oACgkQ77mGCudS
DaxtCRAAwRayTKHncQjLla6SG0HwUYX5q3Q2zsDOhrMNnQmPb4Db0hBI4tuYy6O3
hQO0yOIuhvJKS17aMzsGL1qCYrc50d8Em3OW758FYP/VtsfJh0rvbqRl4hDvEcx1
ZBcNlrbf5y7esrsAFneeezxKbYqkWB1RnSjc87Rbs0Yph7shGKDA/aURZb83vCCr
28aEBaFUpCYP+mNzTVfhh2ZsPJ9J5xaLbFbz2kune0QrrAlUzR2rj+yz0wuKOMi5
nvL5akfpqq1eV4XkV1pheo+FeZVW797VmNTmOfW1V2q+sMhZhpwjJTb4D2b/6k4m
s1IUfCZbL2FqR8NkGybb2yoPAInDh6NQcj8v2RM0N2MHFgx25CATuQHg+oHshBv4
ycuLHzzEtSkg1YcPjzqmBOSi8zRHY5cAJnZQc36bXqzoKtkQxDdyhP2sLvaXLhJj
H8nQq80TKkWHgZGDTTR2QUw/D6z2SF8YFYKRz4stuP4H1bOBLwyqFrAl+4HTeheW
B/3LEL7ObvaENXGagfampNuCru7XXcPpuhwSacs8azKrcSKa7MSnT/ALyTSZ4hAP
Uy/PuQPaX4gVCYL4QYD4xlY6T+QMLzY07CRTcuDuA+M0b4cHrMfBRNWX0SA9Hi1a
6sXVC5cWuOWzDso7hRSjpvkkG5MRXfU+MgHn3C/ZOjmuLfjO0V0=
=sM0q
-----END PGP SIGNATURE-----

