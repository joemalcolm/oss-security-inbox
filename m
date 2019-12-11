X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1802" "Wednesday" "11" "December" "2019" "00:10:31" "+0000" "VMware Security Response Center" "security@vmware.com" nil "30" nil nil nil nil "12" nil nil (number mark "U       security@vmw Dec 11   30/1802  " thread-indent "\"Re: [oss-security] CVE-2019-5544 openslp 1.2.1, 2.0.0 heap overflow vulnerability\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-5544 openslp 1.2.1, 2.0.0 heap overflow vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30539 invoked by uid 550); 11 Dec 2019 08:01:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1659 invoked from network); 11 Dec 2019 00:10:46 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/avwVkV14LxTzzXERXmCU9EzgrBE/Uuw5In5sMHbynssOtDHvLphxKsd+7f/AtYDPI1JHtO9dBZxDCHp+VUGPokO+nNKHCIhuTKX9ifXun9JgpeOC+iQRUUT0SX4IauN1wcM0U36DBHSGW/2v5Zq5s7TWxeMGvfLuZTduxwpq83AbSPd9gpQSuV76Pgkgmq5QX7m5LN1FQVVN7MuxF6CoDTpbUpT9sQwEM4TT9WqGqtbhtkaoK+NUusGPKoPNivWII2LjpvRPJOg4RDD+RofHBE8Aq54xCbWFPlCh1SIVlmCkTzxSuf0P4gf1kxkZGLPqiajiHkRC4nsHn7/s09/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YMng/DUH2GmxEp5QSJ5bhpmU+HBYypyJpTx06X6qwTo=;
 b=lJ81cFdVr/pLsKD2xL3PDPC5X3gYZ0zFlUJq0EbjYQ6oFySwpcjPEkeoKVhWJ3PpznYCLpvPKT7pgpwMQ7foW/2nrxXsbuiO471o+17r+4ijbXtJn7XrdZGqlZO34siURGUOZdYDevWnlgYfOBUwj8seormhpXxKz65qFddvTZDCYZVoUNZwLPxSffff+VqsDXe8QeEf9sn2tCW6eo7xZMXblImJmj1aV6WExcRBtpYaPDlJXHqEHGL6ru31BO9At9GpJz0K6ecWGbc/OEdtP8LmBGhQUGaEAcajQJN7F8vqV4S4Pc3izSsRzbHbcY0+ihHb8bHVjghquQZSuxEoIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YMng/DUH2GmxEp5QSJ5bhpmU+HBYypyJpTx06X6qwTo=;
 b=zz0itQTeGiG3SRcB5s8TRZPVfW1pjSTtog9dv6RJT29KWddetYTSYtfs7VWbFMOL5BQunAw2C+Nzth0YJvi1iiMQ8Sy2KXnCjYnAoQDcEfV33jNSbFMG+/b7r+m3x43UCy+kLL4IC/6d/uEqCWK6B2Kte0q5iUXuSQMXe/m6XP8=
From: VMware Security Response Center <security@vmware.com>
To: Riccardo Schirone <rschiron@redhat.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
CC: VMware Security Response Center <security@vmware.com>
Thread-Topic: [oss-security] CVE-2019-5544 openslp 1.2.1, 2.0.0 heap overflow
 vulnerability
Thread-Index: AQHVq/WHG8bJ+1Fp+Ey+yyAW29S8eqezMFeAgABgbQA=
Date: Wed, 11 Dec 2019 00:10:31 +0000
Message-ID: <2A58D60A-BDD0-4546-BB2E-A5D53E6CD866@vmware.com>
References: <7FAE04BF-0229-4BF8-A2C5-756AD04425E5@vmware.com>
 <20191210102523.GB4424@fedorawork>
In-Reply-To: <20191210102523.GB4424@fedorawork>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1f.0.191110
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=security@vmware.com; 
x-originating-ip: [66.170.99.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71aa9da5-fa07-4ff1-41cb-08d77dce89c3
x-ms-traffictypediagnostic: BYAPR05MB3976:|BYAPR05MB3976:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <BYAPR05MB39767F2A06F484BC8249E56DB95A0@BYAPR05MB3976.namprd05.prod.outlook.com>
x-vmwhitelist: True
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(396003)(39860400002)(366004)(346002)(376002)(136003)(199004)(189003)(81166006)(8936002)(8676002)(6506007)(110136005)(81156014)(6512007)(2906002)(15650500001)(5660300002)(186003)(107886003)(26005)(53546011)(4326008)(2616005)(478600001)(66946007)(66556008)(6486002)(76116006)(71200400001)(66476007)(86362001)(966005)(66446008)(316002)(36756003)(64756008)(33656002);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR05MB3976;H:BYAPR05MB3959.namprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tFyvRRK0hktuNjkt80XSUt9ikh0N1pemecQxn87BYSSxr4YBLMTDJxHVL6C3xo6fenTeDXDhogpBOB+HEz2hFn9WLqUUvbDrwDpbk+8oXtfRYnMbCZAiTrxpZWkPn+faUHF3txY8ngmGnLIGzucOjBnG2qskVJbrnm0cOiHyKGQVtkHnuxovqEXmgpjrsclnXm9tk+TKKHXzmHep0Wuo1E2S9UPdhy44TXpoRVavuHE1u4gRfEhWzl0vjkKlaeO++OE8H/8nb9nwqV9m4QHx36FD6FOM+NNErnwyCiBYksFtJV1J+XWV9DfhoFBTdW1R7sJWYIBhilunIUVfpBP+LE2zLyTsPp2+AGeQqRK89mzNSK/VRG6DLF5abGFugkz1wIAzx4CmjwQPaL6haCTyUov4CEFGe0iH9RA5m8m68UJmLiAeASKXhrhISYLVj7JFb32q6ITH4Q5msBJD49X9TBX6zrbVxyQx5s8Ze3Fkp/w=
Content-Type: text/plain; charset="utf-8"
Content-ID: <191B4F6D8F0DEB46BEC5AD416BEAC5A5@namprd05.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71aa9da5-fa07-4ff1-41cb-08d77dce89c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 00:10:32.1895
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S5HTYyX6TckzfMQa2SqeBe07G71j5pqVeRyC3K/ybbUsxcFuVqY2NBlnjpmvgYaP+NMglsEqwVPxMJ3seQwyAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB3976
Subject: Re: [oss-security] CVE-2019-5544 openslp 1.2.1, 2.0.0 heap overflow
 vulnerability

DQoNCu+7vz4gT24gMTIvMTAvMTksIDI6MjUgQU0sICJSaWNjYXJkbyBTY2hp
cm9uZSIgPHJzY2hpcm9uQHJlZGhhdC5jb20+IHdyb3RlOg0KDQogICAgPiBP
biAxMi8wNiwgVk13YXJlIFNlY3VyaXR5IFJlc3BvbnNlIENlbnRlciB3cm90
ZToNCiAgICA+PiBvcGVuc2xwIGhhcyBhIGhlYXAgb3ZlcmZsb3cgdnVsbmVy
YWJpbGl0eSB0aGF0IHdoZW4gZXhwbG9pdGVkIG1heSByZXN1bHQNCiAgID4g
PiBpbiBtZW1vcnkgY29ycnVwdGlvbiBhbmQgYSBjcmFzaCBvZiBzbHBkIG9y
IGluIHJlbW90ZSBjb2RlIGV4ZWN1dGlvbi4NCiAgID4gPiANCiAgID4gPiBD
VkUtMjAxOS01NTQ0IGhhcyBiZWVuIGFzc2lnbmVkIHRvIHRoaXMgaXNzdWUu
DQogICA+ID4gDQogICA+ID4gQmVsb3cgeW91IG1heSBmaW5kOg0KICAgPiA+
IC0gYSBjb3B5IG9mIHRoZSBhZmZlY3RlZCBjb2RlIHdpdGggY29tbWVudHMg
aW5kaWNhdGluZyB0aGUgcHJvYmxlbS4NCiAgID4gPiAtIHBhdGNoZXMgZm9y
IG9wZW5zbHAgdmVyc2lvbnMgMS4yLjEgYW5kIDIuMC4wDQogICAgDQogICAg
PiBBcmUgdGhvc2UgZml4ZXMgY29tbWl0ZWQgYW55d2hlcmU/IEkgY291bGQg
bm90IGZpbmQgdGhlbSBvbiBHaXRIdWIuDQoNClRoZSBwYXRjaGVzIGhhdmUg
YmVlbiBwcm92aWRlZCB0byB0aGUgbWFpbnRhaW5lciBvZiBvcGVuc2xwLiBU
aGVzZSBhcmUgdGhlDQpzYW1lIHBhdGNoZXMgYXMgbWVudGlvbmVkIGluIG91
ciBpbml0aWFsIHBvc3QgYXQNCmh0dHBzOi8vd3d3Lm9wZW53YWxsLmNvbS9s
aXN0cy9vc3Mtc2VjdXJpdHkvMjAxOS8xMi8wNi8xLg0KDQpUaGUgb3BlbnNs
cCBnaXRodWIgcmVwb3NpdG9yeSBoYXMgbm90IHlldCBiZWVuIHVwZGF0ZWQs
IHNlZQ0KaHR0cHM6Ly9naXRodWIuY29tL29wZW5zbHAtb3JnL29wZW5zbHAu
DQogICAgDQogICAgPj4gDQogICAgPj4gVk13YXJlIHdvdWxkIGxpa2UgdG8g
dGhhbmsgdGhlIDM2MFZ1bGNhbiB0ZWFtIHdvcmtpbmcgd2l0aCB0aGUgMjAx
OQ0KICAgID4+IFRpYW5mdSBDdXAgUHduIENvbnRlc3QgZm9yIHJlcG9ydGlu
ZyB0aGlzIGlzc3VlIHRvIHVzLg0KICAgID4+IA0KICAgID4+IFZNd2FyZSBT
ZWN1cml0eSBSZXNwb25zZSBDZW50ZXINCiAgICA+PiANCiAgICA+PiANCiAg
ICANCiAgICA+IFRoYW5rcywNCiAgICA+IC0tIA0KICAgID4gUmljY2FyZG8g
U2NoaXJvbmUNCiAgICA+IFJlZCBIYXQgLS0gUHJvZHVjdCBTZWN1cml0eQ0K
ICAgID4gRW1haWw6IHJzY2hpcm9uQHJlZGhhdC5jb20NCiAgICA+UEdQLUtl
eSBJRDogQ0Y5NkUxMTANCg0KVGhhbmtzLA0KVk13YXJlIFNlY3VyaXR5IFJl
c3BvbnNlIENlbnRlcg0KICAgIA0KDQo=
