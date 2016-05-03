X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4134" "Tuesday" "3" "May" "2016" "18:40:24" "+0200" "LSE-Advisories" "advisories@lsexperts.de" "<5728D478.3090005@lsexperts.de>" "127" "[oss-security] LSE Leading Security Experts GmbH - LSE-2016-02-03 - OXID eShop Path Traversal Vulnerability" nil nil nil "5" "2016050316:40:24" "[oss-security] LSE Leading Security Experts GmbH - LSE-2016-02-03 - OXID eShop Path Traversal Vulnerability" (number mark "U       advisories@l May  3  127/4134  " thread-indent "\"[oss-security] LSE Leading Security Experts GmbH - LSE-2016-02-03 - OXID eShop Path Traversal Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7196 invoked by uid 550); 3 May 2016 17:04:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14171 invoked from network); 3 May 2016 16:40:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lsexperts.de; h=
	content-type:content-type:mime-version:date:date:message-id
	:subject:subject:from:from; s=20150607; t=1462293625; x=
	1464108026; bh=mPrQDtbUvpRVfrYMivwORsXno1m/FAPYCp2tGrZTlhk=; b=K
	h7RYEJICL6TsS2tIba7AZQmLBtFxEPmdIJ94UN2HWWKYqGito9wXLXx3QYggvo5n
	MJqk1ZQgYlNP9ZiAiRJKsyTVFBSBOTqn15XlNRVVfkAT58vtKnPuvZ3rqbx/OTxi
	YW2fNyNTcR4kzLHPDlZyQoH92zSTvmEdNxTZdf3yeLUE0PUVEKJQ5CM+qqgjTxDz
	4rY7W6NjmIYLL/v9M5pz6xwVN6OHMdnWbRz0ZJav4Sj46kGo6LfuTPXGuWd6izWe
	wJguLCdYlB49P7M5xVeGtCqQYrbvaHK2BOxWFQfpO9eHWSuKHujfizkv1sZUy7If
	17MSDimxS1oI7NsTkPM8Q==
To: bugtraq@securityfocus.com, oss-security@lists.openwall.com,
 submissions@packetstormsecurity.org, fulldisclosure@seclists.org,
 bugs@securitytracker.com
From: LSE-Advisories <advisories@lsexperts.de>
Message-ID: <5728D478.3090005@lsexperts.de>
Date: Tue, 3 May 2016 18:40:24 +0200
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="XAhOp6maKf0Fb9BvMt0X4Q1tbBoN4VvBB"
Subject: [oss-security] LSE Leading Security Experts GmbH - LSE-2016-02-03 - OXID eShop Path
 Traversal Vulnerability

--XAhOp6maKf0Fb9BvMt0X4Q1tbBoN4VvBB
Content-Type: multipart/mixed; boundary="ICeHk8hkobvJnVwT5kOP8Bks21UAs53L1"
From: LSE-Advisories <advisories@lsexperts.de>
To: bugtraq@securityfocus.com, oss-security@lists.openwall.com,
 submissions@packetstormsecurity.org, fulldisclosure@seclists.org,
 bugs@securitytracker.com
Message-ID: <5728D478.3090005@lsexperts.de>
Subject: LSE Leading Security Experts GmbH - LSE-2016-02-03 - OXID eShop Path
 Traversal Vulnerability

--ICeHk8hkobvJnVwT5kOP8Bks21UAs53L1
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D LSE Leading Security Experts GmbH - Security Advisory 2016-02-03 =
=3D=3D=3D

OXID eShop Path Traversal Vulnerability
------------------------------------------------------------------------

Affected Versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Community Edition 4.9.7

Issue Overview
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerability Type: path traversal, privilege escalation
Version: Tested in Community Edition 4.9.7
Technical Risk: high
Likelihood of Exploitation: medium
Vendor: OXID eSales AG
Vendor URL: https://www.oxid-esales.com
Credits: LSE Leading Security Experts GmbH employee Tim Herres
Advisory URL: https://www.lsexperts.de/advisories/lse-2016-02-03.txt
Advisory Status: Public
CVE-Number: NA
CVE URL: NA
OVE-ID:OVE-20160419-0002
OVI-ID:OVI-2016-7988
CWE-ID: CWE-22
CVSS 2.0: 3.5  (AV:N/AC:M/Au:S/C:P/I:N/A:N)



Impact
=3D=3D=3D=3D=3D=3D
A missing file path validation allows an authenticated user with permission
to add or edit products to read any file on the file system without permiss=
ions.



Issue Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
While conducting an internal evaluation of the software, LSE Leading
Security Experts GmbH discovered a path traversal vulnerability in the prod=
uct
downloads function. A user with permissions to change or add products may c=
hange
the Downloads name to a local file (e.g. "../../../config.inc.php"). This m=
ay lead
to a privilege escalation.




Temporary Workaround and Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Install latest update 4.9.8/5.2.8
See http://wiki.oxidforge.org/Downloads/4.9.8_5.2.8


Proof of Concept
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Create a new product in the backend. In the "Downloads" tab set "name of th=
e uploaded
file" to "../../../config.inc.php". Go to the frontend and buy the related =
product.
Move to "My account" and choose the download section. Download the file and=
 enjoy
full database credentials.

History
=3D=3D=3D=3D=3D=3D=3D
2016-02-05 Issue discovered
2016-02-22 Vendor contacted
2016-02-24 Vendor confirmed
2016-05-03 Vendor released patch
2016-05-03 Advisory release


GPG Signature
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
This advisory is signed with the GPG key of the
LSE Leading Security Experts GmbH advisories team.
The key can be downloaded here: https://www.lsexperts.de/advisories-key-99E=
3277C.asc



--ICeHk8hkobvJnVwT5kOP8Bks21UAs53L1--

--XAhOp6maKf0Fb9BvMt0X4Q1tbBoN4VvBB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXKNR4AAoJEDgSCSGZ4yd8k0EP/j/fCLjwBo2FbMLy9tEykhtT
IdTzJUvoOn03OAWeGzou+SlyAd2yavlbogsyBpyQrGp/l44AaVERjYsQR2BAvcYB
veend/0ptLZZ66IzZd8t7oyS5KQUpEQaef8Y6PydNbPwVQzJn/Z53hXsYXJ/3AKj
ZQHGRpDv8v//Qk6jw14rMmJt6s8H7Yij32e0cIRgHHIewyO4rUTp8JdheDbFY+nM
AONt9hRSR85icZw33ADhx/nnLwvXu9XrJbjZYlsWIa7Z1Btna+IpNkWvDOg4Bypu
ANljhbj9W/24AkxXaQqpT5s6PWsg8MPmKuQ2vcCa6XuAXHcZr9gptUi93eMgbeQd
OBla/x6AN9jgvgkf67QLJFYKgxhIc80DxtJK33/gGOkdn+tq22TeI5C3+yFS3ods
F1eD2UsjBOdIzLTV61l/R4p91TP+U9pnvzaEd6PIUAQCyk11ElAyTJ0+m1wVNRi6
aG7kicWBLVNQpCL7YLWbvGp8Y7OkUx/esdZHObVCMZwYbZ8L51J+RgYvMGJtPleV
unm297QVkNm6Dr/OJSMbCAzkryVGs/xbI6HCF4n0sosA8Lvi6tfXpKWzxBPJqH8G
QTHN/cg8QRkG7Qefvnzb7NIm6tVjGZNufmMFJhLE9TtcRhCzQoLYFTALelS61tO4
LLKV+znLcAy6LUKGIIbG
=oz0h
-----END PGP SIGNATURE-----

--XAhOp6maKf0Fb9BvMt0X4Q1tbBoN4VvBB--
