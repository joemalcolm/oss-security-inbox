X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6016" "Wednesday" "15" "February" "2017" "11:26:32" "+0100" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<05917198-0341-0542-858e-e475797c9636@x41-dsec.de>" "197" "[oss-security] Advisory X41-2017-002: Multiple Vulnerabilities in ytnef" nil nil nil "2" "2017021510:26:32" "[oss-security] Advisory X41-2017-002: Multiple Vulnerabilities in ytnef" (number mark "U       advisories@x Feb 15  197/6016  " thread-indent "\"[oss-security] Advisory X41-2017-002: Multiple Vulnerabilities in ytnef\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22019 invoked by uid 550); 15 Feb 2017 12:25:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20209 invoked from network); 15 Feb 2017 10:27:48 -0000
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org,
 bugtraq@securityfocus.com, distros@vs.openwall.org
Organization: X41 D-Sec GmbH
Message-ID: <05917198-0341-0542-858e-e475797c9636@x41-dsec.de>
Date: Wed, 15 Feb 2017 11:26:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="PhsrblgVsIkArouwseIUmObsHM8KvTGVx"
Subject: [oss-security] Advisory X41-2017-002: Multiple Vulnerabilities in ytnef

--PhsrblgVsIkArouwseIUmObsHM8KvTGVx
Content-Type: multipart/mixed; boundary="9d98Xrln07hFNifOXTqhTSg7828UxMvfC";
 protected-headers="v1"
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org,
 bugtraq@securityfocus.com, distros@vs.openwall.org
Message-ID: <05917198-0341-0542-858e-e475797c9636@x41-dsec.de>
Subject: Advisory X41-2017-002: Multiple Vulnerabilities in ytnef

--9d98Xrln07hFNifOXTqhTSg7828UxMvfC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


X41 D-Sec GmbH Security Advisory: X41-2017-002

Multiple Vulnerabilities in ytnef
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

Overview
--------
Severity Rating: High
Confirmed Affected Versions: 1.9 and earlier
Confirmed Patched Versions: 1.9.1
Vendor: Yerase
Vendor URL: https://github.com/Yeraze/ytnef
Vector: Via file
Credit: X41 D-Sec GmbH, Eric Sesterhenn
Status: public
CVE: not yet assigned
CVSS Score: 7.4
CVSS Vector: CVSS:3.0/AV:L/AC:H/PR:N/UI:R/S:C/C:H/I:H/A:N
Advisory-URL: https://www.x41-dsec.de/lab/advisories/x41-2017-002-ytnef/


Summary and Impact
------------------
Multiple Heap Overflows, out of bound writes and reads, NULL pointer
dereferences and infinite loops have been discovered in ytnef 1.9 an
earlier.
These could be exploited by tricking a user into opening a malicious
winmail.dat file.


Product Description
-------------------
ytnef offers a library and utilities to extract the files from winmail.dat
files. winmail.dat files are send by Microsoft Outlook when forwarding files
via e-mail. The vendor was very responsive in providing a patched version.


Analysis
--------
Due to the big amount of issues found no detailed analysis is given here.
Almost all allocations were unchecked and out of bounds checks rarely
performed in the code.

In total 9 patches were generated for the following issues:

1. Null Pointer Deref / calloc return value not checked
2. Infinite Loop / DoS
3. Buffer Overflow in version field
4. Out of Bound Reads
5. Integer Overflow
6. Invalid Write and Integer Overflow
7. Out of Bounds read
8. Out of Bounds read and write
9. Directory Traversal using the filename


To detail some of the findings, here are excerpts from the quickly written
patch, which was send to the vendor:

Missing out of bounds checks:

	diff --git a/lib/ytnef.c b/lib/ytnef.c
	index ad92f15..5dd07a7 100644
	--- a/lib/ytnef.c
	+++ b/lib/ytnef.c
	@@ -55,6 +55,7 @@
	 #define MIN(x,y) (((x)<(y))?(x):(y))
=09
 	#define ALLOCCHECK(x) { if(!x) { printf("Out of Memory\n"); exit(-1); } }
=09
	+#define SIZECHECK(x) { if ((((char *)d - (char *)data) + x) >=3D size) {
 printf("Corrupted file\n"); exit(-1); } }

	 void TNEFFillMapi(TNEFStruct *TNEF, BYTE *data, DWORD size, MAPIProps *p);
 	void SetFlip(void);
	@@ -427,9 +428,11 @@ void TNEFFillMapi(TNEFStruct *TNEF, BYTE *data,
DWORD size, MAPIProps *p) {
	       length =3D -1;
	       if (PROP_ID(mp->id) >=3D 0x8000) {
	         // Read the GUID
	+        SIZECHECK(16);
	         memcpy(&(mp->guid[0]), d, 16);
	         d +=3D 16;

	+        SIZECHECK(4);
	         length =3D SwapDWord((BYTE*)d, 4);

Infinite Loop:

	diff --git a/lib/ytnef.c b/lib/ytnef.c
	index 328e605..43b0e56 100644
	--- a/lib/ytnef.c
	+++ b/lib/ytnef.c
	@@ -546,6 +546,9 @@ void TNEFFillMapi(TNEFStruct *TNEF, BYTE *data,
DWORD size, MAPIProps *p) {
	         memcpy(vl->data, d, vl->size);
	         d+=3D16;
	         break;
	+      default:
	+        printf("Bad file\n");
	+        exit(-1);
	     }
=09
	     switch (PROP_ID(mp->id)) {


Buffer Overflow:

	diff --git a/lib/tnef-types.h b/lib/tnef-types.h
	index 7b6ad01..2a9709a 100644
	--- a/lib/tnef-types.h
	+++ b/lib/tnef-types.h
	@@ -103,7 +103,7 @@ typedef struct {
 	} TNEFMemInfo;
=20=09
	 typedef struct {
	-  char version[10];
	+  char version[16];
	   variableLength from;
	   variableLength subject;
	   dtr dateSent;

Workarounds
-----------

Update to version 1.9.1 as released on https://github.com/yeraze/ytnef


About X41 D-Sec GmbH
--------------------
X41 D-Sec is a provider of application security services. We focus
on application code reviews, design review and security testing. X41 D-Sec
GmbH was founded in 2015 by Markus Vervier.
We support customers in various industries such as finance, software
development and public institutions.

Timeline
--------
2017-02-10	Issues found
2016-02-12	Vendor contacted
2016-02-12	Vendor replied
2016-02-12	CVE ID requested
2016-02-13	Pull request for patch send as per vendor request
2016-02-13	Issue 9 / Directory Traversal reported
2016-02-14	Issues fixed, 1.9.1 released
2016-02-15	Advisory release

--=20
X41 D-SEC GmbH, Dennewartstr. 25-27, D-52068 Aachen
T: +49 241 9809418-0, Fax: -9
Unternehmenssitz: Aachen, Amtsgericht Aachen: HRB19989
Gesch=C3=A4ftsf=C3=BChrer: Markus Vervier





--9d98Xrln07hFNifOXTqhTSg7828UxMvfC--

--PhsrblgVsIkArouwseIUmObsHM8KvTGVx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEpwxVTgxAIcUvTugIo5Klpg50CxAFAlikLN4ACgkQo5Klpg50
CxBpUA/+P95J+H7zPI23dZJm4zIjQ7vSjpZe8c3JmExuqBlzDAYaOkScJNWxaiOJ
BdPEH3DIPSmC5pz1bhAUXgTE+RHXtDRPgvOluBVc/BBK4AqfZ7jpIQHK1Vyx69Ih
ASibV9XiKTSusYP51RLpK3kGmkuz0uydZcCUMzBFGCAY9oPn+jgRrYdaF6UbG477
rMSjzLi0Kft4qOMK5hZjh8vjfQCcx0qrknHPrNfeewOBACjCWD2dJi9alZoGKDyu
FAuW0oAAE89Ra75O/DtOXo7WiN+xcmFA1tarJtZZHAOUak6shSRBei07JLzKtBxO
AB+jhPHe5r0gkRwIs7SOliMn6S+xRNo3oMsbXBudie3ehC2csCYLH/hBvQPQsMiC
YFrVMv8OWwl0kyNO0MA0CzbyFzg2j1XdSRqeN9q1To/aXJ6KvEcdSs1k9504HQlp
meH6ZACOpK3hXbvgmcJeH7RHosMNuzKMqVws/QTXfEtTZNOC5lxmmXu24J/JhEok
kG0KULayVvOO/z+vaiSUhMJ2vzhH3IVaZBS66EFJ4EZ4A5WoWcM0IqWrWnU4BCe4
ttlJR4sh/6xt9YzfyFftZJ6KlMQjQadDW4VJvWIn3GIsJOg+yOMW0YLBoh+5rjqf
eOuHJURT1RvJ2lpUGvIVZwl4ZsoRF5/DmuuMPFeWHB7uzyD3oJc=
=n+R9
-----END PGP SIGNATURE-----

--PhsrblgVsIkArouwseIUmObsHM8KvTGVx--
