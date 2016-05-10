X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2968" "Tuesday" "10" "May" "2016" "20:08:05" "+0200" "Andreas Stieger" "astieger@suse.com" "<52abc457-86a6-6349-aeca-0b0d591c3b3d@suse.com>" "75" "[oss-security] CVE request: libksba out-of-bouds read remote DOS issue fixed in 1.3.4" nil nil nil "5" "2016051018:08:05" "[oss-security] CVE request: libksba out-of-bouds read remote DOS issue fixed in 1.3.4" (number mark "U       astieger@sus May 10   75/2968  " thread-indent "\"[oss-security] CVE request: libksba out-of-bouds read remote DOS issue fixed in 1.3.4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15980 invoked by uid 550); 10 May 2016 18:08:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15962 invoked from network); 10 May 2016 18:08:40 -0000
To: oss-security@lists.openwall.com, cve-assign@mitre.org
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Message-ID: <52abc457-86a6-6349-aeca-0b0d591c3b3d@suse.com>
Date: Tue, 10 May 2016 20:08:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dMUgXu2KRlgXmSf7HT6d7wKct617cXJlp"
Subject: [oss-security] CVE request: libksba out-of-bouds read remote DOS issue fixed in
 1.3.4

--dMUgXu2KRlgXmSf7HT6d7wKct617cXJlp
Content-Type: multipart/mixed; boundary="2C8CD6OCNwONk3nMdB5A28jKkk6L5KHHW"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <52abc457-86a6-6349-aeca-0b0d591c3b3d@suse.com>
Subject: CVE request: libksba out-of-bouds read remote DOS issue fixed in
 1.3.4

--2C8CD6OCNwONk3nMdB5A28jKkk6L5KHHW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

libksba 1.3.4 was released with the following in NEWS:

> * Fixed two OOB read access bugs which could be used to force a DoS.

The first is http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dco=
mmit;h=3Da7eed17a0b2a1c09ef986f3b4b323cd31cea2b64

> Fix possible read access beyond the buffer. > > * src/ber-help.c (_ksba_b=
er_parse_tl): Add extra sanity check. > *
src/cert.c (ksba_cert_get_cert_policies): Check TLV given length >
against buffer length. > (ksba_cert_get_ext_key_usages): Ditto. > *
src/ocsp.c (parse_asntime_into_isotime): Ditto. > -- > > The returned
length of the object from _ksba_ber_parse_tl (ti.length) > was not
always checked against the actual buffer length, thus leading > to a
read access after the end of the buffer and thus a segv. > >
GnuPG-bug-id: 2344 > Reported-by: Pascal Cuoq > Signed-off-by: Werner
Koch <wk@gnupg.org <mailto:wk@gnupg.org>>



The second (6be61daac047d8e6aa941eb103f8e71a1d4e3c75
<http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dcommit;h=3D6be=
61daac047d8e6aa941eb103f8e71a1d4e3c75>) was already assigned CVE-2016-4574 =
(incomplete fix for CVE-2016-4356) elsethread.
http://seclists.org/oss-sec/2016/q2/300

Could a CVE be assigned to this issue?

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)



--2C8CD6OCNwONk3nMdB5A28jKkk6L5KHHW--

--dMUgXu2KRlgXmSf7HT6d7wKct617cXJlp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJXMiOLAAoJECzWqVXhWUVGL+QP/RYTabTFYVTzh8LnF/syjKsc
mjxfJ0pBt3OPCD0GJbiMKT+PI/2tjU6/VdfgPLlGTeYcWcM9O0FvBn4gOwTZKH1Y
qjwNInX+RykTRmk1QVz6ZCImoh/zV/wQ3Q6gYuKnIRZQYUy3jNSUG360mwq7myc4
EBHdNoV9kvslWwiRBBgPRTzBDo155n/LOsTIio5Vu7thDPVpRjBgMSYYJiEi+5m7
cKknwPbV6HFB9lT3hcBGzZLXlc4O3pzeEIdbV1vxeWTfH1aDUG5QQLKIowE0cDpc
4Ee8TNObwnBfF+5vsIKhZCrgmJc5ZDRY9MBPDEZhssir9rb/8GJiydQJT8MYd5XB
t9Bu/IU25gmvF+EMSYBKErre6tHNTP1oO/NetAtc5NeyCYSDRJX5rSIqHE3vukTl
VkJcmauSyvxontpYhSb2YtYvOZk3ucS/cKDANcC4kZSDKo7rrqwSHyZ0DV03niR8
wbGgxAru/8AjK7jc0Z8xLBTynZ9c5O/XCUh47ju2rGwg5UKhsdRw7Hr2ChRHNC8/
aSCi+mOq5vS2bBF7U8aoMJDvEASJyH9WkKYqLvuChRrLhATZH3MDOiOjU+2YBomq
byIA08WiutAGCZ1JVL+CTPPL8hpQpQaQem8QEh0kFjLzmktQTzNTYSGHHAfIQ9wN
13UFJVD2yv2qgKIcYd2q
=HNXA
-----END PGP SIGNATURE-----

--dMUgXu2KRlgXmSf7HT6d7wKct617cXJlp--
