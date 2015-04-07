X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1745" "Tuesday" "7" "April" "2015" "19:15:27" "+0100" "Tom Chiverton" "tomc@apache.org" "<6741161.mB5NBRWkoP@wopr.house>" "46" "[oss-security] CVE-2015-1773 Apache Flex reflected XSS vulnerability" nil nil nil "4" "2015040718:15:27" "[oss-security] CVE-2015-1773 Apache Flex reflected XSS vulnerability" (number mark "        tomc@apache. Apr  7   46/1745  " thread-indent "\"[oss-security] CVE-2015-1773 Apache Flex reflected XSS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21690 invoked by uid 550); 7 Apr 2015 18:27:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13714 invoked from network); 7 Apr 2015 18:15:39 -0000
Message-ID: <6741161.mB5NBRWkoP@wopr.house>
Organization: Apache Flex
User-Agent: KMail/4.14.2 (Linux/3.16.0-33-generic; KDE/4.14.2; i686; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart16235447.7zzOP2HANb"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Date: Tue, 07 Apr 2015 19:15:27 +0100
From: Tom Chiverton <tomc@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1773 Apache Flex reflected XSS vulnerability
To: security@apache.org, oss-security@lists.openwall.com, bugtraq@securityfocus.com

--nextPart16235447.7zzOP2HANb
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

CVE-2015-1773 Apache Flex reflected XSS vulnerability

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
All versions of Apache Flex before 4.14.1

Description:
The asdoc tool produced JavaScript code that was vulnerable to a reflected XSS attack. A request with a specially crafted URL could execute malicious JavaScript in the user's web browser. The attacker would have to convince the user to click the attacker's crafted link.

This only affects the output of the 'asdoc' tool, not the output of the 'mxmlc' compiler or deployed Apache Flex applications.

Mitigation:
Users should upgrade to the most recent version of Apache Flex and regenerate any local files produced by the asdoc tool.
If you have made local modifications to the asdoc index.html file, such as altering the TITLE tags, you will need to make sure these are preserved.

Alternatively, apply the following changes to any already generated asdoc index.html files, as well as to the file
asdoc/templates/index.html in any older Apache Flex SDKs
http://bit.ly/apache-flex-asdoc-fix

Credit:
Thanks to Radjnies Bhansingh of Securify BV for reporting this issue.

Tom Chiverton
Apache Flex PMC
--nextPart16235447.7zzOP2HANb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iF4EABEIAAYFAlUkHr8ACgkQReH4oC6rjLf1VAD/RjOcfElvMa1pfsqDUc1y94lj
w2cwYIIUylQUybLQi5AA/0RlwZRpVAjzOh1+EvQnfESzXwCrwOXY1LTu8ZCAbugC
=iuVM
-----END PGP SIGNATURE-----

--nextPart16235447.7zzOP2HANb--

