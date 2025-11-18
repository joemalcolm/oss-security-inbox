Received: (qmail 16094 invoked by uid 550); 18 Nov 2025 18:13:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7241 invoked from network); 18 Nov 2025 18:01:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=GSam1mcvjAYVADtmoW5XsKGyRCr7gO0oWUhE5htQewg=; b=
	HhE+c8mEb3VO67KTwwUgbtUG4HpgsursmVF41c2b6InZPQoARV57c1xg7zzkDR4N
	AlUCIpRGkKRfUGDQI9UEJvlDV73FQV0NNYlGw0XaTLto5BhOroNmkzm93OJWcWzx
	FDQ2nFeF3Oeqs8XVz1Z1rG6HdBGPeWiHGULeEJEALP6lMtIDTkrwU6SLmwJ3y+0c
	rMeY94AfqCNAWm7YM3VFbeRWkmTZT9nwzBSb0/MXrFQ3ph1XgGpZ7AsFmSQ2MSk7
	f7FzbRq1XznXACZsyIdAY1Io7U0FWZOwO+artkWHE22MxurVe/317+j9Wozu1HoZ
	wH4TRZkwee6AJwCIJHU46g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F1T1b2xbUwOjzQjzI95j4H5/NmiJj+peV8bT0HkP/9l2WKEvY0qMvlQf3Lw2tPyAseFTLaZ3Tx44ddUiPNd2GS9ZT8UOyISW4iYfdXAVoglTU/aZBin6FUYtrmiwl+xCr8zkK6WXzBmYLkcTLaOWEzVScXTSxC49qDnezeN049Q9RTWdbEEV0P7jgiPPf9XMmt/vBsn0rDuds3IMGJuV4WJ4RHhlOwP4k7osfk3vxRlzcl9qt+U/wgPaSXG2/jMcNeCMdruSnPXmAafTeKWlJo1jaJGZ3fA7VPSVZtr3DaXAA6OTefS0BfAIf8mwwJZZtqWrRmvD+bFyu4AojJEAsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GSam1mcvjAYVADtmoW5XsKGyRCr7gO0oWUhE5htQewg=;
 b=yMHFN5pILDZW07/pcyBJ/0FzUPUiG7YpI75vbpdeDn2XmhMpcqa+YuLBnIdIpBwraMGZaviuMHMRJ2PT+Qv+HPmDiIrAdtPNGr5UR1DAYdYeU7JeEFXvGS20rbFdXUger/Ljw6RoWYZqkPDDPzd4W8qA1mE4sxjporvSVQGhde0rQ4WB/PtQKSE5TWQVNPJ4o3YSd0QEfT5aaYN8DkNouqXDBYa2YEf80644GRg4Ugmvmfucjt+PhkExKIq+UcDaOdHJSzCBaWCT54x+lvY8bJwvAafY1+NzDl8vgWnH0bTSC/f/WH92viyVKodnTp7nf8a58nQ9QMiN1178h1fQMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GSam1mcvjAYVADtmoW5XsKGyRCr7gO0oWUhE5htQewg=;
 b=AscgjqUhPs6Hhsy66gar4e0NqnmdFfLmHiJPGJXHorm2fOQ44yjPqc1zYpEhfP7B7pmCksQzS7WlM77ZKNpuY3ssg28nyZbBJYkBRTC+M0qYAn0NN5QKjBfZb7VVih1XKq0zJ4p3hRQ9bCsU/QeXSzNM7M+TQT4b7D8mwG2CHEc=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:18 +0100
Message-Id: <20251118180021.2890-6-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::24) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|PH0PR10MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b0b2bc0-486d-4543-2069-08de26cc6440
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?rFOBCons0m0yjyLlnMhw9NJ/INbSBAuBorG0ZUDxq/X1mvr9VbOrXbQSDMXw?=
 =?us-ascii?Q?TjQjnovhF2/p6kiC6eKkcrrFPfJiWm5Hpl9wtdPJMMHShRpDSu6kLFRQbrHc?=
 =?us-ascii?Q?VnRMRd3jb7cbgqfP5BrHaUsEXnHAL9eKA1P3gGyNouTrKjkHzIOtEj/FNaFq?=
 =?us-ascii?Q?lgZwncTTNz5OrSUU343LYWyKD/M0EmGg9euepdaUxpM3+fQfpR2jeM1AoJbR?=
 =?us-ascii?Q?dvtM89yklQbNyq00whhTDNlQG2ape0TKf3RrfW18StUoTbFshNlWOz6Pz7Tf?=
 =?us-ascii?Q?VKU3IVELALMYWp5S/i1aqPwLFDApVZsRiFZgO8QGFTC1ZCgfKjGtFx9eMkUR?=
 =?us-ascii?Q?BQ3kAjQd/xxMhnDga7nCDj9RHi4D+BFYGYcGy7TUm9ycYW8WrXpBfUN6mvV7?=
 =?us-ascii?Q?F/sPDEIhiRErH5NLS6OnKlsU1zeG36H/EYXD8WFgkLqNwGOfsQWUaNEyPzA3?=
 =?us-ascii?Q?y8/JTuGcytIs5IANXXEAo/DolY890RQswxHc+0kkQJ4oQm6CkltW1bszoGKY?=
 =?us-ascii?Q?D6Aik9b/Fg1clOehDM31dnEFFlpwH7WNbws+xZzIkLgxQqRnOlG0BVk3RpQG?=
 =?us-ascii?Q?DNHKckEjAeQmGfkBskmBPnlVPsnl/toTfWDaR90s/mMrkiW/L2g+X9kPK60j?=
 =?us-ascii?Q?cA+0meHN13OpDLBMJ+Kg4quFttQcnpXdWT8RfXijScd0S+UV5NGtrf66Zh3f?=
 =?us-ascii?Q?hKnVV9JhhYfEeJeQu/TJbNBBgyv40hHDNAHbVM5hmMzYL3Yun3SRQAlRIgcw?=
 =?us-ascii?Q?NXq6A5q4OBlSOJ2/eowU31f7s2UHy+U2AARCY3fqVhfBd8mv1zw4ys4OVBWq?=
 =?us-ascii?Q?xkK5Gq9hWszopuu0jiS64AzN481bJBruW3w9cQ8i3hSs7SnrRfBgXT6v8hTD?=
 =?us-ascii?Q?fXfECsZ+TEiExFE9Qr1SvbWd6rnPvu77necdmXjtb/601zUZNjJlpLyVn1CS?=
 =?us-ascii?Q?79hVGuC3AyF/2+LeRUOJrQP7An+wOncpUA7Ral/reaZMcy5k8/aSE20Q3SKb?=
 =?us-ascii?Q?eOUiomzz2Vepsb1R7/0pM09YVFs7CJDzIz8YZDID1tNNdhYbW+R67VeCUahb?=
 =?us-ascii?Q?TjczRd59xmcvjXbuLMlj8qeawjzYY/ACemYgW40G9gyXBuqIuJVwlw21oY2/?=
 =?us-ascii?Q?IY1QJzYCl1Un5KfTKbxqjz4HbRpz/WW4IUIQ1RIzfWvITf2aINwQ6RPbUJyc?=
 =?us-ascii?Q?ld4B898CHyM1bZrgjy1KyaWiOcbHM1ApZpNvOFwor7Fr0kyMWavvkxwAOicF?=
 =?us-ascii?Q?HbeVLyd/oNetIZiuEvpZ+CSNacY4VKhfltwngSnkYYT1OU1qkh2hm4muqbQM?=
 =?us-ascii?Q?v4W4EtYBYGPWQRuvTGGSqTDvpduStJRoTONpzuPx1/ZQnki1GTrabcjl49KF?=
 =?us-ascii?Q?E5IjebV4NpNmAT8sMzAc24bAbhsrq+PBffR0A9oskjkyDjM43ko9qh5N493G?=
 =?us-ascii?Q?fY/QqEoR0nbHAD7nbS6tSPO4IOpikcPn?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?1RHYNIfTyPSaoLfTzHYLeUsS/uqP65UV+ELNWirLFNdLp5wPEaXklnGrA6ec?=
 =?us-ascii?Q?oiL/nkKvuSW1o6/m9GdN0VFdgbJpPQQa4tgMDWRWGc6iwqLCZIWd4QzcD8vJ?=
 =?us-ascii?Q?YTWhNyzWbnRInD+YerStGSWqGPWe9n1T1U/Ku8zh+LKy3AeBRtP1wiLzeBIC?=
 =?us-ascii?Q?+ixXcdyspWzqIn+VXEal8kxpUhQHYRT9oyvq0llfzHBJuGgBV1Y9X5iCZU85?=
 =?us-ascii?Q?ElJO4cm8ObOlR6gRCWJz/TaRfE+k3MU6Ym/UqMrbhOHdOeWcRqIqAJUI4drP?=
 =?us-ascii?Q?LQHFoVuXq4rFQv13cvFrf7hKo3a/v4V+0y/kvLYzW955QetAlNXhRnBddRqA?=
 =?us-ascii?Q?tRJaAIPRvNnjuePBEVNPeAH3fETq63i7TlGk7FCy6gcI5U6Uo2sg95qp/Hy/?=
 =?us-ascii?Q?Yf+g/tQcdKQgFhviDsZ93or6+BJUQpi7n6+Z/7hfOZRIsUY6omoY8BE/QZGp?=
 =?us-ascii?Q?kHQOd8cyd2s9qju17k6NZfOk5EYFQ9lQ4J2VgNADDODeqkhVhxQ0NTNXItMR?=
 =?us-ascii?Q?bOsiJwvV7rjXSu2H7/27UNOT6CBqYiu50GZQ/SSQNu4rUfXWH5oSXdX9J3PF?=
 =?us-ascii?Q?51vXb/DOjbX5r30zuGmN/UyvA464emgnbyssUNLaZaeyviKZAfy3PPAKAdDh?=
 =?us-ascii?Q?yBBq688Gisebh4kxjpZJtxFTs34GyfuvwXCp5T1mrAq1Up5K4wDZMlvOgApz?=
 =?us-ascii?Q?fub4DqNKWNnBI2/eU9D8JQ4953Ucv8YKJ91HNA4p+iLoY15k+X37JDavURiL?=
 =?us-ascii?Q?afB3O43OYe8s/06MIuSTq4AXPWWv/D9VNzupqDGWLX187MwMpz4nV/13GPQt?=
 =?us-ascii?Q?/WRRvkRne1x93HwJlAjKe+wprAV6cHL9Eos5lg53lrTIqWAop8s+xboRLSvc?=
 =?us-ascii?Q?uGOQmU3R6S+s/4h3fd5+x+VQq8JoL5p7MR7hSpZ5HIfCe9o32UOECupHeZKf?=
 =?us-ascii?Q?xbvt/qlNYaQP3lUpHd1/71EyAwEfO1zB9TVa4zjNzibPAQnEsnLoWu3yAKBW?=
 =?us-ascii?Q?nuniT2ny0jw7UwcA3KfHQM2Ss9FWXgZGh8VLdeMe35spJTBEdEdse3urQ9pi?=
 =?us-ascii?Q?hu7DNs+jUktWOt+PBNnIJ0zWvh7rA/7CKGa2RbYW2qStRAdV8PJGXeQohuby?=
 =?us-ascii?Q?Nn+crompKuhMI1d5thSPXCjGgiifCUEqQd9qR4dh1LaUAF2gRVNaopHQK/jl?=
 =?us-ascii?Q?3LpF/yRBMGO5cQFdpIobndovViCge2js7zYmu/dFq89MkRqh99Mj0MaUFuuC?=
 =?us-ascii?Q?bP2ezTRjbNPggmsubxe9uwtdr7JHz7p9lvPK4FukTDOFsK3vAGodU7YaLRvU?=
 =?us-ascii?Q?t/QB7JzJ1Pl/XFP9P00ZCHnAs7MtKZSwAfZfd480VhySblWwyAe2gM+kl7+/?=
 =?us-ascii?Q?GGDdKHEOPwcvNPSRNuWt78TCtOzedpECHRB6mVP8MK038366m5xbPwv4S2FQ?=
 =?us-ascii?Q?P68MLSKzQ3ld5xkOZc78crJGKahPY8hEjuo4YZtqfJ49XHJR5YKAZoNiWBYI?=
 =?us-ascii?Q?dmF8QMVIEAS3yAcIPfaV/mtDJ4CMhegWp4aj35NyT1iLJgcvLDgLTrRQ40Iy?=
 =?us-ascii?Q?K1DoeOZY+MXrml/SzleApxRywRfa2a7QKI5w+WGF?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	k0KTEcmuDkNuarnjfkgIa4Pf8Z36SwEVRpXC3mUXJFTLvQC7AtxHZM+paM53iPBqsXrrilCYFaayKacrMIM8lx0c33k9SdTlQb1DFsA6RJoJuviwqZkfNUArcEfUKSFWOkt1zhMUAnPMQfr3FIGPNH2I0X7YFaZn5xbwyWOR5iSHzJyCKuYrm5jliJAb4qhAxRY5olyl6jGk6Igi8aQh1kAZZ+3G8SuWJGDMub4qNzqcs8DkX7cM0d/XIlZqPDWrsw+LMcbKKInojAxiX4HHoUTlj0MQA56+TObAWpc6LwcX86RWDglmckfjnMh/mVNyBLCLhXezo++SFO3/OKI5A/GK5q0+qeAkIDdnfdKkZhPTtPp+Nps6yNQrvq0r7FI8hjPG+oVeHEdhDEDfBS8zaxi+MYODeDlN1+F9DX1G5E5+R+ChwE8Z+fTxy1jY1c0zpGWaKVv995J/c6Ow9aa7v4S8JwakgZ1RJGTOG3fnHyFQpql/FK4xaiS0rCRWrRvSVtpKKV6xoaJ5Emeb6HD1k23QnWDxcbO1z73Jv7mAF+1K0j8rHbfIV9maIvcY57mcaIdne3vnf/QhYt0HmKrzuSdDRv8jKeFmvCI/N+wG5kI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b0b2bc0-486d-4543-2069-08de26cc6440
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:43.1518
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8Z7uFm/Lz8s83IVlHFKHBBN3zlbPOd/xw7d6b5cef08niFAC4XxTQmSReUXBtbTnQ4NyErDJAY1O+Kw1QxKww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4645
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511180145
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX+mgUq+YbdCfw
 Eh5paQo3U95d42Q8PtcPlxyNpY/eT7fJdb8vCXjtMnZ6dY83qX8URjeg94Tfsz0v2CB4C+1irjG
 g/YFyj8IJnx1MKEXQnKORKMwEMtni69cs7fr98JI5Oq6zaxVjfFQiFl23Agip3KYPXFL4ctUJlY
 jwF9aoMdFTfKate17DUSFNXfH+5NTiJnA/uDV3ySI5PAONHhuv0t8NiJ/rREU/B3Dl+0gjYUyBZ
 CIRA4+XP+eEJ4TnJ83cQIRZh7m6oPWMB6jN8Und2unTbrg4GQCs4d8X/LOJF7wil8p3E29uYsi9
 1GMPkC2cavqn4/prKla+0KAbvCV43Kdi88qlYZZ8E7YMtoE2bqOOjcRw5XbBcYwDpRtFAYjmlVS
 tAWIbl5e/uD/EH7zJZu7XowtYdl/TA==
X-Proofpoint-ORIG-GUID: ayo4oJ041ReMZI7CMEfwIEfZeKDUHFc1
X-Proofpoint-GUID: ayo4oJ041ReMZI7CMEfwIEfZeKDUHFc1
X-Authority-Analysis: v=2.4 cv=a+o9NESF c=1 sm=1 tr=0 ts=691cb450 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=wr-uD9XXySl9o_02xXoA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
Subject: [oss-security] [SECURITY PATCH 5/8] normal/main: Unregister commands on module unload

From: Alec Brown <alec.r.brown@oracle.com>

When the normal module is loaded, the normal and normal_exit commands
are registered but aren't unregistered when the module is unloaded. We
need to add calls to grub_unregister_command() when unloading the module
for these commands.

Fixes: CVE-2025-61663
Fixes: CVE-2025-61664

Reported-by: Alec Brown <alec.r.brown@oracle.com>
Signed-off-by: Alec Brown <alec.r.brown@oracle.com>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/normal/main.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/grub-core/normal/main.c b/grub-core/normal/main.c
index 8c2acf938..de9a3f961 100644
--- a/grub-core/normal/main.c
+++ b/grub-core/normal/main.c
@@ -510,7 +510,7 @@ grub_mini_cmd_clear (struct grub_command *cmd __attribute__ ((unused)),
   return 0;
 }
 
-static grub_command_t cmd_clear;
+static grub_command_t cmd_clear, cmd_normal, cmd_normal_exit;
 
 static void (*grub_xputs_saved) (const char *str);
 static const char *features[] = {
@@ -554,10 +554,10 @@ GRUB_MOD_INIT(normal)
   grub_env_export ("pager");
 
   /* Register a command "normal" for the rescue mode.  */
-  grub_register_command ("normal", grub_cmd_normal,
-			 0, N_("Enter normal mode."));
-  grub_register_command ("normal_exit", grub_cmd_normal_exit,
-			 0, N_("Exit from normal mode."));
+  cmd_normal = grub_register_command ("normal", grub_cmd_normal,
+				      0, N_("Enter normal mode."));
+  cmd_normal_exit = grub_register_command ("normal_exit", grub_cmd_normal_exit,
+					   0, N_("Exit from normal mode."));
 
   /* Reload terminal colors when these variables are written to.  */
   grub_register_variable_hook ("color_normal", NULL, grub_env_write_color_normal);
@@ -599,4 +599,6 @@ GRUB_MOD_FINI(normal)
   grub_register_variable_hook ("color_highlight", NULL, NULL);
   grub_fs_autoload_hook = 0;
   grub_unregister_command (cmd_clear);
+  grub_unregister_command (cmd_normal);
+  grub_unregister_command (cmd_normal_exit);
 }
-- 
2.11.0

