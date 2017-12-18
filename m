X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["463" "Monday" "18" "December" "2017" "15:45:25" "+0000" "Antonio Sanso" "asanso@adobe.com" "<B2EABFD5-AB0F-45B2-893A-FC86F95A59F0@adobe.com>" "19" "[oss-security] CVE-2017-15700 - Apache Sling Authentication Service vulnerability" nil nil nil "12" "2017121815:45:25" "[oss-security] CVE-2017-15700 - Apache Sling Authentication Service vulnerability" (number mark "U       asanso@adobe Dec 18   19/463   " thread-indent "\"[oss-security] CVE-2017-15700 - Apache Sling Authentication Service vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22259 invoked by uid 550); 18 Dec 2017 16:57:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7276 invoked from network); 18 Dec 2017 15:45:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=adobe.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=bCA3LXNWPjoJnRUZjoJg+2UEuDNqdP3LeH0TkERWvRE=;
 b=CmH4MzZEZ1Pevme7BigutO+jXsxJ1vYj+mBemga0BZg5JWFQit11+MJ1gx2h56SahD5qLY9qYri56uBjceCS5ofn23PXDq2o+nWTzWTnbutfLqQbdwf+2LEf9k0MnCxyLBy9e2NP2eTIUc2t+Xr4oP8JocQqODiISbEz9NWvJcc=
From: Antonio Sanso <asanso@adobe.com>
To: dev <dev@sling.apache.org>, users <users@sling.apache.org>,
	"security@sling.apache.org" <security@sling.apache.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>,
	=?iso-8859-1?Q?Fran=E7ois_Lajeunesse-Robert?=
	<francois.lajeunesse.robert@gmail.com>
Thread-Topic: CVE-2017-15700 - Apache Sling Authentication Service
 vulnerability
Thread-Index: AQHTeBc4JcFG6KQ6FUKO7r6Bv5Vk9A==
Date: Mon, 18 Dec 2017 15:45:25 +0000
Message-ID: <B2EABFD5-AB0F-45B2-893A-FC86F95A59F0@adobe.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=asanso@adobe.com; 
x-originating-ip: [192.147.117.11]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;BLUPR0201MB1585;20:ldz6CIvUjK7HPp/i3/fdXcVghiFGUmpCNc2vRXZ04KMyjw+9yJEz3h6vEXstpfyLtAaiTTDbSQRpuCoNNzV00nySXmqXghjv1AU46q0X+OsxWMPMtA9/gcqu45Fjp/ItqL/7KhlnQhE2OQl54ZOJ315CA3PCO5luYKpacU5Fn4c=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 3694f7bf-9814-40d9-1eed-08d5462e5b32
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(5600026)(4604075)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(48565401081)(2017052603307);SRVR:BLUPR0201MB1585;
x-ms-traffictypediagnostic: BLUPR0201MB1585:
x-microsoft-antispam-prvs: <BLUPR0201MB15859AEFD2E97B2A9550ABABD90E0@BLUPR0201MB1585.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(61425038)(6040450)(2401047)(5005006)(8121501046)(10201501046)(3231023)(3002001)(93006095)(93001095)(6055026)(61426038)(61427038)(6041248)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123562025)(20161123564025)(20161123558100)(6072148)(201708071742011);SRVR:BLUPR0201MB1585;BCL:0;PCL:0;RULEID:(100000803101)(100110400095);SRVR:BLUPR0201MB1585;
x-forefront-prvs: 0525BB0ADF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(376002)(366004)(396003)(39860400002)(346002)(189003)(50944005)(199004)(3660700001)(3846002)(14454004)(3280700002)(5660300001)(39060400002)(305945005)(6506007)(7736002)(25786009)(6116002)(106356001)(102836003)(478600001)(105586002)(99286004)(59450400001)(68736007)(316002)(33656002)(2906002)(66066001)(230783001)(2900100001)(81156014)(36756003)(77096006)(10090500001)(6486002)(2501003)(8936002)(8676002)(86362001)(6512007)(110136005)(81166006)(43066004)(82746002)(83716003)(53936002)(2201001)(6436002)(97736004);DIR:OUT;SFP:1101;SCL:1;SRVR:BLUPR0201MB1585;H:BLUPR0201MB1585.namprd02.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
received-spf: None (protection.outlook.com: adobe.com does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <35DD644D5EFE4A4E8AE124085EF6AEED@namprd02.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: adobe.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3694f7bf-9814-40d9-1eed-08d5462e5b32
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2017 15:45:25.3369
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fa7b1b5a-7b34-4387-94ae-d2c178decee1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0201MB1585
Subject: [oss-security] CVE-2017-15700 - Apache Sling Authentication Service vulnerability

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache Sling Authentication Service 1.4.0

Description:
A flaw in the org.apache.sling.auth.core.AuthUtil#isRedirectValid method al=
lows an attacker, through the Sling login form, to trick a victim to send o=
ver their credentials.

Mitigation:
Users should upgrade to version 1.4.2 or later of the Apache Sling Authenti=
cation Service module

Credit:
Fran=E7ois Lajeunesse-Robert
=20=
