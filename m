X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3124" "Wednesday" "27" "May" "2015" "14:12:35" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55662533.4040406@redhat.com>" "78" "Re: [oss-security] Re: FreeRDP tmp flaws" nil nil nil "5" "2015052720:12:35" "[oss-security] Re: FreeRDP tmp flaws" (number mark "        kseifried@re May 27   78/3124  " thread-indent "\"Re: [oss-security] Re: FreeRDP tmp flaws\"\n") "<20150527152829.7D3B042E0BD@smtpvbsrv1.mitre.org>" ("<20150527152829.7D3B042E0BD@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19634 invoked by uid 550); 27 May 2015 20:12:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19609 invoked from network); 27 May 2015 20:12:49 -0000
Message-ID: <55662533.4040406@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <20150527152829.7D3B042E0BD@smtpvbsrv1.mitre.org>
In-Reply-To: <20150527152829.7D3B042E0BD@smtpvbsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="QoJMtFnvWCebu7uELahTWJkgwaok1Ghxh"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
CC: cve-assign@mitre.org
Date: Wed, 27 May 2015 14:12:35 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: FreeRDP tmp flaws
To: oss-security@lists.openwall.com

--QoJMtFnvWCebu7uELahTWJkgwaok1Ghxh
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Ah poop, I remembered http://seclists.org/oss-sec/2014/q1/170 wrong, I
though if the code existed that was enough, not that the code had to
exist AND be enabled, OR enabled through a compiler flag for example. My
bad.

On 05/27/2015 09:28 AM, cve-assign@mitre.org wrote:
>> This may need 2 CVE's
>=20
> We think there should be zero CVEs because the report is apparently
> about a developer's debugging code that was never shipped.
>=20
>> ./channels/drdynvc/tsmf/tsmf_media.c
>> "/tmp/FreeRDP_Frame_%d.ppm"
>=20
> As far as we can tell, this code has been in an "#if 0" starting from
> when the code was originally added to FreeRDP in:
>=20
>   https://github.com/FreeRDP/FreeRDP/commit/dadb94a1e343648503949094a5005=
3d81212a153
>=20
> In other words, we don't think this code would ever have been
> reachable by an end user. The "#if 0" also apparently exists in the
> freerdp-1.0.2.tar.gz that's included in the
> freerdp-1.0.2-5.el7.src.rpm file.
>=20
>> ./libfreerdp-gdi/gdi.c
>> #ifdef DUMP_REMOTEFX_TILES
>>                        sprintf(tile_bitmap, "/tmp/rfx/tile_%d.bmp",
>=20
> As far as we can tell, there is no build option for
> DUMP_REMOTEFX_TILES or documentation recommending that an end user
> define DUMP_REMOTEFX_TILES, either in the upstream distribution or in
> a source RPM.
>=20
>> Actually it looks like upstream fixed both of them already so one CVE
>> can do (I don't think it's important enough to SPLIT/MERGE properly).
>=20
> Even if there were a different SPLIT/MERGE process for less important
> cases, a single CVE ID for issues reported in different versions would
> be among the harder process changes because it affects whether (or
> how) the CVE ID could be used on the cve.mitre.org web site, and
> complicates some types of patch-based remediation.
>=20
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--QoJMtFnvWCebu7uELahTWJkgwaok1Ghxh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVZiUzAAoJEBYNRVNeJnmTSxQQANK7/cvzFpmXtZtDtymDt8kx
B7zBHss6/nQ8pY0zdT0ajHRb7KefLMRNMKcMkXVhhZ8Hh2G5CJ+n+AVCkEitzXBh
AUF9Y83Dg+KPwVqbJBpR55eF+cc6GgJpSVsoZgZRTxuSQmToAA2fxcPxYTrY86U9
pejgglzBthB/kUtrZ5vO9calOitPio8w1c2WDhnAhiX2NEonTjFvidiOZyQWwuxX
CODloZXCESzGP0Yb7wqWVStDUp2Xk6z8GWkg+rFYiHmVNszUc1kkXCvIFY1Pjd6G
ysnRP3T3XUjnUT0flT0D7sYP9gHMlQWyneg5Jz0DDSbxXe7bfKP6OXc/N0TeYJRX
3hCj4XuIVvJuDindx7Bl6Rh/D9cStktMPOy9Dd1K/LLzX8r5lUuewHzHP349WUt0
QqIc73fLhASpCAtujTHK4FjPpJLHayp0TD5hypNtBwxDvCWDd665Zs14uhg18AsW
D1xlIcq0q7HbslT+Ilg7QfZsRIT53+l7j6cwtuOHZ8vRPNiyZwg5lobifA7fyPb1
lceUuyhtZ1JIgMtJjCY/JzaT43HGTKi0sOdriv/5CZ8irUxvCD/QaXAxbe+mSGHC
N39Oi9mAUcbGvtGTdKpCTPODBkmpd0xCSWBPdblOKfA8HWEKcJsX1VtlRJvnS7m7
txp1pyrOMpZ/JctdYEn5
=3GNo
-----END PGP SIGNATURE-----

--QoJMtFnvWCebu7uELahTWJkgwaok1Ghxh--
