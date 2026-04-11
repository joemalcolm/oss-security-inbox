Received: (qmail 30485 invoked by uid 550); 11 Apr 2026 01:46:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30450 invoked from network); 11 Apr 2026 01:46:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=NX/dZRSuKMhhV7Z8fnvq6Sql1kGJVj6/T9A6jYZCk5o=; b=
	RhG7izyS/ygLidmemv/+a8P8eSyPzIsiT6hojY+EL0BPvINRLyftQv2FCaYrw45+
	KYlAkA7uDKZ3Kt0aaZytXb0eBlokVGGTOCERp/FkOqfkQLFFxlX5kK/ogsHWuHgH
	iJpdWDzrwwqWplEagiPzXaqEZjkdpMYg1ORNgvFgYrM9oXqQNahPERlKZ3RIvsWS
	8677uwKBle6whJcWqJpyUPhxjpeZ9HvZOHD5GB5xMHbnaiOS4D/tWw5NdKzPzgm4
	bmQtIpjCxwnBpFcz5aZdIDilIqV6Yx3obozZo5noLzRrfMbW5e9PyRgVwo8S7AcG
	rqUeHEQTa9u/C6yJRlkRmA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=auTbl4IcSWPEm7J5DV5scZTeAoAs7DDWCT+EpTTfbMAlcc6aM02GRJeYGM7Y780vCRAcHD0EnrT5OkDOiNy5AaxjWXyxwu/w9rJUr/FJT3ViPhfFPR9oXzZRRIa0f414+iLznWA3udfTO/dmMV1Ioln3xszDKCeYtwHn/HfTIxzcf/+oRbQPpBCbZspT/Y+IEdVdlB/fDzoCp+UwWu1BOpTVV+4j2N64hQBcCmFj8iJGR1mqW9pzXySh0L93DS+n27QSyTsd/s2y9ce6X9Ji9XN14tSfxpEiit5f6fRdjmb/iiZgri602smcygQ41U0uAR99W5P9dJjmVAStWQEYjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NX/dZRSuKMhhV7Z8fnvq6Sql1kGJVj6/T9A6jYZCk5o=;
 b=rE3yF37OiHw45ZumfoN3qts6QYt3yPk6hC3xboB+9snkkyZGPGngMkclDQA5OS6Y9pg4zpxIygtTnZ8f1vEb/4Gehad0v/xGEuNmM4rN0WogfQjfASjJ2deCLKZLmtKNC0CEyDv0dDOCbV78QW82GVymewcIagzgUOScpZ8P515LN1++TqAUIksca6uSxi0zn21gDK9fzdXbkQC64Sh6tssb5bKu4+B8qFsF+et9kYtAmeVO6iYQZoB2gxZAEcN5RtqlUs9WErM0FRXcI/DMWtm+mZ/vcuDM9jNwthiGQgdL7mggGP9J3Lrdlz219/2m3EGmLcbuYbFS1NKnQSB1mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NX/dZRSuKMhhV7Z8fnvq6Sql1kGJVj6/T9A6jYZCk5o=;
 b=RQ4l+4E7XIgR692QQpmI6vt9KraZRzZEclMfMlqlTFnXuRG7Z+YNYzWIojZoM6gkNC4zH/FfhcUzd5omD6op/Fuf5EJouQAgdzHJVxGuwEv9HVjjVYZVQJAB9s+31zEaKezKnWlO/4SP3OvQ0M+hEXdj5L72rK9mjYqfW+sdkLM=
Message-ID: <2abc0385-4e58-4e2d-892d-53a78262aefd@oracle.com>
Date: Fri, 10 Apr 2026 18:46:29 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPST0S=7pCYJp4NX2U7E4rv8Cx7rc1jFxiBPxJ0Y-b==NQ@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPST0S=7pCYJp4NX2U7E4rv8Cx7rc1jFxiBPxJ0Y-b==NQ@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPST0S=7pCYJp4NX2U7E4rv8Cx7rc1jFxiBPxJ0Y-b==NQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::20) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA1PR10MB7683:EE_
X-MS-Office365-Filtering-Correlation-Id: 654ac5fb-ab12-4dbe-e28d-08de976c27ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	Ss7YVjmGQSRyAVAdtKfWp/KN3s2vJw8KyAzydGNSN7Bb+38HGqxdF/LgEonqcLp9AS1KoOTHAVve+pUGTsWd0//8JsbOHiym5jox+Ejp4n8TuR6BN41Wa04hWgr1vM8Qp5NiPGpNdAwtIhuZurtjXxnrbsCt+7rwMjZnfPcOYAXkAjLOLrZjdTwGFtB4NwaJBymnwSvxZh9WN5+K5NQOL8s7NffU1zrZOrNy63LwL2OLSOw+YaHIW+C/cgJep9tDvZb96r2Vo0ITQsiGZLZ3+jl6wVtkQ5koii/E9+0aphRjVvY+XLT3Q2wYAo/F6zEIfM1jPC8aY/M6POZSD0Wad7l8wSEF4qUF40oxBJpuhx5qqmqCiY64YukkqTFJOfRxx81FdXxlncYVsUcliI9IV7aKpo1kvhboFkMZ+WYkXKMZNveduuTDM8ndP9c6WHAUUpO16LzksYxGuHOhu9aOutOcGvXEDg1v0iE4c670fvXjjJ+5qfCbP5nijl4h8Nyzgta7PttvtdzezpEsQha/cLwV7bAh2wjaVaGp5zoxPAvJLYNLVht6cIxMdaCZ8QfPywlcEkTmAsp7+E6L0V5EFITXilWld1S9smNplesuE8+k/XlZcAZn71XZAsKIKXvRcXKMUk5j1+jXsgLDDFdDvjTlejjWWLGKsTFfdlh2WfZeGEKqtvFSh/AsdC2MC25jRLv4U7Wts9PFtaPpsd+s44N3ftuisMRn8luFPU+SAa7ywuEFuleAWmU0u6VC2W+x
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YXVGM1FlOFYwbWpHTXFkRWdWb2NZVmhOaHVGY2dUd2xFdXg4Y293aWMwTlRk?=
 =?utf-8?B?L0FyUE5yYUExcEZpS0c2L1ZFZU5pWGZmSDY2Znlka0g0WGdoam5aQmdhVWI0?=
 =?utf-8?B?UXYrL1Q3R3laNmd6ZXdBMFdEaG5WUEp2eENmYUFtTkgzMW9jc21wSUE3YmRz?=
 =?utf-8?B?Y3JFWGJBVFBQdE1IbXJhVlRFdUZuV0pPd2Q1RVg4djQ2Y0FmVXFONUtoaFoy?=
 =?utf-8?B?Yld1c1VhY1IzU1VTREYydE5OQVlXeUZDTmNVRjVwSlJ5dkZYK0NVYmcvQWtp?=
 =?utf-8?B?dkxscjdtQktzZXBRVVYxMXpKWWRHTU1CQyt1YXRSbkpPdW1PdlcvMElLeTJS?=
 =?utf-8?B?U2dUTmFPcTFYYytNY1A1SzF3N3hFRXV4S3IwdzBnaVVEYWdCaCt5OWVKOENM?=
 =?utf-8?B?Tld6YjRLZUlqaVoyQWJJckxMTkFEa1ZxRm9TeFdGUEZJTXg0UU85Snlhb3hP?=
 =?utf-8?B?aThXVWtybzEyTDViNGphU09UNG5NWnFuSlVyOWJiYmhUb0tkZkErRENEQXI1?=
 =?utf-8?B?T3ViY3ppem5vQ3ZGZVQ4NGVXNkVxYmVKR2VyTzA5MU5OZG04Q1gxZHd1ckdS?=
 =?utf-8?B?aUNMVlk0d1djVHRzT1BrajR5WlNNUFlvR1oxWi9WVFJyUFA1TkF0VlNPbXhB?=
 =?utf-8?B?SVdaRSs4TEtweGJMU1lXQ083R3BtQWU0R2tWK1Q4bElhU2FJaVBpNExRMmtW?=
 =?utf-8?B?UzNTazdWNnBkL3A4T1VabzNOR1ZjZEZkM3dhRjhWMHJPbVZWMVA3c1I5TmlZ?=
 =?utf-8?B?Nnpib0ZZN2lxMTIyeFc4U2RIOUpNUXVjWGhWV0Y2eFJ4aU1MRURUeC9acm9J?=
 =?utf-8?B?N09uSDhSd3RuMXQrRUs2QmdnUjFsZUZGZDU1MkxUUGpsVEJPcjBoYnBBcGdZ?=
 =?utf-8?B?SzVVajM1OXlHSVpVV0xTeU50Qmtia0V2NGxRME1XU1RsQ1E4b3JiMHYyc2J1?=
 =?utf-8?B?ODh2cXFxYldiSDk4dVp3Q3EwY281VCswaWRVZzRac0w1OU9xSHN6bDN2QXJ1?=
 =?utf-8?B?T2RSakVDN3dWTm42czFGd3hzMnpqMFd6N0ZBSnNBRTZDVUZJQ1dVcHArYThs?=
 =?utf-8?B?VVRWc2dmNWJ3RGkyNjVRcEFmaGZjVjFBRzJacDBYdjJxa21MU3liRGJiSjEx?=
 =?utf-8?B?Z1Q4Mk92bEtoczNBRnlZVXZjT2hqbVEwRXFKZVBUS0ZnV1dVWS9CYXdDWHdv?=
 =?utf-8?B?TEhyanFXNzAxSVg2THhlN3hFb3BlLzBrdGVGaUVNZ2FjUW8yRmV1cmxyQXJy?=
 =?utf-8?B?eUlHblpwWUxZZ3MxWnFTcWR0VnM1Ky9RNWlMRTB1TEo1citvSHVoTFRQREpB?=
 =?utf-8?B?WS9lMFcvaCtXaUlJcGRJZGRwZ280UEpFa3M5dTdSTmtXcko3YXlGeHhsSk1C?=
 =?utf-8?B?a0JwaEdWWVN3eFZ5cVkxZTJjcGNpNzNSZWc2RGp0QllxT0d2UWJpaVducjNu?=
 =?utf-8?B?MERsckVIbnFXQkprSGxEUHljVk14cmxZT2RNbXJXWis1d3FoNEM3VStiSC9a?=
 =?utf-8?B?a1FZR1o2Nll0Vk44cmZGZGxwV0NydEZobXcvVGRjOHhkVjdPK1dYTjVMTC85?=
 =?utf-8?B?c25Ja0tDcUU2WHVDZUgzRURhZkdQTkhjUFdONXhBZ0I2WGI1dnpQTm1YMzdM?=
 =?utf-8?B?YUhaS2Z0TFRsbTNLdDVwTmszalo0Mi9EQTkwdUhuZnRDMnBqQ01vMTA5Unpu?=
 =?utf-8?B?UXFlNGczSVUzNGlVTWFuUDlHSDhJbDllTFhTeDZ1Sld6MmVCUUxFYWZKMkhM?=
 =?utf-8?B?VkR3WUcwbFhpMHlFZFoxa1VoVHg4K3lQeGozQko5K2NrUktsT2lEWE93Y3Zo?=
 =?utf-8?B?anp2OEJ1WXY5Y21abmZJTnRWSDE3Y1ZRVS80NWx5NVhSMVMzYTlnbjN5SHZx?=
 =?utf-8?B?OHpzcWkwS1JwOGFZVTQ5UnpsTEJzZXRSVFRRdEIyZHJoTkRGTmUxN2tvUUlv?=
 =?utf-8?B?eVYzZ3grd2xrUGJRVjRXSW9PU1VwMkw5cUp6NStSRFRKdCs4SEhLalNybHhi?=
 =?utf-8?B?VlRLOGNrK0pXTFhhU3o5dFhUaDRzckFLSmFkME93OXlHbWtuYjFnbWhuTEZu?=
 =?utf-8?B?SmwyN0VkbVdhUVdZMEw2VnNpQVVWRmxvMWpNYVRzc0ZuL0pHb1pXd2FPVWhy?=
 =?utf-8?B?R0N3cFZFbDYrZW1yVHNmelY3bHltRXo0NXpyMFBHeUt3VlByaUg5NVlZZU1C?=
 =?utf-8?B?QU96c2F6V1EwRGtjZjdqeHpBalNMNGFLcFlVK0tneXNhRlBZSnFETzdEemdr?=
 =?utf-8?B?WFcyNjRLSE5tY1BlVG1xall0VVVPMTRDRFJlQ01yV0NvQ1ovYkJIRzNHTFJK?=
 =?utf-8?B?dThlRmoxcHFLZGdQSmd5eEdzMUVhYWxDbnRnUmRDVlJ3YVJPV3ZwbXFsY29u?=
 =?utf-8?Q?pb8CYSzCwYVfbM+0=3D?=
X-Exchange-RoutingPolicyChecked:
	tiep+OhAvFvjct0gasdMEGJDo9zqZII0uUdtRKqxDy0TVG5MWYe+n4/VhxI+H/oeeb/LbQBxLD+ZlAZsLksImG2639Ph+bX2lvyoWFOxjK9VCSJiP4y3l/2jAaDTCrOWpeWTYMqU+NDZmEzP7wP6CFzbulAwyJxrfJXJuS7k5k7f+mlBdwY+pNCAnKQ9YNZJpjPXFreYSElMok/Hf1VzhCReEREOYMhBehr+kjhUACHQggo1d/Bb2G5fZNFEBO3mZYKJAuVuSvWGK+zrPyNnGyA3SCsi6YvdGxDAgVMr7gC9WHeGR91OAQ1zpvoN2Zmi0kst89aX0BqBn5sizEZgTg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	2BRRmNNKg+caKkS45Rd912t5ssz8wX/3LPlSsChX/bVdz1ZSscbt2cf3GXiBLASWp0yXtZjyNgtNrxU3ZtYTX98hNtap3be+CwWGzK3SF4HqAh39FigbPi5pZFIPRNHArYFl6g8LaNGOBbomXoK63suCX5DNlTLx3/Fk7aP1AVJUvDX+xeRuTk3ODZKzSQD4txRIzINr4JW5OT5Yk39LnxwfBs64tsQsmldXI34KUBzm778AA7yIRo07+0KsVw+78tzAy5vJjfVBhWAhS7jnlT0UkVHr7VN3YAzr2AtVks3In9LPNP+wes5wgGieVBKrHQSp67b2s9OgpUjIPt/6gkbTxGMCK+Kogpm0kzAg5FPmrqbc2+GXf7Zidx6HJEqmH8uTvgkAhoWYffm8ZkTSABsLURL5DrwPVspJmW/ro6uIB9kgmMkPgMfV5xFDZxLfeDg4SN/5CrF4LS8soiVYBA/cffGaZulzDgWSoqY+XjlifkaQYQnXzk5rfGU8egn7od9tCfdbH6FZeDi4fHL1JpN6ZEsk6XOF+ZjKSX7GekusGEMSML4YoUWTNBGq3BbkOIVzuXBAFSuNoq5I/i9KUm+8XCmMUcIKf6I7v1Sx7UM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 654ac5fb-ab12-4dbe-e28d-08de976c27ab
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2026 01:46:31.3239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zeoz8cGreWFFiiAIs9VMgeD7K3tGKYNI+0eT7s6dcQ6dYzTgrIwZqfxoYrvMgIbl6iKo9L6oEpn49wCzlg7JO/8MziqKC4RgJ8aManTOJFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7683
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-10_07,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0 bulkscore=0
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604110012
X-Proofpoint-GUID: MzXOoEGUnEjkZ2T7G9PiaT9KpW3fvPFh
X-Proofpoint-ORIG-GUID: MzXOoEGUnEjkZ2T7G9PiaT9KpW3fvPFh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDExMDAxMyBTYWx0ZWRfX1+mPUiO4k+U9
 aDFwEnQOQfnL5zTFYemT2Dec9OsT4a8PgkwmUCyjrtMYQ7EeO0+ZdR0GbjfDSjeYTLDg48Itx1K
 u1boAk84gzE2DGZ8H6yVUA9OCyJqT+k/+S+YGr1TPCx2w4TqBX+Put4hjfdxj4g88CQ2kX2qxYZ
 9crUcpWWfB+nWZHpVPl3dPwcojtsex+rKIztBwb4mM/SJ0ioenrULnIVBdqTJz25OLWXBL4CHXg
 ifFEOEBRQ7O2uaPyfFNaKn9AIPhTIr7cBWbj+HlLpty6/Jb7jsg56+OwV1hxqJxRAj7zdnES30I
 cAyRp9nYel+xSl0KHB5/uxnekKe9hNmR01cPCYgUSlLZDN1tgcfuekU8y+cjOFBx4NP87Prg8hQ
 z8EcIa7139cbaceudBGv492DSpKCIj/0wkn8QzigFXlnn5aquRb88vW1RybtLOqvJVNPeCOiDko
 9v3liqlnfJnPT8jcldA==
X-Authority-Analysis: v=2.4 cv=DLS/JSNb c=1 sm=1 tr=0 ts=69d9a7fd b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=Vxt6yFbSbl0whUio9l0A:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=8gvLZcY7Nlvl4CGD_6nf:22
Subject: [oss-security] CPython [CVE-2026-1502] HTTP client proxy tunnel
 headers not validated for CR/LF




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-1502] HTTP client proxy tunnel headers 
not validated for CR/LF
Date: 	Fri, 10 Apr 2026 17:51:54 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

CR/LF bytes were not rejected by HTTP client proxy tunnel headers or host.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-1502
* https://github.com/python/cpython/pull/146212
