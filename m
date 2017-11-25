X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2432" "Friday" "24" "November" "2017" "23:35:23" "-0500" "Phil Pennock" "phil.pennock@spodhuis.org" "<20171125043523.GA20472@breadbox.private.spodhuis.org>" "66" "[oss-security] Re: RCE in Exim reported" nil nil nil "11" "2017112504:35:23" "[oss-security] Re: RCE in Exim reported" (number mark "U       phil.pennock Nov 24   66/2432  " thread-indent "\"[oss-security] Re: RCE in Exim reported\"\n") "<20171125035912.GA20323@breadbox.private.spodhuis.org>" ("<20171125035912.GA20323@breadbox.private.spodhuis.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31916 invoked by uid 550); 25 Nov 2017 05:02:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15787 invoked from network); 25 Nov 2017 04:35:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d201711; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xufOnuQqf8zzo4MPa878FKmF4qgpHVeYH1RYtE2xhd8=; b=Q5lFZTpNGKVYLjIimmb9/XHRyF
	hSLrYD+jX4uK4NN1GKuKcFcNx3/iPRaRN2uxQRSg2jsTRLwtnlzq9FUlLI/zk6ye3PfsOTv8pQTRj
	3CR6NHTKVuwNQi1d+1nhS3vwSu3kGU8ZiBGPIiM94ugjXuP6EbX4WkTbGYHszEL2WzQC7ejsoFlp/
	ZSGwraaxjjAh84+mlgLLwOvRYfNB;
Date: Fri, 24 Nov 2017 23:35:23 -0500
From: Phil Pennock <phil.pennock@spodhuis.org>
To: oss-security@lists.openwall.com
Message-ID: <20171125043523.GA20472@breadbox.private.spodhuis.org>
References: <20171125035912.GA20323@breadbox.private.spodhuis.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
In-Reply-To: <20171125035912.GA20323@breadbox.private.spodhuis.org>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Subject: [oss-security] Re: RCE in Exim reported

--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-11-24 at 22:59 -0500, Phil Pennock wrote:
> A complete mitigation is to disable advertising the CHUNKING extension,
> in which case an attempt to use the BDAT verb should result in:
>=20
>   503 BDAT command used when CHUNKING not advertised

Note: some distributions only ship older versions of Exim, so emphasis
on "introduced with Exim 4.88".  If you have an older version, you're
safe.

If you telnet to your mail-server on port 25 and issue the EHLO command,
and look at the list of SMTP extensions offered, then the CHUNKING
extension needs to be listed for you to be vulnerable.

Exim administratively blocks use of the BDAT verb in sessions where
the CHUNKING extension was not advertized.

Thus:
  chunking_advertise_hosts =3D
is a _complete_ workaround.

On older Exim, the BDAT verb (after MAIL and RCPT) should yield:

  500 unrecognized command

On safe Exim, it should yield:

  503 BDAT command used when CHUNKING not advertised

If you get a 2xx response to BDAT, and you're not using pipelined
verbs and confusing the response to the MAIL verb with the response to
the BDAT verb, then you haven't disabled CHUNKING.

Regards,
-Phil

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQROXBeef/xNv45sEy9REE5mjdBEgQUCWhjzAAAKCRBREE5mjdBE
gS7QAP98Uz7a5V3nXOMgefAKY+NhWJ1c7YHDS2NWVYpmcjxVQAEA7demWr/xDRoE
FFyo8KyWrDOhOirYNIrUh6po02/HcQCJAjMEAQEIAB0WIQTGk6A04e1u6VTK4toT
2tmcfkFRnAUCWhjzCwAKCRAT2tmcfkFRnJZiD/4nKK6RqwBfXkCvPHvwSy4ZtguE
c4JtWDMR/nH/KOrg17QOtnTeiHu34MaxfEGlYNIVaoJoEOCzFUfDDR3HgeXwcMPC
uwD382KvzJiNXHYuDTyRlabPr0yjFXREpT69nc1u4zprD02CC6i6p2HiLZ23HhRr
mu+1LrsGPhnXSUaslaV+z1AWHCZ+DE1/fQsdsLtccG5PtAz32W+jVLHQuZD8IlH8
mq7XstOmPdJwjNhkQGe7xfueNdTBzHhDKF+pXFuG454149ZoEELRiG+WRZfX30Lg
3qOaagKaNFtsdQHK0py7j9ib8kxLkEPoh/eJd7EZn9froW1exuvXJ7NLs4uWMnPu
15ZupSoIVWuVaEEdSls5KdlRVSjCDfx0wIU0woYSGGCk+ba4DSXmLJ9P8asGDHH7
pDND5DyOYzfg1K41HU2pbjV00N0Mk1tA1SYRJuab3udbH0bh06G7AE35YG89T+xK
67rzGSkg9Vr+MMMWMJyEadcP5VPIf2UPbLcLaEQMTUYsR3zBAHZVq+ukx0HWc7Ck
Ggh4IidC2NK9tae0S/80IgzRTC34/RCIUVzFX1t/56ETLGFkWsT9zP2HgqwXcZzT
nZHlW5BOc85Zmq7el4eVEzKF7w8dYGAiYiuOigchj5c86CUEfvKnPJ5PrugNgbtz
tNHeHQP+SJSbEj5LzA==
=q+Jg
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
