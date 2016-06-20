X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1148" "Monday" "20" "June" "2016" "20:11:46" "+0000" "CVE ID Requests" "cve-assign@mitre.org" "<DM2PR09MB03839F3453B0899959D2E35CA12A0@DM2PR09MB0383.namprd09.prod.outlook.com>" "28" "RE: [oss-security] CVE Request: 2015 squidguard reflected XSS" nil nil nil "6" "2016062020:11:46" "[oss-security] CVE Request: 2015 squidguard reflected XSS" (number mark "U       cve-assign@m Jun 20   28/1148  " thread-indent "\"RE: [oss-security] CVE Request: 2015 squidguard reflected XSS\"\n") "<20160620134053.GG24371@suse.de>" ("<20160620134053.GG24371@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11369 invoked by uid 550); 20 Jun 2016 20:12:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11351 invoked from network); 20 Jun 2016 20:12:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.onmicrosoft.com;
 s=selector1-mitre-org;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=FBZUSyc2CgX+ZkzK7LOZv5Z1gEvqTyKXEm/LR+2BNlU=;
 b=lSyXnKos+HzrGi/UwN8ujnCu53gkABIVy1Ac6T7V4qvdHwKo3dtbAxjStFOTZf+DeCydw+MPCU3azM+931v5cdQcgnkQuO6cqeDNFPeK1MYULPSElu6sv6JDNP1FrhBdVYdgI1AAv8iq4SYWuUG4z49x07psXYTgYNwjPmSmaHA=
From: CVE ID Requests <cve-assign@mitre.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: CVE ID Requests <cve-assign@mitre.org>
Thread-Topic: [oss-security] CVE Request: 2015 squidguard reflected XSS
Thread-Index: AQHRyvmGYVbZ8rANVUu2slH7YFyxgp/yyf1g
Date: Mon, 20 Jun 2016 20:11:46 +0000
Message-ID: <DM2PR09MB03839F3453B0899959D2E35CA12A0@DM2PR09MB0383.namprd09.prod.outlook.com>
References: <20160620134053.GG24371@suse.de>
In-Reply-To: <20160620134053.GG24371@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=cve-assign@mitre.org; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [192.160.51.89]
x-ms-office365-filtering-correlation-id: 90ce842c-7b74-49ee-29da-08d399471b54
x-microsoft-exchange-diagnostics: 1;DM2PR09MB0240;6:t3+Bui3K9FNIX3ovLZaFOF3KiqRce0m7hE7Ep0QV1WvbVPnMkdJoqtwrmQSBf/gnpguGJ4wfyheB4FnfZnfJd7eCHBJ6L3P/JUXFIDbCJcgunceSgHN5c2VTk6zR0YFEOZCK3IO96wcp+zPP/PiFd80On8RHMQQ39d9VDPSOjZAYimC7YDuTHxg0SXakvEvi18puhMva+ddPB8oWFyqfcWejl3mW7rKG7ExDFJfrnfjxdvWwVRPI/1xDYCrOAAit1QPuB3sOphM/eC04Ksf3PNEqmOf8+fiIcKXzf2ZoqCB9QEonvQ9P5xK1LzLE9JFI0fCPQkj4rnmLOE7MUXZ1+g==;5:+ZVsBTLKE0m1sldXoJ76M5cXl+vTnBMajT5+pVnO56ukDH52JjFh5OQPiRHItnKcKAseDcg0ibJAiKJokqsTKaAfqSZvfVdWe6QLzopJWqIi+/zKyIpp7Pu/Z2AVajjxEr9gpfhogsnYbytdMPijaQ==;24:qMz8deu08Ckj+R13VZKN2m7gZTZS8R/GHgLftHqvx273kqIlNPGUstRmIdYTNhCFugyAGEsEkbO7yWyZenbjYcALwbnAHBM6KQWsOaZRcN0=;7:hCpzraGq22DLaT35ec/RpAfNYHDV6y4c+JyPHEKr1s6wXKAtwpN3yVHX4zfibefW6TwBQz1mbHbp8IDuXziPIaSN6K+CQU6P98Sk4N5EhBe0PljxAp6xHZTCvHFGCEutO9exkja3QbKATIxAcHf1LAHQwf2zKHxeGKuNU8OI2GUcHl74YzIda3rFkkotEWGKEK8Dx/QNoPAYk5WsX7UmCg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR09MB0240;
x-microsoft-antispam-prvs: <DM2PR09MB02409240535FFE02A8DDB43F952A0@DM2PR09MB0240.namprd09.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(76373721406558);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6055026);SRVR:DM2PR09MB0240;BCL:0;PCL:0;RULEID:;SRVR:DM2PR09MB0240;
x-forefront-prvs: 09796A1B83
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(7916002)(189002)(54524002)(199003)(15650500001)(87936001)(2420400007)(10400500002)(101416001)(345774005)(76176999)(10710500007)(50986999)(7846002)(74316001)(99286002)(92566002)(2906002)(5003600100003)(7696003)(7736002)(4001430100002)(81156014)(54356999)(81166006)(4326007)(19580395003)(8676002)(2501003)(8936002)(33656002)(105586002)(106116001)(6116002)(110136002)(2351001)(76576001)(66066001)(106356001)(586003)(68736007)(9686002)(575784001)(2950100001)(107886002)(3280700002)(102836003)(3660700001)(122556002)(2900100001)(77096005)(15975445007)(450100001)(3846002)(7110500001)(189998001)(97736004)(86362001)(5002640100001);DIR:OUT;SFP:1101;SCL:1;SRVR:DM2PR09MB0240;H:DM2PR09MB0383.namprd09.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;CAT:NONE;LANG:en;CAT:NONE;
received-spf: None (protection.outlook.com: mitre.org does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2016 20:11:46.7256
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR09MB0240
X-OriginatorOrg: mitre.org
Subject: RE: [oss-security] CVE Request: 2015 squidguard reflected XSS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Thank you for your submission. It will be reviewed by a CVE Assignment Team
member.

- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[A PGP key is available for encrypted communications at
http://cve.mitre.org/cve/request_id.html]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQIcBAEBCAAGBQJXaE1MAAoJEHb/MwWLVhi2n+kP/1+D+lH+887rXCZml03OdHOu
t1Jc9WeYcMKjOXNKQ0PQgrIyWKLvZwxnVL/6f1X6OAqt4o6c/wxeTVqEGq3appAY
+1fkjXywatvgsE3TUBiZ9YWO2VinfWrIf3fSSshU1D9sBKoiCAqWQXGwBI+xAgJ0
SwnoMfb+2RGA1WaETU353lL8/PcrCaEeVjbpiMVcseFnMuJ01Z0yxTEVDfO5onkF
0n+a7nCdA5eolUqDsZFsT3w5bWOXegWCpFBv2/FCuJrW/+ifh+iKbvWWhcy7EvMb
DMFfWrTk5KLRIdywpABxaLJHKQxW9RQgAplZX04akesrpz/eHiKGL0THfmBBiB6v
+tDHUQ8G42vNDJIGAaHSpJsLNguC0cvUMhHPb3lscULUsaeqFAplUgYD0ZLZx9Py
rxR6kPtcL8OMXGtkMXVZFvuIdXE/F/RKsp3ZU090EYneXNEjBihzsxg0XCCKjFD0
1fdXuoM8kjJTDxz3FoFLskfpw4j7zCgf3ZJ3pgiJ3gIQCbwF0t3kjOQDkta/TwQJ
3Zel/K1L0cTx3s5NiwmEd4+LKjNlkvJXKP8qajl95wEV3ha9BmnJ0qGb/ghvKWlO
D7aADDy61MuoFSlYPT2S/JbkOi71n5N1FhPLBVQblouJbl40c4bgLmwE5fmR4hjY
Bh3ogFJKcYL+FFDTWU6X
=3Dx2oy
-----END PGP SIGNATURE-----
