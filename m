X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2623" "Wednesday" "16" "March" "2016" "03:00:00" "+0000" "Justin Yackoski" "jyackoski@crypto-nite.com" "<BY2PR15MB0728301B880CC40FFD658066E98A0@BY2PR15MB0728.namprd15.prod.outlook.com>" "112" "[oss-security] CVE-2016-2117 memory disclosure to ethernet due to unchecked scatter/gather IO" "^Date:" nil nil "3" "2016031603:00:00" "[oss-security] CVE-2016-2117 memory disclosure to ethernet due to unchecked scatter/gather IO" (number mark "U       jyackoski@cr Mar 16  112/2623  " thread-indent "\"[oss-security] CVE-2016-2117 memory disclosure to ethernet due to unchecked scatter/gather IO\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5322 invoked by uid 550); 16 Mar 2016 12:53:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20331 invoked from network); 16 Mar 2016 03:00:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cryptonite.onmicrosoft.com; s=selector1-cryptonite-com01e;
 h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=leuGBRD+SeDpHSd1yRBBgDEmRkW+i8tq+IBLuOcjtQg=;
 b=AhXLQGsgf1xAuF4iNL1/QnIYLYi8ZS0tN778ifK2irQeLm+Pg83fsJHHYWc9ERSvVx2744s+5h2NpLutmuGHF+Y8cKecqhB3b4SW8NSimHFc6wnEw+HBQzN4yOVL9gkyTB6ui98YbGkRNfHVIIW74c3lbXYSwuTt3fpU3RPugN0=
Thread-Topic: CVE-2016-2117 memory disclosure to ethernet due to unchecked
 scatter/gather IO
Thread-Index: AQHRfy6zwhc1Q+4FY0Gkm9Ry7juC2w==
Message-ID: <BY2PR15MB0728301B880CC40FFD658066E98A0@BY2PR15MB0728.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: i-a-i.com; dkim=none (message not signed)
 header.d=none;i-a-i.com; dmarc=none action=none header.from=crypto-nite.com;
x-originating-ip: [108.48.153.209]
x-ms-office365-filtering-correlation-id: f7e3ed0e-8259-4626-b8c9-08d34d4710c4
x-microsoft-exchange-diagnostics: 1;BY2PR15MB0727;5:78iv1cXiv4roJ8LmqV4XrkQ8aas1vRidlkBia+VJaP2LM+hLvBNgjHBuAcseeiVALKF5rxnQrUMGVg8op0GhL2meY3zlF+ew9SSmQDlG29/F0qyGVED8NvBEEIgfkaA1ZVjPgMiIz6YQfvf+aqySRA==;24:WUHgtRUAGWhYCsXkqV+3tLHpcho22Sj/zRDcztvhaoD/30sOoPjDwVIMGQSnZpv/FBx7fjYTaDTc5ZJo93idoxQmTSSHYJbKY/ut5361uG8=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR15MB0727;
x-microsoft-antispam-prvs: <BY2PR15MB07278A952FEA870BAC7D91EDE98A0@BY2PR15MB0727.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040046)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041046)(6043046);SRVR:BY2PR15MB0727;BCL:0;PCL:0;RULEID:;SRVR:BY2PR15MB0727;
x-forefront-prvs: 08831F51DC
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(50944005)(122556002)(66066001)(2501003)(110136002)(19625215002)(16236675004)(11100500001)(107886002)(189998001)(33656002)(5002640100001)(2906002)(10400500002)(3280700002)(5004730100002)(50986999)(92566002)(230783001)(5008740100001)(54356999)(74316001)(81166005)(99286002)(229853001)(2351001)(86362001)(106116001)(76576001)(1096002)(1220700001)(3846002)(2900100001)(102836003)(87936001)(6116002)(5003600100002)(19627405001)(3660700001)(586003)(77096005)(7059030);DIR:OUT;SFP:1101;SCL:1;SRVR:BY2PR15MB0727;H:BY2PR15MB0728.namprd15.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_BY2PR15MB0728301B880CC40FFD658066E98A0BY2PR15MB0728namp_"
MIME-Version: 1.0
X-OriginatorOrg: crypto-nite.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2016 03:00:00.6997
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b7d6ebb9-d6a8-41ae-8311-0cf65a93ce5f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR15MB0727
Date: Wed, 16 Mar 2016 03:00:00 +0000
From: Justin Yackoski <jyackoski@crypto-nite.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-2117 memory disclosure to ethernet due to unchecked
 scatter/gather IO
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_BY2PR15MB0728301B880CC40FFD658066E98A0BY2PR15MB0728namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

CVE-2016-2117 memory disclosure to ethernet due to unchecked scatter/gather=
 IO


Affects:

In-tree Linux ethernet drivers:

atheros/atlx/atl2.c  confirmed in versions 3.8 thru 4.5 (possibly earlier)

* see description for more details on other potential less severe impacts


Description:

When scatter/gather IO is enabled (NETIF_F_SG), the ethernet driver may be =
passed a

list of buffers containing the packet to be sent, rather than a single cont=
iguous buffer

in order to improve performance.  If a driver claims to support scatter/gat=
her but does

a simple memcpy, dma_map_single, or similar call from skb->data to skb->len=
 the result

is that the outgoing packet will be sent containing the first full fragment=
 followed by

whatever kernel memory was at the end of that first fragment.  This data is=
 likely to be

other data from other skb's, but other sensitive data has been seen.  If ha=
rdware

checksumming is enabled, the resulting ethernet frame will be valid other t=
han containing

the disclosed memory.


This bug is remotely exploitable in the atl2 driver whenever scatter/gather=
 IO is triggered,

which can be done in some common applications (pcap samples available upon =
request).


Note that this bug was originally found in an out of tree driver (CVE-2016-=
2553), and may

go unnoticed in similar drivers until the right conditions for scatter/gath=
er IO are hit.


Apart from the atl2 driver that can be remotely exploited, other in-tree dr=
ivers are not

remotely exploitable but a local privileged user with access to kernel runt=
ime memory

may be able to cause a driver that does not check for skb fragments to star=
t to behave

improperly.


Mitigation:

1) If using atl2 driver run the following at each boot (not confirmed due t=
o lack of hardware

          availability):

    ethtool -K <ethX> sg off

2) Other drivers that don't expect scatter/gather, ensure appropriate local=
 permissions.


Recommended fixes:

1) remove NETIF_F_SG from atl2.c

2) if an ethernet driver does not handle scatter/gather, consider a run-tim=
e check for

     fragments in the ndo_start_xmit handler rather than a compile time-ass=
umption for maximum

     security.


Patches:

None available currently, although in atl2 simply remove the NETIF_F_SG ide=
ntifier from the

hw_features of the net device structure.


Credits:

Justin Yackoski @ Cryptonite


--_000_BY2PR15MB0728301B880CC40FFD658066E98A0BY2PR15MB0728namp_--
