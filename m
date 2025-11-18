Received: (qmail 5971 invoked by uid 550); 18 Nov 2025 18:13:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1267 invoked from network); 18 Nov 2025 18:00:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=YTVnzC/aVFGerQ7dT8ZXrK4GmG/ccD8BhsREwWn+4cA=; b=
	TONdLVBQplZxTShnxNk/pRYGHM6JqLvvww1pQlpcIuvFemhMDtRtN8DMRueSCPjy
	2bsZJxKlIAk25bQth4MMxlE/cxryxsVdY/cDcPAvFyN1KYGxOzAo7ogBYapJi69M
	52XsfqZNDC4skLeec8BUHKWuKTWGWbn/wQqXyF4/8sA9dJk6Mwawh1a4Ywfmjdu5
	SwlbHtd4HR25HMkSs6L4sMGvB5L3Kc9bgs70MoiqdGR3vI7vmWOXi0ckE+pYXmfz
	jZ4I4OvCcQzTuUtT+n9qtwkEiK6S63d0zb+7aI/Sj0mwNocJnS+OgheIam78swY2
	PrgItkXCWYpCwAmVZKSsrA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fz8AHVwpouQwn8g3Vf3mBnnjknjGZ/fZ4QSD0pTtFRCdv846UD0bMmuEjOjAWBXxGanb4OIVFDEIMmDTdQdMYlEwcJ3kP2QMk6pmEbesc0ZSDTQRs6PcRGzN/IG9XV3LRMI49DFdgsJx8BmMBAs/17o9hQy6EoGmIKLouXIU38ujW3sZs4U28NN5FhYJLzNKcQTwp/JkLGm/NSg9KzpoAlBVTfkDOJ4TUNKKu0c7D1TqyugFcTbkc8qB/bc1FVzRzDa2rcfzVywAXpn0Trr6BgMr+bsJpwZcJxC9nDJ8uRqZqzyFB74pPDrWbk8eGlza3LDWG+N8Rll/ncQ+U4LTeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTVnzC/aVFGerQ7dT8ZXrK4GmG/ccD8BhsREwWn+4cA=;
 b=Rv6/fNgL7VGjpEo19cV/diW2B7DLdirVDoEXVYAKyIc6a+v348o/U3hE8kkSA11dR68do4PXfUHZ5NyKMOS50IBO7EkQtw2vNBanlldm1VZg9f3I7TFnKJVdwzYpVDKWAHkssNwHPPmIOdqrQFSs9ImRPIABQuafK/6yM0dKaObOQxXrP8Z94PZPaazLqDJxu90+5jJrDf3FjAJ/OtNinC9T8wdmrYEiqcOTXqjj3x5Y277H07S8OlJK10hqNq4+wAAkbXOiJWbuulwlwiuvGby6QTZBOIp049DsshBIU54V5CRQ7EV0YezPGFJll/4ND7pADjQq+mHPxz54/NJ1sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTVnzC/aVFGerQ7dT8ZXrK4GmG/ccD8BhsREwWn+4cA=;
 b=hUeitxM9EsLDLrO3AOuM8/+eU8rrR4xjTN4Pqnm5H0cce3F978HkenjyOGUQD+48FdX7bZnk1ROuxYTEGT5Z38HFh3NQB5Qp2pj6wlHx4YzfMXzV65FoBQJnkpfUzyfrzTp/O2045hLi1Fp3tzHlTD+ZsnmtFb5Pc3rxv8SPxDY=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:14 +0100
Message-Id: <20251118180021.2890-2-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: BE1P281CA0031.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:22::15) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|BLAPR10MB4963:EE_
X-MS-Office365-Filtering-Correlation-Id: 2196a8f4-d3f1-494c-c9a0-08de26cc5c1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?IvXyGmJ06Jl3D1nViLXr0k2i8X94FEpNwEFYiFkevF/mPIOSbx3G44CocUqO?=
 =?us-ascii?Q?pVmY1YzD0ZsCTEV75qCdTJvHgDf6RtaEhpfQrfwB9Czsug6vHgrwuv1ggXi/?=
 =?us-ascii?Q?Hu+f60CBa23r0rdy8yVZJnPY6QtgxxiiC06Xjpxc36JBk/MGwCAhj5T71BqQ?=
 =?us-ascii?Q?dQTwe/tQgeKqdn5USA3RZku1oFUUWX5BsNUWUARc1Fy8+VgR/EV1ZLDXuHU8?=
 =?us-ascii?Q?HQu/6DZ7JL60ICBkhZZ2ENka4Ftj2gk6wAbKeoEF6Ya4XO0gE0E6Rp1CvbOp?=
 =?us-ascii?Q?VSFIUmb3tbyurGz6Df1LO5ju+yadi2GTfffW1+C+GgpUbz9Ll9qpHY7bwzHt?=
 =?us-ascii?Q?wXrfRm/QU/1UwjHtkgrGHJPla411qy18LmxYeoLstjQEA6sd+Afuzeuve938?=
 =?us-ascii?Q?15jHVF0hs9+E0FD5dLV9DRuudOP52t7pPiLr6h0eWRz1MRDjSQoasHvYSTNy?=
 =?us-ascii?Q?r9P6hIqgUQkLfrFkqdFaQ1n+7fmwVDaKMTeyteEVTxVZ2Zyr4rUsfV7dVCkN?=
 =?us-ascii?Q?9R1H6Bha4z3DvUBe8GGOz2YZc/lvpnr9Vkwszq1jZHdNSWUw7BI8IRzxTW3g?=
 =?us-ascii?Q?XBuD1Ac7MllfpOhH2enlC37WoHqA+h/CU00Gkx9oX93i4DKFXFQCE2GTqYy6?=
 =?us-ascii?Q?rA0+oCbo4b0y7IFnWftZf22setwf3xcj48006wCKRNMT0DCOJD3cHOFry2lP?=
 =?us-ascii?Q?UijzXUBjY8FYGyEmBo5Z9ta7WcMc+4Fr7Y08YsXIIbR7xB5knlkA0+VdnPqO?=
 =?us-ascii?Q?/gps1b88bDYD4QL2kPRgmuveYHhkxK6sIgjFjL4uXlNGayeZhBQE/ccoUM4q?=
 =?us-ascii?Q?qe/B9dSD2ekLXTPamHIDlRss8+chjRwVfcU7uDAne4wsZ7coyPZ5QUVpjI6P?=
 =?us-ascii?Q?ap/g4RK+ldDPQH40rGOD9B9ji5XR9pSowQ0oJzel5TbSlaUifDLZNiLcJMn0?=
 =?us-ascii?Q?nCDJwO4NSEtUWqxJRi+QE2OFZgdyanQj6HeliGbHyRXFn5AtzsHZuhr35bBq?=
 =?us-ascii?Q?KhekiBPbmJlLUlE3Li4+nGBhQy+w7PHEL3hvNfEJID3cx7d4068/++RGjbB/?=
 =?us-ascii?Q?MOzrFLL+tibPof2R4JMbviwPUraDzc5yDjsJpC2DXEdpn4EgGqga4DrpStmX?=
 =?us-ascii?Q?8A1KI1s5kgj+KzOX4cILvujBj66OhhsptsQFCqm0UpnK0rJr7uTz/9D/hEvw?=
 =?us-ascii?Q?0WrxRwInzkDvJ9D0vYcnCjFc6sE/jnFZA/S0ewInbs7nD/cdOsfiliEUjKVD?=
 =?us-ascii?Q?J2dSGva99tBPqISIN9vpouHMOdN1AdVmCKJiXeA7/AHGe7BzTZYqJBGu3zbx?=
 =?us-ascii?Q?GkTMpqVvkiQNnfzEuzQ3cALnY2RUo5TzvfK/owUb3aiAC/ZDc3ZL6/Xe/upl?=
 =?us-ascii?Q?N2Lc1xV7jonaoiL81EOUhhSe8jWQph1IoX8jkR/WUjjw5TQTLWKemaJ8eoAD?=
 =?us-ascii?Q?UQcAW0pDrewzz0PanX4NiiGKwQR0Xord?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?RwQQEsADRNDwvm7F0dgjiBxLwqSUthXGUXrDmbvmOBg4N6TBmaGKRz1LBL+4?=
 =?us-ascii?Q?UPH/awCeGr/JI4nO9EafN/UknXUSP/0UxEk2HC8DogXyYJlVk3+e4m3xVNWu?=
 =?us-ascii?Q?BjlB7ARHs6CTPBrjU3tIgVdGkXfi+NBL7jKvettPMXJrLqOMYbDPrc4LiYbK?=
 =?us-ascii?Q?VA9Rjfaz9rg49bHkthnrmLCjX6H8mUAKQgQuNrGbusB2u1aOtXtcQNW7iiSG?=
 =?us-ascii?Q?eadBm6nX7IHzR71Yk1BXsd7sDyJGagQPq1hDOUpEJ7EF8UTFUOBaH45jzy1+?=
 =?us-ascii?Q?Z1RDh9vuOXSS8IK85Zd3Va/Vh/r9WT1cSojobcUFiI58VZCMiFs3L9ZvWHSv?=
 =?us-ascii?Q?dhTyh4kUoGzrEO/pgxWatzzWOakxcBRyCrimyCBkR1W9RKFbwEaoADItOzkM?=
 =?us-ascii?Q?C6Th9If2NZFF491+wom4IYBFWT0BKG3uQbbSH+lbQU3lkPcGKkBkbqidwZ+Y?=
 =?us-ascii?Q?svKFlw7OEAExXbXSdmwOpTkoe5KdBO8aieMdayuvSDY9C6usRUiWUaOjvkVr?=
 =?us-ascii?Q?FjDhk+SOhltEVrw8M/bjZ+PuTH50KJuFMnX7n0cSqFIwZsAqs2oxKVcMfpWQ?=
 =?us-ascii?Q?SaMvEpDEVVOZ2g1cKKzyawF6NqLz+GtFBcO62wQ6wfTb8g9V1tA9Wx1Yx8QM?=
 =?us-ascii?Q?bSQ31eJJKxBW+Nnnv473HGZZ1MdpXH++RKNHC8vSnwHJYSiJWZ4B15o4sIiS?=
 =?us-ascii?Q?2iYwEbZvkSsMPZF6cmH+0Gpl4unYEZXbWigC1qF7vSrxGW98ETZzjzrbnBoC?=
 =?us-ascii?Q?W6NRiSDAd5Vi7xsJUq/HbzfHGq/ATmwA3QsUrEvUseXIPm9T/0FIbrnGHCq7?=
 =?us-ascii?Q?s8ZFKUnm67oAnMDiwc2QQXu+xL2+Lu57YYhmFvWjXpdOtcmS5KEVAFPD0NE9?=
 =?us-ascii?Q?My8dqy0cqhQR6qIx5ytXjDn6RecUa5KSmwuqapiBQocHDHrVqsSYClrTI290?=
 =?us-ascii?Q?HeBzRXIy48mudBYIdK47U7WeSmyfQbl05owIAEstlV2S493B0VV94gEGHzAW?=
 =?us-ascii?Q?tOTMkEhjOaxocfBAAJeFQwe0J9kWnfZxOIQMUl8HRs/EavMlfZIC3kceXWR4?=
 =?us-ascii?Q?v5bZnZYKb0pZtF/UWaXsgEssGhAp7aWcLBrH+6kF21yZkpj3yyf70BVQTfBt?=
 =?us-ascii?Q?dRxymB1GEVO0dbd07mc9xdTyFFdi9fFJsj2ggBPsb6adhvlS1TJ0M0eUZmVO?=
 =?us-ascii?Q?U0qHhfkiFZ/OMBRcaFaP+LOHPUk43TwjaJ+tip7P2H3/poxw7cUjC3wZR3SI?=
 =?us-ascii?Q?2k/iIkUA93KaBUo1BlfxYvW8yt/vCgIPhlNjZ8A8oIJZMnjXxvFMsoDUn2w3?=
 =?us-ascii?Q?DVy3IblTAy3XlOCC4ByM5+aM44MxMTPs4huYmNK46qxM6sXLskvjdVjDyTrz?=
 =?us-ascii?Q?9aAwuuXcXdkGqeeYqaBsmdIGN6SQ2F7PbOu5dPw6Ei+IElfwlUUVlEAf+r9/?=
 =?us-ascii?Q?tZEJATU46Tn/ow7Fp+sxfnNFYy5nfC0RNpNGzIAFbkMMSG45fxx6jNxkIAxr?=
 =?us-ascii?Q?6cWi8oEDl9ZQX80kc46pqr5CBQZ5aRcBH3g9axpQa0cYNd81K62uK+s+SAgI?=
 =?us-ascii?Q?5U8oE9Uykg3upOVQ59viIud15s9e1unFZRQNIqd+?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	upqeQgqQw0+ScTvbZ29NkUbr341G7/UjS4Vy+5iYbFtUCWI+mRCcu8XFr60LkZwkBxpdQTpq0vkxD3ZVVPjc2GERBlFB3Y9XTJsColVNRA+Zxk7CooZ2LzGMcHgccnj3eGKL1Px68H034uDIhSVIOLIugNha5cm+QegL2b7rRWC0t92dKYQY0k6LrGMPR3GwlrPSAaIl8Rb9Zr8rEGFfqS3ha8NMEMuGK7q+aBJS2vEtlhd7+gMQvbADR9kQJXftYxZkvzxgPrcGIcDQVCWRGvR1b+1n1kOjS84suShSV4h983aRBeFIcSOpHqqLKSVSVe5UzeXC6Bfo/OtAO4HXMz0KZEkhRPdE9M5qjgQ2GTaRPW4Xmcqg4ECzzPiW0wD6j6wLJKxJEMMfdWTAZzePY7v/ngiqQr5q1hU8vNspa7QKmeyOPtiTGok6bNqv5Pjc8Hdc5OclkCjRbnNPgQhNa9iNvojO3MNF6X/5L2rGQIEDlwIQF9jMDnbQucmgZfzs/debe4XAS5ItuU5VQhmWPeTsMvbEQRPejeNSS5ICHkXOtII2uJxNGZAv0aFxXyLm77ONjZhf+LYC+tYA31hlu495qGGMJ8ZPBiPi6y0PfGg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2196a8f4-d3f1-494c-c9a0-08de26cc5c1e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:29.4835
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i9RlCgol43n7//Gi+/N6tPUqfP8TQ6Hr/0aLbU3dVRwTiy/TDWhXZPHwrHKhrMlFHpoYmDBe5I+VD5vWlakSXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4963
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511180145
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX6zNklja1FbBM
 G92Gi3jCioMU+oqX0ztKBPGEAa22zz05JtcD7k1MicN7Ewn6v2rNZCwcY6EOnGY9RT0dlWl+Toq
 Qr0N+FbJXt03fmn/s/Ng7F5A8L/ZmIhIjf74VtqljJuEqwI8l8M7qgybr12UrsHV0twRMZW1EaA
 jkfFJb1DYk6VlD6SvRPLgUyIf5ddGvjtWjbwCmBrx6hpUpmSVxnpx0cvd0uZ0P1dJxpXylCMhV/
 ExMkL4kjyb0kYNp9AFixkgYmliQQ3BesO4nTDGinFt1AuoqYTgruNzFrZHOlV0uIe6L3DHXfEKy
 Pmii/Mi04pBD4mZn7uQ5wEPUw9uC9Ic0r+BWq7gYTfpqYsiYxdrYmLaqKpyxB7v2Y/A4iNPsmAH
 289KDiXD2uU8LwAde3hl0nMWaIchag==
X-Proofpoint-GUID: XF4sGak2aBFnykXJg0YNcsZ3neOHTvnB
X-Proofpoint-ORIG-GUID: XF4sGak2aBFnykXJg0YNcsZ3neOHTvnB
X-Authority-Analysis: v=2.4 cv=Rdydyltv c=1 sm=1 tr=0 ts=691cb441 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=RbfTlN00OY-I1KUSm4UA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
Subject: [oss-security] [SECURITY PATCH 1/8] commands/test: Fix error in recursion depth calculation

From: Thomas Frauendorfer | Miray Software <tf@miray.de>

The commit c68b7d236 (commands/test: Stack overflow due to unlimited
recursion depth) added recursion depth tests to the test command. But in
the error case it decrements the pointer to the depth value instead of
the value itself. Fix it.

Fixes: c68b7d236 (commands/test: Stack overflow due to unlimited recursion depth)

Signed-off-by: Thomas Frauendorfer | Miray Software <tf@miray.de>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/commands/test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/grub-core/commands/test.c b/grub-core/commands/test.c
index b585c3d70..ee47ab264 100644
--- a/grub-core/commands/test.c
+++ b/grub-core/commands/test.c
@@ -403,7 +403,7 @@ test_parse (char **args, int *argn, int argc, int *depth)
 	  if (++(*depth) > MAX_TEST_RECURSION_DEPTH)
 	    {
 	      grub_error (GRUB_ERR_OUT_OF_RANGE, N_("max recursion depth exceeded"));
-	      depth--;
+	      (*depth)--;
 	      return ctx.or || ctx.and;
 	    }
 
-- 
2.11.0

