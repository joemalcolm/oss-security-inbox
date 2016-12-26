X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["989" "Monday" "26" "December" "2016" "15:59:44" "+0100" "Peter Bex" "peter@more-magic.net" "<20161226145944.GV31189@scully.more-magic.net>" "30" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122614:59:44" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       peter@more-m Dec 26   30/989   " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<20161226145559.GU31189@scully.more-magic.net>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "<20161226154650.4b40cca8@pc1>" "<20161226145559.GU31189@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14138 invoked by uid 550); 26 Dec 2016 14:59:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14117 invoked from network); 26 Dec 2016 14:59:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date; bh=7n3epHd5CigHD1AQhhKuBIXGNEUcUjNgkyM2/Cb++c0=;
	b=JiojuuJWmSWiXihrs3Pa+XJ04XTtVuxQFSRKlAnfi0aiz59SWmkSH9Q5Q01tB1RbWQUiGfhJ6UPEEqgoAOdwJd/FjmVOnBJkbtWysaJef/Ib8SkyMVMqJZiK03gOoL/fYvsNtAL0rotAj3qPs04oZZYhIx/MWqhXWo6hO8hatqQ=;
Date: Mon, 26 Dec 2016 15:59:44 +0100
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com, security@chamilo.org
Message-ID: <20161226145944.GV31189@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com, security@chamilo.org
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161226154650.4b40cca8@pc1>
 <20161226145559.GU31189@scully.more-magic.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0zDq8CFkxn2hi9iJ"
Content-Disposition: inline
In-Reply-To: <20161226145559.GU31189@scully.more-magic.net>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution
 [CVE-2016-10033]

--0zDq8CFkxn2hi9iJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 26, 2016 at 03:55:59PM +0100, Peter Bex wrote:
> The LCMS system Chamilo also uses PHPMailer for sending mails internally.

Correction: Older versions of Chamilo (up to and including 1.9) used it.
The current release (1.11) seems to use Swiftmailer.

Cheers,
Peter Bex

--0zDq8CFkxn2hi9iJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYYTBgAAoJEBEdufnLRYmwQPwH/1A4+W8jT8p3aqYlUMraN1a9
vgVjyshQvoIOTlf0asGZO1+bwu88U5vhN7DdRq+5tg99UzOl1uq3I5lPCdcVtD/j
lLvWeo1ixnTvHTaCnZ6O+/NZX3E2NEc+mgNtI79Ndfq858uLwg1eO72maxIJcg8K
n5esNKDl7HHI4iTV8K5N56QsSqWhJbtyC1pXisWdhC5UHdXtPSPidR/z6qqZ2nnd
+0l/t8iby7X/sZgZyoVjC6ITrLNhdHt8q8+/I1r1okFN+xRLxAdC3nFVqPxbY6ye
9a0JYzdNiMtrwb3DgLxWrJGa9cXVeYfyGjvbnuyrMoZ/4LuJSAgaCJUfrbI+pQs=
=aUgI
-----END PGP SIGNATURE-----

--0zDq8CFkxn2hi9iJ--
