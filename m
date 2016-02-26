X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3394" "Friday" "26" "February" "2016" "05:15:54" "+0000" "Shivaprasad Sadashivappa" "Shivaprasad.S@trianz.com" "<5F068C2EDBA6AA42BC96594345ABE70149E7A475@tri02mailstr03.trianz.int>" "86" "[oss-security] RE: CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input" nil nil nil "2" "2016022605:15:54" "[oss-security] RE: CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input" (number mark "U       Shivaprasad. Feb 26   86/3394  " thread-indent "\"[oss-security] RE: CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input\"\n") "<9846A6064BD102419D06814DD0D78DE112854418@CIO-TNC-D2MBX02.osuad.osu.edu>" ("<9846A6064BD102419D06814DD0D78DE112854418@CIO-TNC-D2MBX02.osuad.osu.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5687 invoked by uid 550); 26 Feb 2016 05:31:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29778 invoked from network); 26 Feb 2016 05:16:09 -0000
Content-Type: multipart/mixed;
	boundary="_000_5F068C2EDBA6AA42BC96594345ABE70149E7A475tri02mailstr03t_"
From: Shivaprasad Sadashivappa <Shivaprasad.S@trianz.com>
To: "c-users@xerces.apache.org" <c-users@xerces.apache.org>,
	"c-dev@xerces.apache.org" <c-dev@xerces.apache.org>, "security@apache.org"
	<security@apache.org>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>, "bugtraq@securityfocus.com"
	<bugtraq@securityfocus.com>
CC: Gustavo Grieco <gustavo.grieco@imag.fr>
Thread-Topic: CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed
 Input
Thread-Index: AdFv15LDz7DQGmArTbmfeUtnr8w07wAfQQ4A
Date: Fri, 26 Feb 2016 05:15:54 +0000
Message-ID: <5F068C2EDBA6AA42BC96594345ABE70149E7A475@tri02mailstr03.trianz.int>
References: <9846A6064BD102419D06814DD0D78DE112854418@CIO-TNC-D2MBX02.osuad.osu.edu>
In-Reply-To: <9846A6064BD102419D06814DD0D78DE112854418@CIO-TNC-D2MBX02.osuad.osu.edu>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator: <5F068C2EDBA6AA42BC96594345ABE70149E7A475@tri02mailstr03.trianz.int>
x-originating-ip: [10.20.20.38]
MIME-Version: 1.0
Subject: [oss-security] RE: CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed
 Input

--_000_5F068C2EDBA6AA42BC96594345ABE70149E7A475tri02mailstr03t_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Could you please let me know how to reproduce the issue, we are using xerce=
s-c in one our product.

Ahead Together,
Shivaprasad BS




E mail: Official shivaprasad.s@trianz.com=20
Mobile: +91 9900633664
www.trianz.com l LinkedIn=A0|=A0Facebook=A0|=A0Twitter space=A0 leave=20
Note: This message (including any attachments) contains business proprietar=
y/confidential information intended for a specific individual and purpose, =
and is protected by law. =A0If you are not the intended recipient, you shou=
ld delete this message. =A0Any disclosure, copying, or distribution of this=
 message, or the taking of any action based on it, without the express perm=
ission of the originator, is strictly prohibited. =A0If you believe that yo=
u have received this email in error, please contact the sender immediately =
and delete the email and all of its attachments.
Trianz Email Privacy and Confidential Policy

-----Original Message-----
From: Cantor, Scott [mailto:cantor.2@osu.edu]=20
Sent: Thursday, February 25, 2016 7:51 PM
To: c-dev@xerces.apache.org; c-users@xerces.apache.org; security@apache.org=
; oss-security@lists.openwall.com; bugtraq@securityfocus.com
Cc: Gustavo Grieco
Subject: CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Inp=
ut

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

CVE-2016-0729: Apache Xerces-C XML Parser Crashes on Malformed Input

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected: Apache Xerces-C XML Parser library versions prior to V3.=
1.3

Description: The Xerces-C XML parser mishandles certain kinds of malformed =
input documents, resulting in buffer overlows during processing and error r=
eporting. The overflows can manifest as a segmentation fault or as memory c=
orruption during a parse operation. The bugs allow for a denial of service =
attack in many applications by an unauthenticated attacker, and could conce=
ivably result in remote code execution.

Mitigation: Applications that are using library versions older than
V3.1.3 should upgrade as soon as possible. Distributors of older versions s=
hould apply the patches from this subversion revision:

http://svn.apache.org/viewvc?view=3Drevision&revision=3D1727978

Credit: This issue was reported by Gustavo Grieco.

References:
http://xerces.apache.org/xerces-c/secadv/CVE-2016-0729.txt

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWzlsyAAoJEDeLhFQCJ3liUAsP/Rr4rBKVPxOw3+5JDiQWT27y
/TT1kLFV+u6LtuBL3q6rwOIANquEMP1nJPVuYtceNF66xHi7eX6HZ8jZch6T+uvZ
Bt+kUTOfG4PW1RLm83W1kof58PTI5mIYBWofAQzXm9TSyvoHF5GXWqzNyGOKauYN
pto5xvJzEN5gM7DjbXF8OoIesNVaqCnr+9A2WmCCdNGNzSQLlUVDg9kDvXUdDvHD
+TXHDfgP8OSEYl5e3B3P5OV6SzUi2xdATR6zQgb1QANJy7FoK/FOP5+2J8ccultu
mXlVHpsGlPoIi85nyKVykK3hTT4DyhqSwCa9ek3D5i7lIEk2dXxeevh90is3y/Al
0GSUoG7yXbfe7xmlcUUghdYeYBP6JSOiOqAREUsKfY6nYo4XpGwvJRz/Xgk7iw9y
p39sCIKuJBpqe1Vgy8ONeTFc0WZkkriq23n2oZ4zxoOImF5k44f01olZhA/wmE1P
Wi6Qrafn6myUtp1TAXWoakfxJo0DgHfH6fazlmYSPHIyfLShrAcG6aETDn92KsDp
gy4a5ulP/qpkncJrF2+XeM1wgQSTpUln2664fSwRw5whqg/PW/qGx+/1sltwOSQe
l4bvQhr9xvkv+W++aPFgmJF3HW0Gnsglty6KQAcQ/RqheZ+/vL9buCqWw2xg4bkN
BQJ4QvN4uaHIUxhzVfiL
=3DvI5o
-----END PGP SIGNATURE-----

--_000_5F068C2EDBA6AA42BC96594345ABE70149E7A475tri02mailstr03t_--
