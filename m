X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2401" "Wednesday" "18" "March" "2015" "17:39:08" "+0000" "Shachar Raindel" "raindel@mellanox.com" "<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "69" "[oss-security] CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access " nil nil nil "3" "2015031817:39:08" "[oss-security] CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        raindel@mell Mar 18   69/2401  " thread-indent "\"[oss-security] CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14143 invoked by uid 550); 18 Mar 2015 23:39:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3103 invoked from network); 18 Mar 2015 17:39:41 -0000
Thread-Topic: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access 
Thread-Index: AdBhVdw7KUNdeyMeSpqluq47/RCydw==
Deferred-Delivery: Wed, 18 Mar 2015 17:38:58 +0000
Message-ID: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [193.47.165.251]
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM3PR05MB0935;
x-microsoft-antispam-prvs: <AM3PR05MB093580D0E830490BFDC49D89DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
x-forefront-antispam-report: BMV:1;SFV:NSPM;SFS:(10009020)(6009001)(229853001)(54356999)(40100003)(46102003)(50986999)(19580405001)(230783001)(77156002)(2501003)(19580395003)(76576001)(33656002)(122556002)(62966003)(102836002)(15975445007)(66066001)(92566002)(74316001)(86362001)(2900100001)(87936001)(2656002);DIR:OUT;SFP:1101;SCL:1;SRVR:AM3PR05MB0935;H:AM3PR05MB0935.eurprd05.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(601004)(5005006)(5002010);SRVR:AM3PR05MB0935;BCL:0;PCL:0;RULEID:;SRVR:AM3PR05MB0935;
x-forefront-prvs: 051900244E
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2015 17:39:28.5865
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM3PR05MB0935
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Date: Wed, 18 Mar 2015 17:39:08 +0000
From: Shachar Raindel <raindel@mellanox.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory
 access 
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)"
	<linux-rdma@vger.kernel.org>

Hi,

It was found that the Linux kernel's InfiniBand/RDMA subsystem did not prop=
erly sanitize input parameters while registering memory regions from user s=
pace via the (u)verbs API. A local user with access to a /dev/infiniband/uv=
erbsX device could use this flaw to crash the system or, potentially, escal=
ate their privileges on the system.

The issue has been assigned CVE-2014-8159.

The issue exists in the InfiniBand/RDMA/iWARP drivers since Linux Kernel ve=
rsion 2.6.13.

Mellanox OFED 2.4-1.0.4 fixes the issue. Available from:
http://www.mellanox.com/page/products_dyn?product_family=3D26&mtag=3Dlinux_=
sw_drivers=20

RedHat errata: https://access.redhat.com/security/cve/CVE-2014-8159
Canonical errata: http://people.canonical.com/~ubuntu-security/cve/2014/CVE=
-2014-8159.html
Novell (Suse) bug tracking: https://bugzilla.novell.com/show_bug.cgi?id=3D9=
14742


The following patch fixes the issue:

--------------- 8< ------------------------------

=46rom d4d68430d4a12c569e28b4f4468284ea22111186 Mon Sep 17 00:00:00 2001
From: Shachar Raindel <raindel@mellanox.com>
Date: Sun, 04 Jan 2015 18:30:32 +0200
Subject: [PATCH] IB/core: Prevent integer overflow in ib_umem_get address a=
rithmetic

Properly verify that the resulting page aligned end address is larger
than both the start address and the length of the memory area
requested.

Both the start and length arguments for ib_umem_get are controlled by
the user. A misbehaving user can provide values which will cause an
integer overflow when calculating the page aligned end address.

This overflow can cause also miscalculation of the number of pages
mapped, and additional logic issues.

Signed-off-by: Shachar Raindel <raindel@mellanox.com>
Signed-off-by: Jack Morgenstein <jackm@mellanox.com>
Signed-off-by: Or Gerlitz <ogerlitz@mellanox.com>
---

diff --git a/drivers/infiniband/core/umem.c b/drivers/infiniband/core/umem.c
index aec7a6a..8c014b5 100644
--- a/drivers/infiniband/core/umem.c
+++ b/drivers/infiniband/core/umem.c
@@ -99,6 +99,14 @@
 	if (dmasync)
 		dma_set_attr(DMA_ATTR_WRITE_BARRIER, &attrs);
=20
+	/*
+	 * If the combination of the addr and size requested for this memory
+	 * region causes an integer overflow, return error.
+	 */
+	if ((PAGE_ALIGN(addr + size) <=3D size) ||
+	    (PAGE_ALIGN(addr + size) <=3D addr))
+		return ERR_PTR(-EINVAL);
+
 	if (!can_do_mlock())
 		return ERR_PTR(-EPERM);

