Received: (qmail 11998 invoked by uid 550); 18 Nov 2025 18:13:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3430 invoked from network); 18 Nov 2025 18:00:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=4G1M32R2t18+Rwo8ePIP5pMDfcfv5uxu0QSc4xSZcGk=; b=
	ZBF/gBY8YuLpQV9LCh9vuVOHvvUdkv3XzMEhCc/ozwSl+tSSCqMzHNqi/PExAEvM
	j683lHa+ru/wKcA6j5msyD64F+Aq6ivF9bH2yaLZSVkKx/RdIpdFS2kiif+MvbuS
	/zQEpZ9A0qhd1K7EPeXKthuSIBT9M5rlPKG+iP9a4gBdtDpLhPsd/iyLP2Btvn4X
	glEHU0iQ0sQ+cfPVKntF/vAzxSbpWcAmvi7boHXNR0We7owywpclYaSx2jwZaDgM
	z5kh418uNZ08SLRh6LUhBlTJz7CeP4rliciLq2Lnzj513eutYtQIT+DjpSBAM15f
	lZrzTACaBilL/fG4cxXnMQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KFCy9YDCi8q5ILqekuVlLuWESSv2Ef52REZM7hAlx28X6134E4I1dEm67yj0AITGZsftfAb2Zjq+qjEZDNzVByPMsgBBFEz7+EVHIiV8yrNUh/C2pPhxrS3a1qOB2SAmwVqf2KoNM2NzQgRofT0Wzlv6uEwGUi2U/gwoVyyW+ZV4OIui334aiAi2IcL2M/mh5vnf4xkukKEiSrG5WbhSNfGkk1l7+MLX4wzkCWQrO1rymjP2iX16VZFWnAQJjz9MHNt+mp7SfZrFBK0059uhmHJddQRZshmOmwTtH31h8Nl+xF43yunrPDHVOgQVX8ft7EqdHGMhMcsSkhLY9U4ahg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4G1M32R2t18+Rwo8ePIP5pMDfcfv5uxu0QSc4xSZcGk=;
 b=eyH+WWnZEQ9jTCJAx+xa4kU1NiYf+mYZRo3zwMCiepvSncVHE8TuDYxp840ros8IF6EJzoOju5X7ZVqACu9KGtrn6HUuq04cdGvbqApW+Mq9bTiwGu4itxArRwsVKEbgHbAi3Fnzz2dWK22Ac7N2jEfjA/7wK/kyLuYuvDyKlotaP++H6Hh7kaXYmIc6gKG/iC0nHCHtb/U/2neaVoLRW9vHU44uZ5a3CWL89qw+6MfaCLosLiQ0hp7VQZwrme/Aazdz4lVFM9XkWwfwsZL4z1Esm9xdmAInEUfCjZKCaTivC1PZ7GNTqGEu3T7UFj2k5aEI21nCmonTiGlbQfhIHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4G1M32R2t18+Rwo8ePIP5pMDfcfv5uxu0QSc4xSZcGk=;
 b=eT7+VlN+ANUXTRw8qgGJnAY7D3UuQdjvz+Qsp9cB9KeaaQs4AsCYBPGQywNx1WtglASgmCRm+apKhjtZ6uMwreF3nrTIsB/uL5lqLixYq2H4Txymvq8WnOq9GXsBOEkGVto+AN19utx7KXOy3ipldgzGipMtvjOoLyfrNeRwE2U=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:16 +0100
Message-Id: <20251118180021.2890-4-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::24) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|BLAPR10MB4963:EE_
X-MS-Office365-Filtering-Correlation-Id: 0481a7ba-6154-4017-79d7-08de26cc607b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?wNjuQ8Zrb/Dg/0oBgyEEO7XjRgMHTSXxPXoL/jQhtOrtUMcwoVRdyTVVaEsX?=
 =?us-ascii?Q?R+XGV9PVd2h7DBUU+y5GpyZJYT2TKQ4+T4Nb7jSLWhsgLAmc8Bt6ihXH0KFg?=
 =?us-ascii?Q?UeW8z+0NDZVA7HG2LlVjo1Py/gEXD7bSF07bV0DhRKJDhlXGG/U62ZizVoeU?=
 =?us-ascii?Q?gCRi4XsgMbANOVegnXqpMhcbsBHCyVu/AS1Tcrp0ap2zy78NczRBrphxzS1M?=
 =?us-ascii?Q?gYkrfk+COoKzL6pVXAoHi0H6jA5XAtS0NEAV4JG+0sdp2MqZb8bgWHQxnD9K?=
 =?us-ascii?Q?IN2EWEikOE7tcFWiweweArqVwrqV0c0SZsJO9vlYZDBWHfowGMYobCqUIfdp?=
 =?us-ascii?Q?dsaRcmjXjYGIT/0KiI/I0zHwg97iw+zyyq4OhfWUFkNSKlyE4XYkmjb6z7y1?=
 =?us-ascii?Q?a9cmdtQIJHVffTgFh/O01XTu23uxZoKvuTwkyfwnSTmv47baJ1HPaHt7jG1I?=
 =?us-ascii?Q?UwsWJuJWglrhnM/4dZCcW+TTDr7AVIs4ruw1MgQtiYPkJmiUeOmAS02qInCv?=
 =?us-ascii?Q?R6I5VgFCCOgqv1z3npMa83rfmyttV6o6aAiYtz0FEL4L9g+y31dl2ITVrr+r?=
 =?us-ascii?Q?56Q+zJiUbMEytNPXt85O8qayJPHLu3Eoz2D/DipRVg8aXd7FD1BOPgkMDUwk?=
 =?us-ascii?Q?C0DdrrDz0xhTh2b9iVYpQTIyAsXykiuUVxi+jTQxDzczTHJGmdy/tHT1TteM?=
 =?us-ascii?Q?KkAaEGo9TTFUfG+BjEA69ikzW9H/zMsjN0UwejOiTh/CK/HQ8TY/Wm7hkNuA?=
 =?us-ascii?Q?gKLH5RWb6X8AMjz5etsSEzOeR4apE1DsVM+Yo8YAz4HcFjxeegKEp18o8RjE?=
 =?us-ascii?Q?BsLj4gJmrkgB1+zm+zfQUMSyjJkk0yPk7FnIKHxkKrvODT2GfOEhXD7i8x/3?=
 =?us-ascii?Q?vD76pF8evlWEAwBT5TwZCcXpUzKzFk9Afh9WHOcKOlf5prPOsM/R+wds6g/V?=
 =?us-ascii?Q?XbRH/aeYPVwYlH5dCPbz4KwRrXD0j7swy5QNSq/Ku+Xgf44IiS/e1Sd/huss?=
 =?us-ascii?Q?Ji5HHf+YfbrFEwbiyjvkUzDxecy803ZYFPhQYaE4vP7Na8jlqpV/eencvhLE?=
 =?us-ascii?Q?+eFJlMOGQ0kyN1DUnu6JMDWJwxPx2K+yNSnGvRF0JxYmhjrQuXAK425/gCqR?=
 =?us-ascii?Q?C0m/DK/5x5eBcy+slSUH618t482RlbMvdxrgb0EHl/JWTnbDuFCPq/fQu0s6?=
 =?us-ascii?Q?mU4qBfKD9pEx8KDtGj8Ie2eWHpLmpzdYLrBYQgrHK2XOwJjk5AaDvJCS0xAT?=
 =?us-ascii?Q?K1K3jbz+7wTJi+NTxU1+/gQrmXuDMyInohgsNVfkVbPrqVcfC9cMWFboucoy?=
 =?us-ascii?Q?hwTuCaFJy9nUPH3R3yG9SIYOg7+cVN8somfvg4N0TyJacrkaDzjIVQ6xYj8a?=
 =?us-ascii?Q?GoNT4apm/18EjxwGVvogmPmK8mmXSuZLfofBRVPcSByhQrzXvlPSNwZ57rSX?=
 =?us-ascii?Q?xdViCXUjHV9xvMQgQQ5LhGGA4Y6MBnKF?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ma94TeH6r+b7lOHpLa8ii4MTyi0Ob5jXIftbU24ZN4fUZm1hl+iZBWo+yL+L?=
 =?us-ascii?Q?5GRNp0ZXiN/C6WAjNXgctyNjylt/cIyeewwnLrlxniv89gsp179bUGTwOJWN?=
 =?us-ascii?Q?OLTBa1hyF3q3dTC+Zkuz68dLSNqVp6Cj68n7dRVVJCfpdvMVin/qC3uzmc1c?=
 =?us-ascii?Q?0+aebzcZs3sAyHiM5OpbXR1MwpSyehJw3HfddYFmQP8C+BTWe/40d8vL8HZV?=
 =?us-ascii?Q?vlgET7RXAzb1H9O7FYkfJsX+/kAjju98EzcObwJcnVtajwXsAfzwSIR3uFr2?=
 =?us-ascii?Q?0BOuAoUf8QJiKXcyW/TCdAIxZppm3YATjTXjxDIg5sk2UqfweD9sRlCaLsjX?=
 =?us-ascii?Q?xeLDdYUt6zXC+8YnSYUiTpiVg3uR4kqyCwxYn4odpEyyIXgcXGRLafECWRwD?=
 =?us-ascii?Q?PfFHVjMBJVb1W8bZ/oIEzQgW0epLsIRNDxsWY4PAIIbc/TGtIok81Os8e3Jw?=
 =?us-ascii?Q?7FzRsQJTjeb809fZWDBRj5fZCNA8AcjmnVYkCmY2suukFDdknPZWG/S00fzp?=
 =?us-ascii?Q?Xn5vXtAECTak1KspjqMxNTRHURW2/qmFbtuRptD3X1smTgmEcaK2b/ARZro+?=
 =?us-ascii?Q?lTWJPdWC6f1fNmGFqLb6P/n5p6LA7hQa+Q/Wg0b4lELsA0bnvJxleN3QXo8I?=
 =?us-ascii?Q?GZLloRKOHoknLw4o5h4dXm0+/nH95s4YBgKcUixGqmAl53LbGHsw6FjCLbt1?=
 =?us-ascii?Q?IW57ErM1ajoFhT8QmskMK7EapODzrojwnffa+eJounYI+Pjr8NakAmBJygMw?=
 =?us-ascii?Q?1QKzST6SYL8DTA0VjxuN3LfL4w6cgpjAqQY7s0V3jpZrGJzbnccZ45I5tBLn?=
 =?us-ascii?Q?eUcPlImfduqW4SfwJMhmg2HQQVS5l9uSQfTIyYTocGHBqE52QQb3b9uPqvRr?=
 =?us-ascii?Q?TrF4TjiQM7RUMaUx2+pbFNe198CWRXDznkSNJdIldFHwSY2oeusw+Nsrr0gH?=
 =?us-ascii?Q?oDY26GDMMCWl/mgjmeQrxTHBGfqjFWGPJYd0Z1ijpufcEkrXceDxbsN0NmH9?=
 =?us-ascii?Q?Vw1ObVmxPxgV3C9LcxgiYedOLYZWkahzKSlsi7tAjbKdjDFPoU3NGXe3FdK+?=
 =?us-ascii?Q?17gJpUUz+gRLVfObDxV3v26KB+7dDwHj5ya3W3zeN1IPb/7GGg5AdI5VCYxU?=
 =?us-ascii?Q?LB5IhO4TQnu7NAgRkdfdKk0B/iKc0kq7JMakVa+K9Dfqr1KC5uGnsYzPaOxl?=
 =?us-ascii?Q?n6f/79J4DEmsaW2dug6e4urBKBZegnuSMv82FGjuJqpmcWunh+1sAhIAiSLW?=
 =?us-ascii?Q?WrR00Ve97snXZaBJ0Ktk3ro6qwmzM535m6sUqu8xExOJFJc+y2LXs2tENb3X?=
 =?us-ascii?Q?dNjITRV5QGV/izpj3sPUW6vesFX0LjgNUXa+9jcLQAaCe7TpPLy31La6P+QC?=
 =?us-ascii?Q?cmnYfkJSjWFrK4q8CrlO5rkVP14uRYTZiF0f+SBCNty1OZ1PmBuHVAjHOhFJ?=
 =?us-ascii?Q?XYFhbb1pH5cjjMGB144BJy0+yj3cAe+A5BBR6Du6J89efsuNFVnW5P05NgoO?=
 =?us-ascii?Q?jgtONPUNh4cjnOKM2Lb9pUAE5oGMCEB7qcvl2Wamp5tTpGj/u1PiX4j2f46q?=
 =?us-ascii?Q?stBH0r/t2hwW6pJQFV/1VnWMywaCQyJf0NMuyH09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	uetU/YQ41Rtk9UGiGsC+ngCringq9ry5IQ+Og29YN0SqtMWupuk1GDUOhJEK+y85w77qJslMWM2lHN74RcG/PusI3dybGNrrm907grCDHCX2Rt7MfDsGP07OULwJrkaOwKexVTcME4Lo7LD1hmJl7LDurYFyfwc80B/cRm8zOciuGxUTeFHPHyPFIq/VO+ZONgRXap9YUGLJX7fj9QMdZs8I8R3Hduh6BFU4dATCT9RFMur9wkKbW81Q3LRR+sGxC8lhWfEc3K+LytgvelmnBzrbKnSZE2B2KRW0sUs2abrv8D5LrPHwCxcKwNiDbpUX96rZT+7Rg2Gfz1iod8sycxOXNiuUyo8CxFVnF//sVdYrr+mlXlx6FsleKvbAqEdFTPzElOkn5mQfOO73lJX9qI4r8DoP0Z1KtddpmwZOsuNwCqOA76EtlPUj2o0+H22Hy6B0QDoiE8utwGgoHUWnCSgcVZjyAyNYscrtVX7ZMWyiIi6t4K+12DgTASqpmvSQDgTCVvbmhyivlNrRKzk5oZN2oCtccHRhAFcEOWj0IGK42ka2YeXCAd8FO7rQQz+yBWE3cVJE0W5gXQnlN8Kn0LHM7YeUL5+kb8ao2f8aQnQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0481a7ba-6154-4017-79d7-08de26cc607b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:36.8164
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: adsErGTpUpqak3Rv0vTN39rKFJu4p2BDc5PC+rz+yTPXLf964c2+JrINodAfHmc4HVutwxGt2FvTxubiQ46E6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4963
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511180145
X-Authority-Analysis: v=2.4 cv=OMAqHCaB c=1 sm=1 tr=0 ts=691cb448 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=5IoSqqFNsn8KYFwmrX4A:9 cc=ntf awl=host:12098
X-Proofpoint-ORIG-GUID: qoUX3iMblR3KIAUKA4ZKd6muR-u_VXqT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX14UQkWFjVqNH
 wxjxzNghyEoKCdhPzDY1YDwR5qw1rfP4TkiUi4eGL/D8KKKkMMWqBImZwltnneMOvOuL5LfwceS
 NW8N03H9Z6UaqS8CHSlqnOWcfbwtcCCac+GVva5rb/3rumt71yhZw3DmDCkaVb4QJmd+G27xU0J
 JE/Z18r7JZhJXmQFMUuc6nFUKiw6XD7FXfSEnXI59nHU6Lw1MgJwc5A4uJVRzmrjox8fXls1T5C
 mP6rcNJJ4blCslVtRiCDl6xrshgxOQ2IM8Zz/0mKnzsnNslh+q6ia1bvKtIJ8h79XKs7ZQu9NTL
 lAkV0WNvgwEhrU0g3xZFFgf6ya1dlci/BCXdalBbbUp57L+ty2ezgUIKG2I9BjUfVKJsFysny92
 Ds+SZ26POEMGKOPrcPLzd35ofgShOQxLeAjTcBCADHDCYkHr0KU=
X-Proofpoint-GUID: qoUX3iMblR3KIAUKA4ZKd6muR-u_VXqT
Subject: [oss-security] [SECURITY PATCH 3/8] net/net: Unregister net_set_vlan command on unload

From: Thomas Frauendorfer | Miray Software <tf@miray.de>

The commit 954c48b9c (net/net: Add net_set_vlan command) added command
net_set_vlan to the net module. Unfortunately the commit only added the
grub_register_command() call on module load but missed the
grub_unregister_command() on unload. Let's fix this.

Fixes: CVE-2025-54770
Fixes: 954c48b9c (net/net: Add net_set_vlan command)

Reported-by: Thomas Frauendorfer | Miray Software <tf@miray.de>
Signed-off-by: Thomas Frauendorfer | Miray Software <tf@miray.de>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/net/net.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/grub-core/net/net.c b/grub-core/net/net.c
index 6ea33d1cd..6c94a3b1e 100644
--- a/grub-core/net/net.c
+++ b/grub-core/net/net.c
@@ -2146,6 +2146,7 @@ GRUB_MOD_FINI(net)
   grub_unregister_command (cmd_deladdr);
   grub_unregister_command (cmd_addroute);
   grub_unregister_command (cmd_delroute);
+  grub_unregister_command (cmd_setvlan);
   grub_unregister_command (cmd_lsroutes);
   grub_unregister_command (cmd_lscards);
   grub_unregister_command (cmd_lsaddr);
-- 
2.11.0

