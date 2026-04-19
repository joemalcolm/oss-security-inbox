Received: (qmail 11393 invoked by uid 550); 19 Apr 2026 15:43:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11368 invoked from network); 19 Apr 2026 15:43:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=ufyWJBsQdpaC0Do6acXZ51geWiDp4G80aZbCda0fp3U=; b=
	kRWwbM7sHPwhWAO44leOfKjmHfrNV47YDRTtsGGEUA/OetQDSSU7LmobEUyFQXZ3
	/bdDC7RXUwJySab2YD2J6cosRyvcwAcbFvDG1ZXj9Yi3ALABjQ+hF/8AGpeUePrJ
	Dl/qR4OCBJ4/KkE014e2n+rM0zA4ic1vgaKQJKCDCDcYvwZ+O/btRzlt9Bvs66XV
	C9h/XbeY5I+VZ7lzCjeb2SuhwwoU3frl/DBCdLES+Y8gEMFURaDF/h5eO8+LH7Ye
	3+q0ps5aMdgFK172A3ushHti8a4mUOeggAjcG351Pntboi+t8KJhafSgfIoHtnTN
	Qhw0pUpNvQAODeR8cgN1Eg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=plmubq7mW5/dxLgV60R3dV0ICQoer0+bp0771sLArjoSCqnxRJgFy/2HWI//YvErTurvMIhy2InpSntBLNPt62ZeEMAHjaDSShFYiciBNCla13CurGPKEtyJ883rg+JpkO1+41ZDowC7osztjPiiEkymZG/Mr+QVfY0m4GqeGcnjTFRAXi6kO8f2rHPExNfgbGJIRZ3tWCwLGNce2kSEewU1yKS7wWmbDJdNTx47y+a0bMj616GHhEtX4wkqGeD2qi+oaWwUzRVDfe6GnFiDlbZpGZPAYiHDa9zTOWqMZd1a00sjWILc+t/aJJGWIrCAZn63FlN3hVVWiS3DmUp7Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ufyWJBsQdpaC0Do6acXZ51geWiDp4G80aZbCda0fp3U=;
 b=QGELsdV5HzE7pE5KdF/TFpz9htSEzHaiiO7bfICeSaySCuh4IzVB8tLhPJ5aRRaaEXfGbB7xkVTJglCib9HJlgtDvfZpwudD0shXKEfMWsA5M4DpeWFrEqkue/CwINoY3Oz8DMPyw+jJyQ72vwV10h1I3AXvcghrL2onKF0op1DPIVj5VajdOjFzTE5Zkbe+jtBDKC0MQ5bRDbu5cVcao8O5t0jAnQLSU/K5xqgVuqC5kdQxeXAllsc2UhPNAd8eptyU0lnJ9zmMK7qaFypCSUo6jQjnUe6Q82UrSN505Cb+LcAXyaeKpqOhS4gq8jDfhL5G0dGNf2dXBBCZC0ciVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ufyWJBsQdpaC0Do6acXZ51geWiDp4G80aZbCda0fp3U=;
 b=KDlQr9Rb0gyYW3wZ/QI2HQ3EDsW9xhbxqpdLZq9IX+mxT//Ex0JXLv0TwIcruCfTfs1iDx8yldl0JOmqPnUybDXjAAnelAZqv+lHGKLeta7NDiAwWg3oHYWYEHsaCE8I7u8CVAMyw2UGheCCY9gmAXw0SJs8PUa+EE6Vmt6lvMw=
Message-ID: <5b46a9bc-2c3c-4e66-9602-3c7e3dfc8900@oracle.com>
Date: Sun, 19 Apr 2026 08:42:57 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, =?UTF-8?B?UGljbyDwn6es?= <pico@amdal.dev>
References: <c9346cf4-9e3e-74d9-2bda-951bcb9bcab0@amdal.dev>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <c9346cf4-9e3e-74d9-2bda-951bcb9bcab0@amdal.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ2PR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:a03:505::24) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB4599:EE_
X-MS-Office365-Filtering-Correlation-Id: dd979070-ad61-439b-2a4c-08de9e2a564f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	RwwXrY8J+Tg5jDuHdWPVjYqq4CVE7xmk/+MnZAGQ+zf+8X7qW6vG8TmJq7GCBZWy9wAxtGMx/v0q7aKoKvS7Cg6Qf1pf1xN2FbDBk/rObd42TFN3Qyb+2dDBctSXen1Hc7/iW8p8US1WmV3styoJKlNipvtkH4B24385WcQ4jnhH0xXROIaff3OYOpi7I90BAMXICOOkj87k1hvJQzohjgr/TUbXuLvT5AUFFA8xGekY/xUb0NYfwAb8vhyRCfTyNxvJbhCWjs54cwmZQZQRvpeawrPjUSgCDYt/TSvQ9WdMKKaKX7Flgr2Ub3RuCuUzRwBv2IUTev421STnkAq/4ZuQevZgGZrWS82DogWeRxTOxPofaO47j2iAOKtTBk6gv6dEIjL4Cv+Pnvrf1qRNUNJChj4s+qsFGdz4pE31eZ9O0dmDSLSb2W4lvj6MGHGb+unFKTaQe4jfWsKd5eIJ5WZGoF+REgeu3sI6wG+Wj4wWGkzVPhhc2Xm1L6wquhfwVcyV3ZRhYE0U2WFsnHi2rf0xvz9uWCMl4uBhUA9exmJ/XGrW6/VaCQK81mxCcXFDHe0XvjDXym8Pvx8KvwY09X47kIi4/D5wbZp+biP6J+giKp2ubXw73CpY2czpHi7ctWZYbm76jMJfWEOydttJM+X/kQ8pg9GPPsnKu221i/BTQNJaIpaZ0dUs/Ew8hKES
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZERzVS9UV014WFR3dlIzdWFmR3dBUktIU0pZL280bzRJTmVsc0YvNTZOeUNj?=
 =?utf-8?B?dVBITXNob0J1aU9rWEJ4LzBnR0ZheElySDJxQjNDczZtVTJYVkNXQTVDa1g2?=
 =?utf-8?B?V0phVWZla2lDeG1DdmU4SUhYdjBHNnFlK2hwbVJOd0tUU0RkcVIxbm84SDBT?=
 =?utf-8?B?R0FZOVFPbWt0Qmh6Ym4zWVhYcEN4aGVza0dEUkpHcDRlY21HcHJrQitVakxx?=
 =?utf-8?B?dWxpOVlyZGc0UDd3UU40SWRzVWo0L3c4ODgvOUczVElsM09uOGt3THVYRWVl?=
 =?utf-8?B?cHZhM2QvL3daTWIyZEFmdTdjY1JJZ2tNTDRTWWNYUzdRVFhTcHZmdHM4Vm9P?=
 =?utf-8?B?Q3NHV0ZWZ2JvMVA0SExkaERHcFJ3WGZ3bnZCd1BNL3FXcW1xOUJmUXZmTmVQ?=
 =?utf-8?B?b0tsMlBtZ29LRUI4dGRVdkpUUEdZS1d5bDZ0dFlxZkx2RXlVM1FJTmFvbFlr?=
 =?utf-8?B?MUI4Q3JGTnAxSEl3R3U2UGZZWCtDdnJ0K2ZhcVRXVWJFQ0VIZytRanZ0RFUx?=
 =?utf-8?B?MUlyU2RjMGk5TTJSK0d6SVZLUVNZOXJSYWFuQThrRHl3Y3VFNWhEd1hFNDAv?=
 =?utf-8?B?NlRuOHpMN2RtMlBxUCtiWTZSazZGaUNYdCswaFFmRHRlckYyNDF2R0VPc25S?=
 =?utf-8?B?K0pXUzFKN0diZHJQenBBQndWVGFLbGpXdUh4MUp4VzN3VGI5bUhRSVpYcXZw?=
 =?utf-8?B?NjM2QUJmUEhBWUJDRlNheUE5UnpyOVp1eEpZd2tnVHg5QzlFS0dSNUh4TEFX?=
 =?utf-8?B?ZkRERXdkQWkzT3F6cnJuRXpoN002UnFoUW1KdVNmeExwZ1YyM1QrMDNpUUs2?=
 =?utf-8?B?U3RlU0tGYUpYR3BPdElpbTIrTVZXMFU3bmRJSEpmSnFIR2dQcVVJM1FPYVl6?=
 =?utf-8?B?aWxpeUxmUC9OZGlhMW4zRnJuUnkxZlVKbk5lYjBsaURFSmhqOGU5REhpcTY1?=
 =?utf-8?B?a0NwSVdaVWNHM3JuSjNVekswa1NGdFJWZmVGT0lrN3VNcFBJdGdDYXRGOWJU?=
 =?utf-8?B?RkJ3dW9sZnc3QUtLVFJLMVRoY0VyWHhDOVQwNUJTd2dVbXNsSlJralFwdFBO?=
 =?utf-8?B?STFacngzWmxoeVY5NHlFdEFwOWk5bWhwbWwreFVzUHhTVVRoRHIwOURGR251?=
 =?utf-8?B?MzFMK0gyYWxJUWhwcFhvdUM5Rk1veDlwL2pRelBpdnB0bDJHc0xDSVQ3UjUw?=
 =?utf-8?B?QXZpa0pDVmVqa0w3OUU3aCtKZG1udDdsc1B3anJKRDlaWlBaM0tIOGlpdnhW?=
 =?utf-8?B?amNvYjJGNjJqaG5MK0E5Z0ZJRjU5NW9EdGZDTHoxZ28xVlFoRHppU3hWckIr?=
 =?utf-8?B?SzJoNTJ2QnR0aE9XQmJMUUN2OVl5UnN4L0sxbFphVGpUVEtGVklFaFAzWXBm?=
 =?utf-8?B?M1FLa2x0dHRSUzNOQytpNy9jZ1p5TzdZbnF2N0pjOHRQbnVxUFNsYU5ZSkN6?=
 =?utf-8?B?RWdvWkhCbitUNHJVYTZlZlpUZENMQUVQMjdZaW9IOFlSdjBFaHBZbnFwY2Zn?=
 =?utf-8?B?RjhNUTlzbEl2aFVLN2ZWMS9PeDlNRGFGejlxMDZ2UGNRTkgyNFh3M09zaTJB?=
 =?utf-8?B?N0dUWnF2Z3N2b1dzdUN1c3lwdExwbHM4VHdwejBHR1ZnUWx6SFZLUlhjclpl?=
 =?utf-8?B?OUdHa2JnQm9tYXdzVDducHZEcGg4SXI3clBIcWJBRTFkUk5qYjd2NFg3ZkFr?=
 =?utf-8?B?Rm9SWVlRU1lXMC9lUHE3TmpaeExMMG04YXpLelJvWk1Sd29jWG5ZMi93ZXM5?=
 =?utf-8?B?SnZVM0ZSQllCTjR3cW5lUUxXTGNHY1RlRll5bm1WUnMyUittRHdPbUlkYzFK?=
 =?utf-8?B?RFVDeEMyOVU3dVZRYTEzdkFnVzlQL0o5Mk5JT3pHUjNSVEIvV2d5cFpXSWha?=
 =?utf-8?B?Uml2QTRSQXlhRXdNdU41T3FVTnRpOXVBWU9QN2swSmFla1NSdDFrRXRRZk8x?=
 =?utf-8?B?bThmQUZnZDhCNStYZHIxcm9BM3RrMXZkN09COXZvdmthUkREWWZsNXpGc3U1?=
 =?utf-8?B?MUY1TlZ6SnNxa2JJdElHRWpHVEpoMWNRRnhjSStydE5HOHRUaTQvTVpYcmti?=
 =?utf-8?B?aUI5RVR2MVFyUXdPc2NyTjNnOFVLcExhQ2ZMK09QV3UwanhTbm9nc0VpOUZI?=
 =?utf-8?B?QThET094bGJEbWxMKzFVL0JHMlpYT09CT1A4Z0pPOFNQRU1aRXFFQ2ZpODhP?=
 =?utf-8?B?RG1CYW0yUHp6M2pUUmFQem5raEtNdmhwS3Rvd1F6ZHltMXZzT3RmRlpmTDdZ?=
 =?utf-8?B?dFVOTFFhb24vMWs3eExqUi8rRGJVUllmVkVRTmFOdEM0clU5OCs4YVlzb2lK?=
 =?utf-8?B?WW84dGRlVWtZUUQzdGk1Sm16cnQwRTBhdm5wdUtPNmRlN2tTOVBzb1ZZcjJP?=
 =?utf-8?Q?DetEUd1LfQAKlKqc=3D?=
X-Exchange-RoutingPolicyChecked:
	oT+9YWYql9HkDKdzRFjU1XJsWoIxE4IqnQ0o9Zg4ncJKzkcq+s6zXbGzaaMsxHX3QimyOiRlxwU55yjcyTLD3gElxkSpSPann73Jqa03FIDna+o+0cKseGORxOVAhygAwDPOlOiNf9n7+JSb1pop/1NPrqqPAKVCsN0qfZBb8050k+CHeVkSBeEjtcA2oaj0bsAIIZ37/nBsbFz/IZMVGIfqIUkRE5VF1Ucaf4OQfRc61fpy1PSkn24JTtmysSHwkEapx+QmiXh01WHuFXetIpjXMsLAch4iTpJd9oOcsZB62Uxhp7ujI4nxUPlXweF/T63GVE6zJGcWSm1RYSnxTQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	5N+FF9AMip8dPyW1bKsJU7J1pLhEOENrWRREzydw2PW/VY1g931wyYl8mgPMR8MSubYA+z5ISXxgKGM1pu4FCeYKhx2CrRVP3M7iONb0WWWNhGIJWTIzBghX4l/RMdTQg9PLqrOOslTmCsJ9LuiGksTE64yf4gl0ElftS6kG9vRQ3SaIqnLPkzYANYsZXntoZFRGYmTKM7Udx2D2oLpoMbQhY1uHRV2XiY7zJS+EaOq9Pr7kxhSJpyc2dijv8t79EqY/bMisTVVzIfiXw/qXwP2mEy7LvQHyxLJvM0CS84C/AgXL1hValP7VAm1A9JKKmwiW4xAXPV2U2ftmwlRe1PlZJrQVHunDGeVBGSoB8jCoWsDatYCeFuKPaDlFFq4R7V6amJALPpJkZFF6xUEH0WdWalCOBBi6l4mMPqX0ENihOLVOW6no2A5baYYj7guB3L0ewWq1qNnC5CezFNbgULJwIpYTj3Mt6m7NALMEdJyHtpqNjJppdBVwL9Ns6ARtwrslwtjlBQfZeIe8hmKOs6YuKCUjqiRiF4w1bBeiD8500fluvuf0d+Peo/BnMYf6DgkbfPbjYiiausEesLUJ/KvytbQHLJaQ8a4ELvIe95k=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd979070-ad61-439b-2a4c-08de9e2a564f
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2026 15:43:01.0910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /RQce40TgKd8mOvpZceQoY2z7pfycEDiIXOYDDzhU64xru1XgiLo86tljxeY816vD/SStgu0m8J80mMMHy7Lyn2z8JPSz7pDLetU6FLbtDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4599
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-19_04,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0 mlxlogscore=999 lowpriorityscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604070000 definitions=main-2604190168
X-Proofpoint-GUID: G5WytzBjBTn0HAf5auj3VB4yp6FPF0E0
X-Proofpoint-ORIG-GUID: G5WytzBjBTn0HAf5auj3VB4yp6FPF0E0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE5MDE2OSBTYWx0ZWRfX5T+fuiz4PbZj
 CMVNoZ29P1/8BZraEe33Wj4vhm65DxxPlKK+i14vcrjPuYtjLq7rBb380iXfsG2kKL4+TcKGe+7
 csOMkKXD/s6Uw52B5giJrWqTNliMkLbAvVTTM9gCnAuPtodl1z6xUWDQP25ziF47pEvBzKKmm6n
 BhVm5umHEXoBGXdsUcwA7nufA+XxAU/CEBeKgDPM52szWw3yLIZjuwqgNab5Xs2Ja695tduVzy7
 OQjNEyFbOEiSFvXfs6NnF2mYq9PEA5UV8OhG9EvzXm8X/iJz850cA3F9ytLv/0LwvH5R9axA3ro
 AT+LBk0IZfpG3nfSEA75xVU0SnS2hGZUFb5+ZTjv+D/0t7Z4+HpmbfuPnFNULTGQWJ2z9sR423g
 C8JdSaBQCzKnrvYRTECXoDxFWSbUsgmNOVt655+Sv7MkMHYzZnRUyg1ffZSDFOfMDnQiZwhrISM
 54uI2JgbByFcLAxuG/XP2egAjo5ZBawaYV7rvciA=
X-Authority-Analysis: v=2.4 cv=aoWCzyZV c=1 sm=1 tr=0 ts=69e4f808 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=XkRKQH6RAAAA:8
 a=8r2qhXULAAAA:8 a=20KFwNOVAAAA:8 a=yyJhbDGUAAAA:8 a=yPCof4ZbAAAA:8
 a=5sXya9Zo3AoHHzOD6IQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=zZCYzV9kfG8A:10 a=1gUyE30hU_ULiMxJiLUW:22
 a=8gvLZcY7Nlvl4CGD_6nf:22 a=N1KAkYT4l1eb6tGI3RYA:22 cc=ntf awl=host:12291
Subject: Re: [oss-security] [CVE REQUEST] terminal-controller-mcp: trivially
 bypassable command blocklist enables unrestricted RCE (CVSS 10.0)

On 4/19/26 06:06, Pico 🧬 wrote:
> I'm posting to seek CVE assignment and to alert users.

oss-security has not been used for CVE assignment requests since 2017:
https://www.openwall.com/lists/oss-security/2017/02/09/7

To request a CVE be assigned for open source software that's not covered
by a specific CNA you can submit a request to either MITRE or the Red Hat
open source CNA:

  - https://www.cve.org/ReportRequest/ReportRequestForNonCNAs
  - https://access.redhat.com/articles/red_hat_cve_program

(Though I've just noticed that the web page at
  https://oss-security.openwall.org/wiki/disclosure/cve is out of date and
  still tells people to mail here.  That should get fixed.)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
