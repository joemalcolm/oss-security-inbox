Received: (qmail 13397 invoked by uid 550); 6 Jun 2025 16:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20356 invoked from network); 6 Jun 2025 08:12:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=s0e8J/fftLhi69FJ1ihcqhC+vjm6HQGD6sOsZNq+mto=; b=
	GmmApuPqbfhiiWL13iFgiYYGGcQWKNt2YVLGqq3u/EV26Wmn2FUbpPGl/n2tWraw
	UvZuDkkhnrm9QFzvBw0gZClqUEby3YszrIz/UuBpatcnM4XAbdTbFkTBxhDHyKGG
	dPzEQi4ew052XfPMi6zSuWonwvWMRgupjmXYwFLJ2SjlTZPmH7sDTTk151g1SrTz
	tS8pyIYqBYirI0nHvpN6bpff3opWZCMsGtmKWXG1aFSIcCwECr6kVfuwmwhCWpHf
	v1RbeexpJvAYn+4u+4w8jPoqgZDV8klu/5SbII1MggCdftL4jAz/IzX8M9dTO4r8
	jgJqzq2ivEeXBRhPr+AL4Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hFdsYAPsTqXPeDAVqDAeq0RYD29gz9u2A0qQveb4zRqDPJKxb6Iy5lyQqDB/iIKBqGCegDbc8X1sywTizMHxMLSTz8/FBVguH4VoeuBArWxy6lsZGTDI+g6ur3n/vMNo1hcMa/3P0JjZaCh2iw0M5pUzNjVnctNPNpcv24Ku3vyeCoHFUTLOkDOLWadBhSwQyDm3MCLqGIUFjbNLAPIB6z1siSwaadop648wb4+HEek2Lu22wTVRrQC132Lw3NqXu+Ufblj3q1joxBOrgExk5AryOGoR/jg1G2P9FVOJanesMtsojiH7dhP3whk5nB2L6aVGsrg5YeATG+v+BpwtJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0e8J/fftLhi69FJ1ihcqhC+vjm6HQGD6sOsZNq+mto=;
 b=mg3F5c2xt9wuzwrUMtmAlo7vsx/yrKcpVx/WaPa8AHWMhmKGOh7M5gnrx2mGNodEttMV0yEl52iXGYNGDRisTW3W06Z57D4b91L03Ulg/C7WUV+jx/Um04+ZxfrAtKJMLQdXIHUIJ5DgQbMEJUR5Km1aJ8UpykBE5g9AdZSfEqflB0vU+rMScqFrqEw9gBRu59duVX2Ide9IqXK1kqin7qoDuO/JSyPLwui1K/7CuHH2xr4maGtNQyVFmOI9mtG1antTo4wsvYnRhCwVm/fsmL6btbtmgvQRUHHec5dvbGzxpSNX37i1IHBtzAuTFQuEtzYNDYcC2hWlaHRyzgus1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0e8J/fftLhi69FJ1ihcqhC+vjm6HQGD6sOsZNq+mto=;
 b=Xv1mndUliwYYuGKORPMoclKd/OPL0NEMYsfoISj+K+nV4DXZrVxUtn5j4//smUBm3gFrzzyc1J2JWCi3apytpjl3jVgb3hXCNd+/1fE++n0vCXj0Q9sYspWC5F6yMDMjfbCxL8ueffCyUBs6FKi/mK/QYIQ5yOMKYFTbI9LmMiw=
Message-ID: <e2f361de-3ba6-45b2-951a-353b187a4631@oracle.com>
Date: Fri, 6 Jun 2025 10:11:55 +0200
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Qualys Security Advisory <qsa@qualys.com>
References: <20250529171556.GA9260@localhost.localdomain>
 <20250603040528.GA12667@openwall.com>
 <8d61536b-717a-444a-9649-fe6898b04e8e@oracle.com>
 <20250605033141.GA26733@openwall.com> <20250606014914.GA423@openwall.com>
Content-Language: en-US
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <20250606014914.GA423@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PAZP264CA0074.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1fa::9) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|DS0PR10MB6701:EE_
X-MS-Office365-Filtering-Correlation-Id: 75a41d24-8e4b-4917-3d1d-08dda4d1cf40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WE9OVTNCcFU2UXYxWTdiZlRranBaSEFqRGtvRVFrc3lMNkR2WWJ5SFZEOGhN?=
 =?utf-8?B?WGNUZW5XZWpPUWlzMHBPMnJXQzFSdHFXNXVVblVweTBzNjNKTnVSVEJMRUY1?=
 =?utf-8?B?SGs0dVkrem8wMFVnMnlNZHh3RXk2ZE8rUXQyTWJmaU1RRUJJTTdaU0ozYStm?=
 =?utf-8?B?cElYR21JRi9HcjI0RGtZK05xdWI4a0NhaWFIaTFBRVdpRExZcmQrWHVzWXhK?=
 =?utf-8?B?M2xNbHMzcytRbUZDYVRGQ3U1WWFIREI0M3JzczIxQ0Z4RjNmQys0MFhhSWVE?=
 =?utf-8?B?ZitSTjgzR1VWSjJLaU9UMXgyUzVaN05lMDB4cWF3Zi84OXFQMlM0bjJlZzJ6?=
 =?utf-8?B?N1phbVdFMEhJbmpGUm5GczBwV1FKcEtCemZ3elNhT0VXeWw0R092ak9IblNR?=
 =?utf-8?B?T3R4VGcyeG1ic3hiM3czYmpPMENvakdaRUFmZEJpR3RNNVIrNUpqSTMvRUdG?=
 =?utf-8?B?Ykg1dW13KzdmVW5lNkhCRUlPY1hhNGNITTZWSmlzV1c0eWZxODNveG1rSis0?=
 =?utf-8?B?bFBsSnVWK1JzeFRCUkZzNlYxNm9QU3N0cXljRWNienlJZldaKytEbHF0V052?=
 =?utf-8?B?STNYTHd2UVNvSG82c09HT2ZWa0JSOHVUS3hrZ1oxalZKMnAyKzB6dHB5THE1?=
 =?utf-8?B?WDI5WnM1T3B3WnRpbHRWNjJWVHRnclhBczRxZzJvcG1jVDNOam4yWFR1Qmd1?=
 =?utf-8?B?c0hvbkw4Z0J6bjgzVFYzcjdmSTVoYU5hYWJhNTVYcnMxaEFhaEpxWEhWSHg2?=
 =?utf-8?B?SWQ0VEdLMENBTkRydTJjQ1ErLzNIWUVUbmRWd3ZDaHlyU3JQaG85MTYzbjAx?=
 =?utf-8?B?dTlLUUZLSGFOdzU2UVE0c0lYS1dSVXVhSHYwbXdla3VVRzl0Yi9rcmFkSG52?=
 =?utf-8?B?cDdDa1B2aXVRQklwSzVXMGwzbVcrcGdEbEtRSnN6ZXpLWVgxdGRuNUNncEJh?=
 =?utf-8?B?Qjk5TjFxelhGeFU1bTNqbkZ6SWJwU1BBdWg4NzU5elNEb0VGbVpQeW1GWXEv?=
 =?utf-8?B?Yy9mN2dYU256bXphSkF5aFdEUkQzRFE2Q3dJZWxLVC9rQVF4K1N1eEEzNzM5?=
 =?utf-8?B?MmNJMGlHSjVBRXlrOHNtVEFrTmZ0dktReTRaTDNNU1QxZnhnWnRhOG02THYw?=
 =?utf-8?B?dmVLT0Y0TzVqbXB1emlwKy9aK3RGQWc5cm9JOGcvMXlrd1dzbjhsbDAwQXE3?=
 =?utf-8?B?K1hHU3lubG5yY08rblZtK2FUZFNqYkRiTzBTSlY5bDFNN2JtQ0c2VlZBU0ZT?=
 =?utf-8?B?K2M2VS8wUTQvVmw1OCtnTFJLQlROWDNickJlRmlhRGViMkREQm92blJNTUlH?=
 =?utf-8?B?U0ZDOTkvdG1pUlJ1ck9xTFhGVTlPZFoxK2M4ZWhSL1A2bTZqbG5XUUF1MXAy?=
 =?utf-8?B?L24zdFVvd0plYTVBK2FaUGhYTFFDSEJLQ3dpZnd2bnJuUkZwNk12QVNOYnNt?=
 =?utf-8?B?WmlNYUhJZzNKVFNUM3hXU0dLejVicFhXZC9NNVRWMUNRMHdlM2J0a2RjT0VV?=
 =?utf-8?B?U1NkdXpUOTlOdXMxV0x2eXZWdFV2YXFJbFdPbHhZd0JzWmkrT0Z5OFVuZDVC?=
 =?utf-8?B?b2dDQ3A2L0ZubnBTeStvT3paWGVNMHFVemlvZVJYeWl0bXY1YmtqR2lTVjZE?=
 =?utf-8?B?NEFnU3RnUWZGWFhIU1k2RWJVVEFxWmRpb3QyWTA5cDZyekxqYjlkY3h5SWQw?=
 =?utf-8?B?MnNiekREOG9KNE1YdGFIQ3F6anpCbStUbHVFRmpSQUk5cGlueW9vbUFpSFFZ?=
 =?utf-8?B?MWtha3Z1eDRhSWt1SDBkQkpjZk91eXJkN1hDL3dsOUNNRWREVXZEcDhXUU53?=
 =?utf-8?B?Z01zYzM3eFFMQ3RqQlVSVG8wanh4SUhNUDdPVXVsTkNtOUJqWjdNbG9OM2JB?=
 =?utf-8?B?Zk82cnFIaU9iamNkY2ZjdnFOcHlTZkU3dlNqRE9vcFJsTkhSOEhHUXRLKzVl?=
 =?utf-8?Q?dNpTkNO3Pkk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Yzlzak54eTRFYWtjNVl1TktTcnlUZlk5a2M2eDNHVXIzTHd3aUp5K1oxRith?=
 =?utf-8?B?bERKc3N2TEZoY2FPVGhKaEV0aUgzU05YYys1ZkRUaUlNampZR3JWTk11aFVV?=
 =?utf-8?B?UWdQMGcyaERqb1BXUzZnVEpYaWF5SUxBRTBZMW9ZR3NJTXc4SnpHaWRyVGVo?=
 =?utf-8?B?TjNielBZWE9oSnRNd2h1NUJPUzFUN2kwWWZrQ29GK3NTZnBPT2hkTU13bW5y?=
 =?utf-8?B?ZzYvYkxWOURHdE5TcTdEYzZZMGIrbURIRFJtOFJJZ1NGbDRQZ09PSG8ybTNL?=
 =?utf-8?B?VmIxNEp6UnA0cmtveGxnbjlyVXl0T29seitYRnErR0h6Qm5IOVB6Rno1dEQv?=
 =?utf-8?B?eUlMK201TC9SckdCbW94dEZMZ2IxNHpLYlVQVkpHZnpRdGhFL0E3UnFKZk9z?=
 =?utf-8?B?R0dlQUlLcC84b0M4MndrRHlsbThzVVJNUkhXUXZad3lFTmpNSzRFQllIWk5x?=
 =?utf-8?B?YXNEUkVKc3AwZC8wUFhXejdSYi9YZU9CTEU3UGFIbmN2bGtQVzdFOEUxTFhh?=
 =?utf-8?B?STltbUNtZjIzbmh2aWJJVmQ2cDlDMmMxcTZCTEJnbEx4Nk0reWxGb1IvUkpT?=
 =?utf-8?B?K3BkMmFwdGY2clRvRUJUbXNnUE41WXo2Q3JCWnQwOUxGTnZhcEpBbDBHUEVY?=
 =?utf-8?B?L2FLL3JoZUduT3U0ODdLVDFGSzhrbzg2V0tuOXhweEg4QzkrZGlFVWJHMmxa?=
 =?utf-8?B?SGd2RGliUVhtdWJjbzVYanhlYTh6aW1HOE5HWVNyelY0UGlDeEZnWkF1aStj?=
 =?utf-8?B?VGN5eVlDM2xCRlpRd0QreTBqdTAvZ09lK2FKQWF3VmZkbTBiU3hBc1pQVXAx?=
 =?utf-8?B?WUJnL2FUeGx3YmdCYTdqeXgvMGhEQkorVHErYkowejRDSEV2aGx5djBqMFdq?=
 =?utf-8?B?VnZpL0ZObklCSTM1MzBjZU50aWxPT2ozVHhqWkIyTUtaRHpHWVBvaUp0dDRa?=
 =?utf-8?B?S25YemRYbFYyOXF5ZElpdi9xZndmblN3Z1FOeXQrSlkvUHpKNnl4N09jSG5w?=
 =?utf-8?B?TmtQSGVwOHE0d09ZS25DT3hjK0xvNGEwQzhpOGN0N0w2Q2hUNzhYSE9XTHVC?=
 =?utf-8?B?V2lhUktIczcxY1ltZ0FUczdmcjRtcnY0c296TlVmYmZ2Sk1WVlIvK0NFS0l5?=
 =?utf-8?B?K3E1Wm1XSC9PRzdJWENZVWxpYmIrRGgzVVk5cE5KRnNhTW05MTFlWVg4T1V1?=
 =?utf-8?B?bUJ1RUJDbUh6MU5Pd1pWdHV4TTRqaTc3RUlGY2p1SlJiZHIwNTh3OHZmbHhj?=
 =?utf-8?B?c2ptTzFOcVFBU3VsR3VzcUdLd1lwdW44TDRDWmRVSzVHR2djTzZudzVwVGJs?=
 =?utf-8?B?bGNVdFJHeTNVUTZtMHlVekFwSVhvTTNVaUQ0b3FiYjV5RUZYcnQ2cFBQN2Iy?=
 =?utf-8?B?WFl5NnRwQks3MWdnMU5Ld0ptYTNRYXZRRG1lZU45cnBRYUhCR3JiRjNOSHNn?=
 =?utf-8?B?OTlPS0l3dy9oYnptVzlCTjlyMUlUK0xMRWJiaVpDS0RBR2xKV3VDYSs0WGRt?=
 =?utf-8?B?VmpRZkgvN1lOakE3V3NCcUdreERPaEtNaFBNR0h6U0x1M3ZPNlplV2FvcVpz?=
 =?utf-8?B?QVN6L0tqYUFGZGhub3F3R3RNZ2hQTTNKYWdnc2E4VS8wemM3ZDlreEJxS051?=
 =?utf-8?B?cXF0QTVMK1ZTaDlWdHdIUDRyVVNRK0hXdHEybmErZzhMT1VjaFlnQXpIM1Rh?=
 =?utf-8?B?dUpxZUtORitrVVI5UTNrMzdHbDR0LzNCSFI2TXhxWmJ4VEdYUHk1NmpLVkN3?=
 =?utf-8?B?cWhvQmQxejViWnFVSlB5NTRxL0x5VUp1c2ZXdExTbUtheDJQWnl1ZzRqUDZL?=
 =?utf-8?B?enEyb1FjeWxhTjdpVCtpQWpiOFpiYUxTRFhJV0ZlZ3A1dHdDdXdjZU4xTWdi?=
 =?utf-8?B?aWVnS1Y1Qmx6UDhCcVhKRWxzS2pFTHk0U3puU2NheURBNVY5WDFYNzFWL3dO?=
 =?utf-8?B?Z0RIcHJRbm1CSEExdjd6MmJtbEZKL3QrY1dTcWF0RmIrQXRhNHFNWXFXOHBo?=
 =?utf-8?B?QkxYNmd5a0tINUEwRlorSUY0M1VYVWhQSk5lWVhISzFNeUlEN1BVdWkyTlNN?=
 =?utf-8?B?R3JLdWxyQW1MTDV1NndrZnUwNHNzSVRTNVZwYjYwc29VaXhmUU4zZDJvb2pZ?=
 =?utf-8?B?Uld6RkJjRnluT0ZlNHdmaGtRN0plVys0bjcxWkNVOHBIS0pEa1poY2Y5ZHlM?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	rNa1TLZ+4f920rRxin8I7vgHy/cuvuPdBKgoxM/wbHIiQXY+mUcN6qOMvDa+Fx7wpq+l/blGeugS6l68KGAbH9fUEjowgiZ71RnLAEyC7xR15rPP7GYuW7sxSfam1beWYiG6PUWKHxqn0VyiEu3v/4Xn9WLe5GS6VnkbRG3VVYnNl9s8gkzTTrFFv954iPH+/sEr3tEK6jboVZA0m+ORUZP0CFQYz9jdDAOj5rGJ8xRpDsq6A4fDuvRjAFw5kD3au9KPkjxkoJ44pgw+/MtfepKMP9fM8t55QpuguQ2B1dsUpMgGsCTFEgmh1NGrF0fB8D4beE///4aYP77JoWfTtZ1ZQjoZedF/GkRTe5QeeySkbVO9Dc2FHQlFtJjImvVbV8ZYC/PcYqT76FS0ei23joPg8GHiB8YhRkF8qO0i7CCV6YT4AGbc5l+HaXaC/LuKFPFxqYgIls82o5NmkoS+szbQZ+1D9qw820lhjJqktCIPHuSBkbM9jlWCR1UUigVBmRwmG76DOUZNnU4Q2NvkrwLAdkmVnYDF4i/OVGXrmno8mTfFlbqXmVcLZ3b2E2/bfqxDcHN2U3QbwO8c91DzhNKenwMjo8vbGQepmJHObjg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75a41d24-8e4b-4917-3d1d-08dda4d1cf40
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2025 08:11:59.6234
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vRcn5ugmcbV4TxNMLSvZtnBAP8RJmfE3UaVrTCikIda5rcxXf+wSZhqYfjHcFyke1SoOI5tXUW2Otu/mcTp+qxw0CmHortPz/7KBFzOvbmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6701
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-06_02,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2506060075
X-Proofpoint-GUID: iGK3X7-_hvPGzFr2SpSxVnHB9Xf21MP0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA2MDA3NSBTYWx0ZWRfX5RBJufpQULGo qt7H8dfe5SuRGzbGCFRUd1a+3hdTo0p7O0r4Kp1P82nVlMpqPRFW2wOQD7fTGfFwjPNJyWx3lsX NWEydF7dfoN3JwKtIUEQ+oJ+8Xc+ntw5f1O+1840hF+5YhCQKGdMnW95DJ1DJSoq2f3coEVlXRM
 OCOFRcFq5cyDY6pChlmdZcmVjT7HFVUyPpxKXczwqJJrbJ8XqoEun1tYd/COBgdIuxar17RzBVK OdNedBIp1c0uyc06HGGjyRI3ldcigedeOpDqbeLYiYR1ROnuh7Ktq1Gs6MY6VFUltbEUlOoSImU Z0VK4M+Pqdma7V52yy2WNJyLHYqKMuRjRnv23ZgDxhyVznxC/pYiBVeDE84mAM+wMoMGE6U5tEw
 q4RPj7X9qzQJe7ZM25bsY+E6JnnzVUR8tYwe0XRav7SVeNNks6zau7FaSYYH93gjBx+dSldg
X-Authority-Analysis: v=2.4 cv=KaTSsRYD c=1 sm=1 tr=0 ts=6842a2d2 b=1 cx=c_pps a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=XkRKQH6RAAAA:8 a=VwQbUJbxAAAA:8 a=mAwFNpEdkUHTDLeqNrcA:9 a=QEXdDO2ut3YA:10 a=1gUyE30hU_ULiMxJiLUW:22
X-Proofpoint-ORIG-GUID: iGK3X7-_hvPGzFr2SpSxVnHB9Xf21MP0
Subject: Re: [oss-security] Local information disclosure in apport and
 systemd-coredump


On 06/06/2025 03:49, Solar Designer wrote:> On Thu, Jun 05, 2025 at
05:31:41AM +0200, Solar Designer wrote:
>> This general issue in the Linux kernel is indeed not new:
>> 
>> https://www.openwall.com/lists/oss-security/2012/02/08/2 
>> https://www.openwall.com/lists/kernel-hardening/2012/02/10/1
>> 
>> As I recall, grsecurity's fix already available by the time was to
>> have globally unique exec_id's and compare against those before
>> allowing procfs file access.
> 
>> As described by Jason A. Donenfeld and Djalal Harouni back then,
>> this flavor of confused deputy attacks is even more usable for
>> reading the target SUID/SGID/setcap process info, such as for ASLR
>> bypass, which doesn't require unusual permissions on the
>> corresponding special files. Has this aspect been addressed in
>> upstream Linux at all?  I'm sorry I haven't been following this
>> since 2012.
> 
> I tried to refresh my memory on this and found that Djalal Harouni 
> attempted to upstream this sort of fix in March 2012:
> 
> https://www.openwall.com/lists/kernel-hardening/2012/03/10/
> 
> and got some feedback/criticism from Linus Torvalds and a few others
> in the next couple of days.  Then the thread proceeds into another
> related topic ("CLONE_PARENT shouldn't allow to set ->exit_signal" by
> Oleg Nesterov, which I see actually got in, and "Potentially this
> change allows to kill self_exec_id/parent_exec_id", which are an
> earlier mechanism of non-unique IDs originating from my -ow patches)
> and ends on March 18.  So nothing further happened, it seems?

I started a discussion with security@kernel.org in February 2022 with a
handful of replies on the same day, I attempted to restart the
conversation in June 2022 and got a couple of replies, but no
conclusion. A few patches were tested out, but (IIRC) all of them broke
userspace in some way.

ns_last_pid isn't a security issue by itself (as you can always loop the
pid space, like Qualys did), but it's worrisome that we don't have a
general solution to this problem in the kernel -- and that's why I opted
to just fix newgrp in July 2023 as it was an obvious vector.


Vegard
