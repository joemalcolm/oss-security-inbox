Received: (qmail 13586 invoked by uid 550); 17 Mar 2026 21:12:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13530 invoked from network); 17 Mar 2026 21:12:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=yyc2LwpB/EB7OGDRlZrF5e5ARdTqxC8TwlPEOlX+ghQ=; b=
	IE/L6TytoRDj43BKNSSPho2PrdgQgGca8FsOrQZmVKdTGd/PcXUwybdQ6IkcdeUP
	s8EYI58P1sjEDaqVdVJPNDErDtz6wQUPhwMJs7+5yDFcz24XQNAOXmnRs2leamcc
	vWWYMEwmZmuvZaUkwhVJ19Z6YwM2PLe0OyTjlmp8i51UyUoGH1TStALRkP7crI8k
	cSbdtQk4Dj0Tzs0GuAi4eLFXAKeY+Z3rN3HTsxgGTXdFKK1tVsqiBTxQFTQosKHi
	qNylUXtj9QA0ZjMhFw0NsGD2UOLu18u9kqJInFLYKb++rq44qx6XaLLhH4HjbHr9
	O34rSQX8K9BSelw4DII+Og==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NkyVwqDbHpE0bVvoroTFYNmRrwcXPS5f3KpjvJhQQlGqnDT1Ihv170U5ioVZg4R4cIyDdTw7RYAWVXwXSIQcihtmj43P++ralenm+FTRrfPhrRaGuYsaTj+IgIeU76PTEa/YuFUNwqJQC7OzilZldKCWoyB1G7HzxKGe2phw3+jYJzFFMfbwOHFCbWHO829paRrVHhVaEJAGt8WQ3U9U7q+Gvgd4DUvdY24W8KdtqbCEItBuF+vH8VR8zft3txd00eCTKDsv3oWYYiFh/+ebufqFClITRQVmcFgWTn2FO5I4gtmFykBc/oxaoYtEWjDmVugi9pth1Ql22duK4YXVXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyc2LwpB/EB7OGDRlZrF5e5ARdTqxC8TwlPEOlX+ghQ=;
 b=M4IKoVb9JE/Ic2ZheA/SsfsB/edXV61e0YDMAc8ZVQAPZmfP02mLbPS6N4iHa3nNoMKmNEsEURyRoLXoHgLaz1JToSV7V1hObYNL3H3VwlLLYwZgFe+OZnW7ZyOMVvEoVYdctunSDH78GVQ7TPYO2DV49tp/XVMfwdfUyvc4NC/PqwlRYZAbUO2FRSck9c5qxE1xrg28JG3ENlzyWOr5sZPrDprNKPObFJIb5oF6rJAlz0zpULY8ty4o3Jsiws6aN8dppjO6TeAxZPlaDiVq1p0nYImtKgMguet9Nn7lHdc93+LVjj2T/nRxtZcpIOdR+ZOlS5mXSgWAAoQbj+rZlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yyc2LwpB/EB7OGDRlZrF5e5ARdTqxC8TwlPEOlX+ghQ=;
 b=aIEBMONL9DBteYIwBWe9Dr8EtnVVWEPUBekGxY5VyO+0CK1Ni5LLPcjJCJ+GCHyeKquxN6wq5ZmtA4n4C1XPbP8qB3DM1ZPk1egxT7+jeEdtGb204M+tycYWg5GVp+lAFW/PjIHMZzxJ1lDYnuEOqNpFy8LlhLwruvU8xGyXMb8=
Message-ID: <81248692-56d1-4312-9813-d347bb6b41b8@oracle.com>
Date: Tue, 17 Mar 2026 14:12:34 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <9018a61b-1a9a-49bb-bcc2-152add6d48d7@pipping.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <9018a61b-1a9a-49bb-bcc2-152add6d48d7@pipping.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0052.namprd13.prod.outlook.com
 (2603:10b6:610:b2::27) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH8PR10MB6549:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ad71a6e-9809-4d20-81e0-08de8469ea18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	Gm4K/1b0DIaBErsC12vz/x3dE3peBcltlZKTvk4qU0qd+BvcCHTo6oriiCJO7UHI4nud1fl+6J4GUmPNtsX84SPsXZRlymulHrtREeBA0Wyb5KiI5T6eEuJNgpCMBFS7EdQRzLTuJy7jUrII3w45K+WcS1DE/oS0BIAWlQ/p6q0dVyXPF9cCRUeHNkgg3frScvVD7wfyif5MiiBAHS96c/SwaUR4hXMAmDjV52SQEIsmaxXCiFSx0S/zmssHh6HvpnIJCfESMMGInWwt9BDqMWuLioZs+58WkwgoKVkBE+drUrBecUOPnsS41hwzYDmCgl/pY+OQvH9d+nZIVY7Lxeq4bpldibuaWeGV2fR8vzMM6A3ft07eff5bYxU2bE98/70dvx1YtdIcvyTuMX98wYOtf/Bqag/8Pl2N4/WaiR2PKoD/aPWAejvKy3HM6tRSK0V7E2aAlycen1NBOqHsi3k1O9mQwGgOVlXfFyFXUtrZ5ztIb59xdZla7IQIcxTQ+S9X8bGzUVt2pNuq1k4baOcHldnUIfpf/R0GLig0UPc58P5MtUFRl6wN/U+LwIU+IKivRYL5LSd7VaLDm30mgF9RlPv675N7/ppAKDoYne8+L0OPTF1fAjcYyI3RFyBfRmh0M8Kt32A9j+S+aXYd3cYmjyaOv0DFZuHG/+xFvz5nOLFiGQEwYnsqf56iyDlh
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?d2Z4aFg2NkpyMVZrQU9CSS9Hd2lRVE5CY2RwOHJCUUQvanpXWEE1K1JiQUhl?=
 =?utf-8?B?b3ZhY3JGS29yRUROdDduYnJYa2k1NnQvNFd6U0lzN0o4cjk1Z0puYlBmUTlE?=
 =?utf-8?B?WFlYdUZVOGNIemNZcFdQZW43Vk5vYVI2Zk1YYnRBdkQ2ZFFkQjBIOHpzb0tK?=
 =?utf-8?B?dEs1Zko1M2VPL3F1Q0Q3OXZHc1RSbjF3OGlmK1Nsd3oxYlYwbDhGZGdYVXJJ?=
 =?utf-8?B?dEU1bmpBTkhzQWt1Skh6Wm1xeERkRUN6Q2MrcFgrYmhQc2M0SmVkVklSbWVK?=
 =?utf-8?B?bElJTCtxTUpjNUZjK0h0T2ZacDQvNHBudkplQitxK0tpMzVMOWpVZXo0YWhR?=
 =?utf-8?B?ays1MHQzTXg2bXVPS2RVNFkxYy9pR29ndmVBYzZoMXRGWGo1NU5NUVBoZWth?=
 =?utf-8?B?RHR5d2JkWFRXV2lFMCt5Q0VsTWVnWS9teDRibXpTRERrMzJrN2k2aC9LVDlM?=
 =?utf-8?B?NERlaFlpbDUxRnNkVTdIdVRzcmRMWFRKK2VPWU85RkZLRE5Xei9HL1lpUmFI?=
 =?utf-8?B?ZTBBYlNKY3ZUbHovVXcvU3ZKQXFDck9DU2tabVZudUVVUC92djg1OE96K3By?=
 =?utf-8?B?eWtOVHpKeEtyZzZkUUUzWjdHT2kxQzVwWGZBZU9PNVBOdE5jMjFRbnVoUjVR?=
 =?utf-8?B?cFZYYUFkOCtrVVFuQTlSZ1M1ZC9jY3NTS0pvVUdkUWVldFNGUFVyVm5VU0x4?=
 =?utf-8?B?VlFvK1NTYzUvakVwRk0yZy95MmRVak1QcVJXMytVbUZQb3ZBNk9nRVVSQmYy?=
 =?utf-8?B?cU8wRFp3TmVsanR1ZXRmakh2dGloRk1qT2hnNTlFRk9hZEw1Wm9SNnM0Uklq?=
 =?utf-8?B?M3F3Y1Vqa2pEUVE1cUplbDNodW0vNTgvdGlDY0JzQ1BoMnFTK0UwUUdUN2tF?=
 =?utf-8?B?MXl6azlpbWd2bTh2eEQ4ZzRMWVQvOGVUaDJuMGtSK1kycEJSdHVnM0hDSTdp?=
 =?utf-8?B?ckVmYnZZMWFPMzY5alNHdlFDUDljS25hOHJLTGU1R2VqdFF6T2FMZEVCSHZz?=
 =?utf-8?B?b3owUk9neDhFVmVmVy9SYmdiRUVTa2VsMWRPd2UxcG8xT0xJUXhtSXlCcURW?=
 =?utf-8?B?VUNHUDFzdlVJNTJseFhRVnpvQ05KK3VKMjg1QVFXa2xlQnJUbnh0OGVFTTlr?=
 =?utf-8?B?eVFWR1dOWCtJcXBVcm8xSXprQWlLdmM2MUI3czhHOGVlL1hwOUlWY1Rrc0Z0?=
 =?utf-8?B?aFJLTjdIRmY5WVVjS0NMeWRoRTRBUFljVGVCKzREQ3YzcmllYjVZRi83K09l?=
 =?utf-8?B?NUluWEFxYTRJcHlwcm95c3dESTU1ZUFQOVNxa01Fa0NPR3hnTnljcldURlFI?=
 =?utf-8?B?aDJIQUFLWkxnbktuejJBOGxWUWExK2hDUTEyd0pPZmhxZEhVL3RocW9OMVQ3?=
 =?utf-8?B?OEloSzFtNnVvYnNIY3I3T2VTaFdUWUdSaERHUGJWbUtDUzBDTVgyR3B1NVBM?=
 =?utf-8?B?UlVKWnQxWGVRb3o5NERHTVpkT1greE5Ld2xieVBQQk53QWRoekU4ZmkzK0h1?=
 =?utf-8?B?dzhOY2tRbkxadllDSDdiNldvTWVHbkV1SE9BRUc2QndoUzdpeU1jQXlSSmR2?=
 =?utf-8?B?amkvbENyTElMUEYreG5EMmY4bVkyQmFMcmYvUmM0bGFuaFZLUHBZSGk5cmhS?=
 =?utf-8?B?L1FDN1RhYXRxVytWaVQwZjFGd3FLdlRwdWRkM3NNRjBpY1JMa2pmRUJYSDJE?=
 =?utf-8?B?MEZzMVRDZm5tOGM2eGNIbldZNy9vanBuNnZxeVVrSDBoS0YyZXFJRnVDby9G?=
 =?utf-8?B?MmI4WG5hbnJuNU5BTzI5V1pvQ1U1bGR0VEFKYXFLVXE2YnpzNjBoK2dvemNl?=
 =?utf-8?B?VTBEeHN0bTV0NWlBODBTM3ZxSXBXL3d5ajZCRDkvZDZLRnhqcjZqM1hWR0l5?=
 =?utf-8?B?OW40N1FCTXM2UUM0MHhXeU1iclBXMS9zWUNNRVdGaTlwSzhYR3hMRnBBVHFs?=
 =?utf-8?B?bEM1Z01Yd3lnOGZvaE1KOE9Ua3BkcVM5NFJZZnQweFZ5OHczNHRlQmpzK3Fx?=
 =?utf-8?B?VlhaRFpoWFZLM2NEdmZEdFRXRHF0NkdOYkw3d2svcDl3VmJXY2c1clJ4MjNa?=
 =?utf-8?B?c1E0YlVMcStOeE9ycUhhN0duZ2pZUjV1ZGZLZ2p2SElXWU9UblRsdFhBd3pF?=
 =?utf-8?B?NzE4ZVo3UWJqQXVQVkQ1cEVtV0FOUCtBdEdjait1YWora01pQ1grbFZPY2NL?=
 =?utf-8?B?ZXVnbVlRTXZPdHJTbWY2N0NvTTRFN0ZxMXJ6MGVNSUsxSmR5Ti9naFA3dndQ?=
 =?utf-8?B?cjVxQVh5NVRQLzhEM1hYOXdXUmdXS3FzMTh2Z2ltZ1R1czltdXQ0T0pxUFUw?=
 =?utf-8?B?M242dTU0aHozYTBjRG9sWk9TV2MyQWpRMUVVd3FDVHJscVdUbEZ0dHlVMXZ6?=
 =?utf-8?Q?KCV5/ULUyN9LGIeM=3D?=
X-Exchange-RoutingPolicyChecked:
	bI2PRauCIz/xXi3ps1ZzJTyeV+29jkdED3AsynlSEjU9xq1Q/IeUjPN4ENa27Rg2MbJTURm2G49IVu/G98VAz4xl8JVZqbpoPLzel7krLYbS5HAv7j/lxq/dqc2PeUhh5NMYaWNe0gCCWIcUYHhTuvgqVxM4DNKFYsE5hcRHjEznoMLLFROvAQf9bkJ6vLefnomTOZKQRnA56RQgBLRlGF2saL9Zm6dddFezucmietz1H7NGMM5myF2g+NSwFgET6u6p1mWtXj9ysvRgQz2WX8Xjw1aiK3/keaUQNmNVZk2sadlNC58TsJSTFm2F3RBJSdikjLDKFnyTQz8cpdNTzw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Jv/nDf8rhYIB2Tm1b3+xkJtHa4i9FyELI7WXF30KihlRL+Ke6qMZtnHgzqvDs67Cao0JTIon9qO/CZ7l+8NxSbWeBnhQ6pEKU7gxpCek0l8KBlI87AMwOMnRp29CrnX7kAnb76w80WXLhWMwxCUxCJakuh7Ic/qwCFWADbp+wxHj0UlpQ/F5wUhPfY7UVd8w31OwYhaRiTwJixOOi93QmVz0jmMfX4NVBXBKgCmnzUoOiPA5fNd7a71ZhOS9JeaGRiSfR36UC6g5XlSqnWP/GSJKVliCLlWRNJmrqcWzFmrNhQhW9B4lcD0fDT6kujbK7SjRU+p3h19eGTRfLrCRhTj0f3+IOgcX6EmxBDeTaufqae5vTidtUQBDzEINeRNTU2zFTbRuV+IDx7YSQE2CGVV3ComwPknLERnL+UfhzAn9NKXbJGBF39CMy5tjmMG7AZ47TuCjm67Nxzu5NnrXgzFXY8mWntq4UeTLapB055Pu4kG1f02wi66rf/37qTXnOWETxrIIwp7CpkTa0s3M0qZn1LfAwPZotPCHZ44lzgJj8gXBTo5brF88360W4wRVIBDBFItl71OHJlBOYfVrGZwqwlv1obBf0H83iiRB2Qo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad71a6e-9809-4d20-81e0-08de8469ea18
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 21:12:36.8607
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6675zW0CSpOlbOQk5l6MNHzLP614SkLP6p4Z2xHc+QhYd+Ab89eBks5JaTOgIUqRj+e/9mWU0PMdQ+AzhBmD8fdm5HlIUhF/Sq1jDkn51Oc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6549
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2603050001 definitions=main-2603170186
X-Authority-Analysis: v=2.4 cv=LKFrgZW9 c=1 sm=1 tr=0 ts=69b9c3cc b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=dmHQzXBwAAAA:8
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=m7t9mSOL27NeFxlRPkgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=ZHTgszdjUGq-PTuYAr3K:22 cc=ntf
 awl=host:13824
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE4NiBTYWx0ZWRfX0xNuvr8aJkkn
 wzNiFjAlfEtydphzhFAW/IePlBRwnMzsD4l76UHAv0KfX9a8405NeWPb+WidqAsKPfJcXqNFa6C
 oa08i+TP/zh+KIXjuOw+/KUntuzVvXd1fYaOBdB6yBvzwBOR1ghs0Uxnrvbo2oe+PoU9jZZwtFN
 2OLsghwGjwTDCSNTrDN73RVwbVZsjWXevJf5xv+rbNPAr7y0br0+4FIM6OTo2g1WkneLtVfeNqj
 tqC51D+7Ui2ymk+KntYSXTaBvP4ienzvfHBw4WzlVZZ+lykmMfB4elxclZ0+dgEfVaKTe1i+475
 rpVf2SadRJr80k6EAcRUZdOpve8KjiYTXfJrcWyzvnlZgw04BzuKK5mhnWg+G4u0WMTg1EQo6M/
 fSsX6KjjV/myO0Z8ZlJYC/rfl2u2e6guSxzqm7O8zeEfzIEVUE4YO7FhAh9QusShegTG4aUN7I5
 BXXKv0dD80Z4qTBrQJWLJIXafiOYVlgEfgtDcXls=
X-Proofpoint-GUID: YYsO2E3FuHhM2D-QxG78jnRa7IFvEH3b
X-Proofpoint-ORIG-GUID: YYsO2E3FuHhM2D-QxG78jnRa7IFvEH3b
Subject: Re: [oss-security] libexpat 2.7.5 fixes three vulnerabilities (2x
 null deref, 1x infinite loop)

On 3/17/26 13:48, Sebastian Pipping wrote:
> Hello oss-security,
> 
> 
> just a quick note that libexpat 2.7.5 (or "Expat 2.7.5") released
> today is fixing three vulnerabilities.
> 
> Some key links are:
> 
> - The blog post about it:
>    https://blog.hartwork.org/posts/expat-2-7-5-released/

I note the blog post also reminds us:

   "So much for the fixed vulnerabilities. There are also three known unfixed
    security issues remaining in libexpat, and there is a GitHub issue listing
    known unfixed security issues in libexpat for anyone interested."

with a link to https://github.com/libexpat/libexpat/issues/1160 inline.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
