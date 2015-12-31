X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2985" "Thursday" "31" "December" "2015" "03:16:33" "+0000" "Ben Hutchings" "ben@decadent.org.uk" "<1451531793.25978.92.camel@decadent.org.uk>" "76" "[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" "^Cc:" nil nil "12" "2015123103:16:33" "[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" (number mark "        ben@decadent Dec 31   76/2985  " thread-indent "\"[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?\"\n") "<20151222023118.E01086C412F@smtpvmsrv1.mitre.org>" ("<CANO=Ty30N=AwTvdU6Hj2ySS=doE7Nt2ptkExN61KOfho5FR9RQ@mail.gmail.com>" "<20151222023118.E01086C412F@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23642 invoked by uid 550); 31 Dec 2015 03:17:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23617 invoked from network); 31 Dec 2015 03:17:02 -0000
Message-ID: <1451531793.25978.92.camel@decadent.org.uk>
In-Reply-To: <20151222023118.E01086C412F@smtpvmsrv1.mitre.org>
References: 
	<CANO=Ty30N=AwTvdU6Hj2ySS=doE7Nt2ptkExN61KOfho5FR9RQ@mail.gmail.com>
	 <20151222023118.E01086C412F@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-haXlyT4tVYKJu4B2lomz"
X-Mailer: Evolution 3.18.2-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.247
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: oss-security@lists.openwall.com
Date: Thu, 31 Dec 2015 03:16:33 +0000
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?
To: cve-assign@mitre.org, kseifried@redhat.com

--=-haXlyT4tVYKJu4B2lomz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2015-12-21 at 21:31 -0500, cve-assign@mitre.org wrote:
> > https://bugs.gentoo.org/show_bug.cgi?id=3D569010
>=20
> > http://www.thewildbeast.co.uk/claws-mail/bugzilla/show_bug.cgi?id=3D3557
>=20
> > > So in codeconv.c there is a function for japanese character set
> > > conversion called conv_jistoeuc(). There is no bounds checking on the
> > > output buffer, which is created on the stack with alloca().
>=20
> > > http://git.claws-mail.org/?p=3Dclaws.git;a=3Dcommit;h=3Dd390fa07f5548=
f3173dd9cc13b233db5ce934c82
> > >=20
> > > conv_jistoeuc
> > > conv_euctojis
> > > conv_sjistoeuc
>=20
> The original discoverer found a conv_jistoeuc issue, and then the
> vendor apparently also found conv_euctojis and conv_sjistoeuc issues.
> However, we don't see an indication that these issues arose in
> independent ways. (Also, there is no vendor statement that
> conv_euctojis or conv_sjistoeuc is exploitable.) It seems best to
> assign CVE-2015-8614 to the combination of the conv_jistoeuc,
> conv_euctojis, and conv_sjistoeuc issues.
[...]

Note that two of the bounds checks added in that commit are incorrect:

1. In conv_jistoeuc() the check uses > rather than <, which causes all
=C2=A0 =C2=A0conversions to return an empty string. =C2=A0This is presumabl=
y not a
=C2=A0 =C2=A0security issue, but is a regression.

3. In=C2=A0conv_euctojis() the comparison is with outlen - 3, but each pass
=C2=A0 =C2=A0through the loop uses up to 5 bytes and the rest of the functi=
on may
=C2=A0 =C2=A0add another 4 bytes. =C2=A0The comparison should presumably be=
=C2=A0
=C2=A0 =C2=A0'<=3D outlen - 9' or equivalently '< outlen - 8'.

The first check is fixed by a later commit:
http://git.claws-mail.org/?p=3Dclaws.git;a=3Dcommitdiff;h=3De3ffcb455e03760=
53451ce968e6c71ef37708222

Ben.

--=20
Ben Hutchings
All the simple programs have been written, and all the good names taken.=

--=-haXlyT4tVYKJu4B2lomz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUAVoSeEee/yOyVhhEJAQqiBA//RGcqHzDvULZ//YryccKcIekdIikanzkZ
8nS9yrZz5DW8Oavs+Q5QyJn1ENFfVUGsvZl6qq175JKBrc2Bjnl2XE+tsQ2nma+e
mo0g8UTGFu72GbxytPy/1tJ++Lj5aUHTeJxTyVbOIzva+6rfW/Jmr/NoYD0BVKR/
mIXh0Rs4ycNOTx6i0RYypEEBSF83550VKlKSZKq2mj9HG1fDio+OWINJjI4p8sgW
uBlc40JKxO6A/qX3wBruwOYA/OaiEg4T7nksTmuX+0K68UA5u0djNLrOyDKJ3Wil
z8T6QoaZOH8becM7WYoYLa1ReQWhcK1Yjbqu/psHNNFyJ1rMlqLEFNiDkv8OsgEC
zcdrI0TOp9yM051YyRGVDYcECCXXuWrL0v2g+XnUqnWmgm8s6WF4EijUL9P6lMwO
jmpI9A3zunwXJBgDen79ErGAL/zxVCZvj76BMyksazUqKgAJTIZjqLKT/2QWYH4P
Dou9X/kZV/vu0p578GdPCKLJeFqLyI9wTjQiPNV088n+7wlcE0Tl5XYPwBOyzKZS
hj6pCrVU7hOle00lsOz45KmDI7W9x+KaM/VUhQkEBl9bSruNlLumJdZgMRIeksHX
9FyKE1An/BtS8iXHRnSTy3rUxp/NolQOCzlmiXAXDyLPgn0olLbvB8SWF5VPrvJx
PSTRJlpEpew=
=oaqI
-----END PGP SIGNATURE-----

--=-haXlyT4tVYKJu4B2lomz--
