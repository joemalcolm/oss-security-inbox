Received: (qmail 25680 invoked by uid 550); 18 Nov 2025 18:14:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10033 invoked from network); 18 Nov 2025 18:01:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=ZXvIOYRR0goTC1cvud0vCyhkcH8u9s5lp8dp9CM2jX8=; b=
	cO3kBAU67I+7Tl21fr9jv+AvoFmeRQEdJ7bCwaphfHojfEWx9uvHJsew2bRvc3Ac
	uyRFiaecDzqPHF9LBfFAudE8pZTsoxzzszDXfEaLpETT/XBmKvynYHVXS4+OoOqO
	5sGN5dTtuNsiq+V2KqN/08CI40KfjPIPKNWnQiUkJ20OxSCwSAEv1v9jDQwWTPbn
	jS9mPuOYF+VVfrsNT3bNN1CshQJYXdDFp52XzWNmqsP8PySWsE0OCqbpRwTZivRw
	19vwdPOqU9JffPVucd8HNHOz0NrPQ7qgcfl7FNBr33oofBfCsBSqnpkVqzRHGXLk
	P6Wc7m+EWA89Eww0kGhr5w==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vlDqdoKUkhG6TpKQ69FJYO+ytE3wH6KPODBg5ABcbxUifD36XU0Fah5rj9xpLjkwDQERTcWxCHnArt34UyoF1A9KMfxesT4w8/+OfXjSG69YIZdD3ET6Ig9nSUEU3rTpNbzWyHKm4dTlDIpPCvsb96lPL4QYkhz0HdKEU0xkquxYqy06/RiEtlGkWrCV4tfgi8Mb90c8igWJkd2EGjTcZx7sQIRsnSAi+Wsg6h5gdBqvwt5fkpAYgj647L+VINhgQJtdAwfdgqInXqo+QvuRXXhA0Yz6f9fcDXgauJWxnfgX5Lc0T50mp+al9wvltYK5Y95M6dGSdkL40WUUbj3z7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXvIOYRR0goTC1cvud0vCyhkcH8u9s5lp8dp9CM2jX8=;
 b=XFm4bLNjd14GD5//R03SFOwoJf+b5l3otrtS3Gc4yF5OBd1m4RIdaXZKEi+05753kpg4lIRuKPfFhn1TuKoAKRh89sjwgcisETahMQlUNDeyS4A9BG6hM4gNhYQ5xYWB4Xg0Vp3rfIw3roqu1YRuQQgVooym6BiFO/KlZtcqu8Arf/MCGYYeBqyDBLUurqhRP3jajLvvUqvjfBlluvjV6SG2Ssc82lVPwY/Io8wk3gg28mVbRuGeGVIyqkQ2RH6puMWnEeDCzQVm3rRGV70XrEYjFurEBuNOnIMYU8WtWu/XDzfRg5M4c5tUjxaW0OlYE5jKs6kJTiNLgQroxHWOTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXvIOYRR0goTC1cvud0vCyhkcH8u9s5lp8dp9CM2jX8=;
 b=n38IV2Cn75FMZ1V4zPWAQKFJsXf8H1l9sgXXnaT0e/pTyR3nbKBXnDZiGmP8wRabQzoNHjBJIpsVkET06x5xKrSgRD8ffV91MsbyBNqoO8Yc8+RQJHQx51vmw74PU4TJw+og9a/fsWkdBcIIEpcoxLTKjOd65Th3UxwO9/taUOs=
From: Daniel Kiper <daniel.kiper@oracle.com>
To: grub-devel@gnu.org, oss-security@lists.openwall.com
Cc: alec.r.brown@oracle.com, glin@suse.com, mbenatto@redhat.com,
        mchang@suse.com, meissner@suse.com, tf@miray.de, volticks@gmail.com
Date: Tue, 18 Nov 2025 19:00:21 +0100
Message-Id: <20251118180021.2890-9-daniel.kiper@oracle.com>
X-Mailer: git-send-email 2.11.0
Content-Type: text/plain
X-ClientProxiedBy: BE0P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::27) To DM6PR10MB4124.namprd10.prod.outlook.com
 (2603:10b6:5:218::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB4124:EE_|PH0PR10MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c999486-4f43-42dd-ebd7-08de26cc696c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?HX1AtJu/TpgeTYT7FwxwHWxj++WLgUox/5ljJevZ/nIJHOJSJCTLGl2AdMkK?=
 =?us-ascii?Q?1W+Jc4KI7xit1UH2ttSYqNkfuVSCwJusXyfNBBFa+V7gsCnhE64pOGBt+3A/?=
 =?us-ascii?Q?f9roTzF74qOdymGfQATVLMMwm1tiIwOB3ozQHVBxK+mnJIEd2elIjaUNWyi4?=
 =?us-ascii?Q?ACCEOB9RjfDlBIHnicg2/+/IBIOX2HDRrI/F9DQRLYQSe9J/83Mze8Thdfqs?=
 =?us-ascii?Q?4AwRTmfkbGbRBR0EHvKs9x6GDJTT4eg5BG8jqt2JO7UBSQbel9OOfQxf+rkU?=
 =?us-ascii?Q?8CtRgNaOZEaUaj6rfPYbT3GwCrKmMMeI9SehDrKkZc9JwEP2Nc/vm40G/hL1?=
 =?us-ascii?Q?ZmdYDX5D5u5V1DRUn6FSeGYq90fSdFIDu8fHq4xLXchYMCpR91GblEpjDv2K?=
 =?us-ascii?Q?G9aHOH2M1HqdqfLnXdD9I9lEWJfUW8m27D4b0EIFfqNNBfHhB1lY7JduDJb4?=
 =?us-ascii?Q?xwUKexL/EGrRNeg0LgVUzp9R/P0v4FtJ6l/lIoA6M5DTvKO9smALKccyg/Yr?=
 =?us-ascii?Q?yzlEeTVLNuKXsgStvlyHEMSzi/ys7+QHwoKsLN19HBffvOzzsz5KMQ6nPtlk?=
 =?us-ascii?Q?fh0f8pS6921Wg4SMAIhRdJq2zKscPf+Ul8VbIlsZQvAhUkD9MBuso0PEhHNk?=
 =?us-ascii?Q?82XdRM+Kn+Vuq2u1bczRdxXRqh52rA0+lekvuVT57pwcOf4T99TX7Li3CWsW?=
 =?us-ascii?Q?Ic+JuFYc9S5L0S9b1Muee3jIh+SCsZ5oYbUfcH3aU0NaR82yImSy3uH7vOix?=
 =?us-ascii?Q?2AX+y0Hq5dfXxjgaB61IdefxvNfZUij+yHbHLaBfoqoI87gzZdAF9WKEjgNj?=
 =?us-ascii?Q?S0JZKC3aEvpWsX5753RSDV0Mz7L5dpO1OSzmki+1J9sOmHLlUhQQHMpkVMkC?=
 =?us-ascii?Q?IjroOQIZfv24C8H5nQm3Qp9m+PBE0ovzyBy+9DC2ph2aDNJailv6hCEqfnQm?=
 =?us-ascii?Q?PedUFaiYnj6nTiZ4jYm2pwANNGvtmIhCgdzdwRNZg0+B/7+gwPtDYNYTCUH5?=
 =?us-ascii?Q?ULlj25PZtRRtJNZbyYVGKlM2CgA46zNPcusisqceQenVIW1mKGcgBCfX+0BA?=
 =?us-ascii?Q?Hs/+4Mn5ZPFyw6/jD/85GI9EX2rqTmCotKmD46Cn3g9Kid8ZNbZ2WjHGCPPM?=
 =?us-ascii?Q?+cX9+FQL3ARU+yzbQqWRAUXXV4Bphq9jCWS1cI/XUx9oaBvRIqZUP2kfDjpe?=
 =?us-ascii?Q?OxrwbIX8fBGlWi+VmAArtmsdQIr0ibvnPmcqDY9G/a4tMGVEAP3fA8ss3QV9?=
 =?us-ascii?Q?aSIlYDhwXumDfLxs4AyWyluuDrfqcBv7jUwcjMuTpoaXBHCEt7CZQjbFKDQ/?=
 =?us-ascii?Q?Wdza5SSLVOpD38eZQjkP4XtxelDhybJ804/1OPB5YjPQXgv/6+1AKfUd1ve5?=
 =?us-ascii?Q?Yv9VFM/5etjv2LK3+aOnw1wCFXKsWXT+mmfCV8uHRMqVlfEj6Nq53P3hVh4I?=
 =?us-ascii?Q?YdezQVEHp0aswneRRCL/E+NA9/UXnRCE?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB4124.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?d6bvJng08jYEmb5RBHNa7ldfnkuVSv8WSyEBN5DJpC2v0ZSX0e+NjnXRr0/Z?=
 =?us-ascii?Q?uHvLiU6FnP4gxZ7TK2bDfYNXEBO69BCmaM6Jjtw5SNcmvkndeUvIC8JejthR?=
 =?us-ascii?Q?0YI8iXPRNN/TOpyaBHEeLj4+Rh4DxAtzI7TXU+euq4311Wf10Z3MnO0sn+s1?=
 =?us-ascii?Q?mvCzFvnzvgB+4SZwygb1HthFullbS0OK4IdF9HFnZmA00Y6wL4j0bVadoegJ?=
 =?us-ascii?Q?WDq8qsDJ5ep/zbVmJJH629/9hT++NqFc38hhNGJqxMnjyuAyGEgXc4rVNCV6?=
 =?us-ascii?Q?eQe3M9VHVmSTrdZa0hX6T4k/CtscIRFhXIi6k6ztoDsN8xdmATFog+xmSeUa?=
 =?us-ascii?Q?4XoJiJ0NL9nyVst7m3m8NDtnAzCol787/q0i8e2Nwj8/LxN0jmwjPiggPs/i?=
 =?us-ascii?Q?XRaWPb1rArpugIoCmFZWGtMHglB8xEsGC2VbEzd1rYzDMfNH0YW9le+Yk1PS?=
 =?us-ascii?Q?d86GGBROKf6sBvsuTkMMB0l89grLSD7vhQmj/ySyj/VGxHUlJrJ9Cr6J01jx?=
 =?us-ascii?Q?37UKKAdNydPpdsn0QFlf0df4QoHZwUQBWD1DGQzZKjc2g3RnA0J61AQzEPDy?=
 =?us-ascii?Q?eqbcgu8nWx2jujVV9m9CDsl7t58VZbA/YPgf7Y+9Bf/jN1egJqJ6+08WM64Y?=
 =?us-ascii?Q?SfXkPD8Fa3VvaE+6CNrUvIGx6yxriuhUML02PIMHlgTwCdoBFXbPNDbeJuD0?=
 =?us-ascii?Q?av/TrD+Wa5aAc0oqzymtQzu4BZvG4f6XqkrO+HOjd+9F4icaGEzhQwJ9fbsJ?=
 =?us-ascii?Q?2W6qYl2ouJlkH/CW1IS849tEIfeMYPEP/nv7IJGipxLVbuRB+PRWzOdSXhen?=
 =?us-ascii?Q?kwLtEqXFNfTD86Dkf4RVxOWDf1l2rxrbo4RBRn0ymLpZO/7cHZxN+qUne5H1?=
 =?us-ascii?Q?tMVnEyQnEfRqW+AsMtEgkosnuH9RNLp9fOPQx9P9tIpDDZX25kCaEZi53vOL?=
 =?us-ascii?Q?aLiyqV7ta9aqKlysQ09JTvnYpm1GHAzm9mpANV2Z+AJKs2mu9wRllgBS0JO5?=
 =?us-ascii?Q?e2FvSb0tCMMkJRESTtKtXmJvjLSAagfk33x4K5Iz4WWTH6O/CuEB3CImBauy?=
 =?us-ascii?Q?JxKt0lQeCAEng5C8M5sBIfn2V/N4R7afi8ktMdMLUOEoJKmf4i0UyunhsT24?=
 =?us-ascii?Q?GFkAhzL9EmWm+jMS1ZolzD5jX4h/KCDi521ln/ngWSr9SQ8CBsTmT5X6mFzK?=
 =?us-ascii?Q?lVFa0kH5SyL5+CVVN3HhCy+IJjpoAPpv7GyLwx5FgODNmPwSID4WhalbxTN9?=
 =?us-ascii?Q?8dhUzaQWFg1EpjH5WzSdezRzKYfy9QTl801Q11E2I7XBGVvIieRdkXBfEgvR?=
 =?us-ascii?Q?TYBSK4ZSazjko1bEcYCl+OzL5DlIyNQ2tVxXMfQ3VSZ+9Y1vjKqNZQfNYznh?=
 =?us-ascii?Q?o5uympWktRLhieSAXosr2mDTokIXCgYUN8VzhDyM/zVAfD8YPi+RzycbSvN5?=
 =?us-ascii?Q?xKS1a7NwAA0VxKtvFvNgRuf64RJhZH4e0y9zTeKOrwyPtkAY3EfugAmp4UAB?=
 =?us-ascii?Q?44Ho1tY1PjdYquWBLplSiTW7iSo4k/+wdHLAvHYYpGFALJu92doADnjkBkcD?=
 =?us-ascii?Q?xEkU1YwWDka+ERFHNF60eVjTpp2IQl3tcW7i+qIR?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	lZiRcSLEKe+HkpM9/m97kXzdPNm/BnO9xfTSK97skGRrr1mKLxzkD0v466Y3i6skUDIkOfoAZ14TRqiznSJ9psyn4x+CJ120LOGRPyyykAKrJnwv0dGvBGabewBOGihNtXuvSnpm0pGgONbufcIkUNLhIC0Z7JD2yEc7tUozDt18ndYy3eTtmA2I1FlNk6bfrt4AU+ZvVUdTHfEcjAEg6EwhM67FIRZfuRtiZPPAn3Z7Ngw5Z6bEcJt9PRqJKbPAhKbQuHcmwNZyoxDggCQ8Nz5fWQKGH8j/U/OOoSBqAzAjtfP3ejNTnh00zjgVxpsMxXMc0rJzJjPN0f4TUcvAFQ3kkv0C0way6g10r+5BkYeJMOtmCtfpGbCIsZPqVMro5V0eVdyZZjmIlhP2J1B1hfy249ZMZLVel+h2fRyUd8JsSL5jF1F19FMbnOwOPs3uicWklDDlK+w4vD5uWoHY548qodbZLtOOL5qx7vESZdGd70q/WfasLbBba5m0lrveb0QUpDDBiQl6PxeMusJwLjMhCbAGnbjmKqLkumiOPHerKIsekCygLnC0g/4BWcG6CzHE0WjAhOODpEsxif1y/Af0UKHBxaPW2x/LCtHyQCM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c999486-4f43-42dd-ebd7-08de26cc696c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB4124.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 18:00:51.8003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A81EYv35p0CJzItYdY68/fDbxfGJN4UeGU1cuXja/h/IHbbAZLvWPedUlB4yp50z6h+laI0Ez/obk2oMlJMajg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4645
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0 spamscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511180145
X-Proofpoint-GUID: ewRFBdXbj_PvpMJIZQzF789RQfZJEj7w
X-Authority-Analysis: v=2.4 cv=Z/jh3XRA c=1 sm=1 tr=0 ts=691cb458 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=yPCof4ZbAAAA:8
 a=u8hdX5vp7ZFGNomCxbwA:9 cc=ntf awl=host:12099
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMSBTYWx0ZWRfX2ClA1uFFBiYY
 eggQe+aCqxDhO2XUuBvN8pP3lyJM2JKc/nD+KLk+k4lzL/VvXU0tHI7Qbb2LTwWBK4poaSCVkvP
 g1Wk2BbEz4oMbE5j5dHuyHrTNy52TJSdSRtVbCni5sLP0u/4T7NM4YZ6LmnAoEBQLIL1ctFMmW0
 1KviVw2ZFxyHtIUq3jmtAi0W/QWQ23IrdynbVn2FPKfHZpDQU2ZQyFpwKjMfqTRT+xTq5GBlxIu
 quJenVqGrWC3haGkt4ek+gXwjgwWtIYAyJHUpiFtZTiFjyM0X3E9yVrSLaMsEzjnKPt4uwlq2pC
 qtcRdZgp2z2xKgLXNYUIoADji2INOv8WxnWRCAydToKEm/JRe5Tm+bulesqm6Nvuqbye9m0O3CJ
 A76xXwOc0hpEQ+4YufFNuBtGVQvCxrepw3AcbhqFH/YqxNPopcI=
X-Proofpoint-ORIG-GUID: ewRFBdXbj_PvpMJIZQzF789RQfZJEj7w
Subject: [oss-security] [SECURITY PATCH 8/8] commands/usbtest: Ensure string length is sufficient in usb string processing

From: Jamie <volticks@gmail.com>

If descstrp->length is less than 2 this will result in underflow in
"descstrp->length / 2 - 1" math. Let's fix the check to make sure the
value is sufficient.

Signed-off-by: Jamie <volticks@gmail.com>
Reviewed-by: Daniel Kiper <daniel.kiper@oracle.com>
---
 grub-core/commands/usbtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/grub-core/commands/usbtest.c b/grub-core/commands/usbtest.c
index 8ef187a9a..3184ac9af 100644
--- a/grub-core/commands/usbtest.c
+++ b/grub-core/commands/usbtest.c
@@ -90,7 +90,7 @@ grub_usb_get_string (grub_usb_device_t dev, grub_uint8_t index, int langid,
 			      0x06, (3 << 8) | index,
 			      langid, descstr.length, (char *) descstrp);
 
-  if (descstrp->length == 0)
+  if (descstrp->length < 2)
     {
       grub_free (descstrp);
       *string = grub_strdup ("");
-- 
2.11.0

