Received: (qmail 7416 invoked by uid 550); 4 Jul 2022 13:02:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5436 invoked from network); 4 Jul 2022 12:58:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpservice.net; s=m3xnu0.a1-4.dyn; x=1656940432; h=Feedback-ID:
	X-Smtpcorp-Track:Message-ID:Subject:To:From:Date:Reply-To:Sender:
	List-Unsubscribe; bh=CJNP+0iv/cvaVALGRLnRt8V+zwPkya88fGvMEIydR7c=; b=a8Mh+TUj
	h7rtOd1aJWO8OyPzHKrdHT6VpldDXzTL58Px0Xv79mmcB2xxpENFmlK4TdECrJUaDzLQDY3GkK90/
	XelRYg7OupQE5Q1x7T2R0zV3Lr9Gca0dnUiZOvPZmtgX5mbuv3PV4vI6yzK7pEZ2VAL1vO5ay3Rpf
	9/Q3Qta1mYlWAJJakqXShii0MBmjunOEaoDgrulhgPaUVb7HX64jEELsi0J6C8ReCiDJBkk8WM8+n
	2SWa3NXWpbjBgl5G3ayYd5Ufuc2iTfPvhhBtBjM6d17gU27SNIsxA9wckXU5uMbL9MefdxJz72+hO
	P662Q5+XWfiurTsCE5NOWz6vtg==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quuxlogic.com;
 i=@quuxlogic.com; q=dns/txt; s=s183594; t=1656939532; h=from : subject
 : to : message-id : date;
 bh=CJNP+0iv/cvaVALGRLnRt8V+zwPkya88fGvMEIydR7c=;
 b=B3P/W9Nba9Z2f8+ef/SVmh6+hzLNrEObsbua3vAeQIT2qLiSUHJxH5ZKVZYsXN2XtW7gI
 56Roa4KZ/Owal0Eu70xZFq5L+MYsJjBb/OnBPQGtA2AKd+My+vWBK909k5TbPZnM4EsKAiz
 al9QAVVNkP7sEw2UeMWGu3Yq+vcng9JHZMFYXIJQxQVTfkoAKGioTONd2+salj0MkYfMvDq
 ZaVpzlvkflr2XAs7pg1FEHuMuMST6PP3Qrzt8+KqNtYEJ1thHCnCYVwelmawGRRAyTKyB3L
 ojkSZldKenyjhDzb6S1zU45l/tcQmoTyJuR+OXwq7ia550fWszxwZFbGE5/Q==
Date: Mon, 4 Jul 2022 14:58:34 +0200
From: Jens-Wolfhard Schicke-Uffmann <j.schicke@quuxlogic.com>
To: oss-security@lists.openwall.com
Message-ID: <YsLj+ux2Pgkir5F8@adhil>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="eDkwlTmavqr2kGUS"
Content-Disposition: inline
In-Reply-To: <939888998.96730.1656936945905@appsuite.open-xchange.com>
X-Smtpcorp-Track: 1o8L-wDIIcpOGq.w_eBwC7lO7biX
Feedback-ID: 183594m:183594a34a5n5:183594sgSx5b0req
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
Subject: Re: [oss-security] DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

--eDkwlTmavqr2kGUS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jul 04, 2022 at 02:15:45PM +0200, Peter van Dijk wrote:
> > On 04/07/2022 07:31 Demi Marie Obenour <demi@invisiblethingslab.com> wrote:
> > Signature (of /dev/null) that triggers this bug is attached, along with
> > the corresponding public key.
> This is insane. You can't send weaponised exploits that crash email
> clients to public mailing lists. Please do not do this again.
What email client would that be specifically? Because at least on
my end, nothing nefarious happened. GPG was called on the outermost
layer of signature and verified the email in entirety (and did so
quickly).

Do we have another bug lurking somewhere?


Regards,
  Jens

--eDkwlTmavqr2kGUS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE9xmNnk2s3COORGKwX52/ya0irXUFAmLC4/gACgkQX52/ya0i
rXWfoA/9FRijeSAAlYi/xZXJJ0ISi+vuOxbL2MxEP3/q79IdM78VPZiK6kHbzp4p
ZE2xahzfAJ4VRISWggArgtYKE9yC2UqSVnJQNwgvRSrWKbg5qahmZTDA9QHfOIam
oinGI4nQ/xXRyOaOEa+kYdzTI2RthGeSiJ+XXTj9WqZmW0mGqsK9sm/tK+Fa0GY1
LOZ/etzWlrM6euLwXz/kzs0rJczfZ8DSCcJIm9Fjrev3k0Lc6AdvNFKHU1nOqRNB
P7Vm+IuLxZCB277oLm2Alsz+SpXgUoDcMKl9OvlF8IBJO9FX5mcLx58LSnanin8v
moTyCY8fyIe7/1ufyq7h3LTpb8iYWXfPXK9j9VzcL8f9ntwYAn71FBRghPAfUo6q
DD2U1PATfF0dflWV/Amv9j/XlFavuZhWOjgb4XZm3njMAYXcU8QFcDVqt7soMQpZ
H066emUZO4p9JrmteCM5JHQ3lFvTAyaqFirhJKGgXosVG+fp1pUm3wKNNsLUJbGg
qbl3skEAPIVpec/DsmhKgYhdmqKS3+DG6W7OyRpUHEZQlE56Vrpbt2m7bNmstT6K
jMKfksg1qllrFpV2/Gcqe2MMoOoOxrPpfF4+IUilZhBfgFHCv4RL6jLAAYosNFXB
QbgB3lYp6YmrQELi7kMiROsTgL1Rwbsf0lAgwQxpy1dQHb5FYTc=
=J2dO
-----END PGP SIGNATURE-----

--eDkwlTmavqr2kGUS--
