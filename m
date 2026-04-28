Received: (qmail 22160 invoked by uid 550); 28 Apr 2026 23:33:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22120 invoked from network); 28 Apr 2026 23:33:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=Rv4AiHt16j6ox3YQnyTjtsIRqnVvA5wYYlQraqPKPSI=; b=
	c84XHO3gMJ/UyDFPU0fRF5zxJq9hX4J8UwiNmmALKkzGoF4cq7qMUw/zi49WCRV+
	1kh0xypWkrrsvqHnpFQSYWChgkVoeqs07LINvp8XO//W5glU4YMgml38FAEjuCAV
	cE07uTbf7Cj8E+f5KurrRDJF1JvOTjkYXFDA1nd/e//L/Dj4wtSV4U0jsUEi58uC
	95br3GxLt5hY2p8TIOwXlsGylK1aU/bXyUIg8gFTuNC6yq7BXywxdJkOdiyk0IM0
	QAncD0Ivfdha0zfzsdnXoE1+aimy/HDO2Gf3N2Mzxxd98Cyt/DTO37Xu3fVe94xO
	jWFqQCEuvieFCGd91p8S1A==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pb731tWoIeR2DFXmrsHAKX++pDGiDfckFajs3B/qbHXakRV67lHmbXvVS+49NEL4xBgXEx1xjuZrPS5ftpG4WtZ3LtRhw5B5vlWrN45+DcRdkrA7MUMHsttPebYpUrCh+Wh30tT0pa2IRrEgdADVthPjTclMFT3jNqv9LQfUV0hWJ1Kc414rvOEF5Qpz7BxjVl8Wg1sn+JhP+tmdjr3ovk+4sWv9MrJTvqgbT0M5DJ1R9piJSXsVnhqHY07VsZsxdS+Bb+hxjy3AniPic9yu6CsLhbawXOXBi5+amSJpuhYY7szWRQftRxmblNFcRXmwcRfO4J5A4hV+h7IjR5QwrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rv4AiHt16j6ox3YQnyTjtsIRqnVvA5wYYlQraqPKPSI=;
 b=Dei2RpiF57o0DPRTLZ4F1d027lR4IP/lm2R1L3x3Bgz/pzJlRypkivW3BZvPgTU64gqkg88w8Br26AxKKgeGDyRPzBCY9jgCJcI/F93UWv5GdxVqzBU3YX93W1f7E6FNbd+Lr3yOMuY2GN6CHp/vbkCAseC0cNOhAHQvbPAWatL1i1kI3q2DdBiZc0Gt4Win3jRVrYB8NCU2cCu8KuaJG/67MN4rKElRpm726juwlcG9wjPSIEm0/DA97gjdAIbncjOIDawHRp7Wlez5HOemJwyTUeTWRF9IZEXiPdwj0YW7QOkoFHV+vjsFqLOsN/ZMBVOZniYkVWlWF8xkyXVk1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rv4AiHt16j6ox3YQnyTjtsIRqnVvA5wYYlQraqPKPSI=;
 b=cxhGxtOPLY4/g++mtrXQuXtcV9Slsp8y64qHqtTV41CJWApsBn37Fo+C/BLO1glfTT4HznqK2yMMu3dICXwE9UhcbUe0yqwz0dawWTAU4XzvIUxUpbCN0+qY5WYRFK+Xjdrl/mlqXU8R5OFHQBh5nT+6tWlXGQgyRVqYTc1XLb0=
Message-ID: <2ac6a638-bc37-465d-923b-0952baf02f7e@oracle.com>
Date: Tue, 28 Apr 2026 16:33:06 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
        MOHAMED AZIZ RAHMOUNI <mohamedaziz.rahmouni@insat.ucar.tn>,
        secalert@redhat.com, Dmitry@butskoy.name
References: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P220CA0050.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32b::28) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA1PR10MB6590:EE_
X-MS-Office365-Filtering-Correlation-Id: a069a3aa-651c-4dba-53dd-08dea57e82b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	LNwphfCjHGe2rWF/DK769bqtyz1xg3J1c0iBPhEfRfQAw1zO7HXeoEc4RtQDqf/xXYJ3JjlGcAMg8YUQWyJL2VOsljMPBVxIDPoHbH4cZcYWsdRR28B0AhEdp+YTMEWINpfzVwOf/vu4P1J5H7jAP8gaw5Uiy96ap/fz3DpQ9mklCu7thZtJI7h5fYHRkBLTJW2OE0/9gp+49SDDQ4GKrEsX7s6w8WGm1hjUwx0hNUVuK9qIDJ+dp9uOQzWmRayq7m0+oY+wCC0cSP7C+pE8Mja1JTxlc6E8OavsLSZcKlD5+Ql9mjGEY9Flq4kmX7Afu2gcC2/84JudcYaiYBFEQxHPuexWorhMswYW5hLoMtJjJV+04L4J3i3hVHSqXX+KuamxJUHbFGF3NzTcyt8AcPo8zJNKEJy5MBtzHcrFjXCsy5R1BqrS1OWTsUQOVOeHUxL7F4mzU5IfWZbe1fwJ8rimCObcbLBVcCW62Ak4eLr+NjWZ1NKRz/a8soBeawCcXgDWyCKHP899ti3iczquStwKb9xnI0a+peu2G0+9JUfY6gYej9Wf11mVT5C0rfftTR+fUGuBKBvBWkhMli3+Y+f3Iskcs33NK5qMW9FMVxFgZ4w/Ou0vRRjmzwwH6Ce5tXlWVfhx5aGDtc2X1IlTS2NHbRBJLywzREYEW9sloWNcxEckWrrN6BVyKhabSdjhqOVJhOHayR3Kowf2lD2QmQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NllDajh6QmFMeTZFUitxbjkxVE9WN3pnVGJXZEZCY0NjRkFHWHdoODNUOGZR?=
 =?utf-8?B?blY0WVRCRHFHUFdSWk5kVDVURHhYQXlGZ2V3L0xWOXYyNm9XbldPMFZocDl3?=
 =?utf-8?B?dm5jdjkvWnVwRC9GYndwVHc3ektXNEt1c3hETWRodFBTTVJwQ0d0Zkg0YVZi?=
 =?utf-8?B?QVFjNm11OEJnSzJWUEtnSzRSS0RLbXNMN2VxTTlHaGxMczU2bzBWTXQ4L3VI?=
 =?utf-8?B?SXQxemtBZTBqNWNzT0M1dmVTaXNDcTZoM2pneUx2UkIvekR4bGN5NkpVTjk1?=
 =?utf-8?B?cG9PMm4yclFXWGt6b3hQZWRiNFJHbjFZSGhlb0o2U1J6aWFkbzZyZUp5Tis2?=
 =?utf-8?B?ZkMvdDZKMlVwM2tjWC9COHBzQkNMbDd5ZkFBVDI3eC9lcXJxcWZCLzQ2ZzhB?=
 =?utf-8?B?ZEJveWVoc1BtS0lzc1ZEdW9YNlNhTndlVjh4RlJmUkNod09IVmNRNUpkY2pp?=
 =?utf-8?B?UTZ0cTFRMEkwNEtJczNpNk4ybTZHc2FNRTZCUTF0NU5kUjBzK09zYjJwMnpo?=
 =?utf-8?B?TEtvY2lXcE1nbXNVei9VcHlMWk5VZndWWTZQZmJDaG1ySzdRN3NEeWV6aHBp?=
 =?utf-8?B?YWZaclN3UXJyS1lVMUtXZzhmeGdRL1k0NVZ1T05xYUhudUZHQU82RmZYZmpH?=
 =?utf-8?B?Z25GdEhBRTRGdTFabklVcUFmUTFEOTZ0RVFDL3dYU1hkYm4wZWNjY0owS2dO?=
 =?utf-8?B?VThyWEx3NXBwYVMxazlZSnZIRHBDVkZPQjJWZlJ1YVA5cnBlemhJTG1QMWhx?=
 =?utf-8?B?RkxGQUNLR2pQZmlZVGRORWpKZzdNcXRDS2QyQ2dBdWMyZDBXbEtGRStBM2hV?=
 =?utf-8?B?b1BLbWJtaVVMRWZmTmpHT1VtT25xUW1UYTRLcVJ4ZFFiVHdrVjY3cGRwNlBV?=
 =?utf-8?B?UmRJbTdmbTdrNEU1RGg1S3d3RVRFNy9MVUlwNkIvV2VXaGd1SG1HbElVR0dV?=
 =?utf-8?B?Z29QUXBkRGo2Qm5HaU4vdHp5SGhvb2RoZSs2aGpzUmRPaldwdmpKZlZyR2Iy?=
 =?utf-8?B?WFN6ZG1CaGllNjEwbFVoT2xNN1hVTnlmMUtWek1EeWM0dms3TFFXRkhSNUVV?=
 =?utf-8?B?VWFzWVR5Z0dvVVJmUWg0SGd1bnhUWkNCYkUydkRKVHlmMEZ5WFhWck8xUHMy?=
 =?utf-8?B?WXNNWGdjL2xzS21WbnpTM1czcDkxdFlaK0NzWnRHT2J1NjVZVzVZSCtlTUxh?=
 =?utf-8?B?ZDQwUjJZUEsrWkE4cmtPRzhPNDRVR2hoSmt6Lyt5MmcrWElwNE5TbWxzRHd4?=
 =?utf-8?B?TWIrY2dvVnp3dlNKVDhTRkV6ZmZxRWZ3SUpndjlFeHBESVhpNjhpN2xDZXFF?=
 =?utf-8?B?WFVCQWdKZ0hLQVVlNDNVNk0xcGwvNmUzOW9YK3N5YkRYQytjd0N1SlFja1Nh?=
 =?utf-8?B?SUM0bXNTMkxkNWluZ0htNjk2aWtmemdNelZhSnRHV3ZBUktVbWd1anRmL0la?=
 =?utf-8?B?YlZwUURLOThpOWxacmRwVFAraUp1ayt6NEVsVURMMkNBbUh6eUNLUkhROHc1?=
 =?utf-8?B?eXYwQTUyV1dOejJIMWlZT2JSd2pnTzVyNk9lZHNqMXpZeERxa1lsbDcySW9l?=
 =?utf-8?B?T1kzbWh0di92Z1BXT00xRUxza2RiY01ON2s2MExScDZCQzh2eUc0MCtHcUJq?=
 =?utf-8?B?TmFsOGd5eTM0eHRWbWlPK1pvNmx4ZEs5OVpLN1ZxcERORmdsdzcyQ2QxNFAv?=
 =?utf-8?B?T29aNERoSldYb0svbStzSTM1dUptSThBR0VaWjl3Y2lZMVFVUGhJRHJNY3Bu?=
 =?utf-8?B?MlhUcVY3cGE1cjZVRFdwcnluS0x5Zys5eVFCZUE4S2Yrdk8zWm16MG9sdTJs?=
 =?utf-8?B?RzJYWFVOUHFVVEtEZHgzSXRoUUNGWWZjMmlvN0hUTStEMDFaQnlEZTV1Vkxr?=
 =?utf-8?B?QnJxaXBkQmdtblJPR3BrZ0lWNE1aV3ZyNmpQN2JmemFrY21obFgzbTVTaXpI?=
 =?utf-8?B?ejhHZ1djQXZGejNndFhPZHA0aW5qc29YLzBvc2hJREg3eFUzVWJoUitEREhi?=
 =?utf-8?B?WDJlZEdaR04wWDhBb2l1L21IQ0pFUDk5TFRYbHdoK1h4NWF0M2FvVFBvNDJS?=
 =?utf-8?B?MEowWkVTb1NydHcycjArVnpDV1E0eFNDaVRGSkZ1UFB0TGM2RFdReC9HbWd4?=
 =?utf-8?B?ZERFUHpraW5DTHUybXcrUW14NXJXMlptZkhJSlA0MFZUR3Y0cnN3ZHBNbnM4?=
 =?utf-8?B?ZnUxUDRhMGhOeTdGN0x1YVM4Y2YyQjA5Nit2N0hISTFmYUVGaDF1MjRXTUFh?=
 =?utf-8?B?VGxrczltMlo5Wk9OOTUwQXZKZlViNFU4aVhaNzlvNndXY1Z1aUFTOEZ1UzlZ?=
 =?utf-8?B?ZThKVHlVN1hEcnJOWUNTMkN3eXBpZ2hDeHBvUHVxSjA4RXcvbjVCb25kcGFh?=
 =?utf-8?Q?8BImI0fJGIwQ7raE=3D?=
X-Exchange-RoutingPolicyChecked:
	gDY1eVFMosVvP6Di8N0ejJ+5PXpfchn6NqJ06w42wBv9a/EZrRw2Hacu0RpR00kPpzvRZ0iOksoEPybPeGsieDmNSd+o6PXPFlPa+hRJihHqJeQ3tww2TCFHmEu8D1AbRIuPiSolunJZvhQP/MvhxzxecZr0e15xz8IvvG4mZNPmsXqGy18IzchoxRpBy8M2l8Q9d+XHsd3LlEZXuwxZsZnuzacjKNb8Q/ailSnOg0v/vrNbgpFXwYyDpOWvnwBYk1CSYvoYWWrypak+3SSSEVdzUgIQiu72BP6RUwNMzW6ksYNIYriTgvJ7z9vN+OCvjb6loKf+pOrxhozkU4Jbfg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	+SmlX5PN1BOiqfZ1PR5IZJUXYwTru3FmsdFPMhNcOi+DF2duT8w7zjh18fekB/4DmEGK96UKyeAJM0L1NqtZEIBtKhwCiPdv9EB4gER3XzUvVzOoK+H4XrSL/g2zLF0u4H82EH84J5FCPmBxgbaqvdtY+R2PQAIIFEfjs094C5ZCXozpwdZEXvVb49ZLP9TdZ95KmWLXX0OIKzefbEqxOM0/W/QTq6ROZhq3XXEjAFv6wgnpgs7br688cROsfSMQ6uCjJrcQNS9KcsiEt7xtxhIV36VHiXUgYHA8hq19iWtW+2Vg6BMcYQK57CTSJ52Zh1HipUK2TTc7/vjI46eRFPRNzmcFc5V4UcL91l3Qjj081St7D2YfX2bcklM3YOQvRbdNnLp/fIfVR2kRSSP9ODg2UShsbvlb4+0N8ATeGqEqftFPShf7HJUJ87y5DfrOxJPKEqk9Mgmd78tKxHsyFz8UCghv/sHe9/Bmn+62815qaua+Ho+hJGnUTohQ4Th9Q8vEltudYJTUl5pIFkcQU8iSKIBFrfdsI3Gs+PaEe1BbKSIbH+tWxAc9RQ59Ni0gV9+dSOkzqkBXZd999iPtHkL9461JR3GfjqdrouFqvvQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a069a3aa-651c-4dba-53dd-08dea57e82b1
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 23:33:11.2380
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rF399nwEajEUpEptvXy/cd22CLag05F/sqxmgYRicgyWJM3cVHcE9bOXux7MBxsZgifc1ZptSPC6GcjIT46TwWAgOdLAQhETZj6ox5dW3Ew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6590
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_05,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2604280231
X-Proofpoint-GUID: rQVehARkgNxBf4q-AZHb5spo38ufxu-f
X-Authority-Analysis: v=2.4 cv=Y6XIdBeN c=1 sm=1 tr=0 ts=69f143c5 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=5KLPUuaC_9wA:10 a=GoEa3M9JfhUA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22 a=BqU2WV_vvsyTyxaotp0D:22
 a=XkRKQH6RAAAA:8 a=yPCof4ZbAAAA:8 a=mVMs1eLXJmrFqlMTd-QA:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=1gUyE30hU_ULiMxJiLUW:22 cc=ntf awl=host:13844
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDIzMSBTYWx0ZWRfXwk44quR+L8Jx
 qEvqUYugyQ+j9QU+aPOisLFF/hkaMvn0QxSIYlsikni7TMkOh9ZL9pVGDnzGaVwKNDmj0SXN99t
 NUCgZKt8fEhHrVjUxBTAT9PoUW0ak6zNhveHF2NBFdos8wMqrClZ9U1u+5OTJoRnZOVse++g5bj
 gtx8kr0/9IUXMOQ5yQS/u6PHkTlMns/yjx1NCkHvoZEoG4Fwy0Axc+iLQB+0E+MhPbqFlq6I3ZH
 VCKu6wLW1RKuoCAfcYJyY6Bld5X129EAFofQ689WmlnLVOkFmyNBkpxmZTZyyec9t1efPOa0JKp
 dMw4MhWClXSCpZbfIhUWRsaj8lLa6M8dZv9dBO/XXfMUqRbUa/FcPQByQSoGXjrT/gNkdS8jn8s
 d0LScI8pRgGC6lPuMoVN/RM9bm/jowNAgY78r2IaQzUt0vCB8/L5KoyZteve9CivfTbmur7KAyd
 ti1KUEg4jvuk3P7awZqNhQeE9QDonb9RRdT1ExV0=
X-Proofpoint-ORIG-GUID: rQVehARkgNxBf4q-AZHb5spo38ufxu-f
Subject: =?UTF-8?Q?Re=3A_=5Boss-security=5D_=5BSECURITY=5D_Out-of-Bounds_Rea?=
 =?UTF-8?Q?d_in_MPLS_Extension_Parsing_=E2=80=94_traceroute_2=2E1=2E2?=

On 4/28/26 15:03, MOHAMED AZIZ RAHMOUNI wrote:
> I am following a 90-day responsible disclosure policy. I intend to publish 
> details publicly on 2026-07-27 unless a patch is available sooner, at which 
> point I will coordinate the disclosure timeline with you.

No, you cc'ed oss-security, a public mailing list with public archives:
   https://www.openwall.com/lists/oss-security/2026/04/28/20
so you made uncoordinated public disclosure (aka "dropped 0-day") today.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
