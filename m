Received: (qmail 16251 invoked by uid 550); 28 Sep 2025 15:15:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16210 invoked from network); 28 Sep 2025 15:15:31 -0000
Date: Sun, 28 Sep 2025 15:15:20 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aNlRCNC4_Jys33iA@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uqIwm8L4nXTvU3b5"
Content-Disposition: inline
In-Reply-To: <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] How to do secure coding and create secure software

--uqIwm8L4nXTvU3b5
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2025-09-28 09:05:15 +0530 (+0530), Amit wrote:
[...]
> But still, the main point is that can someone give an example of how a=20
> software made up of all secure functions be hacked? I request for an=20
> example (not theoretical statements).
>
> Or, some example that happened in the past in the real world? I will=20
> analyze that.
[...]

As an aside, the term "hack" has a lot of other less nefarious=20
meanings, and using it to describe unwanted or criminal activity=20
casts the entire hacker community in a negative light.

I think you still have tunnel vision, imagining that "hacking"=20
software can only mean attacking flaws in the way it was coded. When=20
I say most of the security flaws I deal with stem from poor design=20
choices rather than insecure coding practices, I really mean it. I'm=20
one of the vulnerability managers for the OpenStack project, and=20
skimming over all the recent entries at the top of=20
https://security.openstack.org/ossalist.html they basically all fit=20
that description.

It's comparatively easy to avoid or catch insecure coding patterns=20
that could lead to vulnerabilities, it's much harder to design=20
complex software securely.
--=20
Jeremy Stanley

--uqIwm8L4nXTvU3b5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmjZUQBfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCngow/+OqjWG2qpmPU+gGAzNHEgWbf94Kcyauh6epwVYf3pNL1B1utHR9mf5KZ+
5ZTxLR/DBUn6OKQtNdRlc8r3nRKaizkEw/SZvfC7/3p9uwGOmnjhfP/NeCt3SAtK
WcffrhICWHJ4xNh9ZxakbEQ0qetv5aUL8lkc0w/s20xayB6u3I/gneCoar+L4C3g
h0/N6Q/+hrbj1IJQyqZYWtqH/t2lpbA7d9jLSL/hHdEO74DqMmDaTjdNKljeI7cX
EZvVh5RK2qWB+OU4aRkGO4pFZjkoOAQpZmymol36MUXaxmvjdHqwi3xbd0zit+1/
gkAqtWGIf8EQaZ9I0+p2XAq4mtKwIJ5WiNrnHbKFwqjwJOkTKTBTlEKlLrYxjfjV
zdBDgAaPSgQiIeFuPnPiXQvJ3ptVy47I/dcuPr+l3T4Uhi1/jSoxnwAH3+hi8qRD
zzJBL3UpxhCHd5ONx5D+Po9qvZYA6N/7bsrL52wc/xylRxf0cWnPB+L25eR+7X72
sCQ0AM94K73kkcrmCqGqkoty2SOmRT9J/p/FYuh7zrzEwLwRuZKWwZhfwmAoD2gt
NcK+lkBVFxT+E98xpS6dUDBpeC3VwRgO4QPCtbxW98c0of22prhOljHSuAfsvB/L
tncCaG5WZgjexxvAfAb9Js0PQ7M/shSE12Kf0qz5HehxiKjNDLU=
=Daa6
-----END PGP SIGNATURE-----

--uqIwm8L4nXTvU3b5--
