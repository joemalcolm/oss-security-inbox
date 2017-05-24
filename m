X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1236" "Wednesday" "24" "May" "2017" "22:56:38" "+0000" "Vaibhav Gumashta" "vgumashta@hortonworks.com" "<D54B5DB5.A159F%vgumashta@hortonworks.com>" "37" "[oss-security] CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure" nil nil nil "5" "2017052422:56:38" "[oss-security] CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure" (number mark "U       vgumashta@ho May 24   37/1236  " thread-indent "\"[oss-security] CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5464 invoked by uid 550); 24 May 2017 23:17:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23888 invoked from network); 24 May 2017 22:56:56 -0000
From: Vaibhav Gumashta <vgumashta@hortonworks.com>
To: "security@hive.apache.org" <security@hive.apache.org>,
	"bcrawford@inetco.com" <bcrawford@inetco.com>
CC: "announce@apache.org" <announce@apache.org>, "bugtraq@securityfocus.com"
	<bugtraq@securityfocus.com>, "dev@hive.apache.org" <dev@hive.apache.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"user@hive.apache.org" <user@hive.apache.org>
Thread-Topic: CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure
Thread-Index: AQHS1OEAUbLGuy/akU6OyCP1wFwG+A==
Date: Wed, 24 May 2017 22:56:38 +0000
Message-ID: <D54B5DB5.A159F%vgumashta@hortonworks.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-source-routing-agent: Processed
MIME-Version: 1.0
X-MC-Unique: 8-HfUSuiOje93dvnYDQAuQ-1
Content-Type: multipart/alternative;
	boundary="_000_D54B5DB5A159Fvgumashtahortonworkscom_"
Subject: [oss-security] CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure

--_000_D54B5DB5A159Fvgumashtahortonworkscom_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Hive 0.13.x
Apache Hive 0.14.x
Apache Hive 1.0.0 - 1.0.1
Apache Hive 1.1.0 - 1.1.1
Apache Hive 1.2.0 - 1.2.1
Apache Hive 2.0.0

Description:

Apache Hive (JDBC + HiveServer2) implements SSL for plain TCP and HTTP conn=
ections (it supports both transport modes). While validating the server's c=
ertificate during the connection setup, the client doesn't seem to be verif=
ying the common name attribute of the certificate. In this way, if a JDBC c=
lient sends an SSL request to server abc.com, and the server responds with =
a valid certificate (certified by CA) but issued to xyz.com, the client wil=
l accept that as a valid certificate and the SSL handshake will go through.

Mitigation:

Upgrade to Apache Hive 1.2.2 for 1.x release line, or to Apache Hive 2.0.1 =
or later for 2.0.x release line, or to Apache Hive 2.1.0 and later for 2.1.=
x release line.

Credit: This issue was discovered by Branden Crawford from Inteco Systems L=
imited (inetco.com).

--_000_D54B5DB5A159Fvgumashtahortonworkscom_--

