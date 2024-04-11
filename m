Received: (qmail 27891 invoked by uid 550); 11 Apr 2024 13:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9349 invoked from network); 11 Apr 2024 09:13:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spwhitton.name;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1712826769; x=
	1712913169; bh=XuFkmio5B4kzkblNM4eNxp6uFKhE1gjXdBPpLn9za0g=; b=e
	euzoDKSRFvQqMBWL4XGZj5DVTUiJaffUHGU4e9UUo5MPsnX6l6/kLe2Hit65Acr9
	11G66TT79+vjlew6CHcNEdtsDhPQXl5ZNMvbSngvUExDX0VhspGGn+4nhqP8OLMQ
	cSBgSg9I5zR0iojBZ2eCc/gUqffF/LvZPx82tttzAJEpm+A23pDwSgrLh6w9ufgY
	bgsQNk0JFH1ILjjZ+Cr74BXzkUXL5HMIV/sFqH8+jgHnMt5xoMQwGvqZmREevEBE
	U2He1+00p5j2YCTpTD88garHN1KNDUio2ALnixtkh/ZF665HOSJnKdiZ2ApUfWNR
	KYf10WSsqsiQL8SA93N5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1712826769; x=1712913169; bh=XuFkmio5B4kzkblNM4eNxp6uFKhE
	1gjXdBPpLn9za0g=; b=DGs7TQoKwXl0EqqinzRqhoAic0yLLzQYG3o/2yeNeIWx
	c2qu2DbblxccG6Pt8FTrymZKKFtJ4JXVbaEeh1mYKwPnGp4PXGQM1osM+0/matfe
	59nPU7DInx6x87ft62doePToDFpoWhXUvE1Dln3ivfTW1687FWxahE9pkknZfoxL
	eNnEdsUJPUD+g3+YqjFh2ehPk/znRe9p9pWIfp1SagY25Ho7naTj1fOJmZXOy84c
	2sLlocuXpDoNzThlhXOG4uNGbLYcHjdoZMAZXxbNXtzjZO2qk/MlUItQPFl/OU5M
	YcUyTwqPskEJUtDl53nEYn3bRkBtNqBqYQl1DscgzQ==
X-ME-Sender: <xms:kKkXZvG8UVRw-dZUK1oduyqsHmXNt0v3sfEal9RDCU4d7Rm6m0oyHA>
    <xme:kKkXZsUUsMpiC5-3zrb7jz7N5sDpDC2Nc22R1FnKCnkgpnioakojbUvfNaMGOsrk8
    sCJOKr3O8_DEqtPPA>
X-ME-Received: <xmr:kKkXZhIunnKdAaRSOsjWum_N79yvn5h5o5xgTo-i7Iu5fUpwNpXTHHQepOl-vMzoqd_26-T5urDL7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudehkedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefujghffffkfgggtgesghdttdertdertdenucfhrhhomhepufgvrghn
    ucghhhhithhtohhnuceoshhpfihhihhtthhonhesshhpfihhihhtthhonhdrnhgrmhgvqe
    enucggtffrrghtthgvrhhnpeeivdegfedvgfelleehieejveffhfejheeltdekgffggffh
    jeegieegteeivedvgfenucffohhmrghinhepmhhithhrvgdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsphifhhhithhtohhnsehs
    phifhhhithhtohhnrdhnrghmvg
X-ME-Proxy: <xmx:kKkXZtE1OUTqUsT3BgYOitHLjv0CD5VqpGWlN6ytw0jEywCid0_RCg>
    <xmx:kKkXZlV0pYnqOBJcMjLNSd72_kXx_18gUGHBRELmRxkS6ZZmpcslmA>
    <xmx:kKkXZoOCObfXSEdS47RjhcpLR4LaKJA_l_HwKKttacwTVN-C3NuCZQ>
    <xmx:kKkXZk3VHwxLeZ4-dRXsV2sgTlWbU8Zje2aMl6HlYfiPGykIy7dbgw>
    <xmx:kakXZjeO_AHij0dD9P63x6VgysQebbDHI3AHWb2SRZJqZlCEJovqVmXA>
Feedback-ID: i23c04076:Fastmail
From: Sean Whitton <spwhitton@spwhitton.name>
To: Max Nikulin <manikulin@gmail.com>
Cc: oss-security@lists.openwall.com,  emacs@packages.debian.org,
  emacs-devel@gnu.org,  Ihor Radchenko <yantar92@posteo.net>
In-Reply-To: <fb09b3ff-6187-46b3-b544-182e7dd76412@gmail.com> (Max Nikulin's
	message of "Wed, 10 Apr 2024 22:07:02 +0700")
References: <874jccjpvy.fsf@melete.silentflame.com> <87y19nu22i.fsf@localhost>
	<87bk6he8h4.fsf_-_@melete.silentflame.com> <87o7ahe85l.fsf@localhost>
	<Zhafa3wcZONJX-_k@eldamar.lan>
	<fb09b3ff-6187-46b3-b544-182e7dd76412@gmail.com>
Date: Thu, 11 Apr 2024 17:12:37 +0800
Message-ID: <8734rsdzzu.fsf@melete.silentflame.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed 10 Apr 2024 at 10:07pm +07, Max Nikulin wrote:

> On 10/04/2024 21:17, Salvatore Bonaccorso wrote:
>> On Wed, Apr 10, 2024 at 12:04:06PM +0000, Ihor Radchenko wrote:
>>>
>>> Yes, CVE-2024-30203 title is superfluous.
>>> And CVE-2024-30204 title is not accurate - it only applies to
>>> certain attachments with specific (text/x-org) mime type.
> [...]
>> If you think the CVE assignment is not valid, then you might ask for a
>> REJECT on https://cveform.mitre.org/ .
>
> Do 2 CVE numbers make sense to track fixes in Emacs and Org mode? Various
> versions of Org mode may be loaded to different versions of Emacs and both
> parties must have fixes to avoid the issue.

My understanding is that one CVE for the same vulnerability in multiple
code bases is normal.

--=20
Sean Whitton

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJNBAEBCgA3FiEEm5FwB64DDjbk/CSLaVt65L8GYkAFAmYXqYYZHHNwd2hpdHRv
bkBzcHdoaXR0b24ubmFtZQAKCRBpW3rkvwZiQNIhD/0YfioHDT/4heoRCVmvo1Md
OjJE9tL7UYBJcu9q5ujgxAS5PVBeckgcuXnzzC57vt8JVnKs5TLMxIYH/ARXAGsm
D0sarTxXc6rqdswx4McU/itCGoGWQFmnmFwLcdriB9sLFhkC4HKF5pb+LJuNcL9f
kMvN+JwjzSCUzvRp2i7AJAWbSkQQQXpPMwke3xWXsHXDhXJnCukxV7bsHF/xcQLI
O5Mn+2alTLAEKh3pYUScc4DJ4DDkWjI5p0E24quLRm4EnzpMiZo77qXB8Psbx6mC
lef8pyVDDCAQv+ONBtkicnvg4rIVrnQ5hRE3BpXYShLSSbEx/XH5sCpXWdOQD0j8
a5xj5UiY2f5Rmf0qBpmCzPbsG6JDWxp2bICRaZB+W1lJFs9eDDX9PKSaRflvdFdb
FG3A1bxQE+C3OStBz3NbmOlQqL0E+cgnm6brV/QXm5sIBYDjxDeshQQGyBcKciXH
jBTlB/vubkG8ITme9JD9cStCgzOwabIOq3Dwly1muzMEnM4MnA36RyZ3qaDJtIi9
0opPOfTqlDXHjgzt0AYcaSsGlR14v9VnOXdDfhTVjD3RehUv6WqRgjZhlV3YHs56
67gbEIvi1cFGyrfefYDXs/cOfzB7sbBlaMuYLtK1tCU8lwtHgQubPiXS7Lgb7BbK
iMelSecOx+IQbpA1PivkAw==
=mOir
-----END PGP SIGNATURE-----
--=-=-=--
