X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1857" "Sunday" "26" "November" "2017" "15:37:49" "-0500" "Leo Famulari" "leo@famulari.name" "<20171126203749.GA6487@jasmine.lan>" "53" "Re: [oss-security] RCE in Exim reported" nil nil nil "11" "2017112620:37:49" "[oss-security] RCE in Exim reported" (number mark "U       leo@famulari Nov 26   53/1857  " thread-indent "\"Re: [oss-security] RCE in Exim reported\"\n") "<20171125235030.GA24195@breadbox.private.spodhuis.org>" ("<20171125035912.GA20323@breadbox.private.spodhuis.org>" "<20171125235030.GA24195@breadbox.private.spodhuis.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14036 invoked by uid 550); 26 Nov 2017 21:15:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30177 invoked from network); 26 Nov 2017 20:38:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	mesmtp; bh=9LtGNFQ1KWfX78SlqpLPd+TZFpKR+mCfZ1KS6GY7Y9o=; b=si4Hz
	curM+7UDaHc1EfKzX5y9KQ5UTPWmlgQaBz9sItIFPRJDGzdyCkaNr2CH6KmkwkUE
	dCbkaml2DwKMDC63qTi+pGsZxX4SoxM8vd8KfZORnvd1Av5Exzt6FT0Gd2abkILc
	tZOJB4jbgFUfdPJIfVS+SDMnqivbb3A/2zpfpw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=9LtGNFQ1KWfX78SlqpLPd+TZFpKR+
	mCfZ1KS6GY7Y9o=; b=rmOufp+f5A4BbXwF0I9wgy9xD2E4luPE6MKEsNZx0RP4W
	dxGZNoYTPkZFi1zCL/WOsYVo8cZmCRk1QAxBF69M9c8nkQEXSs8ivlZ+Inytq+l1
	UNU6RPSa85XaTQyLB4OTt2Y2DvgUXzqjO8T9WbZHX4YUNFwsQSAXPeKDa+b3yLdp
	VRCEqn5jmvw+ijomkwyvrpIDdnWXCk9RaM7/KxTRG0Y91o/eZGSwfy57pYot/iNh
	TevBCay+byQCnnuYN1lNiRFNY7J7KahIcAS7Wcj+E2vJKLTYvM/UxT07YXk84/T6
	ixEh/PfjJqPl13eT+l6WYOp/7vLFmYHGElnBK156w==
X-ME-Sender: <xms:HiYbWmi4cpZSZoGNjSHs1bJZ8JyYYammU7f2_J2XM9ejfRedQWdRmw>
Date: Sun, 26 Nov 2017 15:37:49 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <20171126203749.GA6487@jasmine.lan>
References: <20171125035912.GA20323@breadbox.private.spodhuis.org>
 <20171125235030.GA24195@breadbox.private.spodhuis.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
In-Reply-To: <20171125235030.GA24195@breadbox.private.spodhuis.org>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] RCE in Exim reported

--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 25, 2017 at 06:50:31PM -0500, Phil Pennock wrote:
> bugs.exim.org/2199 :
>   Use-after-free remote-code-execution
>   CVE-2017-16943
>=20
> bugs.exim.org/2201 :
>   stack-exhaustion remote DoS
>   CVE-2017-16944
>=20
> Fix for the former has been confirmed by the reporter and is in git.
>=20
> The `exim-4_89+fixes` branch used by various OS packagers for major
> bug-fixes on top of the 4.89 release has the UAF fix backported.  Work
> on the DoS is under way.
>=20
>   https://git.exim.org/exim.git/shortlog/refs/heads/exim-4_89+fixes

FYI, clicking on the commits from this page just gives the error
message:

400 - Invalid hash parameter

But the commit in question can be viewed here:

https://git.exim.org/exim.git/commit/4090d62a4b25782129cc1643596dc2f6e8f63b=
de

--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlobJh0ACgkQJkb6MLrK
fwjZwxAAghVb4CIiYtM5vfwRo2hBodkYobVHV0ytxbqZGUdF+zZBmn/jC4UPCIEl
4bASI1a4NNubxOGNJM2Jr0ndXgFYi9KR9+yvhwRgXrp+SM7Tg9l0piwRkU6PcHgB
k7WZcqF1gotpGallXbb3DVFJurUKmspRCWakf4lBlmwt+7hpVyKh78bRQLIKuFqn
vwPOyVRxuf/jwryfEK0wJ/pmQZw7Ct3MwBvbM/DnHHQrQMHWRiaxl5W+0y1nIhzc
RAFzotonk2eL806jGVDtiAphV2py5AX7alDjF7TiiTJ9pSAQE5/sQyXkL+GVYEcS
0m90Inyf1iiuHVgAt1NqCii6L9trCUuMnmH2H7EaSv41WhotAWhOuXjdzGkRz+Ti
PhoaO71DTeGnq1Q9oVYwNaxmyS24Euk1EPGUmm/hbL1t857yr6XsiKyNt/OA7nfS
fOvXPHd+gyej49/hw+Qf0+VkrDlhq/Y8FYz5X0U2U8Og2UAvAWg339c9Rr1mLWYp
yE0fojcTYCJaqtnMZruo5ZhFcVesk+EKiOdOk9Cci/MMNl37EwQ72jJBi+NO4D3S
g3hD5OsVXykfpgMVsbbC53AiEO0TDRevi6uIK5mGecxP6VGDSrHS+kzEglvUb3GL
tfuk6x5DO43dCa+Fe38x9mZC6VygeiOFhsN9IIN2HFDHoI4S11E=
=ySPD
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--
