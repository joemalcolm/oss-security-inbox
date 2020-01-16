X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2915" "Thursday" "16" "January" "2020" "08:59:51" "+0000" "cert.cc@orange.com" "cert.cc@orange.com" "<27352_1579165193_5E202609_27352_311_28_c5afd0f2-094a-4138-8175-775ad698ec78@OPEXCNORM4F.corporate.adroot.infra.ftgroup>" "82" "[oss-security] [CVE-2019-17570] xmlrpc-common untrusted deserialization" nil nil nil "1" "2020011608:59:51" "[oss-security] [CVE-2019-17570] xmlrpc-common untrusted deserialization" (number mark "U       cert.cc@oran Jan 16   82/2915  " thread-indent "\"[oss-security] [CVE-2019-17570] xmlrpc-common untrusted deserialization\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-17570] xmlrpc-common untrusted deserialization" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11959 invoked by uid 550); 16 Jan 2020 09:06:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7821 invoked from network); 16 Jan 2020 09:00:04 -0000
From: <cert.cc@orange.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [CVE-2019-17570] xmlrpc-common untrusted deserialization
Thread-Index: AdXMSZMAVefUsl+2T7u9Xg52tlppTg==
Date: Thu, 16 Jan 2020 08:59:51 +0000
Message-ID: <27352_1579165193_5E202609_27352_311_28_c5afd0f2-094a-4138-8175-775ad698ec78@OPEXCNORM4F.corporate.adroot.infra.ftgroup>
Accept-Language: en-GB, fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.114.50.247]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [oss-security] [CVE-2019-17570] xmlrpc-common untrusted deserialization

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Java untrusted deserialization in faultCause when processing an XMLRPC resp=
onse. XMLRPC clients are thus targeted by this vulnerability, and rogue XML=
RPC servers may gain arbitrary code execution on the XMLRPC client.

The vulnerability lays in the org.apache.xmlrpc.parser.XmlRpcResponseParser=
:addResult(Object) method.

This vulnerability is different from CVE-2016-5003, which uses ex:serializa=
ble type to perform deserialization. This new vulnerability only affects XM=
LRPC clients, which will receive response, possible faults. It is exploitab=
le in default configuration.

Exploitation technique
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
REMOTE, NONE AUTHENTICATION REQUIRED.

REMINDER: This vulnerability is on client-side.

CVSSv3 base score : 9.8
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

Impact(s)
=3D=3D=3D=3D=3D=3D=3D=3D=3D
An attacker may execute arbitrary code by using a gadget chain.

Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Detected on XMLRPC-common-Central-3.1.3 but applies to versions (non-exhaus=
tive list):
*         Redhat GA 3.1.3-redhat-5
*         Redhat GA 3.1.3-redhat-2
*         Redhat EA 3.1.3-redhat-1
*         Central 3.1.3
*         Central 3.1.2
*         Central 3.1.1
*         Central 3.1

NOTE: Central 3.0.x are not vulnerable

CVE Id
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2019-17570

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D
2019-11-19: Apache informed via email
2019-11-19: Apache XML-RPC is no longer actively maintained
2019-11-21: Red Hat informed via email
2019-11-22: Vulnerability reaffected to Apache project
2020-01-06: Distro OSS security informed via email
2020-01-16: Vulnerability published to OSS security mailing list

Credits
=3D=3D=3D=3D=3D=3D=3D=3D
Guillaume TEISSIER (Orange)
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

