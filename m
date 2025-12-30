Received: (qmail 1649 invoked by uid 550); 30 Dec 2025 17:42:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1610 invoked from network); 30 Dec 2025 17:42:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=n7zjfwxfZf6kXfZeBgQad91tyRtQlAfCciTxVo1L9fQ=; b=
	jwdf0JmI8aF7YMlUOPWutaKA5ZdcMZDexI9UZIKH2AWVHl83udoiWh43JckWcBMY
	0/vTK1HLVEWaOzYayy38Yk+b2UghROjTH9aqN10fIwCgFgP0OwPmJ3MNlU5n/j7H
	M3XRq1l6h6tFpkW7bSv4LrbnSiCPLUvyxDejPW4/e7pwxJsXuGWh0RlZY30+uzfo
	aa6516zYv/IrcwpphrJaU6d/o+8k6CKK4drdBBs+Z+CrTlieIyY5Zfi+z77qOoOM
	9qStzUnlgAfzH+d25FK53IqC9JhTx4VuJOmP/C4flBdeCGhVLj+oH4KXO+WDc4cj
	Zirh8wv7BEo3hdU/PsO/fw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UN6NBh0kTNBCr4lMc5+yZqc2uN0qJyyZTExynGeRuHLyngGudWY1N7/1k7rwOtcDRI1FAsln9PI25wNIFX3x00l9jV0Ykj/D/8zhL8ElYgtXDONLRKIZFt6BNpxuDvir84pdEu1GgFzwXhAU/YeEGB8f8nTBSojYD+VrfZ1zUcm9MOedkQJ8hmv19ONmeBwRUbVEBnZ4pVyn+XkPMfwRr4PGI05/MHMKae8BsKon06guvvrbLMOf3sEOH+1UtctkZaL4mw2D7LnhqfJVSx4hB0uHchxjOtEZ93lx5KO32UsI5OWSaTRVoPFqthHy3c0v74hTQVfNv5rvErTZaY23sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n7zjfwxfZf6kXfZeBgQad91tyRtQlAfCciTxVo1L9fQ=;
 b=oTotK/hyfxF2XfV/wMaCnGqq8xV+WK8ef/n3hMxLAf+oCqqQ3oSoyYNq+lPWnV8eYhAIBzCU/Kb5H/L9Ts4ndmgLJSI7mAH06BHnEskeCDiHzznErBJMBfKtMeb0XMvRn+gCXXORnpujZ9/GSjN9lHbj68Q2hoS2f65jIDRYH94w/zMD047pT2xwtnhcUIgeRq+zny5HQMxRrqAVpW87GTJS2pQ6+8v3fYOv983Sk99IhF7BMk1/hPes5GvQCD1HXeLtw+onrd+VGe2hCGW9q4U1w8yqiHLkqbMxtoO1eR94aBZtnqoSi19Fw2ZJ6aSmqGrcrvlqLzix/D0mcLy3wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7zjfwxfZf6kXfZeBgQad91tyRtQlAfCciTxVo1L9fQ=;
 b=NJ3FO4CUCwzGpk2iYp4FJxTWIaSBIDM993frU0JIKixflr6Ke01XLPLV/W6jJqIuUS2wOzRbu5B26s13kVSZxVz7Sazd028f0bhJaGxGPlsnziy7wd6wKf7W73kVuqIaRzquHUMtJp+jglsRDuqHegvS4+MfhNEERPy6HCCDZFo=
Message-ID: <7e2a3dd1-c5ef-467d-be1a-a39c5135d5b6@oracle.com>
Date: Tue, 30 Dec 2025 09:42:14 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
        =?UTF-8?Q?Stephan_Verb=C3=BCcheln?= <stephan@verbuecheln.ch>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <87y0mnj593.fsf@gentoo.org> <e689f7a6-3167-41ea-9ec0-88b87df4d68a@gmail.com>
 <a5b000db3ddb1c25e18435218f88d6516bbfa7fa.camel@verbuecheln.ch>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <a5b000db3ddb1c25e18435218f88d6516bbfa7fa.camel@verbuecheln.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN2PR10CA0033.namprd10.prod.outlook.com
 (2603:10b6:208:120::46) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|DS0PR10MB7090:EE_
X-MS-Office365-Filtering-Correlation-Id: 42d9cd34-50f4-49ab-49ac-08de47cac768
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OXJydmhDTkpGdUlLbDJxOU5UVFV5a1NKRWxYNkpTVU8rbUljRGxsTmRkZm1i?=
 =?utf-8?B?ekhRS3QvOHFWaU9LOXBETkxaaGVVdm9XdFFhMlN5N3VvQy84QWJhUTVteUtI?=
 =?utf-8?B?ZmppV2VySnRYRWdPU1BINHhick15K0IrakkvZmZNOVhuTnZiMm5kOGlzTkNh?=
 =?utf-8?B?cVZ3NWNZM2RzNmRHQ1hCQU1LeEZ6WDkrWDQvSkxuSnFjdit2WWYrRWMwQ25U?=
 =?utf-8?B?ZWNFMWxySk9qMkRFakM1dHpPNGNXQU5PSnQ2dG1RRTFIRHpsZDZaTkZ6U1Zu?=
 =?utf-8?B?WmpuOEF5d1NiNTd3SFJWM3VwMFNOYnpqckhweXdidG1NZGF5dDFUdEFSSVdr?=
 =?utf-8?B?ZUpLTmpnZlZOeTZpTXR5cXdzeXlVN1lwcW5IVGp1RmFQUUU1aGQ0Uy9qWW5m?=
 =?utf-8?B?cEJITFNnRjBSenBTeHE4L3JvOHZjWk44YWJXY3ltbWNOaEVjZWM5cmpNQnh2?=
 =?utf-8?B?RTl5RlF3TlVNZTFyS09jVWVMNkUraG9NSmN4V1k2QldsWGlnV01Cc3JQUmQ2?=
 =?utf-8?B?TnVVampvTGl6aFA4KzB2MElJYUkyN2lOd2JkK0paR1l0eERHTjBsR2Q4ZThW?=
 =?utf-8?B?RUIxUEx1YUNDWDJ5NnA4OEJpaC9BZ09kWXBzcUFzT3JlNVlqRGxBQWhZaExI?=
 =?utf-8?B?MnNCQmI4bk1wOFhLTG9keWFQNHREWXdCTWJpWm13YWpmR3YrYkFyRnhFSFhW?=
 =?utf-8?B?L1ZqY2ZrK25saTlsYVA0K1I0ZGY0a3FZNXFoQ3ZiNmZsV2lBKzJMakkxWVBK?=
 =?utf-8?B?YW1oYWo5T0RDUFVCNUtKSTBqaDdyeHZycWdsVjFiSWJyUzdwcHBnd3craG43?=
 =?utf-8?B?dFliQ3JkZW1TMTUvOFZyM0xIT2w2aERhZm5ZSUJIMkZBbG4xZGpzUTUvcW4w?=
 =?utf-8?B?TlMzelNLWmJLdEV0Tk50KzlaZ0JhY3NNK1ZuVURWRU5uUHFLdVNEa0ZhZzIz?=
 =?utf-8?B?eDVSa1lpUG4vZmg5dDdGVkpmOFZxSWJyK0xwUlZsdjJQL0ZFWlZ2b3loZngv?=
 =?utf-8?B?Q0RyZEl0cFRsc1lMWncrTm0raHYzejc1bEllZ0x2K3YrZjdVRVYyK00yK3pW?=
 =?utf-8?B?OXpjcFp0TWpvd3FXaDlsOGlzNmJvOHZtVHRaUzNUWUd5b0JEKy9vTHpzWFBz?=
 =?utf-8?B?cDBRc1Rvay9zNmJYa1hzMnZ5ZTVGU0h6MG90MitBTkpsVy9STWV2SzRRZUFm?=
 =?utf-8?B?dDN1YXAwWXdvNEtmMDlaNWZTUG8zRTNsd0s1dW1wQytNNjg2SmtxUm8yN0pw?=
 =?utf-8?B?UkxJbW9hRExrVHpWd3dOUkJ1eFVlTGM0VVZGUmxyMWZ4SkF3ajJueVJqMzR5?=
 =?utf-8?B?aDVJL1ZQenA4SkxYS2ZiNURiQXJPK0k1N2p2UjB2ZWJTS05kMitEbXdoVGZI?=
 =?utf-8?B?R0NlbW1vMzE3bVRtZVVmMzBrNjc2aGE2WU0vd2x4NzRDOWgzQVFTK0VDNkxR?=
 =?utf-8?B?aXErR01EenZQV1FiU0NCL2NXcEk3eFhaZ3NUclM4cGk5T25pejNrSmpEMEU4?=
 =?utf-8?B?eEZkOVVaUmhLcFRzUjF3cDdzUnJrNmxMZVBWRUZmL080dmNuUENPdDBYZmZ3?=
 =?utf-8?B?YllSVi8wV0ZiSldFYjhCODU4d3J4aTdQM3FUQlJSeFhISVdNSjM4MFc0b2N6?=
 =?utf-8?B?ZWxuUUl4V1BPdjhFL3poQTRwZGlMYVVPVjI0bWwyZUwrRkxhNklGMkxOQk95?=
 =?utf-8?B?VG0rOU1jbzBVMTlGdDgzSlV1angwSzVrL2ZMSU03enF0cFd1TS9KcGNENDFI?=
 =?utf-8?B?b1R2R2NMUS9GUVdQUytYZEpwME4wSUdYamNnd0hTaDVyR1RCR3Jxc2EwdVRU?=
 =?utf-8?B?WG5UdlF3NDk5NEVNdFN6T3FZeGZyQ1NhY055MWFLVndTT2xES2p6VHVqTFh0?=
 =?utf-8?B?Uk91MVVxbHdodmpMOFFoQXJhQ3UxK3lYYm1sYkU2NzhlZFE9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ck5idGxjcjlKazhsazBaNjJ0QlorZ0FKY1pwcDgzTW1NVDdmQ2crQVp2ZHdN?=
 =?utf-8?B?QWI4SzhTUHpGV2d5TXFncC9IMmRkS0JnOFBKR254V1F2SUlWMXh6SDEzclhp?=
 =?utf-8?B?UXdFTWwvNVBmSUl4NVh4NU9FbXFuRmFQRFNmUFRGbENlNW1aQjNzUi9qRWZp?=
 =?utf-8?B?dlpHMVJOSXc3b0Y3V0hGOFFMQnA3ZnVobllOTUZZbnM2SzdFL09aRStGb3dV?=
 =?utf-8?B?K0VFNGhVWjY4TVRPMUFxY2Y3eFZ6R0NQNng3cGJmSkluTkJlR2JtOElIN0NK?=
 =?utf-8?B?bHZhUDJ0SmZTeUVkSHFiYVU2RXVmWUtGcWVNM3VlTkJ1V3czcXNXZGRQbVU3?=
 =?utf-8?B?OTJ6TjkzaFp4VnJxQXRzem0zUWhxUnltWGFjR3Z3amNZeVBGaXVjRitudnhu?=
 =?utf-8?B?YmFTRFNBcmhESEVDZU8yclZqQXlHK3hMdHBSSUJiR1Q2Z1R3ekNXSGpuejk1?=
 =?utf-8?B?dlZwZnZXSjJJUHYrNExhRU5Hd3lxR0R4aVNXV01Wdkk0SVgxYmptV0pRUTNl?=
 =?utf-8?B?WHNDVFM2bmpqdWhiMDlPd0J1Z0c4N3FBMG9RWlZybXB6U041T3J3RFpIbXBv?=
 =?utf-8?B?OTZleGdYaVoyZWV2WFNrQ0NlUGlIZVQ1RHFZaU5RQk9WaXRKbWg4RWRZclpn?=
 =?utf-8?B?Z2l0TTkycDgwVzNWRktZNjE5WDRJdHFOaXExUndRdVdXeGtURlQ3YmE3dzY5?=
 =?utf-8?B?d3NWNmpIM0Q1SWFyZlVHWFZ6OGZZcSsyOXFBV1FxK1J2K1lOaWxxVXdCR3U4?=
 =?utf-8?B?LzVMcHcwWXZRRndxeGxXdnI2ZTJ3NzN1bEhJSEk1U2YweFJyVTVyMTJFUk9S?=
 =?utf-8?B?RUVWWWxVdzNVcWE5ZVpCOVg1cDF2dW1lc2RpR1pJNGxydU1vdXdwZ1FUQzV3?=
 =?utf-8?B?cFE4R0NnU0NpRWNJdXpySUhKRUZDWkFXSmpLamZGeVpmem9wM1luVWFobHJ2?=
 =?utf-8?B?T2FhbTVCaUNid29GbytRRis4NjVTWFBiQmtQVUNMY09JVnJCM2xyZ0ozSWY5?=
 =?utf-8?B?bktyQlNLb1gzL2ZLeitZd0xpa0liOEx6TkY4SlVSK3F4MFdOUGNveWdETVlS?=
 =?utf-8?B?NjJJWjJ2M2N2eTg4cHY0Wi8yK2YwRk9SanMwR3R6cE12QVVFaFlwd0xwaUMy?=
 =?utf-8?B?a2tISVFkOWJTTS8rUU04OVNCWWVjVnBlZEtEOU5HeXdta2hmZzVHdGpGTnEx?=
 =?utf-8?B?RTFvcDBNanJEQmdqMXhEWnNKUUpJOUk2WHBnQjRuQ05SWURwR1lCdzFocExj?=
 =?utf-8?B?MzJ3ZExnakJ6aFg2aHBIY042TnA0Sit0bktpTXdwM1VwZWRYSnRVWTFiVnI0?=
 =?utf-8?B?VEVpTEIyNDFxbTk1aEJURWltMXkyVmF2WjJlM0Z1QzNweFBzdDlObDIydWs3?=
 =?utf-8?B?RUQ3M3M0dDBDUThRMlF6bVB0SHVENWFYOUU2dE44c3lkdit5ZXpiT09LSUZQ?=
 =?utf-8?B?NjhjVzRiMm0xN2lYcGMwbHlTVlhZbTJReHVpLzYvbitqOVJ3WHBiUUJpclBh?=
 =?utf-8?B?NWhSZTdoZXVnc3MyQklRR1V6ZjcvcnFZVWlETDhIajU2bmtVY0hzeXc5aTFi?=
 =?utf-8?B?SVJzdFhBWVlod0hpTTFZNEl5ak5CTkhsL2JFRUtMbENxQWNLUlVrdW8vSGRY?=
 =?utf-8?B?Mlg0aHg1UTFlTjArZTBvR3Y3SHptQWJ3b1RId2V0OFUwVTRMTG9ES0tqb0or?=
 =?utf-8?B?dGVHQkRqVlYzWnlSWlZSN3k2eExlMHhrRXJwTkJVdHkwUlBWY0tmc2RibUtk?=
 =?utf-8?B?MkpzdHpPK3dWLzBxOUhxK1pjK0RiVDdHS3JKcDNlNHNvSmlheThNcUFNMzhZ?=
 =?utf-8?B?UWtidUFQLyswZXFCdDlNem9WN3FFWDRjMnRoWWNEbm1MYmdqNkVSREFsY3NZ?=
 =?utf-8?B?bDd6VFFzajI5cENPR0tmVjEyOUNNMEt6aVdNSmlWNWpNWjNlcFZlWjRCZXdB?=
 =?utf-8?B?NW1Sd1FHc29aSW9zTDYrK3AzQTZSbHQxYXBjU3liR0JmdUxwdWtEREZQbkh4?=
 =?utf-8?B?V2NuUlJWWFZJbFhJa3BndkZROTJpMGZaM3JFZ2FGN0Fvbk01djlHSGZGaGNQ?=
 =?utf-8?B?ZDhEMVBYdmZMRDIrL09sVHVEUWh5SlhaTGViRWMzdHFlYTRaSFp5MUxud2sw?=
 =?utf-8?B?RkRiZ05RWDVhaVpPOWhINUJ1dElUdTBOZy9PemlFQ21HcVFjT1U1WUpFY0w2?=
 =?utf-8?B?VXBmTDBLQzVGYmdJSEtINHErSHYyUzIzejRyQXUzTVlTZTFzS0JieStLVi9X?=
 =?utf-8?B?bUphaUsvWDhQbk53ZCtlbnBLQ1ZlSXpKQklMMHEvbjhQSnl5ZU9qclIvMWRX?=
 =?utf-8?B?ZFhBTk1IM3NqRmdmeUJqSTZVdjJUYWU4YklobFlUbUF5SCt2VDdzeG9McVZo?=
 =?utf-8?Q?agYP+Wcjf6FA1+Uk=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	UdrmvMI3L8xla/2HAkmskvBvw3a7aHsaQ82E+vw17P6eLllSpN6mjLUA5UOcKHPccpRGBDIV6iuoChnUVH00FsrcuOnFq184I+e9ll67/mGkWy4RrWln/R6glxr5DcN0m7nPauJ7g0O7Fvb/x7uwfVXJm2mho1UeZuxh7qiRpVobY9yYTOZoS5tC5g+lWzEOh4t9McfgTZLI7n2AvWbSmesI+2KFgifyto5ePiYTXccIqCk48u5FI2D5Jc1YwPtorXE5t6+VAnsKqHQMn6m3j+w2T80Vf8StQDuIKHJlbCWz8rEUmkNQnZSH6FvkNUFCUtOEc6Sn0/mr7uyJZFTgk2ki8nGt2mK4eCiithbmKtWlNK7PlmkwZZ8CLY5qAkRLpFsYWEFgqY1KIZ+2mzkEf9mdd7QGTmke3Dc8XQsOiKisna5emnJjwNYY96ntZFT3BTo9YgnN1nSR7LuiNXAlpD57WG5EL5JT3MsCDTkyb8pgi3ZzGujCZO2zXMXVnx32WYZPoIdQAv+PNTihIH/7ABW7ueLQBvdAK5ozSgGRh1qPK9NIu3qqfpHE7XN+9yESiyKPnfxnOb+NUbhq2sCnqgIukghhiR6fwE7s8wCQmt4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42d9cd34-50f4-49ab-49ac-08de47cac768
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2025 17:42:18.8445
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ClVknMlRIpUpMHV1Ffgz6054WAuF5usUYO0Y+4nZnUW4eu+jInGAXeRRH3OATioIP3bTAIvSn5YyRjknQnx5IcaB4wWTNV78PYEcO4wUlV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7090
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999 mlxscore=0
 spamscore=0 malwarescore=0 bulkscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2512300159
X-Authority-Analysis: v=2.4 cv=LL1rgZW9 c=1 sm=1 tr=0 ts=69540f02 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=GwUem0DFAAAA:8 a=yPCof4ZbAAAA:8 a=_y-ZsIYinTsL-p6oDbAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=r0dl5i_q2XGqDZkti5dn:22
X-Proofpoint-ORIG-GUID: HndKityKmJd_k4qhkTIUOsg0hNUWFpr3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE1OSBTYWx0ZWRfXziRd/xmk5TvI
 6+d2eFmo+GS2ZRWS2qvX5+m/D5q94cVrwJzEsbr43masWYzZtgWQnL3TdP6fWyruaEMsGXTwr2b
 xTkKQAhjaA5cF1WaEgf3htx3OSHdlVQLFXVAATmMQ+qauWP+gDP2i3ZybzuGFyzx9CYIBjgBREI
 QXBbTYIpLG5Ig4EoKTHsGz5NOOzwEifcyF1S/DE18L0rbapx4RCxBGz0yrk9GJYLLkVEKTt7cmi
 hK+FCtM2YCsfBtDh4L5sxS2pL0iVCEybd5qHisSoFrHfWMFZkwHptLslIoccuTeIyWakdyOEwpL
 lNG6JPybgT8GM+8NPwihOL74HQGzsXK9nz9oplhq1NHdWu/2r1q6dBfcmGtgk2UXkD1M7ahtK5W
 F3QTXULtBITnPtRiPstTYYI070hqdDKT2nH/3rbRJ60nsLZ8ns2hbMoKH/1oWlTq5oXE+NA9Ow6
 ySn8P1MeCPFwXf4EQYw==
X-Proofpoint-GUID: HndKityKmJd_k4qhkTIUOsg0hNUWFpr3
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

On 12/29/25 01:15, Stephan Verbücheln wrote:
> GnuPG follows a traditional versioning scheme where even numbers (e.g.
> 2.2 and 2.4) are release branches and odd numbers (2.3 and 2.5) are
> developer branches. So what we have to wait for is 2.4.9 fixing the
> vulnerabilities.

Is that still true?

https://gnupg.org/ states:

   Note that the 2.5 series is now declared the stable version of GnuPG.
   Be aware that the oldstable 2.4 series will reach end-of-life in just
   6 months.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
