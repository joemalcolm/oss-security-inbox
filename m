X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2521" "Tuesday" "24" "March" "2015" "12:30:45" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5511AD55.8040006@redhat.com>" "64" "Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" nil nil nil "3" "2015032418:30:45" "[oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" (number mark "        kseifried@re Mar 24   64/2521  " thread-indent "\"Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier\"\n") "<871tke8ngu.fsf@mid.deneb.enyo.de>" ("<5510F66A.9030202@redhat.com>" "<871tke8ngu.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1984 invoked by uid 550); 24 Mar 2015 18:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1962 invoked from network); 24 Mar 2015 18:30:58 -0000
Message-ID: <5511AD55.8040006@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <5510F66A.9030202@redhat.com> <871tke8ngu.fsf@mid.deneb.enyo.de>
In-Reply-To: <871tke8ngu.fsf@mid.deneb.enyo.de>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="Qv2MSbvUNj2G0FHTopFljWBRHBcuV39Rk"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 24 Mar 2015 12:30:45 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 2 moderate (borderline low) docker flaws fixed
 in >=1.5 and possibly earlier
To: oss-security@lists.openwall.com

--Qv2MSbvUNj2G0FHTopFljWBRHBcuV39Rk
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 03/24/2015 08:44 AM, Florian Weimer wrote:
> * Kurt Seifried:
>=20
>> Another example of why embargoes are a bad idea, these issues have been
>> fixed for ages by upstream but fell through the cracks, because embargo!
>=20
> There is no hard information in those bug reports.  It's not clear
> what, precisely, they are about, and so it is impossible to tell if
> they actually have been fixed.  I appreciate that you clean out old
> stuff, but doing it this way makes it seem you suddenly have developed
> a policy for secrecy around security issues.

tjay@  (our docker guy) verified they were fixed as you can see from his
comments in the bugs.

This is an example of why we need to clean these old things out. Nobody
really cares about them, and in all likelihood they got fixed by upstream.

>> https://bugzilla.redhat.com/show_bug.cgi?id=3D1063550
>=20
> (CVE-2014-0048)
>=20
> Could this be a dupe of the index.docker.io registry misconfiguration
> that had at least one redirect to http:// (now fixed) for the actual
> (unverified) image data?

No, this was stuff like downloading debian signing keys over http rather
than https, and other sensitive content in similarly unsafe ways.



--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--Qv2MSbvUNj2G0FHTopFljWBRHBcuV39Rk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVEa1VAAoJEBYNRVNeJnmT2X0P/iSf3J81ahmmiMrkZPQNZGV6
kk/gffEePm3ZlcbRDXtL58kYURa3yaqkvTX0YvPBkZVf/OTedFjlZZNDgrVbcEJf
9Mpk1gV2oqFg5CRa35Ux5QzgRqXKtBQgBofSNtx3dBDrISDgv3j6cWuO53MdUNlF
Gu9OtOofiEzLhE3ToIJi3VAOL6k1oRuHkeGkGP1T0GoL8hBW6YX9WT2os5ucNPRB
EX8/o88oqCyHqn+Hvqzlyf04Y29Gh4I6HQyGufnOGAA4ACXpQtISPdnBxQEAcb8J
O2NdevtJr/POEvnllrVyRGwyDM5RVP8ceA51q2NpXiFfDEZMlJIwWWa9Qr7LWTzD
TkrGLuyh/1twhvd1QXIbAJKbuxqKbKGLtCbU4FDIZ2q/qwdQ74MsuQ8cDKWxKdwU
nwFXHM35Wwem+522Q+ip/XA6ajUenXfhjAcV/jjmP7CGyRf8bGL7TC7I4cMPzvlC
sw35kPgjR8kQi1wyuo+ZDnV5wtoaP1OsSGSmezPguUMD1ddegyiuDfgqPA6ys2tp
wcOL58SdI8BkvTViImdNywjDyTLyGIopmARVLC7fK80fBBQwurypE20od4TpAHuy
dv8ha9sMxvvAAB0AhG7NrohfrEJuh/uka1QAA5Gg3iFQXqFYXnSRKjlx2hv2XUsm
19J4Ep9Od8CeHVu2V4jp
=kwIY
-----END PGP SIGNATURE-----

--Qv2MSbvUNj2G0FHTopFljWBRHBcuV39Rk--
