X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1884" "Tuesday" "13" "February" "2018" "20:39:25" "+0000" "VMware Security Response Center" "security@vmware.com" "<2FE8FA7E-BFB0-4E4B-BCAB-FAC6FD8D9975@vmware.com>" "34" "[oss-security] Authentication Bypass Vulnerability in VMware Xenon (CVE-2017-4952)" nil nil nil "2" "2018021320:39:25" "[oss-security] Authentication Bypass Vulnerability in VMware Xenon (CVE-2017-4952)" (number mark "U       security@vmw Feb 13   34/1884  " thread-indent "\"[oss-security] Authentication Bypass Vulnerability in VMware Xenon (CVE-2017-4952)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18354 invoked by uid 550); 13 Feb 2018 21:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13776 invoked from network); 13 Feb 2018 20:39:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=onevmw.onmicrosoft.com; s=selector1-vmware-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=FmS8A46XlisSlTKB0pQiUz/36I6gOeF3NpaqWngNLLo=;
 b=fjG8zJnGm7PabW20W+M9gNnAR8tNsijJMg7z0lNL00K/0XRfcVl89c5/yO1nndSpW5Jsi7ODvW3ifTIVKQO4BP98+COkVMbry6E1VuGQctcARniw3L6LL27OoVi6XmYh72/W7owafSMeCZUNNKU9HDc96T5V+lYfLyM2RTTpnKc=
From: VMware Security Response Center <security@vmware.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: VMware Security Response Center <security@vmware.com>
Thread-Topic: Authentication Bypass Vulnerability in VMware Xenon
 (CVE-2017-4952)
Thread-Index: AQHTpQq8gm6veEkqbk+nlYohYP9YNg==
Date: Tue, 13 Feb 2018 20:39:25 +0000
Message-ID: <2FE8FA7E-BFB0-4E4B-BCAB-FAC6FD8D9975@vmware.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/10.9.0.180116
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=security@vmware.com; 
x-originating-ip: [73.225.153.207]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;BY2PR0501MB2103;7:PoFkUp8Pxyr2CZgldrUQAH9kbZg/K8MB2p60qLOpUAGkkf1cFMkoQBt996pJuc4YUilbzrB2XEdCxSI/2Id6jxNv7RSJQ15pE/mlznN7iLc4A4uFbaF0nG6HtfUs/OMTIva6pVX81l8f9IxFO3bFPfrnKpROD533dkB8e4JJJYTp2wsZjjGE1WEmdEX/UOaREoGSaMqvT1YqDt7QUm+XkCrvPBGQHYhd+JVE3DUr+feLIvyH15pQXkfegHy7aRhb;20:q+NQpMAvSMKx3bywCNJihmZ4CtLTy7f/KLPkNyHl4tVAXGrd2pTfEzOfbqIAva9d0LLCctN//o0cRJq54PssJyGkwMspfQVj/DblaSnjxPWvZN/ywGPKFwNY4pMOJquch+WD1s+RRyKg2N0JCzT5TZwwAzJ45vqH50mBiS5LVW4=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-forefront-antispam-report: SFV:SKI;SCL:-1;SFV:NSPM;SFS:(10009020)(39380400002)(366004)(396003)(346002)(39860400002)(376002)(199004)(189003)(6512007)(6306002)(54896002)(236005)(66066001)(5640700003)(6486002)(107886003)(6436002)(316002)(58126008)(6916009)(86362001)(606006)(575784001)(99286004)(83506002)(53936002)(97736004)(5660300001)(7736002)(25786009)(4326008)(3660700001)(77096007)(26005)(3280700002)(2900100001)(6506007)(186003)(82746002)(106356001)(478600001)(105586002)(33656002)(14454004)(966005)(81166006)(8936002)(81156014)(8676002)(2351001)(59450400001)(102836004)(68736007)(2906002)(2501003)(83716003)(3846002)(6116002)(36756003);DIR:OUT;SFP:1101;SCL:1;SRVR:BY2PR0501MB2103;H:BY2PR0501MB1686.namprd05.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;A:1;MX:1;LANG:en;
x-ms-office365-filtering-correlation-id: b48ffead-492e-4f2a-13f3-08d57321df0f
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603307)(7153060)(7193020);SRVR:BY2PR0501MB2103;
x-ms-traffictypediagnostic: BY2PR0501MB2103:
x-microsoft-antispam-prvs: <BY2PR0501MB210370B881F9B2000D47DEECB9F60@BY2PR0501MB2103.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(61668805478150)(166708455590820)(192374486261705)(21748063052155)(211171220733660);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040501)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(3231101)(944501161)(10201501046)(6041288)(20161123562045)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);SRVR:BY2PR0501MB2103;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0501MB2103;
x-forefront-prvs: 0582641F53
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: OL7s+B5ukGEh0h8h1vvLOYt/qtuDxh1cu3yYfb3/mK0ZA6nGmmIyAY4RQFFfcnrRvUio4k2/MAbly2w6Eu5f8Q==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_2FE8FA7EBFB04E4BBCABFAC6FD8D9975vmwarecom_"
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b48ffead-492e-4f2a-13f3-08d57321df0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2018 20:39:25.4027
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0501MB2103
Subject: [oss-security] Authentication Bypass Vulnerability in VMware Xenon (CVE-2017-4952)

--_000_2FE8FA7EBFB04E4BBCABFAC6FD8D9975vmwarecom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Vk13YXJlIFhlbm9uIGNvbnRhaW5zIGFuIGF1dGhlbnRpY2F0aW9uIGJ5cGFz
cyB2dWxuZXJhYmlsaXR5IChDVkUtMjAxNy00OTUyKSBkdWUgdG8gaW5zdWZm
aWNpZW50IGFjY2VzcyBjb250cm9scyBmb3IgdXRpbGl0eSBlbmRwb2ludHMu
IFN1Y2Nlc3NmdWwgZXhwbG9pdGF0aW9uIG9mIHRoaXMgaXNzdWUgbWF5IHJl
c3VsdCBpbiBpbmZvcm1hdGlvbiBkaXNjbG9zdXJlLg0KRml4ZXMvUmVmZXJl
bmNlcw0KLS0tLS0tLS0tLS0tLS0NCm1hc3RlcjogaHR0cHM6Ly9naXRodWIu
Y29tL3Ztd2FyZS94ZW5vbi9jb21taXQvYzIzOTY0ZWI1N2U4NDYxMjZkYWVm
OThlZjdlZDE1NDAwMzEzZTk3Nw0KMS41LjQtQ1I3XzE6IGh0dHBzOi8vZ2l0
aHViLmNvbS92bXdhcmUveGVub24vY29tbWl0LzU2ODJlZjhkNDA1NjlhZmQw
MGZiOWE1OTMzZTc3MDZiYjViNjY3MTMNCjEuNS43Xzc6IGh0dHBzOi8vZ2l0
aHViLmNvbS92bXdhcmUveGVub24vY29tbWl0LzA2Yjk5NDdjZjYwM2JhNDBm
ZDhiMDNiZmViMmU4NDUyOGE3YWI1OTINCjEuNS40LUNSNl8yOiBodHRwczov
L2dpdGh1Yi5jb20vdm13YXJlL3hlbm9uL2NvbW1pdC8zMGFlNDFiY2NmNDE4
ZDg4YjUyYjM1YTgxZWZiM2MxMzA0Yjc5OGY4DQoxLjMuNy1DUjFfMjogaHR0
cHM6Ly9naXRodWIuY29tL3Ztd2FyZS94ZW5vbi9jb21taXQvN2E3NDdkODJi
ODBjZDM4ZDJjMTFhMGQ5Y2RlZGI3MWM3MjJhMmM3NQ0KMS4xLjAtQ1IwLTM6
IGh0dHBzOi8vZ2l0aHViLmNvbS92bXdhcmUveGVub24vY29tbWl0Lzc1NmQ4
OTM1NzM0MTRlZWM4NjM1YzJhYmEyMzQ1YzRkY2YxMGIyMWMNCjEuMS4wLUNS
M18xOiBodHRwczovL2dpdGh1Yi5jb20vdm13YXJlL3hlbm9uL2NvbW1pdC8w
NTVhZTEzNjAzZjBjYzNjZDdjZjU5ZjIwY2UzMTRiZjhkYjU4M2UxDQoxLjQu
Mi1DUjRfMTogaHR0cHM6Ly9naXRodWIuY29tL3Ztd2FyZS94ZW5vbi9jb21t
aXQvZWMzMGRiOWFmYWRhOWNiNTI4NTIwODJjZTRkN2QwMDk1NTI0ZjNiMw0K
MS41LjRfODogaHR0cHM6Ly9naXRodWIuY29tL3Ztd2FyZS94ZW5vbi9jb21t
aXQvZWMzMGRiOWFmYWRhOWNiNTI4NTIwODJjZTRkN2QwMDk1NTI0ZjNiMw0K
V2Ugd291bGQgbGlrZSB0byB0aGFuayBHZW9yZ2UgQ2hyeXNhbnRoYWtvcG91
bG9zIG9mIGZvciByZXBvcnRpbmcgdGhpcyBpc3N1ZS4NCg0KLS0tLS0tLS0t
LS0tLS0NCkVkd2FyZCBIYXdraW5zDQpTZW5pb3IgUHJvZ3JhbSBNYW5hZ2Vy
LCBTZWN1cml0eSBSZXNwb25zZQ0Kc2VjdXJpdHlAdm13YXJlLmNvbQ0K

--_000_2FE8FA7EBFB04E4BBCABFAC6FD8D9975vmwarecom_--
