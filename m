X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1531" "Thursday" "18" "June" "2015" "17:13:58" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150618151358.GA18454@mail.corp.redhat.com>" "50" "[oss-security] CVE request: pure-ftpd denial of service in glob_()" nil nil nil "6" "2015061815:13:58" "[oss-security] CVE request: pure-ftpd denial of service in glob_()" (number mark "U       vkaigoro@red Jun 18   50/1531  " thread-indent "\"[oss-security] CVE request: pure-ftpd denial of service in glob_()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15472 invoked by uid 550); 18 Jun 2015 15:00:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15441 invoked from network); 18 Jun 2015 15:00:24 -0000
Date: Thu, 18 Jun 2015 17:13:58 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20150618151358.GA18454@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE request: pure-ftpd denial of service in glob_()

--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Version 1.0.40 of pure-FTPd fixes a potential denial of service issue.

=46rom the NEWS file:

 - The process handling a user session could be crashed by trying to
 match a file pattern longer than the maximum length for a path. This
 has been fixed. Upgrading is recommended.

Upstream commit that fixes this:
https://github.com/jedisct1/pure-ftpd/commit/0627004e23a24108785dc1506c5767=
392b90f807

References:
https://bugs.gentoo.org/show_bug.cgi?id=3D552254
https://bugzilla.redhat.com/1233267

Can a CVE be assigned to this please?

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828
Free/Busy status: https://url.corp.redhat.com/vk-free-busy-status

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/

--Q68bSM7Ycu6FN28Q
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVguA2AAoJECF7+fyrtugoCqcIAMT7aHMqaZrxU+PB3f1vEQW4
cYB1PiBB0m1q3xZmi/Ycu9LbTGozjmv1rzjlO1+3VMMzhXgj9zQbEiAYzMC5lOq2
dYktKiTTyM8iIAxtoHJpxZxtKOde+smsLFbJax80DvRmQMAA51solhHnVWRy70H0
avK2vsSQtsbfontGTu1Oo6yQdw1enWxET7jC6ViLnG8mxYQhjciGv3uys8/9AfBO
sDWIIKo8KYk6l5pIsvBW0TVjvVWdA2kTQI4RarxFraUgpQo0PHL62zbRJMkrnjFO
w1ge7ayTFTKmsSXZl1UHSTi+9d+zQe3oOsyPeM++1jiMy2haRxzH/BFejTFqG0U=
=Kvyi
-----END PGP SIGNATURE-----

--Q68bSM7Ycu6FN28Q--
