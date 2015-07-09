X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1746" "Thursday" "9" "July" "2015" "10:31:13" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150709083112.GH6144@mail.corp.redhat.com>" "51" "[oss-security] Re: CVE request: pure-ftpd denial of service in glob_()" nil nil nil "7" "2015070908:31:13" "[oss-security] Re: CVE request: pure-ftpd denial of service in glob_()" (number mark "        vkaigoro@red Jul  9   51/1746  " thread-indent "\"[oss-security] Re: CVE request: pure-ftpd denial of service in glob_()\"\n") "<20150618170301.CF5FD132F024@smtpvbsrv1.mitre.org>" ("<20150618151358.GA18454@mail.corp.redhat.com>" "<20150618170301.CF5FD132F024@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10157 invoked by uid 550); 9 Jul 2015 08:31:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10129 invoked from network); 9 Jul 2015 08:31:31 -0000
Message-ID: <20150709083112.GH6144@mail.corp.redhat.com>
References: <20150618151358.GA18454@mail.corp.redhat.com>
 <20150618170301.CF5FD132F024@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cfJ13FhsvNR/yOpm"
Content-Disposition: inline
In-Reply-To: <20150618170301.CF5FD132F024@smtpvbsrv1.mitre.org>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Cc: oss-security@lists.openwall.com
Date: Thu, 9 Jul 2015 10:31:13 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: pure-ftpd denial of service in glob_()
To: cve-assign@mitre.org

--cfJ13FhsvNR/yOpm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, 18 Jun 2015, cve-assign@mitre.org wrote:

>=20
> > https://github.com/jedisct1/pure-ftpd/commit/0627004e23a24108785dc1506c=
5767392b90f807
>=20
> Can you clarify the security impact? We have not looked into the code
> paths or the overall product design. Is this a process that is
> specific to one FTP client? Is the problem that the gl_errfunc
> assignment doesn't occur and there is always a dereference of a NULL
> function pointer? Is there a commonly relevant consequence other than
> the ability of an FTP client to conduct a DoS attack against its own
> session?

As per [1]:

It won't crash the whole service, only the user session. It is
not going to block and dump a core file either, except if compiled in
DEBUG mode.

It appears that there's no security impact here, please disregard this
CVE request.

[1]: https://github.com/jedisct1/pure-ftpd/commit/0627004e23a24108785dc1506=
c5767392b90f807#commitcomment-11764342

--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828

--cfJ13FhsvNR/yOpm
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVnjFQAAoJECF7+fyrtugoOjwH/3hj2ucZUPa6f/T4ENJF5ynW
CU1khVKf0tLr+e6GOOYwAlGD4xK7mpHHVU6bLTYvh9lu5RUInBCsr++WgAoiJ0AJ
HknEJUzYOavUzltuHgh7czCX5N2l1OBI6YwxTkdPliGiJtRVWMe470Yvwb61yyYB
F0z7Wsyx9q2kP3HEnIskYqWV8n/wrd1bUAmm1GlcTAZ5l3WTkP4apR4uQkoGMyWe
/4JitRX1YzCzFK0yMmpnix3wZ+24AEN5MhbFXwmdkgadd5mFaa4jNOifJgafyXoA
nIq63M+u+hbGnF8xkfWl+zCuucml8jkivP+jaCF+dowQuGhlPLJ34RGUuvPSL+A=
=hVrn
-----END PGP SIGNATURE-----

--cfJ13FhsvNR/yOpm--
