X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1842" "Tuesday" "7" "July" "2015" "16:00:18" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150707140018.GA4743@kronk.local>" "49" "Re: [oss-security] Follow up: PowerDNS Security Advisory 2015-01" nil nil nil "7" "2015070714:00:18" "[oss-security] Follow up: PowerDNS Security Advisory 2015-01" (number mark "U       alessandro@g Jul  7   49/1842  " thread-indent "\"Re: [oss-security] Follow up: PowerDNS Security Advisory 2015-01\"\n") "<559B9BD0.1080409@powerdns.com>" ("<AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>" "<559B9BD0.1080409@powerdns.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30157 invoked by uid 550); 7 Jul 2015 14:00:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30136 invoked from network); 7 Jul 2015 14:00:33 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=c6EhFnpRQepDvv+GfLeTkP/wqvRUxEQqVqaRqeaAm+w=;
        b=daF4DxejAvn/YPKZOZIYXBiD4wYXvZ+HkTu0bzp1OkBnJkmlvFAtv6xJVu98a8w6Aa
         YyTd4lMW/SRu1ZCryW8D9zm7nXktB+DzvZVnzQmm9/OtPBh0aBgCmJPm6dkq3o0ciOwO
         4B+IY45zCgqgR33Jgxe3s/6gDBt/kTvSQocBElLoLjWZn/1bc65/ATlzZL54+dt9nI6f
         7ejFGEA/k3+/I5uVXJ+lqkcMTtkWTVM3EAsP2KK1U1nEsy3u8XLygmrh9i3zzp1LNxX3
         PFzFu8EAHV486HUO+apACRQIFyMzYQtCLq9b5PDbduTr5u+9ZBI9Vbq00MkoFY/GvgBC
         8/IA==
X-Received: by 10.181.27.131 with SMTP id jg3mr97550546wid.89.1436277622353;
        Tue, 07 Jul 2015 07:00:22 -0700 (PDT)
Date: Tue, 7 Jul 2015 16:00:18 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
To: oss-security@lists.openwall.com
Cc: Pieter Lexis <pieter.lexis@powerdns.com>, cve-assign@mitre.org
Message-ID: <20150707140018.GA4743@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com,
	Pieter Lexis <pieter.lexis@powerdns.com>, cve-assign@mitre.org
References: <AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>
 <559B9BD0.1080409@powerdns.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
In-Reply-To: <559B9BD0.1080409@powerdns.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Follow up: PowerDNS Security Advisory 2015-01

--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 07, 2015 at 11:28:48AM +0200, Pieter Lexis wrote:
> Hi all,
>=20
> We've updated our security advisory regarding CVE-2015-1868[1].
> Toshifumi Sakaguchi discovered that our fix for this CVE was
> insufficient in some cases with specially crafted packets.
>=20
> Last month we released patched versions[2] and we've now updated the
> Advisory to reflect this. If you have not updated yet, we advice again
> to update.
>=20
> 1 - https://doc.powerdns.com/md/security/powerdns-advisory-2015-01/
> 2 -
> http://blog.powerdns.com/2015/06/09/authoritative-server-3-4-5-3-3-3-and-=
recursor-3-7-3-3-6-4-released/

I think this should get a new CVE assigned due to the original patch being
incomplete (I've added cve-assign to CC).

Cheers

--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVm9tvAAoJEK+lG9bN5XPLD+gP/18f/KYBacz9+RqnhFsIrblY
oErtDIPRXU3cbsz+X+HcuBlOW7tFZyfYoDC4pxdCwXwYegcPuG6y0fCAfdONkO2F
oa/MiXNu50sNkZouc/CrnMR53e6zL1NjoLxpVob3edIQQAmkN6JX6IsEyWSl6W1X
VDhh+lCXofck77YaMarx4bHjXXOxNNmeSG30EM/z9V+LFj92fHzMh6XWFOecQm0u
PizspHDiLIFbvKqTCRnk95Iaylqm7o6PtSrViUnp2CWRe1sRMUSWFcG1jHCJrwkP
HuWrzEnxtf3LbmU0U2Nx3AVtXWUOF1InW49OXgdoZyHI74sj7L00pRBVBgQlYuQc
+DgW0PlSaL++HLaWlOfs00M27qItuxY3ffr62z1d0U82+KRAmQBrppxqiEvW18rK
q79Zqz4/mtdW0zttyEA+geSh+ryjshtisiXlTpiO8Zd3qh/fjocwy0+00Q0Lf8Q7
4pk84+C5lF8REX4akK03yYqSk961PXonjzMd0sEpsxWXtPrBQuAEpyWc5DV/1wOn
Kkx9ltFFzzNBcaUKRYOdHytbbXuu1nkd8nEuY7wibLTao7L+FsQ/97oCj0uXJ7Ls
lJ5C/kcxHLUl1NtvLM5eq/rVIkKLdLOYe8ijmmr4sT/37FipiGErQd5U+2+ibRRb
BRMDaIT3hBhC9tzrN7sV
=7KYG
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--
