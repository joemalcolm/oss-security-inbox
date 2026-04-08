Received: (qmail 1751 invoked by uid 550); 8 Apr 2026 19:50:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1718 invoked from network); 8 Apr 2026 19:50:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=HE+CdYriBqc+Y+3WEK5TiHGbNWEGgbjUX0O3H0eN5N8=; b=
	nP8s4paMcvaQFFGuZZFLM4PsbuqQcLLQOtx2lY8a6euzqczWDjdIZGgq+y6WUCXm
	zrDsq0VKGF1Gt1mkE3NiOZkdX9n1aQnUvbl762gOPjXy7lsMbzvRGD0P5cvg6YKG
	spNFvAPTU+t0ryb3nziGzj9Bu2P8ICT4Hgv16/Hp8erWuBczdNIxtwWaqRgHjwhd
	0PNGYtXnUsqvDe4TqZkXztMozV7DBrvCr9UYgLobynffDRMiQgVaimqw5HzhpvPO
	I0lWkjDUsUGbDdRd6FMVeSHls4TBtM3NIfJH5OlOnPlT4+fwrqn5R3hQ2yvCUXey
	hsoATiNpiCaNcdxxvhITMQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SXPJmSxylwBlf9NsyXGV9EOKWkhok02GigM/C/Xok5Q0u/f20L5Nx5taZnKIorZbl9OHrL5dxbuaXlWkwTWnGn3sUYAFcB3M/riaiDnAbGgHmC000FOPEy9dsXPJQ8zxabCs3r+WAvOZJADd7npqXHguLj3oYa0IKF6/370Xw7Vq5hBMCf9UYScQwREmQiyQIQQMsy7kvn8m9nxg1WnvoK0XZymHoE1XqBMjS2KZwXynSpLHg1RjNCKZtcFJ2AC81EjsukrTi5gvsj+2yXK+S7pT7V4Ymz99BggF/Lztb9FTfz8m8A5owiIm/WfUV/bzRHz7XvqdO5/09CBtw/Xm+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HE+CdYriBqc+Y+3WEK5TiHGbNWEGgbjUX0O3H0eN5N8=;
 b=lAVgqTdK4OkEzGOi8KL0R3pd/crbv547EBZtXrmngpFT3ZNmZ0HGX6RSE66hMEh8BJzfmeTIVp0F3O5Ef/Y1XlyVZ10rwAxJIQR3nUviwm44aOC/YXclHgq6eB9SX1iEcsv2QzswaSJv+ujhF4c+teME/PejDAYAbjC/zE0i8P7phk/BpzkssZIU/Igf3PhcNtlloDAzJp3Ik7TOcQ3SAXJ1VVUuItm6z9oufnXsSehfYVX7XhgeTxt/aLexILKH/40Pt1PJ7QcQiLH7k9E1KqRp6HZ0KPrXHy55lejpC+eSX9soARnI7vkIvqRxdiQvr1CSgTrrS+ISalaZx/DOoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HE+CdYriBqc+Y+3WEK5TiHGbNWEGgbjUX0O3H0eN5N8=;
 b=pKtg7ayT7UH4Qyi6uD/m8Q9oMeABjGo7QJ7yv9yiMsXUrjLtDNWavZRJPcNNqRSj0/GyHpOokCDx0Cd2scWcPncC8KHCUUDtaIQHG9zwffF69asjjXTeXXfAPjKlwK6eOR9+EYshUmp2KNvABpXEyxK0Tp67iPGCLgzXCmuPfio=
Message-ID: <e5f6459d-f949-4473-8961-5d66ad9d3e50@oracle.com>
Date: Wed, 8 Apr 2026 12:49:50 -0700
User-Agent: Mozilla Thunderbird
References: <CABj5TKS5QE0Ji+HmRZ74BNbCARAS1dZ41RKQdrD9hukqxQBVuQ@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CABj5TKS5QE0Ji+HmRZ74BNbCARAS1dZ41RKQdrD9hukqxQBVuQ@mail.gmail.com>
X-Forwarded-Message-Id: <CABj5TKS5QE0Ji+HmRZ74BNbCARAS1dZ41RKQdrD9hukqxQBVuQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL0PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:208:91::12) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH3PPFBA17DA552:EE_
X-MS-Office365-Filtering-Correlation-Id: 7079829e-97b1-463f-f26d-08de95a8003b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|4022899009|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	2Ml+lPJK4yQAKDOMYsYugkwSvMKWU5dTvkd2W1hBCVc6BZ+DqoRiYmtXWZeIB2H6TdwG3cdzaQ+mIVT0ducLyYDp7+XsUwSQBlR/N6cVvGPv8mOnVk5Nwqsik9NJt2PLWjhKlUdC+pwtwkyW0D3gYHGhVLEA7nFajFK9vS6IAOfvKbxIM0jh0/IL9/JvmT8ysO2UnxfIJqcaosRiO0Tko43DxFfoG58UYk9JbjdTfElEZbcRp9SqoIIYLQwNAHwDPqFk8kygbw9Ex8ZtuJ+mAQy/E3ov+ypOMpKN+xEV9bhl3FkbygwFie4Ogj/k6rSyd0cCHgTUE479mG6odSRzxVOosjEOtVAx0tklnKSNpQllx1GcPw/DKnB1oXK4WiOzINhOW7dx/g1+aINCJUvkN1F/ovoXbPJrH94xhGNzTyABY+jvrp3V5qv224ZsZQv9n1hRQTrFpwZ0o1UI2KLRqTAKNpLTNQMceMdPiqqEN2q628AfCPgGA6y1Stpj+ImXeriyIxSnml7XcdYVXL1ror+Gvl8zKMSpbGAelLrLMRX/EuceJqrFIJBBovKMtVL29NG+ruS49T58GpKLiJXBk9Xz7TkF+mg27JJ31Q+oKCrPLAbonBc1QN+Iko1sC/Xi/rMJIi93cMqP4l2lrZf6/TUmp4APZhvFiwUmtevecjzQmDiJod6B35KxV6XfwD05
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(4022899009)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TVVmWnNBcm1ocWk4b1Q5UzA2YWtLN3EyOUQ2OCs4N1B4Z0VIQnVHYXBEV2t5?=
 =?utf-8?B?YXNKQkt1ZE9va1BzTHhzMzJmSTB4RkRZVzdyNmRsREx3NDUzbjZaSTZPWE1n?=
 =?utf-8?B?MUM2andqREZueU5xbVRBV3BXK0JNNFJ5VFBVZUU3LytzRmFKMWF2L1o4ZTdk?=
 =?utf-8?B?WmdMTU1pWS9FclVMVno5OVo1RHN6WlRWSStEbVZVNlg5c2tiYm1sRW9nOEFr?=
 =?utf-8?B?SjEzdGFQcGFrOWdpclhTdWxYbTZzUXM0cmtrTnh2b0FMZmVYbEw4cDltVVdr?=
 =?utf-8?B?WDZVZnpwcU1iaDJHVmN4SEd0TTFIbkpZNUxNeTlrbmRWd3ltY09ZYjZtU3Ni?=
 =?utf-8?B?cjYzVjRrMG1xVFZQaVp6S2dqY3BMUGt0T2RxMFF0VzE0S3RncEtXMjF3dFRC?=
 =?utf-8?B?dERkSFlPSWx4eUowQ1Z2NVhkMExST0ZCb1lDUGJibVJWQlY4MkhVeHdES3dj?=
 =?utf-8?B?U0NYa1hEYjM0RXBXcGFtUXdDNTFKNGU1RUJCSkVjTldFbk9ESW4vWVRHdzAw?=
 =?utf-8?B?ZEZ3akRSaTBsbXVuSHZUSVpZL1dIejhqdER1TCtQTzBrOGo2UlNEZzU5c1ly?=
 =?utf-8?B?V25GOW5aM2Mwd3d6WC9Ib2pJNTVhV0JrRDNxRXZEVFZRc2VGOEtJaUwxSll2?=
 =?utf-8?B?dFJyN3RtUG56RFo2SGlBR1VINk1QWkk1c3M5Rldoc0lVK1RPdFJWUll0V0JB?=
 =?utf-8?B?bEdxZllWd1BrZ1pYUklWK1NrUURYbStmbUN4NXNDc3pPQVM3K0E2NStud3Jj?=
 =?utf-8?B?em1TbkNZc2NTdytzQ0g5TEhtYlV5OCtmYkhkRzRNRkw0Tmp1aHdoOUtkRHc2?=
 =?utf-8?B?TUNHRU9ma1ZPWWhwNGowOVphaDBmWFZyempZU0RCbVRWRERHWjRPSEVUT09u?=
 =?utf-8?B?VXFETU9aallsSHh1QzJKeXFjQjd1YkVUbnM4WVZ4TTM0N1Z0Z1ZNQ0JrSUpQ?=
 =?utf-8?B?Zis1VlVsSlllbGlqWkVqTUZwR0tZYXpBdzZRQm15R2RzR3dSK01QL21VRlkw?=
 =?utf-8?B?NHpvTUdCbjV4bmx2SzNzVVYxV3A4cms4N1BTc3pHQnEveFF1VDFybEdZZmtT?=
 =?utf-8?B?blN4Qk5pTXNlU0o1cmNPeEZBczUwajNUZDZnUFJiTEhZNDNLcUtycGNldG4y?=
 =?utf-8?B?b1RHMysxZTJaL2pHZlZGWjBnMmFKdm5jdWVvMGhTVUt5ajJGdEl5aFlvb2Ez?=
 =?utf-8?B?K1pRZnUzNDNZUnY0YnJTai9HcjUxZ2xZR2k0ZzZyTkk2TlhMU0JqeG5uVFZR?=
 =?utf-8?B?TEpRWW5GZVc5em5XbE5QZFNKTXN6TmNjTFhOUnY2SHNSZzNOVHNTS25XdU54?=
 =?utf-8?B?MnJYa2Z3em1IU3ZzSE02eU91ei9XT2wreXdBNGdlbkJxTWd0bWRXSWsybUNO?=
 =?utf-8?B?UnJ4NUlnK3NhKzErejhmWWR0NW1SNGlBeW1aZ1p0ZlcrRjBpMjBaMTIwcWh5?=
 =?utf-8?B?K2JXY245cTFVc3ppbHFzMFBHNDVqNjUvbWp3Y1lSQTkvd3oxYnE1dFAyWWJC?=
 =?utf-8?B?SkUzVnlKVnFyTGlJRVhSSkwwQ2tRWnU3aGRBWVQrOEZRNW1pek01bVBJVkZw?=
 =?utf-8?B?T3hnMit0UmtoKzJtbzc2b0tiQUdBbUNLWW12SnJPSTBiWFIycUh1eldibThv?=
 =?utf-8?B?dFVkMElaSE45VXdiODcrQTI3SWxaVmpNV0JlSCtxOGNWVmg5NW9SOE9ySGxt?=
 =?utf-8?B?RUtIejJVTjBzYi9zUVZBM0tERXl0ZHA3RHlYMWE5d0NUdllaeGN1azUwR3VN?=
 =?utf-8?B?Y1F6eTVVNFpRWjdQSjNsbUtsQlRHUE1IenRHWG1WSk8veEFsYkpueENleTZa?=
 =?utf-8?B?VklIVUM1UEdNbGlkZ09wUWdQN3FHb0lORytiRzJWYmcvZG4vNTBWNHlBUmJQ?=
 =?utf-8?B?dmZTbnpZMnoxNUN6aXZTc2JPWnU0RFNDM0tIN25ncmFQMVo1dm1TSkhkanU4?=
 =?utf-8?B?cUNqbWMxQUZBVDZ2QndMd1JCRWpuNitESXBkNktaUzN3dS9weW83ajdSWWFB?=
 =?utf-8?B?RFhsbCt2cENBR2JBNkhrUmdNMkRvQjk1aW1CZy9XYU1pTjkyRk03SHdVZkR3?=
 =?utf-8?B?Rkk5RE5sTjNiRFlIZjZKeEFVRklxU3h3ZDJRc3RZQmsrM2tmN2h2dFNvcTlC?=
 =?utf-8?B?S0pjbUFCRzFsU2g0d3VEeXJ3YkJUL1BIQ1ZWM3pOY2prMUhLWDFGVkUzaHZL?=
 =?utf-8?B?RTZkL2V5cEJOd2NHY1pZZnp6T3Q5T0s3K3NzYmFxZ2tGM0Nic21qeHRxeFlH?=
 =?utf-8?B?MzBkYUQ3Z1UwaDZBR1NOMExpdW5XTkQrNXAzQTVGRzYrSDQrd3VnNi8wQlZI?=
 =?utf-8?B?RVF6dFUzR3JjMUF5UmxIZW1VRFdPZDZYQTZiY1ZXNU5NZ3U3MlRPTHhFMEda?=
 =?utf-8?Q?pQoTcQ/uQxA5u1Qs=3D?=
X-Exchange-RoutingPolicyChecked:
	AxP3Qbc7STkdy4Xwi9tFt1EiXOFvTR9rbqsqDW/dVigExC8F3B3b47V4iiP05XJ6i6zTqeIts8ks+6TNyqMgpS9uB//UEEDt/UixQSkqboKTz5zfxM8OOGDb9cE4Zs5KyDfkhNWy/6C+Xz/hZvNwQGojTn1tWafLfFXLEoI8l7+aiXds+4KWdjJ34Eq7I4x8gH/PD3GfPX7UvuvLiBTMn5Zwm+bEq6EQj3ZMnK7tBNJaFhjRYKf26uinXgWbg/hTKlIHqFX8BweMbMohU/PV8hw+4B33kwbiu+k/iECDaiR/hUuHhFoA8QX268Z7Elg2uLUAZdfAvzc+xj8/rZJcmg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	HNgSbh26NlhgTbaaM7GuqsCVEiVlUunjjdrQKn5+R65iRWN7PtjG9Lj9bNkzqEVRc9VEBQroIP6Rqde509IGNMLy4VO2fZOIi4YQ1+iBZGmaEugItu2oiCNE6vbRWCKiwQAnbMpGT5+56Ix6a3MX8bYM57aTG9zocC8WCii2w19/aNRC/EjvL/XhFc4OoulaZl7c3A2U6XxXjijWqYphUWYDy/EW4ZkEWThe6Qf9dfucRrBhc98Juaa4kPUu0KSer6NkPagXNC9SvdoVR46KB+VWuF0vDF7GWoyQkm8c5hGscMX52nV6wckM8DZ/JfD/LPOtV0h/3gp2iMjsmLo4gjZ4mrVQwgSdb5q06mTrXCBDeIwl9WQ2/R65wFrqkAEQRZQ6JGAI6qYm9n407vJvfTgHXP/uzyvO5grrCcGEcHYZTVTJ67mH8j7X8hPn0QO2hxIWJVjbMN7Z35o05rocoxtwIvLoPXpb5tNGjzOm/GzGWorentOhtpPuTNb9cl986oSS8in/zYP01G+yYtkVJuk1wFGwIxnMpbpwWAbq5v9LRjFMlNdFo2DRBKRT1A1+ZPUR/9JDZzjnedUu9khj2dC45QQbWKb+uWbOSMDRcek=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7079829e-97b1-463f-f26d-08de95a8003b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 19:49:52.5749
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V6zurZRFqTGiH6Pa8cIwAL4o6ndeOMXVjwsjlXZAZX9+RmVuxN5Hh8qM+pyr/4l2Ct7A3Zui2bcGOqrtObBABaBnaHd5R70yMwb4s1+4IsA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFBA17DA552
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-08_05,2026-04-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604080185
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA4MDE4NSBTYWx0ZWRfX9K6iKSHz3+0X
 741Ydcp4tVt9GJRg/9ACAHL09lvXUlt67zrvRdU4dNVJUIhqXTD5VZNPZtNhhLjU3ApUfF9BU0D
 EeqzAj9m6JcDjL5CzVYaAtAq6VNP7u20lSCOfgVueG2OeEYAqJHYy2qJxrb7vn/Vv9kSwCFCckd
 kdCI2eFSWzox1jBj1kGF1iuHuXbXoUE4kqqKCgp7gmoX3wEIZlMy6B5IdAQ2tHZmJZnVwG5Jery
 U1e1MFSc5C1LXegCg4ehlms5VBdH5GinHnAGTpSiMm0j5FiePsUa5sGR6nfaWmq3J2JDWZloWpU
 7EFRVZk+/TIGqcewvyO52vzwszhmDXWDxCVXxtHpBjlkYVpZ7fxLbE3y7ulXzzElA5G3N4X7CJy
 lAasJyNl4PL7sTuhF1QzWwZnEPaty7hppi/lvpcOx8UFfxt1fiHutuIRwRePDt85nPDau80AFjh
 7iyrLtmaFQeU6V6Q+tIf+ycIWuEpND0Bb9CaNNmE=
X-Proofpoint-GUID: EKJ9Il4KtNSzUBIO_IZToUnySGnPVqjo
X-Authority-Analysis: v=2.4 cv=Oux/DS/t c=1 sm=1 tr=0 ts=69d6b164 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x0eKOSpe3m1H3M0S9YoZ:22 a=fPrS5t4AAAAA:8
 a=8AHkEIZyAAAA:8 a=NEAV23lmAAAA:8 a=pGLkceISAAAA:8 a=6DmX_J0GwZmh4UicLpEA:9
 a=QEXdDO2ut3YA:10 a=gggMYKadlkGBjojrQUob:22 cc=ntf awl=host:12292
X-Proofpoint-ORIG-GUID: EKJ9Il4KtNSzUBIO_IZToUnySGnPVqjo
Subject: [oss-security] PyCA cryptography 46.0.7 released, fixes
 CVE-2026-39892

-------- Forwarded Message --------
Subject: [Python-announce] PyCA cryptography 46.0.7 released
Date: Tue, 7 Apr 2026 21:10:55 -0500
From: Paul Kehrer via Python-announce-list <python-announce-list@python.org>
Reply-To: python-list@python.org
To: python-announce-list@python.org, cryptography-dev@python.org
CC: Paul Kehrer <paul.l.kehrer@gmail.com>

PyCA cryptography 46.0.7 has been released to PyPI. cryptography includes
both high level recipes and low level interfaces to common
cryptographic algorithms
such as symmetric ciphers, asymmetric algorithms, message digests, X.509,
key derivation functions, and much more. We support Python 3.8+, and PyPy3
3.11.

Changelog (https://cryptography.io/en/latest/changelog/#v46-0-7)
* **SECURITY ISSUE**: Fixed an issue where non-contiguous buffers could be
passed to APIs that accept Python buffers, which could lead to buffer
overflow. **CVE-2026-39892**
* Updated Windows, macOS, and Linux wheels to be compiled with OpenSSL
3.5.6.

-Paul Kehrer (reaperhulk)
_______________________________________________
Python-announce-list mailing list -- python-announce-list@python.org
To unsubscribe send an email to python-announce-list-leave@python.org
https://mail.python.org/mailman3//lists/python-announce-list.python.org



https://github.com/pyca/cryptography/security/advisories/GHSA-p423-j2cm-9vmq
provides the additional info:

Package: cryptography (pip)
Affected versions: >= 45.0.0, < 46.0.7
Patched versions: 46.0.7

Description:

If a non-contiguous buffer was passed to APIs which accepted Python buffers 
(e.g. Hash.update()), this could lead to buffer overflows. For example:

    h = Hash(SHA256())
    b.update(buf[::-1])

would read past the end of the buffer on Python >3.11

