Received: (qmail 3154 invoked by uid 550); 20 Mar 2026 19:37:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3127 invoked from network); 20 Mar 2026 19:37:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=XGA5pTWTy0yjj90v
	dqjnxNGvE0kbGd3tKpOywd79ILs=; b=bjN4yg7GC5wXcuCv9o/IMkR53Jn9iZQH
	AalbrPhJDD2wWB8eyg42bl7qS4SEBbOO0AzZGG8IHG94GwQ3sx4PRQ6CfitGhtQN
	+ats1KqygqhZStapbR41q+gjxFkJ97pHGItTD03VqiEzhYRCtQjAx9J1gsnnBVcL
	2xkTCLyfxM12FwJIi8VFvpYHNZrNkNHA3lRef9olxoM8pZxK0Ja+YOBEbM1CpWWY
	s7IFzscmOz+SNbRz33MN2m4Zj+FWCJmsBBd3VKr0S/g4SuOD9+wJ0OlHzY33MWK9
	vetpE1M6bCgWLCbuduFer0N624zb9JR8up/znTxEPeFUPFPRQ7l5CA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h+NAdE+sQR4fhtAqB/beSAgCxxaDE1jd8DZpfc4o3c6PcDoDe8CJi7sO5MOVriGVeEFkzegiWgQQsSk9I5iZvk2PgK8wXzTqJobirSX3vUAYGMrTVc9YyzpJlK/xFObQhUYSKBUcvWaxauzk/8YDtvq8P/lSUxb1t9l2gIceCWKjDrcgJRqR4Myhpm9azc0AOpgPxe9qNbQ0ELresSjoTqYz0njb2/A8CfrA6xbhLE8Ugt+LxLvq0hcaZJQ74HNGXJyu5O+T3XSi2MQ97+gPqicn3yH7UzuCPWTdjjADMAJzoJ3KslFiKLkfintXCMOhRoITBghzpBt6JhziDflCqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XGA5pTWTy0yjj90vdqjnxNGvE0kbGd3tKpOywd79ILs=;
 b=Nrp5Af9Bd0TpnFaJvkb9t8DFOEbLjN7E1wF6iBPA4moRA2UaH4JjkcCvAa6HSAqg0cU8n50HTAH2v5i4jALIEqQ2gmVjIIgmjAXie2CXAGso71hvmLnum6c7tmaXIZU4qw5sB6t9zdUmu4GwD6JHoPpV9E90ILYKAblYMgvRO7ul+o483tPnfgF+igDXQ9xiaIOD3GFa45Wbv/Uc+0yrGH8me0E91RmOhlnDKsgwtJlvIFRt4y1EJZSZ+/ozl7bgbLfhbypvuZ9h6uiWCeQdch4LcOj2Ys7DFjCsnYulIpXipEijpAZKNok72/jlx8oh82KcKQ310g2ATtRjD5D8ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XGA5pTWTy0yjj90vdqjnxNGvE0kbGd3tKpOywd79ILs=;
 b=BfupM3HYQB+yd+LhRSA3OCCt/qxEhGoC967idcijDRXjWJx7GphCg8+CyK9aybGs/C/QfZC3r6JsWbckwrPfp52vNR/DWTa1hJSTAmzlmz5UeYw/Gy8toY2faSX3POUuTZZsaMw8FVci/1l2H/ltOcYG2R7/ewIDXY0+r52B4RM=
Message-ID: <e823e8a6-4523-470a-8b4c-78e29d201df4@oracle.com>
Date: Fri, 20 Mar 2026 12:37:09 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P222CA0021.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:510:2d7::6) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH7PR10MB6355:EE_
X-MS-Office365-Filtering-Correlation-Id: 86f686d5-2fca-401f-e435-08de86b814a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	2648lOPmU5zdvCO3ia9+5Ld4/dTi+GcJQkbmptnK9NryP2VMWCYsto2C7lN5kUMvzl+WUdbuRCjmT944WqABV/k1/KrcpcP6aMXxazPq9o2KRpIj2BwTVRPGV9Go1hpl6IbTp9hfIv65fKiQ2EvwVZodqSUOQU7M8py8wSQd11XoztkkWXvqeSazMVlKdl12O+zBZQxicskqKmwLZbyl6jgqum0tZFMx8o2oay8f22zfeiCuoyXHL1hwAYiXzlhfWCLHKdBwkXiBWdVAVsr/bN5xehJQw94VujzKHjMhIGFxJgaQ5pcDcOjV3+sXid6xmLfxwJWTFy/uR7KeE0Vv+JeyBqidye9Ha8OJxge6JDqKVpYLIIF582uP2YM6X/ZnPBoZXW+Qt/y34jzl5pSyXhmnj9B26A0D0bZa/kZzmLBTM05qBAMQkI8WMGSBObBvSXtsBlZtiHcDUcplF5fTCG++P9K6JlxxGMb3iRjvyVCr0n+ktsFye48mscw1iwJIzIDU4KbtqTLDvgFa0hYu0AKUFUJxDIlelYF0MouVlh4M5BuUzuzE9tvZR1jSxQWfk+OMqKnUBZtNmTYVcQdyKgKQ7653gCQCm5IHWVwBpL+app9/h86j1ucZ4ukaI0x8pal9F4PpKCBiqi8yhZISvqiOJlAQut7EiBGsBXUSS4wDNd1FGYCv7EQpKS54Odu3
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OUdseHFzQ2lMZTNxU29GYU9jclFsSWlJdHdTL0w5N3FEdkF5dmlXTS8zeXpH?=
 =?utf-8?B?QzNraGdxdXpLdW1RdU5MWHlWVlZ4QWlZNE1iNXZjUXRDNFp1bHhBeFUrTXFY?=
 =?utf-8?B?QVFYRmt5L0tLbFV6eGluUEVjMjRKUWIwVGx4dFlaSUx5c0xUVGY3S1dTSXBF?=
 =?utf-8?B?WWVhMkc3ZzFqNTAxSFZoeHVOajRubmdyRTExRkpvOGVVUXBDRHVoMG9IVHNh?=
 =?utf-8?B?ZGozUzRCVU5PLzFJMDZ4NGRHOWNtSUJPTXYwY1hoNEFEdGVqS2wwdlNBMzVR?=
 =?utf-8?B?cU1Sc2xWdkhrY2pyMWYwbUxmWW1VNFl3T212MVg5QXI5dzVmMEFkcEhXNFk5?=
 =?utf-8?B?aHF4NVliS09KVDZuRjA4NXd5ZUg0cUxONVZlSEdqRUpXVXRPVnVnOHF3dGtT?=
 =?utf-8?B?dDgzQnlMMkV4N01jMVpMWHc3VUJxNExlYTR1M2twd1pZMnFac3NhM2s3WGxj?=
 =?utf-8?B?OE9hWm1ReEs5Wkxwa1I4TDN1V29GckFkWTd0UkJlWmhZcFVxeE1Bem8rSlZJ?=
 =?utf-8?B?QU5Zd0pTN2hYd3AxaDRNRVdYSFYwZlQyaGxicFgyV0Nybkh0cnFwZmQ3WTlV?=
 =?utf-8?B?QzIydkFOdUVpTWwyL01yMDlkb3FqdDZSK3BCN0k2UTFWbkN4YW5LMEx3cWdw?=
 =?utf-8?B?TEVIS0UvaFlucTJ1TkJLdXRwcHdqa1YxVkdTb3d3WEVib2cvSzluZVlNamFu?=
 =?utf-8?B?anhBSDNhTDI1ZzE0R2cxQUpacy9JUlRMZHFwQjVoOWE1R21PbXVEZnJXb2J2?=
 =?utf-8?B?RjlEOGJucVdzK1lVeXRaa2JLbW5kS3RtemxiL1V1TzY1cGlEWmE4UktqT3Zr?=
 =?utf-8?B?ZVdaeDR3L2dhaUdkZDdSL28wUkFGdjgvV2JEeVBJcFgvMWZlNVk5SlltR2py?=
 =?utf-8?B?MVUyNVZrNEtubUI0T0pjV3BSQnhvTC9wM0w1NlgvQ09IQkZEM1UrSUt6N0tw?=
 =?utf-8?B?R1NYdEM1TnVBV2w4VzZFUGpDaWNjTGovTmk3TUNLOTlocTJJQmRHZ3YxbjIr?=
 =?utf-8?B?YXhYQTI2RFR1cUFiTXpjZDRRUWdYNzZKVkRyNkJsbG81dWU5aEdacGt2L2R4?=
 =?utf-8?B?VWlaYVN0K1IxdkZJN09ReG04MzA3MUlvaVBYRkZYTEtPL0pySisyWGF2Lzk0?=
 =?utf-8?B?MCt1ZTdTcXZaWnhNaENVNlFmbzVyWERNem9YTElKSkFJQzJOY0tjaisyeEhk?=
 =?utf-8?B?T3JSOXU5bzZxRDRwTzhOckcvWGtnbm9qa2JiL1VKSDBhbTl0TXZkeUFWcXQ0?=
 =?utf-8?B?cm1DK1FSN04zMlh0Qm8rQzRtZmZLTStQSndRekpEeWlBVzBlSmZWeTVWUE10?=
 =?utf-8?B?UVVOSWdQK3JxZE41dWw3eTJhZkxaY3o5RElySkVSS3Q1R1RMd25nN0V6YXpN?=
 =?utf-8?B?akQvaFNJT2NLN0EwTmltNmlEVGVJLzJtKzJwYmpJVDYrZlJPRXZiMU4xT3Vp?=
 =?utf-8?B?U2Z1RXNDZVgybmE0L0NaT2JDc2xzS243UkpCdVRjM0pucnRhSlozWjBQM1RK?=
 =?utf-8?B?WjJ4dmZKaTB1L1VuNTJmMVl1T29ITXdLSmVvOGd0cXZnay9jV1cwWnJLemli?=
 =?utf-8?B?R1NHNEdZUGZkV0xobU05bVRKY2t5cU9UVDdDWmdFak43cmU0Y1RocmM3WkN6?=
 =?utf-8?B?SCswZ0IyWWN4RlhvZk9DYjY5NnVSWCtmUk1kdnhGa3BFaFVXREkvNXM5MEVu?=
 =?utf-8?B?dENTYmZMR0tsdmt2ejZYcnhySlNaZW5HNW9aZkc4ajZBd1AvMlB4SmVyenVS?=
 =?utf-8?B?a2RyV1JHcCtHekUrTjRCcHdoTm05MENNY2tQRyttQW8wTER4RG9TV1ZxRys3?=
 =?utf-8?B?WlowQWg4Z1ZVRis3WVVnN2p4czEvaHJ2MHorMGpiazFMQXpJc3A2TW5ERE1X?=
 =?utf-8?B?c1lrUS8xajQyajF5WUVwV1dxQmNYaGhrTnpiQ0w3U1pnNzArU2NweVExNUdp?=
 =?utf-8?B?aHNyMktsNzVQMnQ3SzRjZ3QrbTJTTDdSZE43Mzlrbm5DQkxHb0ZjdCtXeHZ1?=
 =?utf-8?B?K3J2WEdwVnlTbGtCZzNsNXNYVVNpQVcwQUUwU3hVNVQxdVRISHB1UHBDb0dL?=
 =?utf-8?B?Mkc5dEluU2lMMTJ2ZEtCTmhiQkVYNXg5VXo0K1FOS2hXNDMrZ0VibXhLajl4?=
 =?utf-8?B?T1hVbTh2NEJXaVlTcGxkRzBDekZxVHBRczJMYUJVRk1aR0l4aGE0OWtSWDBp?=
 =?utf-8?B?Yi8rQWMwVEcyN0FEWWZKS1NvMzYvcnlEczA5WHVVNWJnclBXOHUxcnNsVFB4?=
 =?utf-8?B?SkdVN0F0U2U1TE41Z0pqOFZRWTNvUnJGV1d1eTBzTDVLSmJiQ3l6UWJ6REtV?=
 =?utf-8?B?M0ViNjdrSHZMT25kL29IUERqRW1rYU5xQU9pV0FMc3JkTk9JQmE4M2haSTdZ?=
 =?utf-8?Q?M0sIJAfWsfimHJbs=3D?=
X-Exchange-RoutingPolicyChecked:
	SLyrbL8XGVddiN7PYphOMqKt0P/JUJYi1Gq8TQgYSCmOwtRy7MC0DAYb5aA9O/4mUU/OL0QCYV86WSgMpE0po/vWh0u9JKBMN851D9+0Hkgb0sKIX7N4DKG0hLyQhFYXQMW9YDv3xwHq5/A51bVqfRtgSfEuU5u9wFrUmKRzHfXmqdFd/ZlmnckP7btZGOcd0TJz+CQ2qPu32VhoQ2uApuf60hEJ2NCOKdCP9Bvy38Plsn6cy3pEvr2c3Vo++uplvvKZQVjoI01j232sSURQLO6t34XJHerETedkAAClz+4LDx7zgvv9DQxVnGSHEmtdeDROCFcmKDb4aEt0Ah8i2Q==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	gDLgChpNL9XVHqRvXriTUNmDhuZAmx3M3j13swA7WXFejf3+hlAmTVygrcYklMfOvl+eCUBtVem6hJVsE0nA17bN9Xlqk9zuxWW3nOja+OMvEY1zXNbgEyl6hb61ZyLo4ZvWM+27rKqOgGxk3Qn2hXGQ6h68fX7BCKqogHaceVDXfQTaD1O9jC1A+ZPQd6OMEimRv5WHh6s6l2JocgfSuqkIRuaC1X+MrcJXfRzKSwer96JmiovBFdzzsI+bIYXGUaLOWdemgdW+8zAGtsf4jwN4XIG9v7lrCvny3GSpyNSqCyNRAdGnegMP7w6gbsf+uj3aSE0mLOS/3S9qhAgKl6CYxqhFybs4uNl52Vgg5nGV+TPR6LjKqhHSakvAWsz0a+zuppigOMOZuAKuvDiMTVggg6gs5cUDBfJQVUFIWERlvnJ4TcUencz0dwGV2B5vvwV+YRe1JY4+VWNemF3JNBeyZQgnK5fwv4YK11stAiefNkJpytCP81X47qNYUlJRTk0ojBQoda5Ke5waCxCt5M8QDg2cbzUKmMQ55bqTD0fss4xnn/OFaOrxbkWhQvCaawYWnEUxDr42hNvnk0TyGaGjqlph/CNsnNFDpk0YXWo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86f686d5-2fca-401f-e435-08de86b814a9
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 19:37:11.4239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: azg4XFsksr/lKYNupPyxfILlYvdm8WYFSVrl72CWaNXURGTuwbvgbvD32n0llaxVVfQ6ruyCiuBc1LXzWJgZWl4i+KGinPfWXxHkyRWIdAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6355
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_03,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=564 phishscore=0
 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603200159
X-Authority-Analysis: v=2.4 cv=X5Vf6WTe c=1 sm=1 tr=0 ts=69bda1ec b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=NEAV23lmAAAA:8
 a=V5kXHrdOSIyTsyMC9KIA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDE1OSBTYWx0ZWRfXz3JW+hZwW4yx
 jWkEFXRppcNERJdEUVai4NuNay8dbMv5yuwdgLmOqM6zYCk41eVwIt17qxprhV1gN9+m2tn/R97
 zjY6ou754z7An1jI//vcLPEpGlxxHGwLGnr47/INje3EeCemo2SW89v7bze/rXxkOWoiAJgU3OM
 K1p+CgOADUFIUR/N3bTiTKsZJ0Q3T5QIDBZSyhICm+B5gWh1BQnUfp0HP9e40QLMP2O4+3kufEM
 ZQG+WqrsCPKRUOVij1iAiVRby5ZOi8TlIiU8jPFsyxeTKKgugA2lt5Mw9DpHtTqVf+3VgpBdI6q
 WfAxlxJcC/NfkapOChPA22aPX7uwzJdAtyNI0xB0W6pZzU/+wadXMFHAl0yHQQbGKTIC72Gw6pf
 etfJLvl7k01khejiLOKtxEXVYLqD3lndPVz8ClMEEdSiasyUIhaTJE4Gmza6gbcCoc4MNfNDPAn
 wOfWh/WJymWNzLy66dA==
X-Proofpoint-GUID: UU7RRREZp2LyHol1137UK-VpX7yZLinM
X-Proofpoint-ORIG-GUID: UU7RRREZp2LyHol1137UK-VpX7yZLinM
Subject: [oss-security] nghttp2 Denial of service: Assertion failure due to
 the missing state validation

https://github.com/nghttp2/nghttp2/security/advisories/GHSA-6933-cjhr-5qg6
advises:
> 
> Impact
> ------
> nghttp2 library stops reading the incoming data when user facing
> public API nghttp2_session_terminate_session or
> nghttp2_session_terminate_session2 is called by the application.
> They might be called internally by the library when it detects the
> situation that is subject to connection error.
> 
> Due to the missing internal state validation, the library keeps
> reading the rest of the data after one of those APIs is called. Then
> receiving a malformed frame that causes FRAME_SIZE_ERROR causes
> assertion failure.
> 
> nghttp2_session_terminate_session and
> nghttp2_session_terminate_session2 are used interchangeably in the
> rest of this document.
> 
> The detailed execution paths that lead to assertion failure are:
> 
>   - nghttp2_session_terminate_session is called from
>     nghttp2_on_invalid_frame_recv_callback when processing incoming
>     ALTSVC (RFC 7838) frame, and then a malformed frame that causes
>     FRAME_SIZE_ERROR is received.
> 
>   - nghttp2_session_terminate_session is called from
>     nghttp2_on_frame_recv_callback when processing PRIORITY_UPDATE,
>     ALTSVC, or user-defined extension frame, and then a malformed frame
>     that causes FRAME_SIZE_ERROR is received.
> 
>   - nghttp2_session_terminate_session is called from
>     nghttp2_on_extension_chunk_recv_callback when processing
>     user-defined extension frame, and then a malformed frame that causes
>     FRAME_SIZE_ERROR is received.
> 
>   - nghttp2_session_terminate_session is called from
>     nghttp2_unpack_extension_callback when processing user-defined
>     extension frame, and then a malformed frame that causes
>     FRAME_SIZE_ERROR is received.
> 
>   - The malformed PRIORITY_UPDATE frame (e.g., stream_id == 0) is
>     received, and then a malformed frame that causes FRAME_SIZE_ERROR is
>     received.
> 
> For PRIORITY_UPDATE and ALTSVC frames, they must be explicitly enabled
> via nghttp2_option_set_builtin_recv_extension_type to be affected.
> 
> For user-defined extension frames, they must be explicitly enabled via
> nghttp2_option_set_user_recv_extension_type to be affected.
> 
> For the builds that disable assert macro (e.g, -DNDEBUG), it does
> not hit assertion failure, but it might continue reading incoming
> data, which itself does not cause any vulnerability as far as we know.
> We still strongly encourage to apply the patch for those builds as
> well.
> 
> The reporter found the cases where ALTSVC is involved. The other
> cases have been investigated and discovered by the nghttp2 development
> team.
> 
> Patches
> -------
> nghttp2 v1.68.1 adds missing state validation to avoid assertion
> failure.
> 
> Workarounds
> -----------
> There is no workaround.
> 
> References
> ----------
> https://github.com/nghttp2/nghttp2/commit/5c7df8fa815ac1004d9ecb9d1f7595c4d37f46e1
> fixes this vulnerability.
> 
> Severity
> --------
> High
> 7.5 / 10
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> 
> CVE ID
> ------
> CVE-2026-27135
> 
> Credits
> -------
> @AndrewMohawk
