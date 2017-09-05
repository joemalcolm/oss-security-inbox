X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2555" "Tuesday" "5" "September" "2017" "18:24:24" "+0200" "Thomas Jarosch" "thomas.jarosch@intra2net.com" "<39621748.Sj05Oj4PW6@nova.m.i2n>" "81" "[oss-security] CVE-2017-1000249: file: stack based buffer overflow" nil nil nil "9" "2017090516:24:24" "[oss-security] CVE-2017-1000249: file: stack based buffer overflow" (number mark "U       thomas.jaros Sep  5   81/2555  " thread-indent "\"[oss-security] CVE-2017-1000249: file: stack based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8181 invoked by uid 550); 5 Sep 2017 16:28:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5976 invoked from network); 5 Sep 2017 16:24:39 -0000
X-Virus-Scanned: by Intra2net Mail Security (AVE=8.3.46.6,VDF=8.14.19.50)
From: Thomas Jarosch <thomas.jarosch@intra2net.com>
To: oss-security@lists.openwall.com
Date: Tue, 05 Sep 2017 18:24:24 +0200
Message-ID: <39621748.Sj05Oj4PW6@nova.m.i2n>
Organization: Intra2net AG
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2771929.PriRzGynN4"; micalg="pgp-sha1"; protocol="application/pgp-signature"
Subject: [oss-security] CVE-2017-1000249: file: stack based buffer overflow

--nextPart2771929.PriRzGynN4
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello oss security,

file(1) versions 5.29, 5.30 and 5.31 contain a stack based
buffer overflow when parsing a specially crafted input file.

The issue lets an attacker overwrite a fixed 20 bytes stack buffer
with a specially crafted .notes section in an ELF binary file.

There are systems like amavisd-new that automatically run file(1)
on every email attachment. To prevent an automated exploit by email,
another layer of protection like -fstack-protector is needed.

Upstream fix:
https://github.com/file/file/commit/35c94dc6acc418f1ad7f6241a6680e5327495793

The issue was introduced with this code change in October 2016:
https://github.com/file/file/commit/9611f31313a93aa036389c5f3b15eea53510d4d1

file-5.32 has been released including the fix:
ftp://ftp.astron.com/pub/file/file-5.32.tar.gz
ftp://ftp.astron.com/pub/file/file-5.32.tar.gz.asc

[An official release announcement on the file mailinglist
will follow once a temporary outage of the mailinglist is solved]


The cppcheck tool helped to discover the issue:
----
[readelf.c:514]: (warning) Logical disjunction always evaluates to true:
descsz >= 4 || descsz <= 20.
----


Credits:
The issue has been found by Thomas Jarosch of Intra2net AG.
Code fix and new release provided by Christos Zoulas.


Fixed packages from distributions should start to be available soon.


Timeline (key entries):
2017-08-26: Notified the maintainer Christos Zoulas
2017-08-27: Christos pushed a fix to CVS / git
            with innocent looking commit message

2017-08-28: Notified Redhat security team to coordinate release
            and request CVE ID. Redhat responds it's better to directly
            contact the distros list instead through them.

2017-09-01: Notified distros mailinglist, asking for CVE ID
            and requesting embargo until 2017-09-08
2017-09-01: CVE-2017-1000249 ID is assigned

2017-09-04: After discussion that the issue is semi-public already,
            moved embargo date to 2017-09-05
2017-09-05: Public release


Best regards,
Thomas Jarosch / Intra2net AG

--nextPart2771929.PriRzGynN4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEABECAAYFAlmuz7gACgkQwLWsl6nGk7uoMACfTiFGwaVbsL4biNcRKPiwqCoI
ov4AoJeMgElvyzEAj4riZYAlrFyDGk4Z
=VnPi
-----END PGP SIGNATURE-----

--nextPart2771929.PriRzGynN4--

