Received: (qmail 7757 invoked by uid 550); 18 Nov 2025 18:13:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1778 invoked from network); 18 Nov 2025 18:00:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=6igUZVamvlQtqZvNT/vopF/6kRHrLc4NALc0I5YEfwc=; b=
	rP2DFdN9wNLxJxI4kvlJze2Xh/I7ligx1MsTHZW/HC/OLjA6FLR4VIRwUW+j/ybj
	spXn3YpzwfpTBc5caGmo628PS4es7gzhxP8n4CIM+df9X9hlVmfgsXiWayUPyFf0
	Tovv9FqrwcUICeU9UykMwbtOFBjBmtCNvIQ5iIcfZGW3plf/2LH7WOGwLfIA03Bi
	2gGkoKWZ20jmZvkAmbS5y3VLhWfLkgPbGHncHeSq/6F4Cg8dZpWLJk7eCPUtIEhP
	4Q2XoMK2ifHUe/23U7zmzYOfqHWJABuT8v1Eni9qhnVGBNFsJm7Ex30WKSmNTBlT
	ml2L7oC7HBcTX4ZiRQCF9w==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dzQWii2kRfhT8O8E9R0bbKG8axMcZ9d8SiwfPnQeFqkwyLzzxIcIVCeuXAlqvT4y2726x6lVOo0znAkm2POU4QZOIJnOk8q9WTaV2C75pbu1On0IjzXAHMGfonVDmLCEbwfN7CURQmr/3Ps9AaL/qtauGKJPGflIbqfqi1Dip4QHc/wtFrfKyQ4CzFs9Di8ECs3elLtcHZL9bBZxvVBqhCs1LqI+W26+fzuZ8YopvZdpqpgCWEhnNAUJv1HaDScL9tpK7vjRsvl5tkUjAJpEMajwT5Ifqu+tuh80i5dSCIzqoMFjQGxWSQLDBEGXmVAlEuBbKd9L0dkn31Hn8PTjuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6igUZVamvlQtqZvNT/vopF/6kRHrLc4NALc0I5YEfwc=;
 b=mkujF6fj0TgdX+b+cm2jtvqGOIykQ3GagcbTOJRQTpnRNaxllo1uoYX4094Ps8m/M812zJtWlHVDNkg5a4YB4zc/iu9WAxOspKMk/MesuncQz9k/6xElkTaLcOhRj2xuj9sfzdMxJBVxwPPg5HHlUCB1GR6w6L/KuXvq8tiEnFm0wJ5paJoVg469iyfx69oZ5jYNsnQ4iKjuT38fYFoJvKYQgQAjeSfQTVJ1pBFUQEHRVSAO4qmPFLYxURS8pUZRsxjTgK4HXdoZ4npCtoAbH9PTZyQiSGRzWhqPW8CX3W9LRaheo0gsPMlCAy4L3b0Ebo0CZFkg/Pf9ypLZPDJqjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6igUZVamvlQtqZvNT/vopF/6kRHrLc4NALc0I5YEfwc=;
 b=n+6iVeZx1V6Gne0M4Z2iwlFhI2ZWAtzznIyznRx5A0aa3DG+nTBgZgtQ6CEfYh023rYu7MM38itBrlKg+xA4+QwvWbBhOV90mnah60O8pNuc0VOgkww2emo7V3g9579iJp/augYDdtw30iDScpdPlsmNFiEOKVY/IJE0oIWi6+Q=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:15 +0100
Message-Id: <20251118180021.2890-3-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: BE1P281CA0354.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7d::22) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|BLAPR10MB4963:EE_
X-MS-Office365-Filtering-Correlation-Id: 6130a2b1-b1ab-4321-5a27-08de26cc5e63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?aXmkamOjHn+xaugZIpksuVhY/geQrWwyedQd4bW2Lhblr+4UOyJoSVxTk1eA?=
 =?us-ascii?Q?Ewv8Mzwk638ztET70S9Td+VbfyCrY9RO+ZDx0QDL2iO68NTK0Xq7W2dm3KJJ?=
 =?us-ascii?Q?gXFsFPCC8GUCDxPTUHsOZ/iIQkpFPeHFyra6sWY/ZPiXlc7aIImgTR5FPHS3?=
 =?us-ascii?Q?NWgPwxYoofktiykOBm0pWfypIu4sVSPH9KHkoH67UEnivk7BQ+sToufExGeI?=
 =?us-ascii?Q?/fdbfBRAg3sK/wQjD/RJ21gur7CjWhoQ4ccEY0NaRzKwFAqFgZDywhKCk8jX?=
 =?us-ascii?Q?RpmtzgTejnRAVPxgqmUeO7buHUjIGthiXOGRm+9R5K5Z3T1LMFTG9e5Vkgvn?=
 =?us-ascii?Q?C/uEBWQJYgFkjiW8+B8MqjOBGPi9fdsZT17Fjel8VLR9zwQzurVQQ8YFHoo1?=
 =?us-ascii?Q?/MMnlucd726xbxNxdaw83yn1LmzofZ0HHFqVNLLcow51cxQdVatY8123Brsw?=
 =?us-ascii?Q?/8/6WTcU0vw5cXL3BaCohKeySluuGtMH2XXCnjtx/fgq4UgI7oJIXIiLnAqb?=
 =?us-ascii?Q?FYhItam17oYAK8EgajKhe0OoOMdUq2BaFlPlGqOh0ZibAIlIMe0nGnnN5TfT?=
 =?us-ascii?Q?tJQyeaPCeUXqKSj1X8CwIAJGt66BFSa6EMxDMVWgMR+sDPlPC4ePQ7HQ3f6f?=
 =?us-ascii?Q?vYh6XIyHPVH9Uq6UM5pACMps1avULZZ2n6t3lY02axmNKrKLbGFjxRijka5v?=
 =?us-ascii?Q?ASswRhtbCptRnlEpqUjenWqKitx2PAO8dtQx1zqgJRQUMN7xScXbrmT7TyOd?=
 =?us-ascii?Q?r1bGs/qGBtR/8CpG2IITN4D2QTb2Ga5b8p1kwHFStjL7JbNvt7D0TQYSvzoB?=
 =?us-ascii?Q?LyHckIHryq3p96uv4pcVGngC3AaeeAdhGyhhxatMebL96PL4vgISBlZ1K4fI?=
 =?us-ascii?Q?uco8dngTyCnZz96Vf+ba5SKa1dpU3jcEykn505xs+kJkfZPZSYkZ3fHWWBk+?=
 =?us-ascii?Q?s/Tv0Z8E5tbFC4als/FACxu1eZu8H5jZFcjxrnlbQJ5h/ieOL9mFpgY7+p3h?=
 =?us-ascii?Q?fG0ZfovKOx6QZGJigzZ86PCWIrVgriQ3Qq9Mf1Kvwb+SVBgP3s3C5Jj2J6ii?=
 =?us-ascii?Q?DT+WHSMD3eQNIkXY8ohqHAwM0kHi1h6f3GmND7iL12emT1cSDbZqB3I/mK7h?=
 =?us-ascii?Q?JvD+/jqP48XXmmnXNSJPGh30WYYACtdFYcGwFoBJK8BsV3gz8PyBVa5ZYdmz?=
 =?us-ascii?Q?ifbTBUui+VyGKav+41xOStxXN8ju+CfuzvYzvTQ93z0471ObU+hSNpFvhUoA?=
 =?us-ascii?Q?Yhz3s/xHfRrSIu+5N4j1X/wX2c67+u16G35UZ1qE1sF+t0Q8tTB/yDHbjF0+?=
 =?us-ascii?Q?8VuBfSxlFnckRKB/rsHwB/j9z4d7te3h7laEYmJkHm23XsNWzih9ZeM2vo3v?=
 =?us-ascii?Q?Oau/ZztqkMYEuxxXO70/E4/8U3GxLBA4yhT2KSs+CyfYxQdcanN5Z0rigeXe?=
 =?us-ascii?Q?JBat4JlRctEDCgdKn0Ax1uRr9V6aR6Zt?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yIyonJ+gpwnjUOeza+9Z2FwgI8TfPIVMkyygoQv+Zskf1KYaTHl5sRW9ukHD?=
 =?us-ascii?Q?FCCyBmJ5llKFkvRmTKxBsD5lM9MiGcGdIAWu79tTFQ3NYNDdkDf9tTSvYuYm?=
 =?us-ascii?Q?1YH0FktPRhNFlYJYVu+jtsfrmvGP9tZzLmM2qdkX3enJHbyywtn/7G7N2cCk?=
 =?us-ascii?Q?loyPTNP3apdUcZ8vhT65wV14+90/MVN4zImtATEJiar7jXGmoUCi0g7Aj3Bl?=
 =?us-ascii?Q?9Rs4CiflFqpiGlvCEsBswoFdCPOPbpRaOvdhgExgIFlfLhFPEAGK/XCkKKJm?=
 =?us-ascii?Q?TeX/A50+aoHM+iPsCD+9GQam/ZTzZM5WvgKSfov+jkqwvpN7g8cOi+3F9GEK?=
 =?us-ascii?Q?D2Ws8lJiNS5egRedT7CnJiXoZfYOu0s2ZKNFaCa2VGLmRu14KuwAO+UwZgEp?=
 =?us-ascii?Q?4XO4raobv8VyOyBaNAjIWKlHk2/BHJyU+ZNyrDjKp4VKcbd515dMLqLoetwn?=
 =?us-ascii?Q?q4DFLX5dNxn3qxfKM+n56gDDXa0h7c+Hkdk7zQzPHC2sISQb0SD9BiWs11Rk?=
 =?us-ascii?Q?1goP/9tmhrEAir0zAdYJ54OLgaOKyCd+U2DHXB31JxKUeIopjSMCmcc3AgD0?=
 =?us-ascii?Q?XX7WCNTagTrcWeULA/2/yibQQOt/jsIfXe0B+1hY/1pZy7I8Zf97rYuVm8zq?=
 =?us-ascii?Q?pjQsVYoEmwxrVHHFAa5htS73qO0MU30GzAmH9iY1xO0I6O8VRsfx5yHwOQKk?=
 =?us-ascii?Q?mqosopbUkhckv3klyKCCdlUFLUhjYwmyPcXDTo3bJjDEBct8dc1Pog0UrU26?=
 =?us-ascii?Q?xYL4pyHETRxDmfEFU5vN2bJaaCycmuFKBdhDU9J7Hixr2CjGylzC71BJByrX?=
 =?us-ascii?Q?HUJPGIn9LFd9Ql6AAF/7Ku4VY9elGO9oanNXGJHN90wdi2CM9uvWNePYzV0e?=
 =?us-ascii?Q?EKKX0ZmAlDz7xBJfNQ/NBSpLBK4oKzqniMtdURe1ewPvJI3XYrCHhl46Y1N8?=
 =?us-ascii?Q?Ds/gmPGWrqL8bOpMp1WJjMWmDkFYdeVT0gbot4Yq5buzvWwHlsMUWM6T2qtp?=
 =?us-ascii?Q?D3ctmoz/UzovErVfmzs+K5SrXiY/HMO6ks45D4grlWkME5cSGaNCPeL9aEYi?=
 =?us-ascii?Q?2a8S0aRPmcs8+81NT+FxmJIMRyi9LkBvt09Rt+k0YTds1/dS3GZkCe/jNjeT?=
 =?us-ascii?Q?y/3Jwkmr9/75fYeYgx+YQ8bH0Mk+gp6iqj+r6/WS/5y/LFrZojvDwFCvz3uY?=
 =?us-ascii?Q?Hiy2+PcohvQW/kNSHUoQXR1TqlDKYoM1w614XdF4lqjxqCD8YI7Qx7vxfLZF?=
 =?us-ascii?Q?1u81nXsBUbBVhdPqQckc3dmPp3w1Cn/xVv6zK5Uki8pwHTtTSgT3A8kUUMS3?=
 =?us-ascii?Q?FPvZF0XQjSyPwxKnHQviFqj/fJf8Hc58KhX2TbttR04y6RWWHZtyCpenlOWB?=
 =?us-ascii?Q?4xkIsrADTAa1VkVPgNh8sDnP5xi/4waAsDztkhWEf+2gONpBNKisynjKTLwf?=
 =?us-ascii?Q?V0GdFHbP7RAZ2i0fM2iYct3Zv/FIV5/R7WIprXMzdlMZFIUAcChYv8UqAeEj?=
 =?us-ascii?Q?Ph2n3q0p9/6j4+0nBGrXoBEEKVI8/Fimx4RlZ3uZRjbzJryz9mKoan5HhH4D?=
 =?us-ascii?Q?5yFy6I8pDRR4nVvmhR51fdC4Gmy0aKnmGbtUQjWm?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	vF1+p4kSjBRA3kfrD9ht33On0gMySd3x0uRZy0tnIH5ChsJw11MQB48D05yFgKaNseLLuR4uLlMHzhBMAGY/KTyt7G3b5or52wy09zG5EOMW8ZmtA1WaK/cmkG4dXmt+Z+iEUhIM6gIy/vWUXd5adxilxvJE6ZyzI4kqOrCZVpeh4zrhblDDArf+KzGRlbjR82Vg5YTQvy37civBsAcKU/HB60z70rs/IKXTfQghMA32mqYx4aOLvgcqBK3cDHKG/UImDEqACxKnxTSMZUiYOrC4fesdxEy86dhNZGb/xr0xLkys+aSXBBNP9rrZC8JMpJ5N2xBR2SRkN2EnOa7Ujxob/yWIzR4aDIPGuJxEAWuLKGG4WizFLa0aUDJLXKCtuoQMNUxk4iYj+t44fTKJ6PJqO9Kut1pmiSFrp+TbDx3FYF/W0l5yqdDZeB8N2qxWwWjkTg+XRQ+poy9lD52TIcTynssgLStw8YOerggOEoKBWoOpnpAHEp2rWIDr9+tM35otakKFSKBuOoHZryHR1GUjbEJ3czW7LKZHsd/piGmu8oPmmtBRppQswhlOtILo0uoTI492u8KJOhty1liENAvUpteCftxd2tI5fIqeMIQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6130a2b1-b1ab-4321-5a27-08de26cc5e63
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:33.2985
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: prXIn9IZYMkhwlk0SXZVSpaH6MZE67bNXW3YFCtzPIio5d6IbBtHlSXhFRhJg3XZJ2uMHATTCDoOtVOOK8yVsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4963
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511180145
X-Authority-Analysis: v=2.4 cv=OMAqHCaB c=1 sm=1 tr=0 ts=691cb445 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=6PDhMXzQzzqENb6EcswA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-ORIG-GUID: m5PwLlJ6FwQoH9LidpiFsxa-d5esHoCk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX5nYFA36VX3w7
 nFrXHW/i1MS6X0h8BuHE7CMdRoZkfL4XHIvlVoOuwOlhVcgXrS/sMD5BTimluO5b3P5i7O1eaYj
 ZdxL5AnXDgMEi0mXtOvVSVChj/XSKPpuWNL5PLP/2TKb0+EwvUP/aN3p4xROUqh1iew+4RvSGBK
 WM+oIZkg6wQQA6bBbAtIFxcLi6dWMnAISmq+IjasQgO9s/MmvYlBChKK1D5VI+9ugFeFtWpHyI5
 /w0JdAq2YnQYZBYPr3VvCPTHAEjM/kzlp5eqOyLRAHYah8e18ctXGB+AnubNO/Fa5kJIOwtFSIe
 QueDULSFZL3ZCIuCP/WDwUp4OXlKiuqPiRlLuppCQ1ObiolJk545svpgxVQ6SDNzkYxEoIplrTW
 lTzD2E31Np3hYIomv0H0s5m5e6vteQ==
X-Proofpoint-GUID: m5PwLlJ6FwQoH9LidpiFsxa-d5esHoCk
Subject: [oss-security] [SECURITY PATCH 2/8] kern/file: Call grub_dl_unref() after fs->fs_close()

From: Thomas Frauendorfer | Miray Software <tf@miray.de>

With commit 16f196874 (kern/file: Implement filesystem reference
counting) files hold a reference to their file systems.

When closing a file in grub_file_close() we should not expect
file->fs to stay valid after calling grub_dl_unref() on file->fs->mod.
So, grub_dl_unref() should be called after file->fs->fs_close().

Fixes: CVE-2025-54771
Fixes: 16f196874 (kern/file: Implement filesystem reference counting)

Reported-by: Thomas Frauendorfer | Miray Software <tf@miray.de>
Signed-off-by: Thomas Frauendorfer | Miray Software <tf@miray.de>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/kern/file.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/grub-core/kern/file.c b/grub-core/kern/file.c
index 6e7efe89a..eb52fd25f 100644
--- a/grub-core/kern/file.c
+++ b/grub-core/kern/file.c
@@ -201,12 +201,12 @@ grub_file_read (grub_file_t file, void *buf, grub_size_t len)
 grub_err_t
 grub_file_close (grub_file_t file)
 {
-  if (file->fs->mod)
-    grub_dl_unref (file->fs->mod);
-
   if (file->fs->fs_close)
     (file->fs->fs_close) (file);
 
+  if (file->fs->mod)
+    grub_dl_unref (file->fs->mod);
+
   if (file->device)
     grub_device_close (file->device);
   grub_free (file->name);
-- 
2.11.0

