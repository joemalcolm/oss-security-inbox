X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2008" "Friday" "14" "July" "2017" "23:50:03" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170714235003.507f2dbf@pc1>" "51" "Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" "^Date:" nil nil "7" "2017071421:50:03" "[oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" (number mark "        hanno@hboeck Jul 14   51/2008  " thread-indent "\"Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler\"\n") "<20170713154344.GG21662@suse.com>" ("<20170713154344.GG21662@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23566 invoked by uid 550); 14 Jul 2017 21:50:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22524 invoked from network); 14 Jul 2017 21:50:16 -0000
Message-ID: <20170714235003.507f2dbf@pc1>
In-Reply-To: <20170713154344.GG21662@suse.com>
References: <20170713154344.GG21662@suse.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-13017-1500069005-0001-2"
Date: Fri, 14 Jul 2017 23:50:03 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-1000083: evince: Command injection
 vulnerability in CBT handler
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-13017-1500069005-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

When I saw this and the proposed fix (the backport fix, not the one in
git head), which was to remove tar support, but leave the command line
calling of all the other tools looked suspicious to me.

I played around a while, I haven't been able to find any more command
injections. However I discussed this with Tobias M=C3=BCller and he found
out that another evince backend - the dvi one - also calls a shell
command with insufficient escaping:
https://bugzilla.gnome.org/show_bug.cgi?id=3D784947

While I didn't find any more command injections, I figured out that
with a password protected zip file as a cbz one can cause evince to
hang:
https://bugzilla.gnome.org/show_bug.cgi?id=3D784963

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-13017-1500069005-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE/nN1f6YOTiG5N1efpYgAcru1HkIFAllpPIsACgkQpYgAcru1
HkIp7hAAyAfg3yohYg5h2gGeSJDkGjGcEuBsVaCn+Y7R9xhJofhSnGv88KKVFdCy
whcgOkqwW8CO4Ch3X3i24zEaMdLZX9Uj62W1NtJIRxCUBp3DusnfpZ3kbaOAOvCW
jqaVqGkUch3Bgt7ShcOoANeXWtw4xPem8ShfeipY/LgpuuzB8UB+N7/nvD6dc0N4
gVdfxFqDusaX6UusqrEc1xso2kMRX8KSBAReTdNjG+zVKIe39LNJmYeWEjeZoMob
dATepRAkml0BU1aoJQyt8eeqMp035fCysUIZZhsY7VktWr7yGOgA8bVw7jUW88mP
q7gHkl8cUzE5Kroce8f9AgVHkTIBvKaOOKjANLbci+6SWp7zQd4eJaFibYoNBGkJ
tLZVL4wGA0uRHeAPRz/J4YrIcfg7nCMp5RqnBhmvTgZ1ZoZFLSF3HOJ5dTQIFDNU
/LsqB9ZCzd96vZvDfo6Q8E/PvqH7bXciNCT4dE2jeEk8P6zCDNP7oiqHA6qizpaA
ZsW6hhatyunumFGwA3hDge0Y2E/CNuVUo+wd55DMFsYAjBuwRtD9sFXn6uBRIOS6
72A5VMDycoxiLTJwZt7YdvzRqjSnxkPdMLRLVou+F+8eo7lo1ZS/p+R125YzqV7x
xFxRIvuzl9mTZbZ8qkw/rgrY18h54xl7nc7ys5w9q8ER7jvJY+c=
=/KPH
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-13017-1500069005-0001-2--
