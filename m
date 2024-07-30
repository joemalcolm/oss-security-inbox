Received: (qmail 25933 invoked by uid 550); 30 Jul 2024 18:40:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20388 invoked from network); 30 Jul 2024 15:40:18 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xZX331iTkFpSmlN2AAbBCW5UKOgO8SnAPPI1e0o0EE1QWEoJkN2BwXiEH9iZY8csaaH5xBPvLcc+cqIIYDcC+LlBEBY9jYtfe+doPvMbRhuVjp17h9AYrzHdvk5wzvZPIAUe5mH07p8Hhsp1Zlc8UaYoC8v+ff66k8/sqweEFK1H4X8cJxCF+DeeuBT1jgUrFoRbGXr5CSHJsm/jv/ifpiE+7LBK932mIxj4D8DccwQDge1/IrA4eY892XkdPAx8Jb2gQtQR5A6BvocCD8YNCBXO5uSSAD5psklBAxmq5KYZPW4UhaAhz7NbM92Ws8IbZfTQdgG0eQ7rUOOGg/BXaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ye0UsMofodHWCVBpx4FbFNhSqtzHPKYk3PGWNC7ya2M=;
 b=Q+N/UbQmAB6IXm+uJQ85YDcC2P9BEhFsyTHaNQeaCA3lhSPXpdCFLzojA86lHUJisru3XwLXe+mPx6Gs3oUkiNUdpWqt1DUOU7zGxptR4wOnjxv0Zbe1THNCpmKperPaNiij4McDROA4zFxmGPd2r45UThVpvZ7a+rrsGpAgXQdCezi8BvoTGVrMpOAaAgGwweYjh1C81gM3WiyBIMRACM2wt8qiiBSxR3leOoj6ymwDg6HcC2FGWcbyi4eJ4JPZl52uwmcuKK9sRuXwPkn6HEjqLiuIDVPLlaBP+JFQ74wuQdUSP86ZaRifmfwDc8rTlwUnjODHE/H5RmjvPA77jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analygence.com; dmarc=pass action=none
 header.from=analygence.com; dkim=pass header.d=analygence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analygence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ye0UsMofodHWCVBpx4FbFNhSqtzHPKYk3PGWNC7ya2M=;
 b=VPWOsAEVne5fLgPVaRp/hYUhLHQk3FwkghNcCRhJl0hx5YvJN8i5hrX31RBLg1CAsBfEk8q6zlKgpqq/fmgsuOlscOF6ZbPktjIWYr0hwuDz6d1dD3J+pd+Xko2kpn3DuGRxKMvwsn8vUn14wyXPzUNreuc9tRtXNs+WRPziHzeMwn16/E5ZGbd70QaVqGBlo7WYmP1BC2a+4YjvzvUWWR0K/oYywkkFOgphBNtdj1kkgJ/2WP1yXtoTRNNF6hk0JK/tyHZtH8xDl5mJTDkfL8CQo7YA2v7auJPswjI8/SlIVLIbi1cX5KUaXmfQkEdMIKopFUCZYOKmCH5ff13tHQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=analygence.com;
Message-ID: <8f5ee6e1-d6cb-4279-883e-4b8959ea3c71@analygence.com>
Date: Tue, 30 Jul 2024 11:40:04 -0400
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <5e5fcc5b94cbcd6eb83fcfd3e73f0f08c0cba7e2.camel@debian.org>
Content-Language: en-US
From: Will Dormann <will.dormann@analygence.com>
Autocrypt: addr=will.dormann@analygence.com; keydata=
 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
 CUkSuQYhz5EOfhvAp7jL
In-Reply-To: <5e5fcc5b94cbcd6eb83fcfd3e73f0f08c0cba7e2.camel@debian.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN0PR02CA0021.namprd02.prod.outlook.com
 (2603:10b6:208:530::23) To CO1PR10MB4771.namprd10.prod.outlook.com
 (2603:10b6:303:95::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4771:EE_|MN2PR10MB4349:EE_
X-MS-Office365-Filtering-Correlation-Id: af7116a3-7f3e-4fb0-89e9-08dcb0ade331
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TDRKb2JrakxQTVhLeFZRb2Rnbzg3KytkaWs5SWhud3ZEQkFBL1hHRTNLdWdl?=
 =?utf-8?B?SXU0UUtkUDVkd1A5Z1NmUnZOL2o3U0NhQzY3NGZwUmE5SW1icUhrb3ZsT0Ux?=
 =?utf-8?B?Q25sVm81MVIyN3lqZHdvY1FvYm9TM2xCYUNwSzR4UXZCUStIRE5jV1JkVU1w?=
 =?utf-8?B?Sjg1WGpFY3B5RlFSQTZwTk1LeWhUSDhoMS81L3VUbXQyOFdOV3R6dzBhUnFY?=
 =?utf-8?B?aGpwYmxmV3Bib2lReU4xeTdFSUdjVi9iTzdVNHJ4TjVTd1lCU3h2LzR2SC9j?=
 =?utf-8?B?ZWY0cC9VcmNOU0M0VUQ2cTVDVVJvRmdFbEV5T25HQkcxdncrMUN4UHdXdU42?=
 =?utf-8?B?VnNPenJSVTdrbXl2S2g1cXMzaHI5WDhaM1dlbjFEM0xucXFoNmxVM09OSVRo?=
 =?utf-8?B?cm9DRC9tMnNaemVtcExYVEtOb291SVJ0SXJKelpKbUg2cGp1d0E4VUN2MzUz?=
 =?utf-8?B?Z1hGVE5qbWpUMkNhZVREVVN1T3JiN1JuR2x6N1MrZzlFU2hkNEUyalR0ZTBY?=
 =?utf-8?B?SzRMSWNScmlxSVFYaFRreXR2NjRmSW1IODRYcll4anQyUWV4YjRQL0xwOTNQ?=
 =?utf-8?B?eWlTcGs2dTJJcnRvMFBGNjJjWi9pVXA0cnREVGxWUnhQS1lrcHNsZXBybTk3?=
 =?utf-8?B?ck9NZDBmeWJxZ0VQRWxzS2JFVE1obXhsR29BVW55SmV4dDczVkk5RnhpeVFo?=
 =?utf-8?B?VXd4WDhJeTh3ejF0RzhSMDJxN3hBYlFPbGtPSmd3WXFmUkt3dDhOZUJORzZx?=
 =?utf-8?B?YTZpMVV0anZlL0xnY0hyQ0kvNjlpdmdCWTdWbzBnUk5hZjhOY1NCTm05c1Jm?=
 =?utf-8?B?WWErSWt2SFFzWW5MREs2SERhUU5nVWR2S0VRM3RDc3JzTUtXUnhMcmtuM1lW?=
 =?utf-8?B?eTZMMC9IbmJFSTlUY3ZPL2Y5SHZBQzNaaHV6WUcvbUdyM3Jwc3NVUjR0VCt5?=
 =?utf-8?B?WWt1TFE2MmdXc25BUTVzYmFCV1dHeW1KWEtJZktVZ3FGQUk5QUJ1bzhkekhm?=
 =?utf-8?B?OGR3ekZ0QlRhSEJnY2EraHpvOTNCTllOdXRYMjRRSlZERUZaaHZwUzhEWHdr?=
 =?utf-8?B?VEV4cDJxbHFPQzY3bEtvRVdySGFrQ1lXQW5kSG0wN24rZlJKZGJJUmRSaTdz?=
 =?utf-8?B?WUpjajBpZlRJT0tIMjZFRDMyTEhyVnhKWWpFaHJBVDc4V0hRSG5JNDY2cDRT?=
 =?utf-8?B?eE95WVVZVDBjd2h1b0kxU09nZGMrVEUwUzk4RWpqU2hjTHVUUm9SOW5KdmI5?=
 =?utf-8?B?MGhiaXFBWlVENUwxKytaeSs0OTZSZ2daTzE4KzMrb0YzUXNOeHJtL2FZV3Zo?=
 =?utf-8?B?akY3Z2lFRlE4VUVUNnk5N3hsamdnRXlvT1hIbHFYanFpS0EwQWdJRWVHNTln?=
 =?utf-8?B?MjN3Z2JkUjZLZ3dyaXkwMHd6NjV6L3hSWjJZK05HZTlqOHBHbzNmNlR6aHgy?=
 =?utf-8?B?WExCYlRIa0ZjRHNzMWZlclBLVkZtRld6V2ZiandvSWdZd0x3eUs5YUJhSmdl?=
 =?utf-8?B?Mlh4b3pUZHZZMnhTS3RxaFVGa0llRGZaazZZWXI4Y0ZCRmd2VG1Xb0xraXdK?=
 =?utf-8?B?Q3VPOCtSOHpyWkZjOCtjSWl3WHZmeG5zTE5EcW00L25ReUtJOGxNazlvWk4z?=
 =?utf-8?B?UUFPU0RNN3pQazQ4QjB2cDVOK2dIa1FVQ2cycUxSbzAyOWxaK3dCdTh6ODc0?=
 =?utf-8?B?Lzd5ZzVjd3pOZFpyVjR5WUFWVGZ3TXZHYkM4aHdTTTFUY05ZTG56aDBrY1FE?=
 =?utf-8?B?NVZqbURFcjFpVmc4NGhZYTdXbUFBaENqSDNWSldqTWJNOHZEdFB5WXBqYVNP?=
 =?utf-8?B?aGNIcklVTWVQN2ZzbWMzZz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4771.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?c3Mzd2xhb3NLYUFnR00vRmRnWmVnZkZTdjFIQ3FkbHMzdHFoaUpmb2tlKzhi?=
 =?utf-8?B?cDlIampSVVp0SnA5WlFyT3RyOTZoSTYxemhNSDZoc2hod2dzekpSOEF3dHFx?=
 =?utf-8?B?dDNpZ2N0MFlJd2R5aUdzNFJpTENoM0xKMklyWlFnWHllbjRjT2RvdzRuY1BW?=
 =?utf-8?B?M2lSVkptaDB4Wkc0UkxYTWhxSzVRVTdxMzRIMFYrcU9xWkx3QUFNR0JheVpk?=
 =?utf-8?B?U0VLbGYyd0lsYmFzOHE4bVdTalg1NVAzM1gxRFRZUzF5WXBBNGIrUVhYdnZh?=
 =?utf-8?B?NkVMTzJaY2dVUFFhQlFoZGZGNWFZQ2pPMUxXZkJvNmRhUmZhb0pjSXJuMjBk?=
 =?utf-8?B?MjNjSGNCclk0YmxPSTRiRzNiL3VNYjY4UVJoZmdYdEQxTm1EL2puREFKM25y?=
 =?utf-8?B?c2I0dlNHSjZzMm00U2VvMzlwcE9aWmc4ZzJORkRmVWhuUExvTEw4Y1plVEdx?=
 =?utf-8?B?V2REcTlaSlF3bUVvRnpQQUIzYUFJVG9LdWVlbm85bWdHYTZkdnU0Q2U2ZGZE?=
 =?utf-8?B?NkxPQ0Nzbkh6eDBwQkExanE1eXJBNFd4eHRadUswMFlJaEdUMnpCQVZHTU1W?=
 =?utf-8?B?cTZPV0VBbEFTeGxXdEt6M0FzZnpQOFBEbHVBS0JoUGNTQ3h3WlhlQzE3dVVX?=
 =?utf-8?B?OGc1djM1MTZBUkRKakgxMjMzeGdkWlZMWUF3OERZeHNlRVNxRU1UZ25uVnNV?=
 =?utf-8?B?eUhUMFlvSnpNVkJHQjVteDRWUHBLVVZCM1NlNXJiV2lPVHZwRVVNa011Qmh4?=
 =?utf-8?B?WVBJSFNkMnBVMFZucFNGNGg0M2tDOGMycFlZdWk1K2Y0bTdkaE5UUi92ODNQ?=
 =?utf-8?B?bG1Ha2VCUUE5U0lCTnZ3UGhsSXhuV1l5dm01WjdXQUJITk5zbkpzREIyS3lK?=
 =?utf-8?B?K2dvNVBGbXhKR3NpMGs3SWJHV2hUSnhvekNKY2VwNnVpdFBlQmtNcUdIY2Vu?=
 =?utf-8?B?M2dGZTNUdzl3VURnclVKSmNpN1JFWGNSOWRVeHpBVzNsaUh5M3hWdUtzdDhD?=
 =?utf-8?B?ZTE3c3R2MTBGZkdsTzU0OFh4ZkpvaGQzRTJQRXJPMmc5RlVUbUxaMGNqTnNt?=
 =?utf-8?B?T1h2QTVHT1FaZm9RMFZMb1dmQ1NrS3hWVjRkK1dPQ003Ty9mRm80RklRNWZa?=
 =?utf-8?B?eDBSWE1Gc3o4cjRYQjY1Y2VRNnp3ZjBqNDBOQ2lIRU01T2NyY2hzbUNHS0xT?=
 =?utf-8?B?QllYQjdyRlUxdEVBdi9FeVQvWVJsR1hNN3JHdC9DZHRXMWdGZzRNUGovczc3?=
 =?utf-8?B?MENOZlU3enExYVptQ0U3R08zcFh3R0l0MHhCMnpRQzhzQWl4cTVET2lNV2U0?=
 =?utf-8?B?T0wxeUdhd09TbFY3U0MzRHhDRksra1REM0JVZEhjc2xGNXZremtlY3ZUcVE0?=
 =?utf-8?B?WGhjVmZkVXlGNHl6S1d2MEd1bkxXcjFhQ1J5aFVXcGdDRkhWbldDNGFjL1Fh?=
 =?utf-8?B?czQwVW14WUg0cWZPSE9JaXlTUFNETUNCWGpCMXBaQ1o4UUl3ZTBqa1VOY1dl?=
 =?utf-8?B?ZExoSlE5eUc0eXJtOHdrcHVCRVV5WXcyY1p2Zk1zVEpvQ0NTem1KTDB5Tzls?=
 =?utf-8?B?a3ZYRktxNENGdGVFaGNHQlA1YXR4S0ppNFdBWDVta1h4RVFrbys3dDdHNkQ5?=
 =?utf-8?B?VUQrNnJhcFYwaDlvNFhPNi90RmRlbFgrZmN1OXNtTW12dnF6UFZKbGR2SFpW?=
 =?utf-8?B?bEs1cnl1YUVDb1J2V1dhRHBBcERmcDMyR2FoVW1oNis2ekpDNG16dGcyZ0V3?=
 =?utf-8?B?WFFqU3cxVG5qTDlrVHBteXJIREhyc1NVbmpaOW9iWE5HRzRGN0ZPSVVjbStk?=
 =?utf-8?B?SDlNRCtZc2Y2NzduOGhPVExmR0NJZXNBRllENzJjVk9ObndOT0NLcVFsZ1ZO?=
 =?utf-8?B?dS9xaTdTRHhrU2g5U3c3UzRXRjBibGRJTERpbkdSdy9tTU9WbXZCVU9FR1dt?=
 =?utf-8?B?aE9va2REZXM4U1ZoTlBINW16eFBzaVV3eVVLQ3MxaHo0TzZBRzFTRnFBTEVj?=
 =?utf-8?B?YnpCYnNWem1Bamw2NjMyMnJ2RE8yd0dFQ09tZmxoNnpaN3BkMVducnR4WmNn?=
 =?utf-8?B?ZWpKNzVESkYrbjBxK0sxQTdPYVR6ak5YVzBreldyRXZHd3hpK09ObEVkMkdL?=
 =?utf-8?B?WngwS3RyTE1mY0JsbXkrYlByTDdQTjU5b245dThCUHEyRkRRc0s1R0tKRGFt?=
 =?utf-8?B?c1E9PQ==?=
X-OriginatorOrg: analygence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af7116a3-7f3e-4fb0-89e9-08dcb0ade331
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4771.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 15:40:07.0451
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0b2befc2-4942-462a-9d5f-50631e1040b8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g1t+yn6DjU4pcP+vwOryjmoBh/oB/W4iBKIdXuUr4RDDr0qMDFkmVJ/DFcfvyA10GT66HcyZcGsB/eDFJYFk8o+KB6qJuZxct52l9N1ciTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4349
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

On 7/29/24 3:02 AM, Yves-Alexis Perez wrote:> 
d9592025000b3cf26c742f3505da7b83aedc26d5 was recently merged to Linus tree
> switching to !IS_ENABLED(CONFIG_64BIT) which should work on all architectures.
> So ASLRn't *should* be fixed on IA-32 kernels with 6.11.

I can confirm that in 6.11, ASLR is functioning as expected with 6.11

test@debian:~$ python3 entropy.py
Linux debian 6.11.0-rc1 #1 SMP PREEMPT_DYNAMIC Mon Jul 29 17:01:55 EDT 
2024 i686 GNU/Linux

Mapped item: /usr/bin/cat, Entropy: 8 bits, Mask: 000ff000
Mapped item: [heap], Entropy: 14 bits, Mask: 03fff000
Mapped item: /usr/lib/locale/locale-archive, Entropy: 9 bits, Mask: 001ff000
Mapped item: /usr/lib/i386-linux-gnu/libc.so.6, Entropy: 9 bits, Mask: 
001ff000
Mapped item: [vvar], Entropy: 9 bits, Mask: 001ff000
Mapped item: /usr/lib/i386-linux-gnu/ld-linux.so.2, Entropy: 9 bits, 
Mask: 001ff000
Mapped item: [stack], Entropy: 12 bits, Mask: 00fff000
test@debian:~$


-- 
Will Dormann | Senior Vulnerability Analyst

ANALYGENCE, Inc.
8115 Maple Lawn Blvd., Suite 110, Fulton, MD 20759
t 412.818.3452 | f 301.812.4252
e will.dormann@analygence.com | w analygence.com

