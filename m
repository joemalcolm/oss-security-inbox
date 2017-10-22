X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1337" "Sunday" "22" "October" "2017" "13:21:19" "+0200" "Marius Bakke" "mbakke@fastmail.com" "<87tvyrmnrk.fsf@fastmail.com>" "42" "Re: [oss-security] Netlink XFRM socket subsystem NULL pointer dereference" nil nil nil "10" "2017102211:21:19" "[oss-security] Netlink XFRM socket subsystem NULL pointer dereference" (number mark "U       mbakke@fastm Oct 22   42/1337  " thread-indent "\"Re: [oss-security] Netlink XFRM socket subsystem NULL pointer dereference\"\n") "<CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com>" ("<CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12022 invoked by uid 550); 22 Oct 2017 11:23:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9356 invoked from network); 22 Oct 2017 11:21:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=41kTvLwbryJ0wHRpJ8KpPug18MnmhUIS9dsFtlZVEWo=; b=BmuFP5o8
	zgNzVXa/+ryfWONhuthE3jyiomUEc9eS4MxfjZ5POPMdX2iiJ6CLnjDlMUyv/xPr
	/AY3f+Hs2/9CkUrMlk0yFgUmGKqCO7O6TSwmwGKlx1EOEIgWnbXNeLiB1qZrqwPf
	nOjv0B5gNhktBVcGSOe7J85YCt4ECI+eo5h+qsBZCBplDSjXdo0MiAJa5Nt5ANDp
	05BqG1/SMREQwsC74z77N9nKhM8Tkul5Xc3qObJN74dXR4DcVAnPB8Xq2fIiofPC
	0FnYMq6VxrQQ6sUog3WBNFl3GrN3mB5YwB+pwNEBH0JI7NlDTPmxL7kKhc+KDCkS
	7wyV0RSAZGNnEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=41kTvLwbryJ0wHRpJ8KpPug18Mnmh
	UIS9dsFtlZVEWo=; b=MDllvdLKd95YuD/curbio+yeXVG/W9o9doBwy4JfBgyCj
	Ok9ndLnaY/dIDBChCW+7EbZu8StMvZzbWMFuxhgR149ZQ6hXmqx8+smLfCubAKsd
	LBBHF9Ldj4K6+V11b4zmyYfrNUHDbBCYOVGgz81fA2s63M6goxidkfStJHuPF8K+
	W7Q2yoHZfL9R4lLOfJNSSiafsJ6exY52Vm/XWthQ31pfFCPdeYuuBlS4Oc/2RbiZ
	7PmCVWl7QhY30Rg2xmw68TVwzGrwhYCLLHnglzowXastKP+7/KoZpNn1uEfzpIvh
	xAEx41MsDBDLNEQu+ai9y2Jho3izxPMyNGTWp8suA==
X-ME-Sender: <xms:MX_sWamInSxo4cbudKjfONLhgw0Y9T12hEoI--G6sEJNJHTNPY2_Lw>
From: Marius Bakke <mbakke@fastmail.com>
To: Noam Rathaus <noamr@beyondsecurity.com>, oss-security@lists.openwall.com
In-Reply-To: <CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com>
References: <CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com>
User-Agent: Notmuch/0.25.1 (https://notmuchmail.org) Emacs/25.3.1 (x86_64-pc-linux-gnu)
Date: Sun, 22 Oct 2017 13:21:19 +0200
Message-ID: <87tvyrmnrk.fsf@fastmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Netlink XFRM socket subsystem NULL pointer dereference

--=-=-=
Content-Type: text/plain

Noam Rathaus <noamr@beyondsecurity.com> writes:

> Hi,
>
> I was forwarded by:
> Dan Carpenter <dan.carpenter@oracle.com>
>
> To you regarding obtaining a CVE for the mentioned (in the title)
> vulnerability
>
> I know a patch is being created and placed into mainstream code of the
> Kernel
>
> I would like also to get a CVE for it, so that we can put that in the
> advisory we will release

Unfortunately CVE IDs are not assigned through this list anymore.
Please use <https://cveform.mitre.org/> to request a CVE.

> Do we need to give you the full technical writeup of the vulnerability?

It's by no means required, but it would be appreciated if you could get
back to this list with the advisory and CVE identifier when ready.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEu7At3yzq9qgNHeZDoqBt8qM6VPoFAlnsfy8ACgkQoqBt8qM6
VPrTawf/ae+SGfsgj4qG1tNBHtQeIDd6dnf6FsK+QSR/qfRHP7gvKOrCfuhqmWsU
3R8B1tirn41zZbYJNGDGPlXG/pykGmjo7z6yYG4cbjV/75dewy3FBPagyX2uwTNF
cMBImmteRRrV3B0emE8L41lEy9Zy21RFFj+OlEiSdttRcmj9RwZsr5dI3ynKN0gJ
zNIE9VLm6F5g7IQRTFdPbLZBTYd3GW2ZoUMnh9j7t8jvRpU+JIyEvNzCsfKYryDG
XIp/9GSsQX5IL9Ccx+DGnLqPa9scUB89G2CixUc75m3ehRsf9CH1x3a2jg40Rn7V
TyuB6cJ5VbCtPaHMFaksqPsIgBHcdg==
=o93v
-----END PGP SIGNATURE-----
--=-=-=--
