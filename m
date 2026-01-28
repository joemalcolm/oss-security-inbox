Received: (qmail 20145 invoked by uid 550); 28 Jan 2026 22:11:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20111 invoked from network); 28 Jan 2026 22:11:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=qK+sBDlgoMMnP7Prwre61z37ED3l9RLLzkXrKeXz1cQ=; b=
	Jv03HSNKfMrVPLlfYG6jHJ0gfNek1bmh2uD9U1PoX/zzDnThW+5pOqxmucWrF6L0
	8u6Rgou2X9V6mN+Ny4BdKgO1W9tHUl0BA+4IwODEZEoYa58ErQGdZA7v67cwiynB
	IkJA+iRRipkw1qTXhHtaZfp4Sez3eCC6DEoDqEHQmujYRxA9bBz539YBz37Azxhs
	ky88NxdXv90v12hgJvMMxux7m28+OWGRG9wia/6EklJf5mIsPYvMMd4CLWpZaVqR
	Mk7SKintPLPC2InheSLLd8+gID9YXm3fXEAJzXEqVCIDzxWulxsTKAVLVFRGQrCC
	4ZSuMke9Ozbr+E0cY4oPkQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N22v0ijCRTrCGKf5F30zUq0fB/PViVGRKmvuIEJynwNRyiHWhCRNFkrNC14YJih0iwdtwdAl9JYz7cwfM5tXMPdprL6sBEUISDDUPv3rjIOLOl9aHgzqQsxrMbbmp3E3UmChiQDUjEzIJq4DVaFIwnVQVUXPAnb8/eL/Bhhme1W66qkXF4qGeEJdVR84J8NrPjby1xJhpzdQqaguw2qiQW0tVOFmRqvLTe/Oo250iBoyexRF5FcoGISo0MWW3/LOOpA8CEj4klrDKMaj98IFxoGM/zrbz4WlJ6+tR8E4Nxh2WSy0kgnTUpHUrrE33WAVL5kirxdUtUUk3hFhj9UCvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qK+sBDlgoMMnP7Prwre61z37ED3l9RLLzkXrKeXz1cQ=;
 b=yQtl6nJEQ0QCpz1VxIgqqiJpbe6lLZKGK/HgJKKRKeenlaaqLp7PZ2uds8z+tY9eQOVuWImRkNx1f2ySehoajjuxrNtRxhMUfaI3eeZ66iojxpUiXDpIt464V7InxxnxiMnbb7xya8JNMOT/gJNvd8uhzOfVnV3kNGMD+BUvQEXz8ANhbwrREoPvG7ZPTayi9WB6uyrmR5vzymvun5R/qeSr2D9+UzbUupxSDPC4gg3g2BbC/RX40YbRTVbTbXHG5FWT6AZNty38ifdg4jLvCRyzYpem+CMwKkiAhcMf9L5AkaV7JP6kVOaM3DniKhTuhJnyr/fxjKdpsBH0RImUJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qK+sBDlgoMMnP7Prwre61z37ED3l9RLLzkXrKeXz1cQ=;
 b=prc9WJcSXL/3kX8yrIbttrAu7otH7dQBjKTXl4nGWV3806NM+VVt/2HOVGxuIjtQBLF4hnBbTjsCv0+MsZhKSL4oui05fxrMGvNmJ23VRvWtrl13/TqMyTWAIZHp9hGpqqXH6c0NID+NWjVhzdJ/yHZAsaVAYJVhQ94sE2RWS5s=
Message-ID: <072c05eb-c9fe-46b1-9601-552ca09cb083@oracle.com>
Date: Wed, 28 Jan 2026 14:10:42 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0139.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::24) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH7PR10MB6059:EE_
X-MS-Office365-Filtering-Correlation-Id: 66c66f02-a6d7-4027-173e-08de5eba14a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SWtjdXN0bkRuZXhxOXNvQmZ6cXcyUWN1UVdDeEQ2LzRuU0VDaVVUdlAwK0xQ?=
 =?utf-8?B?ZFE4MEh6eUo1R0cwU1dhdFdIZTlpRzgvZTcvWVhsREtYdWo0YThabzZuUzhh?=
 =?utf-8?B?SkZybEg1bHlHYkoyaml5UHcvRmJ4R1d6RTFSNytLYWhJblBVOHU1Y1I0ZEZX?=
 =?utf-8?B?WVhMb3k2eStra1JmUW83YTgwWWw3OTV0b3hPZmNnOU90b3pBNVFERE04TURq?=
 =?utf-8?B?SGhnMmxYMmVYNllTSXVBNUJaQXVvUlc0SE4zQWVuVW9lY3NmeHVFbFFMTDBv?=
 =?utf-8?B?S0lKUENCcTdiTFhRVXU5ZEhCbVR1T3JOZVlnMHUvRWN0T1QzanhWWXAxQUZu?=
 =?utf-8?B?cDJIOGVONWRiOEFvb0hySDZyT3dUY3BJa3BkeEhGOFBQZllkbjVrUFRudzhQ?=
 =?utf-8?B?bEl6N05jYmpmUlZzd1ZUaVdnNmdFTmNXSkhSMnBaQVFIYnBJelhnKzFWUC9I?=
 =?utf-8?B?ZSt1TzFJNUhiVFhYaWtrVHcxUDFWNVpoYldFcHlJTDlodjdvVkY0OTNycmZ3?=
 =?utf-8?B?YjRWVlh6WmU3SmsxN3AzWjdSUEVkV2VveGRrSGxMak1IU2ZiUnBQeTNvR1Ro?=
 =?utf-8?B?NUl0UFF4K1dUK2RHemUwSG51bzVrMHBDYnBEd1kvQ0VoREt2TWZIUXZQMU5W?=
 =?utf-8?B?N3dnUlNqNHFDMS85ckxteitrVHRqakF4czl4ZndtU1VUUjhUbXFHQUxKRytI?=
 =?utf-8?B?Mm1xSGFzUVZvYXBsSGNjTUcyQlhKSklGS0JHRDU3TzFIZVhwZHBpeUZsS0gz?=
 =?utf-8?B?SU83N0dkMGZhNkRvd0g2T3loM2s3V3BZY25nTDA5ZjRTT1EycWhRa05xSGh5?=
 =?utf-8?B?RlFib21WNkFUK0ZIVnNtaXFSWC8xN0UzalN4OUNUckpxSDFEKzhjVExBZzJF?=
 =?utf-8?B?cWwyeG1mVk4vRGxYbE4xOHVudzd1VVY5UzFRT3pCM1NNL3U1bWpTclpOdmdp?=
 =?utf-8?B?bzlQUitBWGdONmlZN0tNZS9hYnQ1SWVpRGxpVGNVOHJTMlQ1REJFdWpCVkQw?=
 =?utf-8?B?MlBPVlpJR1o2R3NGRnVaVWcvMzA0VmF4RmVVTExEcEtkLzg4a2ZlWmNpSFQ2?=
 =?utf-8?B?OEc5c0k5bUFSa0Y3bzRhYi9sSUgzK1dNMmFCU2tlSUR4TytXOXFuakZDS2p5?=
 =?utf-8?B?dHJPMUpWRUJ0MmRzandvYlNUZk1kWEFxS0FVdWRLNmcvM09ibzBRRXdaZzN6?=
 =?utf-8?B?dmN1REdOSTdKUDFudUF1eWlhak9zWkRIeXZ1Q2VTZ0FtKzUwa3Jwc0M5cWF2?=
 =?utf-8?B?RDhReVZmUWpCTmZhcUVxSFZKcFg1cnJGVzdzbGNOVWlnekxqSk83Rk5QUnZu?=
 =?utf-8?B?R1ZLZ2dkUFMwb1dodzlMWDFISWQyaXVoYWlXQjJrOWl4Ni9reVBzOWZJSFl2?=
 =?utf-8?B?KzhTQU1NNnpObk8rdXdweUU3MFd6SDA4UXZJSWFkSU9ZUzFOU1ZhMkc0Mnc4?=
 =?utf-8?B?YlN3OUgyUk9OSUdEaU5BQUZmUFNvbzhjdTZNVC9JTk5jNGJpNGVuSlFjcDNV?=
 =?utf-8?B?SU5kK3Y4TVgzRk4xQTltcHhBT0FpWGtYMjdrN2YrSktaY0lmT2M1NlJ0Q1lC?=
 =?utf-8?B?b2hhbzhjSytHcGpWNUZyRDdVRVQwS0NFS1oza1AzNFNKTmpBMEpPZ3BuN1A1?=
 =?utf-8?B?VGtxMW9yTERXaFdOdzFhMzdROGxzU2g3U2Z5Z2RMeGMvWjEyaVhyczY4L05K?=
 =?utf-8?B?c1RRaXZjTEc5TFNZRVJVcE12Y2IwaUlPNUV1WmxMRm8ybkRLMVg3TEVPYWhQ?=
 =?utf-8?B?SGIyckEzeEtxVUFQUm9LZlVFVEVZWmwwQWtBRHNMK3phcXVUellRWGpQSVhS?=
 =?utf-8?B?S1dPcmg3UjFiNStsNmpUdnB5Yk9laFRuVXBBVzk5SFhaZmQzam55blcxZWVI?=
 =?utf-8?B?OTQ4NTk4cmRYcFAwT2M5RmdibG8yVkFZS2pPdUQ3RFROQ1I2cWlGM2RpN0Vm?=
 =?utf-8?B?SDhpbTFodzNzRDN0Vm1SQU9nVGJ1TFg5N1ZLdlNLWnE3cXRjMkFyZ3l4R1hG?=
 =?utf-8?B?Tm54ZFZjUUltc3Bzc2hVV2NTaXdPNmpKVFdvdUhod01RK2RXWnJFMmR0YW1j?=
 =?utf-8?B?SGxnZ2VoVUszUTF1LzBobkZnYlFESE9HNnlnL0dqSGlrQStqUktMZTdJZUlJ?=
 =?utf-8?Q?icz//7Gdqx2LFVmlWZIHTN+e3?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZENVMlpIZnFkMUJOQVhhaitFdmhCZ21ycFZmdXp0UUEzYWcwNnovdjkyKzNE?=
 =?utf-8?B?Y09pYjRJK09VMXAvdzRxZUc3cjhpVVFYdWVnRFZpMmFMOC9vNUwyQ0JLa2tV?=
 =?utf-8?B?L3R0L0RFTlVZUms3MHNEY1ZaWXk0U1FoSExLUFdNZzJ0Y3ZSbWlqMHMzOEVI?=
 =?utf-8?B?VnpkLzc3Z1dVb1FqYWRsN2tHNnRIcHNPZHhYWE1RbnRqc0ZkRHFYV0VESmxy?=
 =?utf-8?B?MmhEeWozaXhncHhmRUczRGZhLzhzcTJncmttQVhEL0ZmU3JLdFR3YytsRzY1?=
 =?utf-8?B?MDlCMy9LTVdiZ3l5bk4wU3gwdHBFa3U1aS9xeHhOc0htbHNpUG93ZFB2RG03?=
 =?utf-8?B?aDlqR3JLdnBwNEZPUnVrQVBobTFOSHg0UW1CT3hhNlhSdnpwZUZ0c0tWRkNC?=
 =?utf-8?B?L1hib2Q2MU0vZ01Jc3hGWCtTNVpmM25PeGE0VkdyK0dQNDBXVDBjQ0RObGd0?=
 =?utf-8?B?dFVwdDhuUXNQbGpTSWdRaTdoV1g4dzA5azVmK0lsS1AwZVpTSWJhN09BY1dS?=
 =?utf-8?B?QXFSUXViUDFYY1VUdkpiQnpxZWNESithaGNycGlibEorMFZ3ZEhlQTJuSmFO?=
 =?utf-8?B?aS9kQWd0eW43c1A0YVYwV0JFclB2ZzNELzZHLzJFT1hxREJpb3VtWXZZUHpP?=
 =?utf-8?B?Zng4dkFEVUZrRE13dEtuRWdXS3BQUGJUOXd0aUtoNENJMEd5MGdVT21tRk5h?=
 =?utf-8?B?bGhLT214dkRJYVJtbmdYQWhVMW1zTGRrQ1Y4Ly9PZkVqb3NDaXZHdUJZV2Vz?=
 =?utf-8?B?a0VybGRXcWVwRkRRcUNvZnloSXFHOTlWWVZkSE9NUitEVXRtWlRPMCtHcFBE?=
 =?utf-8?B?bkdTN3MybjBlZG5xbk5YUW52amZhRnlsZmJGQWk3Kzk5K29FOFUwbzVLb1Vo?=
 =?utf-8?B?ZXQwREhwK1N4eXQ2eXhLdERoWVBZcEZoaE4zYlBjdDNvK1lZOElUMGM4aDhT?=
 =?utf-8?B?eDZNY2ZnWGFacTNKR2xyTTlTYXVFR0YvWEt4UHgrdElTRXMySEVtd0pNVjhT?=
 =?utf-8?B?UzM1R1Yra0lQMjExZmZmYnZTaTR0UnNmNEIvY25GbElWR0doL2FiR1pnK0VY?=
 =?utf-8?B?ckVjVEg0UDY4L3JqTTRiQm9xbHdJQ01YVVc1Z29xaTljOFdpL2Q1MDZQVkRS?=
 =?utf-8?B?SGgycHJVci9VczVWTjE3UjdscVVTaUtDN2daUVNlUVArQ0pXNkttQ0lmcW80?=
 =?utf-8?B?QkxOUU5GUHd3TVpBbHVVQSsraHBSNTFEQjJ3aHN1T00wSFJVOCtzVDh5blVX?=
 =?utf-8?B?TWZqZFdIalRkTjkydG92WjA4a0FFOGhRRzJ6K2JZZkV1OVBCT1hZM2psSFNT?=
 =?utf-8?B?Qk1vU3dGV1k1ekdmWVZyYncwYlVwT0lRRzRQSXg0SHNzbm5lOW1aTjNMa3g5?=
 =?utf-8?B?OHRRZHNkS2srVmxlSjN3Tk9mMWNidkV5OGVheXpyQUZBalptamlwVFFTVFAv?=
 =?utf-8?B?c1YzQ3JkNGJWL3RrNTFhTXJuS3g3TFFXMmFsWHdlT2xDRmtteFB3RE8xbjN2?=
 =?utf-8?B?cklwUjZZUHF1ZGlBQlJZanQ0WDkxYWhoVllEUXpIeU93TWwxN0gwcDFRQkk2?=
 =?utf-8?B?UHhHRkJwVElQSVh4dGVkd01rQlhwZTB1VEV0ZjdRaVMwQVVVWkVsK3lIZ0o3?=
 =?utf-8?B?TlNuNVAwaWVXRE9GT09iVTVRWTBIUmFmMmFYM3lEY3oyY2xWeHV2N3NzM1dK?=
 =?utf-8?B?MTF4VFAwZ0l6eG9UNFZOcml4WkEwTXBzSzFxNXlINnBvOHFicjBDR1BiekQ2?=
 =?utf-8?B?RnNSSm4vWS9EVXAwTkM3RFEySGpqa1NjT0FKYXRGeU9XYU9pNDJyblVQUUt1?=
 =?utf-8?B?YVFZYXNnUDRDVFpLaENOSlFEODh1aDVxT0NIdHlzN2NlVnhOaUpYSXU2UjdC?=
 =?utf-8?B?VmJyMkdJeE44Y3B5UlRLck8vRGZCK2lEcDNsVWFvYmlXMEZNOFBVZS9icFNy?=
 =?utf-8?B?eG9jK2tUbEM5TFVLZGwwNGNGZ0lZSnNBVWgvcHhBL0xuSzVhbDh4M0xKTG40?=
 =?utf-8?B?dHVTOVRvdFRGUGt1TGlVUlNzZXUxUDBFc0NmR0lDTitKRTh2YXREMVgzdllU?=
 =?utf-8?B?cER2OFI3dFFPcVR2bjd4a0k4ZUlHbW1SZlB3Z3gzUXpDZEFrZFV0TGVaRnQ2?=
 =?utf-8?B?L01zWk5OTmdKWW5yUnFRWlRqTEV2MzR1ajEyczFDOUY5T25hbWRXV1BxTy9E?=
 =?utf-8?B?TFBHTVRmejJiZ3VxUTkrZHFac1dqR0JjQzQxWWQzeUZDY1ZaMFZMYU91d0VL?=
 =?utf-8?B?M0tOdFIyWXhOZDRIZW9pUWljcWI1eE83NnJNMHdrQ1NGRXNualBjdE9wQU54?=
 =?utf-8?B?c3cxTXd6eSt3cFVIOXQxZ3pEQ3cwK3lUN3A2NFFTaTg2ZVdROEY1RXowdzVr?=
 =?utf-8?Q?7pS1AL0P6eU9jd3E=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	B7E75j6kQBP2nvPuILeK8RBh/BG53BH6ZqE2uyNT9NMB1hgTYUCezMjXow4hQGs6Q4fOiUndzR6wv6A8bIB98ReksiCx93U9JYC47UV+ljb3NjFPXoUBWdO9oHPM5r/I1RHfZnBFXvEH2CjawJSe80MMdpi9OHipu7w8wGfx0lVzDdZ48ejZsl5DXL9MCH1x95C5qTaPtsAMW2u3wmdp01wkdNBTsMGlHcgT23VZPgSsSqV5NCP1vGZQsjBqYVUmhM1EaVA53ohJK5NeKKjHftAmZGMbkqRH8Yv6XThFgKZ6c91kP09hXctXJMIENkBMJp21o4tuuikwwLH6jhWGSruk8Y51eMjtefxiX38tiXL2XyM8sT8lfhyGL7oN2UyN2cbQZw24Hj3wbOTK2Tqk58MfGdA4ra7yuXzzY+6iktX4MF5HnPJ6/FCND3S2ARjeL9id+GA/uoJoRmeFNvn0/EOnhkJR6KpZ3zmi+kEtDBwMBNAnUWuvwoxGMcgaEBR4PnBhRNWLwdC8YD2i+st1ZxDp/mqsxJInBRkdmFqor91oAA9ypp6kYjOGKVoAk3oxTg8DWKWctCm7Tk1e06C0dj58JLlyWMHPWNzN6nJTZ1w=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c66f02-a6d7-4027-173e-08de5eba14a0
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:10:43.8356
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EK7opHnqBcKr+v9FLA3o8mWg9GnSU6QHo5b7vjMWsIMwW9jwAtsNV8DUzs9ImiS3a9lN2jgwnc2P+uuJHW8/srg2mBEp3yTSZuhqV/nUWw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6059
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 bulkscore=0 mlxscore=0 spamscore=0 phishscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2601280183
X-Proofpoint-ORIG-GUID: 9JU-Dur63Cx0VWFzLlS2GN6wkbZE-tB0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDE4MyBTYWx0ZWRfXy7T2HKb16nqa
 WCbJMzLoh0NQx69GdS3OQd9NBshU2IrI3sZyRvjlnwrUO+XWkAzdmO2kqvcXZeosWhwKSDPUMQw
 o1reb0TgSVEtXEnjvloy0gDFXf2TLtOXjLJXd+CVHiLdDD8aFtOlfCua8mt4EbyNSohMZwY+aw2
 hs0e1QpACf2umrzH7bbRPiRi8yaqKHbNhG96uyk2H9sya+t0X6uH0gp499B9W+znn9Wy7nYe+1k
 e+ls4ahqL+urjVIeCrDfiEUs2oBG2DT7WX0728LsI69sKWeUwI3N64drSglt7NO/1PkrWxSPGuH
 pDtHqbminAmtzRL4F1LXtGeGOp8XUP7SiiQAgi4hNAnM+yIHsrEZ77QLnSVaa4DoxceGMUywao9
 rxvtFFUF3/bYEXAw1t9EwKeauLwNw6yCDpXVTWYMvwSgtz/ynf3/miKjDfLW0VaQQsvoKK2TaQt
 JLkC9ONpsipxY/9RqhA==
X-Authority-Analysis: v=2.4 cv=Qe5rf8bv c=1 sm=1 tr=0 ts=697a896b cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=8r2qhXULAAAA:8 a=yPCof4ZbAAAA:8 a=ZlcyPkTvqb5xcBFgJ6sA:9
 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-GUID: 9JU-Dur63Cx0VWFzLlS2GN6wkbZE-tB0
Subject: Re: [oss-security] CVE-2025-56005 Undocumented RCE in PLY via
 `picklefile` Parameter

On 1/23/26 11:06, Alan Coopersmith wrote:
> https://github.com/bohmiiidd/Undocumented-RCE-in-PLY claims:
> 
>> Undocumented Remote Code Execution in PLY CVE-2025-56005
>> --------------------------------------------------------

https://www.cve.org/CVERecord?id=CVE-2025-56005 has added to the references
a link to https://github.com/tom025/ply_exploit_rejection which argues that
this CVE should be rejected because:

> ## Argument 1: The Proof of Concept does not complete sucessfully ##
> 
> In this project the code from the proof of concept has been copied to main.py.
> 
> ### Run the proof of concept ###
> 
> To run the exploit ensure that you have installed uv.
> 
> Run
> 
>     uv sync
> 
> this will install `ply==3.11` as a project dependency.
> 
> Run
> 
>     uv run main.py
> 
> This will run the proof of concept. This results in the program exiting early
> with a `AttributeError: 'function' object has no attribute 'input'`.
> 
> The text `VULNERABLE` is not in the file `/tmp/pwned`. This is not a working
> example of the alleged vulnerability.
> 
> ## Argument 2: The proof of concept does not demonstrate Arbitrary Code Execution
> as claimed ##
> 
> Referring to the proof of concept code this does not demonstrate Arbitrary Code
> Execution as there is a single program running and no untrusted data has been
> passed between processes. This is not a demonstration of CWE-502 as claimed.

See the github repo for the code project in question.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
