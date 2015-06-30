X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2611" "Tuesday" "30" "June" "2015" "08:31:08" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5592A82C.2090301@redhat.com>" "64" "Re: [oss-security] Question about world readable config files and commented warnings" nil nil nil "6" "2015063014:31:08" "[oss-security] Question about world readable config files and commented warnings" (number mark "        kseifried@re Jun 30   64/2611  " thread-indent "\"Re: [oss-security] Question about world readable config files and commented warnings\"\n") "<20150630060358.GA24238@gremlin.ru>" ("<559224EC.3080008@redhat.com>" "<20150630060358.GA24238@gremlin.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11678 invoked by uid 550); 30 Jun 2015 14:31:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11656 invoked from network); 30 Jun 2015 14:31:23 -0000
Message-ID: <5592A82C.2090301@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <559224EC.3080008@redhat.com> <20150630060358.GA24238@gremlin.ru>
In-Reply-To: <20150630060358.GA24238@gremlin.ru>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="subgeqsvNSMQmVhXvdPTguGJtgFGhccg8"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 30 Jun 2015 08:31:08 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Question about world readable config files and
 commented warnings
To: oss-security@lists.openwall.com

--subgeqsvNSMQmVhXvdPTguGJtgFGhccg8
Content-Type: text/plain; charset=koi8-r
Content-Transfer-Encoding: quoted-printable

On 06/30/2015 12:03 AM, gremlin@gremlin.ru wrote:
> On 2015-06-29 23:11:08 -0600, Kurt Seifried wrote:
>=20
>  > So, if a config file is world readable by default, but the section
>  > where you might put a password says:
>  > # Database URI for the database that stores the package
>  > # information. If it contains a password, make sure to
>  > # adjust the permissions of the config
>  > Is that good enough, e.g. no CVE, or do we actually need to have
>  > proper permissions?
>=20
> For me, that means: the developers did their best, everything else
> is up to package maintainers.
>=20
> And, obviously, when the administrators will fill in the connection
> parameters, they most likely will see this warning.
>=20
>  > I'm thinking we need proper permissions and not a note (especially
>  > with administration tools/etc that may parse/modify the file
>  > but not change the perms).
>=20
> My experience says that developers' attempts to perform chmod (or,
> even worse, chown) during `make install` are just ugly (at least
> they never check whether DESTDIR is empty).

=46rom a developer perspective I somewhat agree, however I'm looking at
this from a vendor perspective where we do control the chmod, easily
(RPM spec file).


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--subgeqsvNSMQmVhXvdPTguGJtgFGhccg8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVkqgtAAoJEBYNRVNeJnmTR+IQAJkARsujzWgGJEyldgwYOQFK
zQTKlI6ZXaO6HiNnnm5TEGwGkUqn5IeWBYANGL5z4oTG7f71yNr32nfzq4JXWXgG
ER/86u0cs5P4jEb0kR3Cack3J/XN+eSLykf+2vTnd9iprtzexCV6ilGjSeoDo+YX
FdbWLBx2knWltmRLDVS8J+Lqh1rBvyT4bZaClsQiTZBVgOoVBSiwB4qG9NBWXM90
WaUCEzqzhgfh1Sobb3C77p0P+SRND4C3uelUtH3ExMtdQ1jhekqxww5SHFnhiXVr
vj3+W1H6QfwxX6r2/8ZYt9hjuXTdGDKP2ydtfWAijqdq7TTQ04j13BVhRQfsJnZ1
gCfGwrli7R39iDVRk3+Q2CVze/7JVNMkTNug2R2ZKhapeWX/ogQ55Rqn8B5Gce+/
55G9sbPagnBjEnNG1VD63CpbzWxjUcvYxM3gNd3j6A0/fBN9hzN2HAdGXLTfcSI7
VVzAi/NdU+Q97v+KljXvOqsCGTDcrrvl4ASh+pmjumdLNpoAWQIfi1GDdrMey7hR
92CcL9Dg9bSfY3nx0JyVy4iOjcibYk6fpCQxotWK1G40BAR2205QAVAWeGDyLiI2
TTolK/f1Ueaobc0zSyPd+zENZXG00YtbPAS9cWYz5staKbWLL9Bv8OBM38Hro8yr
0jjHNtXItMBKTntfOZpE
=htPc
-----END PGP SIGNATURE-----

--subgeqsvNSMQmVhXvdPTguGJtgFGhccg8--
