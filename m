X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1873" "Monday" "21" "November" "2016" "11:58:29" "+0100" "Cedric Buissart" "cbuissar@redhat.com" "<1935548.nJNUl5RvF6@cbuissar-ltop>" "60" "[oss-security] CVE-2016-8638 ipsilon: DoS via logging out all open SAML2 sessions" "^Date:" nil nil "11" "2016112110:58:29" "[oss-security] CVE-2016-8638 ipsilon: DoS via logging out all open SAML2 sessions" (number mark "U       cbuissar@red Nov 21   60/1873  " thread-indent "\"[oss-security] CVE-2016-8638 ipsilon: DoS via logging out all open SAML2 sessions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26016 invoked by uid 550); 21 Nov 2016 10:59:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25998 invoked from network); 21 Nov 2016 10:59:05 -0000
Message-ID: <1935548.nJNUl5RvF6@cbuissar-ltop>
Organization: Red Hat
User-Agent: KMail/5.3.2 (Linux/4.7.9-200.fc24.x86_64; KDE/5.27.0; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1780561.xZePTIi76E"; micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Mon, 21 Nov 2016 10:58:54 +0000 (UTC)
Date: Mon, 21 Nov 2016 11:58:29 +0100
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-8638 ipsilon: DoS via logging out all open SAML2 sessions
To: oss-security@lists.openwall.com

--nextPart1780561.xZePTIi76E
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

This is to inform you of the following CVE:

CVE-2016-8638 ipsilon: DoS via logging out all open SAML2 sessions

Description :
A vulnerability in ipsilon was found that allows attacker to log out active
sessions of other users. This issue is related to how it tracks sessions, and
allows an unauthenticated attacker to view and terminate active sessions from
other users.

Note: this bug can also be triggered accidentally.

Upstream patch : 
https://pagure.io/ipsilon/c/511fa8b7001c2f9a42301aa1d4b85aaf170a461c

Vulnerable versions: 
All versions of Ipsilon 2.0 before 2.0.2 are vulnerable.
All versions of Ipsilon 1.2 before 1.2.1 are vulnerable.
All versions of Ipsilon 1.1 before 1.1.2 are vulnerable.
All versions of Ipsilon 1.0 before 1.0.3 are vulnerable.

Impact: Important
CVSS3 scoring : 8.2 AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:H

Reported by: Patrick Uiterwijk (Red Hat) and Howard Johnson

Reference :
https://ipsilon-project.org/advisory/CVE-2016-8638.txt

Best Regards,

--
Cedric Buissart
Red Hat Product Security
-----------------------------------------
--nextPart1780561.xZePTIi76E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCgAGBQJYMtNVAAoJECISsYvaK7kIhMwH/AxrS4mQeHGeAb3bvBgqEfNH
ok+nWHvAJwDVaNZdj9woMFBBYCOr5QwZXhYldy7jY03BrbuF/YSljnBhCRjJMi70
5YQIFy7Jy7iB5yL2UPlewQPYy+jGUj8VLUzBXq6vMt9/K58qNJFqgyZ87wp9c1vC
GkW+bdE7jh+OO7wPuKHJURC6gXIO4MXsgrU9UJasnxTXKITh2e9cLz3d1BbjMJY3
PBzqPjPtot8DLE7bkNkW4tHKV/fAo0Om50jKKQMLVZanNypI+U4+/XaG2He9lkXf
KOzI1Tt68ilGPSVG66oop6h5sLtdp8miUoW5qbN27xUKWgJk1wEmktAwdkdaLWA=
=6sfK
-----END PGP SIGNATURE-----

--nextPart1780561.xZePTIi76E--

