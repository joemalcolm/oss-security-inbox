Received: (qmail 23748 invoked by uid 550); 18 Nov 2025 18:14:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7913 invoked from network); 18 Nov 2025 18:01:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=DuaVTpwbB2nyRoX50fHiUwahEGwonEjBpVtLWRvNdb0=; b=
	J84KF36tQsuG2LH6yD4VZVax4x4vxhdt4r28lsxOBnFgNvHnZ5uBLNLp75+vVVti
	vYC35fmohaBDJjgk6xbxxyKSi2uowXOKxlkRDGfuyNDBxsyKXyg9OovOHQUInRiG
	1KlwkAho5KV/1zU08mAceBH0L9jXHbKZr7Q/7oymdz6+9PGptjdnMJlJMjrbOZqo
	79kUCZhbw6T7xVlOiIb92cSulK5ZnSw5my8I3lMyUUkuLdxA8D+eE/GZ1TCLPNfu
	MjYW0T2AJZ/45TyF5wOYC1Qq7K3xm5XOvsuxLGQwt3mTmJQ6YNGAnTL5kjpJ9hiH
	R7+R3oYfJBnWRmIp7LT25g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jPP7660tFwfyWSseD2a56zWOoe8hQcRBbh+Yo4JaiVOWlglat5QmBrlj6QzFdIQqt0OuiFZXj73aLVftjAIzJ1NOB/5pzkGRzhdfYs3ozpe/kN2TpTrRN7CAuQxiuEEZbs2IbRkDOI8PDA2tS9kftIf7yunzNmij0Na8j3/iIVse4cm24A3qwrX+xCpiR8yf26oVAHPHD4AHQUeh3/W2zuTxcCr0U/2HekYssX3StR7LFFT7p1vrNTLxJX3V7ZiaH3IYaBHJpIMPLKyJFr7amiI+WPRfoA9SdsBjx1GP5DyC1jHLjcL1EYexJW6JoQzKa3HBCGb4LKI6yijT5T5sgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DuaVTpwbB2nyRoX50fHiUwahEGwonEjBpVtLWRvNdb0=;
 b=NGJTFhE+MAxaHTfmShxHU4KWmRbsceURy/T8utYx/DVr5AxCECk5ozxtQK9JVIGpRMrb97eLW4sLTcs4mNYBaNJlKzmbZnGEeKOPLWKkwRZeSHpDQK0crHQN7w+GjmctHouCNn6aEImqdY4ijLTbx1MTnD2JlOkB6w4jhc68jFEiUgX3U0HGufPQQYTrcZOMc/uIqWJC5IHQbaq5SSWCtc6u7azvPiXkkiG/QFsQsesz8xfnEYQZyAgrXHnyiIS2lJPcTl1+l2CuWkauaRe33QXHi5itwVHDeKszJnfiGb+p3LfA91vg33QfLXD1GJmvZ/hxiqhNfLkptWRDGkBHXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DuaVTpwbB2nyRoX50fHiUwahEGwonEjBpVtLWRvNdb0=;
 b=F03rU9mScmfaoTKr/cdxGZKo2kxJ0dk2jaCyK3NZDu9UAGsUo33GeNmxi6sZbBuukiy6IWpAWk+tzD5uvJ4c3RiH5juDhmRwKsak5U+ktj7qU6YnrHqXu7dvDpgWI1O9BWqW+rd9IJxDJPlfem5EdobVthnQ6nYURlwIJTHgJSA=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:20 +0100
Message-Id: <20251118180021.2890-8-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: BE1P281CA0465.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7f::23) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|PH0PR10MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: 540a5c01-0357-4452-4b6b-08de26cc67be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?v3YVsXyRp5khk0YpFwwT6LrodO2Og8anSG1fbrYfX1fPTRwxtgUHs99jWJmv?=
 =?us-ascii?Q?SXd83jhMIjFbMCN5r5aqqYbFzVwKx+LqIPZtrN6wTF6yec5oDqzQAwkWzjdP?=
 =?us-ascii?Q?QNs6x6bynm93jpi4RKkZJmNhaniy6daX0Bh8mmr52+TfIfoXJ8pRw5dSb+1K?=
 =?us-ascii?Q?P2HmAy5r8RcsBcURjwdvzBhYXzmj25F7Tq9G+4Rxw8lsMidSkSzXs7tG2kSh?=
 =?us-ascii?Q?dczaueAaTUFJXBw4uRupJddhnViqF3iosSkLVOHSDpyIdb/F0rBavG4wcCKW?=
 =?us-ascii?Q?zzV0tvjKb9DXQbx3/dTBECr5rQmQiCgOGRFAmYEwtfOocKJFC/ckxVagI1rI?=
 =?us-ascii?Q?IZ8MZ/O/HgC99b1Y+8W/GQ+j0HgVur5eFlps0i6XlLuErCfjkSmsW8Mnd5S4?=
 =?us-ascii?Q?8dQw4roT0GDpXnANq8SSvJyxB8TQV2UeDhA60cpShkW6QTIaYWLkgNtRF1im?=
 =?us-ascii?Q?oY4w8mf15wLnhcoGREkRr04dEPbOxGkp1O9wVJSExDxN906jUvW02eyu8q5j?=
 =?us-ascii?Q?3iBFZxdNnOUOEkepnE94ByVbhLEtHtmMwPrH63glnPw9M+thPDjz4MC2bi23?=
 =?us-ascii?Q?0ObVEYxmnbo1XXPA0/gXowjHANi0Kf20AqZGzLM0aEKSG8AEX4DCB85S/uzy?=
 =?us-ascii?Q?L7zaWd+iAgL4OfIJw5h4KlK1+BsXlQc8DQJzNOobf0RLRXs/ir0NBibC+o0F?=
 =?us-ascii?Q?Gx8wjLI3LPWvXZAFGNqJd+RhWgKKkwCf0hzxKfrDaYaygydRmk/ZBK1TFrL1?=
 =?us-ascii?Q?h5S74pKT5Ne6gWN/CUTGq9900ik/rtJYj24sov0jmyUWiLN2xonKRjV7sOQh?=
 =?us-ascii?Q?sLc5QnIl/LUUSpgMj6Czavjm7i4aNK2EKUFyUrt1Z3WEABUuo8MprfQ5S7VX?=
 =?us-ascii?Q?WnhEtleZNFUbrvZJZdpNbuzV2A2AAQMm9T1MyeMqdu0ACufic8FvT0TxXPX6?=
 =?us-ascii?Q?Xdu8WumAbQ4hQdw3fFZ33D/IYFx1DYLhm4l2Mf8NXelJapGtlDf/BXGKfj4X?=
 =?us-ascii?Q?bo8gWtEdVIr8aCRE4YfqQPb2UyGJXzC1wrofdtY+nAsFPFaaX9NimSX/qhfV?=
 =?us-ascii?Q?8fIzBi70iqCG3FjctAADCtah2OCs36JiMUFUrpI8P+nDLz3PfmbNkPpgE+zg?=
 =?us-ascii?Q?JrfVlun8QkB208v4Y/JPPr7wXnxFoHWHwlgTh81q7oxZVkYbEotdSaFPnkM+?=
 =?us-ascii?Q?6CgbZatV51guEsbmroJbsMwgAcm5Gx8mi3Ikd4maaxmNxpZn5d07ALqUpGCF?=
 =?us-ascii?Q?mfpCXUXfrsxdH0e1rs+13AWPjKYEswHdYB6FOH4v687graQuDwe2dzUUMa0k?=
 =?us-ascii?Q?NqTzYd+D5nk1AbCW/pZUSYnAsRJLN1LEtNL3hFHm1GYxenTpVp8JJFDySdpt?=
 =?us-ascii?Q?LPzNv68JDp0sLqtYoFf03qP47Lk5fo1SApsT2nip7nvWtr8orTSZpJ7SLxkg?=
 =?us-ascii?Q?7aOv9JKKqxpgIPujroK64upmmz3kLqyT?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?eXfkAgoGgaiO4xgR1YtSQMrUAUC1sgbR1IByLUxd/TTqun0pKTBpZiD916W+?=
 =?us-ascii?Q?jUUw0fY/3AyIDLHfcHqp4wWIjoL/JIYqECM/FEUyoklEG1wla22LODxUny3+?=
 =?us-ascii?Q?vtW0gLPTd0OLF0rC75h4vG+Jxha0NV5rcWGpoJ19VHhjU+YM+ILgg1SkmJdD?=
 =?us-ascii?Q?/xCBtwX2MY7OL9MLhr/fmQY7dtmgTlUbsBg2151wysWk6s5m4ddx1zmIkWGU?=
 =?us-ascii?Q?3FaW1C0EjJO3v8P3hehs4RHus3eXRV+VdbYqVLjt4wTayPgtEkyVx2nKzckp?=
 =?us-ascii?Q?v9LezJmF75fhevHRBjwXhZXsZstg4MoHobpqdDj4iKefQqU7rwO7f3JanNKq?=
 =?us-ascii?Q?VGMAM3pU/DXV+Br567D1NKeIp8mlRxjPb2qhML6uIv2JLYT2d/Ca3JdhYHoI?=
 =?us-ascii?Q?YFcAsl+BgGAgvheYKMreX5LoaRYbdzcM/z5jvRI0xYF00XtYrX4ov5XaxU0H?=
 =?us-ascii?Q?KTREPfVVJCwww7lWkX4GvHnc48/vDaRd0iZ3/qRig8DevVImQ0gzm1r7qV3h?=
 =?us-ascii?Q?jHZBLeNZFl9mIq2ei1ScGuKIjhhCNsds9/ndxmfJgmpqhjJMvmOFMAp+SLW3?=
 =?us-ascii?Q?aNInsbdFi77Pd9Gaif1nWUJnIf6R2fwJzm3PCl9uqX3nB2XdGX/Q9C05SlQ4?=
 =?us-ascii?Q?Azla1CifXWMf01QTYoJcscEoo05QT2g6DgKrHAu+9uFnuC86X4D+1hujvl9R?=
 =?us-ascii?Q?hadzFi40uWFmrm4B6yDu9DL9s7XqsE0OevuaKRwG1paEB2vTPhgTlglMQMKQ?=
 =?us-ascii?Q?rAjR2UNvGLF4u7wGvATfCwOuLEG3oon0Jysiqxe8fuYqckfKpdyJb+12C5Jj?=
 =?us-ascii?Q?dOZSVAhePPcjnRBbsJwlmxp1ZwPgH53ProP7CN9G1H8OY/MaiIZgaD81oDse?=
 =?us-ascii?Q?1D4bLBLlc8n1jm8rf4EHj6w/xOaAL4VfBmWS1VbUf7zrU2oN8ysm0Ntxwve9?=
 =?us-ascii?Q?cdf2g0SkYeqovAWbv9cTMiKL86VV075xa85YdJBLO3A07F79rIMXW+2p0BS3?=
 =?us-ascii?Q?w48d0dG1I9vS+iWHfQcWT716xLh7fN9W8MWvXiZTsc3UmjUWULLfWOs+YaVe?=
 =?us-ascii?Q?qx+xDqCSXDZNIrHvISJVgA8h00WVYE2+bENEJgstmHt75ACINOHVlxV1EIFu?=
 =?us-ascii?Q?q1gxn5uMN6ENtxi8a4kcOvGX9NXN8fTLDU+oHlgjc2yYrK5QkvV7vHSa8px+?=
 =?us-ascii?Q?OagwcuWFo6mcQyFAXpb7Q3krbHxNCym5jbjXNra1vAwDTgGr2Qbf7EPPNp9a?=
 =?us-ascii?Q?+hfCx1WAb37FpBH6fuRVY/xP20eoODXiV5IFVAgchiam/qCzsD3Sc0pk3Tv2?=
 =?us-ascii?Q?623s9L7ocJsTm2hVdIv69Ly9irV80kOeJCyke6PTYhxkg150bV+gipzGgWzK?=
 =?us-ascii?Q?uZgMh1FET9g8jMANp17GUbgEXbYWn9HD2uyNAUy1P1spuJdf9dRFpvPANLCh?=
 =?us-ascii?Q?iTs3Q61Yh3o2guPvS8NnQawGJOywtrlqplt+61WHDngc6Vcj4ypNYe6fDYjW?=
 =?us-ascii?Q?H3Z4H8SlwNrQea9x7SweuEwQNgPhZEr+8djbzFOHwI/bFBe6oKn+hgugwDUo?=
 =?us-ascii?Q?OwysaaHjtwOqkV7JZ+BRBw1vgLJtkt7/NFiaaK6e?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	3erTCrh3O00acarsyVKLAdZtmO1KkkOYpdWC5NJSbvgIYB0LdPDsRbD86JrHy5VsoWhvg60B/sFNg/9mGziUBsHClH1NxVevAAzquTvXrNtQ7hkcVARDpLukI6tV8I0PN8NwIRh9xZNR3kGlgCC8fbbusCChFgZ/w09U6CdnlK6uesJXL1ToDrWQRNwSVKS3zVcrFh/h8hp7cX8NIMu1n+PGkENnYCSxachZmc6GZMjomYW4v4P424T7RcFCF2B8lc3k1NJOQV8/r2DePU+Fz+G72vz7C6cc/391OdjtrcO9nQldTzm3jOFc3aowipNwqXaCQcQQRnHGNPOdMyt8dL7F3DfgodIXTokPAApiROu2hZd4JeOkyxeRg3YxGlcdlKBXkVTu3IZ7vathBjgCMKmyJY3ZzeYMtMORvb+D9VcN1mEy2CAAM5YhEWdkXZAkwAUGJfmYJz6/3H7+pt5q0bPZd9YG1cL8KBYQWgAQOycC+78egcqPu4tPbfSfVWgkVMhR3+8LUtKG55/aoBROJElQay/oi0o2q1AWwrzef/kdWTc0z8ee3y2R/hlmFJ0GPreHpg2d30yDg4K3Q6+qLGSSv/vQUtNlaVncVptLkY0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 540a5c01-0357-4452-4b6b-08de26cc67be
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:48.9859
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jG5xHTvyKVZgJbddGp5Ho+2xPYnDYSM1iHVlbb9F2S0obR7bCYO/20U9DGWA8wPUdRE8jxBQz5+F7ANMzvZmgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4645
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0 spamscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511180145
X-Authority-Analysis: v=2.4 cv=BoqQAIX5 c=1 sm=1 tr=0 ts=691cb453 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=yPCof4ZbAAAA:8
 a=0j_jMrIOMjFniIT1OpIA:9 cc=ntf awl=host:12099
X-Proofpoint-ORIG-GUID: eHfNB51O7CKiqxid00PzNDTLXQdftvS0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX6/bqsQHs4Q0J
 iQLfVoMdVcrexabmStF59sAnwDfJTy47ARE6cRZunzlGEwr+1iM+Vcjiq2vRBBbzZHf77zT1Cml
 F6MXgO4TwgMusgrDe6dElPkvQ1khiPyhWOlomH2/i+pLdL59MkTLfpAa0+kCJBqi2Zp4wxo3W9J
 0y6CqdOwRp5eogMWGHhPx3LIqzDcsuFKKQ8P1p50zaKpTBKDIL14QMh9LAzovF95un2bgImR/QA
 lMmGhUiBoyBZKdnujpEP36ruZNSqeG4p/ABLrJ5unfOm2xvjDzdevTvvo4WsY1NHs4y2NqZD1Hz
 bQ/ETArFwyulEzF87CL3MG8AQffVvCp5QNhdzCWugAF1RmJ35eTmDceUK0+n9Mw2HrPyYLefnuS
 SYMLOZwgROckJ0tVMQQzudTpOYdr6Xd9xukI6RT7AqWVzGFE2SE=
X-Proofpoint-GUID: eHfNB51O7CKiqxid00PzNDTLXQdftvS0
Subject: [oss-security] [SECURITY PATCH 7/8] commands/usbtest: Use correct string length field

From: Jamie <volticks@gmail.com>

An incorrect length field is used for buffer allocation. This leads to
grub_utf16_to_utf8() receiving an incorrect/different length and possibly
causing OOB write. This makes sure to use the correct length.

Fixes: CVE-2025-61661

Reported-by: Jamie <volticks@gmail.com>
Signed-off-by: Jamie <volticks@gmail.com>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/commands/usbtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/grub-core/commands/usbtest.c b/grub-core/commands/usbtest.c
index 2c6d93fe6..8ef187a9a 100644
--- a/grub-core/commands/usbtest.c
+++ b/grub-core/commands/usbtest.c
@@ -99,7 +99,7 @@ grub_usb_get_string (grub_usb_device_t dev, grub_uint8_t index, int langid,
       return GRUB_USB_ERR_NONE;
     }
 
-  *string = grub_malloc (descstr.length * 2 + 1);
+  *string = grub_malloc (descstrp->length * 2 + 1);
   if (! *string)
     {
       grub_free (descstrp);
-- 
2.11.0

