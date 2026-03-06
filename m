Received: (qmail 30150 invoked by uid 550); 6 Mar 2026 01:52:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30115 invoked from network); 6 Mar 2026 01:52:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=r4Mb1WiO0FAVWXxu
	NjOctc7eWU9fLTTlhmGAn7sPBbI=; b=BxhFKJOWfhIaRGu45nXmJPCJmiY9aPmN
	KI8N17dLopDOCfDTxhWZeMvnZhIjK/4WiCW3phn5NAwhSuYG7HTZPlrCMbJsDpSb
	7o1qoFLXcIlSdnMeb3VZlGndjo81roKOGycgYM4rPRCA/+Dyyi76+8nU3Lb4f4IP
	ftzRPpVa5YRrR0L094szWC6pCIwdkTGPxKvi6IjJd09Lx+2eLyvWiPq8oRmpPbDv
	C4BoSwdYc6T47zbi6ODbC5tg3uqLGtRmERtPSX3qRLbAV3sJZjDVFbukux5TlC9o
	G3euKwpWMoTCxQoMcOtFMNEV2P0jADDZU4Eku+0oCvi544789/VLmQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qzv9E04TFr2YnH2YJsxu0yxbr8YckbuXzIFrSdpnLzAowVscJFovpLzPoAaFaIKcV56jR3d4mWryi+i+za9IYmUM5eMoWd5a8rBIab0e8T3CKdwJqJDNI8T0tj2TbRHs0BjZsh5Pxp9uEAUkYAsno3VcBNZmwz1kpsMtss1nUOk5saXLOX+6I2GPfM+NpR/4ud2KCnVKhFfo3zO+6dXeQboDmvO7Rnf/TI/suv8nC9hiyGKrmFKbqG7gaLCWCUhioTnDf7rh+wBtlcWTj7hZhmELugOmrmVgTfoeXN09HQOxXUXttArwGenCsy5T30REJ/lsTiTla6P3l8wxWMXE+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4Mb1WiO0FAVWXxuNjOctc7eWU9fLTTlhmGAn7sPBbI=;
 b=jExFkFrITmj6JCPy8hMj0cloq9+wbVIlw/tBeSsuwlQKWi/iLRXHD30RXentjt/VbguzowhYjkfPFCN2GH77twn4Tp6tABxNEgxyE18Nvbm1+HxANZJ2KfufC5JXHmKkw1PiXwGaCC4UELysiw67B1/MjH7tbBq3Vw3TsYFgIJCUVAoL5CkmU1tYH6DPE0dPIezDv4akau4Zfb3L0EABKoaM1k0XJW2qaLFcA0khWPwn6/L4s9nfRgEtgPKaWoqg3w1VOfuFCUNlsMmwxs3X2C6i8uMohhrEjCTKhgn6Maze1Tevy8ygpPWckxLOnVRll5xcW80DbyKMzkjdRCvUyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r4Mb1WiO0FAVWXxuNjOctc7eWU9fLTTlhmGAn7sPBbI=;
 b=XR/gcJp2kjJiyx098qmNuOFGV7x/R9tHq6V4qu568fGOvTq3674t1+2LTny2eZW5ZtDIP4ug51n/AhC1bwdXo3Nq8UXEluZG+M2AZFo1L+R/MuIWXWr9HDzncXLVnvobwgDPfBMEE9GfeFcX8ziNl2qMUmkbv7DG0pGKZFWLvik=
Message-ID: <1169a066-00de-4c96-864d-d0c354592e63@oracle.com>
Date: Thu, 5 Mar 2026 17:52:15 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:610:b0::11) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CO1PR10MB4513:EE_
X-MS-Office365-Filtering-Correlation-Id: a40bcb12-13a9-47bb-62ab-08de7b22fed0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	WgbVKHRirUNF60OVppdJpUWhaXmsXkqzKjOoxx8CRSVsGGucKraOgkia518CjdLzDXgsiZaHamvpaFV+t/REJmmDybZq/ggQoxnu0iyaMRolfH4ZmainCadWFUofzUWTx6n0QnmWe5LRWd0YVhJBuB1UiZZ3y9rDXVnpH21Kx6hyjaXNSkbDvlHOaV8Lfuy+zVEUtSO2NONpZpyb8DOyagxgVTBBTepic481mderpRvAoZhc5OoqjiVf6J8C62dJTm3/PlTLl2V4aNAlJcHhXMvqU24P+j3U0FRZyT8MUspmYjZIjQq6eHVe+3ltCPv1Ge0QZsQU6MaZ4jrt4VnWpuWuaxRZFso3tnmFp2Cg58aBFE85Wt254qsUl6Vemg0upVGEKIpclSsvGXQwdHbcJjTj7YcaS/SWlBUiRx+pVTLjT8N4LzVlARgRZ05MFZBdIwoTedwKPMCR2KBl0TPzGWDwJiicRxHC8XqJky1uNkakC7HRAg2tyfnvaOnX8C8musWMg6alYnm9PX38DfZew79xwKzZO1TZmhbsKQgTHqtGLYMmg1L/SdFB2ZyIsvPo9UtS1ZEtHssgtPwxz9A+wexios3b1ZHoUW0hh0kNTss7Qu0AEA0hljyBil91ASPzUoC5/QwXknKUnRcMuU05m3RUd9UjZngVTdMbfdd270YaQoBiv/OkSC/v30SfxPbY
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RlhxL3Nqa05JenM3VFdDY2MzTEoxY3BuZFE5bmZURnc1bWc4NG9PV0xCdnp4?=
 =?utf-8?B?a3FvWGQ3bldYTjdhb1ZLUGM5aC80MUxMenNMVmUrNnJrTXVqaWFaeEJVSXNY?=
 =?utf-8?B?K1k2SHhWaVF6MnltVXUvOVBIQkgwbWszSlk4WCtSN0orbUhNd2orSlRKUmFS?=
 =?utf-8?B?eFgybmJUcHI3dXBkZ2NoSkhjT0xic2F3dkpmK2xZRUhtRTdvamF0L2ZqWHRT?=
 =?utf-8?B?d0ZHSDc1L2lUS3lybHJ6cFdxYTg1VmxMNVRqNnJBam1OU0hzbTV5UGJKWnlG?=
 =?utf-8?B?QkwwRzZoT3dySmpWS1U3U01QcW8rMExlc3JDcGdMamQ5QWFvSk1tM3FmMjRS?=
 =?utf-8?B?c2ZxQ0xlSkk2ODdqM0NaSTBFNFpnaWg5NXIwL09tZzgvM2tZOWhhYldJVVpE?=
 =?utf-8?B?bUwxRGxWT1E1bzFPUGdkRklrUVlvbXZ4aG53MVZiNjZQa3ZwUld2dDlZZmt1?=
 =?utf-8?B?RWdBcVBPZE9xckg3VmN4TnpGZWF4NmREWlRxRmdiOVp4L04vb3FrLzZ3UGZl?=
 =?utf-8?B?c0dlcnRpS25uZDEwbjZUNC9DeEtaZHBKT1haRTZ4dXlKcExCVHo1WitQVUdk?=
 =?utf-8?B?QUgzWEE2R0pIdEQ3N0UwSkxuaFVRSnRoTis0Q21oUnY5cEt3bmNISDNlUVQ0?=
 =?utf-8?B?Rm1IbVp3MFB1UC8xV2JVM0FDbVBSWEJGS0lnVlJ2bmI0UGdrZlMrR1hObmpF?=
 =?utf-8?B?N3BtL0c5Rkl5UGNpTXVZa3RKLzRxZ0h6K2FEUlN3a3d6ZXU4aU5MclJaQkk3?=
 =?utf-8?B?dGw5bkxGaGZscTY5STRSS3VXOVlUeTQrR0YrL2xJM212M3lqUVp0RktYSVJi?=
 =?utf-8?B?VU12Y1lZUU5CNDU0cW1oOGNjUC9nRFpsbWxpOEEzbXEvc0E3UFVxMXZWYVlH?=
 =?utf-8?B?azBiY29RSjljd1dlejd3Q09vNHJZWmtNbEZZMDhINCt5SDZCZTcvTEYzRGpI?=
 =?utf-8?B?WVZlcncyQkpNTDg1R1Y0M0luOXJRUXF5NldTUW5wS2dRNi8rdHZCeEtiTTMy?=
 =?utf-8?B?bWs1aDgrT05VUVp3SGUwT3VNLzlyWm9MeVlHNnJ3eU50Wml5S1VTa1o4ZGoy?=
 =?utf-8?B?M28vSEl3V0dnbWMwZ2R0dUlKT0N5ZmdzZENYL3lJZ0d5dzdnYlhJVElUYm9a?=
 =?utf-8?B?Z3pNcFJsVHlzZlM1VTZDTzBwSVVvdFpSZFRsVDI3cFRBRzlGM0U4OTNBVms4?=
 =?utf-8?B?cThhdm83bDRtTURzVGFqR0syUEEreHl3bVNTd2JwM0RrUXVGRENpNndDdEVq?=
 =?utf-8?B?T1dmc1dBcVlid2k4aFZXMlo2WFdsTDRnWmlpT1l4dThNK3BTc1BFc0Q5Y0oy?=
 =?utf-8?B?b1pyZ21EQVRRaTdEUzk3RUF5U2wzOC9sbUlpclNHRVVYV0FyUTZOVkNMTUQr?=
 =?utf-8?B?Rzl4SE96Qlc2OEhQcUVWYWNJRlJNMDl4SEJaRmdZdTNaTkJyR0UzdllFc2NQ?=
 =?utf-8?B?WmVma2NOa3hZaXU4cXUxSTlGYlZ6Z3lkU0pqQys1Ykk5MXhxTk5HVGhBcjFE?=
 =?utf-8?B?TmdKV3FqYnh2b2VxTlVUOGVpQ2hqbkszSSt6WEtmcFNnbFE2L04xUkZwK2N3?=
 =?utf-8?B?MDJweklBSTdLd0VpYzdmajA4ZjRvQWlqZHBidlhEOXVjQTZPb0JoYkFmRE4r?=
 =?utf-8?B?WVQvSjh2VUlQUXFvQXJPN2ZBSUpyV2FhTXJVR0xaNHljZVg0Z2ZzMnUvdmtw?=
 =?utf-8?B?eW5mVjd1bUhMb0FVUU9kZXMwWkRvanBBZDFiWS85alFueklrbHZNSGZycSsw?=
 =?utf-8?B?OG5wM04wck94bFpSSVVjcHpmci9uWE9ldm85bnpoQXQzSkFWVlQ3dkdBaisw?=
 =?utf-8?B?eVhnVHNKTVpsS211Qkg1bFFxYXF4a1FsYWErdUQzS3B1ZDA5a2xNZWxtREQz?=
 =?utf-8?B?UFBjLy9sSGZWZ0UrdmlwU0N3U2dicHhMNldPeGxXdU93L0phUWxSM0lqQlIx?=
 =?utf-8?B?dXlTdGhScm1LUDV1UzZBQUJVbktiN3FHNEVCQjlSSFV2bU5JNGhOSThISzFU?=
 =?utf-8?B?VitGYmloL2FxTElEMVMxREErQzBJMVRQYjVSQ3YrOHI1TjFQMjZuQVZXUlk5?=
 =?utf-8?B?UUtKaWx2bk9Ma2M1bUVEWnorMGMvNFBXaXBKYWtzYnlNUFhOVlZMbXZkc0lG?=
 =?utf-8?B?eFlHbmUrNXp4cjFaUnJ0MmtEWW5nM0NMelc4ajV0c0Y5L1c3UTdHV2dybTlw?=
 =?utf-8?B?TjhiQVBFOGd4bjRESThJQ3QxWnUyQ0VvWUdhMVllZHJGQ3VLWVZGTWVCWDZU?=
 =?utf-8?B?T0xWWUtOaTNTbXVpR2FycHl2REpTeThKeWNGMVE3anZuVjBXczlBdXBMT2dO?=
 =?utf-8?B?QmlMZ21Dd2xZSFRHODNmVTJGWjR2bzFkYXRrQnB3VFIyL0pvYzhQMkZEQjlT?=
 =?utf-8?Q?qdbw88ql++DJ3/J8=3D?=
X-Exchange-RoutingPolicyChecked:
	Dp8EC7d7fqpBjAyfkNLRv8T0lXJoYs1SSRm4eg0laPZdfxwAxM442SUKeCmAaZ3lc9NIaw4Kj1GvXlAGdAcMekvuRWYA+YbH3/sp7UjBE3LxnFoy9LBMvRPsJKkyqU9i5HlgyT9Oy6ybhoxo0WvLMp3cJ/jzgRNnBSW24heV2cqfa0cQ+iMqElg+iYjk3IxjzsOh/0GvmIsmoP5TUCKwQp/BMZ0B9UbltVDGsKeE1UJcP0NPH4uQKolAh9wzibSmW4gGwEtvrc0xeXavwIeazULvrAK+zUkljTGYWOB0r55IgtDJ9pRzWXse6DWewit3XmQXAHtx/sUdnrniGP8ZCg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	KJuTXc/dAjWkNnaq++UhLm0fFEv2Hhd63yydsk/eGQIj/oerU70UPrGau+CFOAbpxdMnN6nuuf7tF+8EJjDxRvoJZx2/VcmmV0TijQ7eiwwlTwULQuAGJaYb1OAfNwoutcY90/7OjKDMWRjCCq628S3ckq5EzNQ1tBqigd6OqUhWTYbgoplAh/dGJl7vFHBxqu+ZAFLKi7VQmj53a5WN7GjSxmpAnpYDjM59LaO0JEIUDqx3gd6MQXHnn3lJM9m3NLRT07tfH9y8M0mb6hQvo4NHmrgtbVuF9EyI9ovzeaag/osHlrt2zcVtOSmKmErBsJ8k6X0wCyWBjYlD1uyxDq7K/E/pNoMzgNYfeqtS+YXfGFzYXpAnFuoFsF6EqNmuHdaFiJY9VnNkC2IcvrrNwYDJK3hE1EZ88mTcwK1It+eNSrfcLXgVmuXTlYBrC3a6Z+UbQ2h29rFXA9CCpFBlizbuRXfd9282V9VZEPPYcM5w6ikZRU+cxzkQ2YW0a7gRYeLd8kQeJ0r7SOBR/weR8UomkHeHP+pTAoj0vF9k7WhrU4TSNpQf8qUPXaMwFAHETbkbm+lw3uvjaYZiIFRReZqlSkEIBF3b05XEP6cFBYc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a40bcb12-13a9-47bb-62ab-08de7b22fed0
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 01:52:16.9224
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w1YFC8S4Xdo75n+qrzznO/SDzrmcrfM4IRZgOlTBFepEzHvI+uD38nYE0wRNx/D5cgMV/VCpSiRf3D+nCYpe4QXcoNAGc+7cL5BuqBDz1VU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4513
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 phishscore=0
 spamscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2603060014
X-Proofpoint-ORIG-GUID: 6S0owgiPJjYu-QUEJR5PNdIUwFe19gaE
X-Proofpoint-GUID: 6S0owgiPJjYu-QUEJR5PNdIUwFe19gaE
X-Authority-Analysis: v=2.4 cv=LdMxKzfi c=1 sm=1 tr=0 ts=69aa3354 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=1XWaLZrsAAAA:8
 a=plf8rDjJAAAA:8 a=NEAV23lmAAAA:8 a=XkxcFt21ZwFZUAZVnC4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=JWTSs7K9Rhv-lrTctFka:22 cc=ntf awl=host:13812
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDAxNSBTYWx0ZWRfX4/v6VHSo+goV
 8XXA5VCYWAVr67+RqfXPCedPGpwHPOYlnpc6Ty13GOkR5G8SgGh6rgq7+54Y/wyKpV4Olgn/Uwq
 g3jepCUe9pElJue6jd9i7HuPCBbnoc/rSZg854upQcqu8+ZOmXuUFEsUXWtb/EHAzaMoNrADhWL
 3YwUO7CNFVzRCo0S9/QksjCk4JztH1BD8J+lBen1bxmhit4cKjbykwL3c4ynOmzAg//7Fny+PzK
 IBHS7VV2AgKaUvRrZAR767/z+59OVdERHNCQRQeEIGievIBNvNqCFDT1LhxtU4mbAKcJZZ6IrJj
 zs0AEaSfhI+/cHwj8IeLEzHsJTL/y28L/OWeJ0aX6jk/42FO+fcfktcHBu8BYOLt24Mz0nX/edQ
 185Qc0IoKlLqqzxT5ICUV46F70551qHRnSnORBXMcBguGS6OGQb9tNmYDtc/ZNQR+vRxcCdbbBU
 9xpe15ITPJzyWNUopHawOrorjTiPH9bT64uuC6t8=
Subject: [oss-security] Go 1.26.1 and Go 1.25.8 are released with 5 CVE fixes

https://groups.google.com/g/golang-announce/c/EdhZqrQ98hk announces:

> We have just released Go versions 1.26.1 and 1.25.8, minor point releases.
> 
> These releases include 5 security fixes following the security policy:
> 
>   * crypto/x509: incorrect enforcement of email constraints
> 
>     When verifying a certificate chain which contains a certificate containing
>     multiple email address constraints (composed of the full email address)
>     which share common local portions (the portion of the address before the '@'
>     character) but different domain portions (the portion of the address after
>     the '@' character), these constraints will not be properly applied, and only
>     the last constraint will be considered.
> 
>     This can allow certificates in the chain containing email addresses which
>     are either not permitted or excluded by the relevant constraints to be
>     returned by calls to Certificate.Verify. Since the name constraint checks
>     happen after chain building is complete, this only applies to certificate
>     chains which chain to trusted roots (root certificates either in
>     VerifyOptions.Roots or in the system root certificate pool), requiring a
>     trusted CA to issue certificates containing either not permitted or
>     excluded email addresses.
> 
>     This issue only affects Go 1.26.
> 
>     Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2026-27137 and Go issue https://go.dev/issue/77952.
> 
>   * crypto/x509: panic in name constraint checking for malformed certificates
> 
>     Certificate verification can panic when a certificate in the chain has an
>     empty DNS name and another certificate in the chain has excluded name
>     constraints. This can crash programs that are either directly verifying
>     X.509 certificate chains, or those that use TLS.
> 
>     Since the name constraint checks happen after chain building is complete,
>     this only applies to certificate chains which chain to trusted roots (root
>     certificates either in VerifyOptions.Roots or in the system root certificate
>     pool), requiring a trusted CA to issue certificates containing malformed DNS
>     names.
> 
>     This issue only affects Go 1.26.
> 
>     Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2026-27138 and Go issue https://go.dev/issue/77953.
> 
>   * html/template: URLs in meta content attribute actions are not escaped
> 
>     Actions which insert URLs into the content attribute of HTML meta tags are
>     not escaped. This can allow XSS if the meta tag also has an http-equiv
>     attribute with the value "refresh".
> 
>     A new GODEBUG setting has been added, htmlmetacontenturlescape, which can be
>     used to disable escaping URLs in actions in the meta content attribute which
>     follow "url=" by setting htmlmetacontenturlescape=0.
> 
>     This is CVE-2026-27142 and Go issue https://go.dev/issue/77954.
> 
>   * net/url: reject IPv6 literal not at start of host
> 
>     The Go standard library function net/url.Parse insufficiently
>     validated the host/authority component and accepted some invalid URLs
>     by effectively treating garbage before an IP-literal as ignorable.
>     The function should have rejected this as invalid.
> 
>     To prevent this behavior, net/url.Parse now rejects IPv6 literals
>     that do not appear at the start of the host subcomponent of a URL.
> 
>     Thanks to Masaki Hara (https://github.com/qnighy) of Wantedly.
> 
>     This is CVE-2026-25679 and Go issue https://go.dev/issue/77578.
> 
>   * os: FileInfo can escape from a Root
> 
>     On Unix platforms, when listing the contents of a directory using
>     File.ReadDir or File.Readdir the returned FileInfo could reference
>     a file outside of the Root in which the File was opened.
> 
>     The contents of the FileInfo were populated using the lstat system
>     call, which takes the path to the file as a parameter. If a component
>     of the full path of the file described by the FileInfo is replaced with
>     a symbolic link, the target of the lstat can be directed to another
>     location on the filesystem.
> 
>     The impact of this escape is limited to reading metadata provided by
>     lstat from arbitrary locations on the filesystem. This could be used
>     to probe for the presence or absence of files as well as gleaning
>     metadata like file sizes, but does not permit reading or writing files
>     outside the root.
> 
>     The FileInfo is now populated using fstatat.
> 
>     Thank you to Miloslav Trmač of Red Hat for reporting this issue.
> 
>     This is CVE-2026-27139 and Go issue https://go.dev/issue/77827.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.26.1
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.26.1 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Cherry and David for the Go team
