X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14053" "Thursday" "9" "February" "2017" "17:06:16" "+0000" "Georg Lukas" "lukas@rt-solutions.de" "<AM5PR0401MB2449A3DB7B25A878F97A1ECFF4450@AM5PR0401MB2449.eurprd04.prod.outlook.com>" "329" "[oss-security] CVE-2017-5589+ Multiple XMPP Clients User Impersonation Vulnerability" nil nil nil "2" "2017020917:06:16" "[oss-security] CVE-2017-5589+ Multiple XMPP Clients User Impersonation Vulnerability" (number mark "U       lukas@rt-sol Feb  9  329/14053 " thread-indent "\"[oss-security] CVE-2017-5589+ Multiple XMPP Clients User Impersonation Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29973 invoked by uid 550); 9 Feb 2017 17:36:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23812 invoked from network); 9 Feb 2017 17:06:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flrt.onmicrosoft.com;
 s=selector1-rtsolutions-de0e;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=ZNI29L6rrjnn3rs9qm2OPYFLfByg2fy+8ai1h4z97rU=;
 b=LjcYJpQ+9SacB3eTxy0O6eGi0nf4rYzLrCP4/4jRb1Pks/4FDsJvVV/3xBbQhFtSyT43JydHm/Z4FFq58VWgCg+z1VXVkubVYFQVw26s2sxpI8E5BtFnLErikxPDZxFP2O8ylyR0dFSuKguOriEaVFZI+GTy1OsEu8l49vLTkBE=
From: Georg Lukas <lukas@rt-solutions.de>
To: "'bugtraq@securityfocus.com'" <bugtraq@securityfocus.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "jdev@jabber.org" <jdev@jabber.org>
Thread-Topic: CVE-2017-5589+ Multiple XMPP Clients User Impersonation
 Vulnerability
Thread-Index: AdKC7g1ch1n7CVToRMa7eBEGVOzI1g==
Date: Thu, 9 Feb 2017 17:06:16 +0000
Message-ID: <AM5PR0401MB2449A3DB7B25A878F97A1ECFF4450@AM5PR0401MB2449.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=lukas@rt-solutions.de; 
x-originating-ip: [83.223.74.6]
x-ms-office365-filtering-correlation-id: d9257528-1bcb-47ff-03b4-08d4510df58c
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:AM5PR0401MB2452;
x-microsoft-exchange-diagnostics: 1;AM5PR0401MB2452;7:DM72pBYDc13ygzQy93T0vrXSWG++WExzGYXN4tMnMbAbcQYnO7QMB8aK+Mus2/B3CMRdA81K5sVVzzRJf0QlgCRhTFVClbNtR5Z++PiDbgTQHWsn2ZfgewYx/pR8id0AUv7gLe3WRR0uNPwPUJf9dDwGt27JlX9akUnBBeQI6OCv14cB4J1GgiIJ2t6W4B8pxGdJug/oUWMNlgKmnY5KU6K/N0yPZ1OlFe1ujpl49mcSDFCBQ91sWvgNGrORq8YN8dZGf6c9egFulVtJtYIScLLZAz31pvJCTtAr7S3BFRHQK4Jyc0jdwjVwrlRguThwKHVN21+NOc4hICBbTyfB5H9S6HBQjtYVa9sH4hx08Kbnfc2pKa35O6Q80frktDUjXwd//yHQ+FWuAqucf5ELOxABrO3+GVuoXmMbKBAz+FGpucxszLHgQKPmxko8c2rBNRg6cy53l3ObvHF1OnJdM93Jcte42YNUXv4M9P3J73iOl6y39GOrTnLonbi2Mldfi9sUZrbW/V31kfklDJhdkQ==
x-microsoft-antispam-prvs: <AM5PR0401MB2452B687641A87D0F4AFE542F4450@AM5PR0401MB2452.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(278428928389397)(166708455590820)(192374486261705);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(102415395)(6040375)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123558025)(20161123562025)(2016111802025)(20161123560025)(20161123555025)(20161123564025)(6072148)(6043046);SRVR:AM5PR0401MB2452;BCL:0;PCL:0;RULEID:;SRVR:AM5PR0401MB2452;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(7916002)(39450400003)(39830400002)(39410400002)(189002)(199003)(377424004)(68736007)(3846002)(8936002)(575784001)(86362001)(189998001)(81156014)(74482002)(81166006)(25786008)(97736004)(7736002)(7696004)(2906002)(6436002)(6506006)(8676002)(106356001)(1720100001)(2900100001)(105586002)(38730400002)(92566002)(2501003)(3660700001)(6116002)(230783001)(6306002)(55016002)(5660300001)(4326007)(50986999)(54356999)(102836003)(9686003)(99936001)(101416001)(3280700002)(77096006)(74316002)(53936002)(66066001)(75402003)(966004)(15974865002)(99286003)(33656002)(122556002)(15398625002)(491001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM5PR0401MB2452;H:AM5PR0401MB2449.eurprd04.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
received-spf: None (protection.outlook.com: rt-solutions.de does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0037_01D282FF.33E7B420"
MIME-Version: 1.0
X-OriginatorOrg: rt-solutions.de
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2017 17:06:16.0369
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1e64ee9c-dfe3-4879-9887-bec8762ea366
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0401MB2452
Subject: [oss-security] CVE-2017-5589+ Multiple XMPP Clients User Impersonation Vulnerability

------=_NextPart_000_0037_01D282FF.33E7B420
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Summary
-------

An incorrect implementation of XEP-0280: Message Carbons[0] in multiple
XMPP clients allows a remote attacker to impersonate any user, including
contacts, in the vulnerable application's display. This allows for
various kinds of social engineering attacks.

Classification
--------------

  - CWE-304: Missing Critical Step in Authentication
  - CWE-940: Improper Verification of Source of a Communication Channel
  - CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:H/A:N (score 7.1)

Affected Applications
---------------------

  - CVE-2017-5589: yaxim and Bruno (0.8.6 - 0.8.8; Android)
  - CVE-2017-5590: ChatSecure (3.2.0 - 4.0.0; only iOS) and Zom (all
versions up to 1.0.11; only iOS)
  - CVE-2017-5591: poezio (0.8 - 0.10)
  - CVE-2017-5592: profanity (0.4.7 - 0.5.0)
  - CVE-2017-5593: Psi+ (0.16.563.580 - 0.16.571.627)
  - CVE-2017-5602: jappix (1.0.0 to 1.1.6)
  - CVE-2017-5603: Jitsi (2.5.5061 - 2.9.5544)
  - CVE-2017-5604: mcabber (1.0.0 - 1.0.4)
  - CVE-2017-5605: Movim (0.8 - 0.10)
  - CVE-2017-5606: Xabber (only if manually enabled: 1.0.30, 1.0.30 VIP,
beta 1.0.3 - 1.0.74; Android)
  - CVE-2017-5858: Converse.js (0.8.0 - 1.0.6, 2.0.0 - 2.0.4)

Affected Libraries
------------------

  - CVE-2017-5591: SleekXMPP unknown up to 1.3.1
  - CVE-2017-5591: Slixmpp all versions up to 1.2.3

Details
-------

The XMPP protocol extension "XEP-0280: Message Carbons"[0] allows
a user to run multiple clients on their XMPP account by sending "carbon
copies" of outgoing and incoming messages to the user's other devices
(besides the one that directly sent or received the original message).

This feature must be supported by the user's server and must be
explicitly enabled by the client. Carbon copies are always generated by
the user's server and originate from the user's bare JID (their account
address).

For example, the following is message "Hi!", sent by Alice
(`alice@xmpp.example`) to Bob's client 1 (`bob@xmpp.example/client1`):

	<message from=3D"alice@xmpp.example" to=3D"bob@xmpp.example/client1">
	    <body>Hi!</body>
	</message>

Bob is also logged in with carbons-enabled client 2, which receives the
following carbon-copy of the message:

	<message from=3D"bob@xmpp.example" to=3D"bob@xmpp.example/client2">
	    <received xmlns=3D'urn:xmpp:carbons:2'><forwarded
xmlns=3D'urn:xmpp:forward:0'>
		<message from=3D"alice@xmpp.example"
to=3D"bob@xmpp.example/client1">
		    <body>Hi!</body>
		</message>
	    </forwarded></received>
	</message>

Now, client 2 can extract the original message from the carbon copy and
display it accordingly. The "Security Considerations" section of
XEP-0280 explicitly states that:

| Any forwarded copies received by a Carbons-enabled client MUST be from
| that user's bare JID; any copies that do not meet this requirement
| MUST be ignored.

The Carbons implementation in the affected clients was lacking this
test. It simply checked all incoming messages for presence of a Carbon
element (`<received/>` or `<sent/>`), extracted and parsed it like a
regular message.

Therefore, it was possible for Mallory to send the following specially
crafted message to Bob:

	<message from=3D"mallory@evil.example" to=3D"b@xmpp.example">
	    <received xmlns=3D'urn:xmpp:carbons:2'><forwarded
xmlns=3D'urn:xmpp:forward:0'>
		<message from=3D"alice@xmpp.example"
to=3D"bob@xmpp.example/client1">
		    <body>Please come to Creepy Valley tonight,
alone!</body>
		</message>
	    </forwarded></received>
	</message>

This would appear as an authentic message from Alice, including Alice'
proper screen name, allowing Mallory to perform social engineering
attacks on Bob.

Mitigation
----------

While the attacker can send messages in the name of somebody else, they
can not see your responses. Therefore, if you receive a phony message
while using an affected client, reinsure with the message sender by
either challenging them with a question that can not be guessed by the
attacker, or by using out-of-band means.

Xabber: disable the experimental Carbons feature in the app settings.

yaxim: Disabling Message Carbons under "Settings" / "Edit account" /
"Message Carbons (XEP-0280)" will not solve the problem, as the
malicious messages still will be interpreted.

Timeline
--------

  - 2017-01-20 Discovery of vulnerability
  - 2017-01-23 - 26 Notification of developers
  - 2017-01-25 Release of ChatSecure 4.0.1
    fix commit:
https://github.com/ChatSecure/ChatSecure-iOS/commit/a340b4bb519227d89f85f271
6a10a197a65d4856
  - 2017-01-26 Release of jappix 1.1.7
    fix commit:
https://github.com/jappix/jappix/commit/ea6de7c65b80880bdf85df47c1a8a5d3d684
91af
  - 2017-01-28 Release of Psi+ 0.16.571.630
    fix commit:
https://github.com/psi-im/iris/pull/47/commits/02e976d4426a1319a7af7d26d7aba
9d8c6077570
  - 2017-01-29 Release of profanity 0.5.1
    fix commit:
https://github.com/boothj5/profanity/commit/8e75437a7e43d4c55e861691f74892e6
66e29b0b
  - 2017-01-29 Release of mcabber 1.0.5
    fix commit: https://mcabber.com/hg/rev/2a9569fd7644
  - 2017-01-30 Release of poezio 0.11 with slixmpp 1.2.4
    slixmpp fix commit:
https://github.com/poezio/slixmpp/commit/22664ee7b86c8e010f312b66d12590fb471
60ad8
  - 2017-01-31 Release of yaxim and Bruno 0.9.0
    fix commit:
https://github.com/ge0rg/yaxim/commit/65a38dc77545d9568732189e86089390f0ceaf
9f
  - 2017-01-31 Release of Movim 0.11alpha1
    fix commit:
https://github.com/movim/moxl/commit/838b0a42efc3b67cc17d63e25ae1d0ea849cd89
b
  - 2017-01-31 Notification of Debian Security Team
  - 2017-02-01 Release of profanity 0.4.7.patch1 and 0.5.0.patch1 (backports
of the fix)
  - 2017-02-01 Release of Converse.js 1.07 and 2.05
    fix commit:
https://github.com/jcbrand/converse.js/commit/42f249cabbbf5c026398e6d3b350f6
f9536ea572
  - 2017-02-05 Release of Jitsi 2.10
    fix commit:
https://github.com/jitsi/jitsi/commit/7d66da61b316c9480b63000f831b6de723b873
15
  - 2017-02-08 Release of Zom 1.0.12
    fix commit:
https://github.com/zom/Zom-iOS/commit/880051eaa8ba32d1b257c87a7d8798a93561bf
d3
  - 2017-02-09 Publication of this advisory

Acknowledgements
----------------

  - Daniel Gultsch for CVE-2015-8688: Gajim Roster Push Attack / Message
    Interception[1]
  - Sam Whited for CVE-2016-9928 (same as above in mcabber)[2]
  - Thijs Alkemade for being an awesome XMPP security researcher (and
    for proof-reading this)[3]

Links
-----

[0] https://xmpp.org/extensions/xep-0280.html
[1] https://gultsch.de/gajim_roster_push_and_message_interception.html
[2] http://www.openwall.com/lists/oss-security/2016/12/09/5
[3] https://blog.thijsalkema.de/

HTML version of advisory:
https://rt-solutions.de/en/2017/02/CVE-2017-5589_xmpp_carbons/
PDF version of advisory:
https://rt-solutions.de/wp-content/uploads/2017/02/CVE-2017-5589_xmpp_carbon
s.pdf


--=20
Dr.-Ing. Georg Lukas
rt-solutions.de GmbH
Oberl=E4nder Ufer 190a
D-50968 K=F6ln

Tel. : (+49)221 93724 16
Fax : (+49)221 93724 50
Mobil: (+49)179 4176591
Web : www.rt-solutions.de
rt-solutions.de
experts you can trust.

Sitz der Gesellschaft: K=F6ln
Eingetragen beim Amtsgericht K=F6ln: HRB 52645
Gesch=E4ftsf=FChrer: Prof. Dr. Ralf Schumann, Dr. Stefan Schemmer

------=_NextPart_000_0037_01D282FF.33E7B420
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIIOMjCCBDYwggMeoAMCAQICAQEwDQYJKoZIhvcNAQEFBQAwbzELMAkG
A1UEBhMCU0UxFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRU
cnVzdCBFeHRlcm5hbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3Qg
RXh0ZXJuYWwgQ0EgUm9vdDAeFw0wMDA1MzAxMDQ4MzhaFw0yMDA1MzAxMDQ4
MzhaMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRUcnVzdCBBQjEmMCQG
A1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsxIjAgBgNVBAMT
GUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3QwggEiMA0GCSqGSIb3DQEBAQUA
A4IBDwAwggEKAoIBAQC39xoz5vIABC054E5b7R+8bA/Ntfojts7emxEzl6Qp
TH2Tn71KvJPtAxrjj8/lbVBa1pcplFqAsEl62y6V/bjKvzc4LR4+kUGtcFbH
8E8/6DKedMrIkFTpxl8PeJ2aQDwOrGGqXhSPnoehalDc15pOrwWzpnGUnHGz
UGAKxxOdOAeGAqjpqGkmGJCrTLBPI6s6T4TY386f4Wlvu9dC12tE5Met7m1B
X3JacQg3s3llpFmglDf3AC8NwpJy2tA4ctsUqEXEXSp9t7TWxO6szRNEt8kr
3UMAJfphuWlqWCMRt6czj1Z1WfXNKddGtworZbbTQm8Vsrh7++/pXVPVNFon
AgMBAAGjgdwwgdkwHQYDVR0OBBYEFK29mHo0tCb3+sQmVO8DveAky1QaMAsG
A1UdDwQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MIGZBgNVHSMEgZEwgY6AFK29
mHo0tCb3+sQmVO8DveAky1QaoXOkcTBvMQswCQYDVQQGEwJTRTEUMBIGA1UE
ChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFsIFRU
UCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290
ggEBMA0GCSqGSIb3DQEBBQUAA4IBAQCwm+CFJcLWI+IPlgaSnUGYnNmEeYHZ
HlsUByM2ZY+w2He7rEFsR2CDUbD5Mj3n/PYmE8eAFqW/WvyHz3h5iSGa4kwH
CoY1vPLeUcTSlrfcfk7ucP0cOesMAlEULY69FuDB30Z15ySt7PRCtIWTcBBn
up0GNUoY0yt6zFFCoXpj0ea7ocUrwja+Ew3mvWN+eXunCQ1Aq2rdj4rD9vaM
GkIFUdRF9Z+nYiFoFSBDPJnnfL0k2KmRF3OIP1YbMTgYtHEPms3IDp6OLhvh
jJiDyx8x8URMxgRzSXZgD8f4vReAay7pzEwOWpp5DyAKLtWeYyYeVZKU2IIX
WnvQvMePToYEMIIErzCCA5egAwIBAgIRAOAjyxUSg1OJrWFuelRnayEwDQYJ
KoZIhvcNAQELBQAwbzELMAkGA1UEBhMCU0UxFDASBgNVBAoTC0FkZFRydXN0
IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0d29yazEi
MCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xNDEyMjIw
MDAwMDBaFw0yMDA1MzAxMDQ4MzhaMIGbMQswCQYDVQQGEwJHQjEbMBkGA1UE
CBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYD
VQQKExFDT01PRE8gQ0EgTGltaXRlZDFBMD8GA1UEAxM4Q09NT0RPIFNIQS0y
NTYgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0Ew
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCJsQ3aelMZTnBSHbxW
pgYmt7hJ4JbnUavx8FoTSRWjtIwbYLx6UUKneYykIt8XYU6R1XYjChTTSgJ/
th0JgG6lBD3ZursW/qGHqS5DUkMWfK8yUMimT1rpCNjPkyWce4joMGTmpPhW
gP0qJBQzF5msROVpi6NGBkvCM9TpQJ8GsLGsk0C5tQiTOpwqU6MQ2z0gYTxV
A47ZTnYlAiEp+qN8cXZP7uFfgen7VIDbw3s1UreE3iI9LDAtMX9ZvVI3sDNp
LUPr+tal8Zd3Z1GM2e4n67ylBzh2jKSpOP/fjPUDrEm+yvdzmToPMquclToT
PQ5GOld0YVC+xkA/y+Tin6IhAgMBAAGjggEXMIIBEzAfBgNVHSMEGDAWgBSt
vZh6NLQm9/rEJlTvA73gJMtUGjAdBgNVHQ4EFgQUkmFrguGioKpP7GfxwqP3
tIAAwewwDgYDVR0PAQH/BAQDAgGGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYD
VR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBEGA1UdIAQKMAgwBgYEVR0g
ADBEBgNVHR8EPTA7MDmgN6A1hjNodHRwOi8vY3JsLnVzZXJ0cnVzdC5jb20v
QWRkVHJ1c3RFeHRlcm5hbENBUm9vdC5jcmwwNQYIKwYBBQUHAQEEKTAnMCUG
CCsGAQUFBzABhhlodHRwOi8vb2NzcC51c2VydHJ1c3QuY29tMA0GCSqGSIb3
DQEBCwUAA4IBAQAbKm6sVcE6q4jF2O3NVfOqa2ErwAkQI5kPxWZqb7H1tLV3
Xg8CYQDffQX+ErOkgIAA/PsdW2pyAgpBvAW6wVjVJsLq1U2E+/6CmM9YG+Mi
Y5xS+LsFNqt9WKXeqztj5drVc+/s4Pt74qP/8EIjnMq2jU0+5EsYA7KoLdTY
u0JLkGmFENumNzToe+ABEKWcyjrHn0+ING6KZdAairup3MrKNtH0/MJkKTWv
1rGncRHSA0Oxjz6a7J4yU/R2ksqGNAe5LMrmHErYmQ3BhuKQkvtaQmojIRDp
Zcf11bt+6oyFIAJi6tE6ByxZxZkz8jiJ5bbpFnofeRT2ShAaJvp8ivubMIIF
QTCCBCmgAwIBAgIQfgnyv27TaUITQV+/bjqQKTANBgkqhkiG9w0BAQsFADCB
mzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQ
MA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
QTA/BgNVBAMTOENPTU9ETyBTSEEtMjU2IENsaWVudCBBdXRoZW50aWNhdGlv
biBhbmQgU2VjdXJlIEVtYWlsIENBMB4XDTE2MDIxODAwMDAwMFoXDTE3MDIx
NzIzNTk1OVowJjEkMCIGCSqGSIb3DQEJARYVbHVrYXNAcnQtc29sdXRpb25z
LmRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsM89j2ZtUbuM
P6D++ZZzpAy/FGc8S1M1vn2HIK9F77PQgH379XlQwCO2Cnji83nYL6W0Bh4U
hzUraiKZ2aznj/1c9sgwyDKN1EnpeocFE699yaVlwNp/XyNkG3cDcB54Q/JU
UVEVFZWFZrWj44JlcYhirvY4MRcLSWgaOQghuL5Th38dtapdvaxUUh+6d6D0
8uGPO1S23yTU7zMQBjJVmz199dswZp6Uk43eHr0PONFYbAV+9IqtWQMgcr/Y
htvZxScc5CTnrpG8UGGCkSG+Obp/6zYCn/yLygEhojLRLf85bGckVV6QHbOe
nGLFNEhSN5Vgocbk41OWQS7n7eyKmwIDAQABo4IB8zCCAe8wHwYDVR0jBBgw
FoAUkmFrguGioKpP7GfxwqP3tIAAwewwHQYDVR0OBBYEFDltM2Xw0bClIz5j
W9yVpoOUq5KcMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMCAGA1Ud
JQQZMBcGCCsGAQUFBwMEBgsrBgEEAbIxAQMFAjARBglghkgBhvhCAQEEBAMC
BSAwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIBAQEwKzApBggrBgEFBQcCARYd
aHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwXQYDVR0fBFYwVDBSoFCg
ToZMaHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RPU0hBMjU2Q2xpZW50
QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNybDCBkAYIKwYBBQUH
AQEEgYMwgYAwWAYIKwYBBQUHMAKGTGh0dHA6Ly9jcnQuY29tb2RvY2EuY29t
L0NPTU9ET1NIQTI1NkNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1h
aWxDQS5jcnQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2NhLmNv
bTAgBgNVHREEGTAXgRVsdWthc0BydC1zb2x1dGlvbnMuZGUwDQYJKoZIhvcN
AQELBQADggEBACHPstY7igQ0rKmjING51y51jbFdCu7dlfe13wO+F7Q4NWs5
LqSiW92UjnNz2JwC90Cb/DDD3NQcn8NxzISw4ochTFKu79b0rji1BcXtanPT
B00uMz8wuUmzvG5hLWj53njWx/HebDK8XTWoNmR9Q2PTYhqssZ7MU5BCK/iF
OCkAT6eye+avFClmwOPEvjz6/d3gCFZmqjXYS6JJboFYgSy1MB1Ky+CSNXb1
bSfVu9pj9WTbqjRswiQ5DrwYbunOBAJsv4kfpZlzRp9YawDcuPOcsp1olM6q
wRx//XcVFqvlIsgXn8DYiJwv11AaE03QqnJEHjxkpNLXkxXIXGU3P24xggRZ
MIIEVQIBATCBsDCBmzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RP
IENBIExpbWl0ZWQxQTA/BgNVBAMTOENPTU9ETyBTSEEtMjU2IENsaWVudCBB
dXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhB+CfK/btNpQhNB
X79uOpApMAkGBSsOAwIaBQCgggJ9MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0B
BwEwHAYJKoZIhvcNAQkFMQ8XDTE3MDIwOTE3MDYxNFowIwYJKoZIhvcNAQkE
MRYEFN72rmlps3bsGzJcCyjn+kWvBsKAMIGTBgkqhkiG9w0BCQ8xgYUwgYIw
CwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgB
ZQMEAQIwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIa
MAsGCWCGSAFlAwQCAzALBglghkgBZQMEAgIwCwYJYIZIAWUDBAIBMIHBBgkr
BgEEAYI3EAQxgbMwgbAwgZsxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVh
dGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNP
TU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhDT01PRE8gU0hBLTI1NiBDbGll
bnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIQfgnyv27T
aUITQV+/bjqQKTCBwwYLKoZIhvcNAQkQAgsxgbOggbAwgZsxCzAJBgNVBAYT
AkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1Nh
bGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhD
T01PRE8gU0hBLTI1NiBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3Vy
ZSBFbWFpbCBDQQIQfgnyv27TaUITQV+/bjqQKTANBgkqhkiG9w0BAQEFAASC
AQB/qJXlr3UguV+Q0EyoIOZtaCZPSuzDypfswfYOFFnRh2R9xViEkciDYlVD
3qny2hc/efhtI6R/KWqqwBX0tC3uJDM0rxTtmu/5DxAayHq3AmfeXwN3H5ii
zhpvsZZZI3ObeS32aeCvZWETGPhxpfIFoDJvtW8Mf3wQithnuilYDpxRmnBh
Txc4vZ6i0RA7NaDjdHsB7q6AL8GOc4XP9lfJ/6Rjz/VdUEwDLmWlj2IvQqdn
giadsLqTNSNR2QK9ZMYfErdJMkDBGny+dzZMp6Vs5qUjmu5HZFCOsB+TYACk
NMCiYpY1lvqyHLXmR/62jxEmE79Em3QVSZRccvKh9SsOAAAAAAAA

------=_NextPart_000_0037_01D282FF.33E7B420--
