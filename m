X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2476" "Thursday" "11" "February" "2016" "18:05:26" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20160212020526.GE25680@hunt>" "58" "Re: [oss-security] STARTTLS for this list?" "^Date:" nil nil "2" "2016021202:05:26" "[oss-security] STARTTLS for this list?" (number mark "        seth.arnold@ Feb 11   58/2476  " thread-indent "\"Re: [oss-security] STARTTLS for this list?\"\n") "<CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com>" ("<CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31971 invoked by uid 550); 12 Feb 2016 02:05:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31950 invoked from network); 12 Feb 2016 02:05:40 -0000
Message-ID: <20160212020526.GE25680@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Km1U/tdNT/EmXiR1"
Content-Disposition: inline
In-Reply-To: <CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 11 Feb 2016 18:05:26 -0800
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS for this list?
To: oss-security@lists.openwall.com

--Km1U/tdNT/EmXiR1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 11, 2016 at 04:05:53PM -0500, Alex Gaynor wrote:
> Not sure if anyone saw, but gmail has been rolling out UI indicators for
> MTAs which don't use TLS:
> https://gmailblog.blogspot.com/2016/02/making-email-safer-for-you-posted-by.html

This seems like shouting at the wrong person about a problem they can't
address. What is the average gmail user supposed to do with this
information? While it draws a parallel to the lock icon in browsers to
indicate HTTPS is used I think this overstates how "secure" an email is
just because it was sent over one hop using STARTTLS.

If Google actually feels STARTTLS is important enough to users to show
them an icon then they should use this as step one and announce step two
is requiring STARTTLS on a specific date. That only works, of course,
if they announce their intention _and_ a date.

> I was surprised to see this indicator on mail from oss-security. Does
> anyone know who has the keys to `list.openwall.com` so they can turn on
> STARTTLS for outbound email?

That'd be "listadmin [at] oss [dash] security [dot] openwall [dot] org"
http://oss-security.openwall.org/wiki/mailing-lists/oss-security

Probably Alexander. :)

It doesn't seem like a top priority to me: STARTTLS solves one set of
problems and introduces a much larger set of problems. I'm not sure any of
the solved problems are actually pressing problems to a public mail list.

Hosting a mail list is already miserable enough (for example, I don't
think mail From: google addresses actually makes to Google users; also, I
don't know how the moderators manage to keep this list spam-free with zero
mistakes, either false positives or false negatives.) -- adding a half-dozen
more reasons why mail delivery can fail is surely not fun.

Thanks

--Km1U/tdNT/EmXiR1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWvT3mAAoJEPMhclmdjS6XRz8IAItb674b+4nDDjC9MdTSExT8
1Tf2gK/lND1rLsvgGFUbPXE38U7DTPN2ZxBjq7716Kj7Os7f1fjZ6yEO1qyI9Dp/
wb6kZIiyBpLacLFIHtY0YQxlEa3sMR3seROCEIkplgNPWxDW9cP8guGl+aEa8Urg
29UmwuYCIyqpbkDnXJnhdu7hofF1Q1XhNBsJWloIWpi+7MVtAIfwzJekzSRmOFJs
pBrq5BxCw348HbUhh8hIdmbDZ74KB90szhr6lRX/x2Zk7auQ8A828FtZwY3CV8uw
AvvazalULzpaW9nHydWStQ/iao7BONpNwL4HhENhru4lQ/mnHRuEzJjdbGy1Ewo=
=CzG+
-----END PGP SIGNATURE-----

--Km1U/tdNT/EmXiR1--
