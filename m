X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1707" "Monday" "21" "March" "2016" "17:44:46" "+0000" "Murphy, Grant" "grant.murphy@hpe.com" "<D31580E7.2725E%grant.murphy@hpe.com>" "46" "Re: [oss-security] Re: CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode" "^CC:" nil nil "3" "2016032117:44:46" "[oss-security] Re: CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode" (number mark "        grant.murphy Mar 21   46/1707  " thread-indent "\"Re: [oss-security] Re: CVE request: Stack exhaustion in libxml2 parsing xml files in recover mode\"\n") "<20160321145841.81C8F332081@smtpvbsrv1.mitre.org>" ("<CACn5sdSPZ7+z-LGK1PBrmv6ozCVHhNA6XCrQpJc-YR09ickhAA@mail.gmail.com>" "<20160321145841.81C8F332081@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7260 invoked by uid 550); 21 Mar 2016 17:45:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7242 invoked from network); 21 Mar 2016 17:45:00 -0000
Thread-Topic: [oss-security] Re: CVE request: Stack exhaustion in libxml2
 parsing xml files in recover mode
Thread-Index: AQHRg4JSitJan2VL7UO3dGqqaPMYGp9jtk0A
Message-ID: <D31580E7.2725E%grant.murphy@hpe.com>
References: <CACn5sdSPZ7+z-LGK1PBrmv6ozCVHhNA6XCrQpJc-YR09ickhAA@mail.gmail.com>
 <20160321145841.81C8F332081@smtpvbsrv1.mitre.org>
In-Reply-To: <20160321145841.81C8F332081@smtpvbsrv1.mitre.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none header.from=hpe.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [71.231.140.87]
x-ms-office365-filtering-correlation-id: c7830db2-91a0-4e57-1334-08d351b07eaf
x-microsoft-exchange-diagnostics: 1;AT5PR84MB0083;5:8ynX69KCaDlRhzyZTYoOvH0yU0/8KCVBptogtKBAOCx8UdlI50OQwQ1d5J8wPojRqFfwbPSAKY/7vWL+jTlFlfN3kPYyrxxfjgwoW1AKIH7lbdNAIK75kh/MaC/B5a2rwA/9cEquBLuEp/5RUfxkxA==;24:eGd/z29gO9tLSFju/kvMrHBsKTx0gt7RCLDfOO97UtTR7hM1z8sH/fOoOgIA0PUG0rfSOyjljEyl2aoj4qRZ2sDqDQBZ/xJAvwGFWtzuNRU=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AT5PR84MB0083;
x-microsoft-antispam-prvs: <AT5PR84MB00833B94485C2FF22DBAF7B6838F0@AT5PR84MB0083.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001);SRVR:AT5PR84MB0083;BCL:0;PCL:0;RULEID:;SRVR:AT5PR84MB0083;
x-forefront-prvs: 0888B1D284
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(24454002)(54524002)(377454003)(15975445007)(77096005)(11100500001)(66066001)(5004730100002)(99286002)(2900100001)(10400500002)(2950100001)(106116001)(2501003)(5002640100001)(3280700002)(15650500001)(2420400007)(86362001)(575784001)(87936001)(3660700001)(1220700001)(1096002)(122556002)(10710500007)(2906002)(4326007)(50986999)(54356999)(76176999)(3846002)(6116002)(19580395003)(586003)(19580405001)(5008740100001)(7110500001)(81166005)(189998001)(36756003)(92566002)(5001770100001)(102836003);DIR:OUT;SFP:1102;SCL:1;SRVR:AT5PR84MB0083;H:AT5PR84MB0082.NAMPRD84.PROD.OUTLOOK.COM;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-ID: <721588497F7691468F3B4021FB59FB32@NAMPRD84.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: hpe.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2016 17:44:46.8681
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AT5PR84MB0083
CC: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Mon, 21 Mar 2016 17:44:46 +0000
From: "Murphy, Grant" <grant.murphy@hpe.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: Stack exhaustion in libxml2
 parsing xml files in recover mode
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"gustavo.grieco@gmail.com" <gustavo.grieco@gmail.com>

On 3/21/16, 7:58 AM, "cve-assign@mitre.org" <cve-assign@mitre.org> wrote:

>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA256
>
>> gdb --args xmllint --recover no-recover.xml
>
>> Program received signal SIGSEGV, Segmentation fault.
>> _int_malloc (av=3D0x7ffff7826760 <main_arena>, bytes=3D2) at malloc.c:33=
02
>
>Use CVE-2016-3627.
>
>> It was reported to the libxml2 bug tracker some
>> time ago but the maintainers are quite busy, so they haven't fixed it.
>
>It's typically useful to mention the bug number even if it isn't
>currently a public bug, in case correlation is needed later.

Looks like it was reported here:
https://bugzilla.gnome.org/show_bug.cgi?id=3D762100

>
>- --=20
>CVE Assignment Team
>M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
>[ A PGP key is available for encrypted communications at
>  http://cve.mitre.org/cve/request_id.html ]
>-----BEGIN PGP SIGNATURE-----
>Version: GnuPG v1
>
>iQIcBAEBCAAGBQJW8AsWAAoJEL54rhJi8gl58g4P/i/POnAJzcVBHPdk0svtHKl+
>+510uhal1JlA6r3y3AiDnqsaRM5TMzuzYs+0l9EA8ydM9nx0UMAOkA/1tHVl48P1
>cJcMMoHj/dv/pBBsAaSuJEr2VttXOn4gCuhhVOJQBc1g4sMYUNEdsn3dJ9HbyI6W
>sL2fkuGxXCMTl5at94lLJI+Hij8t+VrDSmS+0e+W7AvL4uDuyYH6b4Bcp4BmlX8l
>m52hCy9Y72MoSHeituWXLZZ75EIWdwy8ftTmjxpO08ZPR2YjUIiwDYBZKvfWCpFt
>aQc/FJrvygTbXtfvT6WUli8qrz1Q2EzYV5c1/jGSfh+0YaNJkvDdLsRlCE0qMm4L
>TnoZmD2boumgRmCLAwmqQrkCZeSh6I8ET/I6NHhor8f0LXEuVGOjjN1IJCJ2wRT7
>QGp7iejweiDoL1EioQg2pZij4BmG8jxy4XtJRZUBtJzt8yYfIP//z5Lm+3MwO7Uq
>UCscXaI0xpLAP4WW/kQTij9wVBnByu61USK7z96dytNcxYqmQhFhaBbUcT3phqwe
>JhwGxCONz1wDJG028cXD/r1DX/s/3dHLKWbSrg6zjETaBNTkuIgQBO6SJ9tPcRht
>/7T/LPgsNvuqydPksZWan1ytstfOhEDrl2pexJBgnwpt6QlsZnKtIScHDn3PNBND
>rpeM6ZE03EVFPNQRk0sK
>=3D1y/J
>-----END PGP SIGNATURE-----

