Received: (qmail 28409 invoked by uid 550); 3 Jun 2026 01:06:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28380 invoked from network); 3 Jun 2026 01:06:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=lIpFC6p9bLNnQm83r+E7Nbwyq755hxJ8kBKfj4IASI8=; b=
	GBOZaNe1TGakPx9nzp04m0mJWXC7bmxzfczaRNQVStiE2jXQBBkvK50+dwv6+f0S
	SC48e3PqCrGzZE5kb0ssOWS8IaZtgDBrDodO42WC/kcQL35VN7mFb7m1JZhH28oP
	U4DbPpCbLNv0NxDIedEjVe8hWmAVoqLWLD+T7UuhkEbahPtOmVphFoiiepY595kA
	ig+hCRHcpfNgR9UYWsOYsOOe89T5D9yXLAAil4N3/v86WOBKwW/7FmrXC0I/kI41
	leutqG/7MM3HTxu35L8E8icR7kozDzaDyoLAP1HY91WSAkhvZ3eCR1HNWmcItQDG
	sfNX7yxjJhMwV8clV6/qEQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=onp14PRiVs4PRqCyaTWaME+ZwXRY6ImOZ0CtPBzxAmL36ts2WF0v9WDskaGSlXwUUBEWG+4SrirJilPsJUtU1HC7/PmodeCEqiqGvA7Oemr+CieHap820T3KNazIk4IP4h0xOrmW8LgQG3yAN0I7skxMGnLojtswfNu0WxVX/H3WZRVulOplGJiPSqZXZCsttNipTRmqUtCG48RbHVWgNu4a5IYjX+La9f29ja60R64SBTD7W9opvPTqw/J7Y1GzqU1Q5RdSTiARod/TaF0+oKLJtNL2wgKzN55uSrSrYN5im9LRohQSBvSjPncuML1LJguIhYsg+o4rWjIYCOvJPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lIpFC6p9bLNnQm83r+E7Nbwyq755hxJ8kBKfj4IASI8=;
 b=K4bp1XrKwpsU/54yaufPygEZcT4GFJmeIOGFR5QsEqjGic8G95hWFuVDwF75vX9NwLZw1Kuf8K+uWe81RVmX1x22+bCqvQLUArCJLplU+gjsv6oo6XOv9XjgfgYmI0lsVtX87QgaVkeKYeYrhrvEC8cWgdmqYZMc5tjAAfkI/yn5oSoHyb4MkzIc/lX57h6LHOBSiC1nWxUJybIzodzYoHpt/uBHvf4tJSQgkH3dbw4B2czK273pV559qUKeAWGFONaear9IWiJ7FHWlBCV2kiA9kDBww2/PxuaZ+ONuv+jSgcfkK+bTkWDv8wtNGGpvwavi/RTR+s2rE9XEtofgoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lIpFC6p9bLNnQm83r+E7Nbwyq755hxJ8kBKfj4IASI8=;
 b=f2S4XMGwVRF2WOfRdVf9ujDOzifEeKfr/fGNv2DJKEAjL9gxJPn4gnv6MG5yGA01deprNrbGHto+6pPn06ZfVWaEnYUL9JYLC+055cCPqCVXI3Vg52BKJL4g0VY26UjUM6W3Gryu0NbhIzDn0jI6pylXHrsnC7SDYzDr3m3JaDs=
Message-ID: <49b7d391-1637-4b30-8330-7fa88028802e@oracle.com>
Date: Tue, 2 Jun 2026 18:06:02 -0700
User-Agent: Mozilla Thunderbird
References: <b412db1a.BAAACMDeKCEAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqH0cC@mailjet.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <b412db1a.BAAACMDeKCEAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqH0cC@mailjet.com>
X-Forwarded-Message-Id: <b412db1a.BAAACMDeKCEAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqH0cC@mailjet.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::29) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA3PR10MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: d2c7d1c3-8ff6-49ac-c8e6-08dec10c4912
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|3023799007|6133799003|5023799004;
X-Microsoft-Antispam-Message-Info:
	x+YtJdmeoVg3CA5N8dZg/G89IzifbAvGItE7HkIU83YT3XyJYdBQp4LECAuD5yIq+HQVjz6fd3z2PDg9PufZzC4a2mQZk1+GJHk91ceARTIVyAhEY16nK6mx9n1tAmUYrkH0KrzzJs1WJOs3Guuqa9TGpuUAmqKkhGMycb/1D96Dt8KmLbFtbc5Je/VezmI1W/mgFUmW5q/6bTJ1ZWeTUCHac1PnH5Ez3azu1q99N7z5N3xMK2BCh9Huiouw7xHACOX1/P5dGSRd27EcDYDdPr7GxDHL4aWyZEA9muLvocT4Wp/71sXVJC8ofIQLCPRRcSeSXbsFeMQc+kbgZCZ2IwbsvLIrKemSJ8gZiSZxOUga92gLz5NcR5EPR0rcBGXgTjFVpqWgyCfmUXUwQEIhjUeH3dZBWffRRB2CuZ3dFFeMXb6CfmRryK0Aif5cpwmVcVhh/2aGX22nmp6xVh222CQ9mFmHiWxARbF4TGxr185moaUu6nWgU1VVMV9sUredpKdWlKyOTa+QmIm2cYVQBTnnC71uHQoNL8n5d43lFWl4ADOf2aP1zPEq5tQFVRD8Ao4QUFoNhMPu9qFsBfiFtvfaLeoP91P12H9AsIYpeS1RjAEHf9P4FNMzZlwYBBRXnf2t6vZPWDOvyc8XObmqug==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(3023799007)(6133799003)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YjhHdEkvd2dqMHEvQjI4QUxlcVFkRCtmMGhVOVhWbkFOOGlvQWYxTkxjMm1j?=
 =?utf-8?B?cDNsb3drTEpVS1MyNEdCdDJXK1FVNmNjNVQ0VFpHSzQyL2JVODduS2c0UW51?=
 =?utf-8?B?bDR3UWFmaXlxVThJbXVGMjcwRHRCNFNoVUovVlBKODBILzhvNjQ5MmxETzlF?=
 =?utf-8?B?N3F2c29taFYzZlBVRk1ReUlQN04xQURxOHN4Q285L0VHMi9acnh2U1BrL2ZH?=
 =?utf-8?B?YVBpZDVCVllQc0NWdFpxVXM5Z3ovazZoVnR0WGM4N0N1K0ZvYzdrclJYZjh6?=
 =?utf-8?B?WkhLS3U4Nk1hZWJmeFpuTDFIL0U1S3N2QXh6Rms4VTdXL01Vem9SdlcvL2Ux?=
 =?utf-8?B?UW16WFB6b29wSTlQbzFwN2VpMm94MmlhaFpLSUhMMW1EWjg3aCtJUnJndCsw?=
 =?utf-8?B?V0J4cEh0UFVLYkZadlVzOGY5TzQ1TWY3ZUVtb3BSR0tJb0g2ZjZLTzBpek4r?=
 =?utf-8?B?WEtGemhnMC8vMlJQTjhOYkhIdjFyNDR4Ykx4SENUMDR5dnE5TVpLU3FIa2M3?=
 =?utf-8?B?Qkd3YXE2emcvcjZ1MUpTQzZoaHJRYVYrR2FKUXAzNDV1STJkQjJPMUw4a2Zh?=
 =?utf-8?B?RUVOZ1NFR2ZRR3RDRE41bDdTZGNLdXdEZ3NHMjJGaEJGUFdocGhlRVJqNGl0?=
 =?utf-8?B?U3BNMlJlSWFjS1pIZVNja0pUazZ1TWVzM0tvemxBazlTQ1MxMEQ1OGVIem95?=
 =?utf-8?B?am5KbVhoUmZseDhzd3B1NFRHbVpkeEZmbHoyL2NCQUt6N1VlVWZsWjkrK05y?=
 =?utf-8?B?VzZtci83aWY4MnZkTjZpTlVHejlQWDd2Tmpoak5ldWV3Y3c0ZTBhb3FlYmZB?=
 =?utf-8?B?S3d3Y2tBVlF6Rk0zSkgwWWM2KzYzd2NuZHVHZzV1RDY5MFdwdjgvN0I4cUt5?=
 =?utf-8?B?eGkvYTErL2VBdU5DZVZHc3d2ZDNxaVY4VzE2VkI5eFNia2c1cnNlWldxM29Q?=
 =?utf-8?B?b3BqczVBUTJLMlRGa1N0N1ZBYjNkb042NG01c2dHSXZsN21WeE4zNkdzM2tP?=
 =?utf-8?B?KzBTOUtTNGpXbGhVTjBpN3FpemFXVjRNWk4raXVEVkxPV0c5N24xL1FVRndV?=
 =?utf-8?B?TUlrT0hrQUZaU1lMck1DNmpBc0Vyc3htRTJEU2hHamh4ZzFTWEEvYXYvdk9W?=
 =?utf-8?B?L295R0w3VHNSYTNjeUhZbUQ1dGtOQzRMbHhjbDhhN04xNnR5V3luUlVzUFQ1?=
 =?utf-8?B?b3h4enp1V21FZlk3a1ZrNXBkeVhwV0I1NFQ0c2ovTjhLRDdLa3VMdnpNaitt?=
 =?utf-8?B?WmNQallQY0xwYm9NSGJrallVSkhoVWNNdTg3Y3B2MmVONDJZRlpGWkNBcTNH?=
 =?utf-8?B?clcvcy9zRXdOREpoaEJWK3Zrb1RCY01JS0JPN21EYjl6QTZ2VjdTN1o3YnRT?=
 =?utf-8?B?bzVuNGtOTjNqdVl6UDhNbndobUI3TldwRUFWcHhhM0pKbDhDUzZwaWtydFM4?=
 =?utf-8?B?TmxkY21hMGc3aG9TTXVTcVNJQUt4VHpHaUEwTk8vL0tGRnU0cnJpaVVLNUdF?=
 =?utf-8?B?bU5kUlZCLy9nNmMvRk55elFob2VZOXFVZy9JSWNDNWNoYkNUMm5sbFVWRENF?=
 =?utf-8?B?SmNqQW9YSndsaGp2ckI0TnRIVi80Y0JQQVpTTFE1L0gxQlJZQzVSbUpSS3Vk?=
 =?utf-8?B?emhad3JBSitmZDBhRFdJZ0cwYStlenRnTXoyTXdmQitCTkxxa3Zxa2U0QW91?=
 =?utf-8?B?anV5cUJMYVNuaDlIWXJmZ2ZzRERkUDBLNWNJVEllRmZ4QVREbmgxVUZLd2tw?=
 =?utf-8?B?T3Q4TnV1bDZ0ZDk3VG54cS9vMnZHS2xhNmxyQjJ0ak16UXhXZ3NTTW5BNmNl?=
 =?utf-8?B?VlJrR1pRS3dQUzh0VXVsdGU2WGdhVUcwTlBvekNPaDBmNmVLejNnOUZkSW0z?=
 =?utf-8?B?bVY0cE9qbUZqOVNiY2NkY3l6OHpvcGlLdjhhM1lLU3kwK3RJZk5XUDdwUjJ0?=
 =?utf-8?B?NG9ZSkJ6QWxTeno1RUdkRVRtT1p1c3ltUDdtZWl6SnhjZWhZald5SkQ3V1VM?=
 =?utf-8?B?KzhONFdaZzM1N29HVjNVckFTOHFkQkQrZ0tSWW5rTm10NUZLL0FhUUNLNkNw?=
 =?utf-8?B?eWtuL2paVmQ4MlF4WHh3ajJVdEhXWWRCMjM3NjNmVjFzSTZzdWJZOFFWOUZw?=
 =?utf-8?B?eDR6c1BXZ252aGVCSm91cWtmb05jMURCVFJ3dEdvNElycHBYeG55NUI0RHBj?=
 =?utf-8?B?Mlg5WE5vOFAzMHBydDVhbENPV1VRR2dCWERHRnFIa1M5djBDUWJGdFRhWDVW?=
 =?utf-8?B?UWE3VGNCbm45ak5ZOVoyL3cyYUNSeUR2dy8yZ2hyZnZFbUhGRXJ6d0FlQnZk?=
 =?utf-8?B?T2VwRy8yWm9TNmlPM3o4Znd0WlBOS0Fza01veUt1UGZmaDM1eVhCVFY2b2Vr?=
 =?utf-8?Q?2ahXgJJSWC9YnK6k=3D?=
X-Exchange-RoutingPolicyChecked:
	MDX46fnGyvzko7JGp36yPE9LmwYfpQsdEpvEvC/ttNFiZEZiTcHAxn7+qwhsPavokZVt/KPOLu2ivfAFbyjq4+3Ohf4DG7yXQ7lp7GJMY2do8M7hmBYTLCPzB5WJw4bYNAjYY1qg5hjUvWX3Gpsx8QYzfQEuT7z0O8VkkUntJYRcyvHEOewCJR3ghyQV6QZAeDJxzlzDalk7XoS6Xq2NayrrVi+w1Qu0pw6G4bQlNXRKpbHVt8pz2zKP170cXDGxgp+k8zCvKNrH3rpKOxH9sqb2pbyKLwhfs0klm033gsLp72K2nnnlUUDw2w42nHJ1XqFohQZ2j/TxgfQAX/axyQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	R2vDOqmo3r5RjfinuM4cCOoJfvfTvuWzbWAYOYYl613lRGe+HRqJ0BnjJAA9ljtiFc0A2Zh5C08mfmLf4TvgdTz4Yf3MAIzxoXQmqNj70AdipPn/oN9MnrrPFfhFmIyk+KQn+3/LvdFpc2WOQHI9RPLtJbUYz/3Z7aY3eMjEgjXmp1q/e02lmAFrX55qdHD24N+3qycZJbgL5vKnJ5aUWwXw3e2FEVXXw9zclyavKl/J41Tpdcrk0vj0TN9ZDEPOiNkqgFfJcekTq98LI0AsdwnEVqDDwUujRGGxSeWUDnIA+T3hgIZgCwBTJT7gMQgihdVi+Pm7Xa0nOZji+erxcsyIDbw0MvDoGrftNjPg9wh2C1DYrRKAK8OuRF47zIJG+Iz4pv2E0l1irXwNr8z4PghyhopRLey1FBhVrlY1brRuXwQuSk+JkpH+YxiiX3r13wi5ErWDpcUWuU8E1NBwz9qafAZRyaBMiFugYDbv2IApwkbH1KTwhIo3HmRNae0IjYcmMpQn6sKzfftaxl+koZMzofoJmFMCFqobfWbb77kTjUs5l15AnKe0Pe8yFHuEjZQuW9uZrsUokpkGq6jxTtDKQhJUXjjNVTcVBau4qOc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2c7d1c3-8ff6-49ac-c8e6-08dec10c4912
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 01:06:04.5380
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x8yTJtfzQtLXW3nzsvZPJyz3NVKKV5WEG4Ib5qNGHPZHIDkE1vIJeluPMAHQynf1BGxWMOgD9BFPZuqmWd9Ryj2PXUNkBbPCC7Q+PJGpipw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8017
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606030007
X-Proofpoint-GUID: fRBuhLzy0LwWOpS1V4BMhVAWFlM5k5TR
X-Authority-Analysis: v=2.4 cv=BMWDalQG c=1 sm=1 tr=0 ts=6a1f7e00 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=plf8rDjJAAAA:8
 a=-fKjk79AAAAA:8 a=DAA9vKtDAAAA:8 a=7GPU_rULAAAA:20 a=ccY35Ng8AAAA:8
 a=pM9yUfARAAAA:8 a=4RBUngkUAAAA:8 a=Vt3CtVH0oBQd69pPWIwA:9 a=QEXdDO2ut3YA:10
 a=JWTSs7K9Rhv-lrTctFka:22 a=yfRUlTaMxgxjPDvNZr5O:22 a=7ZdgAII8e7kge3fOK94Q:22
 a=jMKBOVNxxD9njo8wKH5I:22 a=YH-7kEGJnRg4CV3apUU-:22 a=_sbA2Q-Kp09kWB8D3iXc:22
 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:12302
X-Proofpoint-ORIG-GUID: fRBuhLzy0LwWOpS1V4BMhVAWFlM5k5TR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDAwNyBTYWx0ZWRfX+7wXYZNHiyOz
 2WDtflRLaCA6w6QJr0Uf9aVXoBQmjsboofSXRBzu6w8WiftaLeXFGi+ffYGpt3w/OTKnb3Fsbfr
 knjfGkLgwoqvkVbCFGCXJw+5tGoGNknJITo4/EfmdopeAxsgUbePus8ybXwxnXyKuZ/BCRcVRli
 jHw4JLM3eu9zEBpkSeHELNsjsft7mouLPS0XoYoZ73JOQwa3lMDDC2t0mHBgrmVNDiBzRUuVrcE
 dBsrlehGNwTmcP7k21/Nr3PiGI0awLEZUDafwxnC02eiNU6HGqTFV5sjTo/kBpIVkIYpo1ikNKZ
 VlCSCyVcTtlFrijZYVkl5rrElosD+/2jep2GIiwO4BjA//RsnzFNx2MIZOfkb03J+tlnnw6wEpQ
 7ODmJN0IAjs075ssrmeCZzASrjHI74JHk4Z7miqMv9UvH7Blev897ColgervEmyNWkKrU+6R0W3
 rH//vBRzwcK+a3Ld3cdqFaX5Rkkx28ggBIEROTGU=
Subject: [oss-security] Fwd: Go 1.26.4 and Go 1.25.11 are released




-------- Forwarded Message --------
Subject: 	[security] Go 1.26.4 and Go 1.25.11 are released
Date: 	Tue, 2 Jun 2026 21:11:30 +0000
From: 	announce@golang.org
To: 	golang-nuts@googlegroups.com



Hello gophers,

We have just released Go versions 1.26.4 and 1.25.11, minor point releases.

These releases include 3 security fixes following the security policy <https://go.dev/doc/security/policy>:

   * mime: quadratic complexity in WordDecoder.DecodeHeader

     Decoding a maliciously-crafted MIME header containing many invalid
     encoded-words could consume excessive CPU.
     The MIME decoder now better handles this case.

     Thanks to p4p3r (<https://hackerone.com/p4p3r_hak>) for reporting this issue.

     This is CVE-2026-42504 and Go issue https://go.dev/issue/79217

   * net/textproto: arbitrary input are included in errors without any escaping

     When returning errors, functions in the net/textproto package would
     include its input as part of the error, without any escaping. Note that
     said input is often controlled by external parties when using this
     package naturally. For example, a net/http client uses ReadMIMEHeader
     when parsing the headers it receive from a server.

     As a result, an attacker could inject arbitrary content into the error.
     Practically, this can result in an attacker injecting misleading
     content, terminal control bytes, etc. into a victim's output or logs.

     This is CVE-2026-42507 and Go issue https://go.dev/issue/79346

   * crypto/x509: split candidate hostname only once

     (*x509.Certificate).VerifyHostname previously called matchHostnames in a loop
     over all DNS Subject Alternative Name (SAN) entries. This caused
     strings.Split(host, ".") to execute repeatedly on the same input hostname.

     With a large DNS SAN list, verification costs scaled quadratically based on the
     number of SAN entries multiplied by the hostname's label count. Because
     x509.Verify validates hostnames before building the certificate chain, this
     overhead occurred even for untrusted certificates.

     Thanks to Jakub Ciolek (<https://ciolek.dev>) for reporting this issue.

     This is CVE-2026-27145 and https://go.dev/issue/79694

View the release notes for more information:
https://go.dev/doc/devel/release#go1.26.4

You can download binary and source distributions from the Go website:
https://go.dev/dl/

To compile from source using a Git clone, update to the release with
|git checkout go1.26.4| and build as usual.

Thanks to everyone who contributed to the releases.

Cheers,
The Go team

-- 
You received this message because you are subscribed to the Google Groups "golang-announce" group.
To view this discussion visit https://groups.google.com/d/msgid/golang-announce/b412db1a.BAAACMDeKCEAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqH0cC%40mailjet.com
