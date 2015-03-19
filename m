X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2693" "Thursday" "19" "March" "2015" "22:40:52" "+0000" "Cantor, Scott" "cantor.2@osu.edu" "<BC647880-CC09-46D9-B4D9-0411AA16A80B@osu.edu>" "45" "[oss-security] Xerces-C Security Advisory [CVE-2015-0252]" nil nil nil "3" "2015031922:40:52" "[oss-security] Xerces-C Security Advisory [CVE-2015-0252]" (number mark "        cantor.2@osu Mar 19   45/2693  " thread-indent "\"[oss-security] Xerces-C Security Advisory [CVE-2015-0252]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23750 invoked by uid 550); 20 Mar 2015 00:06:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1762 invoked from network); 19 Mar 2015 22:41:07 -0000
Thread-Topic: Xerces-C Security Advisory [CVE-2015-0252]
Thread-Index: AQHQYpXBsXWe1yHx10e4YtoSNMyHSQ==
Message-ID: <BC647880-CC09-46D9-B4D9-0411AA16A80B@osu.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [140.254.59.88]
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA3CDB01D156E24FBAEA1802A57C64D3@osu.edu>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-EOPAttributedMessage: 0
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 164.107.81.214 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.107.81.214; helo=cio-krc-pf07.osuad.osu.edu;
Authentication-Results: spf=pass (sender IP is 164.107.81.214)
 smtp.mailfrom=cantor.2@osu.edu; apache.org; dkim=none (message not signed)
 header.d=none;
X-Forefront-Antispam-Report:
	CIP:164.107.81.214;CTRY:US;IPV:NLI;EFV:NLI;BMV:1;SFV:NSPM;SFS:(10019020)(6009001)(438002)(50944005)(54524002)(189002)(199003)(230783001)(106116001)(23676002)(62966003)(77156002)(5250100002)(47776003)(106466001)(92566002)(2501003)(36756003)(82746002)(93346002)(2900100001)(50466002)(46102003)(66066001)(50986999)(229853001)(54356999)(107886001)(88552001)(83716003)(19580395003)(6806004)(87936001)(2656002)(102836002)(86362001)(2420400003)(75432002)(109096001)(15975445007)(89122001)(575784001)(33656002)(104396002)(19627235001);DIR:OUT;SFP:1102;SCL:1;SRVR:BY2FFO11HUB064;H:cio-krc-pf07.osuad.osu.edu;FPR:;SPF:Pass;MLV:sfv;MX:1;A:1;LANG:en;
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2FFO11HUB064;
X-Microsoft-Antispam-PRVS:
	<BY2FFO11HUB064C7AF79100BDAC65C9222D0010@BY2FFO11HUB064.protection.gbl>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(601004)(5002010)(5005006);SRVR:BY2FFO11HUB064;BCL:0;PCL:0;RULEID:;SRVR:BY2FFO11HUB064;
X-Forefront-PRVS: 052017CAF1
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2015 22:40:54.3803
 (UTC)
X-MS-Exchange-CrossTenant-Id: b4d138ca-1815-4a9b-a3a7-130a33b1e692
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=b4d138ca-1815-4a9b-a3a7-130a33b1e692;Ip=[164.107.81.214];Helo=[cio-krc-pf07.osuad.osu.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2FFO11HUB064
Date: Thu, 19 Mar 2015 22:40:52 +0000
From: "Cantor, Scott" <cantor.2@osu.edu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Xerces-C Security Advisory [CVE-2015-0252]
To: "security@apache.org" <security@apache.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>

LS0tLS1CRUdJTiBQR1AgU0lHTkVEIE1FU1NBR0UtLS0tLQ0KSGFzaDogU0hB
NTEyDQoNCg0KQ1ZFLTIwMTUtMDI1MjogQXBhY2hlIFhlcmNlcy1DIFhNTCBQ
YXJzZXIgQ3Jhc2hlcyBvbiBNYWxmb3JtZWQgSW5wdXQNCg0KU2V2ZXJpdHk6
IEltcG9ydGFudA0KDQpWZW5kb3I6IFRoZSBBcGFjaGUgU29mdHdhcmUgRm91
bmRhdGlvbg0KDQpWZXJzaW9ucyBBZmZlY3RlZDogQXBhY2hlIFhlcmNlcy1D
IFhNTCBQYXJzZXIgbGlicmFyeSB2ZXJzaW9ucw0KcHJpb3IgdG8gVjMuMS4y
DQoNCkRlc2NyaXB0aW9uOiBUaGUgWGVyY2VzLUMgWE1MIHBhcnNlciBtaXNo
YW5kbGVzIGNlcnRhaW4ga2luZHMgb2YNCm1hbGZvcm1lZCBpbnB1dCBkb2N1
bWVudHMsIHJlc3VsdGluZyBpbiBhIHNlZ21lbnRhdGlvbiBmYXVsdCBkdXJp
bmcNCmEgcGFyc2Ugb3BlcmF0aW9uLiBUaGUgYnVnIGRvZXMgbm90IGFwcGVh
ciB0byBhbGxvdyBmb3IgcmVtb3RlIGNvZGUNCmV4ZWN1dGlvbiwgYnV0IGlz
IGEgZGVuaWFsIG9mIHNlcnZpY2UgYXR0YWNrIHRoYXQgaW4gbWFueSBhcHBs
aWNhdGlvbnMNCm1heSBhbGxvdyBmb3IgYW4gdW5hdXRoZW50aWNhdGVkIGF0
dGFja2VyIHRvIHN1cHBseSBtYWxmb3JtZWQgaW5wdXQNCmFuZCBjYXVzZSBh
IGNyYXNoLg0KDQpNaXRpZ2F0aW9uOiBBcHBsaWNhdGlvbnMgdGhhdCBhcmUg
dXNpbmcgbGlicmFyeSB2ZXJzaW9ucyBvbGRlciB0aGFuDQpWMy4xLjIgc2hv
dWxkIHVwZ3JhZGUgYXMgc29vbiBhcyBwb3NzaWJsZS4gRGlzdHJpYnV0b3Jz
IG9mIG9sZGVyIHZlcnNpb25zDQpzaG91bGQgYXBwbHkgdGhlIHBhdGNoZXMg
ZnJvbSB0aGlzIHN1YnZlcnNpb24gcmV2aXNpb246DQoNCmh0dHA6Ly9zdm4u
YXBhY2hlLm9yZy92aWV3dmM/dmlldz1yZXZpc2lvbiZyZXZpc2lvbj0xNjY3
ODcwDQoNCkNyZWRpdDogVGhpcyBpc3N1ZSB3YXMgcmVwb3J0ZWQgaW5kZXBl
bmRlbnRseSBieSBBbnRvbiBSYWdlciBhbmQgSm9uYXRoYW4NCkJyb3NzYXJk
IGZyb20gdGhlIFNhbGVzZm9yY2UuY29tIFByb2R1Y3QgU2VjdXJpdHkgVGVh
bSBhbmQgYnkgQmVuIExhdXJpZQ0Kb2YgR29vZ2xlLg0KDQpSZWZlcmVuY2Vz
Og0KaHR0cDovL3hlcmNlcy5hcGFjaGUub3JnL3hlcmNlcy1jL3NlY2Fkdi9D
VkUtMjAxNS0wMjUyLnR4dA0KDQoNCi0tLS0tQkVHSU4gUEdQIFNJR05BVFVS
RS0tLS0tDQpWZXJzaW9uOiBHbnVQRyB2MQ0KDQppUUljQkFFQkNnQUdCUUpW
Q3ptVkFBb0pFRGVMaEZRQ0ozbGlwUm9QL1JMcis2RXl5VUJwN1B4WGkzMXBI
WWJ2DQp6N0UxR1pMWiszNDlCeWRtSSsyOHk2UVhTampRSWVVMVZYSGFSZEJD
cGZOcXYyckllN24rcy9Qdm9qcHJkSEdaDQpPY3hnN2lQcyttUVR4dGtUSmh0
MUpxVDFkNHM5NkJOK0RnUERSZjd2VXpNc3U3dTZtZjlFK0RzMllhamRkcWdo
DQp6eG1zdjVZRkpscHBlQU9LRGJ5YVdQZml2SlM3dWJqREs3U1E4SWw1TjdY
SFNtVmNkR01qR2gwWm1ibjBtbHprDQppVHAxM2FvRWtuWUkzTSs0T3BJZ3Rz
ek9nYnNNUW5oUndPZ0FYKzBqQkh4cldrSzRNQk5sb3RZNm9QdHg2eld0DQpE
ak0vSlJyOStWNTlCc1FLck5tRS9EMGNzb0VmNE9lQkVnZXFtTlRqcHk4RU8r
Z09nVkhXTW93VVVBVlFrTXF1DQozN25qYzhJeVIvSlhTdGR0ekpwSHNqNEhP
MlBFOVpFMVV5NjlEQ3FDREVlR1dsNjFxeDQrc2c3VWw3ODNkQWFiDQpoQ0F2
QU8wekxpeVBna05keWRtQlFXR3ltSHNsZStuaXlkTkFpK0VHajQ3ckVKN2xE
aEpobDlxVlEwenlNWHI0DQpPMS8vUXdWN0JVYVJjZ1FoY2J2ZDcxS2VEa1BC
Qk52d3BZTEFYeElwRGtJMS8ycWpvOEFOSHh6dS9FTVA4d2VLDQpOK0tvSUV1
Z0FhYit0MXMxcVdwZ25lWVhITHkzdUUzS3ZWZU52Yi9pSHNsNW56ekZWQmtQ
ZSsyT0NaZldvZWRKDQp0N2dBWGFaMmh0ckYyQlFsNmcvNWhtMTMvNmFqbXJ0
TmNYMGhCangyVkI0VkFDT3R0MGJxZXh0YVcvdzJWdmI0DQpBY3NvcGZOSE9H
dlhMREozSmtIUw0KPWw5dkMNCi0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0t
LQ0KDQo=
