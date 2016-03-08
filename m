X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["335" "Tuesday" "8" "March" "2016" "15:43:02" "+0000" "Hoz de la Hoz Enrique de la" "enrique.delahoz@uah.es" "<A19277CE-0378-4415-A28E-7BB8F7CE00A9@uah.es>" "9" "[oss-security] CVE request: simpleSAMLphp 1.14 information leakage" nil nil nil "3" "2016030815:43:02" "[oss-security] CVE request: simpleSAMLphp 1.14 information leakage" (number mark "U       enrique.dela Mar  8    9/335   " thread-indent "\"[oss-security] CVE request: simpleSAMLphp 1.14 information leakage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9536 invoked by uid 550); 8 Mar 2016 16:15:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20066 invoked from network); 8 Mar 2016 15:43:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=universidaddealcala.onmicrosoft.com; s=selector1-uah-es;
 h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=NumXShRoLzl64O5qUWHVIBMOuZzVNYByu0GlRJMe9rw=;
 b=QcfrDVvHQ90H9SegCgTWQdmyejl0Qeli92e7cwHKWOtamAoTQ0UmXoylO7kBhxf59KN2WARg+LGpTF81pjoQy9T7UNuISYM83JNULrmFgicfx57IAhDoGZWXFXWLFpfNzBc9nY1BJMk66vbqjtPNK8tVBZU1zwUfPMBXxP+127E=
Thread-Topic: CVE request: simpleSAMLphp 1.14 information leakage
Thread-Index: AQHReVEyF/8Vb+WjdkqXIXsSxVKvrw==
Message-ID: <A19277CE-0378-4415-A28E-7BB8F7CE00A9@uah.es>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/0.0.0.160212
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none header.from=uah.es;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.146.8.4]
x-microsoft-exchange-diagnostics: 1;VI1PR03MB1422;5:sxbNWDrXvrpLe1LqkL3Q0xy+b0swmRGJGVZ/qnpMRULZgEk+mF4K5OVxRXXwrkmLLp1OMlEuNtwfo5cSJWeg5GrzS4Z2AmqGQqzE1ZS5JP7JNnSxbCqut/ONbmcWFVW2MtiOHZfNEKpV2D4bJaHQrA==;24:UZDYESqqZ26Oe8Nn136N1exblhB+Ps6kXlFyZOeOV5+hCtGpxYdPItS1QHtu7nE15YoiUjiWhhxKx84EAfhhM/utGgPhCKCq8OaHWV3mpOg=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR03MB1422;
x-ms-office365-filtering-correlation-id: a941a4fa-5c8c-4578-4106-08d347685575
x-microsoft-antispam-prvs: <VI1PR03MB14227F9EFD1A87E432191B9790B20@VI1PR03MB1422.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);SRVR:VI1PR03MB1422;BCL:0;PCL:0;RULEID:;SRVR:VI1PR03MB1422;
x-forefront-prvs: 08756AC3C8
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(53754006)(36756003)(2900100001)(558084003)(83506001)(11100500001)(82746002)(87936001)(77096005)(19617315012)(106116001)(2906002)(92566002)(83716003)(586003)(450100001)(2351001)(33656002)(5002640100001)(15975445007)(5004730100002)(86362001)(16236675004)(74482002)(66066001)(5008740100001)(2501003)(3280700002)(189998001)(3660700001)(50986999)(19580395003)(54356999)(6116002)(110136002)(229853001)(10400500002)(40100003)(1220700001)(1096002)(81166005)(122556002)(102836003)(107886002)(3846002)(104396002);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR03MB1422;H:VI1PR03MB1423.eurprd03.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_A19277CE03784415A28E7BB8F7CE00A9uahes_"
MIME-Version: 1.0
X-OriginatorOrg: uah.es
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2016 15:43:02.3727
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ced2c552-7d1f-4731-aa3a-2f0ec9629e26
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB1422
Date: Tue, 8 Mar 2016 15:43:02 +0000
From: Hoz de la Hoz Enrique de la <enrique.delahoz@uah.es>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: simpleSAMLphp 1.14 information leakage
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_A19277CE03784415A28E7BB8F7CE00A9uahes_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJcyBpdCBwb3NzaWJsZSB0byBnZXQgYSBDVkUgZm9yIHRo
aXM/DQpodHRwczovL3NpbXBsZXNhbWxwaHAub3JnL3NlY3VyaXR5LzIwMTYw
My0wMQ0KDQpUaGFua3MgaW4gYWR2YW5jZS4NCg==

--_000_A19277CE03784415A28E7BB8F7CE00A9uahes_--
