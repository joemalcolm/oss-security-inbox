X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2521" "Tuesday" "19" "May" "2015" "12:16:08" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150519101608.GA4245@kronk.local>" "68" "[oss-security] CVE Request: nbd denial of service" nil nil nil "5" "2015051910:16:08" "[oss-security] CVE Request: nbd denial of service" (number mark "        alessandro@g May 19   68/2521  " thread-indent "\"[oss-security] CVE Request: nbd denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28042 invoked by uid 550); 19 May 2015 10:16:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28013 invoked from network); 19 May 2015 10:16:24 -0000
Message-ID: <20150519101608.GA4245@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Tue, 19 May 2015 12:16:08 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: nbd denial of service
To: oss-security@lists.openwall.com

--9amGYk9869ThD9tj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

the following vulnerability was reported in the Debian bug tracker for nbd:

> There's a remotely exploitable denial of service flaw, similar/identical
> to CVE-2011-1925 in nbd-server. It has been documented publicly in
> 2013-01-28[1]. It has been fixed in upstream version 3.4 [2] and hence
> affects only the stable release (1:3.2-4~deb7u4).
>=20
> [1]: http://sourceforge.net/p/nbd/mailman/message/30410146/
> [2]: https://github.com/yoe/nbd/commit/741495cb08503fd32a9d22648e63b64390=
c601f4
>=20
> The flaw can be exploited easily by connecting to a server (listening at
> 10.0.0.1 in this example) and asking for a non-existing export:
>=20
>   nbd-client 10.0.0.1 -N some-non-existing-export-name /dev/nbd1
>=20
> The root (listener) nbd-server process will exit because of failed
> negotiation procedure, effectively denying the service from others.

See https://bugs.debian.org/781547

According to the upstream author (Wouter Verhelst):

> versions <=3D 2.9.16 and >=3D 3.4 are definitely not vulnerable. Versions=
 released
> immediately after CVE-2011-1925 are *probably* not vulnerable, but I'm not
> sure (and I don't want to go test all of them...). Versions released betw=
een
> 2.9.16 and 2.9.22 (which fixes CVE-2011-1925) are vulnerable in the sense=
 that
> the bad design is still there, but I don't believe they would crash in th=
at
> manner.

Can a CVE be assigned for this please?

Cheers

--9amGYk9869ThD9tj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVWw1mAAoJEK+lG9bN5XPLH1sP/0daVaD94IxuILnXyNnWStoZ
74wDpBuZT3TxN5rjLlDs365yz6RIetIlAjOONh7NeqYcDo2rkC+UGY7J2q6+g0Ra
WMQhXOuw4gB4XXYl/GlVxSWCNuUsufwXq2Rc/PegS31AlxtNJDeMARHP53RI6BKg
94tVd7ip8AVfSEiPBjStupezb5yKnvKda3mZczfMPlj8/zYl/IIclaabmnX1Nys7
GuBkX7P1odkERg1TebprcYYieQ/VUAqNAoFd1Iv831eEb1+3VSTiX8BUmeebY1PJ
Cu82irWhIIQcLx4evdaDW21HV+GmLQ5nACzclb2hO0pjJpjAEoU1sJ08kUHvIM4w
5ZuU5PkF6Q0gcYQymNCu9lRV+9+vmU/K0CitcvSij3E7QSGnOSXiHws1q8ZoRGgk
wldlpNMiUnaV/dfJ1y41RBBlfsOeVzGLI3sA0wFByYNyZk2mxRMtbOp2IBBA0li5
d7JhbjRs0wVhv9XzTHRtdp8re7Uk/BOwbx5m99iZxQzXqt6+SkYa84JTFs7pTKBM
IIB4KehZiBIPpdViDjmeEy4KzfdwUgyo9dz8hf/XdhK9a/dji1HO063Zhwu/YUOl
1JbGSA8+z4He1FZMPw8dAXrMYxMtN+WyXcszxSi25WnlxoHEMu8gl2ykajEEzSEJ
1bXRZwmR6WeFsZ4U8fBW
=5qRR
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--
