Received: (qmail 28541 invoked by uid 550); 24 May 2026 17:59:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28517 invoked from network); 24 May 2026 17:59:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=uupkRgMIEEop4FnbTLZuFfzGHtEBhnjQIQipGCvo3p4=; b=
	sczNbXIS+avjTMqXdewVcHgnOAT6Bb+qa9KeWNpwnCZ5zGmsrt+RuyuAQtOaqicT
	B0LnSehLw7UP5nY28y5Dl4DCLBQDku2AsSA3IlbK9TMIHmTMpki3J1/R8uVLKayA
	x2KvfcWFOYE5exdUQzybiciaUEryp8Z3PPdbRmhD48i57aUbweWUw/nSA95TbMOI
	edQARefXIkzvOfd2zHUGX+8xgASFqT2ii5x4VhORPdBui8WDLWgg65QNqlb37JGC
	WHskF8Awklbawf6EIgTM5pDXoZLjk6LEx+0ZWAlCzts3Gjjkz+uR3i76MRkDtDLR
	2Nik9alCskDjjTkkzI/iAQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KPOJoyppbf+benftFwwuGGyBtfrGuX2oKQSHPOr5X3g7dIW6DtGuOet//SDAX66gWNZi4gJehVKCoYYKl0sTwEY1wxxJ5YaCa0EcAcjugoGu+YrOIA79517vhdqyCRn+w4HE0HaPj58Lavdo9jLje2zX/vgVYUEnjgHxCxNjpR/J4mb3D6QprqDvkR2BdTnNQkZYNSXZq3vNphbMOmOESz1SrZGJZtzwF+MRg+x3UCJtYsSjkD1Z3Hk2eRx0OUpb29Jv/6382rk5d6OSJE20dW4m9hwzbQESmDjFlAwcgOaE09aErTPkJ7G9AmZtAF+NzAoqXDv50LvvR4llp9r7Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uupkRgMIEEop4FnbTLZuFfzGHtEBhnjQIQipGCvo3p4=;
 b=Tis4sqH5Uyk7YrcUkP+WPceCO5L6RXvBG90dCCcSsoIEizqXyqORQqv098ZCnvLSEfHU2AsPH2fgQF7IUth0nCl0uJF9T+aKSYLLKHqmFtpVGOQt/+UTv2zQt2z7F9J3Si2m95Z4RXeGxKEFyRqdaaYayQn9lSU3To6VdrbBWt4ck9N2QIyjsHqM1GopdGz1og72erzt8+kJWFu03RnKEtGyGL9XyLO8Y6NYDOzohWeOW98GESz4NW/WxokddlwBPtoxRtZkioMhresR9X/LfOpr0fHw1kilRzfMDybu5JIP+Mod6yRLATkjBLpImm3yt3GLC09ZWXovQrZUZaUijA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uupkRgMIEEop4FnbTLZuFfzGHtEBhnjQIQipGCvo3p4=;
 b=kgPOkCq7fk8k4rPgcjDLpYGMl0vQIRxdJmU2RZZyYX1CI6YTWvPNWQCLxD2v2Dg+4fvFR/E3hjh9SpQKEMRivlb1KvjW8PgweL+aUThhdrg3pK+2UX/B6Ocbu3ugabyFF3OCAA52cNvzusWxsbpxh543mLtqoTWMb4hg6+NUTvM=
Message-ID: <27184e15-28ab-4017-997e-1e4c3f9bf63e@oracle.com>
Date: Sun, 24 May 2026 10:59:03 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <c4f7f03e-194d-4a1a-9c9a-5f8a791e5051@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <c4f7f03e-194d-4a1a-9c9a-5f8a791e5051@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR07CA0029.namprd07.prod.outlook.com
 (2603:10b6:610:32::34) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SJ5PPFE25FD365C:EE_
X-MS-Office365-Filtering-Correlation-Id: eb470419-7a3b-4358-4175-08deb9be254b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|13003099007|3023799007|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	40nRSJj+3XzJsxPgssQxCFfmLuI/slACTBfjUnsStAHtQvfRZDiPhO66fVCpeTyvZHipLDatcC4U7FyRNKYvYpPx7qlgNpR01hkqPWiZEZKKV9tje9a4ON+9hy1DTdGua0gkP910ZLCi0vSe+XEZsVIjJM7XqyAvZzrIOgTLGHaJDUm+3cyOEzv5UWg0/2yW6lfwyAI2T4+x/AmrQfR6ezNVJu2BEU1yXUXzGXPtnaxwnTjvzEuDBBvEO7h22btJjxGmFTbAHMA7hcSnudzKiTzebOndHdH27Ln2yCzKkcxI877X85jytffpnAKK1QdwRKUR6/3i4CPXA3oZN6qEeTqUMx3xNQf9W/e9GehmCmhJPu/RiptvZ6C+ye1jrp17vYMypX5q9W25txXxNOnc+vGLrHSL7C7t36yl2PnqrY0X6CnN/pmDvyAUnGA4ZKXoBn+f31oXU3KopwCdx9C8IcL6YPKmJKUaXzSZGzfOboTCL7teflhWTLlgTIwiX17ogYCHeMulPXzANniGPV29xgrNF2riJXEqQ+Y8KFCXwbi+JP9aWTj4ei32IYZ33VJSxtzb8Lz7yJtHq0Lnrf0AHwHf3E+YL24DTv76mD/R8ogvT3bMC/XLo8M/frDz0O0qlRweAH5R7m7DE8tjrM9tA1pe+0aoZxcpep2cwbGnbKGFjSOXR0q1NFX/AQpn8rlFQtLo87/U5R4Z+XGpajVfTw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(3023799007)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WEhmaFNzYTUzMlRDNHdYcElzZWpTSnBoUXMzQW1YZDZJU2JveEtMLzdxVFdC?=
 =?utf-8?B?WUpOb1h4Y1p4SGQ1ck9idGVjVnZPT1RGTy9MRnFLTlgxTTd5N1QvdmRrNHJZ?=
 =?utf-8?B?RVM3RmJSaHdQcUdVNUlhMEk4Wi81SGNQdmRZbW5zWXZCNmxwVGVZMGkzc2M4?=
 =?utf-8?B?aE5kbHlZa0tlRnZ3cGNlNnJjR3I4bSs4Q0ttZS9EVFEzSXJrR0Zmb1NtSUVR?=
 =?utf-8?B?NXI0SlBrRW9MQ3VhbmxQd1VsSDE2Y1NvZmhRRmRndHh0REs1NWVTa3NGekJ6?=
 =?utf-8?B?dEE1WDd4aDZac0hIYUdBektNUDgvL0x1M055MWZFVEJSc3VkeTlhWnkxbkpT?=
 =?utf-8?B?UmwrNTc0MHJrZlpmTGpwNGR5RWRSZ3ozY09maG9MNnd3ZHNKd2VybkJTbmVZ?=
 =?utf-8?B?M2lTdVRVeHRIUUpFaXRTVjROL3AxMGVMeWhXTjZ2L292cWhjMmtpdVBSVmRJ?=
 =?utf-8?B?OGN5Y0k2djIyWHZVM2l5WEh4Wk5QSjRGL3lDU0JTMlgvUDMzRkEzaWJWbkxo?=
 =?utf-8?B?UlJadmUxZXVvb0hwcVB3RGF5clZ0VDhOWkxkWHpRQlltSUVTcFZHeVd2M1h0?=
 =?utf-8?B?dklZUkJLSjU1R2ZKbWNEcjVGaWtNanJhZ1k3TjhUczBGaXdjVTBsS21hdkV5?=
 =?utf-8?B?RUJKcWRmR3BtZHFqTmpyeW84TGZoVE1kdUp6N1FNQzl3UENXRHJ2NEJYUzNn?=
 =?utf-8?B?N2c3b0RYNyt1a3BpY3lMcDAzbGRvUnRDZndkVThPUVBqV0RzakJLSit2alBK?=
 =?utf-8?B?UW94THQwQjB6RFR5OVRlbmhibUtKaXcwZzdEbE5pQ0d0N3h6YnF4U3J4QTZp?=
 =?utf-8?B?anhBajJoUWFLOWo1NXlzLzFyYW5aMUIyT1MwbW5MT1MwTkJwejJsbWhiYzYz?=
 =?utf-8?B?ZFVJZXdxZGpJRndWb0xvZ3Z1RDBMZVo5bUVLNkdlemhuVHZtV1paY3N1bk5O?=
 =?utf-8?B?VlhPTUtrdFIzeWE1UGJibTF2Vk5PVjhUbC9YUitKcWhlUkJCUmVZdll2SnJz?=
 =?utf-8?B?c0tRZzd4TEd2UWI4Mk8yamFMVXNZWnEwcjV0OFdJU3kwSzFaSWx1TVRnekgv?=
 =?utf-8?B?Kyt3YnZIWjlnYlMvK1N6a09xK0ZlUlpSTnpDcFpzMkRIWUNOYXMvVXpMY3VK?=
 =?utf-8?B?M1U3aTdYVlF2Y0dNSm5XN29qaEVFd05sNHB5QWRnMkEvVE1QNjFMbGJoMCtv?=
 =?utf-8?B?ekh0YU5jK05sSUNPbmc4cXo3NXJnQUZFS2VpWkViaGFvV3JPcXMzVWhpSzM0?=
 =?utf-8?B?Ump2RUlVNzFEY0s2QW5oa2ZOM2Q1MjFHMzBaRkN0MWxOQnN3YWJKY2xnQ3Ry?=
 =?utf-8?B?Y3NUdnVsaGpkblVDMTljZHh3TzlUSlNIUmVuUkI1Vng5VE1kSmp0dlZ4ZnZz?=
 =?utf-8?B?R05IaU01UktPQXluMEJxcUJNcjlrNmVSb1MrZmpwUWxZWXE4OWowOHZrc0o3?=
 =?utf-8?B?RUpPaEtaeHFtbm10M0g1citvNDd0WWZWM05IWmhIMnp2QVNNVnVBbEpaNzZM?=
 =?utf-8?B?Yy9YZlZKUkpnRGthNWszQVcwYXpkZDBqWVJXM3E2dkMyRnRvVElmenhIcHZ2?=
 =?utf-8?B?MTNGK1N6aE5jdURZNEx4NW1zdTZOa2lPcnYzTTRFbjZYdlZnc3lNcDVCM1Vt?=
 =?utf-8?B?U0RDOHA5WFpJbTRIOC8vR2ZWb1Y3NmlQeGtyYkthUHBzeWMwaS9ERlp5aW5n?=
 =?utf-8?B?YmI1bklHS0xLYWdLS3lIRHBhVzFEa0VoRnhpQnlSSERibVdPSHRlcitQcGxi?=
 =?utf-8?B?Z3d0WmRMUDg0a1phK1R1UFZDNXR4NW94WTh0ZzZEOTd2SnEwU1pyTWlCVWw5?=
 =?utf-8?B?R2JtbVE5V1V5ZjJNV1o2by9QZitENGs1QWxKQmtTSktCOXUxbGdKWGpldlhZ?=
 =?utf-8?B?V0dDb0NacXMrNkorSS9GNmMrQ1dIcXJzMGFGQklwcWlCbi9BcDVHUmRkYnor?=
 =?utf-8?B?bUNld1ZuUXNPL3FRa0xteUNWWmZMajYvRXorV2ZxNzB6Y2dPRmtad1JMVlc4?=
 =?utf-8?B?TmhlZDdheUN1SWxLcXA0OTUzVFhQcWNSbnhhWHJLc3N1VEQwQVZ6SHlpekpY?=
 =?utf-8?B?SEQwSjVhR215SEhoQ1RlR3F0Qk9vQUhjWGw2OE1wSzB0TXJRNjAza3JSMjdQ?=
 =?utf-8?B?YU5JVEFnbmR0ajc5TVhXZTRCYWhOSU9mYWxBbDg5T3BPT1BpYjVWTEZuRzhI?=
 =?utf-8?B?UDhUOUVQZnRncnFGb08zWWZZNmZYT3pjZjIrMDExV0NjeU9Bd2tOR2NybmdK?=
 =?utf-8?B?OE93K0ZIS1VOdnY4Rjc5TTVwdGd0WXRVcThWeUhtSUtGRVBlR3c1Yjg0b3E5?=
 =?utf-8?B?NWhMaDhodzlmU1o2NGJKU3dBVjB6dGN4MWJEODBNaGpRS0EwVW4vT3BldDN6?=
 =?utf-8?Q?c17/BhSnyp1zfCyI=3D?=
X-Exchange-RoutingPolicyChecked:
	Ch1jVgf1CWupL5AfE4vOzPiJe8ebI2J/vQwN49xwEObpTysiC9Q1wIcaGejHjl6HM6OzvmSR9vvSGiAFJgpmFGzu4CIhxUb497ynpSxipnARcu/ILMfqx4YTALg30CV50eUYTQ0L5yrk95hzn0MZUq65BALydS5pf4T1y3tx4Z/PKVwd0p4rR0eR7PkRXbxbxSd6VrazaP3jQYu1u3Ti9N5Gl1I/fsNqfo0qxO0LVEwR0PRLxnnjAD8gjxlkZmpdABo6hWRRY4Mal2s5WcHesjhfEKQGIPba2Ez3aAQXeR3eGDL8rFCidLyJemuwltozlNA59w99wIyuUsJMk9tOOA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	uMKeV5E+6W0bsMR5ePmP1XnZMyJpf31iNLraTfLkh8kQBJ6cnEqlevxQM3cHw6Y+sgOkXN4DZv8yI8Aa1MvHV33GJsBjLcOaSNvQo7JR6Gb14+psKJYuctAA7r/xxp8kgQDdb6BE5lOeGLjo78vjbaUr5vg/m6LQhVXmgvcxPvL66tqdUu/arJanjs96eftvciVeuUjnIdzCqdywuLUPWLdkYbGoK4TLskbqdBdB1lSH7p2GqtKj2Xz1yiFWbFF5yV99fIqn53iXfGfjEwfDSGUExBK4Y57CEgcHfMhTcJ8amAzsfYiGjNeoYGoVOyPiANSgLF07aU7RFmyrvEujt6VveEeAQFyx2SD8tLO/TGdXe8eS7hRPPqELCXN4T4NZ+sK0Sb804QgABhg/P3hLC2eQjJ74CfxSXsX+qJdHfQf/q7DWTKLJxbWv/pYNFzItRr/8KJ9+WOJ8rzGKpBNd9xf5i4IF32Amtq7U0RR8HQCO7HnARhwQKCOZHSPEoEMZvrFqJIkIQh9Yo0Kj9zbud0EbgwyfTX91XA0xc7piyQtmIcL1IYq8Q3TQvm5yixMjucQxi5IYO990saVwNT5iNkjf4+I40t43ScLE00lly74=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb470419-7a3b-4358-4175-08deb9be254b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2026 17:59:05.5994
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mzpFM3eax/XXa9DaTswCWVzf6R2RIWELI80d3oujA6Rrr7doQFold1HkgTeYRipL6WfMg49NYJEHEm6YvIAF9ZWeV8pkPBwB1pUp9h8XKfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFE25FD365C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-24_06,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 spamscore=0
 phishscore=0 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605130000 definitions=main-2605240179
X-Proofpoint-ORIG-GUID: byDpNyo-f_2yES_d6wuxGVx_NIOazvQ8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI0MDE4MSBTYWx0ZWRfX5rOenE0yh7Sy
 tuP8bvS07oHqDHHkPQTNWaD5cF/+r2poVH89SE5b8Y7bhsjw0NOD+vhmVGLciXl2YxRTy5uELxg
 cYICGOjCTl7GmbWzH5F8xVB7nbJ49lj79LiNnIdXJqJYvMpJxX1Yc288uRJAKr4KRXdClwhgIOw
 FagxSXOWM3X/2f675sQqM8vFHSgx9TBbaD9vRlmWctqWokikAeOv8u1ftXiudFKGicNl/L4mzwZ
 HqeU//tWOKIvFWytbYYM1EftxiUjRaIaG3K2E9WGWCskX5jA7kv5+B8guZPmvNjd5oK3VWP8NCt
 /FuCohyM9mRlGSY3VGMRQGIDCtkOZsN5ymAC87eh47oE+Xwh6aFqLjF3GpEoEG/5mmgJ6tVS5PF
 D50GtTi6ecOTK5RixWLxW8LRDCm9/rq7qCSyOTaXB3MiKFfSeto1TcSd5G40MNsX8qS94MlyHRd
 XM+kQbupjSeScUt1N3A==
X-Authority-Analysis: v=2.4 cv=QJpYgALL c=1 sm=1 tr=0 ts=6a133c74 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=NEAV23lmAAAA:8
 a=yPCof4ZbAAAA:8 a=8EzbxfIJFR8wb3lkMckA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: byDpNyo-f_2yES_d6wuxGVx_NIOazvQ8
Subject: Re: [oss-security] Memcached 1.6.42 is a "major security focused
 release" with CVE's TBD

On 5/19/26 10:14, Alan Coopersmith wrote:
> https://github.com/memcached/memcached/wiki/ReleaseNotes1642 reveals:
>> Similarly I have not created CVE's for any of these as that requires
>> understanding the severity of each bug. In most cases these submissions
>> vastly overstated the severity of the bug. I leave it up to the submitters
>> to request their own CVE's if they wish.

MITRE has issued two CVE's now:

CVE-2026-47783
--------------
In memcached before 1.6.42, username data for SASL password database
authentication has a timing side channel because a loop exits as soon
as a valid username is found by sasl_server_userdb_checkpass.

https://github.com/memcached/memcached/commit/d13f282b4bce33a9c33b8a1bbf07f12114160fed

CVE-2026-47784
--------------
In memcached before 1.6.42, password data for SASL password database
authentication has a timing side channel because memcmp is used by
sasl_server_userdb_checkpass.

https://github.com/memcached/memcached/commit/d13f282b4bce33a9c33b8a1bbf07f12114160fed

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
