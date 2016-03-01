X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["605" "Tuesday" "1" "March" "2016" "20:09:52" "+0000" "Arshan Dabirsiaghi" "arshan.dabirsiaghi@contrastsecurity.com" "<D2FB613B.47927%arshan.dabirsiaghi@contrastsecurity.com>" "16" "[oss-security] CVE request: Kryo (Java serialization API)" nil nil nil "3" "2016030120:09:52" "[oss-security] CVE request: Kryo (Java serialization API)" (number mark "U       arshan.dabir Mar  1   16/605   " thread-indent "\"[oss-security] CVE request: Kryo (Java serialization API)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26364 invoked by uid 550); 1 Mar 2016 20:11:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25943 invoked from network); 1 Mar 2016 20:10:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=contrastsecurity.onmicrosoft.com; s=selector1-contrastsecurity-com;
 h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=zPdon/VNhpQnimhIVKrWd6q2DvhXremQfvUIeKOR0iQ=;
 b=MRU42EshcdC+V+Dd6dubxyGXiXcPu9y+BG2V5WCpZUWdvQA9U5V9g54D/d88OnQamS+8Q7m0xGSNBnmkAWHVWLgSPphF+Dn4U2dcFCzCFYgVFDbu0ye86D6GV/rK1tjcgNYXUr0b4BjAGK/jvZZmM1W6FS4nHkeJgpsblNxF0To=
From: Arshan Dabirsiaghi <arshan.dabirsiaghi@contrastsecurity.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE request: Kryo (Java serialization API)
Thread-Index: AQHRc/ZQ80uUzvCu80+1B5Y271K3aw==
Date: Tue, 1 Mar 2016 20:09:52 +0000
Message-ID: <D2FB613B.47927%arshan.dabirsiaghi@contrastsecurity.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=contrastsecurity.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [38.124.154.50]
x-ms-office365-filtering-correlation-id: e0b13fa3-fe9a-486e-e783-08d3420d7398
x-microsoft-exchange-diagnostics: 1;BY2PR0101MB1461;5:uRU0cGWiVlPVl06NZawCjB3iqr9zJJQsuHoY5oVDe4nNpGmpRwQvmAIuhospqcugkP72JeCIfN5deFIZmrJSDDZvWZ3Shj7f6SHRdX/WJUsvDhjxLb6s21h2Cb0J+2atEDqrfaZXUUCR1Ns/YyzX7Q==;24:27TBSVvx9NVbh4JJe/M85WLgooF6MWrAGgpUZyLSCuQFa97siUvIxXk5bweAthrfvLVFCGHAO8gzys+bs8cZSjc6/QxvQHUQomt3HEztICI=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0101MB1461;
x-microsoft-antispam-prvs: <BY2PR0101MB1461FEF395899B3E66420C9AE9BB0@BY2PR0101MB1461.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(2401047)(8121501046)(5005006)(10201501046)(3002001);SRVR:BY2PR0101MB1461;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0101MB1461;
x-forefront-prvs: 086831DFB4
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(164054003)(189998001)(2501003)(106116001)(50986999)(3660700001)(10400500002)(54356999)(66066001)(3280700002)(81156009)(5001960100004)(2351001)(5008740100001)(229853001)(2906002)(110136002)(3846002)(450100001)(92566002)(2900100001)(87936001)(36756003)(77096005)(107886002)(586003)(19580395003)(15975445007)(86362001)(1220700001)(102836003)(122556002)(1096002)(6116002)(5002640100001)(40100003);DIR:OUT;SFP:1102;SCL:1;SRVR:BY2PR0101MB1461;H:BY2PR0101MB1464.prod.exchangelabs.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <483F50561D4CFA449BDA6BE7FDAF9518@prod.exchangelabs.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: contrastsecurity.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2016 20:09:52.7967
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 48d090fb-932b-4e13-9c76-4aa018e3e1e8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0101MB1461
Subject: [oss-security] CVE request: Kryo (Java serialization API)

The Kryo serialization API (https://github.com/EsotericSoftware/kryo)
doesn=B9t enforce whitelisting by default, and thus allows side effects from
constructors and finalizer methods in attacker-chosen types when
deserializing. With the right gadgets available on the classpath, these
side effects could lead to DoS, memory corruption, and possibly RCE.

https://www.contrastsecurity.com/security-influencers/serialization-must-di
e-act-1-kryo
https://github.com/EsotericSoftware/kryo/issues/398

Thanks,
--

Arshan Dabirsiaghi | Chief Scientist
Contrast Security, Inc. <http://www.contrastsecurity.com/>

