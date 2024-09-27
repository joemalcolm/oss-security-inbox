Received: (qmail 14008 invoked by uid 550); 27 Sep 2024 15:23:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14122 invoked from network); 27 Sep 2024 13:34:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ubGkWumtAC5cryIsisWVN7f+3pqjg5dKboZG2oTw8nfS5d5DAdiNfXIbkoxQvW4z05VMNAe15cWJm436LxspXaocPHcm2KyuYS7KxruYVQSY4zyVjqXkyEgZUmQGOExraqXKZNaw1Vv4srDXdpFp/srF984QRMPJAgZ9ty2t6aHZXO/JqQG/kmflKCH6jVOl3I8hdXKYnp/o4TtN8neU3duZTFhxKvlzAxx4Joa+wT7UvGxROfL0DwLjnjV1XQHLOf7vwgWBZinrIc1RSQaO9ZceT6o7tACrtAstHXrnnlZCPsukFB1T42fDSvz0vFWJdlwhXftrXJk6a3/TLVRFPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGkNBXqYZ6WwBpW4jtfga7PAHORLajA5K5aQ2e+0L+4=;
 b=faUb1U3S2PWuflUlI0sV4X3v/TzLstIL+06VOaMsv82qDfMqyznKc2LljUcbrCJpCchDgrJBHlG/ToeOSGkuea52ryZ3wGAXX1PHx3YhFcun4br/IoBFXxGsz3KTmvhPYDPQT6oEWTfWFVDM0dPMrHhu8jaU2H9v/So2gSKIOxlgFhqV/YHZST5WNvsqwo1VRKJ7FqZgqcA/j4bCeCxwgqhtDatXULnkICmCjwgu50iKsgZX8qhDpPWlvc6P1B4L6M77ld7fCO3miiP/5zUPR8FfUCiYzCRpRqKKHB7hXJhUrGjuy8nxEvkaJVb+t/P8CBGzCkztX5U00PWVQYQVYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analygence.com; dmarc=pass action=none
 header.from=analygence.com; dkim=pass header.d=analygence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analygence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LGkNBXqYZ6WwBpW4jtfga7PAHORLajA5K5aQ2e+0L+4=;
 b=B5mJtEE280FoyIRe5Ju1+4dVKJIz16s7Dns590s9DBAGvTl8sRsaGsqLKrzvl758HiUrL3j23X0wAluxVtwxdfGqTEbIGXBMOUwKdefIZy8yIbvITH9px7Yf7SCw8eXEJd7fHK10PVV6TX0nezoYoNSFR7LPS+jdjd5SVvZ5cw1cDpFUZaptyXZP1O0g8PDfhM8umeLTJCQih5Pm+72OiTw/xqmQ008J4vsFC1e+cQNr5HyF0aM3sLt9RE9ixaokOgN+DeeMaNEjlCSnM7EWkCwZeXVXKQfDlIfsF+p4Vc6QPdfVl6bDX2/quYOxJUAjbrS8MLN+ilGl2aydHG5sFA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=analygence.com;
Message-ID: <abee7270-da4f-4b9d-8916-22d1e51817f7@analygence.com>
Date: Fri, 27 Sep 2024 09:34:42 -0400
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20240926221125.GA10895@openwall.com>
Content-Language: en-US
From: Will Dormann <will.dormann@analygence.com>
Autocrypt: addr=will.dormann@analygence.com; keydata=
 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
 CUkSuQYhz5EOfhvAp7jL
In-Reply-To: <20240926221125.GA10895@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1P223CA0024.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::29) To CO1PR10MB4771.namprd10.prod.outlook.com
 (2603:10b6:303:95::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4771:EE_|DM4PR10MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 12e8543c-8b9e-483c-7e07-08dcdef9259d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NUM0WlNlNE1uR1Vlb2FKWmlhRWV3WjU2SlgxeFAySWhwcnRsb0llS1pSSVpv?=
 =?utf-8?B?eGMrdCtudzcwcERrbGhGckxvTlJBZGlPSGRPQzE1V0JKbGR4MnAwQVErWjVu?=
 =?utf-8?B?T2hKdHdFYnBHOEQ2c1MwRnRHSjJKWHpqYmxPM0xoVkVJS0RaTERvUVlQMGlx?=
 =?utf-8?B?UXpYaVJLMmdBandiVWFGeFY2ZUpkeDJ1eVc5R3VOeUFqRFdxY1RRVGdmelZR?=
 =?utf-8?B?SEk3a3EzK1dqUFU4VEFhSnNxWmM5WE9hOEJXcWNocjhQYlZMMXVrVHJyaVAw?=
 =?utf-8?B?bW5UdFZudm1LcVFKemlqK2R3M2pIQ3BrMHhqN0lCSVZOR0h5dWk2K1lnT3pv?=
 =?utf-8?B?RFduWWJsc0FiL0dZbklGbjB4aVN1cEFjMkt1UWJ0K3pyWGQveEJMSkI0T1Nm?=
 =?utf-8?B?czZsT0ovdU1sbFFiZU5taFZlVTFhaEhXek1PMGVyb3Y2Vkx5S2VKUis1bWp2?=
 =?utf-8?B?bmg2OStZVzZsaVJkMEcyM21zdUZmckNjMzNqc0o4Q0ZoaHBQeVlmYXg1bDFO?=
 =?utf-8?B?cDhyUmlBckRxbGh6M3Q1dVdOYmc5Q2k5QnhpdVVCYVJldGkzN0dCdWRlTGpy?=
 =?utf-8?B?Y05rZEdQN0VvcHZNWTcrTk5md3dsSzVPQ29velAwWFJGYW9yamVEUW10MVlS?=
 =?utf-8?B?YUVFYWxWbkhSODJRd04xYld0eXVxU0lkWFdFdXZ6dTZFVHlsTXdDZVdPOE9D?=
 =?utf-8?B?VjI3NUJBNVcwVnBZU0luUm9qM29ZM1dkK24yMnFxaG1Va1h5akQyN0ZhQVpi?=
 =?utf-8?B?cHowMUtURlNiM2UzTnM5cHhCekNzenNuVVo1VUhTbWJxZWk0THZld3NvV2tR?=
 =?utf-8?B?K20zakIvUDdHV2hpeW13N05rQm1TMmh4dEhZS2p0U1BpUnRpbXlIYVltZGtQ?=
 =?utf-8?B?b3pPK1YwOFVWdi9nUHU1RVBNT0oralUxZzlQZUhQVWFqV2FSUENwb0ZNd2Qx?=
 =?utf-8?B?TThjcVUrWUh5NGpxR1I0U29IVHN1Z0F6OCs3NGgySXFYaVdIY2ZGSW8zTlRN?=
 =?utf-8?B?UW1ZWHQwV3p1QlB3czRqcXFUU3pMcys3S1lxUEVwVHN5cWhYdUFQblh5MDd4?=
 =?utf-8?B?R2VENzlSb1p6RHM0NFgzbHpXWjVkTWNpRkdibmlDdklDdi91VlJOZFJFdlUr?=
 =?utf-8?B?ZTlOMFdCUWxROXlXT0lTZVU4Z2g0UVl1dkpHcldKNDZZaU1WUWhxTzhqempI?=
 =?utf-8?B?K29kSkhiODN6TEZIM2tSME1vbk1TQUlVVXNlVzY1dldFOVRWazM4ZXAvemww?=
 =?utf-8?B?UTl3Yy9nK3JKc1R6T1QyS2lxVzRsWnIwdytyajQwZmVFNk16Z0FvNnNlVkVL?=
 =?utf-8?B?MTRLRnBLZEl5WkFuUVZXK0JFWEZzL1RYeDJraXpiTDN4Qmg4dlJjT1g3dUFG?=
 =?utf-8?B?bStINm81WGtsZ0NQbzY3VDdKb1lKbTR4OTBaZ3FLYmErZ1JraGtIZVgwcmx3?=
 =?utf-8?B?V0ZicGhtd1N2Qm1lVXgxTm1FTTdRTU0zbnZPSzdGemdzdFVNZUJBSENjbjd2?=
 =?utf-8?B?S3h1UlZGa290Z2QwNkhLT0haVUJHSHVNL0tQM1VENEhpRjg2VDNRUDExYUxh?=
 =?utf-8?B?ZEZvUHBrZ1p3M1FjYi94L2RWNjlYRzd0cHp3RkpMS2FhM0dFelY3d2ZrUm1P?=
 =?utf-8?B?UkJOeGhTNjJuTHZHWkxxWEJodTNGcThoL2I0aUxTWTgrb2JqNGQrVnJOYitZ?=
 =?utf-8?B?R2k4bnhBK2lVcDRMRDJiQ2tjK1ZIK21qMUJhNXVuQUJvV3N0WlZ4ckVXZVhP?=
 =?utf-8?Q?5jwhzg3D/8LtDpmimE=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4771.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q29UcGlScForRjZ1RG5lYWlnN0NpaG9ET0J3U1JvYlpPaHUwWlJDbXZBd3NM?=
 =?utf-8?B?VW5BUjJBdFFFQnZnZjAxS0FNTkExVlYzaFJ5TlA0SnF0QlNBOWJlZjFySEs1?=
 =?utf-8?B?eVdjTnJNWWxFdHN1UVlUL2pNdDFxa3BZYXpTckZXU2pJME5SMjlldndmaUd6?=
 =?utf-8?B?L2I5NXNxUmtGeDlzaXVydzhvbUoyeHEwNmxyUmQyUnVpOFpOTzhFUG5ybU1R?=
 =?utf-8?B?YkZ0elZLcEFuYlh6S2ZpdnB0TWk1TkZoQVFhVnZUM1p3S09FSzZCWXlxb0tH?=
 =?utf-8?B?aExhWnZCZ0V3cVdhVUZUWE5MYzdxeThoV0xJelNZVkF2azNqcnppczhKRGpp?=
 =?utf-8?B?RHJTbk4ybEk4Ykc0Q0x2anRlZzBhRjZkNFoxTjBVRUZqTVB0VzVsWmpOT3pm?=
 =?utf-8?B?WGhZUWFMdUxDV1RwQUxQNGRZSUVNbFBkNkpMRGNnMVlZQzFoT1RLbk1Ia3Qr?=
 =?utf-8?B?Mk55eGlRNUxKNXkvbzRSMmpCRnRwL1dXbnU4ZU5mOG5DMmV2b29DdGxXWFFI?=
 =?utf-8?B?V2hYNSs5M0RvUGM0allGTWx5STIzK09YREJpSSsreS8vRll5NlhYZXJSWHM1?=
 =?utf-8?B?b25rYmZDVm1reU9veE5YWEQwUmtGbHVQM1hvN2xHamlRL0FpUzkxWGZDRkk2?=
 =?utf-8?B?K2k0bXJ0WmlkU2Jla2p6aUNEcU9WaTZnVXVYdlJoOWZGYXVvQmJRNFZHeWt4?=
 =?utf-8?B?Y3JYeDJ2YWN3bXFhUU82YkJCS3pTMExyNVZJZEN4bHZjYWRoZHNrbG9XT25u?=
 =?utf-8?B?c1R0UlBjNlMwOS9HeXMyOTN5bEVNakU1MjZlQVk4YnNOS0w5OWE0M1Y5dXdW?=
 =?utf-8?B?YzVXWTEzQWlaeENvYlk4RVZlVkh2WDVNakVOQllvNFFOa2ZvWXJMcHFrZEh0?=
 =?utf-8?B?Q0VORXQyNEVqaU1KUk40ZnZZd3IzV05FOTd0TitDeWR3UDBCMTl5QUhuV0xY?=
 =?utf-8?B?WWFtbS9KWHRxaWx4QS9tVGN0Vk1kRVVsdENHRTVNK2NBZkZHWThCN2lXa2FM?=
 =?utf-8?B?VHl6K09ockp3a0ZOS2psamhxTDVNQlNBbUttejF5YTBEOWpobUxUMThJL1dT?=
 =?utf-8?B?UytFdzVMaWw0V3JZTS92SE00LzU0T3c0d1lzTTRKeEFkUC9YK1gwRmY4Tkx0?=
 =?utf-8?B?NWRtQnJqaG1qOThUVHlCUGxqUlA4RUtvK3ZGa2NjdFFKWDhoeURpZEVHNFdj?=
 =?utf-8?B?ZkthOWdFTkNEaXg1RUM0WUNiRm1IR013RVNaUTRkWThRQkJEQ0JUOGprVkRv?=
 =?utf-8?B?akFTTE1sZVd3eG5hWkgvNEFvZCsyRUFLVFFwYmM5R202emZteEhuRGN4aUpP?=
 =?utf-8?B?a3YyamVJWDBrWGdtQi9XWGR6azgzNnRvZ0ZqUVQrQ3BqMnZZUEpxdVJVMHh5?=
 =?utf-8?B?dVpveHoyVTNYQjZ5KzYyQThZYi9KbmYzY2VuYy9TNU5NNnlISUZlVlFMSjJP?=
 =?utf-8?B?NVg5RVBFYkNnM3BUdkMvRmVPSzlCQk5nT2kvYTU0c1lFNklLYWwrU2I2TlV6?=
 =?utf-8?B?bHZDK3BoMUttTnd5UkVXeVNCRkZoNmZHa2s2OG9TdDh0aWZWVStLZlh4TUNK?=
 =?utf-8?B?SFUyM2tpdE9WdFNaaHFVTVdWRWxxQkVKN1JNVStmcENHekVlNndBVmIwZVVz?=
 =?utf-8?B?bUVzSzk3L1drOSs5MEZFL0tlTGdvdHFFeHM1ekJUQVVsYW1mWnNuY0FIV1dX?=
 =?utf-8?B?MTBlQnZBeUZpdVkreUpnak81Sm03Y0pGcHNwb1hCeE5QVVdNeHlndTNXRUdZ?=
 =?utf-8?B?ODFoQXdzTmxycm9ORTc3NHFCWWc4dUk5WlJvWDhOTW9BZldFbytZUGp0SkJT?=
 =?utf-8?B?bWlISnlUWTdybGVZMTQ3SVhCclJjNVlaQ3RMUkZ6bFo1bHIrU2drUzFNMHdO?=
 =?utf-8?B?UGNsTkxNb3B6VCtIMUNaY0FOL24rMDRjTDByTDhRZWRGbDgwNXBXWFZzTWoz?=
 =?utf-8?B?RmQrQk9KUlREQzNEeEthZ3JwNTIxYU5yZmVQdU12Y0VvRU5pZVVNbWhLcWhK?=
 =?utf-8?B?K2hQdFRRLzZ1bUEySnh3QWhlWmVhTHNRK2JJVUcwcTN1cUxCYXJ6QWdueTYx?=
 =?utf-8?B?bjZZcTJsK2ttZFE3QnpqOGMvL3FDdncxTUw4MmVvMHI0UFlFZFVIR3VGZGU0?=
 =?utf-8?B?ZW5TVTI3OXphenNhYzh4VU5YZlVES2lTMVBHZ0V6T1M5bXlsMkgxOUs3dWRx?=
 =?utf-8?B?QkE9PQ==?=
X-OriginatorOrg: analygence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e8543c-8b9e-483c-7e07-08dcdef9259d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4771.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 13:34:44.0735
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0b2befc2-4942-462a-9d5f-50631e1040b8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8sZpPOQPj7zq3lCf8IxXQXQf0k4KvEQg92Zrpf/C4xZnnCG/pYxo2KRsIUCdelN5hZ2bRQp00zuLvse3CmUdrIgGTwxOkSHBi9w0FU8dMgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6160
Subject: Re: [oss-security] CUPS printing system vulnerabilities

On 9/26/24 6:11 PM, Solar Designer wrote:
>> * CVE-2024-47176 | cups-browsed <= 2.0.1 binds on UDP INADDR_ANY:631
>>    trusting any packet from any source to trigger a
>>    Get-Printer-Attributes IPP request to an attacker controlled URL.

This seems like a plausible and precise description for a vulnerability.

Yet the actual CVE entry is "cups-browsed bugs and other bugs can 
combine, leading to info leak and remote code execution"
<https://github.com/CVEProject/cvelistV5/blob/07723f33d3792d747b650a873346400ca5dc2034/cves/2024/47xxx/CVE-2024-47176.json#L15>
and several unrelated CWEs are listed.

Isn't using a single CVE to capture what can happen when multiple 
vulnerabilities are chained together... frowned upon?
<https://cve.mitre.org/cve/list_rules_and_guidance/counting_rules.html>


-- 
Will Dormann | Senior Vulnerability Analyst

ANALYGENCE, Inc.
8115 Maple Lawn Blvd., Suite 110, Fulton, MD 20759
t 412.818.3452 | f 301.812.4252
e will.dormann@analygence.com | w analygence.com
