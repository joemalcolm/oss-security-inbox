X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2225" "Wednesday" "21" "September" "2016" "00:39:23" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<f4140eea-595f-612b-8875-36d117aedeb0@redhat.com>" "64" "[oss-security] CVE request for vulnerability in OpenStack Nova" nil nil nil "9" "2016092100:39:23" "[oss-security] CVE request for vulnerability in OpenStack Nova" (number mark "U       tdecacqu@red Sep 21   64/2225  " thread-indent "\"[oss-security] CVE request for vulnerability in OpenStack Nova\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13569 invoked by uid 550); 21 Sep 2016 00:39:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13551 invoked from network); 21 Sep 2016 00:39:20 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <f4140eea-595f-612b-8875-36d117aedeb0@redhat.com>
Date: Wed, 21 Sep 2016 00:39:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6A4pPoDiMh15LqnKR0VBJAhkFm4NHtlxu"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 21 Sep 2016 00:39:08 +0000 (UTC)
Subject: [oss-security] CVE request for vulnerability in OpenStack Nova

--6A4pPoDiMh15LqnKR0VBJAhkFm4NHtlxu
Content-Type: multipart/mixed; boundary="cqlWf3FkT71GfvHcSpBfQsT5kc8WRpPv5"
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <f4140eea-595f-612b-8875-36d117aedeb0@redhat.com>
Subject: CVE request for vulnerability in OpenStack Nova

--cqlWf3FkT71GfvHcSpBfQsT5kc8WRpPv5
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Nova may fail to delete images in resize state regression
Reporter: Rajesh Tailor (Red Hat)
Products: Nova
Affects: =3D=3D13.0.0

Description:
Rajesh Tailor from Red Hat reported a vulnerability in Nova. If an
authenticated user deletes an instance while it is in resize state, it
will cause the original instance to not be deleted from the compute node
it was running on. An attacker can use this to launch a denial of
service attack. All Nova setups are affected.

Note:
This bug is similar to OSSA-2015-017 (CVE-2015-3280) and was
re-introduced in the first release of Mitaka version of Nova and it was
re-fixed in nova-13.1.0.

References:
https://launchpad.net/bugs/1589821

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--cqlWf3FkT71GfvHcSpBfQsT5kc8WRpPv5--

--6A4pPoDiMh15LqnKR0VBJAhkFm4NHtlxu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX4dbAAAoJECK5oFySXMXYxMwH/AvUJyBXXka7Mj255AHmlXMd
LNki1YWoYzOWuQdZvfpS/artqOrO8WJCIflkDVto6b0yMlI15d/mvgWq9t7O9Ljp
1RQ+cW11uob25mcTwx49ZMYLUiI+t9fkF9nVi5aSii/ToKm3e7rFQHxOBpw/d3IE
i/suab5Crzpxhwe4bwQuxuWRB2wGDXlPdvSI51+G1VDYfkB5tgjs77m/3hCxogoP
DfxIcE/UBDfcIYtKUVd6KvRZU8MhVm6frDjegWFogQVOBxepwOvP/3lagsJTY7jh
jY5gY5Ek64BUrpyMp6BsVuw4Av67NU3V0obCuzx2Ifb1r/bPnL2b4ntYFW/zkHU=
=GC5q
-----END PGP SIGNATURE-----

--6A4pPoDiMh15LqnKR0VBJAhkFm4NHtlxu--
