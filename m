X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1694" "Friday" "23" "September" "2016" "09:48:07" "+0000" "Hu Chaojian" "chaojianhu@hotmail.com" "<CY1PR17MB0313FFDC60CA5F5ABE1EFB90DBC80@CY1PR17MB0313.namprd17.prod.outlook.com>" "31" "[oss-security] CVE request Qemu: hw: net: Fix a heap overflow in xlnx.xps-ethernetlite" nil nil nil "9" "2016092309:48:07" "[oss-security] CVE request Qemu: hw: net: Fix a heap overflow in xlnx.xps-ethernetlite" (number mark "U       chaojianhu@h Sep 23   31/1694  " thread-indent "\"[oss-security] CVE request Qemu: hw: net: Fix a heap overflow in xlnx.xps-ethernetlite\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13646 invoked by uid 550); 23 Sep 2016 12:17:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3645 invoked from network); 23 Sep 2016 09:48:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=MZEgUIjlRqC7nOgw157oIKzRuVUHedC6rpG0HM9yI1g=;
 b=NqBsLdvXvHiEwv9lhkcu5C0klGL3f51ezfe+c6vYNDLlLKrQFVAtAi3J1EW0cWvsDyCHdc0U6bXL9oyvztHF2/rUIy2wDqKE8PKdtdZHCBPsKSj3WIt6y+ETIt94FPeRG0NA/0RQM75Z1miQuox6K5B+wwQyNaFXrsRWTGTvtHd0W/tem789VoKDFyUnxMTUoNuqVp3NrotNXlB976ktjbagoV8T2+jtM9TJUzfrgx1quofVEBad8xQb2q4k39NSOY5wkOIDb46WE9myjjwPIjRfbv0NTUqUwnVq+AhWXTvG1dU/eiO9AaPTaLfi0qOjZi3MNT5d8S2ZeysiXCAoNg==
From: Hu Chaojian <chaojianhu@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE request Qemu: hw: net: Fix a heap overflow in
 xlnx.xps-ethernetlite
Thread-Index: AQHSFX5IyK4ulcqB8kyc3yAEXquhYg==
Date: Fri, 23 Sep 2016 09:48:07 +0000
Message-ID: <CY1PR17MB0313FFDC60CA5F5ABE1EFB90DBC80@CY1PR17MB0313.namprd17.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=softfail (sender IP is 10.152.64.53)
 smtp.mailfrom=hotmail.com; lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=fail action=none
 header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
 hotmail.com discourages use of 10.152.64.53 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [A40pnO3Lp2qJVEV8NuPQUcx3xq9yMxm5]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1;SN1NAM01HT104;6:7zXjXgwOXSG5jxucH+LidvafYxprqudm87Z/yRjNDHrTTGdQi7fKMM4Jp1bPWRnSeGl4K0Gb4iBi8XB0niZH2vMs8iKIY2RVv1JpONysl5zvRe/niPtPbKMtlZTVAq1oPhn3iUuGp7NSpF/tZkX/UxTdmYpY+GZWUvOlKuWobLXs219dmPK3hBAdGad8D0UUwJL5PjP2WA0plKwXvbULHeqkNQww55qPkY63CWrmO/C+cMGdAO1bv/vuFtlKqyitH9dvU4Kv6lA7ptg6a9bqUPn1PXIW2j/uKQeaaZhappQ=;5:Pz850d1veVcx+KXsPzr4YYi09o0fHkNajndHkkAdBSPMLBeUIb0t/n7WatTEAFnPVOdf+ARsY5A9/3wO18WL/UIv4DM5Q2/yz6rtVeE9qc0mlkD/Ra+9oX39cGkoPjDKYmE9N6E8QyGuPJMgvA2lbg==;24:vflYOleCwIOcVXrrb4v2ka9O7TaMzRUhx34RarXtr0FcjWLb6sdKwTCqVHhkGU2nbWkg+yRf1KoG0yL4ih09aVJnuxvjZKXEcULi7GnozY8=;7:ZONYyWGQWnvoZG62g/F6Z/7WerDGF8La8vOkF9WZPI5edCvv7klBRHu5sJuYuoGBzUyzMnFEfqVzAobTvdf18rRDL++AJALohSI/9gLswl9JpVv0iIO6G51IGvofe371DWlvmrlz0Zv8OZV6yKQet26donDHly44pnkl6/m/RjBGI0nixw71PPkHKyfyPVlggp6TAxl2ul3UYiGeFeO6STV6xpV7Z3ptTr0knTzNLhfpSq9ATE7iKiylUHfX2Um+n8zxLMx3vGTDOWe3NCaTfW0HjTBY6c5PfUOwoXqpBQ1OXp00nZYgiFYAcGaHMBXx
x-forefront-antispam-report: EFV:NLI;SFV:NSPM;SFS:(10019020)(98900003);DIR:OUT;SFP:1102;SCL:1;SRVR:SN1NAM01HT104;H:CY1PR17MB0313.namprd17.prod.outlook.com;FPR:;SPF:None;LANG:en;
x-ms-office365-filtering-correlation-id: 99e7f3e8-34ab-423f-3d95-08d3e396b905
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(1601124038)(1603103081)(1601125047)(1603101230);SRVR:SN1NAM01HT104;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(432015012)(82015046);SRVR:SN1NAM01HT104;BCL:0;PCL:0;RULEID:;SRVR:SN1NAM01HT104;
x-forefront-prvs: 0074BBE012
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_CY1PR17MB0313FFDC60CA5F5ABE1EFB90DBC80CY1PR17MB0313namp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2016 09:48:07.5747
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM01HT104
X-OriginalArrivalTime: 23 Sep 2016 09:48:09.0431 (UTC) FILETIME=[97859670:01D2157F]
Subject: [oss-security] CVE request Qemu: hw: net: Fix a heap overflow in
 xlnx.xps-ethernetlite

--_000_CY1PR17MB0313FFDC60CA5F5ABE1EFB90DBC80CY1PR17MB0313namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

VGhlIC5yZWNlaXZlIGNhbGxiYWNrIG9mIHhsbngueHBzLWV0aGVybmV0bGl0
ZSBkb2Vzbid0IGNoZWNrIHRoZSBsZW5ndGgNCg0Kb2YgZGF0YSBiZWZvcmUg
Y2FsbGluZyBtZW1jcHkuIEFzIGEgcmVzdWx0LCB0aGUgTmV0Q2xpZW50U3Rh
dGUgb2JqZWN0IGluDQpoZWFwIHdpbGwgYmUgb3ZlcmZsb3dlZC4gQXR0YWNr
ZXJzIG1heSBsZXZlcmFnZSBpdCB0byBleGVjdXRlIGFyYml0cmFyeQ0KDQpj
b2RlIHdpdGggcHJpdmlsZWdlcyBvZiB0aGUgcWVtdSBwcm9jZXNzIG9uIHRo
ZSBob3N0Lg0KDQoNClVwc3RyZWFtIHBhdGNoZXM6DQoNCmh0dHBzOi8vbGlz
dHMuZ251Lm9yZy9hcmNoaXZlL2h0bWwvcWVtdS1kZXZlbC8yMDE2LTA4L21z
ZzAxNTk4Lmh0bWwNCmh0dHBzOi8vbGlzdHMuZ251Lm9yZy9hcmNoaXZlL2h0
bWwvcWVtdS1kZXZlbC8yMDE2LTA4L21zZzAxODc3Lmh0bWw8aHR0cHM6Ly9s
aXN0cy5nbnUub3JnL2FyY2hpdmUvaHRtbC9xZW11LWRldmVsLzIwMTYtMDgv
bXNnMDE1OTguaHRtbGh0dHBzOi8vbGlzdHMuZ251Lm9yZy9hcmNoaXZlL2h0
bWwvcWVtdS1kZXZlbC8yMDE2LTA4L21zZzAxODc3Lmh0bWw+DQoNClRoaXMg
aXNzdWUgd2FzIGRpc2NvdmVyZWQgYnkgY2hhb2ppYW5odTxjaGFvamlhbmh1
QGhvdG1haWwuY29tPg0KDQpUaGFua3MsDQoNCkNoYW9qaWFuIEh1DQoNCg0K
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KDQpwLnMuDQoNCkFsaXN0YWlyICh0aGUgY29kZSBtYWludGFpbmVyKSBo
YXZlIHJlcXVlc3RlZCBhIGN2ZSBpZCBmb3IgdGhpcyB2dWxuZXJhYmlsaXR5
Lg0KDQoNCj4+SGVsbG8gY2hhb2ppYW5odSwNCg0KPj5JIGNyZWF0ZWQgYSBD
VkUsIGJ1dCBJIGNhbid0IGFjY2VzcyBpdC4gRG8geW91IGtub3cgaG93IHRv
IGV4cG9zZSB0aGUgQ1ZFPw0KDQo+Pmh0dHBzOi8vY3ZlLm1pdHJlLm9yZy9j
Z2ktYmluL2N2ZW5hbWUuY2dpP25hbWU9Q1ZFLTIwMTYtNzE2MQ0KDQo+PlRo
YW5rcywNCg0KPj5BbGlzdGFpcg0KDQoNCkJ1dCB0aGVyZSBzZWVtcyBhIHNt
YWxsIHByb2JsZW0uDQo=

--_000_CY1PR17MB0313FFDC60CA5F5ABE1EFB90DBC80CY1PR17MB0313namp_--
