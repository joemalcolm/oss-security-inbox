X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1811" "Monday" "23" "January" "2017" "13:38:24" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170123030704.GA404@sin.redhat.com>" "55" "[oss-security] CVE request: lcms2 heap OOB read parsing crafted ICC profile" nil nil nil "1" "2017012303:08:24" "[oss-security] CVE request: lcms2 heap OOB read parsing crafted ICC profile" (number mark "U       dmoppert@red Jan 23   55/1811  " thread-indent "\"[oss-security] CVE request: lcms2 heap OOB read parsing crafted ICC profile\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18093 invoked by uid 550); 23 Jan 2017 03:08:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18075 invoked from network); 23 Jan 2017 03:08:39 -0000
Date: Mon, 23 Jan 2017 13:38:24 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20170123030704.GA404@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tjCHc7DPkfUGtrlw"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 23 Jan 2017 03:08:28 +0000 (UTC)
Subject: [oss-security] CVE request: lcms2 heap OOB read parsing crafted ICC profile

--tjCHc7DPkfUGtrlw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Originally disclosed on this list in August by Ibrahim El-Sayed, but the
CVE request was unclear so I guess it got lost:

http://seclists.org/oss-sec/2016/q3/288

An out-of-bounds heap read in lcms2 ("Little Colour Management System"),
in the function Type_MLU_Read in cmstypes.c.  This could be triggered by
an untrusted image with a crafted ICC profile.

Fixed in commit:

https://github.com/mm2/Little-CMS/commit/5ca71a7b

lcms2 is fairly bundled in various OpenJDK releases, so distributions
should check carefully whether they use bundled versions, and if so,
whether those have picked up the patch.

Some more information at Red Hat bugzilla:

https://bugzilla.redhat.com/show_bug.cgi?id=3D1367357


Thanks,

--=20
Doran Moppert
Red Hat Product Security

--tjCHc7DPkfUGtrlw
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYhXOnAAoJEGohqWcZR7qpMFYP/AtBMFbMJWN1QRGmgHTFUacS
p56xOrt0A6CavAQpdt4wmonlL2VJOucM/42w5HqGgZQILPs3xNLb2x7id+g/1vS1
bBjnaYYv4xVE2z0Iwtmbb0883z45yhNXqD71jDNpwgBT4pT9ourF/jJobrxrS2Xt
r3ZW8swtgrXJY6lvg7NJ4n27R+n/Pk2kz0sQ3ze8JsUQrQsrJxaSLRwso+9+iAOO
H8SY8pOzo6XwN6PkWDxfEoBdb3Mimb7gqekVhu9wZxRHZp75mLMWSQGN8qChlf1h
tGq+2wnQYlzZUMTLgJWF57JDZFZwulD19PotTYvHaUlHmqGAG3fpgWBvwY7d0HYS
mI01CgURVseA7+E4+IDy0vaiL8SwMyk//umyLSBhHJcHXwK2HdlEZqrdrQiQ/3c9
tTtuln2FyjGm3zhslI6oWm/ehWXAQsuochGcJYFxANwrFJ1Nw/sqphEEwPT1TgHU
Ko2KS3uaTHLUlvEGeyqlvU0gLhJlo9osc82LIyXBqoqTMrmaG9KzI3Jk3LR+Qm6M
XhjVfAP7E5lSiV5kH6Luyy3AvFEXKzsOlWy+V5JjPi6o69jqlv6QdgMS74YzGa/R
c33F79hUC35o1kjzwwwr4cpuY4pfpMZuHDvYOZLnD6Ult4u/xurcqnAN1DSOZYTM
OjUmtZk+ujOkfLeXbJI8
=qXZ5
-----END PGP SIGNATURE-----

--tjCHc7DPkfUGtrlw--
