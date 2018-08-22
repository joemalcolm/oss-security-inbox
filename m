X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["883" "Wednesday" "22" "August" "2018" "07:37:24" "+0000" "Yasser Zamani" "yasserzamani@apache.org" "<DB5PR08MB10623BF00ACDCA92BF685C63AF300@DB5PR08MB1062.eurprd08.prod.outlook.com>" "15" "[oss-security] [ANN] CVE-2018-11776 Apache Struts 2.3 to 2.3.34 and 2.5 to 2.5.16" nil nil nil "8" "2018082207:37:24" "[oss-security] [ANN] CVE-2018-11776 Apache Struts 2.3 to 2.3.34 and 2.5 to 2.5.16" (number mark "U       yasserzamani Aug 22   15/883   " thread-indent "\"[oss-security] [ANN] CVE-2018-11776 Apache Struts 2.3 to 2.3.34 and 2.5 to 2.5.16\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32383 invoked by uid 550); 22 Aug 2018 09:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16004 invoked from network); 22 Aug 2018 07:37:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1hds3DZLEGq8IhGQ55XSfz1SCdEDrCOqd0L5iNsy5o4=;
 b=PSuD8XUAsGiUQg8tvaIMosbf6uOHuvMFgRq1s4r/w4WXchiSCs/RiK70e6ETwOqRAYAnwwe84JpyF6BPulAb9CX+GHq17H98B11B/6mkW+io2xwYz4T3y7rFGdGl0cdJBh7Z+O4K1ExIiR26siBfso6GG9uBTbMN0Ae1zqtNVASPrbHO8MkVVtha0Vo48brqRsxP8QU2TuSv+205FEbjLtap+t6ooNn+5o3QaFzgGXifzyCGU8WL/bqLwPbwurgnjVIkdhnZWxiRoor2XICoOO6M7kMApXAfzzrTZRwt34wBu8xpGM70FLcuMpCmjBfk2UhJNz5pEr5C/otal77Q8Q==
From: Yasser Zamani <yasserzamani@apache.org>
To: Struts User <user@struts.apache.org>, Struts Dev <dev@struts.apache.org>,
	Struts Announcements <announcements@struts.apache.org>, Apache Announce
	<announce@apache.org>, "security-reports@semmle.com"
	<security-reports@semmle.com>, Struts Security <security@struts.apache.org>,
	oss-security <oss-security@lists.openwall.com>, full-disclosure
	<full-disclosure@lists.grok.org.uk>, bugtraq <bugtraq@securityfocus.com>
Thread-Topic: [ANN] CVE-2018-11776 Apache Struts 2.3 to 2.3.34 and 2.5 to
 2.5.16
Thread-Index: AQHUOer3LlrSx3vVMkK2h2NR7ljHlA==
Sender: Yasser Zamani <yasser.zamani@live.com>
Date: Wed, 22 Aug 2018 07:37:24 +0000
Message-ID: <DB5PR08MB10623BF00ACDCA92BF685C63AF300@DB5PR08MB1062.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-clientproxiedby: KU1PR03CA0008.apcprd03.prod.outlook.com
 (2603:1096:802:18::20) To DB5PR08MB1062.eurprd08.prod.outlook.com
 (2603:10a6:0:14::23)
x-incomingtopheadermarker: OriginalChecksum:D970BB67D2FE1A73C886ED3E6FE0ED21AE5723B83085BF3FE7A27BD77C484515;UpperCasedChecksum:1303F6A054BCFE01A042A99046A8BDE24C9D1570676E2B2765DE569531AE4AAC;SizeAsReceived:7815;Count:49
x-ms-exchange-messagesentrepresentingtype: 2
x-tmn: [PTXHWk/uOxuHz64QjsE3Rbhi3p8kBNV8]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;HE1EUR02HT152;6:2miuOc7dtVXPjjfzXFUv3JO7OF4uva4OmWtn3fI3aRAPd67MeJaZPA2atEUBjbSAOcBJnJNQ6ZdhGinhUYn3+FDRHlD3XNa7pc1LbY6KWqfWW1PM5RQer0jpwgy/BKYHU0XvLYNglC89p3tKFrPufv7Ox1d1NVJCKe1KNBHmZnLEIFwolgwTUyefBmK4/r1gmC7scywFq872GVCjr48HOQ+QpXQe0k4iyENxfwdIvrPTax1HUCwG9YvjdhL62jHnvlvyGq+Rccfk3SzbY1tZE2hGxL5YYaiUKY7Dl2emxR9rhRkeaYWrBfYAzIgkrTG40rnnQYWNHsolAokkoXG057mg4lHKRSDsZLwekSBW0e65MMeQ+RiCOZRWnNG6rNW+WnhvrpbaKask0HQhPNVrlzC6izZSCgP0gfWYqmve/wMR6VkntzL21zEaCK2PJ0Q9o2I8SVWU/C/2ZUleEfSB3w==;5:SVDecYEUcQTBAK5ppum2ikXuzgh4Rc5lpXsg92Qoe/oXeeXi+BqJ/eWNLrICpQObeZGozH1Y2UG47cHjKakPtrspyVbW7avJyGsG3SEX/sy/lkUMYAZ2wwkOYxn99h5ARUYl/5H8/mQgJLJCKVi669LWaDv+VXOHlU9fdDJG1HY=;7:xE3i3UvgR4XiGctT+bohswlaLA8z6k4qlM+3x5dH3MzlPvPUevwhM+Z8rApGftRk/VmThACgjoRolMOi9Oeps0r9ygA6UoBxZzNDQNm37A6fVrN9eJPJE4ogG71IjJ8+5gKePKf1RM9GmSNCIAnYG5/7C5KHFbtWV9jFYjpJjqszH65PQiZDmlQy9fSVjkGHD0S6+DXmoNicsEugzONifGi8w9tWg9mgvnw21LBjv5j88Bh4EnQyDGrorcUpSYzy
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);SRVR:HE1EUR02HT152;
x-ms-traffictypediagnostic: HE1EUR02HT152:
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(4566010)(82015058);SRVR:HE1EUR02HT152;BCL:0;PCL:0;RULEID:;SRVR:HE1EUR02HT152;
x-forefront-prvs: 0772E5DAD5
x-forefront-antispam-report: SFV:NSPM;SFS:(7070007)(189003)(199004)(2501003)(5250100002)(43066004)(14454004)(2900100001)(110136005)(105586002)(106356001)(104016004)(99286004)(8676002)(8936002)(33656002)(81156014)(102836004)(6346003)(305945005)(68736007)(26005)(14444005)(6392003)(97736004)(5660300001)(7846003)(386003)(6436002)(6506007)(55016002)(42882007)(6306002)(9686003)(56003)(256004)(476003)(25786009)(486006)(74316002)(7696005);DIR:OUT;SFP:1901;SCL:1;SRVR:HE1EUR02HT152;H:DB5PR08MB1062.eurprd08.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: live.com does not designate
 permitted sender hosts)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yasser.zamani@live.com; 
x-microsoft-antispam-message-info: dusSbMccsW2CBrP/wKm6M2dQc+iiEATvqgXeyHjWDXHQ8autB/RPVRGf6kKXiekM663U/982HgdwmKd9QufITbdRDdFLwYXKY5ZoYDHw8qh3jEYd8H5DAg+lBnkmiBkpmTxDe1e4gl8nxQtXQzgv5CNNmMoMOsnRCuJ5RTYx6ZiG49vYQI/9skXLb1DaGVImw0OWKaxWVGxJo4FcXFn/eHDO0Rri3pN+JUs+XAnRMNQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <756EE8EA878E5343A0E526A7D729BDAD@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: b6587b75-6f1a-4db7-b0b6-5cad10ef59a7
X-MS-Exchange-CrossTenant-Network-Message-Id: 86c86b95-532c-4373-cf7e-08d6080219dd
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: b6587b75-6f1a-4db7-b0b6-5cad10ef59a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2018 07:37:24.1271
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT152
Subject: [oss-security] [ANN] CVE-2018-11776 Apache Struts 2.3 to 2.3.34 and 2.5 to 2.5.16

W0NWRUlEXTpDVkUtMjAxOC0xMTc3Ng0KW1BST0RVQ1RdOkFwYWNoZSBTdHJ1
dHMNCltWRVJTSU9OXTpBcGFjaGUgU3RydXRzIDIuMyB0byAyLjMuMzQgYW5k
IDIuNSB0byAyLjUuMTYNCltQUk9CTEVNVFlQRV06UmVtb3RlIENvZGUgRXhl
Y3V0aW9uDQpbUkVGRVJFTkNFU106aHR0cHM6Ly9jd2lraS5hcGFjaGUub3Jn
L2NvbmZsdWVuY2UvZGlzcGxheS9XVy9TMi0wNTcNCltERVNDUklQVElPTl06
TWFuIFl1ZSBNbyBmcm9tIHRoZSBTZW1tbGUgU2VjdXJpdHkgUmVzZWFyY2gg
dGVhbSB3YXMNCm5vdGljZWQgdGhhdCBBcGFjaGUgU3RydXRzIHZlcnNpb25z
IDIuMyB0byAyLjMuMzQgYW5kIDIuNSB0byAyLjUuMTYNCnN1ZmZlciBmcm9t
IHBvc3NpYmxlIFJlbW90ZSBDb2RlIEV4ZWN1dGlvbiB3aGVuIHVzaW5nIHJl
c3VsdHMgd2l0aCBubw0KbmFtZXNwYWNlIGFuZCBpbiBzYW1lIHRpbWUsIGl0
cyB1cHBlciBhY3Rpb24ocykgaGF2ZSBubyBvciB3aWxkY2FyZA0KbmFtZXNw
YWNlLiBTYW1lIHBvc3NpYmlsaXR5IHdoZW4gdXNpbmcgdXJsIHRhZyB3aGlj
aCBkb2VzbuKAmXQgaGF2ZSB2YWx1ZQ0KYW5kIGFjdGlvbiBzZXQgYW5kIGlu
IHNhbWUgdGltZSwgaXRzIHVwcGVyIGFjdGlvbihzKSBoYXZlIG5vIG9yIHdp
bGRjYXJkDQpuYW1lc3BhY2UuDQo=
