X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1346" "Thursday" "7" "September" "2017" "16:06:05" "-0400" "Leo Famulari" "leo@famulari.name" "<20170907200605.GA13030@jasmine.lan>" "34" "[oss-security] Tcpdump 4.9.2" "^Date:" nil nil "9" "2017090720:06:05" "[oss-security] Tcpdump 4.9.2" (number mark "        leo@famulari Sep  7   34/1346  " thread-indent "\"[oss-security] Tcpdump 4.9.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1781 invoked by uid 550); 7 Sep 2017 20:08:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31779 invoked from network); 7 Sep 2017 20:06:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=content-type:date:from:message-id:mime-version:subject:to
	:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=EI8
	xssMEG61S+EykrsiwCuq61mTykuO0S0PrnI8by+I=; b=RTGuQkParD1D2Cqmoro
	k3UTjAn76AEiShdrmKjKmcWKc8q6IQlZ2TQyPO9pSy2wUuJvPttvdPGLHx9E8JsH
	lQ095diwfp+ezeM1tcdO/5+vYfJSPdfLzxJXFI+o8H4aPd0IajOQUr8Hn5wE7/WA
	gMRGbSug1zZqjC5rCRmD/cCo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=fm1; bh=EI8xssMEG61S+EykrsiwCuq61mTykuO0S0PrnI8by
	+I=; b=JOXkfwMy95m7deAVvEFtRCjPtp3FlomL3+k9vZZWaZnNNTarQuuA0FgOz
	3LpZ2Ml0SDE0an0oWdJTLXu1kdTgyJdFCid8FCwMcYUObJlxNB/SMi+GCWsYdtQI
	gRgmH9J9l7wKGDdPMU1uPR/UCArnwiv9p2tkJQ4rr7W/dmdvwASttgRdKKPzFJWY
	hzbFsZogaGVvYMXjPAiu+2ngQRnjWuTR07CIqqQSe+OkYTwlPVY1Iwr5psWpK1Je
	kwM/kHwInXyKm4CR6saTpoyemgocHtSH/UjD6Vjoc+grleZBLp4KwHeKRpIzOvZs
	QearWkHPxVRQP8+FoweMhzoRscK4w==
X-ME-Sender: <xms:rqaxWdnqsbNQ3o_JB-eZ8rzpWlP77xfv3zep7VnIfzxRf1t9r8sUtg>
X-Sasl-enc: pe57C1ngA7/9JF3M12hOBUS8p3VAqkc9D8H+Ju5etaaW 1504814766
Message-ID: <20170907200605.GA13030@jasmine.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
User-Agent: Mutt/1.8.3 (2017-05-23)
Date: Thu, 7 Sep 2017 16:06:05 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Tcpdump 4.9.2
To: oss-security@lists.openwall.com

--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

My understanding is that tcpdump 4.9.2 was supposed to be embargoed
until September 25.

However, it's already being distributed publicly:

https://git.archlinux.org/svntogit/packages.git/commit/trunk/PKGBUILD?h=packages/tcpdump&id=ae8cb07d00feb32a4f8a500fc8fa668d3f8c5275

So, I recommend that everyone update ASAP.

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlmxpq0ACgkQJkb6MLrK
fwg97xAA1e75nj+3AdKt7RZe4JOtHJ2stwiwXnCJ9jTFN43l6+NXUZodTFP/V9Q3
jZMRp2ksQwlR9ibENKJu8t7CkXa0mL0KX6HeyGkzkDVTw1pJUgoPQAePYh/52vnz
5pR+XQ7rGA8kmtewD0x8nsjJL2batYtZmancFq412XePVIUW8riRXoJwvI7A9C8g
TW36Vr+hJ66GhVdMgMcWVpdGsD0gAugd+5ZWXRZB4RBw+1nlnM/pgSCNQn789aCR
6Qr4vRnXBuxKvl7KbhnVnDCUQQUHQuQUxDqtNAyXx9WAth47r+kMIyF1vgL+h1R4
ZbdwCKCu1bFmiIRFuOwyiuiZQbIpMhsHYv0JRCdJCPCoRgbdt+FyMbB8MzOAh/np
9IZioStsdfFLZ0aJw8BerkDpxl6hhyXUkTmFQpPXo33Moos8z/MP8A2j/bpMNn7L
03HlsH4v1gTpqQTG7bQuL2kgCCm9yWkW/aZ4BeSgmUFlU46wVZwfwKfTI7xEdqpk
4SbdD6hEqbnWChcb9BY8jNUqi4MP6/FCwyp14xjXmWyIwlpe6bvGP8flXcDNO5qt
noAitLBmELAo96MAtzKHh941SIYQzSJmgniyaXih+XoK8VMPg7eUo3yiYwahDoB1
jDmxGHgs3YPkII5203qu4VcNk+kZHUpLqEczPUrROhB+tnD4yHk=
=DmSv
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--
