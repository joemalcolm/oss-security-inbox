X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1989" "Monday" "26" "December" "2016" "15:55:59" "+0100" "Peter Bex" "peter@more-magic.net" "<20161226145559.GU31189@scully.more-magic.net>" "53" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122614:55:59" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       peter@more-m Dec 26   53/1989  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<20161226154650.4b40cca8@pc1>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "<20161226154650.4b40cca8@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32021 invoked by uid 550); 26 Dec 2016 14:56:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31997 invoked from network); 26 Dec 2016 14:56:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=3cV1HgfC84fkSjnzuGNP1cPk/GIZaXCgIplLnzjyAAo=;
	b=HixFQhWBqoMgW8e0a1sdWdD1/1jS4S1RX/TXw8LGdZhjv/eZCgXWwi9vj69PnKTnoUIQkFkeiLuHQcsxZsMZi3se95sFKTGwabeYuPvSjFgP1nYYOIskcxgBOsxc1DYGuZhqIOOeXGN5p7EuMLGf9Vhk+vIxINVX82J0WNfzuuM=;
Date: Mon, 26 Dec 2016 15:55:59 +0100
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Cc: security@drupal.org, security@chamilo.org
Message-ID: <20161226145559.GU31189@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com, security@drupal.org,
	security@chamilo.org
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161226154650.4b40cca8@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jWL1oGPK2mPq0rME"
Content-Disposition: inline
In-Reply-To: <20161226154650.4b40cca8@pc1>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution
 [CVE-2016-10033]

--jWL1oGPK2mPq0rME
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 26, 2016 at 03:46:50PM +0100, Hanno B=F6ck wrote:
> Hi,
>=20
> Given I had plenty of time on the train to 33c3 I did a quick
> lookaround on what contains PHPMailer. As the details of the vuln
> aren't clear yet this doesn't necessarily mean they're vulnerable, just
> that they ship the affected code.

It looks like the vulnerability is due to a missing escaping of shell
arguments in the sender's e-mail address.  This commit seems to be
the one that fixes the bug:
https://github.com/PHPMailer/PHPMailer/commit/4835657cd639fbd09afd33307cef1=
64edf807cdc#diff-ace81e501931d8763b49f2410cf3094dR1449

So it depends on whether a web form allows one to control the "from"
mail address or not.

> Drupal doesn't contain PHPMailer, although mentioned in the advisory.
> But there are probably plugins and extensions using it. I also saw it
> used in some wordpress themes.

I noticed this Drupal module: https://www.drupal.org/project/phpmailer
which has some sort of integration with the widely used mimemail module.
The linked module http://drupal.org/project/smtp also uses PHPMailer.
There are undoubtedly more modules that do.

The LCMS system Chamilo also uses PHPMailer for sending mails internally.

Cheers,
Peter Bex

--jWL1oGPK2mPq0rME
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYYS9/AAoJEBEdufnLRYmw244H/33WNKCqHVHJyLSmqeB3yfai
5DdQOssphernvpG2Ohm3UEJ4I3EMGqwKb2GpV4fTF2LrSa1USfXM7KnN40q5eyet
7Rga2gSmHDdbg0Smzz5bJp3OT4lzt+zqENQ1D+3rzGifmdgDvr1X+9GVO37b9aeW
E99hBsMQnG3EQXLK8UyjfdZ3Tv10q8gJhbepkGQ4D6ydhKgQ4RHM53uV45WtBDh0
14jYD1HRpR2yEbAJ0wsMz7/LZdRVvYWORHmORPPuAGJgAabiT90XLn9I2P9M26C0
pWQTh77Kxcjn8Jxz2iC4SoBwmFACauIEDCXsz0Ima2OfeBmBbGqzQj0Jj/EMADw=
=fmT0
-----END PGP SIGNATURE-----

--jWL1oGPK2mPq0rME--
