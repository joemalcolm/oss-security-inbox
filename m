X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2227" "Tuesday" "7" "April" "2015" "10:49:21" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55240A91.8010506@redhat.com>" "61" "Re: [oss-security] ntp security release today" nil nil nil "4" "2015040716:49:21" "[oss-security] ntp security release today" (number mark "        kseifried@re Apr  7   61/2227  " thread-indent "\"Re: [oss-security] ntp security release today\"\n") "<20150407154845.GE23958@suse.de>" ("<20150407154845.GE23958@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16267 invoked by uid 550); 7 Apr 2015 16:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16238 invoked from network); 7 Apr 2015 16:49:35 -0000
Message-ID: <55240A91.8010506@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
References: <20150407154845.GE23958@suse.de>
In-Reply-To: <20150407154845.GE23958@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="0DvCXoNLbL7kIw0Ro9BT9C22VaFbQflva"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 07 Apr 2015 10:49:21 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ntp security release today
To: oss-security@lists.openwall.com

--0DvCXoNLbL7kIw0Ro9BT9C22VaFbQflva
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 04/07/2015 09:48 AM, Marcus Meissner wrote:
> Hi,
>=20
> ntp.org has released ntp advisories today, CVE-2015-1798 and CVE-2015-179=
9, CERT VU#374268
>=20
> http://support.ntp.org/bin/view/Main/SecurityNotice#Recent_Vulnerabilities
>=20
> CVE-2015-1798 seems version limited to
> Affects: All NTP4 releases starting with ntp-4.2.5p99 up to but not inclu=
ding ntp-4.2.8p2 where the installation uses symmetric keys to authenticate=
 remote associations. .
>=20
> Ciao, Marcus

Was just about to post a note about this, you beat me to it =3D)

These issues were discovered by Miroslav Lichv=E1r of Red Hat, more info
in our BZ's:

https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-1798
https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-1799

Also note that CVE-2015-1799 also affects chrony, different code base so
different CVE:

https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-1853

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--0DvCXoNLbL7kIw0Ro9BT9C22VaFbQflva
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVJAqRAAoJEBYNRVNeJnmTOBgP/0Za0dLa5KqbYRuzY6RKgcYH
lq/2Zv38mfos1gcE4KoBb9oj6u+Ludp/CXtZTPgJtI+sS+57e/OGloI0uKhjkrMP
XSuyI8X9uoBd/ndAXosOxKb6yMFL4i8zwDcBdKFKZQ9A3DrG5IcmdbCZF7Fye2qI
DPwZtLfEnOCtdgfL//72M0ngCCUwvBiwRPW+TZ9RQrt5zcmFY66wdv+QG36bknxo
SqZhvd3PvPbxoIfhdlvs6X4haJlLOI5j5ILBaIVMt0KGG/YpXdVgIZCa1qnYl6rW
6SMYNxr0MHqJ7zBE+FtZ/orLpiLfrZEtvN2cQrQM2sbaVWHVc+YyN4Ar+yJVWkXV
YeuEol+jh9R4IpkAOo0rKLyg7tFA2sUkOYbpmbJPDF/GZYGFNoBITe2kWKzMKl3O
G8qiq6EX5doEDSxL46HPE8/wxrkov6Ym3D6T60Ywxz6NqilXagWQ5vx/YVmxz81g
ArKjgN7Mn+K5omG/FZw//MBFonLtwWYUMPJRzinUizZ+qadYtwg2zycTbEo+szuq
AYdJO0iOLbauZWPQxuwSL3CiipC1RoGQgQ8dwOVsTxvUpUb8MZaSERhn0pwVGqFy
pZUjhH3kp9RKSqAaXh8p6C3rO4n1Kr6hY/8XMaOEA76P0a2mTJwDB/kXGr3ErZKL
+Ri2xr95R1RQ4xzOR3gk
=g0uL
-----END PGP SIGNATURE-----

--0DvCXoNLbL7kIw0Ro9BT9C22VaFbQflva--
