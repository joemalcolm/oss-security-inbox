X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3356" "Sunday" "26" "August" "2018" "14:54:06" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20180826145405.3ynuaq5efx4zq33p@yuggoth.org>" "70" "Re: [oss-security] Travis CI MITM RCE" "^Date:" nil nil "8" "2018082614:54:06" "[oss-security] Travis CI MITM RCE" (number mark "        fungi@yuggot Aug 26   70/3356  " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32185 invoked by uid 550); 26 Aug 2018 14:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32167 invoked from network); 26 Aug 2018 14:54:20 -0000
Message-ID: <20180826145405.3ynuaq5efx4zq33p@yuggoth.org>
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
 <20180826005658.GA5795@osmium.pennocktech.home.arpa>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ci62rwlk5xljqrlr"
Content-Disposition: inline
In-Reply-To: <20180826005658.GA5795@osmium.pennocktech.home.arpa>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Sun, 26 Aug 2018 14:54:06 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Travis CI MITM RCE
To: oss-security@lists.openwall.com

--ci62rwlk5xljqrlr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2018-08-25 20:56:59 -0400 (-0400), Phil Pennock wrote:
> On 2018-08-25 at 23:49 +0200, Jakub Wilk wrote:
> > The new code looks like this:
> >=20
> >    apt-key list | awk -F'[ /]+' '/expired:/{printf "apt-key adv --recv-=
keys --keyserver keys.gnupg.net %s\\n", $3}' | sudo sh
> ...
> >   $ apt-key list | grep -A1 -w A15703C6
> >   pub   4096R/A15703C6 2016-01-11 [expires: 2020-01-05]
> >   uid                  MongoDB 3.4 Release Signing Key <packaging@mongo=
db.com>
[...]
> If you're building infrastructure which needs to get data from off-site,
> then consider whether or not you can provide template directives which
> people can include in their command lists, and you then populate the
> template with the correct current commands for that directive.  Eg, if
> I'm talking to Docker inside Circle CI, I don't set a bunch of variables
> myself, I just say `setup_remote_docker` and let Circle CI figure out
> which commands should be run.  For "everything is a shell command"
> setup, then perhaps `$CICMD_APT_KEYS_UPDATE` could be made available.
> Or `"${CICMD_APT_KEYS_UPDATE[@]}"` if even more constrained.

Indeed, as someone who helps design and run very large CI systems, I
can say with certainty that every extra request you make in your
jobs to retrieve something over a network connection is one more
false negative failure waiting to happen. The Internet is _not_
reliable, and it becomes obvious when you start looking at
connection failures and random API errors at scale from lots of
different places on the planet. If there's basically static data
that your job needs (especially public keys/certs) just bake it
directly into the job itself, and for things that change more often
than that cache as much of it as you can local to (or even directly
on the filesystems of) the systems which run those jobs.

Unfortunately a lot of this sort of silliness comes about because
people write CI jobs by translating their own developer environment
configuration documentation or user guides into scripts and don't
think about (or perhaps don't even understand in many cases) how
technologies like OpenPGP work.
--=20
Jeremy Stanley

--ci62rwlk5xljqrlr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAluCvwZfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnhthAApF+6xxsKZVbOr7vefT903O4PDsxmSSY0A+kFam2XjXwfA8s/qVstqsjd
3Vp4y4ysLxX+8PzggZIMzWGVURwH/2KXUb4nO/X6dzrAHNb4UCfDID0LlM83D2ta
n5wZvM4nSEH21wi5nFcpdPY3yCD0WEQ0sSXtQkA5WrdLWV0mJpjY8Y/Y6csNiqtw
7wCmBD4IOob+7gtINA51SqX4Zzt+Az+rwIvLG6XFkArungvOXMl0pc6ukU/uHbnZ
Z6g38HtAWd1todvNiEGeSetx9IKec3Q0efTzysEV7srGp4IDolDGIKuHRmndHjSF
PpGlVMnA7pt+vQGNFhcD1Ju/+rdXwvXeboL3P9tLHuXBUo+BV8v8VXxAK5/gAfiQ
AfM9Ob8IWQUU4cTTblTXKIWofFT0dWPcDgzJEn60KvyzkGoaeDUC1o/hQu1gG4Jc
hjLuijiSgkIgqx0NXfE8M/0Bqr+uWxIXoLRszJYSn4Cpb28haoq0/hyHzWx5gJM6
tDzgVG4Dp4ChIWPCPF/AcMBSyZj4SvGaPegCfHhsmxbQ+UH+jftQ1pb/p6oNFr+Q
atQf5YaSDOtVxO3TS2OANtD+U1SVqIkZ6678FxPpRGEjL0J6OcF1FD+1XnMWdBx5
sHZBdX2dB75ln7o2YfCkPkSyuq+jiW7Ky6puosSSiEpLInaQlcQ=
=UmUS
-----END PGP SIGNATURE-----

--ci62rwlk5xljqrlr--
