X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3446" "Friday" "24" "January" "2020" "16:00:39" "+0000" "cert.cc@orange.com" "cert.cc@orange.com" "<10824_1579881642_5E2B14AA_10824_454_1_7f5a48b4-7fcd-421a-9ba3-66e24cd1efea@OPEXCNORM3C.corporate.adroot.infra.ftgroup>" "97" "[oss-security] RE: [CVE-2019-17570] xmlrpc-common untrusted deserialization" nil nil nil "1" "2020012416:00:39" "[oss-security] RE: [CVE-2019-17570] xmlrpc-common untrusted deserialization" (number mark "U       cert.cc@oran Jan 24   97/3446  " thread-indent "\"[oss-security] RE: [CVE-2019-17570] xmlrpc-common untrusted deserialization\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] RE: [CVE-2019-17570] xmlrpc-common untrusted deserialization" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25706 invoked by uid 550); 24 Jan 2020 16:47:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1677 invoked from network); 24 Jan 2020 16:00:53 -0000
From: <cert.cc@orange.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: ZZZ CERT CC <cert.cc@orange.com>
Thread-Topic: [CVE-2019-17570] xmlrpc-common untrusted deserialization
Thread-Index: AdXMSZMAVefUsl+2T7u9Xg52tlppTgGU9Ldw
Date: Fri, 24 Jan 2020 16:00:39 +0000
Message-ID: <10824_1579881642_5E2B14AA_10824_454_1_7f5a48b4-7fcd-421a-9ba3-66e24cd1efea@OPEXCNORM3C.corporate.adroot.infra.ftgroup>
Accept-Language: en-GB, fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.114.50.247]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [oss-security] RE: [CVE-2019-17570] xmlrpc-common untrusted deserialization

Hello,

A PoC is now available for this vulnerability.
For more information, see https://github.com/orangecertcc/xmlrpc-common-des=
erialization


Regards,

-----Message d'origine-----
De=A0: ZZZ CERT CC=20
Envoy=E9=A0: jeudi 16 janvier 2020 10:00
=C0=A0: 'oss-security@lists.openwall.com'
Objet=A0: [CVE-2019-17570] xmlrpc-common untrusted deserialization

Description=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
Java untrusted deserialization in faultCause when processing an XMLRPC resp=
onse. XMLRPC clients are thus targeted by this vulnerability, and rogue XML=
RPC servers may gain arbitrary code execution on the XMLRPC client.=20
=20=20
The vulnerability lays in the org.apache.xmlrpc.parser.XmlRpcResponseParser=
:addResult(Object) method.=20
=20=20
This vulnerability is different from CVE-2016-5003, which uses ex:serializa=
ble type to perform deserialization. This new vulnerability only affects XM=
LRPC clients, which will receive response, possible faults. It is exploitab=
le in default configuration.
=20=20
Exploitation technique=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
REMOTE, NONE AUTHENTICATION REQUIRED.

REMINDER: This vulnerability is on client-side.
=20=20
CVSSv3 base score : 9.8=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H=20
=20=20
Impact(s)=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
An attacker may execute arbitrary code by using a gadget chain.=20
=20=20=20
Affected versions=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
Detected on XMLRPC-common-Central-3.1.3 but applies to versions (non-exhaus=
tive list):=20
=B7         Redhat GA 3.1.3-redhat-5=20
=B7         Redhat GA 3.1.3-redhat-2=20
=B7         Redhat EA 3.1.3-redhat-1=20
=B7         Central 3.1.3=20
=B7         Central 3.1.2=20
=B7         Central 3.1.1=20
=B7         Central 3.1=20
=20=20
NOTE: Central 3.0.x are not vulnerable=20
=20=20
CVE Id=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
CVE-2019-17570
=20=20
Timeline=20
=3D=3D=3D=3D=3D=3D=3D=3D=20
2019-11-19: Apache informed via email=20
2019-11-19: Apache XML-RPC is no longer actively maintained
2019-11-21: Red Hat informed via email=20
2019-11-22: Vulnerability reaffected to Apache project
2020-01-06: Distro OSS security informed via email
2020-01-16: Vulnerability published to OSS security mailing list
=20=20
Credits=20
=3D=3D=3D=3D=3D=3D=3D=3D=20
Guillaume TEISSIER (Orange)=20
Orange group


___________________________________________________________________________=
______________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confiden=
tielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu=
 ce message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages el=
ectroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou =
falsifie. Merci.

This message and its attachments may contain confidential or privileged inf=
ormation that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and dele=
te this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been =
modified, changed or falsified.
Thank you.

