Received: (qmail 11354 invoked by uid 550); 11 May 2026 17:20:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11330 invoked from network); 11 May 2026 17:20:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=dleCZhA0/2bMpp+WBcus8f35b7tZ64/V2YVdJpD2TbQ=; b=
	FPtRRICrgX4fKDyvdSpAdtHuQw+R07vfr2zF/DI7A0u84j8p+GzcmGuoS9EoYG5b
	yz08KxwsBWEIgh2CrBNHEbv/NmgdH2sbCpjuWc9GfLuFmMBgZmB81HViF2oqafr3
	Xp3l2/myah1mYsYlif4MehjWXGng7yNnbmKn573+LSS/XM59Nrq4FTVK3Yq6GGd1
	6GkeD1J6Uz6nwJ5Q8UG9aWInSEE3dxiQtKoCEpkUaZvergAVu//kXAWiYVUv4Y6H
	qcQb6fI5YE1OPvV0UX5u78r+5a1t/X/fHCepLXt2lt6DskRlZkDas39szUlnS8+w
	KdD5+kPRQYAt3IDf1n5c8A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BLmxynNNP0ofdvxGSjtrhUO06PZ0/RsDTMd01niYBbmw/riK0BIW2lX4iIUBbLcNAq7qRhFJKnt7Psa1RYbmkX+Vk1MuJNi9RpbgE2IOOQwkb/+ZP+lEqXGjZ8/oxBc/4lojlrELQt1Cy0euaIZp0xv2YrY88aGskEleSyrrgBLlHPQPnW6pWae+x79jHMUbVxj//1ai7A6PQly5FQtPKphSx+yfJcX9hkUbgBtDSvBZ48GKZwDlYQy8AYUVomPOgiKRpnR9biNzDW0xKGYp57Vx+5osF6gmWZpUiyDTDpOWD5Y5xHdtENG3zeLnWX4Al3SVqKdRieehNN60SBgmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dleCZhA0/2bMpp+WBcus8f35b7tZ64/V2YVdJpD2TbQ=;
 b=mO1eI4jA+fP4LqFeoA6KR6qFBi/p5FhvPlSNvjvQ3nfvHSzRW940vOGiSrvvtI/ns09BRVUUnxnmhxwcg7raSe/DexWqFIFmJA32CT680fx0UmK/fpykh1M/thL3tnfHdx69OcqbNA1E2DYJ0l0X3XPZx7dAiRM/PZu1Zyma2glxK8cjF1YWJh5KAmiVeERBoVpySixMY0kLhC9wy4BYn81lQnn47CNPq9t/qt218fCfD2hwaRnq+GWvZRoeW4iz66T5oaHFrZ9B4CN0Mp8E+8nAku/DpDr+K56BjJqbjlXz36pkGrp3jKeojjQIV2YsXacS2uyRE+ziXr7AqXsoCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dleCZhA0/2bMpp+WBcus8f35b7tZ64/V2YVdJpD2TbQ=;
 b=tZTx5K++l8xZ7aftXAzmqrLBVKvuJx1Eh79EKZC0LKTqaAaRdoTmqXnDn81axVIgHzIXpnxuyc9P2JiXZcuzqVfVojjNV6PQxzdbOR8bPfI43WnufJ+/4xDfMLlg5joHgl8b1VCRgUOvDnUlS52BQE5F1Ph8VhROfXmGfegrKRE=
Message-ID: <82e499f9-6702-457b-8e11-7d2d588db44e@oracle.com>
Date: Mon, 11 May 2026 10:20:10 -0700
User-Agent: Mozilla Thunderbird
References: <CAEMnaZL6=W00c8WyZjJykbHyTz67c5BsFVe4L3oKg-A_tx8Gmg@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAEMnaZL6=W00c8WyZjJykbHyTz67c5BsFVe4L3oKg-A_tx8Gmg@mail.gmail.com>
X-Forwarded-Message-Id: <CAEMnaZL6=W00c8WyZjJykbHyTz67c5BsFVe4L3oKg-A_tx8Gmg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0201.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::26) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA3PR10MB7043:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d4452a5-ab64-43b8-dc39-08deaf818fb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|4022899009|366016|1800799024|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	YKuoTvjT0W34YPUYCSYQTCRZpIQkoy+oc0zCrCu3Lspj6UImAmlZH4OgByYekerPhaVZ3rZGmlSZ0nagJX5XW08Z0H+kx98KKIjMLCrF8nZyKJlivFxK1mpBxyr6aBzW3Ami9FzEpg2YT1AMsUgJAhPjSqw9S31jjpBm5Q+b053sTf7SoiDBPZj7oEepQkCuRfbfNIZvFSV2uK7DjCIbxQCZrX2Le4VGFBFNZyAwbJAPcOKunWcbqmhxtu+5/t2N9M0jalc/hnf22mt0BCJKZMatYUBbBukrPIc3uWPUofFUfowkBPo9ZIpveAOBTZ1729tpWeGTOL6IDIgked2yfc+sHUguuhhWqYIx0dMh2Nu2qK5QlZ8BtgYkUI6EA+bdjidbXaB+BOcmTuHs5LNWoC6ClRVhmUgG7Ryi01imNgrBNsS/u0acMgKjSWTGUtSgc67666RTNadKe7BoBF0tislkOuBJwm99eIcVkVHFQkFuHxKVy+0GtliuguwLhjIuKvTGwHwwV/cWGOrQ2EJS/Z+hGysnpPc1URXstohV7CphhnEK0tLLoTDbYKsiC18+td3WUNwC/NZpkfaWT6ILyOE/Mb+DPR/h9/PGNX/MQHSGR6ry55E6hOUxMVCAQl57hM7XPlEym2TJ35rOpeGzdQpn3wTn/Ay2n0lQvAme/eveUw+DeAvddy6nboXHyVHl
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YlFsaEQ4aWtVcUs5UUM2UzJNaEpjSkR6VXFxVGY4cE1MSDFUNU42dmk2Y3p4?=
 =?utf-8?B?Qzdka243SFpZRlBtSURPWDR2VnpHQS9IZFNlV1B1alEybzZlNkpQUmtjZUdp?=
 =?utf-8?B?Y1dvbi9hMTNYTHN5eWN1V2ZqdzhtTHJtQlpCTDFXdGhsMS9DamZPUzkrQzAv?=
 =?utf-8?B?QSswUjhndzFIT2Iwb0k5c0YxWHdQd1IxUysxaFYyTHlVRmptSWpOVkRiQjdK?=
 =?utf-8?B?bHdLY0VsNGpRbmd6QkFha2VjZzdwQ3B6ZHUybS9KSWhlemMvTWhzTERnTHZp?=
 =?utf-8?B?V1V2eGhwMjdKYlVVd1B4VkJKc0VENDR5ajdWN3NRaEkrSmxwc3psOFZ6Y2ht?=
 =?utf-8?B?L3RPU0wvWlBlbWhWYTQvZTN1SFp4Q1Y0WmNLMkxkTGR5V1ljYVhNYStRUDlo?=
 =?utf-8?B?VklxU1NqeVE1Q1NLSVB0aHN4NkFYWUZqNzdQRnZSV1FvVExaNFU0UWpXZ2lT?=
 =?utf-8?B?QytKaDRGWFN5UE96bEFPSWVLQnZ6cGtLV1FnQ3ZoRXhvUTB6cWVMbGhXVzlY?=
 =?utf-8?B?ZkdKNWlEMXhyall2VTNlaFpnUUpQOWM3R1FTKytQK2pTL21MbU0xN3dTb2lV?=
 =?utf-8?B?OWVrYVVUcEhVWEpWUjBSV3JqT0NyTXFCWGF3UVBoanFsOEJtMlBKNUJoUGEv?=
 =?utf-8?B?V2dPcFhZNDNEUE15NU9meEZIeHAxb29KMFlQQkFTdnZScTRrK0lVanFnWlh3?=
 =?utf-8?B?NW8yVGxEUlFFVWNSRzVaNm5rNTVmeVFmbHhXblBLQ3BqY1FKaDN1N2JBTFBq?=
 =?utf-8?B?Z3pReXpZMCtHVG5memFkdllPbVlFMHRwM0ViRGxCVmxKUVNlVUFwOVlFOGFB?=
 =?utf-8?B?YWxhMDRwcVY3R0h4Z3ZoRm83UzFEd29LdWQ3dTdCS2NWdDFkaDVoai8wUElS?=
 =?utf-8?B?WGJORFR2eHV2L1cvaGM4Szh4cnBQSUlyRkw1QUFWN1NSeTZUYStmTGYrV0hD?=
 =?utf-8?B?VXhNV2FjaUgxcnBOL2hqSHd3dVQyTnFmWG1MeXFObXNGV3VLUWNPYU5vdU9q?=
 =?utf-8?B?QVgraG1LbHZnVWN5eTBvNk1BTi9oeW5jeDFLcFU1RFdjQ1NWMFNEb2kwc1RI?=
 =?utf-8?B?MlRIbGVsdmdwZE14K0puZEdTWmtaYm91K2NlUGZXL21NL3pOK3hWZnZYWDF6?=
 =?utf-8?B?Wm1UbWpBOWtYUk1aVy9NVWlmQXBPbDg5bFowNUlSRkR4Z3VZQktCbCs1Z21u?=
 =?utf-8?B?MGNzZTdlWUpaY2VGM1BsR2lTMDEzR1ovSFVFeXZLUUNGbDQzaEtwemxJRE0r?=
 =?utf-8?B?clF6Vm1yanNQVGloN2FLeklJVkc1dDVmUmdQWFYrVkdXdkZFMDVCOXJBMXRy?=
 =?utf-8?B?TDBTRzA2eVVJbnNFRUM1UUI2WGJ1L2FBSGM4clh3Vzl1elpmRCt4QWhSdEgx?=
 =?utf-8?B?SjNaNnRET0ZUN0NIYUdOSGpIWG9LbU10VDFlLzd5cHZlMUhFVmpYNVovTldW?=
 =?utf-8?B?UzNUSHAwSHBjTEFHRytrTmhsNndGaWhYdXJmYldrN2ZNYW1hRzlPMFkyNE9U?=
 =?utf-8?B?V25FbXVtYjRYcEdSTVk2RHVUSWx4bktBZEpVRmNPQlUvTER3MEhmcjJUYUNw?=
 =?utf-8?B?U0pCeDkwYlpIbDZScFUxUDMzTHViOFpzNHBoRDMvWVpNeWM3aHRRRlVjWFBF?=
 =?utf-8?B?d1pnR3lYeEZjL21tOUVRQTM1TXJja21KcEc0Wm14Vm55bVRTcG45L3hIMUdy?=
 =?utf-8?B?UjVGUEJXOWttbElpVktWSGNHczhWSHVIWSsyb0xya2ozQS8rMTZYS3QwRkhB?=
 =?utf-8?B?LzlRMXM2M0M4ampJclRIMmtqRjMyeWRLN2dYdGp0NWd3Q2FXbTNNNHkwNU9j?=
 =?utf-8?B?MWJORHh5UEptRUhWS3M5LzgrVVNuK0pZZHIzb3kyNnZHOFNKV1hlcGU5bVRL?=
 =?utf-8?B?N3RMWGMzVFh6WS8rc1NaeWdCSWNsNGlSVU1uanF5dm1jSzF0RWlRVzloQnV4?=
 =?utf-8?B?TGFpV0xvZzYveDhUaElQZUo3UGxLUElURTNtcWd2cThnb2dCdi9BSFE4dzlq?=
 =?utf-8?B?VkZMSWNrdWsvNFQvQ2xjUHFFV1RCOExyT3c5ZHYyRCtFVEwrVjBpR21JRURs?=
 =?utf-8?B?MU5LYzZRUjFOOG1sYmVtczU1NFZPQzF4d1c4M3hjZ1dSR3FRYWZqTWdMWTFD?=
 =?utf-8?B?czVHdkprVGkrYWkySlUwYWEveDMrSFVEMXUyZDEvaTl1MDdqQzNaYTZxeFcr?=
 =?utf-8?B?bjBUeUxFbDFBdUdPcWlBcXVia3cvOGNza3Y4QUx2bjdrQlF0bmd1UnJBTWNY?=
 =?utf-8?B?V3VQWGkvUGNDWlBhNExGT2R4ZEcvR0dsWVdPcnF0REhkczcrTWlISk5jVkdz?=
 =?utf-8?B?c2lsRG5lOHZrM2pSYUt6YUNXdU1ZS3ZBMXRhRHhXUFJyMmp0UjVtcjBFQXli?=
 =?utf-8?Q?yqGZjK/BIaXoEBH8=3D?=
X-Exchange-RoutingPolicyChecked:
	BDqrrH0W8GpKxfZdBqGcrCISLO/8AsxTE5QwmndHvlS/aE1FncDQ3p3GpCXIKM26YX9hSkIQ3EAoVhCIan4SSPk4IluX0wMxIn0io6A7sY65DDyl1IQpGy0KJfhsWnQGr6GlmW3L307S0i9X1eanyCSsm0vslhh5qZCm2/tUz5jwPLsU6+3bXm7Bj+V/f1toUj88NSohTeJlNHmCII1O/qVMQV+kYrKcHoO/DrZDU7DLVmix2S+68qAuxzUJivwo9WTFmd9rc2kRgPiJcf6Dl23TrBZg+mD21ofa+d1NcfO9d7UgZ+I/P4zgdFVnkMO6wdftYKiDoC9d0hyNBeycoQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	pxXVAEe5BnkHIN700I+wC8QvRqi4sc/umiY1ew/VZBvZ+lTXAbQLtuMCjsU+WOwkFvUHtFs8lIL8T+Nb+kzobfhDCKj3E66WkWjU640GpmWEXsnvJLdqkj8n4Wan/ubqeXjeAiVhKwtvAKZJ0l4VrCP1s0X3h7c3z+JyyFdmYMV67aCantwNAL/j09r9I3POkXyI+G473tRosx2Idg04kMJOnPKfl8agZ1sb+B2FpXlBxjdmsSk5JZSWOXsJWYw5gr/mnApAHPBoxBzeOypWxPbK4vcvIBtAlkiYZoi5/kpgrKCJNM+3AAVC4xjclqst5F+mu4towkiysQjxFfor8sfGlK1Ux/0vdjfXQX2PLQ7xkvxSUtRj6VfoKFgN/LnPvD8/XwzckSqGobY1RC6CWXK8bTUcqO3cp1PzfT/lUlqNeefI+nY1xqXGkbhogvjK9SCvtPmH25iWU6wkpLf4ZWKa0qouc1y3+QnOhzFX78IAfT3puu94PmRgGR31XeSGetLg5WCgOcvKhe2zNpjVol1cM6bIBnWSQWeXoNkXDEcVgDNIk3gwx8O7gy9KqUudCCLrhSvY+b4YJcjy4VmxegTt2Cso/TsXrxen1AVpLjU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4452a5-ab64-43b8-dc39-08deaf818fb8
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 17:20:13.2917
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJL4tkZks2bJaMBbB+M45F4owbM/cwnIJ/adrrIfR3yn8JB8M+cz5rs9tlO3WCQOkTXjP2ua4r9RdCLTyp3KNn/roqnfHI0fAjZvwhPkpJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR10MB7043
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2605110185
X-Proofpoint-ORIG-GUID: KiA-Th3cnHH3kCFCv6cE9CfsPNKHVUZT
X-Proofpoint-GUID: KiA-Th3cnHH3kCFCv6cE9CfsPNKHVUZT
X-Authority-Analysis: v=2.4 cv=NrrhtcdJ c=1 sm=1 tr=0 ts=6a020fd3 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=pGLkceISAAAA:8 a=moRCpCgcvZpMUZgs-3sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22
 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:13839
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDE4NSBTYWx0ZWRfX4RHL8E4zEGeZ
 se+jR8zIxodn+Kd2UECLQhhSc9DrXw4cQCEo1/coYNq2ml4srP11Y/nVQsd4iU3AmjPEZ7ggeip
 mWZABRDYzC7qk3tfND1tMb2PPfaHApEImC2lbj8zh0+bwOPuZU6hLKzxWaHwiyRjD2ssaFnZar/
 4Pd+EDaORreKj/dPe0Oc3kNJwxsz2GdEQUgQLlpKJ2aguDc5dkvD6rZ1287LLIKPd0Bt2p/ppiO
 OVj/2nbj+CUhs4MCaEANe4gy61kqBfUFgYYzNk2ddLbpoklxaL/tFrgTsP3F4/cAPWlglWoLMeH
 r1BTjotxw2bozIfwx31SgciT973IIOt/tRwR6C0dLjTIKQcLgYqqecYXuaYyX4qAUOTKcgVfgKo
 Ewe+0ZLZYIUv+G7NV2VG6nl98AOxznncClfZRO9u5BHM2ZAZtclffety6fRJ+QpiZbN40XPVvLh
 Y8m3ScNuX1fts12v/Al6HqQ9pi93OGfQj0/i0lQo=
Subject: [oss-security][CVE-2026-7210] Cpython: The expat and elementtree
 parsers use insufficient entropy for XML hash-flooding protection




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-7210] The expat and elementtree parsers use insufficient entropy for XML hash-flooding protection
Date: 	Mon, 11 May 2026 17:58:49 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org
CC: 	Stan Ulbrych <stanulbrych@gmail.com>



There is a MEDIUM severity vulnerability affecting CPython.

`xml.parsers.expat` and `xml.etree.ElementTree` use insufficient entropy for Expat hash-flooding protection, which allows a crafted XML document to trigger hash flooding.

Fully mitigating this vulnerability requires both updating libexpat to 2.8.0 or later and applying this patch.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-7210
* https://github.com/python/cpython/pull/149023

Best regards,
   Stan Ulbrych.
_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org


