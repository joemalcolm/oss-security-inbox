Received: (qmail 7644 invoked by uid 550); 8 Apr 2026 23:24:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7626 invoked from network); 8 Apr 2026 23:24:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=nQOPIm3PrIsfZn0p
	flxGF79WspGcyuD/+IuoftwSfkg=; b=hPZ2LWeLm/mVuKPBt52GNjk7MUEZSujr
	hkAJ3uIYW2mxoUAxXJya0bJYnjLUs7RWpEwHz5WgachVEfwLw6Q750dsHeJi1Qz9
	UKaJoUV3Eq/MTR9IsX55A3qc1JlY7VsDgHr3Xn0AXVO6x8OC8bvMwpGu80jJQnDZ
	WdOrZc7hX/u6Oa38c5z8IDdT3eIr7Pc+N3+JEEbbDmZ6Rug/FpmX6EXFIgLyqK0U
	V7g0cy1QTMU37/oFyeZp+GRfGWMvopKlwTgN9KeT2KRgc1EVtzrs8zMtJ5n9ygS4
	Y+qcuszS9CJPAAQwVlZTcM7rzl867c7s1JOVRhb3FSFXdRosgQewJg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ob2w21L7QbWcwCUPWsk4w/PwymihGDg343mDlQdAGFNL0nEuiYCWRQGdeTelb7FesZRHTWaxvpodQwgVXn+LXTfB6ABG5YS8D89uv6R0XcisqvNH84XcSKbTkjeQxna+KPI99CmG7KJtfQN0QN8tAPgAivN4PCGeUAxc7tddLRExUAZvtJPCrWZxWMDm6kJzSGMgqL2l9XKErdczuFmxHCbWAdjZxqepz0SuMRCpr6AcnNCpaK58SdSAGivRGAxZUR1G2qdqVoDb75QqgjKW67sFNj9yZyAbhwrBXOajD7EQLaSo6twzULnPXmDlHLIduoLWvKYXy9V3hX6fbtrroA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQOPIm3PrIsfZn0pflxGF79WspGcyuD/+IuoftwSfkg=;
 b=s9yRpUMX4qfRVzsFlYvUu1LFgbVbHCGD25Itp6/I+EcJdQ3b5jPZESVLBo5L3SntDjdzvFCkAqWKnY8V5vtChaozgKtG3kuUsguTvt7TlPuEgwhk4UbapkznTabmYUI5fFqgQ9WYrMmssxH5DyTmC6hpuljq9AwvF2JL4Q99Gbv6az8xtsAgGcqdHt31ubnb7XTxSxlZ0OgAuJgCbDuM6xXfdviN3TEiFxHGFa26J6f4KuLh6pxjDoqhFAZD/BOVCphrPzfnT8632tVhqNkZ8joyG/yIyYbY3aOu1KnpPTTQqtWZvyn42L54u6mXWf8hB34RP+5muf9Re+DD/SiMoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nQOPIm3PrIsfZn0pflxGF79WspGcyuD/+IuoftwSfkg=;
 b=fwsIv/Ecf94W1+EoXPdjeD9r3mR6dOixDdM9IVUDpNJJfsizAU9fBsVeaX8p/bazkP1sDSD/0Bwr9R1QqAdXalQVFHfBBZ7MWmyBCaqeW7+rzWJhBUZiJ8Q8jSyIfTsDWv5ASSvA4KNA7MZkM4vntUZWiC90ue3/lRfBrU24BmQ=
Message-ID: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
Date: Wed, 8 Apr 2026 16:24:34 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH7P220CA0075.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32c::11) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DS4PPF18D5A7206:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c1f0d1f-f891-4065-2413-08de95c5ff6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|13003099007|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	LN3QQvYqhk/8NjZi6DwcSNR4DCCXsL1ED8UGJEe7jakWGifpvNhbTI7gXe79qLWAV794r6XKmYqbIQnQ7LJoNPiJsoSVTDOuOBhObTdE8NV4AgMMF8XF7GdIoe536Xjwr0k7wRXthacjeGBuMLDBEttXunqw1UWZdbknnlij0g7vf+CMT28MfWqpp8nu3piyZKVxf2vwWOWxI6Ya3Em4SRNGsGcjr5+Y5Uc8cpbz/SMXY6011uwFdnEyjAW9fOP32ZEzUJfRMSGroEsH+GBWuA6kDl0VPRH4knO9cUFduezwOouSD63HXKiPoMqRPbrPKjJTu4iY5s/3Vx4SEIeKPzPDp/4/5L6lRQ/SAlbCS6vf59nWuA7RUMI9H+hQtOE/GL5GHnzLJZmIhDqld3W1U2+2xw+VFskYOPxzkJqVNkAQoIh2d9ZQcdnk1wYFfJVIk99ACKQuGTDNKtW2ZQ9akwXN7hrgbggDhfWcpbt6Z7gnMwcl+HgJQdD24W0Wgybbdhi3oWoBek05kGl4G82Cj3z7rWWePPfT+M07gEcYgcMnRhQawMOLawp+WFUcnllizcgmEr7NCS2NYtUGanq0Hnj5+gwqou33uhnUnQrdIXTL8kpl7GvJ3o9rU0felk1Yq8X72sOYYH9Omn95T9hqoHxYvBmIg+vHLdho92gPFNOVujBumXrZNlPfO3IGS1lU
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YU44MU1MV2NvbHVwNWdxN1VicGU5ZG9md05yWDdCRGVVY1BYaFV4VVJxZ3Br?=
 =?utf-8?B?QXdXOHltM0pOYWJqVWV6QUtmY2F5RGJweHVvMlZxZ1YyM1FLNkpHUjRYZzhk?=
 =?utf-8?B?Zzk5S01rWXdmL29vS3NVSVRpRHVxNTlJVk4yNklqZzlmS1RBSHBrZWRXc1R2?=
 =?utf-8?B?am1FYXFOeFBwWFBuSjZ5U1RiRUVvZis1TGh0TVRaaS9zN1l6TjB4aUhwUTRr?=
 =?utf-8?B?NUhxZXF4Nkh6Skp5STlHUHZYckxwNm94VkxtUHQ4LzZnMHRrbGo3bVdwZlBS?=
 =?utf-8?B?WGZVaEVZcUtwTk1oNjExWGM5ZTJhdWxEUnJ6Uk5nOWlmTUxyNDFDTE4vYUFQ?=
 =?utf-8?B?WTZFbmt5a2NmWjdrRDRCRjhFYkE0WWRrd2VMWHNYSE0vTVZFR1FncCtZTEFr?=
 =?utf-8?B?TzZpYkZDSHNWRlFUby9aeFQ0VXd4bC9CdTdoM21jazN0UGIxTi8wMElwcklr?=
 =?utf-8?B?ZFpoWFhYTTVqRzJERTZ0UVh4RWF0ZHBTUkwyRW9wM0NTMTROeTF2VFFibWJz?=
 =?utf-8?B?TktxcGcvZGQrd0N3djZ2cWU1TnFlalN6QzVTYlp4RXl3UnI2T01tVEdCVzZW?=
 =?utf-8?B?RFR2b2JkM2VGd3liZ2dKd3RpcC9XdDBpbVlzb0RaL0xsNi85WENKemNDamlk?=
 =?utf-8?B?dmpwdEJVOEMrNytub1FLQUJFS1h4L1g1MURPWDA4Q2IzbXo1WkJkeUF1VXY2?=
 =?utf-8?B?eWYrQjY5eXVlYjhJSE4xRzdrV2RwOE5JOHdRUmtlQVorV1k5QWtQa0t1WnV5?=
 =?utf-8?B?b0ZxbnEvcEdRUlFGdGdWNmVSOVVoUGFrWURJYnovS05rcVQvaVoyY0N0bVJU?=
 =?utf-8?B?TVA2aVlBRi91SmJhdXlVanh0WFVUak9UZG1nc09lMDBOUFNJWEJIdVlFejFD?=
 =?utf-8?B?cHY0djZ0UnpxdEZiRzZSUFR3SHFxdTdDcnozSDNQMU5RbTRPOURoTGI3bXJk?=
 =?utf-8?B?alVoODlCWDRBTlp6QURibXd2c2N3SnVaUFEvUDBoczFkMlVOYkF0WGxrendT?=
 =?utf-8?B?TU0veGNrK29zSkh4RU90djNwNjJGL05kUThxMmpwSnd0ZHQ0NVF0dzZUcll5?=
 =?utf-8?B?bWRVdmdQNWV4aW5mcncxTkRSbUZPbGgwRmxtS0lZclRsbWF1WEE0ZVFsOVpN?=
 =?utf-8?B?dnhCbzZqQnRON3I4RFhxOHJiT0l3bzBHZkZzVDNLK25yRkNCRFFmVkdwQk9L?=
 =?utf-8?B?aGFiLzkwZlhwdXhUOHFlK0J4ZnBFUjdEelY0MTFlaWZMUUJGSFVUYzU3T0ti?=
 =?utf-8?B?eUZYN2ZVTWFwaFFweVVnZ0k3Yy9pWnN1L3hyL2dSTUxldzZRdXZGdlBRdWlK?=
 =?utf-8?B?RVVPeWxCcGE3Ri9rME9Qc2NjKzhSMm1GMkxuTCtBeERkOUFSc2pwLzN3UjRB?=
 =?utf-8?B?K1VtTGxqUVV6djVPb0FtcFVEVFRaYisrVEp4Z2xCVk1lajA0Ym9ZV21FdFhm?=
 =?utf-8?B?UXo0NmwzVS9UeTJaUkZjMUEzRkROeFRPcnNxQlRFWWZiYnJ6cU1rNS9sYXAr?=
 =?utf-8?B?dUE4YWExMmVxWVZvQjk1cHpxQ3RtYTNtR1JHd3lDVytzQzVwcSs4R3VyT2NW?=
 =?utf-8?B?ZGRrN3V6MjluQmJweEcwY3BIc0NhWHU0RDcwcmVMR0tVdkRERFdiWExRWURw?=
 =?utf-8?B?bGVyb2xubmZYbHd5bXJHYTZwc2NwaGdKSUNtQ1Z1aDhTTVprdzl4dnUzbk1D?=
 =?utf-8?B?NjFDRFRWNHdDNFRzTUlISDRVMTlzUGRNVEJqTUh4ZTRkL0NFdk9nMEFOSXRG?=
 =?utf-8?B?S3p0T3oxOTFnTUY1WVAyVXdGdzRFTmhvcDZucFlpeitpcHgzV2xhSkMxTmRm?=
 =?utf-8?B?TkZKaE9UUzB3UGR0QVJuUWdyNnJRT3JNcDRVTDF0d2lzd0ljcnlabEhWVzN1?=
 =?utf-8?B?eUlZeFpIdHF6V3V2RlpKNmpveWtzZElLb3NZVzNEVDl6RlIvN1l6SlRtejN6?=
 =?utf-8?B?dm8zWjdqUUVSM1FhOENJSmZMcDZ4SVFYZFhMUFRCa1JzQlNkNm1LbnZyMFFX?=
 =?utf-8?B?YkZRaE9jRXVDRzRMQ0RHUTlQNlJmT0JaQlhFcitVWnZLQVA1S08vSUFBM1d4?=
 =?utf-8?B?WDdENFNHL2lDcXF5QXRjKzIya2IxRDBmdHlzdDlMM0RFUGRrWW90ZWpFdTh2?=
 =?utf-8?B?M1JHMTdLdmNZZmZLKzdyeTg3YmplcSttZkRHN0djT25DczJzRCt3d3JvV254?=
 =?utf-8?B?aUJlbFEzRDNBNnBGczIwdEk2cVpJM1dJSjBrVUtBdngzR2ptSWt2dlZXUk9E?=
 =?utf-8?B?M3A1WmdLRnI1NmMzdmlnWnZ4TEdKYVJ0TmJoZmxPUkkvVVd1ZDh6RXI3aUg3?=
 =?utf-8?B?OXlGVDEyR3YwdEtRckp6WXdCekUvMW40Z2dPdmI5dlloSlprbWVZTjVrcFVP?=
 =?utf-8?Q?4pwgGy9Wej0eYgy8=3D?=
X-Exchange-RoutingPolicyChecked:
	O9EIpRe8At5VvRh5iMOib9FmefzYQo9VMIExy0beYRSai2hxzo0mzkjIL4G+NLf+PluGgCUCmt86l6mhZQoDiSoc0gvyJWt3m0wM86zEN0dk7+i7EbfctpphxDENgBv76tV+2yBU2AS+NBndoacWddelQhI0VFto2Qi9xp4hHuGLgDrT1Cwchj87q7/RAQ8tHIGVc4WMLUpB4NClF0Cl9MxKSJ+b05zZ5kbxSyG1TTfttXyluju+lEhBItr8tGVAp/05aFO/KQdCRvCgYP6vcCAwk8WazcHI2kD7UEcmO8PdsyNUYZ5V22C3aC6C6OMocV7sCHT4wPy2BHI/zbn3gA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	x5Bg3Y31OYwz0aEiYi6KZ5UGcrZC88iuiZlSAlDro8NzE4rnPB1hLUs3dJgJeMeYT7tJiC476t8MtxpPQlC6xyGdC3G+9lMVuNtiqk7pDG50eHmYU3Ab9eqhTqUuxfLUe/feUVtTZQGFspfbqB/+R2TajbvK00DXJabbt+UDuovlwEXqJK7Gd+2PzOlwXnCTjYCQPGiY2tXgHRq7xHTJZolAVHd8i5+mNy6G0D7GOxrIxVwyxgujOdbMPUOKd+qRjsSPBfwzs1Xd9RoivzKGWynLbMD85qbz1w1m9mD3BZhd3Rl5B71WtBpkALtSPnurmC9Cn2hRzSenizj0X9/WqJP4Eu5GoLkEuBRjwfEVjV5aR1bmr3L87Ab0sIAFrPc64wuEAxGXl3AD2w+WDCt6eAQ4nXxeiAy2aBe8ohiKpIuXAo4/AWTpgkV8rcJ5KKFuYmOboXwQu6owiIZ491BveSQFUrq60wvbUdInG+5LFeOR0m1/lHt7WR5EWVE2Ng2OOXL80N+cJ8I7M6KU5BwV0Ddfu/8gFU61L9YP+QOTnqpsAsf0U2ukAPJJF80QKLDzoWCRURdG91wJDDpqsBrwNG/L2iBu1X6Oy6ElW0fkZHA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c1f0d1f-f891-4065-2413-08de95c5ff6f
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 23:24:36.1946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UIG1/E81i2Z6J07V4QUNbgv+spEn8abMZqF2xJfz/n1GkHowK8r3y1hOP40HgyZIqs2xsJCMCe4Dj2jK0/9ZUTLjuz/qv2nCyQdU8Y5oOgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF18D5A7206
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-08_06,2026-04-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604080217
X-Authority-Analysis: v=2.4 cv=MtJiLWae c=1 sm=1 tr=0 ts=69d6e3b8 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=1XWaLZrsAAAA:8
 a=plf8rDjJAAAA:8 a=DAA9vKtDAAAA:8 a=NEAV23lmAAAA:8 a=A1X0JdhQAAAA:8
 a=zVjiu_gZAAAA:8 a=EeXjcRHmJink6lk8RIYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=JWTSs7K9Rhv-lrTctFka:22 a=7ZdgAII8e7kge3fOK94Q:22 a=DXoJjCrjhysRDS3qLJti:22
 cc=ntf awl=host:12292
X-Proofpoint-GUID: RuJKrqe9sSdnUw4mzTmtBx7OPFb8X6GC
X-Proofpoint-ORIG-GUID: RuJKrqe9sSdnUw4mzTmtBx7OPFb8X6GC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA4MDIxNyBTYWx0ZWRfX5TecWnMisj77
 GOzjIr3AWYe3IJI5rLUAtGFUC6WZ9vtKJAVIGkhduA2rsmcazp6hwCoqt9tJW/0GfZyjcvKORc2
 uF8AXcmL8JPUb64Es9D4nZhJ6bC94NxYLmny2DJaLdR207kdora4YtA4mzVZ7SFgOJ2N4fr/G+Q
 8sbGRtLNimj2kXNyVDrJApCxBtFeEX2yN3FeZYPDqaudig6MqA3W1gEYkSqbCnaSwbsV7JProHc
 9iiRGcLUwP0uyjy4GQd6tALMwakvqWDe6rfADms2aTHjU+3h6A2dOI6ZcFkgmRKXmY4LD4gMDdY
 kY/noBjZyoatl5xPt+rf9i92+4nx3LbUS36HoXVPYxRMlSxAgn/jzZf+wF8eutYVBQL15Qe51xs
 3/3TcQs6rb5A4Nt9czHQxTq3SzHjMhD6yhzeYT9GgHerQB0fffnRLux2Bx/wgZUWby8FPnWewTQ
 SPlGexLUiquOUtP3nRHUDWO1GadYLIwsmK6AMsb4=
Subject: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10 security
 fixes

https://groups.google.com/g/golang-announce/c/0uYbvbPZRWU announces:
> We have just released Go versions 1.26.2 and 1.25.9, minor point releases.
> 
> These releases include 10 security fixes following the security policy:
> 
>   * os: Root.Chmod can follow symlinks out of the root on Linux
> 
>     On Linux, if the target of Root.Chmod is replaced with a symlink while
>     the chmod operation is in progress, Chmod could operate on the target
>     of the symlink, even when the target lies outside the root.
> 
>     The Linux fchmodat syscall silently ignores the AT_SYMLINK_NOFOLLOW flag,
>     which Root.Chmod uses to avoid symlink traversal. Root.Chmod checks its
>     target before acting and returns an error if the target is a symlink
>     lying outside the root, so the impact is limited to cases where the
>     target is replaced with a symlink between the check and operation.
> 
>     On Linux, Root.Chmod now uses the fchmodat2 syscall when available, and
>     an workaround using /proc/self/fd otherwise.
> 
>     Thanks to Uuganbayar Lkhamsuren for reporting this issue.
> 
>     This is CVE-2026-32282 and Go issue https://go.dev/issue/78293.
> 
>   * html/template: JS template literal context incorrectly tracked
> 
>     Context was not properly tracked across template branches for JS template
>     literals, leading to possibly incorrect escaping of content when branches
>     were used.
> 
>     Additionally template actions within JS template literals did not properly
>     track the brace depth, leading to incorrect escaping being applied.
> 
>     These issues could cause actions within JS template literals to be
>     incorrectly or improperly escaped, leading to XSS vulnerabilities.
> 
>     This only affects templates that use template actions within JS template
>     literals.
> 
>     This is CVE-2026-32289 and Go issue https://go.dev/issue/78331.
> 
>   * crypto/x509: excluded DNS constraints not properly applied to wildcard
>     domains
> 
>     When verifying a certificate chain containing excluded DNS constraints,
>     these constraints are not correctly applied to wildcard DNS SANs which
>     use a different case than the constraint.
> 
>     For example, if a certificate contains the DNS name "*.example.com" and the
>     excluded DNS name "EXAMPLE.COM", the constraint will not be applied.
> 
>     This only affects validation of otherwise trusted certificate chains, issued
>     by a root CA in the VerifyOptions.Roots CertPool, or in the system
>     certificate pool.
> 
>     This issue only affects Go 1.26.
> 
>     Thank you to Riyas from Saintgits College of Engineering, k1rnt, @1seal
>     for reporting this issue.
> 
>     This is CVE-2026-33810 and Go issue https://go.dev/issue/78332.
> 
>   * cmd/compile: no-op interface conversion bypasses overlap checking
> 
>     Previously, the compiler failed to unwrap pointers contained within
>     a no-op interface conversion leading to an incorrect determination
>     of a non-overlapping move.
> 
>     To prevent unsafe move operations, the compiler will now unwrap all
>     such conversions before considering a move non-overlapping.
> 
>     Thank you to Jakub Ciolek - https://ciolek.dev/ for reporting this issue.
> 
>     This is CVE-2026-27144 and Go issue https://go.dev/issue/78371.
> 
>   * cmd/compile: possible memory corruption after bound check elimination
> 
>     Previously, slices and arrays accessed using induction variables
>     were sometimes incorrectly proved in-bound. If the induction variable
>     used for indexing were to overflow or underflow, it could allow access
>     to memory beyond the scope of the original slice or array.
> 
>     To prevent this behavior, the compiler ensures that any mutated induction
>     variable that overflows/underflows with respect to its loop condition
>     is not used for bound check elimination.
> 
>     Thank you to Jakub Ciolek - https://ciolek.dev/ for reporting this issue.
> 
>     This is CVE-2026-27143 and Go issue https://go.dev/issue/78333.
> 
>   * archive/tar: unbounded allocation when parsing old format GNU sparse map
> 
>     tar.Reader could allocate an unbounded amount of memory when reading
>     a maliciously-crafted archive containing a large number of sparse
>     regions encoded in the "old GNU sparse map" format.
> 
>     We now limit both the number of old GNU sparse map extension blocks,
>     and the total number of sparse file entries, regardless of encoding.
> 
>     Thanks to Colin Walters (wal...@verbum.org) who initially reported this
>     issue.
>     Thanks also to Uuganbayar Lkhamsuren (https://github.com/uug4na) and
>     Jakub Ciolek who additionally reported this issue.
> 
>     This is CVE-2026-32288 and Go issue https://go.dev/issue/78301.
> 
>   * crypto/tls: multiple key update handshake messages can cause connection to
>     deadlock
> 
>     If one side of the TLS connection sends multiple key update messages
>     post-handshake in a single record, the connection can deadlock, causing
>     uncontrolled consumption of resources. This can lead to a denial of service.
> 
>     This only affects TLS 1.3.
> 
>     Thank you to Jakub Ciolek - https://ciolek.dev/ for reporting this issue.
> 
>     This is CVE-2026-32283 and Go issue https://go.dev/issue/78334.
> 
>   * cmd/go: trust layer bypass when using cgo and SWIG
> 
>     A well-crafted SWIG source file could take advantage
>     of a file-naming convention used inside the trust
>     boundary of the cgo compiler. Doing so could result
>     in arbitrary code execution during build time.
> 
>     SWIG files are disallowed from using this convention.
> 
>     Thank you to Juho Forsén of Mattermost for reporting this issue.
> 
>     This is CVE-2026-27140 and Go issue https://go.dev/issue/78335.
> 
>   * crypto/x509: unexpected work during chain building
> 
>     During chain building, the amount of work that is done is not correctly
>     limited when a large number of intermediate certificates are passed in
>     VerifyOptions.Intermediates, which can lead to a denial of service.
>     This affects both direct users of crypto/x509 and users of crypto/tls.
> 
>     Thank you to Jakub Ciolek - https://ciolek.dev/ for reporting this issue.
> 
>     This is CVE-2026-32280 and Go issue https://go.dev/issue/78282.
> 
>   * crypto/x509: inefficient policy validation
> 
>     Validating certificate chains which use policies is unexpectedly
>     inefficient when certificates in the chain contain a very large number
>     of policy  mappings, possibly causing denial of service.
> 
>     This only affects validation of otherwise trusted certificate chains,
>     issued by a root CA in the VerifyOptions.Roots CertPool, or in the
>     system certificate pool.
> 
>     Thank you to Jakub Ciolek - https://ciolek.dev/ for reporting this issue.
> 
>     This is CVE-2026-32281 and Go issue https://go.dev/issue/78281.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.26.2
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.26.2 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> David and Junyang for the Go team


