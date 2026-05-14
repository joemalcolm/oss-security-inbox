Received: (qmail 9561 invoked by uid 550); 14 May 2026 00:06:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9539 invoked from network); 14 May 2026 00:06:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=kgcxbqIedtSjn78FIJgE4XxY8yvaqMulBSHvoAt+iAo=; b=
	PAmFB86Nv7u26jU17cWtncSXx9FbP6cXBM8NsvWCEaDNhGDhEMK0DFbKHu3hJU4B
	/xKaArZyEry8MuXab98ifCPbhCIaQyRnrucMmhQ0guOvkrmCKW7mgZqL0XdJETds
	mUYBM9fhW132FhQ+XXbHoedRtwEFoCSjVZT4jtDrNlpXBVzilBJTuvOT23slogLo
	toEonurtLvQ7K5EUKUgo92vWltJ8qSPzdgH9Ehu+jv7or4L2BMHA82CaRdDw4+7S
	id6eoU4w5BMNr43maaRvg1dXXlDCSTUoW+0RGVVKM0/+dLiUG5Kp0uB0u4GY1ZPV
	5gVs2dtChStyG5yLJHbxXg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BAQpvRrp893+HPhVFbrt/lTk2txYEtSePL136ucD3/Kk68WscUbqMm0RJ+jwfxQllTom/hDSYORL3spq3rbThOVozYY+xarG3LKxt9J3+Kc+KoJvti9QeSJBgwggNlM32BEATLRs4al6v0YJ/2N2ATKIyN9XvztjU3Cfd/h3ezlBrmJTO78AsMLSNy1+JlzGXmQeFDOrZdFAkoO7CSjR1wkzNB9FvSMLm9x114Sjms06pU/VEis6RcdMY7rqO52CVQolgfgnYv+aBANC+bexO6G1lIF06ZVXIW7bIl0caBkEWVxAed6H9S2exrD6rcy0AMQ92NW3JBUrNNso0pxypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kgcxbqIedtSjn78FIJgE4XxY8yvaqMulBSHvoAt+iAo=;
 b=k/VvabCPZVIw4ygMMexiORhtTlHr81VIxgMA6f4QzFigauiv8vBNiNgRwvfZ39VmdgXXNNJhSFDCsF8+S0+iaEQyKsOL0aHfO+HytT8wBV8xZHFlvJcMnrFfwsb+C1hczRCODIL41gLljQQuRd//+ZubSl+RxSWcaBnMczFZ0Q4ACb+4GtkHypuIj9st3yvoHhBvsR/bFNtu15zuWvl/nDdiz8avEAu8LTFzP1D+UcthlnCR6ABCokxg18KlTY+pc9p/UldfTBLVsGimxx52VdhhD5hQAPCq3ZHDW4X3Rv9WWBJ51cw8LLPgrPK8N8bcrH9xyv60wVVzvblk1GFd2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgcxbqIedtSjn78FIJgE4XxY8yvaqMulBSHvoAt+iAo=;
 b=RcU1/qErn4RkKUv2/Jk/iL29Ow8beYoAx766l0+y11SmmjIU36umAVp8qgwPz/3WBHE2snsoiSt5xbOSp4bJ0Zx6SWDY1ruv7i4kzLYrgBHOLtaIte3vMwp+iPoENKhMa2o72fhB4qUewe97yvpKuFA/kC5Pv70/zGJXxPGods4=
Message-ID: <a282ed88-5745-477b-ab63-7fb360cd6ae7@oracle.com>
Date: Wed, 13 May 2026 17:05:42 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPQ8Y0L=qe-Q3uP37Hc2aNRNXKOR49kSqBEDeuwyMhScmA@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPQ8Y0L=qe-Q3uP37Hc2aNRNXKOR49kSqBEDeuwyMhScmA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPQ8Y0L=qe-Q3uP37Hc2aNRNXKOR49kSqBEDeuwyMhScmA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0002.namprd07.prod.outlook.com
 (2603:10b6:510:5::7) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA1PR10MB7113:EE_
X-MS-Office365-Filtering-Correlation-Id: 685f136c-8b8c-440d-846d-08deb14c8b4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|4022899009|366016|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	TMFyKj0rTkqX1pYMf3Izi01Jx07tPkJYeluvmU7tOo9nVkB90EsJdc289Y7oxSsmJTaX4mD6wwHDCEwoIxVMPU5risWvz0jdErdCnpZQF0rjYP15CN+WKIm0lM5qy+X9/Zz+h5TXcg98KkV9CO37VI2lUGoeFx1rnC/e+5bfqtv/L++BT2AmHAFTfvBlgRO3GRHmkOyjoAFcZBxXoQyBL1Uj3s1W6I7M4YZylMcCoG0VUmGOo4dROgV0I95Lk+iappqaKLZEHbArkrFQJiI3ZCF1M095xaXwPF5yKTxak4YoACMeTLV5dtesHCzsZY7ng5V2QNYeYMjygEyac9qPJ4jM7G8JRHKmumGqCMEKzWk6LVGiCSIWpWOHW1SDRta1Od+RdkSHhb5l07+oOuSptmTbn1U2s1dqqEl1zqXrb+DWxuuTggoHkCgJHnKu/hon5hLIlzRbdG9mKI8tvua4dpH1/JXH5zUZl+sTnkw/RykXVwDJj34VBXsnwbE6AxoZQJaLFfnalxrOLwKQHPo1W1V7lmBgDV6T/FajchAdYOXSz0p27Yg59vwCE+pOhG8INJ2yeCIveIsFMyMKj+0RFhxkXcjTpbCPkmleWGIO+V6Y+UOVHu8gADaZHvha2bL6/VCkYJmYYi8nKVle1QybRRjjeNTumn1rSYJvcb+obkpAws3zPMS2v/lCnqOFVFQL
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ekNJWVVZd0FSYmREY0FETG81aWl1aU9MaFc0eG9pS3JTd01lSTF4c3p0Yndq?=
 =?utf-8?B?NEltSERrb3FhN3Iwa2llSGpKdkMwNHhlYjBFYWpGOWUzMG9GS3Y2YUUycjBG?=
 =?utf-8?B?cVMvQW16WkU0dlpEM0N0ajRadW1SSmVyNXEzOXhuZ3pWNWQwamhaeFdHQm9D?=
 =?utf-8?B?dVg5T21rcHRuVkVUM0s0TXdpWkVNeHhVUzcxUytyRnUzUG1XYzRuOFlxUzZn?=
 =?utf-8?B?WmFhYUFEQzVKSldCVmRLZ250bU45d0dNK0x6UzJ6RDkxYjJxeThJYlZDVUc5?=
 =?utf-8?B?ZUd1bFMyWnB2YTFRZFNVWGNxbmNIZGt0N3pFeDFKeHhEMkNxZEhmVHUwM2tK?=
 =?utf-8?B?SXZmVEtqYSt2ODNlOERYZmx5RlBsNDB4UDhJZ0QvbWN5d1JhMXRtei96dGVr?=
 =?utf-8?B?Q0t4VlBKTldHeVRNeVpQdkxJYUtxVlM3eVQ1RUlHNGcyUFlaa3pMY3dmZjUw?=
 =?utf-8?B?ZEpWSlZHSXRYckJqVkV4QVk4WFlSbzM5TkpkV1Fabk9SU0p3Y1hKeXhpYXU3?=
 =?utf-8?B?YWxzZGRTd2pZUHpvdkxuWUpScm5ZWmdiL01UVVl2d1V3UHZJYXlEMDZZWHdl?=
 =?utf-8?B?YUk0YnIwTjJBeFYyYmZQbkM2SStBVEVFMFJ3dG5ickpwZjFnMHZLd0ttYnRU?=
 =?utf-8?B?dy9CWlMrdk9XaW1ENE5GYjFUcFdsa1A4N250V0dwTjMvbjQzUElYZW4xQUpM?=
 =?utf-8?B?czlXOVVmeFArYnB4N05OVlJDdjVtdVdFMjRmbUNjK0hrTCtoSmd3ZEhxT0V6?=
 =?utf-8?B?SlZhMEd1K2dLZzNwejNycEkrWGtiVVFjdUhmOENGYkp6WktsaTlkQjVMTGNi?=
 =?utf-8?B?eWd2TDVRYVM1RUg3QXBZOEpXSTM1R1gvV3FBM2VpcE85WTVaU0hBWUljRWgy?=
 =?utf-8?B?US9uMWowclROTjY4YTJGaitDMVBPc3JnWWU0dytoQjZRUXdJV0NCTGdkZFJp?=
 =?utf-8?B?aWJqL2FrTlRLYXVRN21zWE5BMUdmNklySFBiR2pTMElJdERwSVdFZHdVUVRF?=
 =?utf-8?B?OEhESmVOUmhTMU4xS3BlQTA4N0NlV2lNbG0yYWY1UUhzN0ZhU0pWbjRBOEZ2?=
 =?utf-8?B?R0hsMm1INEdyOXBqVy92MFBucmJrajVXZldnc1U5cmw1UlM2US9XUFo0bGJs?=
 =?utf-8?B?WDBpWFVIM2gwanVkM2M3NTVFSFRWSVhXVktlMXJoQXpHZHRhcnhGbS84K1k0?=
 =?utf-8?B?R3RHb3oyV3NNVWl1NUJFWnplY1hxSVc5N0ZmanlHQ3Y1c2pKelMrTGQvZTVZ?=
 =?utf-8?B?bkg0Tnc0azRXclNQQ3VyZHdoL3ZQZlpWR3J4bGovUlJXU0FLdjN6anFmd0gy?=
 =?utf-8?B?Y1RXZEZHRTJ5bVZvOXhRaGxkRmJJd3JPVHQ3KzNVYmhQZm9TMk50d0tEOHFw?=
 =?utf-8?B?TzVaNHg1Umx1ZUFXVE5KSXRGbEI4WUlRSU1MQzBmZ2s0SldmSkF2WTlobHh2?=
 =?utf-8?B?OTJKOUc0eXZvSjhKbjV4TVZBaHByZEFyVHNVYTVmYjdUZno2ODd6SzRFeHNv?=
 =?utf-8?B?djBwQUVEb28rZFpKeHYxSmswYUhwRVdkZU96MDlSeHlrUzg1Ny8xS3FlNk1D?=
 =?utf-8?B?QTE3ZDhNQ3ZFVlplOUxySUY4ZGpYS3pPMGYwZktkRk54NWdDZzE1RlFYVXhi?=
 =?utf-8?B?Tkp5V01nOFRDbkRmV253MFQyVlVxdmgzQ0NHdVZuTzdyZlFnWjg4VCtRRlVG?=
 =?utf-8?B?dzE5aWd0ZWJyMHhvQlVCVXBsWDlGeGFzYkNEcWNUVTFSZ2FxZTRzbnV2M0tY?=
 =?utf-8?B?VnFTeXhqU0x6R2FkWmMxRnZ4bWRUVkhoWkJyNFRBMlJkQTFQV21kM3BoTVU5?=
 =?utf-8?B?VWJFNDdnNzExYnZPN2xUUWZoN20zcVd5ZldScXNoQy9JRnhJUE5JVmV6N1Nj?=
 =?utf-8?B?MFB1aHJhcTk4aW9qNDdxY1dET0E2RzBkYWhKbjVadVdSQndqYlZuMmJNenBQ?=
 =?utf-8?B?YjVtVTc0RU9RYk1rcVgvckY5ZS8xTXByYTMyVUt3OGhQQ1E1SkZtR1RSNmNk?=
 =?utf-8?B?d1pBQ2tPbW1CY00zYlRWdFJYdys2WHoweGt2eHdaSFQ0RXNUZVprNnloSWxI?=
 =?utf-8?B?cDZNU0h2OXo2M1lEUGxQK1YvakIwZUtJQVlqVTdEVXMzS0YzdmtJbUN2N3Rm?=
 =?utf-8?B?YjIrc3VsbE0rbkJ4V25vR3A3Y1ZpbGNSVFhsbVZ2aHBQLzZ1cDFHK1k0bjhJ?=
 =?utf-8?B?c0hlTkIveFkweHlzUFVZWW9JTG5QeEV1eTAvaUs4VkFud0s4cmtTVHF0OHhk?=
 =?utf-8?B?MWxaNmZKMDExa3FNNnNFMk9BekVSUEl5TmJnRFpTVVpSaFJjMFB2ZmRRZjJY?=
 =?utf-8?B?b0x6NUMxZWk2ZmJSMWVqcmIyT3VxUXNMbXhXdlJaUUg3YTFlU1g1RllKcDA3?=
 =?utf-8?Q?dlOAClZlPBJpdGLw=3D?=
X-Exchange-RoutingPolicyChecked:
	EB1KZvO6C3+71GwdnVaNiJbkxRZS2WBRLkyMv+gyjaEbdtpQCCDFdmmV3QBMleMpYSoS+txUoOJWGHR7K98/ljBTWNR8d3DQSmKY4eiPdZ3sO43TK496in131XqjQfwDQzTVUc2fp9rITmoT95HpdGjJFJ2LSjMMwY7g8A8gP8YVED6UFd03Ivnp69Mw9cbgyA/Gaxeckt/dqPEvLkNy4oz14tHtNKHM4aMDFsSb/Nw7rYZXJJM50xvC3HKIZh7ZgKsce2dz6gRTAk+7jjeF6q2f+sAA9tQmDvjJFACThtSgut7/+wnQ5XsNaIi0gocZm/90xg7EyN1ARW3ENxzFZg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	9aAZlbqEZilohfLgNaWQCJa6l1t0RqtDZ+wtRBUEWZOWyg4MZB+Me/FfztwVzH/uXb3AsvEWkhR2twIcfO4MmujVi+6kiZX2IMiNak6Z5UDDcLdQK21V9nBCMMV21gujl/zzPD+Ir22+JOXPFv19pLnfZE0cuZYN2fM0S9ALcZewYCz1Zo8rNJ5YD0F2v4yAyalxqMu5Xw1J61/vB3ITH7oB/PW6Rk7ytFnBhQstwROgEvIxOOXbKKE+L2Xb78ecXVCmmqQq3o0Ex+z4E661jHXAlOLoeUwSlYrO7ytV8tY+PWAQrlUJN03gmqBV5WLX2jG4EZQXF2iTHYiofozglIXFAHWK+Ip1ClKLBu1l8Uxf9Uo6wnKGS1aSYp3zLvcoRiTL4fSzbyim9aKQbgY2kV67iW5zoe9a1qSv4c7LFJzDDfST53QQmH/60Xi1Ebup0s6nhZoRizLPBa0wpSY2iQpP2tKLWIRTgjZJDytwEkCdf8N9ldNguSSrghMIq1CQKHq9+m44N+/3j12HeFhpeWRVTyUBoZbwHfW5MFsOw2C1fgB+sH/TTleogwNHS0qd3LoE08oD8gHOoKRxMtrKVjh24kMeN/S8Fr10Yu/kvHM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 685f136c-8b8c-440d-846d-08deb14c8b4a
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 00:05:44.7764
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E7w6z3z1rsrWydR17VRcOalclr/YsdhKoYC9YcZd1dT0C+UAUBMqQ3JxP19Tx6tXsJcwInLJkHhOnB0kG3g0jBU3GFirNEEiox8EBQ8TGLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7113
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_03,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605050000 definitions=main-2605130239
X-Proofpoint-GUID: L6N4BbH_rMTsSfc6bIsx0MuyOOBrkq_u
X-Proofpoint-ORIG-GUID: L6N4BbH_rMTsSfc6bIsx0MuyOOBrkq_u
X-Authority-Analysis: v=2.4 cv=fvnsol4f c=1 sm=1 tr=0 ts=6a0511de b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=T-3_lDw-TLMUU-6uvnYA:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDIzOSBTYWx0ZWRfX0zvk1kMSnmCd
 RiIvtRPcI2r4UkJxxu/b5ygWUTjz+vWzd/oeQHSfTimEbHMK6vdq9Tdej3tl1ebpeVwvy5G/4iB
 TDBh2V3GfTuJaDn5B+AuYhNqOojE3PRtTgJ8jeTflkcbArZsE2Jq793uKG91F5dHedMVpyPzwy+
 lQhq5kte604VuiCS5Ttwgv7EA+FR1s1MF1baHoRCHlyL0YXt1V58Q7HCyhUmoOEGRSAtXW/JA3I
 JLYu2UrgwzKOLkSXgXsicd5AMjoCQntaM+MmPthviUO/k07BibR2VgXZc1LJAPXdi8h+qrzkfgi
 +c+zFISMfqprMmSqKIhxPT+moNCRoGpS17OyLOGWwk/xrj03T5D1lUl6vhI49FWZ+rXQMIy31UZ
 A53Gz1WoJlVpWycZR855xjx5CYG3zd9+SMwfjWaYoEk7GoBgLmW77nYQnu3HWR61wzC/9jpIlPx
 FfYSsdIeeOrM4BKFo6Q==
Subject: [oss-security][CVE-2026-8328] CPython: FTP PASV SSRF, ftpcp() does
 not use actual peer address, trusts server-supplied PASV host address




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-8328] FTP PASV SSRF, ftpcp() does not use 
actual peer address, trusts server-supplied PASV host address
Date: 	Wed, 13 May 2026 20:15:52 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

The ftpcp() function in Lib/ftplib.py was not updated when CVE-2021-4189 was 
fixed. While makepasv() was patched to replace server-supplied PASV host 
addresses with the actual peer address (getpeername()[0]), ftpcp() still calls 
parse227() directly and passes the raw attacker-controllable IP address and port 
to target.sendport().

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-8328
* https://github.com/python/cpython/pull/149648

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
