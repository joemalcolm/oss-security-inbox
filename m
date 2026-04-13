Received: (qmail 18022 invoked by uid 550); 13 Apr 2026 15:26:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17995 invoked from network); 13 Apr 2026 15:26:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=NA8BUYD/auoaLLTlDrReoM8Rlr1nYnDPTAj4WPBc1GY=; b=
	X9Zn3onotLiCebljjWXNI5Zuo1s8f/oZNB2AZivqJT5Qo8S6nnJuYgCmsPhnQ2rX
	Z4L1fNGJNkKc8LahOYRO7JnU1N2WE2VuK8KKxHQYSwtn5/mIIad9yJ4GZsrqGgmw
	7IZnBnk+3/wrrGQuKU6IHlYyoamqk2nde2XuI8iOQyOzBvWpyJHvjFW+ONgpTGxv
	e5suVzTvBJHoC4THFkZSjsnN2zPPZ1dBhkrucSk/soLg1D3MeoTwW6SZeLis1mrk
	wNu/5GseM8aKCFAIMKc8IWktvSO8D/Z+wdTUPgbsAqWpmcYSlqkQaIMq0MYTT81W
	GO4BzZaIf3jxRhxHfXSv2Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X+8ZJgKzk0UCfK0dPxB1Um16wjpz37X10G1jRvy2ztR56KTrCoORGo7V6ofmI2kQYBYJ3KVE1bVFpCXByNOYIDFrCp5Ml4P1PxBXT6cWGy7r/rJ4UZ/e+yWqg5vv3qf2QbSP6E99g+TBG3ZrmrrKraM1O/RuIWg56gf9h2PvS4cQLnpDXbORk3P4VWcH7icm8xPWeCafVPGzC5rQx2AW92oOcH+SbQpoy1+YSLwNrlIMcEugBTznWjC2IykcB5YKoUoFoKY2zwAx06ig7cYg8CJIXYTGqjBTRFX+yNvn8Fb8lCPuBln3dGKlGm27tApv674RlB0b2CHmC/I2yG1mEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NA8BUYD/auoaLLTlDrReoM8Rlr1nYnDPTAj4WPBc1GY=;
 b=v2axkSS4AaSUu5RU9BvkujioJvTEuZLLUv1bqJjnq1/+X6g69UReBMdIyF5cIQlZnYzoeNk21FLhhuLnQ5jOpgHX/+lYXoLvVePDkwW3j+jXQwUNAU3cXSZwLALJG64bcXKzsZaaYgHGhJkZhXCW8+QjF50WXoc//7i7GFDUhfQ4T+E2K7IxnmhgU2t/p/k7+cXubV+czhY1G3Vw+Ug1S1teC8aqYlFihwUDSuaYzd+SBBkCs8bXpmABpXy5Ohv2KIMXaKe9G+wBDJWr7RfrPZJe5W6saC4yVphueUXhepYAWW8/RTr082UYpJvgdx9yXoQkDj4HwgRBsQWWKIjxBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NA8BUYD/auoaLLTlDrReoM8Rlr1nYnDPTAj4WPBc1GY=;
 b=q80mOV5Cu3vRo1D2/tYiPJWCq2RAFuItSDCKzZCMngZEd0uAKfafra0FGbCkx24d6ARKXlrgPCIv9STKkZVeidVAcUMGD1964prdCNC857nEl8m9GpEH5M4sdSI2+YonIzAAHh/oF2C1FMdvQDeIQLHJ/pHAkaE6LpUeCNY3KE4=
Message-ID: <93ced2d4-3ec7-430b-816b-4e078a6c49f3@oracle.com>
Date: Mon, 13 Apr 2026 08:25:46 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Alexander Patrakov <patrakov@gmail.com>
References: <6579b4c2-c2d2-4059-8d89-fada89a9534d@oracle.com>
 <CAN_LGv3uxE6EjPPbRreaQPL-UTOwLmmZ8NxxiZBx-wcaAF1Ykw@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAN_LGv3uxE6EjPPbRreaQPL-UTOwLmmZ8NxxiZBx-wcaAF1Ykw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::15) To IA1PR10MB6736.namprd10.prod.outlook.com
 (2603:10b6:208:42c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB6736:EE_|DM4PR10MB7428:EE_
X-MS-Office365-Filtering-Correlation-Id: 004579e8-4444-41e8-07fc-08de9970f164
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	xu9UrAL3T772Xvetw9TzRROcYx9hhLVjAQnGnwHiUZEIm1SDMm6hE82NBYRon2kGOQP+c5YNolEHsS5JCYL+OOpAadVnH4E66H/IjvwBCYFkQlnPnTgI0YGGBlnNn/W7Oh+Lr4+/y+sAbaSyg4MEgTMTAAd+8LdasGIqZOVsJ0zdHM1kNqkJp5x3omlCVD7ANJ4EXdWQXhrwjFSuCxAIbZvRt1tJPoSauTa9xWWjVdbMEfUFEaQl9pxbNUO9MkUgLHdb/HilE+2N4NPhvJ2fjj69vUPB1uwc0WCtOAj1et30RgABZ6VALWqZxpWiCgaABF2zmaBO4UgLzPJPIAB68rV5MzJoolygiK42YnCyEwvR2hNTckY5c6qqIFSI3UEi87SUHUTcIOcBJn3bBCqRwrz09nAwDof2dJLeSynUIMUhetDKArJfHgn5nV8DgzgKpd6QZmhcmz26eG8gdnsbxJoaSuwHwvifn/aBDuj/LR1O6ww4q9DNm19DV4Dh3IptPNKiPdnYkQz99gg/WyTLd2rDJ9q0AsXdbAYVPKhXNf9RHCTfzjFn1RNLUyUPVJwjzfaFwvf10v5mtEG0chnrKHTXsCZ8xXKSh1rTq5GFRNPJAa/ihX4kdQ37o+tl63kpgREKI1TyGKjJ24kYXgfPSq7DwJO90/FYzyJ++/Jf4NICPqfzH+EK1n342IgFgpsm
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6736.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bEVGRk1acFpKbkNyMmY1c09rQWIxVTIrRnAvemE4SUF3UU8yMjJySTVIV2dm?=
 =?utf-8?B?WWN2K1BjWGpaSkV4UVZOWTBldW5DeDNWVGd6WjNWbzNVRzJzVVRjclQ3QytE?=
 =?utf-8?B?SHJjVk5TSWNmaDNySEZyL3ZiOVdnYlJ1MU1jOEFONWhWKzJoTGFsTGw1VEMr?=
 =?utf-8?B?WlFuaTdKK2hQNFVnRmlUaWZkZGs3dERrdVVhY0NyOThTRC9XcHFHR2JXWFlj?=
 =?utf-8?B?TURyYmd2T1B6TTF0b05DajY0MFE3YTFES1k0OThqOTZqNkwvWFRJRlNXNmpZ?=
 =?utf-8?B?Rkc1V3R0S1ZTWDlmRDV1UHVwMmNLclMzcjN5Z082US8yVG1XQjF1TWc1VUxN?=
 =?utf-8?B?eEpCUjB3TVkwZFRnV1BSQnRoRGZyNUpGU0E3MGhnRFdIamdsWTg2YVhZWGxV?=
 =?utf-8?B?OVEyRENJMHJjcC9rNy9qN0ZzQ2R6VFJRSmFESENWdWRTYU5VK0NjQUFnUWNm?=
 =?utf-8?B?aUZEUHRoY1hhUUNlZ0xwZ01NUE5kdjlFZEhLSlR3bHFMaTNjdUNUNS9UUkFl?=
 =?utf-8?B?bzhQR1E2UGhuMUt2UjN5eUZXRlJxNE1OL2JBOCtJeFVDZDJ3R2hYQzA2QUVE?=
 =?utf-8?B?bGNibytJZ1VpbFJEeURGL1dzTVV5MHdrSFVRNkJGTDh3TUptQWdkdEw0Qzl0?=
 =?utf-8?B?bWVKNFR4aXVKZlJUcExSbXd6ZHJ3RktOR2VuUVppMGZaNWUxTEV3RTBLdFJ2?=
 =?utf-8?B?cVZBdVBDNTl2MjY0bWJYQjVIVGhzbmwrTFFXTlBmbnJ6VjBXRk1uVW5DbGc1?=
 =?utf-8?B?dUZHYi9BWkltbEtQZXhSbm1IWmozSTd0OTJkZEU4VXNubVlua1VLVWxXVVJ2?=
 =?utf-8?B?dGJzYkdGcUl5OWQ3TFRzMStlcVBoM29aTS8vbnFIeVZKNllaV25icjlHWktC?=
 =?utf-8?B?SUlnOVNBYzJsVmZmOEhYbUlBblRZNkpsU3BLeTdFT2NBc3BpUVdmNkxHZS94?=
 =?utf-8?B?MlR6QXhhMlF1Ty9qOEo1ajZTNDRobmVYckh5K3dmY1JMUjM5S3pzSkdIQ2pt?=
 =?utf-8?B?ZEl4bVpPNFNSanBuS2tmaDNtUHlUeHdjclpSQWk4Z0JESmQwZXRRdVJVaEFt?=
 =?utf-8?B?Q1RDVEE2V1R0aysyamFmSFRFR1pOYmdOZlZRNkNxTlprMGIrRVZUSGdBVXVL?=
 =?utf-8?B?TGdNeGlQOW5HalJEaWF3b2lZblNzdytIa3lwMklQWnZpWDNPaDhvb2xQZ3FC?=
 =?utf-8?B?V09NRkJVNVhQT0xQbW5qdzd5VThrRmtyVnQxZjhZcXhSVStJNEIxZS9PMjFQ?=
 =?utf-8?B?eUNpZTY3TjZYUjlFL3hKaUVSREVyTlZTM3VzRGRzRnpoY0YyNXBUS1VIR3ZC?=
 =?utf-8?B?cFFZbC9CclM2ZlJPZFBtb3RMYU9RVGtYTHJtbllTY2plQVRDeHZMZ29QM1M3?=
 =?utf-8?B?YkxSQWYyV3BxSThiZitIL1Y4eVp4STdKVGpvbTZSUW1ZSSt2YjlzUFNqbngx?=
 =?utf-8?B?WVpSalRKVWhLU05PcUZGenNLM3J3dHpWVVZLa0dlZVNHcjM4anBCbVpBSHBo?=
 =?utf-8?B?bzg2SEhOWEtIQjZLYlJjWHc3QlRDamFTQ0FzTWgrdG5oaGFRY2hLR1QvcW5o?=
 =?utf-8?B?S2dlbGExUGNUc1RtOXQ0YVhtWEs2bDRqRFpVV0loN2JDOFVQc1d6N2J0a0Vq?=
 =?utf-8?B?UXlJUFBZd0ZTL1E0emhFV2lFUHpYTlN6enlUdGRrVkVMUEEyaGFSV3lkUHVK?=
 =?utf-8?B?WUdxdEN4VDI1SElhenQ1L3lHeEVJZ0JYSHJFK0ZBeTh0OFpFUHBDK2ZMMWlv?=
 =?utf-8?B?eVhOYmM0NEtsa2tyemo5L0wvbnNDaFhUcGV3anAvWE8zZmZGMnNWU1VaRjNy?=
 =?utf-8?B?YlJId0dXYmdTb0NMaEdNRW93QTNjTTExUE02RnF1em5xUSsrc1A2cElqQ1k5?=
 =?utf-8?B?bEZDczVhN29JQ3FPNTVWTW5qM0RkZ29zUWw3eXZYc3FQcmFrZlNBUmI3UkxR?=
 =?utf-8?B?d0dnVDczOTVNU0Rrb0lxTS9HUU9aLzM5VzgyaVZKVW9CVzhTd2tGMlYxYkFE?=
 =?utf-8?B?d3QwaDk2OXpFaDI5VndIR2s4QnNERWlKdWp5bUd1cUdLWERqOGZjWnoxYkRy?=
 =?utf-8?B?Q1RiVUlSTnpTZ1cvTHF1K0x1Z0FqWVlidFJiRVpGay9LK1NTUDQxai9DR1FX?=
 =?utf-8?B?UHpieVhneGtpTW8rczhCaUxnYnk1MXNhbHBBZVFlQ1o3OWNwQU5ublR5SERz?=
 =?utf-8?B?VlNUL0Zka2JsRzNjOWRNTUVxSjN1cUVDcVgrSTVxRnVKK1ZnQkx6dmtsN3hC?=
 =?utf-8?B?TUVEL0pOT3VFb2xYSDFaUkplZHRDL3BST1RRTERhNTVvS0FoVHBmd0g4MFJV?=
 =?utf-8?B?TFl3MThHaks4Wk8yY2ZsV1h5aUozL0YrTmFrREN1VHg1Y0twQTR1SkR6Y3dZ?=
 =?utf-8?Q?c5o/naWS9NIPb3Qg=3D?=
X-Exchange-RoutingPolicyChecked:
	rbj52tvSqCLjePeyj9EM2gJlIZP3tpDnATER6bGRZ8hJLP//vl/Q1iLmqHsqUaMn74rHY/64lOVfO0WMSgWZgkLvh/rjOZ6yl0nyPogvad1Jg1Ktc8agPPDjdD0gn0Stm1bJ+t6XxT2z9zNlfzM2YXPq8aiH5cY0sAZtisZGFMkGjyjbUg/KvK6zlzvkpPl50P6DuEvs4laGibDyOUUbGG8fwOMsngx9QWigsSKRoubU29y2DK4XYvWRVHTwMP6E4lH+Lo4oq3UVRl1iOaU28s9mkoEyLgScX3a1vrjke/OYfKv94mT/YrZ5MmwsopNwoIMU2FNxYrg7o/Edv/Datw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	nJ7xEFxW0WV8sLgaJqW0nENgm+9tpiJ6UABnTaXvjV/mQWRA0IG3anCcVEZO94w7zqZFAmvZc9kIe+Y6UoeUns53h/RU4O0mVCpOJXE8KySXdkF/s8enYysYw/SPZAxCMKGwVzK+jvqLzuldMpODojtQIJiH2Sb3tR6Y2MCvdV/FD2LPPI6ckoVpDrz3gIVD0wRBuLQRuOIK95u4K4qvQz3U5lweYHHCNz6HC+JKJD4dlt/+SqtZd8w6cWOaI4yXTzOrBv5xZwababXNTglJyWUz/Y3Pgfd4OzjT4jVLqZxype478hkY4HGIbTZe/xfdUmuMSafnFcg2U+R0QM6zDLdhUQlDNgXsrUY8fdpxalralzMenUcCYoUtKyCE39Ogo7NDz3eHK1bLEIKj/hhyF61wB5nwlRXNQ73JGqE7REJsSvpzeiLUvjwAT6atG+dgXvzTu/iC7FbFuWlX9l7AuLUn988ORWzvHQY2w3w9uIcH4V5wbYiFHMMq58XrZlnGH0rOG48v9AsHLGpjxqLrWrKniI9o6dQ36/QpuNrCaj19YVHw1G9j1UXlqOV8sCSTiZRHVFX/HssdtvpudQHFDRJyRKGRAl9chYtegtwXYaY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 004579e8-4444-41e8-07fc-08de9970f164
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6736.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 15:25:50.1292
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EgL6X3LkHBJkKvT3sKQR5aQ7pNvtIwS8LYuDqEn7skEPnWtUWr1sGUlocPRTF07+2Wq4SVIRm1kRLPSfuR4Eazi3LipZMLaseZOzjFq0L/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB7428
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_03,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604010000 definitions=main-2604130151
X-Proofpoint-GUID: YB8imlL39ELOw4PGzJ4UGmMfTBPvUEB9
X-Authority-Analysis: v=2.4 cv=J9KaKgnS c=1 sm=1 tr=0 ts=69dd0b06 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=KXNjKRM2AAAA:8
 a=yPCof4ZbAAAA:8 a=Fe8otaJbs6Onj0U0G5EA:9 a=QEXdDO2ut3YA:10
 a=mSazE2kF23J1KSLjTTd2:22
X-Proofpoint-ORIG-GUID: YB8imlL39ELOw4PGzJ4UGmMfTBPvUEB9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDE1MSBTYWx0ZWRfX2PHnxPyt1vIO
 waZC4UKGf8OG4k+ZU0PNWbHIZOQYAyJbtfm8oclmp+EW1Ye6w22thG9vrYWI5JcVqSDNU/aXH9u
 +BZ8jIJuKL9tvbtjWKp7MwNUiSMVJr9bdZ1JNw/CtFLvYmZtLGbiSY4N6vB34DsK65wE2zPpaqf
 +xpKMN/k4Kgf/k1iwBLcpNFR5bKwOirIPb6JyywUfN/KOtKSV/rl4lKtyc6Zo/UmIRceDch8Z2y
 mWaXtUcVHGsljTvf2UxH59Zne73dgI/6JCFiiqXdBRxbmzmy+UM6pQoV2A6SifeOO2ofoJcc5Ot
 /TUsW0TH5eRngEjo1CmkTI2E0455Oa6xVCvvYg2kKOBxY0ftMvIWYVenLlU8s2d8GxIhbd4Z6Cl
 ESsjQ1LgEoHxUFPpVrP+hrnkGmE5e/7KTr3VruO1AE5xhquNHd71AQAru4PxMO9SvQoqMdlsVE1
 wH9eHvKRugkt6gNrI8g==
Subject: Re: [oss-security] Security Audit of Hex, the Erlang package manager

On 4/12/26 19:28, Alexander Patrakov wrote:
> Hello Alan,
> 
> How am I, as a user, supposed to authenticate these PDFs as materials
> really produced by the parties Hex claims they are from? The PDFs are
> offered for download from the audited-party domain, not from the auditors'
> domains, and do not contain any digital signatures.

That'd be a question to ask the Hex people, not the unrelated person who
saw the reports online and brought them to this mailing list, but for at
least Paraxial, I can point out that I first learned about this audit
from their blog post at https://paraxial.io/blog/hex-pentest which I saw
shared in the OpenSSF slack forums.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
