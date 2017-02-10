X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1933" "Friday" "10" "February" "2017" "12:59:16" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20170210205916.GB28439@hunt>" "53" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" "^Date:" nil nil "2" "2017021020:59:16" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "        seth.arnold@ Feb 10   53/1933  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22367 invoked by uid 550); 10 Feb 2017 20:59:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22344 invoked from network); 10 Feb 2017 20:59:29 -0000
Message-ID: <20170210205916.GB28439@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uQr8t48UFsdbeI+V"
Content-Disposition: inline
In-Reply-To: <616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Fri, 10 Feb 2017 12:59:16 -0800
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process
To: oss-security@lists.openwall.com

--uQr8t48UFsdbeI+V
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 10, 2017 at 03:40:45PM +0000, Priedhorsky, Reid wrote:
> I=E2=80=99ve been using the CVE requests on oss-security to maintain a
> reasonably comprehensive and timely list of vulnerabilities for specific
> products. It=E2=80=99s not clear to me how to do this when CVE requests h=
appen
> offline in a web form.
>=20
> Has this use case been considered? Is there an alternate way to
> accomplish my goal?

Another part of the email from MITRE included "When you enter a
vulnerability description on the web form, the CVE and description will
typically be available on the NVD and CVE web sites at the same time or
shortly after we email the CVE ID to you."

While the oss-security list has been the best resource of information for
CVEs for us, part of our CVE ingestion is to download data from NVD and
MITRE directly:

https://nvd.nist.gov/download
https://cve.mitre.org/data/downloads/allitems.xml

Debian's database is also very useful to us:
https://anonscm.debian.org/viewvc/secure-testing/data/CVE/

And of course our database is freely available as well:
https://code.launchpad.net/~ubuntu-security/ubuntu-cve-tracker/master

I hope this can help you adapt your processes as MITRE adapts theirs.

Thanks

--uQr8t48UFsdbeI+V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYnimkAAoJEPMhclmdjS6X8I8IAIzvHufqtC7borbLI3N+SCV8
iUV/Q+OKZEHQSRKhc7gxt3L4mX0CdbZsbvdfzfdrzKD/zD0LcaDhn9hDOv3SpoF/
RCbBSv+XitGQ9jyhByahRm0/0wlpKbxAaXQzNX8rZfZxis5IpdHsGVpkhPh4AZyM
2emhKSSVLxHu0D4N+COeOISVEbcoe6tqsBVsWoDOkjz6XLTCJ3p6prqspL8GkKrj
MJR2vNq8S8GdB9TpCtYT+av92VgH4bMP5cmrkSp0Qoy5q/hvUcreEMB+v09upo9X
QJ+d1Wj+FyzU51dcpHXyZW96myTeep2Dn3hEiXu5LvKSFUtHPkkk0yAdaNWMEUk=
=yRG9
-----END PGP SIGNATURE-----

--uQr8t48UFsdbeI+V--
