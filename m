Received: (qmail 31939 invoked by uid 550); 26 Mar 2026 21:30:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31915 invoked from network); 26 Mar 2026 21:30:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=3avwabPAMb/jQx6lCaT+NSiBnG4CCuRHYYprSIhNP3A=; b=
	GiRPsvxk6hk6qEsCCKRW53YegbhUfW7wYAdSZFROpCPlAoXgYN6pBIawRkb5/HyR
	ADQ9FaPOmVCYf/B2W5AqmKkWsT5wCxnsiTq+Znl7fkUKyDd1f5lEb96HY6gqDXOf
	jKe/zPzSXONMvtTtX+4/7IqXfAvdCxtVS1JsloKltYuMuMy0ASxMvhHy2e1IRwQ0
	YOpR+SxBdxq87Rm32lVYw1dvuJqEoGd4VhnkxaLtbnG9MEHUPAvqi43CN5s7rgGR
	DP0r00ZJwVoBCVHvJKYnZLwICLRBHqloePLmTHCXzdN3uOsSro2q9MBSp75HuEVU
	etN2XXC4+M3Kj+oR1knKAg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PI1fYFD0+QLz/gI/ilB8XqnLJHRvpzMx/EHcMOGEPeVEhkRKt2QDDJyZWVCMUSi1wDOU++AfXvQ4HlK7vA3ayGAB4DWsaPCA9Wqp4wTsbZxvxb+pSuUqBuWZwOxD/XJJ43kLocZ+xitwVhSUXJs/jAlCehFg13Kbw4w90cw2jTGKkc8G+A9/oAusRPoXdCWA9xD3G+eENIlpPQwhNFew9lmJr3SNBiSCCji8+LiPSLdJBRfdBNp8lowsatwXc/iKzU+rfqKiFyXfydNsdkiPcntFwIVL30ClZKvAIoUx7uwE67dRxe2A1KC+oX3zqktFnF7Gu7z3dSHjRdgfQaA8tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3avwabPAMb/jQx6lCaT+NSiBnG4CCuRHYYprSIhNP3A=;
 b=eyxdS85uhGgiBHGB0haUen11uMZqx6abMlAaKcBijqYSm6GZ5D9Wril3xXdfZ34Jv1nDp0jVlP1JyrYbmM3N+Q7ILJNq3o+JVoDONzO83fMGBlxCibjc8aQCGE9vLxriBve9JXJc852CuJqXrbS4mfclnEP+6mRcm24yJynzFSotWEoRdahvS+Y9EncByqpWFI+5a2yL5Lcfs6dk5dXTwcuuvbo7SMyvYMOJJvq92z9pLw1H/sgcLqWIuMfotaPyRdBg0pFn5CYVyemN7JPRRkqUhll1gPrTAW2JINtgNXjIjxRl28FYUegqfwp8xJv4Nm93xJ6HBI1TDhgQ8uVgXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3avwabPAMb/jQx6lCaT+NSiBnG4CCuRHYYprSIhNP3A=;
 b=vZ/SYN0v2RZudxk2aJrNiVpho6RmoPwS3efKCEVW39HCE6NIdqNG2pZ/okLLupIM49KIwTIlnB1LYC8eMnimSdA0i07Io0L11APdqfcjGs5GeBD2E2tq5qcQqAqcGrNlTOSdZk4/CgsxL2Fj8gFtlsZzHYE2RdMRLmosNkEjzt8=
Message-ID: <647f7213-3d93-4096-84d9-01e36cdba1ca@oracle.com>
Date: Thu, 26 Mar 2026 14:30:00 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <f896bdf3-c01d-49db-ad82-c3ebf1e898ba@cendio.se>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <f896bdf3-c01d-49db-ad82-c3ebf1e898ba@cendio.se>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR13CA0057.namprd13.prod.outlook.com
 (2603:10b6:610:b2::32) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH4PR10MB8145:EE_
X-MS-Office365-Filtering-Correlation-Id: 19598ea2-63aa-44b3-68e8-08de8b7ed718
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|4022899009|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	bS7xMNq7lMOqmqI6T1VsK/2oRDrHW0cIAImB0980mYe5hhOFAt05VgYm+ZSEAnocoh/SYDnTuRLn101iLgGnEgd5M4TS2X3/bubdQb49o3f9lYSO9LvDoIGuqoTgOnV7fvWEmc+PCl5O+eJeN59tFt4d3VC51l7uyzgKxp8kbws3fD+E3SyDsz8u+wuwOIqCPHCMgKw1nBD7CPLrs9BnCFo0+Mi0yVXTRDKyD7Hygmmm1hsnp55uRog9pTF1WHnLH1Bel4ttethgae9M5bP6KROvvYiNR/xsWJW3UWjBOpU14wehXiOpF+ZWMbGhbg2c+x2jbS51ACaz5S1FwuLmkzaJ7TQj+IRnbVyUf+knp/NjfXMGL3DGpzx/+79Y16HveWAibmo5t2Snzqm0ZlTTBdGnuGN9r8EocQ95sQNLlUCv6u8efa+uR0Tv2KG9aorJm+4SO5WM3++ZZT+tj5cXiTfPqHm2aB/x3cQAQln5qgTtQUB8PGC+Y5XdiCHl89RcevkDeI0mMNiKtUw5jHOaWIsG+ySUwVW/DSuueyY8wlQN2pgZ3gTLr+4pENDYFJtZKjmDpdHI3nCOdFK5hiFB0A4VMNFzfg8lG2jpqnzvPTN+ppSHpDGwxWsavcdZ4x0HUjRaffZclo3cu8ku3Hq4r9C6B454NgyqzRCCm1QLteiy5l61toe8qP1HP0H9Ho+2
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(4022899009)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VTgxem9hTVRzb3FuQ3VRaUdUWEFhWHhwdTVaeDRnWFpXcUUyYTRVbWx2ZEU1?=
 =?utf-8?B?c3ZvbEg5Sk9PMGRPQ0puTHdEcUJ5eWdjWkxzTGZ5M3FySUxJaTF1SWM3UkNt?=
 =?utf-8?B?UnlLOTJVb2RaZUVJbVpqaWdwaWM0MVFsbWhrMzdjUE8rbmJtd29RdlpTcTd5?=
 =?utf-8?B?RmZBNVRKbW5RUnZJeHk5eHNmUkh4dDhvM0dJUlJSLzlBQW5uMXRRcDBmT1J5?=
 =?utf-8?B?d0tsV1YxQmRyYnllZEM4dWhBRkVsRnA1WXk3SXVMa1pDUFIvN1NEUTlIeWd0?=
 =?utf-8?B?L2Q5U0p5c2tQYjBITUVQMjhScytNcXRwWVZyOWdVb0ZOTU1tMlUxREU0aWFN?=
 =?utf-8?B?OXF5V1BxTDNTbEhsYksxbDlhZE1WN3FIZmFsQm82QzhKb1dYVisxNnRHbjhm?=
 =?utf-8?B?SzZaeWtRUFhNSVFkMllYbEREMUNNRVBPb1ZEdEtpQVhXcWJNeGJTdms4MTh0?=
 =?utf-8?B?Y0dPVFJEeS91ZzFJV3BJZVlXVktPdnNnQW9Dekd3SDZad09HZkxvQlB4NkRk?=
 =?utf-8?B?Mk4zMHFoT2l2bDV5d2tFOWQ2aTQwRlI5SnVVd1R4SDFjSXkrTG92Z0NMcERv?=
 =?utf-8?B?OU8rdldwYmVPbDFSNys0L3A1T3hsTklqMnhYZzZ6TlhRNmQzVDU0Wk9RSGVu?=
 =?utf-8?B?NnNTWERJdGYyenB6MjNHdzZ1WHM5dmd0ZlYzS2x6bk50Nm1LUkNTV0NQSGpr?=
 =?utf-8?B?cVFJOHJoZ1NwMTQyajJwQ2RzMjVoV3RjR3MxVWh0YnFzcUJWTzN4MkRhV0pp?=
 =?utf-8?B?UFROc0hwTTJzLzVQWXpZSTJMcUM5K1laZzJqNTB0Z25Cb2ozaTRyVEZSbTRD?=
 =?utf-8?B?bjNUa0x3algvZEM4ZWtqUnI2ZEhYaXMvZTVpYnZaeXloelN3YWo1bnpOL2Zv?=
 =?utf-8?B?Y0xoeGRwZWJ4d2RDb1JnYWNFeHVqdXVSeEZ5T2dwVndkV0JsSW1CTDZZZE5l?=
 =?utf-8?B?bTE5Z0dXSjRwRGlMZG85Wi9BK0tTd0gxeWFlMVNsOWJqNHkwM0UrK3JXTnhp?=
 =?utf-8?B?THRrTmV2OWpvUTJLR3JEVVlZOXQrWEF3RTJRZWJWZTVUcHZqS1EyVjlvK3dt?=
 =?utf-8?B?OUoyS0M0eHJjWVlCbEJHTXFlZWZha0VoZWZMUHRlS0JJbWVmbnNPQmZpd0xX?=
 =?utf-8?B?QW4xcXhCYjVFWFZBUDdXZUNIMkxaU3luQXlqL1dmVU9iUTUvSE5OSkZuRVdB?=
 =?utf-8?B?UGNOaWtSL0VSeFZrUjl5aGtITjJXRjFVS1E4MVFaS1lqS0dqL3prT3Blc0Jq?=
 =?utf-8?B?WXVuZXlObWdENVhEZmRQbXJsZ3pqK20yTDQvZXhxblFGT0JnWGNMdFI4Z2tr?=
 =?utf-8?B?NlRXM1VhM3orN1JoL2F4WUVpSFloQXRTdUkwWkZOT1dVdHRZRHJiSHlqTzd3?=
 =?utf-8?B?RE9rRVF4ZFA4VGl3NGRTN0xFSTRFbHoxY21PQkRybTZ4ZlJOVUxYNVp6NHk0?=
 =?utf-8?B?czM1Wm5scTdwOFRlbnpjeWtaVzY4NmZzOWhnelpqN3VXUW5MVWpZUGZCZHBD?=
 =?utf-8?B?SHdKRnhFZjBqSXU4d0dXcnFYeDJZWHVkSG80SGtBcm14dUxkamZzVnkveVFy?=
 =?utf-8?B?NTlUVmUvS3dmdDZoTUpRR2V0VnlOY2VZZnhjSlB6cWV4cWhxc2wvRjJRaDFo?=
 =?utf-8?B?Z0tET0VlQWY0d2hUMjREVXMwRmlObmlmcUNHQVdzdlR5UTR2bnlCMno1VmU3?=
 =?utf-8?B?WFYreTd1UlUrMUVOVzZEWjUyYjc1K2NTd216dS9ReUs2WDJaOG5Dc1Zza3VT?=
 =?utf-8?B?VDM1TG5DMTY1Y1BabE9WNCtiSkNxY3BSUS9lQVh1eEEwa2RVMk1FVVZxRGFw?=
 =?utf-8?B?MCttM2sxOVRPNG11Wjl6Z0xZR01nQjVTTk04dDB1TVRMOXo5aEpPeE1JQ2Yz?=
 =?utf-8?B?K0J1WHMxVUY2SkdhNnowWFNtVUxDOVBKZThXT25EWTV1SFk1NGh3NTZQVWhr?=
 =?utf-8?B?VDJUblBPdTh2Q3RuNWkrQUZvZFRyaEpHYVY4dzNJZ1pXK0p1c2J1cDZ3eWpr?=
 =?utf-8?B?aEpVRHpRVUVmTTlwRXE4T0tHbE42RDlJTjBzdjU4ZU1MajhsMWZtd1JHSGpD?=
 =?utf-8?B?eEVEVGtDalN1UFhXQm5zcGk5QS9zU3kxNjRDYkVSRmoxRUdFUS9PN0JXdWxS?=
 =?utf-8?B?N2FUUHJMbWRoaGx6eURRbDBoZG1zMVFKRlNVU2pINjAyYldvU2QzQnhnMW5K?=
 =?utf-8?B?K2NvK1NOdGpKUlVFcW43ZW94c1dEenc2SVk1SEQrendHMlNGRE04RXBDcnJP?=
 =?utf-8?B?NStYeHJ1b2N0dnJOcW5yZzk2UDFrUHR3YWVuNWlFdWw0WXVFNDlZVFVBT2xn?=
 =?utf-8?B?S0VyRVdmTUNIZExTRVhiQ2trdXNDOC9pZkVHU2RxYUZhTmxpazRaaTd5c1Fx?=
 =?utf-8?Q?kRSxblVK8hRmKa1M=3D?=
X-Exchange-RoutingPolicyChecked:
	AbVSPsNHK1OnIYMfCoiA0No4SrXOZ+mAyUDxMpMvImxsp6kO9Ni7t/ejScJ9E9pDTXuRNV/Dinvv1ap8tMR+hox+cZC7Atby8sE+mtvPrY/Ca5Ne1LitJ/zbUki5NhVkrO6JoonXMu32MQryhpc7ngy/jebwHhw3p8IKUx4Nsk+tz3j0rb/i9FE1+LIXrpR9Si3HwgaM3qUcmhEYlWXd6RnFt9n5VQYSlLRUweXaMZMrKPi1HNTXAHj0dt0etKMaD6xO+kaC3HaDCQqyDSqVofKuhQ1l4Qw7Cx/30FQFxiCqe046V8pGSCEZnTe8+h78f37wr81BFQTBcztzeWwOlQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	otuOWEvMQKeq++Kw35mvxWVcBayk6WBkHgGUaitGICKIRDf1kwbczOWIbFsX8oXNYlKQ4sZ5+2NwZ/Uvy0Pc0uysHqMz6kFmmBeb32t7w4L7fnG7iwMysrf8iLT6WJMxylhahQr0ZWhh7d+pSW3DjAG1Jwp+oVFmBIyMmtAxyaQFErsJa8WCrNx7ytZrhoQiIX8kX4+aOyxADbXFbPwB4MpDjKZ6L0iwmM07hlYmVfsMtacJhJ7fWYKOUE8IcPpKOApBAU1tq10plWPM8jnUsz8UeiWIXaOaPn9bWEHINtGhgvju81nLU1UmHsBzP7Ct7cpiM8Tk7nYqEK4+kxlmAEf+B7J3UXdNkPt6oV2tw1VhvxXnAtSn6bqXyQH4LOvS6fMhzjQ9wfAOyNbIqY3XU09s4Xo5VcMWBf/6n+MNz05xixM3ThkaUjbXXWeE1aFKeoESC1fHA/qS6c5/JjDNnjlmfyk9+I20bZnYa3rB5c8pmCg6O0hGc/cAt1rSQgqRaV3MDVOl/3qU6zKbPnuf7H/f/6fHnAKLhpJvJSKkBTapPgPBnMwPro5nGhkB/0cli/eY2e+L5vPl0wePpbSR2KQW7Y79ySHQKrBwQ4tnB9A=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19598ea2-63aa-44b3-68e8-08de8b7ed718
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 21:30:02.5318
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JUFuubtjPTnyxZ8GQ0XU32P+c7vdCpBg2NxXrPKq5cLrf9oTqRF4FIP25skB78swYEbZsVtcdELlcGyAZhnpMqeV/8KxQwaBDBIunpdTk7Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR10MB8145
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_03,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 mlxscore=0 spamscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603260153
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI2MDE1MyBTYWx0ZWRfX9hPT2XRskPmk
 X9gXUponW6ueGukTJ74IvCdDDRUGYD+gGu0a4lG15i/k9WHHYTE/QfNikKuk/V9Fqg/3EmroTA7
 FkbVuqRnNn8B4KEVkMInrs1WJ4cojMvN2cBdXvWPW689ssthcv3vtoCZ7y9BdhsGGZGJ8M6GeQm
 D1QxnJRLeeUxGBim5HQ62wpvv+1Wt4+m0owLK4KUSfb3xeU4nAonZAS5wZOOLVcn2hYSMCE1NYI
 S1/bRH+FzNviuZANjcPeEqeIQprdsm/hdLF5Ba50Xwd4xEgDNrxGjOGDLH1RxvJtj/FbkKO5Hb2
 DN/bQZQ39zPHs1E4kTO9om9xPma6HEx3ACQGVtzHfyzhWw4f6NWSyZEgIdcMhIiI9iNHPfYjKiw
 K7sojMt+GrJAOHvrnlGnRUvaZ4m05wrW/j5oEJ1sRToSZOn16TaMHDasD3IfSPo/vqrBcmcrGQ0
 ZiTpYJo/RI5E81yeV3tM5ZIi4EVUrFzXrD1cGKUk=
X-Authority-Analysis: v=2.4 cv=AIvfpCdw c=1 sm=1 tr=0 ts=69c5a55f b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x0eKOSpe3m1H3M0S9YoZ:22 a=NEAV23lmAAAA:8
 a=FP58Ms26AAAA:8 a=hMcFOJQAAAAA:20 a=4RBUngkUAAAA:8 a=TY_Qz_MZjThcwnRrVzkA:9
 a=QEXdDO2ut3YA:10 a=_sbA2Q-Kp09kWB8D3iXc:22 cc=ntf awl=host:12276
X-Proofpoint-ORIG-GUID: 8ZLhP303mgqhUO-Qr3_wxxYf-wFVPOV_
X-Proofpoint-GUID: 8ZLhP303mgqhUO-Qr3_wxxYf-wFVPOV_
Subject: [oss-security] TigerVNC 1.16.2 security release

I don't see a CVE id listed, but the fix appears to be pretty simple:

    shminfo->shmid = shmget(IPC_PRIVATE,
                            xim->bytes_per_line * xim->height,
-                          IPC_CREAT|0777);
+                          IPC_CREAT|0600);

https://github.com/TigerVNC/tigervnc/commit/0b5cab169d847789efa54459a87659d3fd484393

-------- Forwarded Message --------
Subject: [tigervnc-announce] TigerVNC 1.16.1
Date: Wed, 25 Mar 2026 09:59:26 +0100
From: Pierre Ossman <ossman@cendio.se>
Organization: Cendio AB
To: tigervnc-announce@googlegroups.com

The bug fix release TigerVNC 1.16.1 is now available. This release is primarily a security release to fix an issue in x0vncserver, where other users can observe and manipulate the screen contents. Users of x0vncserver are advised to update immediately.

The release also contains a fix for using the Plain security type with the new w0vncserver, as well as some translation updates.

Binaries are available from SourceForge:

https://sourceforge.net/projects/tigervnc/files/stable/1.16.1

Regards
The TigerVNC Developers



-------- Forwarded Message --------
Subject: [tigervnc-announce] TigerVNC 1.16.2
Date: Thu, 26 Mar 2026 21:49:34 +0100
From: Pierre Ossman <ossman@cendio.se>
Organization: Cendio AB
To: tigervnc-announce@googlegroups.com

This is a second attempt at a bug fix release for the security issue in x0vncserver. The TigerVNC 1.16.1 release unfortunately had all fixes except the security fix.

Apologies for the extra noise and confusion.

Binaries are available from SourceForge:

https://sourceforge.net/projects/tigervnc/files/stable/1.16.2

Regards
The TigerVNC Developers

-- 
You received this message because you are subscribed to the Google Groups "TigerVNC Announcements" group.
To unsubscribe from this group and stop receiving emails from it, send an email to tigervnc-announce+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/tigervnc-announce/dcedc354-d653-4354-b281-cfd9f58139be%40cendio.se.
