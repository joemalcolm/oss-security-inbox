Received: (qmail 3627 invoked by uid 550); 13 May 2026 17:55:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3606 invoked from network); 13 May 2026 17:55:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=pyBUgvw8LSjQBM2P
	S4OITpI7rJ2T91r8s4kNwipFFlE=; b=FuggyG9VEgRwGdvzupPho0SQY4Jf1eMP
	eYv+4dVZ98eu9YacLG/J/EaIU3SRbgCWXGEMOQJgClQeIPp0QyiD+8op1G0idrq1
	72BM7TbSC5l/yzDbHUxd7ii4wVlRAH91LfP1w/VmZKZVDxSY34qVXEmG9Vbb6AlU
	CFrNAFtbanCXRLb7JFI4zYw7h4Fq2t/sDMzD8bBpry+1Wfl4q3zTiQck1wW8rLG9
	qU9GC9lWrMIzhj17VcH2XYLOy2oF5aI0ltKtb48J+5YFfKi58F9Y/V7GWHioG18l
	7IrjRf4uP1vGR4eM4xmZG7wlu1zrvw+j220y8TIWHcJrsIvqhwqrkw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JWTN5yrkiuy7bKmIRPHhJm1I5J1N/NpjgXz2Hki3C0KX94mpWyFfcKbLd1miPoZkX/oFws4Q4FTREWCpzUnGZWREEr+xfUfKRcLbU4SfLCGAHCoZ0ylFry2sP8Bhx1d52kBtxVuV/Cq75lq+CukmKu8/Q8oUyU0x05o80iAxSg9Vv3F+FOciEFs4pDU+lvAzMwkLuyCEzGzDBKVJ+1K8AjjJeYH9ZwwG/vk9UshuJ1R2e/wEaLRteVzYRELCyDz3o9J0jw3wb6+WtqEWucR14qhYNrcXpIUOvn4ZcHLirv2ZWYXU9MiDkHtRPGMhHjtY5jnvkX0TriIiIbNM1s0sWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pyBUgvw8LSjQBM2PS4OITpI7rJ2T91r8s4kNwipFFlE=;
 b=gHhagIRlHx08b16579884kjemuPXXHet+eCJQvOs3EcokjIcDatlvoFklOAHc8S6b/CLDv1NwZWEl5nv+1qbAZM8TX3jRPrp15o+lgmGqVFkXH86JdTrYkTLcHf41Iu1G7JWqsCXyrnEr24XLBe1uaOSFy8tuW5fKGt5o6EkHQg8PNjnYEmP7q29sFPq2WibQhRcFxtnqgNpamwf21KgPrZFT5vTHk8bnQ1n7gS8teMjlWkV9TXZxeglUaYlung9YB2sYIsTKHhHl9tL1BwKmLV8ezTYSGoZbwrN39KH8jiFiZgRjJEcAQp6Fq6xoHk7AkXNAr51v7llfS+fro5g8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pyBUgvw8LSjQBM2PS4OITpI7rJ2T91r8s4kNwipFFlE=;
 b=K07llrHTgEDuQuJ776wDg2IQ4Xt3Hu0sSxCBTs2k4SyxBMvXcbMt026Lrw5X8Ogsc0cPXEGHf23mLdREVA1LF603VnuQpopLAAYX+xmfYthkcSp9KyhlJ+JHsqlCJco1OyS26FaaQ5E0DQGH9usVjEwPNJmpy0RKxiDD3j6kYLQ=
Message-ID: <329298cc-fc7e-4d1d-854d-58b3d96da252@oracle.com>
Date: Wed, 13 May 2026 10:55:04 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH5PR02CA0014.namprd02.prod.outlook.com
 (2603:10b6:610:1ed::18) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA0PR10MB7350:EE_
X-MS-Office365-Filtering-Correlation-Id: e6f70441-7bf7-46ca-cbf8-08deb118c3ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|56012099003|18002099003|3023799003;
X-Microsoft-Antispam-Message-Info:
	r5svZ+b4z03YzPguaIb/jEzj4XQJTglRjC4fTcdrRpYeJ0HTOkXwS1+t8QD/mnakIviNx8IuxpaHjvEjmCdhcVau4N8Abd4OQKoyGs/yJkNC55ZsgJXh7hv1soR5BsOi/ztgJu0it3OH9Ka4ZKlkx36dJgWdOrKk0Bgf8FZTV6NyG2Qd7ozXRKt2gpJaSrkbTt957dYVoCwYyXAjZ5RgjOpPlt2Y99haIYKA0qFDS2XNjQ88xwAQIa0OQin3TSxB6Tz7MftNXn45CT9JVhu35Lvm3oz4DWpxG37QtSSLCuqd3P07o9v6MlD6o6f39cSfidyJ199xnocDdAkOZXlJjCAzymbpoTIgFdJ9koSxHyQiPs68EALxQbKr/akcmVHCECKUvTlUNg+WTsn2SGd1Foj6n3jrH0V3/e70uxw7RzQRAe0KKHRPqkGyIY4OWqTAsLcRyjT3B8faFGVhH7PwyStHqNeqAlKQeEI3VPECMQZTaFPv2aR7ZIxKROKTD064ZrbqIgNhplhZ9x+4nsNbf3O11EXYZB3kkEoGu9xzxYzBsALRfs0pQew6nNqgShM7dsKgSxbR48MZb/o4Xmt9AR6F/F8W3fv/idE33hOh72zxaxy/Ei1zjUds+XaSqsajdQN7wGIaLDQMvGy7WeaSBnOd/b2YQeOqYp3/meVpbiPL3eKpzp1mm9VqgUD8lGfkYX8Vyks9S3uhSLqrGDxRZg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(3023799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?KzhreGlRWkFvd2VWVXZhcWZCNEZOOG9WVk5xVGJiSlZlMTRmK3MrU1BzUndp?=
 =?utf-8?B?QnFDdk0yaXhvaVUyWmhITXdnSGFnZzZaQWhtYzVYZ1IrNXVta0dTMWRxQVJs?=
 =?utf-8?B?UFBmVzArZ0FlWHB1TUJiNmcyVWxoSGFiM2hwVHdhN0RhQUd4dzNBOGFqWTFi?=
 =?utf-8?B?TDhmYXc5QXA1N0o2M1k5ak1BUkJQNjNIK3Q3bWJhSUtOT0c4SlF5U0tSQTRy?=
 =?utf-8?B?K0UrRHdpa1NkMW5sMjhvc3lyTmZSd2ZLcThBYUd4NjcvMHI2OFJpdndwOEFI?=
 =?utf-8?B?MGgzdnFxVnRBeEY1ZXJHRWxjTFo0ZjJ5WHNSbWd6WEtRTnRCdStPVGc0d09a?=
 =?utf-8?B?Nmp3K2d3Q2tYdHlxSGJOS3pJZG8zQ2JSOEFSeHNDcll5QU1iaHNHUzJ4d2FF?=
 =?utf-8?B?Umk1eW9QdGtmYWJqQ3ZMRURHdzNFTSt5Y1M5eHVFUDFKVVJoWXJ6Rnk2dWxX?=
 =?utf-8?B?MzY5ZkVrVUZodzNFMHVtMFArQ0gvR3MzMkFudTNucWg4Z0N1ZVM5aUEzZWhM?=
 =?utf-8?B?d2xBMlpmam5SekFPRUFHUXN5UHlIRUYxSjErMStOYXp4MlNrOXlUM0FsaHZP?=
 =?utf-8?B?b3krQXN2dmlDYVJXTW8zU1lPN24xK09zWnFSV0R6dm8wd3lTZnJ3N1dLbldP?=
 =?utf-8?B?UTBiNWZNSUE2clVoZi9tN09kRnBwTEFmMitEdk12Q1dZUjFvMW5jYUcyQ20y?=
 =?utf-8?B?MnIvUjZ3c25jeFJWS2oxd3VtZ25CKzZDQ0JXYUJBK2ZMZElORUhSS3ZiQTk5?=
 =?utf-8?B?Rm1rWUhvQTFqR0N5WXMyTlVSVnRpYWg0ZGx5RkFwQ0toczMzTkdiQ0IvTWZN?=
 =?utf-8?B?K3lGVzRmZXNnVVVkQ0d2WWczWWdCMjh3NGF4aGo5VGl4MmRsSHNKc1dzOWMy?=
 =?utf-8?B?SWtYT3FGMDNMSG9RZGlRdnB5dndNQ1pkKy9pMFBsejRSQmMzR1F2Yklid0xO?=
 =?utf-8?B?b05zWUdvOTVrMHJXWHZIaitscCswaHZwQ0J0OEtLZjNIS1ZtYUFUUGNsSzdQ?=
 =?utf-8?B?dEVUdXVJKzNwUUdkUWEyU2VUeithc0xkcURLVjJiclYrL0VTVXhDY0NsdWIy?=
 =?utf-8?B?TGFlTVhsNXRrbGgrWnFqcXJvOSs3b3dxM1V6cFZwc3M2SDlHVldqdEpYK1ky?=
 =?utf-8?B?M3dNc2tmbjVGVEswWlNoM0FKTW1XL1hWSVphQmR3dGk1TW45bFNEVXpCVmto?=
 =?utf-8?B?RWpFaTNIRC9mRGlkZUN0bnEzTTVydDA3bDQzQXlWQjRuVEEzdWVYRlJqd2hZ?=
 =?utf-8?B?a1FXQk9NUDNubVloRmdOUG9ibEM2K2QzRW0xaXFNZWhPL3BlcXF5cmZqbEhE?=
 =?utf-8?B?UGx5M1lmYSs1SUpNZ1lYSjZ4b2kvbEg4SnFlVS9wMnR3MTlrblNVcTJBY2hK?=
 =?utf-8?B?dUVJTjlQMGcwYmlTRjRld1UzN0dPbk5YK0hLU3pNL1pTTkZDVUJlbVJLMDJo?=
 =?utf-8?B?V0xBVmpMWWoxL2s2K1pJQ0pBdWFWUjBtZlNXWXh4VVhKK3JyOHhNQUJVbjVT?=
 =?utf-8?B?bUdCamZrN1h2RVNXbG9zTGlFTGFncWtUME1ITGtlMm1xYUU4RU1QeXdVVTNh?=
 =?utf-8?B?c2hrTW9jYm1oMkl6M1hFNmlTOWQvWEhCL3BFL2pZUFNKZXdvWFAxd1NTT3lP?=
 =?utf-8?B?MzRneUEyY0kyNXpiRnNXRmRUeDlhZ2lBUWhMblRETnNWMkYzbE1mV0lDby8x?=
 =?utf-8?B?M0p0NEtxOUZPK2NLZ0hpZ0hkMkJCQTQzdkRGazErRE53UldmODV6VzJoMFpJ?=
 =?utf-8?B?ZldneHo5ampJZWtGc1Q0MlVkWWUwQUJyWEM2bHR2NTdEa3ltZWFzaUorZHhK?=
 =?utf-8?B?OSt0QnY1cjg0akVUK0xRZ1hSWm5XeTR4Y21LUUpuS0tWZHlLV0cyRXl1NjV5?=
 =?utf-8?B?R2x0NXF3QjVvZ2VBUEhPdHk1TW9wZ21pRk15ODMrQUFTS1hyUHBtQzNUQktP?=
 =?utf-8?B?Q1RwazJDU25rekdKRGhLUUFrVjYxZitpaE5xVjZoek1BL2pxeXJjaEtxblRo?=
 =?utf-8?B?N2hheEZ0Y0V2N1ZEQ0xuSnFFczlYd0JvVDRWSldKSFM0SG9mS2pmcU95M3RT?=
 =?utf-8?B?ZHNlSmwwcnVUcGw2dE1LNFJHNy9zc2hHWWRlRTVVNXdtd0FOcEtCTDlhYzZV?=
 =?utf-8?B?VzZOSUF0MG1MbHBFOHBkZFNncFVsUWU5SjM1TDQ1T0VEYTNyL0JCK0hYZkla?=
 =?utf-8?B?bVRramNHUXJuU0UxVk1YUXFlYkVHcFpuSGsxOUpxdS9rSlJoalVrL3JMdlJh?=
 =?utf-8?B?WjlUMjI3UWsya2NnKzcyRFFubVdTOWhjTXhsS2VMTEI1a0UvM0loYXo2eDdY?=
 =?utf-8?B?Q1c0OFpvVGRhVWJLNGc3eFRqZ3VPUU5JZXY4dlVhcnQyc2l4UnloTmp0dkYv?=
 =?utf-8?Q?sc0TMuWnbSYjNTKw=3D?=
X-Exchange-RoutingPolicyChecked:
	E1Ga3/yCYJGfhzZY5yeawGrKhkpYTvIhvfIxsmo5d9HmSiBHFOaeTTO0BtweeU9Os833KYYk8LpmX82f0ZxkNGXV2daXaGPYMBatShkXN7rMMV0WWRdq83To8WNZEROTdvBlb/407VYF88qmWW1lUrng3vPfg3RiHM8SUVPsqMw7lFPMCmkRinWNErPupQx4o+uxFvvTmnUX97HojWP1s9sDdRQLSHCA9J1KI4NYIVmfWWD9sDcfm1OYzR/lxXdEPZheu8p4WUnWKYUmE0E9U35+4ssWyuI1UucEhqB7PzMwKJiup+Z0YMgkIxPhlLyzjlEuS32hOFKYyUpIVRh5Yw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	2dEjHk7aAa6Jr1oQ/Aulr/jZ2obf9VEoPwZWCUEeCuYDc2HWW5xk371v+BqCE+Rg4hHYgZd+IqsUqpWx+mm/467OGP2uLV5+9jRZrPFNVCoGitzOJDHatZRUmaekDFN4wc5vtIR3v7YtMScDqNAEhz5lkFWCMaXLyimkhdAQXY1VlJx+P9FHMWjolaZeo+Gj8kw37YzgUUyBuboInw8J0+whr7fL2w/WuO7js3O5/fvogf18vDAtHejLdPJNMOoAmA1ZcVyFlldN+ayWgWLXir7pcoKD8DCzlsvsAHKqEEwLsW+hlzPiGPe+hnT8jPeTSLzqImHRTbkkmbvcpap0qxUabgRfBXepPzfnYiiwgssgN10N4l3K9LLB6Wva4kcxqs0DwiLRN9sAOrVfhjznqBzJcS0uBn7AUFOdGzGNBCEbULBXqMH/wG8Y6PeLE3oVc8t7FtjGItyF+PyvGTElrmvPVG1PSaQnctV1mYIedaPLjJAF7CH2Rtth45y/f7k2Ujgk+TGSUXAHjUid89eUbUmMIQUQNFbVYjEyP2cuIKqOyB9aLuB8vIEoTRZVic7f/hRMDP/ll832rPl1k4lE63uB5J7G4c/vGMHoF57DRGI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f70441-7bf7-46ca-cbf8-08deb118c3ec
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 17:55:05.9348
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Ov02hxDJuuF1cuD6EffpegWpI92rhwXO7PzXWfL2G1tEnTv4omauKwGSostjOUCwEvZohjeiS5n1zLjVHin7+9JdFPy2dR74NCAMvpIYG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7350
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0 spamscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605050000 definitions=main-2605130179
X-Authority-Analysis: v=2.4 cv=bbRbluPB c=1 sm=1 tr=0 ts=6a04bb0b b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=n2LCcfabAAAA:8
 a=sfFAsKuvAAAA:8 a=rhzJWzz8AAAA:20 a=yPCof4ZbAAAA:8 a=eukfXZGZbmpC50KJEN8A:9
 a=QEXdDO2ut3YA:10 a=4Yw60klCxmr9x6OUr44h:22 a=nkbfNNmNWqwmIYIN7FPY:22
 a=bA3UWDv6hWIuX7UZL3qL:22 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22
 cc=ntf awl=host:12298
X-Proofpoint-GUID: WKs1JvtN0zpgpGqGoHTuvnFVdsVE7v8x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE3OSBTYWx0ZWRfXz5yUa/bcXHbX
 wQn96/QICgdKy7QCtaA5+9BkxxNrX8wtvNI65YxUE8LgidfAbIip/Rdlcl7OeceKJVQXyTkYiZE
 zrDXbBUPClbGPcS3/C1gxeYfe5yMpWOQP5CyvFimFU2Cs5hKxMHo9CLpoFlrWCMw4GYG6fnfXLU
 VsoqRdXmpXvhVSmonHevZOCy1Bnxc6dndQMAbxsbG0bxR5vw6YAzl162aXIYg3KM7aWsoUxNSDs
 genoREhoGeO/YE9XauBfeESqwq3mhyJGVywmTpRulSF9QgluKjkho/2+McSqHWlc2AcgAuAMTxq
 0VhXlpgUaR67OzXR0JLA6k8kuv6LW8VRa1mr3MLyYRk8azFEcgRk7CwY3CSwbXvca8ECxVJeZtI
 PKJSC7yTTaD8fLKz2SpIP2sHA6GeCi7YX0bGpIIuUubtiR7JtEyIaDy2s2Hx10KcVCGRcgL7BZC
 aFax0dIdWV74ryuHlasg0/MWOkHeCGWoDb/m+/io=
X-Proofpoint-ORIG-GUID: WKs1JvtN0zpgpGqGoHTuvnFVdsVE7v8x
Subject: [oss-security] NGINX ngx_http_rewrite_module vulnerability
 CVE-2026-42945

https://my.f5.com/manage/s/article/K000161019 advises:
> NGINX Plus and NGINX Open Source have a vulnerability in the
> ngx_http_rewrite_module module. This vulnerability exists when the
> rewrite directive is followed by a rewrite, if, or set directive and
> an unnamed Perl-Compatible Regular Expression (PCRE) capture (for
> example, $1, $2) with a replacement string that includes a question
> mark (?). An unauthenticated attacker along with conditions beyond its
> control can exploit this vulnerability by sending crafted HTTP
> requests. This may cause a heap buffer overflow in the NGINX worker
> process leading to a restart. Additionally, for systems with Address
> Space Layout Randomization (ASLR ) disabled, code execution is
> possible. (CVE-2026-42945)

Versions 0.6.27 through 1.30.0 of the open source release are reported
vulnerable, with fixes listed in 1.31.0 and 1.30.1.  CVSS scores are
shown as High/8.1 (CVSS v3.1) or Critical/9.2 (CVSS v4.0).

https://depthfirst.com/nginx-rift provides more information about the
vulnerability and how it was found, with this summary:
> An 18 year old memory corruption flaw in NGINX Plus and NGINX Open
> Source lets an unauthenticated attacker crash worker processes or
> execute remote code with crafted HTTP requests.
> 
> A bug in the ngx_http_rewrite_module lets a remote, unauthenticated
> attacker corrupt the heap of an NGINX worker process by sending
> crafted URI. The trigger is a common configuration pattern: a rewrite
> directive with an unnamed regex capture ($1, $2) and a replacement
> string that contains a question mark, followed by another rewrite, if,
> or set directive.
> 
> When that pattern is present, NGINX computes the destination buffer
> using one set of escaping assumptions and then writes to it using
> another. The write runs past the allocated buffer, producing
> deterministic memory corruption.
> 
> Any NGINX deployment running an affected version with that pattern is
> exposed until it is patched or reconfigured.

https://github.com/nginx/nginx/releases/tag/release-1.30.1 lists additional
CVE's fixed in this release:
> nginx-1.30.1 stable version has been released with fixes for HTTP/2
> request injection vulnerability in the ngx_http_proxy_module
> (CVE-2026-42926), buffer overflow vulnerability in the
> ngx_http_rewrite_module (CVE-2026-42945), buffer overread
> vulnerabilities in the ngx_http_scgi_module and ngx_http_uwsgi_module
> (CVE-2026-42946), buffer overread vulnerability in the
> ngx_http_charset_module (CVE-2026-42934), address spoofing
> vulnerability in HTTP/3 (CVE-2026-40460), and use-after-free
> vulnerability in OCSP requests to resolver (CVE-2026-40701).

https://github.com/nginx/nginx/releases/tag/release-1.31.0 similarly lists
for that release:
> nginx-1.31.0 mainline version has been released with fixes for HTTP/2
> request injection vulnerability in the ngx_http_proxy_module
> (CVE-2026-42926), buffer overflow vulnerability in the
> ngx_http_rewrite_module (CVE-2026-42945), buffer overread
> vulnerabilities in the ngx_http_scgi_module and ngx_http_uwsgi_module
> (CVE-2026-42946), buffer overread vulnerability in the
> ngx_http_charset_module (CVE-2026-42934), address spoofing
> vulnerability in HTTP/3 (CVE-2026-40460), and use-after-free
> vulnerability in OCSP requests to resolver (CVE-2026-40701).
> Additionally, the release features support for HTTP forward proxy.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

