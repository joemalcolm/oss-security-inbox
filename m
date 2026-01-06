Received: (qmail 32624 invoked by uid 550); 6 Jan 2026 17:31:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32594 invoked from network); 6 Jan 2026 17:31:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=zphZqH6YSzOsvDmpVYqs2hP5oo5iUj+sw1eBLUbX6LI=; b=
	SDXX91886zv1cjOrUqX2mLnFspMJGxEeBKUfD4QyDd0fTUSEk+ilNoTFb7yTnKck
	jYRB386DnBJi0K5dSWO3LHC5nacvH62vL5fTj82QIv1AOoOqMfdYAek4zdqdj9iX
	qY6fpNG9gI1HojydoCOVcbKTTpOA9taDt6Ob8tVAWYeqZtqzHm9OSW+pHBu1jiHF
	qVhkXeGipJ5mRQGAzfcxzckhxNWl4OPaVvPWlERQ1AXXi1VTMlMrTSUzN4kWpoNe
	BOORtcqV4CKdKJwQppFPUe3OjLqD1Kzbv6kwNlPJWzxSGn2CpZk0waYG0bVfakgJ
	NdSSy7Ju9ar+dZpN2G8sKg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bBviXaVJazs5838Gpu2qVHiN29MQGtXxXqTfpTWqhv8++0ga3EY8UDjbX5K+aNB+o+XUnsieeTzl1wfQpURoFf0/mRPeVu6ZKNeCbeaqnQ5PdtmdqYV2+3oXDqOvuqVctnwlzg1mNm0KyFyHCBbvugqKhvMnG9/38KYWdGG3iLo1mQzA6RpKnopdoG1zKCbhtNJYAXm6xKOmHvXxXGRsHxjaxER4q/BNRa+ZG5gfOizbhHEXsfc1KdPSM46929OgY6gjlspMU+uxzSO09kbMpkirW1Tu5nL1DPyQe50XOiTWNzxPUjaInBes1KPEnuyxJhFe7YEmWMwtb8467bRkIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zphZqH6YSzOsvDmpVYqs2hP5oo5iUj+sw1eBLUbX6LI=;
 b=lhpfoyeOp/tEMnnNa7DaSjUH2OBB0AotXMSX/hrlQUnkY4OR0VfQyI1B72TcWspElQ/3ztET3P9qnK7Yz1rr6DuKmPKTCluOxckluS4v9z7BjHk1RxkH1hqTpnb2lSDt2QXiWjoMmi1msOUWgmjBCR8Ke8G8pfiVTmPEr1LXniDUEcoQoVmiRSWFCk60Nq9XPLCHpCQ+bAjhTNIRJ3gQ5tW2MnNcCpveyxA0uH7z7Rl+ORnZf/vnfVzZKU8x7pXMUx+03tGkf5uOrH5UZAm2/X+N8BBk15dgFEIhz4+6Du94J2BkYpLldUKBh74AMIKZbBGYypTS1jl1iveSxjC0DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zphZqH6YSzOsvDmpVYqs2hP5oo5iUj+sw1eBLUbX6LI=;
 b=VPLgxU97auSER3Q0ucayn+ErOWZN2W5WF5uZIENjvAVA+ySHy/agq7nXcALWPBIOhNSUzGfmF9yDNeeGJG+zKAFmc41zhA7REXKOMrVJ5RHtLIGzpVpQKifaEJyo71OK/VHv7RqSDKZwLey+GdAgyFleMNGtDP+jnFD1zAutK+0=
Message-ID: <6f0b0b83-5698-4f87-975f-6b4885523850@oracle.com>
Date: Tue, 6 Jan 2026 09:31:08 -0800
User-Agent: Mozilla Thunderbird
References: <CAFmK-GynffMVvTa4J9pJvYp_DP6x8=K9gKKUv6MoqBoND3Zt9Q@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAFmK-GynffMVvTa4J9pJvYp_DP6x8=K9gKKUv6MoqBoND3Zt9Q@mail.gmail.com>
X-Forwarded-Message-Id: <CAFmK-GynffMVvTa4J9pJvYp_DP6x8=K9gKKUv6MoqBoND3Zt9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0081.namprd07.prod.outlook.com
 (2603:10b6:510:f::26) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|PH0PR10MB7080:EE_
X-MS-Office365-Filtering-Correlation-Id: 44b8ccee-287e-492e-24b1-08de4d4961b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NU9uejNvTEpYSzd1RzN0VzJweFhtR3R6OTRBY1Z0T2RCZmZBUWpqWmQ0S2t1?=
 =?utf-8?B?d1EvMkFwNDY1bisxbkVCN0ozNllDdW5nTDVWR1hQQlNQTW1QRElhbndsQ3FN?=
 =?utf-8?B?bE1HMlVvdnhhcGp0WjhKbk96NFZJajBYNEpUMTc4MmxSL3RSZlA5VkdMOFFG?=
 =?utf-8?B?ZzNNUDlFNlNEK01aT0U2NnBjQnc4c043bFBBTmJsU045OWxTREFFeHF4RXlB?=
 =?utf-8?B?NWlBV1YwUjFLSG5UeFNnMTNYYkxLemE0YTZUYjU2blNiL1B3Wlp1K2lYaE1C?=
 =?utf-8?B?UXAzakg1N3J6Y0lYK2N1Mk4yT08xQVJwOElPcXdndGxjVVNrMnNmYUx6Y0pT?=
 =?utf-8?B?VUFPeFE2TWhkSXAvRklTM3ROZU5VYjdJU0lPUkwxWkw5dFJxL0J2N3VIL1JV?=
 =?utf-8?B?QlZaUlNkdXQ1dGY3UnNFMmN2Z3VCeWk0cUUvc3owLytjTDJRVmRDMkI0aWFo?=
 =?utf-8?B?WTFLMVc2NFRLMWoxa0xIT2ZJc3VPNm9hSloyMm5Rb1Yvdk1McEh3eEE3alUw?=
 =?utf-8?B?c01tMlA0RTBXaklNUVNRYkw2b00vUFlhbFcwMG9MK1pza3hCckZjcDVNZGJz?=
 =?utf-8?B?WnlUYldqZGJZREsxMWkzOHQzbUZUeVdKTFlSYWIwZUpkL2VKZS96ZDJGTndZ?=
 =?utf-8?B?V1F0M1NxYWFaWWxCejU1c1lRMzltdVFlNHhHNSs3WUZBQ3RqSnFreUdyZVdW?=
 =?utf-8?B?VWYxdVhIQ1NoNjlCMG1uSzVQQS8rYm05ZEhMM1NoNnpXRXdNTHM5QXg5aWU2?=
 =?utf-8?B?MC8xNjQxZytKK3lSblFRNmV4TDlkVkxCeDZqdHlmQ2x2ejJjTzd4WFRacmlu?=
 =?utf-8?B?VmpESElBSGJzd1BzcnQ4ajJ2RWJPVGJwcGdGQThlbFU1N20yOHlTK1JQS2JG?=
 =?utf-8?B?eWhaZjVkVzUyM2YwWDBTa3JMSmR2QWdyWG1OWGpmbHY0V1VWSUM1L2RkaUUw?=
 =?utf-8?B?NXU4UDR4a21vbWpyNkJCaDFWNHltNUxiQUlkZTBaeWx3RDk0TXZzV3ZTZlBH?=
 =?utf-8?B?YUJoWFFmdWM3d1FaQVl1b2lRSDJwalZjemFlSU1ubzRmZXZoek9kVTYvVlgy?=
 =?utf-8?B?eWtXVjYwTlBubDRqZHBkYVR4b3g4UVY3N1J6SHJyZ1RhRVIvY0pneWJQUDJs?=
 =?utf-8?B?Ync0cDRLa3JaNHpwVlNJTStFOC9OWkI3RDhLSldkWlFRNTdXL2NVZHJjMFZa?=
 =?utf-8?B?UnFXZTJDNkp0c2NqVjI2NjVmSmZqZjV2OTdPb1ZHVnZ3NGtDN0xsTktKSTEw?=
 =?utf-8?B?WllDZHdNSGdFYXZFOStwK3N0ZTlNRUJrRmhRMzVaNVJkU3JXWUFqMDg1QTBE?=
 =?utf-8?B?c2NHV0VKK0tZbWZzY1I0UVd1UkhWekxnakRpMWpLZ2xwZWRHaEd4MnF1NE1z?=
 =?utf-8?B?MUhqRnozWW1RNmNXOEpxaWZjdGtDemlLTmVXbnZveFEyUE9pcTJRakMvQnpL?=
 =?utf-8?B?RE5lenVlWHJrbzg0U2tpdDNPL0VTeEJwRmt6NUVVcjFZZWZrVDJQb2NLZUZy?=
 =?utf-8?B?a1J4bFlDek9maVNmWk1iNlM1bXhBaHZxand4T2hDMmwwVjFFays2N2I5REI3?=
 =?utf-8?B?NmR5QVoyWFYwN1F5YjNWUzFSdTNIRUk0UUZjaElUcldFcWU1TWN6TW5HTCtM?=
 =?utf-8?B?T2o0TGRhcWRPaFZkTFVQd3dXN0RtSVBxOWNQN29rNi9HamJyTWlzVjZJRzdi?=
 =?utf-8?B?dGEva1NWNWoxZTRBMmxOa0pYdENIMjU4dXhESXBnK0FrNWdhU0FJYlB5NFQ1?=
 =?utf-8?B?RU9UMGdXUk9VL0tWNWh0UzhZbmpUSEpxd3REV0hVYTJ6RWFtR1VuazZISnh4?=
 =?utf-8?B?QWlCNC83eDBJb1JteHZtNVhEcVIwKzA5d3F2VU5zbjJmcVM2enFDbnY1Rzdv?=
 =?utf-8?B?QWFMd1IvRVpxaHdiMHNuZHMrVWVsbU9ZMnpHZjZjTVJWWVFvNjJUS01mUm9s?=
 =?utf-8?B?K2ZUOTBwYTZrWmo0RUpGTktIdUc1UnZMWjFSWEI5Q1ZTM1I1L3FmNVlLNVY3?=
 =?utf-8?B?K2k1UStQZDRBPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eWU5MFcwK0tLSFpCbGFWUU5sbzhCM0lLU0dFZ0JTUWhGUTk2azQwMUY2MDVx?=
 =?utf-8?B?SzBRK1NSaTBSL2hLWGJvSDlKNzlEbFdJNDJXdlpoNXlkR3ZjcXExU0k4OHB5?=
 =?utf-8?B?N2JFRGYzWXZpVzFXU2lLV1R5TjB0Q2ZkU0hQV0doaXFwTDRSWWI5dm14K3Bt?=
 =?utf-8?B?d0ZFOXZKK3BrU0VrbFE4cElEMUlpaEljTUxlNExxK3FPRzNNOUJON3J2Njlx?=
 =?utf-8?B?c3hiQzJPaHZSOFdoSkg0K3pQQTQveW82Q3ZpODFINkQ0VldIV0s4ZFIzcHVP?=
 =?utf-8?B?S2t6a0N0dTUrQ1V4M1lHU2ZXclNTM0NtZGVuRlFnUXQ3emt4dDI3MkxFZDZG?=
 =?utf-8?B?Zmpsbm1JVk5oaFErdDQ4VzF5V1J1eWU5NjBmNnorL0FGREY3TVpGMjduRW1z?=
 =?utf-8?B?bGxzZDVSWGpBNHY0Nk5xeVl3NGZhOEhudi8wZUFReVRJZnhyQjFYWEFIYkk4?=
 =?utf-8?B?cHhVUU5ISnFsNGY5b3BVK0pVbFRzdzdBV29OWUQyV1pjckc5WHN4dEwyUDlw?=
 =?utf-8?B?U3VXM2wvNjJCeDMyY0hWQzJYNnM3NWxPUVF0eUlCM0hTdldDbnFZaE9MRHpp?=
 =?utf-8?B?cmlMY3ZZZ3hPSEtYZjRDVTVaTVVKVlVQYVNKV1lrOXEyM2VNdEpJaVdGUGpK?=
 =?utf-8?B?Nlc0dWRyK01oWWM5b2x2QmVyUVRLUC8vVVl1VmxZdjFWeURZVEFmV0RMajYr?=
 =?utf-8?B?QVV3NUJIajdPKzlGWWF3R3FBektIOGFzdHY5K2c2em5IYy8zdk5XdEdMNktR?=
 =?utf-8?B?bXk5RmdkaGhlMDBPYzdYYWJtRUQ3endUZnJKL0tDR3hvRGZoU1RHbEtVa3Y3?=
 =?utf-8?B?a1ZSajgreEFkNUx1REhXWXJwbWFCY29tdUR2UVNDK1FveUlwZGU3UmpFanFr?=
 =?utf-8?B?aWlZMnh0aGlKaTlaamIzbUs0NVhERitDUmcwVmpLczZJMlBWMC9nRFZWQk1Q?=
 =?utf-8?B?aWluRGxKMW5ya01wdW4xOW9jTTUwUmpxejRERkwva2NuSWZFamdVR1pQT3pr?=
 =?utf-8?B?N0dHaGIzREVEQVZ4RXBjbkhaTVFhQUlKdkRSWmVzelBScWM1aHZUTXUvdnFJ?=
 =?utf-8?B?Yi81ZDFsR0NRVVdrbWVzcmZ3Mmcrc3VVQmh6OTQzOGNZRE1xV0tzSmN2TE1S?=
 =?utf-8?B?b2lLNkNzc3FjQmlVb01pOVBWYlZoRkdOY0grMFQwdEtWZEd6QWxEQ2xQYmZm?=
 =?utf-8?B?SFk5VEJWbGVPR0dselJhTjNteHYycTUrOVYxU1pCU2hEZitIWjM0VG9rSko3?=
 =?utf-8?B?TEx6cEdBKzlKOWQ4OGhSd1JJdVpYcHJkTlNla2Q3Vmt0ZDZ3elNFZzY4cjBy?=
 =?utf-8?B?dG5XZ3NLZmpBTXN3VnpYUHVieXBEMmpOdFppY0Y1RzlURExwaHkxTHhjNERP?=
 =?utf-8?B?azhIVTVQSk9DdjBvNEpNUThwUDREOFRodU9PTWVWUHFMcUV0SENPQ3JaZFht?=
 =?utf-8?B?N1FmR09Ja3FlQW81V3BwZDcvWDM3QjFRWjBzN1RTZjE5Q3NhV3p2c0VPWWEr?=
 =?utf-8?B?ZjBKbXBBWUxFSmFocFFrVkR6TWUvZXh0N2haWjF4Z21xcHNhanYvdDMxaTFp?=
 =?utf-8?B?V2FkVFR1aTlFMXhLV2l2eDU2YVBTSzRVM3N1c3RjY2s3K2Z6ekJOUC8xaTgv?=
 =?utf-8?B?YjB1eE53SHo2VXlhVHZHS1RqZFBDdGMzTXV6L3R5Z2RFendSa2dqY2F4enlO?=
 =?utf-8?B?Wi80RVlKNHhUQ3czaEJZRHFLUldaaFdHTnZNM3RvRjFjcGdVSW04aVAybVov?=
 =?utf-8?B?ck45WUoxWFovbUkrRXNlVDlHWWVHYVVXVzBKUGxJdmJSNmR3SmRINW9Za1o0?=
 =?utf-8?B?Q0ZqV05Xb0g0emNzdGNlb2EyYUQ1YmU1MXBneFl4MGR0cWl6MWNabEJUTVQr?=
 =?utf-8?B?aENCaWJjVFV1S21XMGF4L0d3a1l4UWFEQWtOT2RqSXpTSWc2NWVsSTZPa0Iy?=
 =?utf-8?B?OFFUSkl2YzlVK0h1OEwxbkFDQVR3eGNwbm9iOHBLelcrNzNJbUZ5aTd4NWlE?=
 =?utf-8?B?cUJpSlBwa01WR1BJNm1tQVJmVTdkRkpUSUZJMzRkdFlLMzFkMHpiaUJuRDRm?=
 =?utf-8?B?K3FZakRLa29kRG5wVVdnZ0toTFh6YjdlaUkvU0c0SGhPbTFSNlAzdFFxQXBv?=
 =?utf-8?B?UmFuTDh5eGI0bnJqZi9kdlNaV1AwOWxlWG9wN0IzZkJmZWFVejUvQlBZNzNE?=
 =?utf-8?B?ZjJLY0xSaWEycXRJMXd4Zm5wb3FPbWo2NUk4dnY5cSttNWtqZGl0MmM2Q1Aw?=
 =?utf-8?B?WkVVUjgvUE5SQkFRZkw3b2FFalk5THl1ZThVVklIRjMxRHplQzFmMjJ6YTZJ?=
 =?utf-8?B?dmRDSDdzU0V6bEhwR3ppbk1uQ0JJZnBmY1YycXJLVEdWUUdqZnpNNU5yZHVi?=
 =?utf-8?Q?vLIHzbxp45mPhpWk=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	u2n4gYmBIvnWjFRBc0SD3YCXunjYZb6A2D0BuBUkNuAwEUutpYPUcwVy4n3rlkRk7jXxtj6iyVrDGLOrv7uYqQrqfEWNYFlcFvoE5KTaOiID1xphnC9SaWJn9XapIvV17rACyE9TpHOzgeDXDFrDubFQXOpzsJK0Q7oHDRYZYr8/C/AZOjyiB7AQa+4P5rnYPdIIZhOO0JdFadGWTKwjd/ifnDEJvouhGxhinA8BMPx2dpLoU7AIG+9EEDN/L4zfuxKWnV480Hd84+2boZMNUOUSMabce7Zttvl6dWWUDYLkr2e4p+mPHOUQkkSVkXKkx/QQvY24JZxfM71NnpiUdsRWnWZg0GgsIgLNoPbH0VU5LLcrs8H0iWjj+j95c1ISVvpZbvFHZLADPc+0wbZBn7AV0AYrDcE14sTSHRO2jDI5+XxKQmjpGRURe+mhDvH20+2QicTrmLrPv/Zwk4AGgyUoFHrjenK3kgzFIrQxy9mOCbhnrwmRXSPjs116iuT1/mvU0v0opN7/g1JTShRgLpjrjGS3mgiuF0Axmbulvi3BFKWVmZSHdPbcDutPHFULNdfiasMaDyy/ODVP5FOfi7EHpVGOVgiBOCdYfDK/PSM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44b8ccee-287e-492e-24b1-08de4d4961b2
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 17:31:10.1739
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dlFh8qDXceYTY0OaPmqqKG01PAH271kqNxKR/iVcb6n2Orco7c1+xztFRghe7uHy4ymO7SNygLiBtU+B6XfO+TYFQ2mQEEDuyZ14iqwmpYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB7080
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 suspectscore=0
 mlxscore=0 spamscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2601060152
X-Proofpoint-GUID: 8T_llW5ULsvXiitb-NcXlOY-bhOiCbMF
X-Authority-Analysis: v=2.4 cv=M7JA6iws c=1 sm=1 tr=0 ts=695d46e4 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=auHYCxwYAAAA:8 a=3L6Nh-GTAAAA:8 a=pGLkceISAAAA:8
 a=oAd3RqMmCVoBJH7mBsIA:9 a=QEXdDO2ut3YA:10 a=67XU6oJk2Lrwzah0vfu5:22
 a=izEBCtx8DkBWphcOf488:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE1MiBTYWx0ZWRfX4I7/m30IuDuW
 jnedW/wNn2zTGBZ/e4kGZ+Ptrro1f/mk7IefeM1wAUmfVh4u117FLDyyeQcWSLn1uMUw0wUEUH4
 E439c72PSALUwUHyJVSM1PGEi5hGDYGjjo5JFnQ3PjhAe9CHz3zLW7j63Ny4pCPcqh9gcVIBM9V
 hprpLeK9IV9R75VLcxXp8pZZAva156fW7VhIYdUjXaNP2WJthOuXTj4ya2aVV+sIjNrjkPW+h31
 MI5rfYHrmB3hGGTGy+QeKlRdGQejEV+hMu8jL/lEdlLRzysGodbxVm9UEJy1JkXIFaX/+cQzIE/
 KVuB0Rl6Ormo0zBThZBGLvfoahQELbOg+rXsYLPxKpQ23CkB0o0uItj6eeBD2POiHjn043i2vqV
 5ARLjlQPmFjRlDEpvMmj8tWLXWbkGxTykqEPqEoDcDWSSKepOtmhVwlU4cRtr1FrAXXQFxPIFQV
 JAoqj+gIJ4z+IBDzCCg==
X-Proofpoint-ORIG-GUID: 8T_llW5ULsvXiitb-NcXlOY-bhOiCbMF
Subject: [oss-security] Fwd: [FD] zlib v1.3.1.2 Global Buffer Overflow in
 TGZfname() of zlib untgz Utility via Unbounded strcpy() on User-Supplied
 Archive Name

I didn't see any mention of this in https://github.com/madler/zlib so
I filed https://github.com/madler/zlib/issues/1142 .

Note once again, this is in a utility in the contrib directory, not the main
zlib library itself.  (And 1.3.1.2 is not an actual release, but a git tag being
used for other purposes - see https://github.com/madler/zlib/discussions/1128 .)

	-alan-


-------- Forwarded Message --------
Subject: [FD] zlib v1.3.1.2 Global Buffer Overflow in TGZfname() of zlib untgz 
Utility via Unbounded strcpy() on User-Supplied Archive Name
Date: Mon, 29 Dec 2025 22:43:46 -0500
From: Ron E <ronaldjedgerson@gmail.com>
To: fulldisclosure@seclists.org

A global buffer overflow vulnerability exists in the TGZfname() function of
the zlib untgz utility due to the use of an unbounded strcpy() call on
attacker-controlled input. The utility copies a user-supplied archive name
(argv[arg]) into a fixed-size static global buffer of 1024 bytes without
performing any length validation. Supplying an archive name longer than
1024 bytes results in an out-of-bounds write past the end of the global
buffer, leading to memory corruption.
The vulnerable code is reached prior to any archive parsing or validation,
making the flaw trivially reachable through command-line input alone.

*Root Cause*
* arcname is derived directly from argv[]
* No bounds checking is performed before copying into buffer
* buffer is a global static array, not stack-allocated
* Overflow occurs immediately on function entry

*Impact*
An attacker can trigger a global buffer overflow by invoking untgz with a
sufficiently long filename argument.
Potential impacts include:
* Denial of Service (crash)
* Memory corruption of adjacent global objects
* Undefined behavior
* Potential code execution depending on:
     * compiler
     * architecture
     * build flags
     * memory layout
Because the overflow affects global memory, corruption may persist beyond
the scope of the function and influence later program behavior.

*Evidence:*
./untgz_asan $(python3 - <<'EOF'
print("A" * 4096)
EOF)

*ASAN Output:*
=================================================================
==3141495==ERROR: AddressSanitizer: global-buffer-overflow on address
0xaaaab54d8ec0 at pc 0xaaaab4a91bec bp 0xfffffd1e5150 sp 0xfffffd1e4940
WRITE of size 2001 at 0xaaaab54d8ec0 thread T0
     #0 0xaaaab4a91be8 in strcpy
(/root/zlib/contrib/untgz/untgz_asan+0xc1be8) (BuildId:
31ab7d499b8ab40a93265dad8bfb879e63c604ab)
     #1 0xaaaab4aee508 in TGZfname /root/zlib/contrib/untgz/untgz.c:136:3
     #2 0xaaaab4af2fec in main /root/zlib/contrib/untgz/untgz.c:638:20
     #3 0xffffbaa52598 in __libc_start_call_main
csu/../sysdeps/nptl/libc_start_call_main.h:58:16
     #4 0xffffbaa52678 in __libc_start_main csu/../csu/libc-start.c:360:3
     #5 0xaaaab4a079ac in _start
(/root/zlib/contrib/untgz/untgz_asan+0x379ac) (BuildId:
31ab7d499b8ab40a93265dad8bfb879e63c604ab)
_______________________________________________
Sent through the Full Disclosure mailing list
https://nmap.org/mailman/listinfo/fulldisclosure
Web Archives & RSS: https://seclists.org/fulldisclosure/
