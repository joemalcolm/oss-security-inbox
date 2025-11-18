Received: (qmail 14068 invoked by uid 550); 18 Nov 2025 18:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5502 invoked from network); 18 Nov 2025 18:00:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=DlO8tk3Oszu7gRU6jgNNWdospT7W5uXvCiwzoqhljwA=; b=
	T3fWVyWGOyu5EeehBELE//chqI2/vcdcGR77FKdKACfeL3diys6rdMyJPQMaOA3p
	mFEK96zjDooCtTlu/MnKl4lLte8zl9zsLWehvB113eUfLcV4ANi4aGJqePPvbfha
	vyA+k/S00YNpZQ1peo9u+0xnMZvgb+07TZKabB8dT8n6eZ9MmQ4403q+ZSm5wQNZ
	UxPhRJv+GlsTEsMg/C6GUykM0aOwCICZ+9rOsxjto+sFsBHJr1+kVjIWbpcnKl13
	o4/0X1b8pmk89hobD/LLerCMoMkT4TWyD3kJBGMiGDuM5sNVpmqH9XLvq6hOmafM
	56xoWtQB0zeoPSxyJ7VYDg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EyZhiphguN0O2DM9utpDRbKKvU2ojBfnTvGQmM4CKNeb3/DukkqwlXROWLF/2FAEfSuF8UssjuV9Ij79yPVy1rhsmVj2GSf+6JdWXgId8emGQ7emOJVsSOzc/2znKcscA1Ci2+f8jyKfY/8YD0OUaLc3TL0euWdghwdhPIkZKY97Mfm8MVQyu6caDPSpuOSsrKhZS3fQj6ObkFevHbnAunNE3pF+gebdUY60SWaKbrLnWX4uduzbHJZFnxMfuAjPndKeCs14fsWSDsJM7Ie2lf7OCqGYIck8qw5mvqBRWhXcgRrMWafvLUA9r8J+cC45Cil05m2J1iJKODqGYbqZEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DlO8tk3Oszu7gRU6jgNNWdospT7W5uXvCiwzoqhljwA=;
 b=zN8KaKSodQTUrR/8kQDdah5POys6DjPrHyycO1fOkjq6g939dMsTFZebx980S9XTpfWXrz1ys0AwvDdikEuCZasn9XwivLPZDjgtgmn/swe9SBecNdVSPSHeFtp2PX3D1N9cQA2enO7hVhXL7z4fCyC1+LSuOjCmMRC4IRvliAFjwjKjWDszOXP8hcUTIOvWyt/+ZmSC65aUrfid6IN035M4G/KoTCqZtP7bdCbGx46ZPgfJLYqzZZAkWe2HOGay5jNxCej/sDJ3J2GEpdBhV5GT7QHNcAQiDtNc6jD7UnZSXMhXeIVtWKaBNgWTg7Ow99qX+/YxJ94pbyXUJpQxog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DlO8tk3Oszu7gRU6jgNNWdospT7W5uXvCiwzoqhljwA=;
 b=yBef32oJ2yfya2Wgl5foLYhMMM/Mji5UXXVft4/85IyQR8tqrJkFmQQEeR1BgoG2avyaS4c3C32AyJLn4FYo2W1JXX1zf1TlVTgxLnWVNHtR1zAiAEuVsPkNfnfvb6KnNumn7VCEaAFH9tsncSMry9/UpusJS3qWGN2YBMU/viA=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:17 +0100
Message-Id: <20251118180021.2890-5-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: BE1P281CA0022.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:15::13) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|PH0PR10MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: b6947cb4-326c-4cb3-bf49-08de26cc6280
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?86MDcZUa1DzknyKf+iKEIBpQxod6/FxaJ6Fd+3QtOTH9GPLKHqN4AgXWaXbg?=
 =?us-ascii?Q?Z4t9OYL5YjQoXv/GDBK7uukR5o9IV2meGLA3E/ZThW5NxFxhGts14wiOsPgc?=
 =?us-ascii?Q?dbhpONiSfq4Vhl6jn0AhjQYQ7O/0GR63gGeq5gfMVJfF56nn4b7v0LlCnWIQ?=
 =?us-ascii?Q?+pIpO/njNRFmy8UYgVv9/L4HlrSOzWWul9jS/uwDMDRm2M3i0YLNpb744rp2?=
 =?us-ascii?Q?Qbrk1qiHMgJwiL+dnHv1em3y5RDR3wiic3QW6419Q9kmdZeHE8YMWtL5nC7U?=
 =?us-ascii?Q?z/QAMuk0pPYFVkEjDzfiuuRP9yhfcXQVEgxrOOsVVU8aNwKJjq94tsHt8G+/?=
 =?us-ascii?Q?mrhrlvCd/fMiXb22diwG3ylaNZcnAlfXE0v/VZI7wtl3Az5stGTrgDRl4nfC?=
 =?us-ascii?Q?NxgV5vz+xNqiDjaf11Msv1MjM6yDp8WXpMVISvsnNeIyK5eo6VF563NOwJ3e?=
 =?us-ascii?Q?NKasI8WJUvacw0VLi3dR7PksaiJB3Pj0ey74VWPwqMBnetxj/iwqRkcgTi5L?=
 =?us-ascii?Q?bqALLCAEx7JnqYw6ME6HDzH0R3RqUto2uLaqhtEri9B+ugulgcVA2Gk/1ROC?=
 =?us-ascii?Q?71ArNdDZ3oreQGbDp3U4qphDKonH2OPr+kWZp2z2o/T611U6md4qCvN5vbZq?=
 =?us-ascii?Q?oCOjPZz6VAMxfoaW2C5hdtAdQIxOs/zVkCIusGlUeP891xZlxoXH7LZ8nXsb?=
 =?us-ascii?Q?AVPaNhP4P2ep9D0gVWfGlTVZ/XXrBgr+tiDPa3S1Tfeu00lO7+vfuozI9B7o?=
 =?us-ascii?Q?P/6W8A3Fcy5DwGYLUe7OhdZFPSgRD5m1/fDFAJfZY6+dISfghp9NJUSHOcEO?=
 =?us-ascii?Q?i+bdkKh4/H96xQX3YDLCt4aQj+wLCte5XckJbgIZWCc84ddRPSdy+Evxn4wq?=
 =?us-ascii?Q?6b4wRompVQKcxLi+ppuQu7rJ06Jf7bDBSeuQSRqm6yfAzjJr9tuzvtQGzeA+?=
 =?us-ascii?Q?sADDU3c1BGJssK7yCcPyUFX4XgYus/ctHD6vIEXh9UV+4CHfq8nj1ys5b11S?=
 =?us-ascii?Q?D7EOBS0IvdUVT5wIHCkF57VvueFlrbbDhk8Cj1ceTY9tdjr4AkrNxMBFuoZ9?=
 =?us-ascii?Q?/isOrI/0on/uYujzzoHnyCa+s3kmZDZMh0XJPIVE7p1ZzNh95dezP1r6BWXE?=
 =?us-ascii?Q?cUg/Ccdy2qqsFNgxbic+8mwJUETECzwsOjU/l3CRdeIYql98wkZdzO3xvAkb?=
 =?us-ascii?Q?IR7TJj662jmLwzYp32iKxZ3KE2aqg+Qhm3z1lw7EgJFnorOIJa2Yx45SOhq3?=
 =?us-ascii?Q?D1gq10cnhO62KGYlF/nTvkCxVePkDPq+egr0NJRzZBZe0y7TFbpG3SLc3xyP?=
 =?us-ascii?Q?LuHAgdx29XIVPU2woS05LpKemfxuyyO042/tIbJZf2uUuWALcDDNdjtvKtfl?=
 =?us-ascii?Q?uXX8W0AFQ8HMX+LBpYYjdeu0VFy7rsNlAt7TZAstFdmYuSE6NEecYvAnw8hA?=
 =?us-ascii?Q?uWGkLa63+JiF6orhWKPOZh6U6ppATCt9?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?kH14MDlfd0wNK5Zj8k+fbSRFLQqdU6MLC6rOFPFkZGD4pTimFKbAWfkzGZ2H?=
 =?us-ascii?Q?8TPJHQ9567zZTtr5+5JWy7N4HViuOSdTZ/IMqhyMe89aAsWxYnLmLvqRrVLZ?=
 =?us-ascii?Q?e4pzRY/rKsaY2JsU9MmH7z7Qnatp9kl7OyZW4mpj95MCuI8DA7DYWN/vtguQ?=
 =?us-ascii?Q?DadoK5/jL4M4fPntLRofTrxDATyTTHqLvQY6sl2DH5Nr0kmINxAPFatRpw9G?=
 =?us-ascii?Q?7XzvdzPYUGKKLfJe2jIOI4rJYHgZUiDK10dBcluZCZGX9L7x+bcWEdH7JreN?=
 =?us-ascii?Q?ShzBTzt96urzeFuKHFdkj7C7hp17Do2yC1Ua3Sw93gBC7Sl+/xP+c7yVKDaD?=
 =?us-ascii?Q?OiYiH+Co8/Xl0G/PyUYE6cmYJTo1UTEXZdKrG2rpBued8CKm3PmpjL+IiS4k?=
 =?us-ascii?Q?41ZlL34GviO9sWsK3izht/sBe5+SEoOkUDd0K2bu9z00aenNvgC1tVgXjrKE?=
 =?us-ascii?Q?V/P+Zxthb5bw3J/fJpQ752ixGij7PneOp+IycQKAHFI/zoaY2kpdJu5qRA6x?=
 =?us-ascii?Q?tqe9znWNzgOtfj/EpuHBG/Ua1ay2An7Q2OqfKt1zTKOUwuwxxgdNL31vwCZe?=
 =?us-ascii?Q?0U48/39pK7kfCA4lyEcYadzknQfcqVWhCsm/vyIrIptz9nFBTPfwAtMKRHeW?=
 =?us-ascii?Q?NWHYfvzcOSysGcT7jn7KDBbDNsWuTS3F/Pr4YkhFedPwuNwwPGmd+ENLI6DZ?=
 =?us-ascii?Q?qVUmXXFpqhGOCtGkCaPhdl8mHJ5U1REyyvbl2M5XhAbEWo43WgPtCYB1QPaG?=
 =?us-ascii?Q?A9j6zVN9jU7oZIMSz6uEOBl6si+kkTqUi9lMyac/BAmyx5M/oHXQAXNowZo+?=
 =?us-ascii?Q?ofcz8K9RMTbFH9SUB2f4HAyDaMnTI7brrTnV0GHTGfmVwwdHm1pBXdeR0NuT?=
 =?us-ascii?Q?9TVmwTMxESISusbRlY323gqn7XZl7Us3bWX2/b2iejxWxtowFAsSnqHOrh3E?=
 =?us-ascii?Q?8BaoGMRhIbosXbc7wCf2kQZcLuyOy9gyk5/543lOF/u+c8HeA1YYWAAd4J6R?=
 =?us-ascii?Q?BEdW0CJTbIbubVPefvL0oYmSe8S5lyNPwe7jafeSql6OUIehaE/9m+jc/pHh?=
 =?us-ascii?Q?1hHbibVzje28i3lHyOMdSQTcZwZ3ht+Eacxc9hhW38SL5gKWjh3F3NvReL30?=
 =?us-ascii?Q?n4BVwVIGO7fRAwdPg37mUZipJ41hd7g/p/u5WPswua0GZ3D8m5zMQXbl5luW?=
 =?us-ascii?Q?jI3vqbtVqtu9T2l+dwb4GGyGlumHPuWjij1kcnRp5xvkn+gEbOVGxLCa5iEj?=
 =?us-ascii?Q?OElpbrBSr7ej8RNrf/6F2mrf1EEQ6Lu0hx9FhnBw9ApVKjQDKlzECIVAL1y9?=
 =?us-ascii?Q?8OACMzPfSXWsCjc/pYi1116FQdYE78HqdEMZVw6ZVJ6VYSh/2KrmdzAz67gO?=
 =?us-ascii?Q?CRUVRqahekAYDMjpPuAH+jwsaTWpfX3cbh+5JNd9RxkbbeivXUHY6k49HO8Q?=
 =?us-ascii?Q?mksNAO7ujbdtd56ZHZJeuwutCRuh5Lsv/FvXOgBBNlLPjFM6TLFVifBpXjpb?=
 =?us-ascii?Q?5RKgqoyMge4xXEoLldu0XG6o53llCMYLvSDEBZbw18EHvsrENOmc5SWSxosb?=
 =?us-ascii?Q?hiTQvBw0fPoRODTpTxVaUiRWo8DcFz5HokZ4XuDV?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	W5TwqvLru0gPGiUdBUroafY0yVIPg4E9vkU3x6MzLAFBDr3CzXFiJM6K1N3sxQsE6Aq8N5Wm09n9kY8tDlG9g62xTWbqL08LIxy5+oaEeKU2BOE7zUdrMXWtK3CbXQBuyibsA6snxwELFwvNl53QWXu+1m6eo7oO1RAov93sOUT8Pj2+ZBNXmdUTJen76LFPl6OdNHP1UMHY+DIeh8N76IQfN46s8MMasbduzmH5uL8Q32zfh001ZwsC8DfkfArL0aJl8U13Vc/rmVnohO2dXAPL4IwBdofdhX7kf8IXxEWI6iy7xFwR/wjTmjfHw0TytmHlqQWlFFUZQTG1dNQ/Ca3ENHvSrDoIVa9GZVLBLksux58x7GKg1ik/SHCOI2djv8RW/u3n7J7DjO2HeW24UbpK7kbd6U0sM4RVa+NbaMBmJ9Ert7x3VSA9c1gY+ox6xHcPX0sYYjtSZFPiCT89Z8SbHmXdn9Nv2vWbJZMNLqxiMigymMLyBoC81Ao6MwC84FmJHd02Pd+PjPLxxcXt4xY5mb/FUIyQLLL5jHHj36viDrCM1NzMbBNpn7FXWd3g4NJDETi260MpnHf8ZeL38f5l1Wifk4hAWptKHvtcUL4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6947cb4-326c-4cb3-bf49-08de26cc6280
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:40.2272
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pjpNaQFwsjBho1z9I3bprS0Z3LN888Ktkwu/P1dkxf4svfCukLmspkFKUiWdQS1FBeIu8qIgtMaguxspg6FoJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4645
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511180145
X-Proofpoint-GUID: RbdaX5MahprOyJV9kMzXKFzgCyneWvdY
X-Authority-Analysis: v=2.4 cv=JZyxbEKV c=1 sm=1 tr=0 ts=691cb44b b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=QrvUJmhJD6oKX45O-ZsA:9 cc=ntf awl=host:13643
X-Proofpoint-ORIG-GUID: RbdaX5MahprOyJV9kMzXKFzgCyneWvdY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX6/iIC8gPoLkJ
 OqbQ/3fSp/BukjiigNIpSsX48bHcCZsWd7XR9RxpvxqDRbNHotev9M8HH6uE1nJvVe7SGO3WKuD
 x9ngraCNgLA5eVpoOnsxxavAzbkezrjLkWyejYtKpI/L/1vWyLDbtmNILOgil5oCRZnrFlDooqm
 UZl6eUiQ9ZbAztwo36e+gf0SScfBMLG+FgnhNer57mOFNMU7yXeLuzU0iUv4Ksy+Mwo0BnRruRS
 h+I1Q0UwU7dAGY96OkbtqxWonfhd+WHayl4ejzI4hw1olaTwFHfyLU9g1lRl4ik3Hfw69YlWsWz
 vLlPpsbpGtKXdfDXfnTA6c0aryY5swxLclDaX+6srhgH1pYwfRQUtVSoOIy3RAg9CvLFSWggX01
 uahUyQtdavLCBZ8o0IOk3jjGVerTEoyVSRVAcez+7xzJQjttz0I=
Subject: [oss-security] [SECURITY PATCH 4/8] gettext/gettext: Unregister gettext command on module unload

From: Alec Brown <alec.r.brown@oracle.com>

When the gettext module is loaded, the gettext command is registered but
isn't unregistered when the module is unloaded. We need to add a call to
grub_unregister_command() when unloading the module.

Fixes: CVE-2025-61662

Reported-by: Alec Brown <alec.r.brown@oracle.com>
Signed-off-by: Alec Brown <alec.r.brown@oracle.com>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/gettext/gettext.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/grub-core/gettext/gettext.c b/grub-core/gettext/gettext.c
index 9ffc73428..edebed998 100644
--- a/grub-core/gettext/gettext.c
+++ b/grub-core/gettext/gettext.c
@@ -502,6 +502,8 @@ grub_cmd_translate (grub_command_t cmd __attribute__ ((unused)),
   return 0;
 }
 
+static grub_command_t cmd;
+
 GRUB_MOD_INIT (gettext)
 {
   const char *lang;
@@ -521,13 +523,14 @@ GRUB_MOD_INIT (gettext)
   grub_register_variable_hook ("locale_dir", NULL, read_main);
   grub_register_variable_hook ("secondary_locale_dir", NULL, read_secondary);
 
-  grub_register_command_p1 ("gettext", grub_cmd_translate,
-			    N_("STRING"),
-			    /* TRANSLATORS: It refers to passing the string through gettext.
-			       So it's "translate" in the same meaning as in what you're
-			       doing now.
-			     */
-			    N_("Translates the string with the current settings."));
+  cmd = grub_register_command_p1 ("gettext", grub_cmd_translate,
+				  N_("STRING"),
+				  /*
+				   * TRANSLATORS: It refers to passing the string through gettext.
+				   * So it's "translate" in the same meaning as in what you're
+				   * doing now.
+				   */
+				  N_("Translates the string with the current settings."));
 
   /* Reload .mo file information if lang changes.  */
   grub_register_variable_hook ("lang", NULL, grub_gettext_env_write_lang);
@@ -544,6 +547,8 @@ GRUB_MOD_FINI (gettext)
   grub_register_variable_hook ("secondary_locale_dir", NULL, NULL);
   grub_register_variable_hook ("lang", NULL, NULL);
 
+  grub_unregister_command (cmd);
+
   grub_gettext_delete_list (&main_context);
   grub_gettext_delete_list (&secondary_context);
 
-- 
2.11.0

