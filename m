Received: (qmail 25931 invoked by uid 550); 9 May 2024 10:54:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17533 invoked from network); 8 May 2024 15:01:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1715180479;
	bh=zxdu9nXhcjfgi2UZ7q8UNIc/CaVVT8SKjdKGw2brzRk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=FDHM8GFroee/73IBT0Tz10Fwh7/zQXSVJeb3nZFHFWiwB52wncGmOxCMBH5HHavBY
	 LR0sGV+XLkrRGsc4W4DPgXY6zKOFK+ykGDBztTx2dbckJJUmub9QPCo585SrnZ7ny3
	 HdD86JLu7KKc+CSlk8kD0/sRxSHZF8IRkYilyQsTA2dfH2K+scdpCyU7QcPP2Yd6k1
	 vX2vdJt1MSYosl8NshUF5+rnFsOkgkCioOuhW55wCDlGAEuD1QqLKNVbqF7YHg1E6u
	 vEqRbrXO+u/Bo2eMdZ8gid4Y9qAFz2arpj0S0/TWwX10dhM12HLjrSsQG6KKzt7nvr
	 jKEcsz8GMsZVw==
Date: Wed, 8 May 2024 10:01:16 -0500
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <ZjuTvJ5sifwGhs2q@moon>
References: <20231221143630.GD14101@suse.de>
 <ZjBHOEHylGAaIo57@moon>
 <20240430224823.uA8Nr1Cp@steffen%sdaoden.eu>
 <20240502182146.ygWZjB-Z@steffen%sdaoden.eu>
 <20240502195319.GA19209@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mJ1yaSNywByV6dya"
Content-Disposition: inline
In-Reply-To: <20240502195319.GA19209@openwall.com>
Subject: Re: [oss-security] New SMTP smuggling attack

--mJ1yaSNywByV6dya
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 4/30/24 14:13, nightmare.yeah27@aceecat.org wrote:
> What is the benefit of stripping versus the much more natural option
> of rejecting such messages?

This applies to <CRLF>.<CRLF> and RFC 5321 section 4.5.2 as well.

Postfix' CVE-2023-51764 patchset adds options to normalize (default),
note, reject, or ignore bare newlines:
```
cleanup_replace_stray_cr_lf =3D default:yes
smtpd_forbid_bare_newline =3D default:normalize
smtpd_forbid_bare_newline_exclusions =3D default:$mynetworks
```
(See Postfix' HISTORY file for more context.)

To get back to your question, these all have usecases. What should be the=20
default is described in RFC 5321. Offering options and using the RFCs sane
default seems like a fair balance.

On 4/30/24 14:42, Erik Auerswald wrote:
> Well, my reading of the RFC does not forbid this sequence.  RFC 5321
> clearly does not require transforming this sequence into another sequence.

I should have initially clarified that _"forbidden" pattern_ refers to RFC
5321 section 4.5.2:
=20=20=20
   Without some provision for data transparency, the character sequence
   "<CRLF>.<CRLF>" ends the mail text and cannot be sent by the user.
   In general, users are not aware of such "forbidden" sequences.  To
   allow all user composed text to be transmitted transparently, the
   following procedures are used:
=20=20=20
   o  Before sending a line of mail text, the SMTP client checks the
      first character of the line.  If it is a period, one additional
      period is inserted at the beginning of the line.
=20=20=20
   o  When a line of mail text is received by the SMTP server, it checks
      the line.  If the line is composed of a single period, it is
      treated as the end of mail indicator.  If the first character is a
      period and there are other characters on the line, the first
      character is deleted.

I believe "<CRLF><NUL>.<CRLF>" is a forbidden sequence. Resnick's response
to this sequence is:
  "Yes, the sending MTA should strip the NUL (as per RFC 5321 section
  4.1.1.4) and then dot-stuff the dot on the line by itself (as per RFC 5321
  section 4.5.2)."

> You to seem to advocate for "repair".  The "repair" strategy makes Cisco's
> ESA vulnerable.  I would argue that rejecting messages is less insecure.

By default, Cisco ESA is not RFC compliant. Their "clean" option only
replaces bare <CR> and <LF> characters with <CRLF>. So that <CR>.<CR>
becomes <CRLF>.<CRLF>. Both of these are "forbidden" patterns and should
be dot stuffed.

On 4/30/24 17:48, Steffen Nurpmeso wrote:
> Given that RFC 733 is from 1977 and RFC 822 is from 1982 i feel
> this entire thread is exaggerating.

The history of EOD attacks makes the recent SMTP Smuggling attacks so
surprising! It is hard to believe that SMTP servers were recently vulnerable
to <CRLF>.<CRLF> variations and that others still are.

Thanks Solar :)

Mark Esler and Bastien Roucari=E8s

--mJ1yaSNywByV6dya
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAmY7k7oACgkQszvZgG6F
IMY2qg//YPtCX3S2ZBhdZSN8HJH7l+pcqxzxFehlIvPFm/4l/XMXRlDA6lD/U+VC
glpS6m4gSzZKyHi7T/9XojGAnhdFFvN24AIsm9/mqXULm+pDLtW0EKtjezm/dPqD
bLIHu/jkV5r1iIQ1Zit9cac1o/18+tqSdM3bIon0E2cw/EB+RFxrVmgLm6PdqKpK
pZPMJBq5F/TzlXzxPnitNKt22Qqmk7Cu6ZKI8CGJMF7ObyOUkO0S7TQRZemewpKI
Rmuwo2OoTwjhZh54lCrwWZWzKTz77x2pviyVT9W10Rs4LqldG/DwDdQw/8CSm5h6
bidUU5wINLLZdlLLHK5YB+3EsSC27x/S+RRSgFddHnzUgXijEzrpsnKgO8iDOh8H
/ywe2Ct0baCHoqzMQK+ORH3CT+FmSx3fk/mrWVEt7UN9D/opdiGzRMbwLKA7NTkW
ARwq5PQvm0t+mmxDBUGVdwZ7957mEy5mz4elbXYpoR0zsM9Imb9Us+h+zEjWBjkE
soF83XmVXObuGYsDv5oqY0n75jPJEFpTpokZSiQIu2kn6I5A27MT2vTJVZ9uwr1D
ZiI09Jke9vhb9k1QCcaFOrloDfYfFrv7CTOdVX8+YtY9Yhs6GvEvO00kyWB5BLNP
EorsfKv457NN7IzYuBML2CwyDAQzm8NR8s4LpF2yiwgmSMOWM78=
=ZRKO
-----END PGP SIGNATURE-----

--mJ1yaSNywByV6dya--
