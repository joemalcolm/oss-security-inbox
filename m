X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2713" "Wednesday" "9" "March" "2016" "20:28:18" "+0000" "Boyle, Stephen V." "sboyle@mitre.org" "<CY1PR09MB0873F6FEB038FFA58DC4C7D7C7B30@CY1PR09MB0873.namprd09.prod.outlook.com>" "45" "RE: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030920:28:18" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        sboyle@mitre Mar  9   45/2713  " thread-indent "\"RE: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CANO=Ty1cSnXsM01ebMNTvKLeaoPy0t7Mucb9EFAprr95rXFvSw@mail.gmail.com>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" "<CANO=Ty1cSnXsM01ebMNTvKLeaoPy0t7Mucb9EFAprr95rXFvSw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32229 invoked by uid 550); 9 Mar 2016 20:29:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31915 invoked from network); 9 Mar 2016 20:28:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.onmicrosoft.com;
 s=selector1-mitre-org;
 h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=wWsdW1pswBr3HZjq1nh2JUM39Thb2kQCU62UyRwO6t8=;
 b=wLZ1iSnhSybu2MdFCpbhvf2/9h1wibWhUK+rrhQg6Dk9aDgQjTrVl6R2jqgicDkA+Dr8Gbvt5oPiqXEnZbwJc6iReOuR6xDMY+blAmcPWOU8sLmGuMUpzRRnu+qo1EtlLzfHD4pxyMNJMwN+QHEo2I+CWyCvBss4ocOqoffFOQ4=
Thread-Topic: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
Thread-Index: AQHRdklaauG4ZAWPgEqNPSa412ugqZ9LGhqAgADbtACAAGgmAIAAKceAgAAKoICAAAgYgIAAEN8AgAA4yACABGihgIAAAvoAgAAwnQCAAACpAIAAE65w
Message-ID: <CY1PR09MB0873F6FEB038FFA58DC4C7D7C7B30@CY1PR09MB0873.namprd09.prod.outlook.com>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
	<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
 <CANO=Ty1cSnXsM01ebMNTvKLeaoPy0t7Mucb9EFAprr95rXFvSw@mail.gmail.com>
In-Reply-To: <CANO=Ty1cSnXsM01ebMNTvKLeaoPy0t7Mucb9EFAprr95rXFvSw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=mitre.org;
x-originating-ip: [192.80.55.88]
x-ms-office365-filtering-correlation-id: a4cf7f3a-a52a-454a-8433-08d3485959c3
x-microsoft-exchange-diagnostics: 1;CY1PR09MB0873;5:R/8RpAmwj1SkMRT9SoNLbCpnS94iWTCxrNFVgXhu4oiptk2zMH3oBnUQ1mqS1g1vLVVM06uKNczXH4V/3PRRf6X3I8GjB0HElClwu8P4QLAFRL5v4kx1Y2avyHhApWYo1JLmSLin1oPZe1vU5p1KXQ==;24:k0tUoaogdZk0hsU3ivCIwYvBRvX409meo7fewxCajLwXYIYeHw8GiT7V0/4glhYHPPBr/gZcQRjvUyob50dOXP0ZG/CLIzW2LVOZDJnQ3x4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR09MB0873;
x-ld-processed: c620dc48-1d50-4952-8b39-df4d54d74d82,ExtAddr
x-microsoft-antispam-prvs: <CY1PR09MB0873BB5D7A822770A1D4B5AAC7B30@CY1PR09MB0873.namprd09.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);SRVR:CY1PR09MB0873;BCL:0;PCL:0;RULEID:;SRVR:CY1PR09MB0873;
x-forefront-prvs: 0876988AF0
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(24454002)(13464003)(377454003)(11100500001)(122556002)(1220700001)(19580405001)(102836003)(19580395003)(1096002)(2950100001)(92566002)(15650500001)(3280700002)(3846002)(6116002)(15975445007)(81166005)(5002640100001)(33656002)(66066001)(2501003)(4001450100002)(586003)(10400500002)(87936001)(99286002)(50986999)(2900100001)(5003600100002)(76176999)(54356999)(86362001)(189998001)(7110500001)(106116001)(5008740100001)(2906002)(5001770100001)(5004730100002)(77096005)(107886002)(10710500007)(74316001)(3660700001)(76576001);DIR:OUT;SFP:1101;SCL:1;SRVR:CY1PR09MB0873;H:CY1PR09MB0873.namprd09.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2016 20:28:18.2615
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR09MB0873
X-OriginatorOrg: mitre.org
Date: Wed, 9 Mar 2016 20:28:18 +0000
From: "Boyle, Stephen V." <sboyle@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: RE: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"David A. Wheeler" <dwheeler@dwheeler.com>, cve-editorial-board-list
	<cve-editorial-board-list@lists.mitre.org>

SGkgS3VydCBhbmQgRGF2aWQsDQoNClRoZSBDVkUgdGVhbSBpcyBob2xkaW5n
IGEgc2VyaWVzIG9mIGludGVybmFsIG1lZXRpbmdzIHJlbGF0ZWQgdG8gdGhl
IHJlZmVyZW5jZWQgaXNzdWVzLCBpbmNsdWRpbmcgb25lIHRvbW9ycm93LiBU
aGVyZSBpcyBub3QgYSBtZWV0aW5nIHdpdGggdGhlIEVkaXRvcmlhbCBCb2Fy
ZCAob3IgYSBzdWJzZXQgb2YgRWRpdG9yaWFsIEJvYXJkIG1lbWJlcnMpIHNj
aGVkdWxlZCBmb3Igb3IgYmVpbmcgaGVsZCB0b21vcnJvdy4gDQoNCldlIHdv
dWxkIGxpa2UgdG8gcHJvcG9zZSBhbiBFZGl0b3JpYWwgQm9hcmQgbWVldGlu
ZyB0byBhZGRyZXNzIGlzc3VlcyByZWxhdGVkIHRvIENWRSBvcGVyYXRpb25z
LCBzY2FsYWJpbGl0eSwgYW5kIGNvbW11bml0eSBmZWVkYmFjaywgYXMgd2Fz
IGZpcnN0IHN1Z2dlc3RlZCBieSBLZW50IExhbmRmaWVsZCBvbiBKYW51YXJ5
IDUsIDIwMTYuIChGdWxsIGRpc2N1c3Npb24gdGhyZWFkIGF2YWlsYWJsZSBh
dDogaHR0cDovL2NvbW1vbi12dWxuZXJhYmlsaXRpZXMtYW5kLWV4cG9zdXJl
cy1jdmUtZWRpdG9yaWFsLWJvYXJkLjExMjg0NTEubjUubmFiYmxlLmNvbS9D
VkUtQWR2YW5jZW1lbnRzLXR0ODEuaHRtbCkNCg0KIFRoZSBpbnRlcm5hbCBt
ZWV0aW5ncyByZWZlcmVuY2VkIGFib3ZlIHdpbGwgZW5hYmxlIHVzIHRvIGNv
bWUgdG8gdGhhdCBFZGl0b3JpYWwgQm9hcmQgbWVldGluZyB3aXRoIHNwZWNp
ZmljIHJlY29tbWVuZGF0aW9ucyBhbmQgcHJvcG9zZWQgbmV4dCBzdGVwcy4g
IA0KDQpCZXN0IFJlZ2FyZHMsDQpUaGUgTUlUUkUgQ1ZFIFRlYW0NCg0KLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEt1cnQgU2VpZnJpZWQg
W21haWx0bzprc2VpZnJpZWRAcmVkaGF0LmNvbV0gDQpTZW50OiBXZWRuZXNk
YXksIE1hcmNoIDA5LCAyMDE2IDI6MDYgUE0NClRvOiBEYXZpZCBBLiBXaGVl
bGVyIDxkd2hlZWxlckBkd2hlZWxlci5jb20+OyBjdmUtZWRpdG9yaWFsLWJv
YXJkLWxpc3QgPGN2ZS1lZGl0b3JpYWwtYm9hcmQtbGlzdEBsaXN0cy5taXRy
ZS5vcmc+DQpDYzogb3NzLXNlY3VyaXR5IDxvc3Mtc2VjdXJpdHlAbGlzdHMu
b3BlbndhbGwuY29tPg0KU3ViamVjdDogUmU6IFtvc3Mtc2VjdXJpdHldIENv
bmNlcm5zIGFib3V0IENWRSBjb3ZlcmFnZSBzaHJpbmtpbmcgLSBkaXJlY3Qg
aW1wYWN0IHRvIHJlc2VhcmNoZXJzL2NvbXBhbmllcw0KDQpPbiBXZWQsIE1h
ciA5LCAyMDE2IGF0IDEyOjA0IFBNLCBEYXZpZCBBLiBXaGVlbGVyIDxkd2hl
ZWxlckBkd2hlZWxlci5jb20+DQp3cm90ZToNCg0KPiBBbGwgLSBJJ3ZlIGNo
YXR0ZWQgd2l0aCBzb21lIG9mIHRoZSBwZW9wbGUgd2hvIGZ1bmQgdGhlIENW
RSB3b3JrIGF0IE1JVFJFLg0KPiBJJ3ZlIGxlYXJuZWQgdGhhdCBDVkVzICph
cmUqIGJlaW5nIGlzc3VlZCwgYnV0IG9idmlvdXNseSB0aGF0IGlzIGhhcHBl
bmluZw0KPiB0b28gc2xvd2x5Lg0KPg0KPiBUaGV5J3JlIGhhdmluZyBhIG1l
ZXRpbmcgdG9tb3Jyb3cgKE1hcmNoIDEwKSB0byB0cnkgdG8gZmlndXJlIG91
dCB3aGF0DQo+IHRoZSBwcm9ibGVtcyBhcmUgYW5kIGhvdyB0byBmaXggaXQu
ICBJIGRvbid0IGtub3cgd2hhdCB0aGV5J2xsIGRvLg0KPiBIb3dldmVyLCBJ
J20gaG9wZWZ1bCB0aGF0ICB0aGlzIHdpbGwgbWVhbiB0aGF0IHRoZSBDVkUg
d29yayB3aWxsIGdldA0KPiBiYWNrIG9uIHRyYWNrIHNvb24uDQo+DQo+IC0t
LSBEYXZpZCBBLiBXaGVlbGVyDQo+DQoNClRoaXMgaXMgbGl0ZXJhbGx5IHRo
ZSBmaXJzdCBJJ20gaGVhcmluZyBvZiB0aGlzLCB3aWxsIGFueSBib2FyZCBt
ZW1iZXJzIGJlDQpwcmVzZW50Pw0KDQoNCi0tIA0KDQotLQ0KS3VydCBTZWlm
cmllZCAtLSBSZWQgSGF0IC0tIFByb2R1Y3QgU2VjdXJpdHkgLS0gQ2xvdWQN
ClBHUCBBOTBCIEY5OTUgNzM1MCAxNDhGIDY2QkYgNzU1NCAxNjBEIDQ1NTMg
NUUyNiA3OTkzDQpSZWQgSGF0IFByb2R1Y3QgU2VjdXJpdHkgY29udGFjdDog
c2VjYWxlcnRAcmVkaGF0LmNvbQ0K
