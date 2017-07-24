X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1356" "Monday" "24" "July" "2017" "20:20:40" "+0000" "VMware Security Response Center" "security@vmware.com" "<A047823A-119C-4C8E-A41E-313270E085BA@vmware.com>" "26" "[oss-security] [CVE-2015-5191] local privilege escalation in Open VMware Tools" "^Date:" nil nil "7" "2017072420:20:40" "[oss-security] [CVE-2015-5191] local privilege escalation in Open VMware Tools" (number mark "        security@vmw Jul 24   26/1356  " thread-indent "\"[oss-security] [CVE-2015-5191] local privilege escalation in Open VMware Tools\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20172 invoked by uid 550); 24 Jul 2017 20:21:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19812 invoked from network); 24 Jul 2017 20:20:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=onevmw.onmicrosoft.com; s=selector1-vmware-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=3F8v8drJkcRFqFneQzeIXhmH3CZHoDNVhPm8ecu8aCI=;
 b=KLA2oEbIBYffu85jZf6VM153XPYZcRYcIyXMqpQxeNBFtmmcjH2/Pk/s1LjaZ2RaHnrYpvSZRWYGGCuFNNWYlI/P2q8iV5Gz1qykMuqTRtAEO3QeH+DeTF2c7SKNHlVYJOBm5tiJplS1C9n1wHfd+kUvqfnJJhSqsUwbmZ9eYuk=
Thread-Topic: [CVE-2015-5191] local privilege escalation in Open VMware Tools
Thread-Index: AQHTBLpRRC/rrKGeQkOQwn/KDrzphw==
Message-ID: <A047823A-119C-4C8E-A41E-313270E085BA@vmware.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/f.24.1.170721
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=security@vmware.com; 
x-originating-ip: [50.135.207.9]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;DM2PR0501MB1181;20:8j1NHUZKq1/HInzyEbvzF95g4aZ7Ne1JAZ/422ar7BaHXKz7eIReQr8X24KDS5120+2T++qGn3foc3XkQQn7LQtcIFd4ywNCAmZGBh8lixNCbpVDLr6kM2sagwPO1TNPAzUFGBvj9vkwJGLYYafGiY3gzfHI/Ru2iI5M23nE828=
x-ms-office365-filtering-correlation-id: 9b95b0a2-ccf1-463b-865d-08d4d2d17473
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);SRVR:DM2PR0501MB1181;
x-ms-traffictypediagnostic: DM2PR0501MB1181:
x-exchange-antispam-report-test: UriScan:(61668805478150)(166708455590820)(192374486261705)(21748063052155)(211171220733660);
x-microsoft-antispam-prvs: <DM2PR0501MB1181C77BD1EC75B312424BA5B9BB0@DM2PR0501MB1181.namprd05.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(6041248)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123555025)(20161123560025)(20161123562025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:DM2PR0501MB1181;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:DM2PR0501MB1181;
x-forefront-prvs: 0378F1E47A
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(39410400002)(39400400002)(39840400002)(39850400002)(39450400003)(189002)(199003)(81166006)(81156014)(189998001)(966005)(5250100002)(6436002)(4001350100001)(2906002)(8676002)(68736007)(2900100001)(230783001)(102836003)(82746002)(86362001)(5660300001)(97736004)(8936002)(575784001)(6116002)(6916009)(83716003)(25786009)(5640700003)(2351001)(83506001)(106356001)(3846002)(99286003)(7736002)(6306002)(6512007)(105586002)(478600001)(66066001)(53936002)(6506006)(50986999)(101416001)(33656002)(14454004)(3280700002)(2501003)(110136004)(54896002)(36756003)(54356999)(3660700001)(38730400002)(6486002);DIR:OUT;SFP:1101;SCL:1;SRVR:DM2PR0501MB1181;H:DM2PR0501MB1002.namprd05.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_A047823A119C4C8EA41E313270E085BAvmwarecom_"
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2017 20:20:40.7777
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB1181
Date: Mon, 24 Jul 2017 20:20:40 +0000
From: VMware Security Response Center <security@vmware.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2015-5191] local privilege escalation in Open VMware Tools
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_A047823A119C4C8EA41E313270E085BAvmwarecom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T3BlbiBWTXdhcmUgVG9vbHMgKENWRS0yMDE1LTUxOTEpIGNvbnRhaW5zIG11
bHRpcGxlIGZpbGUgc3lzdGVtIHJhY2VzIGluIGxpYkRlcGxveVBrZywgcmVs
YXRlZCB0byB0aGUgdXNlIG9mIGhhcmQtY29kZWQgcGF0aHMgdW5kZXIgL3Rt
cC4NClN1Y2Nlc3NmdWwgZXhwbG9pdGF0aW9uIG1heSByZXN1bHQgaW4gYSBs
b2NhbCBwcml2aWxlZ2UgZXNjYWxhdGlvbi4gVGhlIGltcGFjdCBvZiB0aGlz
IHZ1bG5lcmFiaWxpdHkgaXMgbG93IGZvciBkaXN0cmlidXRpb25zIHdoaWNo
IGhhdmUgZW5hYmxlZCBQcml2YXRlVG1wIGZvciB0aGUgYWZmZWN0ZWQgc2Vy
dmljZS4NCkZpeGVzL1JlZmVyZW5jZXMNCi0tLS0tLS0tLS0tLS0tDQo5LjEw
Lngg4oCTIGh0dHBzOi8vZ2l0aHViLmNvbS92bXdhcmUvb3Blbi12bS10b29s
cy9jb21taXQvYzEzMDRjZThiZmQ5YzBjMzM5OTllNDk2YmY3MDQ5ZDVjM2Q0
NTgyMQ0KMTAuMC54IC0gaHR0cHM6Ly9naXRodWIuY29tL3Ztd2FyZS9vcGVu
LXZtLXRvb2xzL2NvbW1pdC9iMzA2OGIwNDg4MGVkYTRjYTNlMTNmMmQzNGZi
OGNlMzM2YWQxYTRmDQoxMC4xLnggLSBodHRwczovL2dpdGh1Yi5jb20vdm13
YXJlL29wZW4tdm0tdG9vbHMvY29tbWl0LzIyZTU4Mjg5ZjcxMjMyMzEwZDMw
Y2YxNjJiODNiNTE1MWE5MzdiYWMNCldlIHdvdWxkIGxpa2UgdG8gdGhhbmsg
RmxvcmlhbiBXZWltZXIgYW5kIEt1cnQgU2VpZnJpZWQgb2YgUmVkIEhhdCBQ
cm9kdWN0IFNlY3VyaXR5IGZvciByZXBvcnRpbmcgdGhpcyBpc3N1ZSB0byB1
cy4NCg0KLS0tLS0tLS0tLS0tLS0NCkVkd2FyZCBIYXdraW5zDQpTZW5pb3Ig
UHJvZ3JhbSBNYW5hZ2VyLCBTZWN1cml0eSBSZXNwb25zZQ0Kc2VjdXJpdHlA
dm13YXJlLmNvbQ0K

--_000_A047823A119C4C8EA41E313270E085BAvmwarecom_--
