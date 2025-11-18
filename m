Received: (qmail 3710 invoked by uid 550); 18 Nov 2025 18:13:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1301 invoked from network); 18 Nov 2025 18:00:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=ZJGYC6qZjlt/7h4p1Oeko6wPMmcInml2waabOy6MrAI=; b=
	pm6oOdYWBXbMmwVDToXNFLb2BzOBgJ6beh/4MB1fS82/ZwYc2fJJOG26u9lGuM1H
	Tx9gVbW3WMqV7Z+0ir1QoY05NcVPphKeY7SewpSe0AwjJ1SgYeXECwBbUYEl+iRv
	HgLYez7Y3y6mYPqzATw0Am5IE86qxSyAUWL8p9kY27qMzitTO7ifqhV4o8Ga0O8m
	UQF6jhITwGXFE5A2W47PTxOJbx97wZZKYVpOfhIOY2ykmHi/JynaMZ6IZGg8Y8Sy
	KhmbLNWWDCjf8EFNK2ta3kTDRkyYpPOHbwwxuIAc6EMBXg1UZ7ZScwKBaRKfMCsX
	sYLl1jLPrcIBwe1nQ1Z+Zw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NQCuxrAfq6XaHqFRzxKDDjLG9sJM5V1FBqTPlIQbfgiiCJQoF8y3+whaOH8k+EKqPT2ZUKG29f2ZT04CPdEkaCl4ojEX/PC9GxfHursncceoEgGc2+29nCM1Fv/WRkWfG6n7cQeuWYiPlKYhwVOHRCX0ycHm+IsOUvBVKHy1lofmwUJ0y12O1JCpFDzJ4nyPaI5fXFLFj5z5+TqXExVSyAqXf1t7DzSnRYESMnByRX0NR58/y3AQFz9UIi8Dbi4fQ1aIYvc4L0B7GeADB5A/QFMNKsWoTogu0EwDzgansx8ObWvQVR7GIB+LNF4+nCFEM35ktPCZHhwZm+Um4ol4cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZJGYC6qZjlt/7h4p1Oeko6wPMmcInml2waabOy6MrAI=;
 b=Th7Psr8g767pkk2+hmyW+vklmzSfm9Q5+j79iVePmbpWFTDUOTmRGAHAPvZxLID+rG2ihIVJ/H1jIbqW5EjEjn6Y8LO/WNkpfYOB8US81zyscO0qqpJ9WwOpjMSAOjDyqI0u9c6RmcyhKtsmSr2P2A3jLNOv0ldmekHlMvFW02fLm8c2XE51JoDS7kNYlLMs3ic/5iKpRkGZYmJXNyqUFVdMU0gfndyepFjdpFkkGc8KuFGXHfIvZRn7OAHfovfLi7VeOY0ML4WZZRIyB0ctcHyx33z4ToqPbcMUfY583y0gJ8djH+Qz+wsUTW2qPPINWLo+3hhxeN7tZlNU/GA3pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZJGYC6qZjlt/7h4p1Oeko6wPMmcInml2waabOy6MrAI=;
 b=OX6pncYv/ssP2rq4kon+FdnkY/TCMeMWfZtkgeHUSyWuL6b6adwEdtaYyEnJpTaWMhU9lMcmADZsEtiv1fc3v1SILbozfO+EXekL75LckT/NI0pAJ+TdP1wwLCxUvI3YR2a6W7WLA+2dtnRYkfe7VWbCmImBpAPjEBDa1xdgQNs=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:13 +0100
Message-Id: <20251118180021.2890-1-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: BE1P281CA0342.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7d::21) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|BLAPR10MB4963:EE_
X-MS-Office365-Filtering-Correlation-Id: 54dff12f-75d0-448d-4b05-08de26cc59fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?91Y8Zx7ncoQVKwQnQqGbX7Sm1+cmiecPdfmcUfX7lExtXGU8inRYYpPHWEPu?=
 =?us-ascii?Q?JYMlOYq+S2B+dxDZb16Y6qhSPaZeVHP7ntSZJhdbNl7fB8twuJl49bhNILxb?=
 =?us-ascii?Q?2lQO0FZ9Qr/3c8SPtI/QWOxontmMHbr4xEYbaqeCOGW8SA0JIahdRv5sEn0x?=
 =?us-ascii?Q?vErPvARqm0HkhTfXTRT5t8FGjZydQXMTH0J7HYujLyZV3OM+9YOxsKQrSMcb?=
 =?us-ascii?Q?AYRqrlhNEHETIo+YAZmt987gTtGllLWabeu5paRfXM1NA10aQJzKF9YQxUeM?=
 =?us-ascii?Q?hR7vCjZ6oS9JDatg97GTFgHqL7vD+gfBPm/pTRIlhjrxA/Puc3SDNoPL87cH?=
 =?us-ascii?Q?sM09aUcVYP/65KrIZNpVip5wgeu+jm/dfot9qZG/Q/TN0N0b1jkaACez2pM6?=
 =?us-ascii?Q?DObMrnAQ2rY7WVpJjMsKtvqSEJg+03wCX/NIowDFJwGpCkGW9vLFHVB5RSFo?=
 =?us-ascii?Q?MbK2g1h/u3dhXc4Ewqt/sqnBthrEKtdOCjZrZ88h3+qIQqt/W4PTfqJPrM5J?=
 =?us-ascii?Q?qMScVE05b25DjkAf1x4l1o/KVFj+C43oRuul32gA+PKIM6FW7K/45/PWGC5N?=
 =?us-ascii?Q?FBLuBa0dx9nvcz5hf0/CC1SeUa/6DNmO505qIxjGaQfZcvbKQs5s88qkwLmz?=
 =?us-ascii?Q?MxCLxa7wnrpESqbzY7TjBuDiKzQEi7MP9Kct2DoiRf174wRnGcBOoy1VQfgz?=
 =?us-ascii?Q?zMLnw8AS5aqyQPoRZdT3R29iLRxMkqECzZsUOkKxybtRbeIK2QC/X42Q4kf6?=
 =?us-ascii?Q?DCzVVJEF79WbttvMxgXfG9VCWdaCSlUWEIxU1ey5fGG3bit4BhgOKAEh5pIS?=
 =?us-ascii?Q?toGbPTDMV45tGAtq9vODakUkux8LkzbMiKNjDyF2Ba6+zd8ZsKSKIm7yCjQD?=
 =?us-ascii?Q?ilPuWVpwwMb7GupS4xSw7b7Hnc5zBvEdibmmrDFqy20uA0ORwDmvd6JmtJyv?=
 =?us-ascii?Q?a9Y28jQPK5Cyf6whH9d4biRlQSq+1SNsI/+jxJAirHv/YL8raJyOWyZC2iSQ?=
 =?us-ascii?Q?kD6hCSBEDYUzK05K3VAVTM83C+xuTEOM0idl8g6L+IyLoCKp/9wGYaWjnsHt?=
 =?us-ascii?Q?wqI/47xE6sabEQ1JnlkR1F09iiYvIRwi3uUQyODYihUAjuqRdQ3cFmiWiKrc?=
 =?us-ascii?Q?d2CWizWY3StSShgloGzWlhX5ZkZ/pZvJvmSoiSEgnYu03dTi0i57T3OkBgti?=
 =?us-ascii?Q?tpnWO0jfeAyzv0mHhrHNy7UNo+m5qPxeqXEpA2wDjq7jgEDLrcxACQQM+z8m?=
 =?us-ascii?Q?6y1Uk+ZlQfLIQe2Ou7/K4tPxq2nirqOYcayu2dnWfELzvqrW1ks+QagAUrkm?=
 =?us-ascii?Q?bFkgKM9Ypy0GDLqJTeLu8XiMqVqL91TMQQ9L8GbxR4rTrns/WXgjfhHU9MSe?=
 =?us-ascii?Q?EJnnnnQaVxthhJVTeYBoSZo11YEsOF26iaIdzBsodyAcanujnjMR/VR0HC1B?=
 =?us-ascii?Q?FBwfUcmMF77UNOU7HpXcS7pkifhutDo2Q27R+ew0WVjfIWu4Uavegw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?fvWw6p/kS9BAa/gElZF/zVuwJ/wOVGVxX6p4DbBa0YJhN5uSDIL9ef9V1b18?=
 =?us-ascii?Q?wOpwXOBdamZcOeuPC/rjUsct4teCGdkwfYzy+W/3A2Xtqxhx7Ypo7vVe3bPO?=
 =?us-ascii?Q?pJyBDr0kG4MgKTlPRYVykHP45eWkM2t0OwRLPXUMFYDSUpy27zR4XGRn1S76?=
 =?us-ascii?Q?KfDIw22eY2LPNdKbDkEDKp2N8Tamq42pDpttZgBNoarniFNZF+OnfAJr8f29?=
 =?us-ascii?Q?r69uUt/T/FVwECSI+BwOcP2sq88ELM8YMdlCbm667d7S4MvzCQ1k4y5/YCMg?=
 =?us-ascii?Q?3/hLrqgXpQklmMUNKxdZlDMu5s9HH1a9OJzPvrIswLvLQiT7YF2li6uaJHDb?=
 =?us-ascii?Q?VXiT4h+fxndsnQ1oeIAOg8Ykh3xj2cpQF2WpRJaNBeJpUbLk6dfwPeqB/hBy?=
 =?us-ascii?Q?/pmb1RaO6gkJIMfew/vUlB6gCYuAcLXx+M4HuoT2ucapQ277pBIX2x/8i/Bh?=
 =?us-ascii?Q?pLVqHcUy+snWEp1D+gtu8GZ2cbCi8VdDj5FTAg/KqOFTbUSieixh3P/2i6Dl?=
 =?us-ascii?Q?fvZYxuCr4YvU4TEgixOTxEdlqGMGmqpAbziqXO5DTi7HcUI92LFjQMOzbgrH?=
 =?us-ascii?Q?F1MHcpexV8CH0rmgLRdR2xjHiRCYUn3mmhYZO1d187I24aQSR4cAJL2M0/Qr?=
 =?us-ascii?Q?jdcB2zannbrXNiDqkPvHrlcZQh9hIlJtVMiJ9PSlyvj2mGf7jm8ajNYVnaX0?=
 =?us-ascii?Q?2kOXi0StH2SFaw/X6Pz0wzrafy4c+8o+fq8Bsw2BihFmSw5X15QJN19NUkWs?=
 =?us-ascii?Q?Ewta3DjbpKVoCR5tZbTsXYxpxacXbxiMl26Ir2425rgVnFCqApCTD5H7mdAB?=
 =?us-ascii?Q?93Colr9hm7Q2O8Q6yTkzl2+aUWIcYz6jM5/1yDYktrcYvAiz0Fa7tqwI7lrX?=
 =?us-ascii?Q?OwLtZ2OVY7lyL1HX5vzNkpfPgTNngNHNUO8qQUJ1oESk85bkGhLwJ61aG3sz?=
 =?us-ascii?Q?QV2ZHUIkBOFXZwcdDjdf9L+73YCz1VSxmo4dRQFhcOpUx2cpTaDh2wsdB+eo?=
 =?us-ascii?Q?KATB/lMuaweyfmKzMYx4LGPa7pqj9zuF9B3s9nxecx46SOzlWNHDtP41HkcG?=
 =?us-ascii?Q?B8jmGDs0TA05g2JhREpuXMqvyBkGA9PXUc1fzKAZ+3FhY+IzUZNaQzPgw24H?=
 =?us-ascii?Q?ER1frjYjxjNvZN4eraDYGHTX6seeHhcsxgdg3I2ZAkWmqr651mDNZyaGk9tw?=
 =?us-ascii?Q?lNHqjpRb3fSQ/bMhamMl60OnK3ZXnQOhUagEmLOyoGLNq8nytbg0nhoRTw/w?=
 =?us-ascii?Q?0uJCusPjQiYA0MDgmgksJ0tcK1dFrCPTweuW7LjCaWpbBZwkc3ieNJ6gSYrG?=
 =?us-ascii?Q?h5WcYNGcCY8mWvhk8zkApT1Jwe4R27S35y0RjKc5KSGJn9pci8uvPCEZC8WR?=
 =?us-ascii?Q?Cn7cMbaXD/XiZ9+5SZYYCeRiPCEahV2vRM0cj5fpEBihARwX1MG28HvTFFQK?=
 =?us-ascii?Q?jwsw5+nvpAqNvXrEyXrJUbjzV0f45vudj+Eus4gDQadQzPu/AFrlMq8dOtNv?=
 =?us-ascii?Q?wH9Kmi5X12ATxAjx+dq0Xig8QAeqrTerVFv+mOwOEsmojOym+d7AmRRApc+Z?=
 =?us-ascii?Q?eVWVmDDWRnl1l3kx2DLCIx0QepCfQJPIlw2Oj9hP?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Wlq5VhdiRphsQ6b4RJcYOom/9GEGr1BEf2tbwjvddAVS9X22Ia2qan1kd+ISmw6RDnUQ3tyhPhjXRxRkbMNVgAuqtxj71O9hvyVNm1o9H2D+cOLpL1Xk/bzlwvegO6NETn1UGpdoDkOrVnUCfSSwARW3xJ6jfxMxpzkZWWAfqPDCQa6e9utn4642g3bb1wfCER7ApAsHA6in0wJtyk+ogfczLzlIltpNrdBk3tgbqMy+mD2t1GHewOUk6mY5B9MMQehUSukCDmQkaNfovECQkG/KKepavu1XTxgokwUjJTLeOsGJnF3R68+gdGuqCa29RHf/GOTfm32/mdxhNnazDop2E/DDcLkKq3E8CyvLE2sTSPia90mvA1wgtnU4axQEJZG1QxOo54P1d2mPN1i/d9m7uArp2FcaZXM7SOh4DqrDRiY2BruKxOQEA/XD+Wp8UqL0l6Li/V0x4JbYiGFXvC8+atGnW0HLOADwAU9R/khd03efxwKlJKMEUmuNPFDBEaktoVHCs0xbkQsY38zZfpl9h67NhiqdyNFbmq6bxWyjtXJ4MI14TYlXu1pct40NaDo/kTE7oGnH+X1xJje/2xJARtdXux8Pd3b2O8dWqoA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54dff12f-75d0-448d-4b05-08de26cc59fd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:26.0310
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CitF2ymJGibonBAXl6i4dS3zSPB+hiVnd7uzfTUeZM1GDKCBpREOXo6HdvJfR45NOgftm9IwAv/RvbMG5Qwjjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4963
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511180145
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX5TNsyIlFq+mE
 FSf4Sg6WYHKckxpHT0RxhAeTky6V5khE2atQH1QMLIHPsW5oRrG3+tNJQZRkneyu0P5X041thOa
 k7ED0EzlrVKzDZCE2XzzhlA49s/vED+NdW4XGFdQQl+ybmoc7Apirn9F8xHUe73VAwyNmNPtDXS
 6ClU4nK0nVo7iLIwFwmPVAY9RsAMJTSRst9fT8lMq1Sj8TGksmzX4PCmUYYdUBdSix2FgryXWP0
 L5zXTPv47gEQo3TLOqkqFcSHRLLlNR39vuHv6dIZchAIPrB0wWTHtUx5xVq4owaKGWxoKA70udj
 uqA10D7wEWf/h+lC4IiApVI8Qu1Td55tKkmvxt588awhviWaDMLpyieZTt2gXhYcOes54Sul/2Q
 LTTaIeTAbJwMYf3j1ibpdKi7w1MT2w==
X-Proofpoint-ORIG-GUID: Lh6a7-ys9OqO_eRmUN2xOQsnqHE6ZFyb
X-Proofpoint-GUID: Lh6a7-ys9OqO_eRmUN2xOQsnqHE6ZFyb
X-Authority-Analysis: v=2.4 cv=a+o9NESF c=1 sm=1 tr=0 ts=691cb43f b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gR1thqXsAAAA:20
 a=mDV3o1hIAAAA:8 a=xWRDalHOd-tHIVyZa5UA:9 a=bA3UWDv6hWIuX7UZL3qL:22
Subject: [oss-security] [SECURITY PATCH 0/8] GRUB2 vulnerabilities - 2025/11/18

Hi all,

This patch set contains a bundle of fixes for various security flaws
discovered, as part of a pro-active hardening effort, in the GRUB2 code
recently. The most severe one, i.e. potentially exploitable, has CVE
assigned and is listed at the end of this email.

Details of exactly what needs updating will be provided by the respective
distros and vendors when updates become available.

Full mitigation against CVE will require updated shim with latest SBAT
(Secure Boot Advanced Targeting) [1] data provided by distros and vendors.
This time UEFI revocation list (dbx) will not be used and revocation of broken
artifacts will be done with SBAT only. For information on how to apply the
latest SBAT revocations, please see mokutil(1). Vendor shims may explicitly
permit known older boot artifacts to boot.

Updated GRUB2, shim and other boot artifacts from all the affected vendors will
be made available when the embargo lifts or some time thereafter.

I am posting all the GRUB2 upstream patches which fix all security bugs found
and reported up until now. Affected Linux distros carry or will carry soon one
form or another of these patches. Now all the GRUB2 upstream patches are in
the GRUB2 git repository [2] too.

I would like to thank Alec Brown, Jamie and Thomas Frauendorfer for responsible
disclosure and preparation of patches needed to fix known issues. Marco Benatto
has been helping with assigning CVEs and scores for the issues. Thank you!

Daniel

[1] https://github.com/rhboot/shim/blob/main/SBAT.md
    https://github.com/rhboot/shim/blob/main/Delivering_Sbat_Revocations.md

[2] https://git.savannah.gnu.org/gitweb/?p=grub.git
    https://git.savannah.gnu.org/git/grub.git

*******************************************************************************

CVE-2025-54770: Missing unregister call for net_set_vlan command may lead to use-after-free
CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L - 4.9

The net_set_vlan command is registered in the net module during load. However,
the command is not unregistered at the module unload. So, this may lead to
use-after-free issue when the net_set_vlan command is invoked after the
net module unload.

Reported-by: Thomas Frauendorfer

*******************************************************************************

CVE-2025-54771: grub_file_close() does not properly controls the fs refcount
CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L - 4.9

When closing a file the grub_file_close() misses to dereference the filesystem
structure leading to possible invalid reference to the file->fs->mod pointer.
It may lead to a use-after-free vulnerability.

Reported-by: Thomas Frauendorfer

*******************************************************************************

CVE-2025-61661: Out-of-bounds write in grub_usb_get_string() function
CVSS:3.1/AV:P/AC:H/PR:N/UI:N/S:U/C:N/I:L/A:H - 4.8

When reading strings from a USB device in grub_usb_get_string() function the
initial length is taken from first message read. Then this value is used to
allocate memory for UTF-8 destination string. However, during conversion the
length value is taken from the second USB device read. This can be dangerous
if malicious USB devices are connected because they may expose smaller initial
length value, used for memory allocation, and subsequent read may provide
larger length, used during conversion. Such behavior may lead to heap overflow
during UTF-16 to UTF-8 conversion.

Reported-by: Jamie

*******************************************************************************

CVE-2025-61662: Missing unregister call for gettext command may lead to use-after-free
CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L - 4.9

The gettext command is registered in the gettext module during load. However,
the command is not unregistered at the module unload. So, this may lead to
use-after-free issue when the gettext command is invoked after the gettext
module unload.

Reported-by: Alec Brown

*******************************************************************************

CVE-2025-61663: Missing unregister call for normal commands may lead to use-after-free
CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L - 4.9

The normal command is registered in the normal module during load. However, the
command is not unregistered at the module unload. So, this may lead to use-after-free
issue when the normal command is invoked after the normal module unload.

Reported-by: Alec Brown

*******************************************************************************

CVE-2025-61664: Missing unregister call for normal_exit command may lead to use-after-free
CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L - 4.9

The normal_exit command is registered in the normal module during load. However,
the command is not unregistered at the module unload. So, this may lead to use-after-free
issue when the normal_exit command is invoked after the normal module unload.

Reported-by: Alec Brown

*******************************************************************************

*** Security recommendation ***

We have observed the same missing unregister behavior for the functional_test
and all_functional_test commands. However, both commands are part of the GRUB's
test library and should not be included in GRUB images targeting production
environments. Given the statement above we opted to not assign CVEs for such
cases and instead strongly recommend that GRUB's users to not include both
functionl_test and all_functional_test commands in the production GRUB images.

*******************************************************************************

 grub-core/commands/test.c             |  2 +-
 grub-core/commands/usbtest.c          |  4 ++--
 grub-core/gettext/gettext.c           | 19 ++++++++++++-------
 grub-core/kern/file.c                 |  6 +++---
 grub-core/net/net.c                   |  1 +
 grub-core/normal/main.c               | 12 +++++++-----
 grub-core/tests/lib/functional_test.c |  7 ++++---
 7 files changed, 30 insertions(+), 21 deletions(-)

Alec Brown (3):
      gettext/gettext: Unregister gettext command on module unload
      normal/main: Unregister commands on module unload
      tests/lib/functional_test: Unregister commands on module unload

Jamie (2):
      commands/usbtest: Use correct string length field
      commands/usbtest: Ensure string length is sufficient in usb string processing

Thomas Frauendorfer | Miray Software (3):
      commands/test: Fix error in recursion depth calculation
      kern/file: Call grub_dl_unref() after fs->fs_close()
      net/net: Unregister net_set_vlan command on unload

