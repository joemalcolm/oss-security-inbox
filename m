X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2425" "Wednesday" "31" "July" "2019" "17:26:22" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<20190731152622.GA24743@cbuissar-ltop.localdomain>" "70" "[oss-security] icedtea-web: CVE-2019-10181 CVE-2019-10182 CVE-2019-10185" nil nil nil "7" "2019073115:26:22" "[oss-security] icedtea-web: CVE-2019-10181 CVE-2019-10182 CVE-2019-10185" (number mark "U       cbuissar@red Jul 31   70/2425  " thread-indent "\"[oss-security] icedtea-web: CVE-2019-10181 CVE-2019-10182 CVE-2019-10185\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] icedtea-web: CVE-2019-10181 CVE-2019-10182 CVE-2019-10185" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32220 invoked by uid 550); 31 Jul 2019 15:26:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32196 invoked from network); 31 Jul 2019 15:26:37 -0000
Date: Wed, 31 Jul 2019 17:26:22 +0200
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20190731152622.GA24743@cbuissar-ltop.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Wed, 31 Jul 2019 15:26:25 +0000 (UTC)
Subject: [oss-security] icedtea-web: CVE-2019-10181 CVE-2019-10182 CVE-2019-10185

--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

The IcedTea-Web project provides a Java web browser plug-in and an
implementation of Java Web Start, which is based on the Netx project.

Upstream URL : http://icedtea.classpath.org/wiki/IcedTea-Web

This is to disclose the following 3 vulnerabilities :

CVE-2019-10182 and CVE-2019-10185 are considered High, since they can
easily be used to take over the client before checking signatures.

All versions of icedtea-web are believed to be vulnerable.

See the following pull request for the proposed fixes :
https://github.com/AdoptOpenJDK/IcedTea-Web/pull/344


* CVE-2019-10182 icedtea-web: path traversal while processing <jar/>
elements of JNLP files results in arbitrary file overwrite

It was found that icedtea-web did not properly sanitize paths from
<jar/> elements in JNLP files. An attacker could trick a victim into
running a specially crafted application and use this flaw to upload
arbitrary files to arbitrary locations in the context of the user.


* CVE-2019-10185 icedtea-web: directory traversal in the nested jar
auto-extraction leading to arbitrary file overwrite

It was found that icedtea-web was vulnerable to a zip-slip attack during
auto-extraction of a JAR file. An attacker could use this flaw to write
files to arbitrary locations. This could also be used to replace the
main running application and, possibly, break out of the sandbox.


* CVE-2019-10181 icedtea-web: unsigned code injection in a signed JAR
file

It was found that executable code could be injected in a JAR file
without compromising the signature verification. An attacker could use
this flaw to inject code in a trusted JAR. The code would be executed
inside the sandbox.


Red Hat would like to thank Imre Rad for reporting all the
vulnerabilities above.


Thanks!

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJdQbMRAAoJECISsYvaK7kIbvgH/1uIrenXmOCKlmdhYJbBm94L
3dsge26LPK8Mi5Wkr6aC/nD7irusZrkGomchv7COtux8bgd0uF58Kwzyt2kuAydD
QNsMu9GOBIRwGWAWfAxomZyqhH9NGQPJgyXwHA2TRw3cc9MYxOjVHJqZjx2U95bx
k3Kzfmi989RPDNuYVOy1/430jFFK9l5v/UOHs3Ir97g94FqzvVZQAkqx6u7Vk1PE
z0/+NsTlq9zFOVfKsT6Je3u87taEBop6WP781NP77eReRvGq5mYujlfpABsU/5qQ
kXdrV1MeQUGuqMDf/Uj440mZS271sYVjijaU3WUS6eZxHC68Y69o/36mjGG5bCw=
=g6jF
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--
