X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1527" "Thursday" "22" "April" "2021" "11:59:45" "+0200" "Peter Bex" "peter@more-magic.net" nil "40" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       peter@more-m Apr 22   40/1527  " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22247 invoked by uid 550); 22 Apr 2021 09:59:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22224 invoked from network); 22 Apr 2021 09:59:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=dWx7Xz/IsXHxGTHHWpZLzzUz80nFIKtXpBHE4Kxb+f4=; b=Hdfa7baU2AMZHuNTvQvojO+58
	1NEFN6pBrpVtD/BJaITRU+7LaaqMNUFHul1CL4tWWDNH5aldxyhympaBwWcpyWaE8e3xttNnlxIhE
	9o183F81k2Nx4cwYzxU39B1uPq48QeDkgOnLZPOnIhBmg/ym3+WoKzLZgp6Fhk8yzEeXQ=;
Date: Thu, 22 Apr 2021 11:59:45 +0200
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Message-ID: <20210422095945.GA2495@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20210422065959.GI13079@scully.more-magic.net>
 <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline
In-Reply-To: <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
X-PGP-Key: https://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 22, 2021 at 11:44:49AM +0200, Albert Veli wrote:
> Supply chain attacks are a real threat to open source projects.

Absolutely, see also the recent malicious commits to the PHP project
which were injected through some security vulnerability in their git
server as just another example.

> The Linux kernel is not the easiest way to introduce malicious commits.
> But other projects like much used pip python modules, npm javascript
> modules and ruby gem modules might be less vetted before they accept
> commits and that is a serious risk.

Indeed.  My reason for posting was as a heads up to developers so they
can be extra vigilant for bad patches *from this particular group*.
But one should in general always be on the lookout, of course, because
commits might also just accidentally introduce security issues.

Cheers,
Peter

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE6bh5EUSYP1EE+1UTER25+ctFibAFAmCBSQ0ACgkQER25+ctF
ibAyhwf+KFpPSeDfS0+kcmAf4A1grJaFLq3sSwaZYpbOpiajFzVGgHfj0PQPv/Nj
TOhlBpoQAfXKUyKHTGYP3SyCTYotxhLNdP/ZPE7r+uIvcdr3u1zaIh19fNW4ntVD
RU31WbsD1x9KqgX8JSfdGYn8qk4JrOkMUKw7RevgM4Qjh/sVp1Z4zOcJQj/g/+23
imGF3Gphwnvemi0N3OINer0R8laR3FwMq/CiNx3DZIlHOOnIXgX604lR0AyOc0/T
UcbrPVjD0lytT5gpZpS9P4IjC+9g/X9luT/SMMurkboOcHlndjnZGpIsZunx4HY2
4ME7yAHN3SlzbainmbEHnEzgbcMqMg==
=E0oS
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--
