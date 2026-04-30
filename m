Received: (qmail 5819 invoked by uid 550); 30 Apr 2026 17:25:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5778 invoked from network); 30 Apr 2026 17:25:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=qh0q5IANmXMz/8Y8iRVI68Bw5TgjGqnYQ82nNbfq+5U=; b=
	gYLrPOrOvxH+rco3zD9hUbQUJj4MQV81vbF6nfYGHfNamvoAga1bHXDU6yVdFr0I
	IZC8zKweRD3hi8SjQcJLPC225aDjnK+uc65TlnIhS/dIJGe40sYKGmu9HyYAHTDY
	SNhIJijZYyzCAuJH5EueSW0uCKDZGWBDVlIxuudssQco88U4ApBzKG4YjAZSQRCt
	Fqu0MREZ+TVNBg7meILLAevnT9GkMZSAMLQK3NPI4KS5ce238H3StkqX2RR69z0j
	BNz4Vu3GsA+1iPDFrhsB9Ug2S5U+5W/YMzyVV5Z8sKZIn+6LNNZluGxeiM/KXCUg
	trG9ayIK+yegFh6w8gF6VA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D7R0JFPFfMO5EtB42U6YKILQ1t1hxteOiK/BGlAkPd7mc6rHsiKcz6xecRnnz7OnAcrqCAKVdpeaGcVkJQrOEfXIY8keNdpYIJgo/+rriUJcaiVPl7Eb5KSE/NX1c6Dcr3clSnKDtq0hADe8hz/UlmRondm+Pr4KFvPQubgI4Ia7FdJUt0s1nDEBAgZzdTKc4VBa/uGgObCBrP9OkrDFxXdlWlWC7AASbrElBdwQT738Hxxfzn33GDs5yT1YSaMmKG/vPRWvWiKxSkxZ7X1vuyFsbdDd9Cq8pkJeC2RvrCgrheCWy6vWtZ5BgEPwa7TDeVJhC9YjZUeIH0NKle/duA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qh0q5IANmXMz/8Y8iRVI68Bw5TgjGqnYQ82nNbfq+5U=;
 b=WJmp+eOuTlRzwIjgkDbuh8GHgASKKWanU9ZwrEFZ9pgTnr/c1rj2uaYCUGvB7gpi6GjHN5n/rMfDI8XQKkoMIEJ8CD/L3LOCpCuRo7BttEm54xcg4zYxQcX5C4v6VZc/dXfPy42/JN59BdIYW2SZ67EezaKb0emTfwucJ+ZC0l5Xs7VsHkZHSk158mCfmWvYJ5mObN87rVah657cc2zOvFtM6NEWoP5oz81Pr7k04PIuiITV587GzcfRpszpllwOI3oCIe/NLDUgDVQpXI61adQktvq3rb/henStw23rZxb3XtQed142jIbUq76pJ4w6vIjuMeA5NoUZv7UhaAcoQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qh0q5IANmXMz/8Y8iRVI68Bw5TgjGqnYQ82nNbfq+5U=;
 b=jy0nE7XGtCHMdFR9CNF4e2vP1PhWtVcIFohvZcRMa1ZjOrqRxfB2rNwVAZ/I66gMD2IQo0djQbqMiN2qZGnJMSQHSge96pK/nwxXG3t4SG3/1pYBRU2ZMlW3YUhJXZDSyQaslaNF5vCcdbq+YANa+1WRcD0Ft1V4PNobB6l/SkE=
Message-ID: <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
Date: Thu, 30 Apr 2026 10:25:01 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, cyber security <cs7778503@gmail.com>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Organization: Oracle Corporation
In-Reply-To: <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7P220CA0073.NAMP220.PROD.OUTLOOK.COM (2603:10b6:8:259::7)
 To IA1PR10MB6736.namprd10.prod.outlook.com (2603:10b6:208:42c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB6736:EE_|BY5PR10MB4371:EE_
X-MS-Office365-Filtering-Correlation-Id: 3df3e82c-8bce-42c0-a29e-08dea6dd6a1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	yJb9rzWKvzyyOs1+07RSOalfCpVzr2KCH41sKzmauxC3CLMG1kKn3vkEGE+25vAqL7FGiy2wPw703y9fB9YyQb/dwZ8HFrHVVpzH9zF5GTQlVvK3XBVTMH8pCcvg7NimjzNqbYtKTXKfqa/aoNYSQf8C/HylJS9q9jcRE2GqqpYBlRjLYn5ZSlalE3Xyq+R7VLRoXJzkZ6EC6W1ogQKaaClzytFXurQ2DaWjIQg40r43ndp/vQxb4oJrsaJ8dRJTHNx/oqh28L57Ldu3K9eebMh3KONTI3ogqB8ibCSdysBGOtltQy7j+RVG2OYsMdjrjZ9HAsXEL6xI5E1IJ59KCFf7bw5kKw+USmksdst/ll6+y07F0PGHpCeI9qYaws4PAMzpmukBWm2PIovdOQJYbvP64yKDhUNP2WtzwLTeCynrdCLjqCiUW2LOfrSNbCvVj9gXMGCTeLqHfbT0NVEXF/FGOxYk3H41YZ61omEQovVoYkx2v4Gvw+DE1sWsHIa48WYTuWmNiAP3T9IrASBl76YkQAdQ7QVkMlZhyvZq27EDph7YJ4tBPO0hS+0vXUk1aRFnwRYRi2+MD40nRLs/VIO6Y+H7RYveJfVvDY5YTaeTJsoK/AKe7WVx00mCoiUlUx+1+8sNNfYI0k9KIIm2tA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6736.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OWo5cnR5RGNYbGJ5M1pNd2g3RFhPN2FmbTMrT2xnWFQ1Sm1zYlpxelFGeThp?=
 =?utf-8?B?UWxUN0dRU29FZUc4N2tzWStrQ0k2VWQ0NUd6cHlHeXV1em5ucm1XNy9VVHRN?=
 =?utf-8?B?bWFhYUwzQjQ4eEQ0LzZ1TGZxZ1loODcyZitOdjlIaXF3OHNxcm9iOExhSVBG?=
 =?utf-8?B?WElhcmZBMkp5d3hXZldyWHlXbEttN3pwSUZiakdYYTR4dS9jTDRxRmJ5R0hP?=
 =?utf-8?B?dFUxdTJCR1g0OVc4ZzV6dTYwL0RQeDhuRTMxTHBGcHJpdFB3WW0rcTRoZnk1?=
 =?utf-8?B?RkFkelpSTFNPb0t0RWNMSFZhdThRV0QrajdZVmxjZGxaK3Vnd0N4dmdWejNS?=
 =?utf-8?B?L1BlOEpSM0dIOTMrZ1Uzc3lkWnFuaFR2T0FiOTU0RExleGFTV3VCbWE5cnRv?=
 =?utf-8?B?WDVqQlVqTklheURqSkVvaVNNZStvdkFnQmZnaUlmK2FDMzdGRmpLcXpCQ2lJ?=
 =?utf-8?B?eS9sWk5DeTNiWlVnZW1OU3ZwUEJDRjNZZDk3Wjc4NkJHeWFUT0pMa0llQTNW?=
 =?utf-8?B?MjhzSmdmNVBPQ01hMVZudjlVYkNSaUFtd0FrTDZuRkF1M3RvOHBZeVh4R1FS?=
 =?utf-8?B?elpGNktMd0xpUFl1VUYyQkRaZmV4ZVM1b3hwSUdEOGJwaDlSb0x3T3FEeGls?=
 =?utf-8?B?UmlUKzJLNEFmRi8vZzVGR0l4Q0FQNVV0UVpXU0ZSdVZRSmY1Zk9MWXZ0cXh2?=
 =?utf-8?B?czlZMFptQmNwYW9KMHJ2bUR2d1BCZk0zOEZUTFJvenY3UUlXMUNiNDUwQ251?=
 =?utf-8?B?YjJUN1VuWFBnM0l5UGxsR3VKczczcmx5YXlKMHIyeTNuTGtuOVl2QlBmSWdh?=
 =?utf-8?B?QjRkbVdyRjNFT1h3S2x2WnRWb016QUM4cXMyak1WQ1oyeUZJQWlBWlovVkl0?=
 =?utf-8?B?THVhU2prclFubnVnRi96WnBLallGVWRFM1dRRmtEVktPelFuOTRVNWZyTmhn?=
 =?utf-8?B?bmpvNmc0SUZzUE1pMmtaSWdzY3dzSGcwaEpOMEREbU5FMTJlbVoxaXZzQ3di?=
 =?utf-8?B?MmtNSC9HTVZSckJCd3lpcERjdWtucTJLYmNHRkZLN3hIMGNicFRoZXRDOGNl?=
 =?utf-8?B?a1Z4d04wK0RieWNjZzREaHBmNUdTaCtUNzZUTG9iUXpqQ05JWXovVUtuVDEz?=
 =?utf-8?B?VWFJeUY3a2g2S2xFM2JobllDWDVtckE0cEM0dTcrZDFiNXlIWUtYVEJzWHFI?=
 =?utf-8?B?bGZ0RDdFU1N2TDFETnRWekQwYjdacWk2c0o2cnFjbnFueWZnUmZmSWlBWkdX?=
 =?utf-8?B?Q2MzZzZTMXd0em5oMkpvU3lmY2pHaC9GZTN3b29NUFIxT1lSME1yZUNBK3hS?=
 =?utf-8?B?VXkwRGpDSCtZQ3NLSVMxTmJ3RWRUL05EbWx6UDRndVQxNThXejhWQllmMU8y?=
 =?utf-8?B?WWEvcmR0aFdtamFlMk5hbmZVK1VqcWp3WUk0Sm9TTExLbDErTDBQMHJtUXNq?=
 =?utf-8?B?VHZ2SXB3L2tVdmJjcC9kVlBSWmp2NzloZE1KV21lUnJWS25WN2p4NCtLemp6?=
 =?utf-8?B?eGtHM2ZCeGtRSUlrdjBpZHRzajVXS0hSYnVaWXU3cFU4M0g0WmNBYWlpWTlY?=
 =?utf-8?B?K0ErQnJNWHZaYTZsYi9RU0FiS2d4ZzltM3paN3hodEpra1BGcHhRVmEwaEM0?=
 =?utf-8?B?V0Q0cHpMVElTblB3ZUpEZUppc1R2aWxmQXlIanpWam5CUENLbzhuSWJlR3d5?=
 =?utf-8?B?bld5bVNKbUk2U1FOZ2o0c2FRTitvUWRrVGo2ZVB3Wmg0M1MvT0VEUVZteWF2?=
 =?utf-8?B?ZnhZdWdrUUhSZGRSQytHMVRBZ3dnT0hjZ3dYTXNvSGppMmlXM1pCKzlUY3pP?=
 =?utf-8?B?VjlUM3d3bFdkSktzbGF1c2FITklWZkt0WWUvV2pickFudVZyUnJJQUd0c1dm?=
 =?utf-8?B?L2UzR1pubmx3bmdCY3J6eXJYK1huRjZvSkI4Y0VQRlpYOWNhZjM3SmhmTFBS?=
 =?utf-8?B?Q29WNmdXM0oxRGxBU255NS83UWtvWk5TUjZIL25NZDQ3UFVRVmF0UmhNMWIw?=
 =?utf-8?B?OHFsTzZ3QnpyVWxyRVZzTjhSTDlsL3Q0Vng1bkpnejVEelhGcjU0ZktVdzlj?=
 =?utf-8?B?eVhLZ1dIaFFLaVg2YWlBU0pQdGRnZ1BHczFnRzJPSXVRMVh0ZTBZZ2h0ZnlT?=
 =?utf-8?B?cDllV2MxcVF1RzI4VDlhRUl0S3BJbW42YTlaNnd2Tm9JcXdocFBGN1gzRFlG?=
 =?utf-8?B?T2w1OWRjTFlSdnJsYThjSFY4OWZoNGhOOGZ2RmhJbFVwdksvV05jMXE3ZWxm?=
 =?utf-8?B?VUUyZjlaUFBZMlBUMkJoSHNpM0RSZXlQQmY0MUwvVzllODR3T0E0RmlqclJn?=
 =?utf-8?B?dllEMzhDN1Z3NCsyWUtUdTRxNkJkNm1lRWxRQStoWlBsbUdIdWtHZElKeXNk?=
 =?utf-8?Q?oBnKKwJ3H/3tpVHI=3D?=
X-Exchange-RoutingPolicyChecked:
	hQHeHwyX8PCwhecUhHAPf3cUdFosU7CHJM99ulu0oxAC8rr1cxIrdf23SUT8XOOd/My7UeCT/5r+Gvp1q1NcuVWz57YY8AFcgYfXDLaignzrpkF4n/mOWydZaAjtJrS++lVZCqjjopTUpSVkt8uKvHJHb75LvlLX/LAII1e2eUsGYQ0VIGa0x6gkKwHBL45g05CPxVT5BRxr+dqE8eugJ+2bmpbDK2FALKOqlSk++7HPxer/TakJt9I6LDRgHPqV06tj0qgtiOO1pnR1o2OQzFbgnlsyNlEDDFVaOvyueexi+L+F2OdCcttQ1LprlTZ79HRW2p2VKrSL+mIXZ3XvPQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	cMk78Pq1iTM94HtjFioBq4vfhyMJ5XmBjdcpSEIvxYeNbHYmPgnWquZKdrV73+HDv0XbRWH8aqW+oOV7J5MdY7iQiJm2AeRg6JUuNt4LAkDz5voaB0F8++4jr7hmGYpWb/CbuTiLL0LaCsWgEZBtINNA5kx17FM9nRMOh5fqF9X8/ZVJr1C6V0hcEayRtzZr3iw21NSw3o6RC3Rg4B8Y6vedr6AolbEzcOZs5xOJMqQkvCCkeNycGZlXghJ9D8V+WDGhPZ/I1duRJ+B895JwnACQlEoqbuwzzG79M38qB3Sdpq22DS2q3YVvBQnmJLTobTALCrnlQJZQ5M3qZNRlGKzd133xz9v3cEpe+hO+t81TsW/YCywyQFiDPx6jOpXT2pYXct/Ix8R+kPsYY4oWEO/FDAYCW0syrXKEouYXL52t1HZCBAiSi3hD5hPlwVMKXq6nQaJHfRlH7yLq05xrNXwEYGLytlcqBhkAC284M97zYYb8WS1w8kCtN5ezEz1gZrWn2NQbioRHJ4moriE2hbftl635WvshrEDjMrIPnHi5PV4QEeZqh2Q4BIHysCoo2Jbos4zvBI9UOVHnawbr/aRf/ADFkmRN+LmX+smSE7c=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3df3e82c-8bce-42c0-a29e-08dea6dd6a1a
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6736.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 17:25:03.3809
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2C0kAK9OCoKTy4Q9ECJyu60dU+04uUt7NmDvfB2l0qVvnVoqzRRY5E+3BU46ZJMYTGTt21ukCoDRJ2bBtZ4qHNeEh7HbliYQVIkXoECo3fg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4371
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604200000 definitions=main-2604300180
X-Authority-Analysis: v=2.4 cv=U7uiy+ru c=1 sm=1 tr=0 ts=69f39073 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=yPCof4ZbAAAA:8
 a=mBxoB1dgdvgxO1voPTQA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=ZXulRonScM0A:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDE4MCBTYWx0ZWRfX//ky3LcODl1j
 u5DtzzUr0n7TPw7fcxM4i+kdMzRdQr8TOlif8wdfhNbuWth5tfqyI+ZzyfmVhEWxrCjh2ZvASn0
 TXSqllrTuNy9dtAwih7p2M1kPS8+mIBLCLHnFh9WzFUCapO4vnLigqioVIwW2t32OXW5O13YMP2
 M8ERsZwvUftH0syPZ94YLaWJYfW/ujI6r63CGoREG0Q6Zvn0tKVue5vBoHRYheLkRI0y2F52YaS
 qZod5/vOG3e+GTo6FrrQdys9ftygWskVhuwYSrF+1ihM0zAUTbmftymWitbXQyGMr04TnRU0bJj
 axRKJVMFMb5VOMe0xfczztO0U5ZAeiVJslELjWtv+JlyqGU0e37Vv4xZsjbMXmkkQhqtgMSBifM
 V4te/5ixKpPGay3mzqFJjztmNJXKYhZjmcCVVaYsxRlSIC9FgF2J7HOLOBgM9OovK6y9/XKZgWe
 jLGviyZTRlooa0lrTYQ==
X-Proofpoint-GUID: KOGevHtK2PLleJqXh6RSHgRb9-jYoFCD
X-Proofpoint-ORIG-GUID: KOGevHtK2PLleJqXh6RSHgRb9-jYoFCD
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On 4/30/2026 12:17 AM, cyber security wrote:
> That is very terrifying, is it is 10.0 score?

A 10.0 score would require that a vulnerability be exploitable over
the network, without having to login to a local account on the system
first to run the exploit script.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
