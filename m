X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["694" "Tuesday" "3" "October" "2017" "14:39:55" "+0000" "Xu, Meng" "meng.xu@gatech.edu" "<F90F7078-F65C-46F0-8F51-CB4FB23B5DD7@gatech.edu>" "21" "[oss-security] CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin" "^Date:" nil nil "10" "2017100314:39:55" "[oss-security] CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin" (number mark "        meng.xu@gate Oct  3   21/694   " thread-indent "\"[oss-security] CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11801 invoked by uid 550); 3 Oct 2017 14:50:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30131 invoked from network); 3 Oct 2017 14:40:08 -0000
Thread-Topic: CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin
Thread-Index: AQHTPFV65faHNoKGa0mESblLJm+OUw==
Message-ID: <F90F7078-F65C-46F0-8F51-CB4FB23B5DD7@gatech.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=meng.xu@gatech.edu; 
x-originating-ip: [143.215.59.77]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;BLUPR0701MB1732;6:62mRmxMC1y4Xq/q3Epx7WdK0D/bE1qxJBCSKhK6oFYXucwLWJkq01Pqh7vsUz81FAvNnu+wyI5V5srvoYnCBAU84l00NGMZVGDsK7gnPGJsuxyhsiCovaPABh6bTsdYDz4/9R9tgeLitQYBeVkAZM4bD+N3xdj0w60P2nbJ107dtqMUOKxLGb4ikWnRggbQ9MR+nO3CSd1muFSayqXzrUrLYPxwsb8LQTTb2rzOSjfy84X8uydWTpqnyLa06p0dJWf3Cwh323v2ZHXha9sg7aY8WEOzEBHVav42GHVabLh0DYaOuQ1vSU8xqTawILwv2Jz1axA53x9q/UYiqSnMe1Q==;5:LMV0UOaOGk6pQvOeeMWSh1SGL73fezNjSccwaD58j0BrwbOukGWBY7t/YAIYiIMXRrhOxOm9P0zLG5wgxklUa8OojareGe6WVElydUryX42vEqSzxIb26Nq1gJfTDOfv3NLCzapRoha7o/QIV17aEphHZkb4iI1EaFuYS6vd/rI=;24:f6AmStqtr3gSs7j5+Hm5apocN218Jltos/p2YT8Cx+0vKGWa9okZXs1F+fIEotOmCV6dPWCSuXWQ0yTkP4xqmtR8HYh/5Xyh6e2obl7/Aqg=;7:oEoT9ausPYNu87aGY2ZW4/jkaR2pxaDLoEkWVeiE/XT3J0sQnzdPf56TLYMiD/dZPsjitDf9wnq663wxMQMQghac0+pXWMXBjDpDdY0ubXECFrTnuyvkm7T6PK61cNRi2oEqfRrR6yUuQqMHIa2onU/JWWVolvW3UnCf0x1VRT1z9CU1nMzm60ItB5qLrADhRaU0Zv6d/56jscHm2thRm/B/BVdqVu663ua7POBOXM0=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 5b300868-13f0-4f80-e52c-08d50a6c9d47
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);SRVR:BLUPR0701MB1732;
x-ms-traffictypediagnostic: BLUPR0701MB1732:
x-exchange-antispam-report-test: UriScan:(56005881305849);
x-microsoft-antispam-prvs: <BLUPR0701MB1732E1DA2537B63F5E05DA399E720@BLUPR0701MB1732.namprd07.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(100000703101)(100105400095)(6041248)(20161123562025)(201703131423075)(201702281529075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123558100)(20161123555025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:BLUPR0701MB1732;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:BLUPR0701MB1732;
x-forefront-prvs: 044968D9E1
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(376002)(189002)(199003)(101416001)(2900100001)(68736007)(189998001)(33656002)(2501003)(106356001)(6116002)(3846002)(99286003)(102836003)(5640700003)(6512007)(53936002)(6436002)(105586002)(236005)(36756003)(6306002)(54896002)(2351001)(66066001)(14454004)(3280700002)(3660700001)(6486002)(77096006)(786003)(316002)(6916009)(2906002)(5660300001)(6506006)(88552002)(478600001)(97736004)(8936002)(8676002)(54356999)(75432002)(81166006)(81156014)(50986999)(966005)(82746002)(86362001)(606006)(83716003)(7736002)(25786009);DIR:OUT;SFP:1102;SCL:1;SRVR:BLUPR0701MB1732;H:BLUPR0701MB1730.namprd07.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
received-spf: None (protection.outlook.com: gatech.edu does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_F90F7078F65C46F08F51CB4FB23B5DD7gatechedu_"
MIME-Version: 1.0
X-OriginatorOrg: gatech.edu
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2017 14:39:55.2398
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 482198bb-ae7b-4b25-8b7a-6d7f32faa083
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0701MB1732
Date: Tue, 3 Oct 2017 14:39:55 +0000
From: "Xu, Meng" <meng.xu@gatech.edu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_F90F7078F65C46F08F51CB4FB23B5DD7gatechedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

In function  smb_strdupin()  of file sys/netsmb/smb_subr.c,
smb_strdupin() tried to roll a copyin() based strlen to allocate a buffer
and then blindly copyin that size.  Of course, a malicious user program
could simultaneously manipulate the buffer, resulting in a non-terminated
string being copied.

Bug report: https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=3D222687
Patch: https://svnweb.freebsd.org/base?view=3Drevision&revision=3D324102

Please help assign a CVE to it.

Thanks,
Meng

--_000_F90F7078F65C46F08F51CB4FB23B5DD7gatechedu_--
