Received: (qmail 11478 invoked by uid 550); 6 Sep 2022 14:51:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11460 invoked from network); 6 Sep 2022 14:51:14 -0000
Date: Tue, 6 Sep 2022 14:51:01 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20220906145100.kmnuhcj4slmbrokz@yuggoth.org>
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
 <CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n7tpc3xvl6l6r3ng"
Content-Disposition: inline
In-Reply-To: <CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

--n7tpc3xvl6l6r3ng
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2022-09-06 16:26:58 +0300 (+0300), Georgi Guninski wrote:
> If you can crash the python interpreter without syscalls and
> without the kernel killing it for OOM, would you call this DoS?

I didn't say it wasn't a denial of service, but you can trivially
create all manner of "denials of service" (and far, far worse things
too) of the CPython interpreter and anything running in it by asking
it to execute arbitrary Python code. It's more a question of whether
that's something that can or even should be "fixed." If a program's
author chooses to intentionally pass user-supplied code to CPython,
hopefully they do so knowing all the risks and informing their users
of the same.
--=20
Jeremy Stanley

--n7tpc3xvl6l6r3ng
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmMXXk9fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkBdA/9FAN0ya01wo65C1gtJInPjw0nMrYfr9VJhPZp62uNSBBEYXwCKtgUW/AF
xWQUU93kjQU8qf+797jezxVTM7S77RldVHWu9aEei3mvm6c/EhbWK1N3rX0xdPAt
Mg722UdJ1Dz7n5i/Uoxk2Nr765cu4UWYiHtNdEBK6sPnsk9vwiiXfBBh6d6wgTl6
nFHRTwh/9zDds2q/VccLOxdJB64T53rjccku6H2Xz9GGFba1duvaqYbYhWWrJfmD
Qm3z2hqxSAfoop/t/Ga+0Jc7J7WDX08/eIC+xw+q4/R1yMu4bSfuc93z9eLsBrUJ
kfxn04uFoFRFqSg/iDPSYlAD674Y/rIyD//j25bKqQwxyKI5nzjED4BumLFYtruh
3jIur6D9cKbgntY/B/wD01gFoFd1QcmYc2lmEZ4ZuFIlTCIoUdkoeAGtsxH45xn3
7TrPLj+j2TceHbDLGV3NmSgP+YdOPsibidZxYh0OBlpgZ5tHwgO5vm0sLFNb1x1T
xK4UP/YtsGGhEJnGODZ4h+GFswXEbS2lJh9MTQVGg95JcrbYhFO7aM3u+LhrX79M
JGaR36L9iF9GKyloxLQww2E9V/xYFE63ktRa3YYTGdk8Uz7cyasI+AMtRG2+09ht
sf6IqQhWrVxT1hEtJR9KMU136TQuJHBc0T51d5qn+RcFxhss85s=
=pYxs
-----END PGP SIGNATURE-----

--n7tpc3xvl6l6r3ng--
