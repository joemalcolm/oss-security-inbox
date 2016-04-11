X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1449" "Monday" "11" "April" "2016" "08:42:15" "+0000" "Pascal Cuoq" "cuoq@trust-in-soft.com" "<CFA7B491-4950-4B93-A00D-AD33B7EDD420@trust-in-soft.com>" "36" "[oss-security] Infinite loops parsing malicious DER certificates in libtasn1 4.7" nil nil nil "4" "2016041108:42:15" "[oss-security] Infinite loops parsing malicious DER certificates in libtasn1 4.7" (number mark "U       cuoq@trust-i Apr 11   36/1449  " thread-indent "\"[oss-security] Infinite loops parsing malicious DER certificates in libtasn1 4.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22457 invoked by uid 550); 11 Apr 2016 08:45:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20345 invoked from network); 11 Apr 2016 08:41:07 -0000
From: Pascal Cuoq <cuoq@trust-in-soft.com>
To: "cve-assign@mitre.org" <cve-assign@mitre.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Nikos Mavrogiannopoulos <n.mavrogiannopoulos@gmail.com>
Thread-Topic: Infinite loops parsing malicious DER certificates in libtasn1
 4.7
Thread-Index: AQHRk84MiTMMHzEbo0uCA8h9UevDow==
Date: Mon, 11 Apr 2016 08:42:15 +0000
Message-ID: <CFA7B491-4950-4B93-A00D-AD33B7EDD420@trust-in-soft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [86.246.37.11]
Content-Type: multipart/alternative;
	boundary="_000_CFA7B49149504B93A00DAD33B7EDD420trustinsoftcom_"
MIME-Version: 1.0
Subject: [oss-security] Infinite loops parsing malicious DER certificates in libtasn1 4.7

--_000_CFA7B49149504B93A00DAD33B7EDD420trustinsoftcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

The libtasn1 library, in its 4.7 version, can loop for a long time or indef=
initely when it is used to parse DER representations of X509 certificates, =
leading to a denial of service. Some of these loops may in addition increas=
e heap or stack usage, leading to more issues.

These issues were found by Pascal Cuoq and Miod Vallat using american fuzzy=
 lop. They are fixed in libtasn1 version 4.8.

Proof of concept, using the test files distributed in http://ftp.gnu.org/gn=
u/libtasn1/libtasn1-4.8.tar.gz :

~/libtasn1-4.8 $ asn1Decoding -v
asn1Decoding (libtasn1) 4.7
=85
~/libtasn1-4.8 $ asn1Decoding tests/pkix.asn tests/invalid-x509/id-000000.d=
er PKIX1.Certificate
tests/pkix.asn:332: Warning: VisibleString is a built-in ASN.1 type.
tests/pkix.asn:334: Warning: NumericString is a built-in ASN.1 type.
tests/pkix.asn:336: Warning: IA5String is a built-in ASN.1 type.
tests/pkix.asn:338: Warning: TeletexString is a built-in ASN.1 type.
tests/pkix.asn:340: Warning: PrintableString is a built-in ASN.1 type.
tests/pkix.asn:342: Warning: UniversalString is a built-in ASN.1 type.
tests/pkix.asn:345: Warning: BMPString is a built-in ASN.1 type.
tests/pkix.asn:349: Warning: UTF8String is a built-in ASN.1 type.
Parse: done.
^C





--_000_CFA7B49149504B93A00DAD33B7EDD420trustinsoftcom_--
