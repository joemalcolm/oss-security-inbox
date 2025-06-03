Received: (qmail 24000 invoked by uid 550); 3 Jun 2025 15:36:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7831 invoked from network); 3 Jun 2025 08:17:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=+3r/NpbHwZAfnZC1FX+2j7DzpyvHPVwZMz5HjZ12r6Y=; b=
	hJbub0/OBm8HpUmql4KPbYWaaAPa3XImkOXDnPyeIv/CzE15hxh/nFirtBtfzlRN
	CKC/qRgHElksSF+0SxlvoEU4c51pmlqEgG28oWLDiMz2h7FfPmb12Skgos4YkMsg
	cKRbMFYMWHjopRVGGJh+78iOA8RxZ2TTvpCnz3/jmPvWxsJixNzYz6G7gB9qraYe
	tdDDG+5ZoSwGNGvIg7/C63J4eGb91K25gksc3xxPXNiYKsjBmbDnFB7Lk/Bt0mBV
	gyZ+4UHuhsWdrXd/DdlR/qRhnziAQKNIbq4JOxDB4ib4UqvAulYhBGxsCwBVxIjR
	FLUXLm0BOjc87VA0L9o/dQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PWhzeHAamJbb0uL/F3llgIQKENfuRFkR+Re+eCS1+t+Zez7T5RB8mWirhsokVKiyuh8yPyGjcA9E9eBrI/1sLm1hE8Z6NggLPFwdTZEpL1RArFLqFICHXJsct7/uhHlhSrANyZp52vLO38nD+3dKRo+kh44xgQScZTa6fpPcJp/Pn7JYIEJeP24Ok19bDC8AOEqwidqITfWMD8rKUr5z82kWKJQ15efyVtYsgIrWNHaLVycY1KZ5csf9Y/BO1bNfP2qzI1VZWq6E9/RwQYynOlI574kxEt/quIAXAEMxhBuO5wXe26macVcBNr+Zd6kVP0W2h0APXsdhjRj8PgQAQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+3r/NpbHwZAfnZC1FX+2j7DzpyvHPVwZMz5HjZ12r6Y=;
 b=cku6g80ThnZ8samVsUhLciYJYTN7zCExAfwrpcsKXDxM4QM2zi6hrutxZsQFtqUGTE2EGdi3N84UN3ahRV2GDH5safhCRvjSNoDHNdKA/yR75qFPg5ZCAsx8bB2EF9YFoasVlps4j1uU4AviaCdV0B/u6m1qMfxd+U4dF0iyzfcvcP2xXIzDlLWjFBwGRLcK2sFgVKizlA2PPCM4D2NCsA2WUJLyPhv1/jYO+3MapZnZWCFB8+uLm4NKYg8wHmFYIup+e57d4qvQiWurGb+bFP07liZz06B8lPEbFIoX7Cv1opwulsZGw5N2D/kObrrk0kSRrXgjQRhGJ7Kg2gXuQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+3r/NpbHwZAfnZC1FX+2j7DzpyvHPVwZMz5HjZ12r6Y=;
 b=FMZTvH/SP4JcVebBuEj7qwFoHitbyqjbzxeDRD/54Vx/E2dX80Ne7AhZN5cd9LDhtq4sEOyZ9J6wb+HkfdwrTSpvDZZhdmsiNpCpaILG4QnzXYos8TBw4IzBPcm1SjTDUqr63d7dd4niv5PuyoQUNOjbLvZ81WZmJ4/F2qlCfIA=
Message-ID: <8d61536b-717a-444a-9649-fe6898b04e8e@oracle.com>
Date: Tue, 3 Jun 2025 10:16:52 +0200
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
        Qualys Security Advisory <qsa@qualys.com>
References: <20250529171556.GA9260@localhost.localdomain>
 <20250603040528.GA12667@openwall.com>
Content-Language: en-US
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
In-Reply-To: <20250603040528.GA12667@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0504.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1ab::23) To DM8PR10MB5430.namprd10.prod.outlook.com
 (2603:10b6:8:24::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR10MB5430:EE_|CH3PR10MB7986:EE_
X-MS-Office365-Filtering-Correlation-Id: ff8faee9-17ca-4701-cf77-08dda2770143
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RXRBS1UzZ0NrY1ZGd2RGczFncmhhbTlULzVQWXRXYlRDQmRWZ0F1Wnc4Lzdh?=
 =?utf-8?B?VWI0a0tyd3Z0UG9GS3V6b0RqWVRGNkJOMHBiU09QREZ1Z3JtNkZaaEZmY1VH?=
 =?utf-8?B?UHFqbHdVNXNqK096WDI5WGxCRXhQWC9FSkNrbnFrM0ltN3o5ZHJSMkw3Y0tY?=
 =?utf-8?B?NEhMWDdEN2xXMllaVmlxaGVIbCtDVG8xdnB3MWxGMWdBbnlUbC9QbDVOaWFw?=
 =?utf-8?B?RTUvN3VodkdFcm5uOTNQUkRlUjJOVytPNkF1UVI3SzhySlovSjhOVWlCcENw?=
 =?utf-8?B?cjFpSUFnTzRHdFZ2VTRRSHlqK1pOTlBESFZGUTZrNjZ5OUl1UkNmdk55SEtp?=
 =?utf-8?B?S25BQVFRSTJkVHJJUXA4UTk1cVpYNUZETGZSb0drd2lISWZOS3h5Ylg0RlUz?=
 =?utf-8?B?K093Y21GdWs1TEp3S3R5KzVpRmdjTW1QSnRTSTZ1S0tpUHhid1Nhc0VLbXdK?=
 =?utf-8?B?VDJ6OUxYUnBxSjZPZGpyNXY0K0JUUVJwY09naGlRcjV3RDJJbW1sQzFjZHVq?=
 =?utf-8?B?Ym9XUjg0ZUVWcGdNcHE4WUNzY0lFOU53WWQ4SlNNbk5TWFNtQTJVYWJ6VURX?=
 =?utf-8?B?bDdDYlhLMTVsUHE5VFF2QUhFRGlIVGtRUisrMlh5cDVJQVZCbEN5QUxIVkxJ?=
 =?utf-8?B?bHdjWmJJUElPTlBjSExWSjZQWlMyNFNpa3IzTkErTnY1WFNyL3FxUUFOS3o0?=
 =?utf-8?B?VmNWODJGaVNvN1l3NHQ4Q0pBY3kwT256YnROaG56TjUweDRTTW1nSnBOTGs0?=
 =?utf-8?B?R2lUelBKQWJ1azVtVEFJaWdrNmZJb0NNb1JyYkZEOVMxMFNYWk5PQ05PNU52?=
 =?utf-8?B?T2lQeUlYamRZZWlyck1NUjdVN2ZhcGxtWHdMUlA2Q2tRNmt4R1JMZXdaNzhG?=
 =?utf-8?B?SGovU2Mwczd2YmVJb2EvRE1Jem5XNnl1eGlWUmlpVjhpMnh5eVpCd0pXWmxv?=
 =?utf-8?B?bzBHZWZvTGFDendkdGxmM2hBN2Y1YXFpdmZ0dC80dVVxMjRiS20zZ2R3S3oy?=
 =?utf-8?B?UDBvR1dDRjI5WU1OaW9NcWFpRFRBdnFPajRrRk0zODlxWEJtM2dDSjQ1bTh2?=
 =?utf-8?B?Q2hMZ0VPUXlubFBEdjM1OTZPMXU4SGZJbW8ybWQrT0k1RFIrc2tWdlV5STlw?=
 =?utf-8?B?VWlOWWJtOTFOaVZib0V5dWU2MGZEbCtPbjRvQlBwZDV4cDI1M3VLMnBKYXd4?=
 =?utf-8?B?RHhvQk1mc0pOZE9pZUhNMysxU0tPblgzUlc2eVIyRnYrN0tzOVBTeG5RTVNH?=
 =?utf-8?B?amhZTHV1NW1OeHowdGVKNkdQQndjbzVWZHBudVVnTkJXZk9ORGo0WmRFVEN0?=
 =?utf-8?B?TnV0TW04WWxyMDgxbGZ5cUdvbFhzdjRjb3poTTlxQWxXSjRpSDN0SDlHb3hO?=
 =?utf-8?B?S3ZpVGMwWDZkenJrMGJ0a0sranRiK1pxQ1pDNGp1dXZqMTdNaTBnMG94MFdv?=
 =?utf-8?B?OG1QeThLK3BsVVJOQnJLVXZHcjV2bUlpQzVEZlo5Z0dlcFY3a3hOR3BISUZh?=
 =?utf-8?B?Y2I2MmI2Q2xVRzhybDROVFF0cXNrUXJqa2F2Q3hoTnhVenZFemJvNERTSTQz?=
 =?utf-8?B?VVY4Mk1UZFNYZzJyWXBUWHF1MWpxOENyYWZwNVdIOEVjVGo2OFdGMmg1Z3Rv?=
 =?utf-8?B?TVpUVW9vbHNGYUVSUjJzUWZTbWZCdkVBZkdjdWJGZzllUXBtSEdsR3hWWVhD?=
 =?utf-8?B?SFBEUUpOK2doS0t2QlRqb0lrcmp3bythYXA5b1JjNDZZRTJwcXUxRVNkeHM4?=
 =?utf-8?B?R0hvL2ZTUWwrTjVZVnRsWDdlSGNZMnRCTDE5U2cxTkIrZzB6VHlhZHEyREs4?=
 =?utf-8?B?MmNhak8wVDBZSWNQOWM5dS80MHo5OEVzUlY2UE9FamZ1d0VhQTdUaXJaN1Fs?=
 =?utf-8?Q?eD6z1vwx3yq/h?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR10MB5430.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aS95aGNEa21YaUk2ckY5NVlaUDhqZXFXVEtMYVRpYUlGVnNvQ09idEtyL3RZ?=
 =?utf-8?B?K0VYNnNFQ0Nvemp2Nk9kR2tNRFJRQ3N4dXhXd3M1MGZISUtSdCtUMGRPTFJZ?=
 =?utf-8?B?WmNQaVU2NnJxdWRzbXNqVzEyeVhiQnFKaUxCaTFSTyt0UVRBcVMwcjhINGRW?=
 =?utf-8?B?VE9WOU5RdDQ2UEU3MHFyamoxdXBOZGtHMDRjbkpUR2wvTEUwZXZhR2pVRnlF?=
 =?utf-8?B?c2UvSmJEL0NybWhTU1NiOWdBZkZtcW1VQzc4Z3V5VklrZjhrdE9uT0FyWHJs?=
 =?utf-8?B?RlU4WlRHV1dTY1lGenRDZ0RVaTNveWtsTy84dUNBWWp6SWh5U3BtNlhlektJ?=
 =?utf-8?B?R0N3VXd5VzVFMXpNWFNTeStqUERJQWZiY0FPV1VvNW1COEJVckhvZVN4K3A5?=
 =?utf-8?B?RExXOG1qclpteDRVeXc5ZEdTOGt2RmFPbjU4em5XTzJ3dEhPeG1SUFJQWHg1?=
 =?utf-8?B?NWd5ZFhISGtUMENBVzduQVA3a25yY1BnTFgvaExGWGdZY0JXUUIwaytxOFE3?=
 =?utf-8?B?UzdLeEJaYWcyaTUzVndsd0hkcmNnU0tTMitmNDAvc1JDYmJkRWphc05hbExj?=
 =?utf-8?B?bE9KZlRqY2E3eWpwLzlTMFFzYjVWZ2hsOGtxc0dqK1lQMXVPbmpYZlJMTjQv?=
 =?utf-8?B?VVRGellXam1LWU52dFNKWDNEdWx5RXBFUVAveDRoTW93ajF0bCtqcVRmejh6?=
 =?utf-8?B?T0M4elp1VktNRjh4NUI3YS83VVhHMHRXWm5tVHlvRlF3QnZINWdFTko2Tmtn?=
 =?utf-8?B?WDQ0Uzc3K3VyalNCd0padVJuUTVLZWRhQTZHM2hwLzdvN29NSGp1U1pBM05M?=
 =?utf-8?B?aVJreVRVMGhCcmUvdHZYZDdRekU2eDBBR2UvMk95U05jejVZN3RzQXIrR3c4?=
 =?utf-8?B?dGZtTTd3d0xoNzV2cHpuQmgrbzZ0anNlVmxOWkRVVWkyTG03WmtrOUFONUdJ?=
 =?utf-8?B?SnpCbGxjVlJFaGszTXN6ZFdZc2Q3aCtpMyt2U29UMFh1ZHFlOG0yTjVpZy92?=
 =?utf-8?B?bEtxNzZFeU94dzJvL2NNaFV1VWZ1SHdnbG4ycElIUDVZV2thbGMzTXlrR0x3?=
 =?utf-8?B?MnBZNkR4SUZaR3pKTHlWMTVoSk1XTXBHeXlGY1VkNnlWemJGYi9GZWl3alBV?=
 =?utf-8?B?TFV4VWZ2Mm04ZDB4UEk3NUZKcmNlb1Jnc3oyRC9GdEdnQlc5UGRPQkJoUGha?=
 =?utf-8?B?YkhGbkwxdEwyaFJ1dC9jZWdDM2krQ3AwOHlja0dUaUwyd2NYTVdvcWdnaWRM?=
 =?utf-8?B?eU16ZE9jdlhhb282NHU0Zi9uWDJGTHRNUVQ0R21pYWx5dnBoWGpxT3pHb2ox?=
 =?utf-8?B?OXZnUUlQbFF5RCsyMWJNYVZZZUVLaVFuMTNxKzMyb1Z0elZZdnQxeTZQWjB1?=
 =?utf-8?B?dWtTSnR4Y2QzVEtXc1RRNzhzK1RzR3VSU2FQd2puYjJ4algzQ2dYeUNqYmt3?=
 =?utf-8?B?UDAzbS8vTGVSN3pwY0k0VFRheFdQSXhvNDRYUGNGUkIvc3FZblM1M0habWtz?=
 =?utf-8?B?RXhDa083RXRJM1UwdE5Rb1p1M3IwTk40RmRwaTRjQ0p3cHQxOEFzTVlFRkh6?=
 =?utf-8?B?RFdPTzcwbi81QzFEM05zazNydlRGaDRHT3c5eFFEM25WaEFJaVdqZ2JlVnhj?=
 =?utf-8?B?OWJ3S1IzV1NJWGhENnordnlHS2FkazYvaGJQbU96ZXpDaHEwRGlvMmZMMVNj?=
 =?utf-8?B?eG1vM2dhSi9McmNEejYvdWpYYlBPdU5RZWhmSk5EdFVzeEtJekMxa1RQRmhW?=
 =?utf-8?B?b3JidzFvcjNPbXFTdW85OEVFNWJ1ZGdYZGk0UmRLZ0hxeFp1eHZqdlRkd2tx?=
 =?utf-8?B?QTdYMjY5YXJhM1FwV0kwNVpIanFwdGIxTDc3RWlEUWNPWTNtQnJkRi93MmVp?=
 =?utf-8?B?MXhwcHV4Q2NsbUQ1R0VnOUpNNnF1MllwaW1acEo1eG5BRHo0dGRFRlpVR0h6?=
 =?utf-8?B?TnQ5VkF0eHkyYTRrRG1lRUp2WlJremZQb0J2a3AvdWM1NTBDOEpRUWtuR1FG?=
 =?utf-8?B?TCtWeXM2N3BGYm9tK0Q5OVJEZHhQOWk3NFBkLzM3TmNsSnRMaVpoV3Mxa2ND?=
 =?utf-8?B?Tkc4WmVSUCt3M2hMM2JKUjI3b0xzczI1S3BEWHVzbUIzbzFGUGFjZ0lyaUV6?=
 =?utf-8?B?bXpUUTIvVFlPNytsVG9oWVl3dmVWUHJHTTlrTVBBWjg1STlVUkZWVkN3dE8y?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	DtiheqDjqe5WY6031pN9HCi2QZ4kewuOkeOF11vC0LdccH/NkEbkINuwlMLrCpL082SCtBSjrbl4BXFoKCzjoqFLmeZA46MteFEz6h76zf4gtOCNnN9xMK2vRAd3JmNRJ+N86x1y0QWBVfH4AcN9wMOm8/T+v9g24mj3ws1zjntEfyRu92AqkbQB57ZlUDa6p38zFwyoRND6nB5+hWLBlNpBURc8d8/Fl7nES0rBMbmGGtCUer0CRyCWoIkk0ykuZzn9OfaT5eevKLWmyV+fndT/7E2HxUvluVJE2jrzT4VQicFM2DFLUBIqyuOAIM+P4ksKl5yPU10rxtg+Z1TLjr2+74X4kxQYFFoRqvYLfh8vXNxLbXvzPldwV8JmMfPJaUf64OUaNGI8By0Z8pptOwMm8LSKEZIjH8skPax49DA/HZjTHCEwkBrdOnf13xE0ooToyTnbT0yttqT5Pa4AEoBmg2iOJC517TZdwPnsK0FVhde7GE6WNQNg/5sFSj/rvkTomYH6p7TcDuZJPAdA+b2gSDcxOECcIY6fywTeWBLQnz2/D+oPsuQKtMgtiZV3XlKfolyoGWjMr0tGVHeGEujBOL+4dRpZnT7hlZc6hzc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff8faee9-17ca-4701-cf77-08dda2770143
X-MS-Exchange-CrossTenant-AuthSource: DM8PR10MB5430.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 08:16:59.3493
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dOe5o5r09GUfOvrhr91zRfYXwGL3I7rNVXhFPfAQzb7v5SAlGWcuqn1y6YL2aND8jeHO4ah7d36RSuF4pVwPq18TCHi5uVEVW1lfUyYtbmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7986
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 mlxscore=0 adultscore=0
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506030071
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA3MSBTYWx0ZWRfX5Y2VYAkCZ18R kjeVqldVqlBMv9FWBdlqjPKwlXGJkxmqUhhVqXWdM19j9/8XlHVN5SMhqF6Zi6rbWzG7W7Yianf ZPvm/ELQ7/w90dKPJLV9RXJsb5wXoXOdvble84Pto/VyA0NT+bh5ruc4S/N75eO1YxWHxRr4Dwi
 KFPGir3kvrob6t0D9ijhtTRtpntyUDln1P2kP+fYWDUV0UE2BR3kiDbJdY6MU0UThv+i8aTBk9H kr05gw3RnsRpvi67KwNm5pRbnfhFj2Wl4OREiop1+dN3dmdFBoLFkjr1J8t6fuV0cTR3uFz+9II oLSpr5by423jA/OuvQwBp8gXyDBe8piBA2QETtX+taFSh1st+7phBdmRfq8hjnqtO+5PhvRKGkh
 SNRDIM0jQfQXzIfTerXvolfKPrRE7om3jHOs60rSAQAKuLcoV4Xmzb1d1KAi7JmK16qyRGS7
X-Proofpoint-GUID: 2ADVdnjrvDcFnrozR0LNuFZFapquasRB
X-Proofpoint-ORIG-GUID: 2ADVdnjrvDcFnrozR0LNuFZFapquasRB
X-Authority-Analysis: v=2.4 cv=H+Dbw/Yi c=1 sm=1 tr=0 ts=683eaf7f cx=c_pps a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=07d9gI8wAAAA:8 a=NEAV23lmAAAA:8 a=PsTdO9o12738TElNMgAA:9 a=QEXdDO2ut3YA:10 a=e2CUPOnPG4QKp8I52DXD:22
Subject: Re: [oss-security] Local information disclosure in apport and
 systemd-coredump


On 03/06/2025 06:05, Solar Designer wrote:
> With the PID range reduced from the default of 4M down to 2K, PID reuse
> is quick even with simple fork().  I am getting frequent unix_chkpwd
> coredumps (without password hashes in them, which is as expected without
> inotify), but none of them are getting ACLs set for read by the user
> (unexpected - I thought I'd win this easier race once in a while), e.g.:

I admit I didn't look very closely at the specifics of this bug but
maybe you could use a setpid() technique like this one?

"""
newgrp: fix potential string injection

Since newgrp is setuid-root, any write() system calls it does in order
to print error messages will be done as the root user.

Unprivileged users can get newgrp to print essentially arbitrary strings
to any open file in this way by passing those strings as argv[0] when
calling execve(). For example:

     $ setpid() { (exec -a $1$'\n:' newgrp '' 
2>/proc/sys/kernel/ns_last_pid & wait) >/dev/null; }
     $ setpid 31000
     $ readlink /proc/self
     31001

This is not a vulnerability in newgrp; it is a bug in the Linux kernel.

However, this type of bug is not new [1] and it makes sense to try to
mitigate these types of bugs in userspace where possible.

[1]: https://lwn.net/Articles/476947/
"""

https://github.com/shadow-maint/shadow/commit/9df4801e0b65073cc8a9031b22a73532ef7fdc2c


Vegard
