X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1628" "Friday" "7" "July" "2017" "11:33:14" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170707183314.GA23728@hunt>" "49" "[oss-security] [cve-request@mitre.org: Re: [scr357564] sqlite3 - fix in progress]" "^Date:" nil nil "7" "2017070718:33:14" "[oss-security] [cve-request@mitre.org: Re: [scr357564] sqlite3 - fix in progress]" (number mark "        seth.arnold@ Jul  7   49/1628  " thread-indent "\"[oss-security] [cve-request@mitre.org: Re: [scr357564] sqlite3 - fix in progress]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3901 invoked by uid 550); 7 Jul 2017 18:33:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3875 invoked from network); 7 Jul 2017 18:33:28 -0000
Message-ID: <20170707183314.GA23728@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Fri, 7 Jul 2017 11:33:14 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [cve-request@mitre.org: Re: [scr357564] sqlite3 - fix in progress]
To: oss-security@lists.openwall.com

--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello; some buffer over-reads were recently discovered in sqlite3 via
Google's clusterfuzz of GDAL. Thanks to Even Rouault for coordinating and
D. Richard Hipp for the fast and friendly fix.

Here's the description and references I supplied to MITRE, and their
(trimmed) reply:

----- Forwarded message from cve-request@mitre.org -----
> [Suggested description]
> Undersize RTree blobs in a maliciously-constructed SQLite3 database file
> may allow buffer-overreads, un-initialized data use, or possibly other
> unspecified behaviour.
>
> [Reference]
> https://sqlite.org/src/vpatch?from=0db20efe201736b3&to=66de6f4a9504ec26
> https://sqlite.org/src/info/66de6f4a
> https://bugs.launchpad.net/ubuntu/+source/sqlite3/+bug/1700937
> https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=2405
> http://marc.info/?l=sqlite-users&m=149933696214713&w=2
>
> [Discoverer]
> Google's project clusterfuzz

Use CVE-2017-10989.

----- End forwarded message -----

Thanks

--82I3+IH0IqGh5yIs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZX9PqAAoJEPMhclmdjS6XKToH/0rTu891KJ3yZoSXg1gVvwqy
LNfi+3IdOeY59beuJEUh204NbRRCvxJkeP7XfCzw2qOop8a6Ly5bH+LL51Zwc8cn
Wh+5mWPdU2gzzKN0t0v1s7aCysLcedxkhOE+Pw/syxbcRS86I7zjjdimFJORpMhR
kWaVtZjN8H7BB4616Y2HDY0Hy2cTYtz/F3vXkOaGE2Ybpwqbk1FtjwNapvuZtj7C
Io35z/Op0JYxbBenxgPnwLntZOPxAYX4sJYxp0BnQogG6nIYfDJiYrXb3zQwSymg
uGfHtCEMZjPdTuqVatsEmDeiGNqbJ/ioK6syN6DeYS7AvF1dIJXkSxrbiV9658A=
=Lunc
-----END PGP SIGNATURE-----

--82I3+IH0IqGh5yIs--
