Received: (qmail 13798 invoked by uid 550); 15 May 2026 20:22:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13759 invoked from network); 15 May 2026 20:22:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=VlZP9xAlURn1TMsN
	C206J+qrczD5gXnf89RiOkMxkxU=; b=JvHdbefsjL5MrbTJ0St3BZPRWNWI0a09
	URrevOmvGW+EcQHvj8R9XHltOZr3DKjK8lc22SaKVCSOPeiY4bCZEn6PqZ0aXwz2
	3LKnfTnjBWWMp+Co9yrQJQ7XxvXcd41Lxaro3yz+fbtdMXGoq8Q4i+rL3LhITKoC
	Zp9faeEz3KtEJkJkK6FHdFRW4IvQVhGGTH5qKPJjImmM70X6N6UYBwDHZM+4Sjcl
	TFYrJSwNbfsAR1X0aLqtukcvM/pxkPRMc3IKiHDySZs5/rbkuRYiVA4yD9cZ6WkR
	dzbC5noL2oXYWFexgQUJMNABDcQFmuZyiV4ryQCt9KjrhZ0Int5Zkw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gPP+EhbhiMTtQokLcat6AZdW0g1Jt5xXgO0S6gWFr76ac3palYwsxm/V/JMCZfDC4aWXfkeXpO/y08faJmgRSfIKBqQfBeBQqnboTbwMrFEttGVQdUistSfP16bjIkjU/IRRuVY/tL3TaKmrL9M4vim2BsmVkrguzk6f7WRpfq41opC8nOmHOIFYERqM+1aLC2wohJ+jbQfcOYbjLylZ0OCSDeXoFjR63YlNuF0gNntcvPeMb2PsBJGTDj1DLqiVWnbBcY4s7K5mVpCcwW0AqdYutkeINPI0oKv5dMYvr8IPNUMuLxtkzCfucs88xYOqLIzj7YTCoyRC5SVWja6XZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VlZP9xAlURn1TMsNC206J+qrczD5gXnf89RiOkMxkxU=;
 b=SKrbySZwQKrqPMjM1dinqQI1ug8qCwxzMqXW/zqUZuQj0tiJLCkkrnR1DGqHGn93Te2zc77UC3H1TxOCQ4zuhH1firfFbTSkYGfTYA7isNH5G8LP3PDkamJu5UybKfI8b79mee04LkBwyBLv1hEbviuXeQD7qSlWn7Wi+kstqvp9DwKTxs8p2Cb4kynJ8cxLRYwTN8XSAnMx4OqhNsMIr43Wi/fpQIRiPygtTA8UZDgQ8nppNPRy6nPgmrMdu7weTLML4rc0JJRiFTdWamhtZGpuw5GmcCpI2gZwp3HrytxN/8+a/oy5mnsgqBeaj5BUe0+viOJPfExobyTVeO4UFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VlZP9xAlURn1TMsNC206J+qrczD5gXnf89RiOkMxkxU=;
 b=v38l+mq11ER/geaPCxs6VAC/oxyfOks/j3VDsVoqlGuLDKpR4VpOd7HVbRKXW8jae6lBarVlk4vcT6XsXYAwGuRefVfbKDQmbe+Qm21Sm2u8Q5965mkNBJbVjPkI6pWeV4aYcXWC4vtvfLe0zuPW4eb0eXUHTeSzWq1pCyUsBFw=
Message-ID: <b6a2520c-fd09-40e8-a66c-43aca1edc5b8@oracle.com>
Date: Fri, 15 May 2026 13:22:00 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH5PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:610:1f4::7) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA2PR10MB4491:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a7e733c-3e5e-43b1-a3fc-08deb2bf9f9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|13003099007|3023799003|56012099003|18002099003|368654005;
X-Microsoft-Antispam-Message-Info:
	d6pwKM4k8u05PvNLxtiMS3rwNXtb9dS9HHGJdMciPdWYjgqRBZ4WKK9USjgcgse6f6c6t/GOijpZczO2q7KuhgKbxrTV7TSO2SeH4xfEjCDn0c0IA6rrmmSffr7klE4nMhl+760od8sG61yQ1ER5W9ALiftwWa0X8XJCnjHmYv39zsGgBKHExL4OtVYZWzDe3ftP5A5gUDSvxbry2xrk8vH4lqaYCSMRZcjp8PpsrD/pdJySQrNgGSbF7+bIHrv19omtGBbj98Eenp2YxcMQChoWfe8gzXJi7nqjf0Hlp0/BgQaibBhtXdmjkwC7E+Ayf5PawsoQhbM2HvdOFg40ZYO5quYxqROIC/qqFAbInw6muiY79eoZz7l8oaKQGaisZko0kULF7YgY7bnvUSbkdA/25zr554e8efyAsBAGtMJMpcX8lIVXS1uec5HecZCkeOnAq25AZkSl2KAqYSqqz9CauaCDcL2qlQ4jw84Dh9+U0eDPscdmIYH7585TeODOPyEtR2cFf0Oj1+3Y1yMnH5K6jRqvGp5NNOeGQpzBwt1k+SooYCaLB4a4QUNjlCnRZcI6j0cKWsxKJWx33SPm9in+O1thdgIn0gwK1miynftqGmxvWjJ2Ns2hpiJAY8BL2uQ0zUrZcfeM4breM2Jfhpxw0tOYF/O2/lUMWhOuVg3gsiAFyQP+QFu2NyloariN
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(3023799003)(56012099003)(18002099003)(368654005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NFcwRDBENDJvaGlqTy9YRkZUOU0wSStsK3NYNnRmQWFWUGFSUGxoSFg2ZVhm?=
 =?utf-8?B?V3kzMHJSM3ZqZ3BnWGY5MHpxYmhTRjZIajZEcmhISDlXOHA4alJNSG9KcnFn?=
 =?utf-8?B?N3c5ODMxRTcwKzF4OEhwT3NtVThmc3pRL1VMNCt3eGRhWkJ0L1BHdXFzMERT?=
 =?utf-8?B?V1dGbWNNTjl0a2VWdTMzMXpCd1krV2hQWUt0dmROTkkxaENGNGF3THR1R0Vw?=
 =?utf-8?B?RWxQeUZnbjJQMDN5QVJCVFVLWnZqemFERmY4SExwajRjclpwUHZBRnNvckZ6?=
 =?utf-8?B?V2twdXpOYVYyV0U0Zkh5U3d1Nlhsa1VKRzl4SGQ1MEpGem93YURTbVF3NVA0?=
 =?utf-8?B?Sm52SkovMkZ1Z1FDVTVKVjJpMWsrYjRYOTQ0bWVCTGxmNXR4eFJST01jTWUz?=
 =?utf-8?B?dXF1YjFkK1VvN2dIRWZRNzhNWWZPTTJ1MVFEQUl4aTVqUjduMUhiSTljamUx?=
 =?utf-8?B?UFVoc2Z3YUdsRFVsQUswbldwKzhNczRJTzF3b1FIK2pwelJjN2QwcmVrUVU5?=
 =?utf-8?B?YUJpcm1aTm1VUmYyMkdQKzd0MkFKdXJZREwwemRIelNid1pHU1o5MUl1QUJw?=
 =?utf-8?B?K2dUK3YrYlkxKy9lMnAyajRRZmlueWg0TG5pQ0phckhhNG1MRW9rcnNidG1F?=
 =?utf-8?B?dFZGeElMVU5wRmJjTXNCRFhqaElVVUVQQXhxZi95RHBEcnlHaVVwUmlQczZE?=
 =?utf-8?B?NWMybmlkRExTZE9TR2JKSFArQUVZUzNHc285KzZuMTB3ajEwOFdtQUUwRzhS?=
 =?utf-8?B?eVVJejdEenVaMGFadGNmdUV3cE1XODJUcEVKQksrUndncExLektHOW9US0hQ?=
 =?utf-8?B?V1Irc2FKaFlMU0NhVjB2NGdJZHFWTHJNYzZiKyswWkJZblZoSmNER3dtRGZZ?=
 =?utf-8?B?RUFKT3E4bTQwYlhja3hFMmk5a0V6UFNQbFkzOEc5VEcyaXRjZjlMUWVubEww?=
 =?utf-8?B?U3lGblVTSU1OQjdoSlp0dWlwQlAxZzcvS092NHdsUUVFNVVyanJWZnVYcE9v?=
 =?utf-8?B?cU85WFpIK0R2NFA4SDlZRkp4Tjlkby90QzRzazdwU1ZnbTZ2d2I4SytYZWtn?=
 =?utf-8?B?VE95ZHBUcVkrSmJ4QStQVE5nQ1pZcWFmckUxUXMvcXQ1cERmOTNjUGQ3TlZj?=
 =?utf-8?B?a1Axd0RUa3dqK1FVdEZYUDZmRWpIUkQyWFF6bHZBUU1uZml5T2JVSk8zRmJy?=
 =?utf-8?B?RDBZVGo0aEM5K0NqYlBnTlJyRXBDYnpJK0Nxb1V4MjBVYXlCeGJSd2h2NVdE?=
 =?utf-8?B?a25GYWZTZC94ZVNwb1R5QTZ1UTlvUWFxbUdrSGtmSmVpKy9RK0UzRFJkZUVQ?=
 =?utf-8?B?Z0FzWXF6S3ZMZHRWeVNpamRLczFQdndzTzBGdlhkYVREZEtCOFc5VHY3K2F1?=
 =?utf-8?B?WlE2angyc2pNZkVtd0V6V3dKLzBCNHZpb0hxL1VTaThKakVVaWxnYitGZUcz?=
 =?utf-8?B?OHpKSEFGc1F2RDYvUEFEaUVmU1NzZDJhRUNHTGJsemJkZ1U5eDY4b1M4Q0Uv?=
 =?utf-8?B?NmwvRUQvdUdWWEw0dXJQVEJWRm56aU5Jbzdvcnp3TlEzdWlhcUdhK3ZRb3RI?=
 =?utf-8?B?dWF0b3JRQUhxcXF5ZnpXLzJMZ1pNRVpLWDdJdy9ERVozNnBreUtGOTEzemdU?=
 =?utf-8?B?SkdDdm1NdFdQSVdFQ2QyQVJoRkNjcHlJOFRlSUowemtwTkp1b2JPaDkreitx?=
 =?utf-8?B?dGUvUEpXV3RReW53NGdTQlFQNzZZNWV5NXFqTHI2U2lQTFlIeHhYUm4vZHRZ?=
 =?utf-8?B?NzNCOGlDUzRjbHd0dDBsY0pkM3NhWUpQTzQyZ2tRRDBVSTR3UjA0UzJtcW50?=
 =?utf-8?B?ZFhjMlZXUG9vRUdrL2RzeldSYWdNS0FJbHlXNGpEZXliem02MFBlbHdRU3pO?=
 =?utf-8?B?cXR3aVMrNWF6RE9iSmZFa3c3TmVFWEd6ZUt2RTNSMkgrTExZejQrZ0p5VitZ?=
 =?utf-8?B?R3JvWDBQazRPWGNrNloyNWd3UHdjWkN5TVBaUkdIN2F6SzFwYmEyM1hFdTJJ?=
 =?utf-8?B?QW9TYlYwZ01MNVdjeGEvVnZNMGhEVm1WeTZxZFlIRlp5ZmVaMHBzSkErRzM3?=
 =?utf-8?B?cVZuaHZWdjZOUGZnNXR3QVRUMVFBcmE2UkNNblMwckNiVXlrV0I1Z3MxcjNX?=
 =?utf-8?B?YmRCL3l2aXZyWHFXSVdxaU51TmxXcVE3Njk5YmFYTUtVaVltVFhLQ1R0Wis2?=
 =?utf-8?B?WlZrcGRqWllGOTRuSGVpREp5SjM1NkM4YlgraE5pQ2VrblQ0NnFPMlVFTUhT?=
 =?utf-8?B?aTR4V0M5UDFjcWoyRUF2S29ReDRRTDFmNktleHk3VUEzc2ZBZGc1dXU5a3Rl?=
 =?utf-8?B?S0V6UjVXU0pHUnk0WUo3NnpjL1N6Vkk3M1pydm1EVHV2L2IxQWFSNFFIY00v?=
 =?utf-8?Q?oLq2r+qS9/Y2W4Vk=3D?=
X-Exchange-RoutingPolicyChecked:
	XkG6oqO2p/8Aa4F1A4t/0nFzuFPpivRX7F2VUJ98rrUVYR3L+WR4F4l3Q3JEOoBo8kdq1Fm+Y1KgYOMaFQmkLPRpmfXx4BykJ0PBDjwtvZwjR/CEZ3wQqpJgY7c0aYAgtDrx52gWEViHX9QO8iORSFB74ogLDlzfoXZXwpLcWdPEVdpKdCJX765Bt5Y7PDn7OEWLgXpYFghYRPLAWYmdboKEfCRA1gWsjANwARcbtpSl+Ggk7zPfGox1kLe75veOaUiVqBgsPIxnHYYC4qWHmh15pMigVpsw38bLCvuzfL1oHWGOq/JSJNcsVYfMddwR+ERWDslFxveMTuJHpoYTGg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	dvyXCjyL2WVRQRT7kWhLOl2FqzUwf6HH9BYMrUQ7T34JK1vz88qZH3JxK/UuqesMSs8S0jHsVm2xY2tRNYX+sjElj8ceSmUpO+Rty3mftcYI3+mP2PZPmaw5L/XiEPkaKWgU40SbL7+dXIeeEU6mDY/FJRSQ1J/8/3o3+b5kbR2N0CiGxnxxAjIMN8qMnur+DFAFn3+Z+AaI70GLTERMifXB7efBMaaa29SaRRSFhSXUfq/qMOugl+ivnxSZFZC6nGyATdI9NdjJP/Mwp//Fc9zu0Z6FvO7M/Mb/cMVg+SiwtkH2a8TuYLRLOelr2dL6pVqm2BEiAkeurbcEH98uWPOWteUB3CHYGuJMIJOxJUUSq8qsikcaCzfKiF/USQJRhJlS3Gdx+Y5kqH9IB2xWs1y68Txu5v42DoIwuhghBcZ5VgP4uzYhqsHU6C9xORzhioqSAZ7x+ppPYZ1A93M1t92hNO+HJNlgz4TN+3Ayz/QAc1xDo6/qzQlQtfD/ncVgkaKgu8J49cH7fOkS0Xhk5iUky35xVZLWI6xq2DB3JKuIxfUCxIm+eGMzOrVMOEoSS6CJvCuKKdkduFSX73ZgMA/5hIxDOEZNm1sKcGQC0yg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a7e733c-3e5e-43b1-a3fc-08deb2bf9f9e
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 20:22:02.2666
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h4Z8FYgBJHe8nhwm4GPWwAWCb8cuCY0tk2ecY45WdvugahuZmqPmhOHJ1Adi8NQKLPq4O+a826HQ3V20ZvoaOEYG1h5YQPgUWBhNl02S4ds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4491
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_05,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 mlxlogscore=999 adultscore=0 phishscore=0 spamscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605150206
X-Proofpoint-GUID: cZIvY3RrcFg5nXsrsXCzaTQhJdIOJPGG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDIwNiBTYWx0ZWRfXy94uK1wvBbFo
 wYVITkGMSGadCI79cpxRfTpSq01D6H40hx/3+KAWMrpDvZ7PC2IFdsOIHlffisrERGhAeIIQwKJ
 rSqglpsgNYe0gXUn8RAJc61mxdaE1wAze6vuSKQVxSbt4G8BtwgvBvw2r4lIFjupfkKSmCORu4X
 a+vAnk3OVW8bCboqd+ISJ6KxPHffNiHZC64U8XeKNn6r6u/Eu3B4Vy/sk687Ewew/5H4cDXLdcp
 AZGMmUjR2JVPOmah4de6aqaGbKUypP/ayBlUJrzPupGYG8Daj1ijuFi1ooz/juaA3sY2WlnqRHA
 v8spErGGHQvucnpqgydMt8zAK+GTn4Wu+XqmZXNLG2xmg0CZCyLXRu3XmO6KUhaWd8b7iT5/BgE
 ZEpBjIBGKAqYeHPXkaCua+F5SIN5703OW3rNyg26MYomVQgZqlYqKhB3D62Q1psD0uJ9Wpyz40Q
 HgJvnckNUPR/2ZWpHcEs3wpN5ejCC1cLAYLVZMp8=
X-Proofpoint-ORIG-GUID: cZIvY3RrcFg5nXsrsXCzaTQhJdIOJPGG
X-Authority-Analysis: v=2.4 cv=fP0JG5ae c=1 sm=1 tr=0 ts=6a07806e b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=epTmVMiNAAAA:8
 a=PYnjg3YJAAAA:8 a=HtMMSBS6AAAA:8 a=J88SJ3KGjv_7XnKqdOkA:9
 a=ZhQi2LjJq7NqqDr4:21 a=QEXdDO2ut3YA:10 a=3ROuUYzoJtXnwiIsu5Kl:22
 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:13839
Subject: [oss-security] PostgreSQL 18.4, 17.10, 16.14, 15.18, and 14.23
 Released with security fixes

https://www.postgresql.org/message-id/177876604042.861.12327647497486409223%40wrigleys.postgresql.org
announces:
> The PostgreSQL Global Development Group has released an update to all
> supported versions of PostgreSQL, including 18.4, 17.10, 16.14, 15.18, and 14.23.
> This release fixes 11 security vulnerabilities and over 60 bugs reported
> over the last several months.
> 
> 
> For the full list of changes, please review the [release
> notes](https://www.postgresql.org/docs/release/).
> 
> 
> PostgreSQL 14 EOL Notice
> ------------------------
> 
> 
> PostgreSQL 14 will stop receiving fixes on November 12, 2026. If you are
> running PostgreSQL 14 in a production environment, we suggest that you make
> plans to upgrade to a newer, supported version of PostgreSQL. Please see our
> [versioning policy](https://www.postgresql.org/support/versioning/) for more
> information.
> 
> 
> Security Issues
> ---------------
> 
> 
> ### [CVE-2026-6472](https://www.postgresql.org/support/security/CVE-2026-6472/): PostgreSQL `CREATE TYPE` does not check `multirange` schema `CREATE` privilege
> 
> 
> CVSS v3.1 Base Score: [5.4](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:N)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Missing authorization in PostgreSQL `CREATE TYPE` allows an object creator to
> hijack other queries that use `search_path` to find user-defined types,
> including extension-defined types. That is to say, the victim will execute
> arbitrary SQL functions of the attacker's choice.  Versions before PostgreSQL
> 18.4, 17.10, 16.14, 15.18, and 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Jelte Fennema-Nio for reporting this problem.
> 
> 
> ### [CVE-2026-6473](https://www.postgresql.org/support/security/CVE-2026-6473/): PostgreSQL server undersizes allocations, via integer wraparound
> 
> 
> CVSS v3.1 Base Score: [8.8](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Integer wraparound in multiple PostgreSQL server features allows an application
> input provider to cause the server to undersize an allocation and write
> out-of-bounds. This results in a segmentation fault. Versions before PostgreSQL
> 18.4, 17.10, 16.14, 15.18, and 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Anemone, A1ex, Xint Code, Jihe Wang, Jingzhou Fu,
> Pavel Kohout, Petr Simecek, www.aisle.com, Bruce Dang of Calif.io, and
> Sven Klemm for reporting this problem.
> 
> 
> ### [CVE-2026-6474](https://www.postgresql.org/support/security/CVE-2026-6474/): PostgreSQL `timeofday()` can disclose portions of server memory
> 
> 
> CVSS v3.1 Base Score: [4.3](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Externally-controlled format string in PostgreSQL `timeofday()` function allows
> an attacker to retrieve portions of server memory, via crafted timezone zones. 
> Versions before PostgreSQL 18.4, 17.10, 16.14, 15.18, and 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Xint Code for reporting this problem.
> 
> 
> ### [CVE-2026-6475](https://www.postgresql.org/support/security/CVE-2026-6475/): PostgreSQL `pg_basebackup` and `pg_rewind` can overwrite unrelated files of origin superuser choice
> 
> 
> CVSS v3.1 Base Score: [8.8](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Symlink following in PostgreSQL `pg_basebackup` plain format and in `pg_rewind`
> allows an origin superuser to overwrite local files, e.g.
> `/var/lib/postgres/.bashrc`, that hijack the operating system account. It will
> remain the case that starting the server after these commands implicitly trusts
> the origin superuser, due to features like shared_preload_libraries. Hence, the
> attack has practical implications only if one takes relevant action between
> these commands and server start, like moving the files to a different VM or
> snapshotting the VM. Versions before PostgreSQL 18.4, 17.10, 16.14, 15.18, and
> 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Valery Gubanov, XlabAI Team of Tencent Xuanwu Lab,
> Atuin Automated Vulnerability Discovery Engine,
> Zhanpeng Liu (pkugenuine(at)gmail(dot)com),
> Guannan Wang (wgnbuaa(at)gmail(dot)com), and
> Guancheng Li (lgcpku(at)gmail(dot)com) for reporting this problem.
> 
> 
> ### [CVE-2026-6476](https://www.postgresql.org/support/security/CVE-2026-6476/): PostgreSQL `pg_createsubscriber` allows SQL injection via subscription name
> 
> 
> CVSS v3.1 Base Score: [7.2](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H)
> 
> 
> Supported, Vulnerable Versions: 17 - 18.
> 
> 
> SQL injection in PostgreSQL `pg_createsubscriber` allows an attacker with
> `pg_create_subscription` rights to execute arbitrary SQL as a superuser. The
> attack takes effect when `pg_createsubscriber` next runs. Within major versions
> 17 and 18, minor versions before PostgreSQL 18.4 and 17.10 are affected.
> Versions before PostgreSQL 17 are unaffected.
> 
> 
> The PostgreSQL project thanks Yu Kunpeng for reporting this problem.
> 
> 
> ### [CVE-2026-6477](https://www.postgresql.org/support/security/CVE-2026-6477/): PostgreSQL `libpq` lo_* functions let server superuser overwrite client stack memory
> 
> 
> CVSS v3.1 Base Score: [8.8](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Use of inherently dangerous function `PQfn(..., result_is_int=0, ...)` in
> PostgreSQL libpq `lo_export()`, `lo_read()`, `lo_lseek64()`, and `lo_tell64()`
> functions allows the server superuser to overwrite a client stack buffer with an
> arbitrarily-large response. Like `gets()`, `PQfn(..., result_is_int=0, ...)`
> stores arbitrary-length, server-determined data into a buffer of unspecified
> size. Because both the `\lo_export` command in `psql` and `pg_dump` call
> `lo_read()`, the server superuser can overwrite pg_dump or psql stack memory.
> Versions before PostgreSQL 18.4, 17.10, 16.14, 15.18, and 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Yu Kunpeng and Martin Heistermann for reporting
> this problem.
> 
> 
> ### [CVE-2026-6478](https://www.postgresql.org/support/security/CVE-2026-6478/): PostgreSQL discloses MD5-hashed passwords via covert timing channel
> 
> 
> CVSS v3.1 Base Score: [6.5](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Covert timing channel in comparison of MD5-hashed password in PostgreSQL
> authentication allows an attacker to recover user credentials sufficient to
> authenticate. This does not affect scram-sha-256 passwords, the default in all
> supported releases.  However, current databases may have MD5-hashed passwords
> originating in upgrades from PostgreSQL 13 or earlier. Versions before
> PostgreSQL 18.4, 17.10, 16.14, 15.18, and 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Joe Conway for reporting this problem.
> 
> 
> ### [CVE-2026-6479](https://www.postgresql.org/support/security/CVE-2026-6479/): PostgreSQL SSL/GSS init causes denial of service, via uncontrolled recursion
> 
> 
> CVSS v3.1 Base Score: [7.5](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Uncontrolled recursion in PostgreSQL SSL and GSS negotiation allows an attacker
> able to connect to a PostgreSQL AF_UNIX socket to achieve sustained denial of
> service. If SSL and GSS are both disabled, an attacker can do the same via
> access to a PostgreSQL TCP socket.  Versions before PostgreSQL 18.4, 17.10,
> 16.14, 15.18, and 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Calif.io in collaboration with Claude and
> Anthropic Research for reporting this problem.
> 
> 
> ### [CVE-2026-6575](https://www.postgresql.org/support/security/CVE-2026-6575/): PostgreSQL `pg_restore_attribute_stats` accepts values that cause query planning to read past end of stats array
> 
> 
> CVSS v3.1 Base Score: [4.3](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N)
> 
> 
> Supported, Vulnerable Versions: 18.
> 
> 
> Buffer over-read in PostgreSQL function `pg_restore_attribute_stats()` accepts
> array values of unmatched length, which causes query planning to read past end
> of one array. This allows a table maintainer to infer memory values past that
> array end. Within major version 18, minor versions before PostgreSQL 18.4 are
> affected. Versions before PostgreSQL 18 are unaffected.
> 
> 
> The PostgreSQL project thanks Jeroen Gui for reporting this problem.
> 
> 
> ### [CVE-2026-6637](https://www.postgresql.org/support/security/CVE-2026-6637/): PostgreSQL `refint` allows stack buffer overflow and SQL injection
> 
> 
> CVSS v3.1 Base Score: [8.8](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H)
> 
> 
> Supported, Vulnerable Versions: 14 - 18.
> 
> 
> Stack buffer overflow in PostgreSQL module `refint` allows an unprivileged
> database user to execute arbitrary code as the operating system user running the
> database. A distinct attack is possible if the application declares a
> user-controlled column as a `refint` cascade primary key and facilitates
> user-controlled updates to that column. In that case, a SQL injection allows a
> primary key update value provider to execute arbitrary SQL as the database user
> performing the primary key update. Versions before PostgreSQL 18.4, 17.10,
> 16.14, 15.18, and 14.23 are affected.
> 
> 
> The PostgreSQL project thanks Nikolay Samokhvalov for reporting this problem.
> 
> 
> ### [CVE-2026-6638](https://www.postgresql.org/support/security/CVE-2026-6638/): PostgreSQL `REFRESH PUBLICATION` allows SQL injection via table name
> 
> 
> CVSS v3.1 Base Score: [3.7](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?version=3.1&vector=AV:N/AC:H/PR:L/UI:R/S:U/C:L/I:L/A:N)
> 
> 
> Supported, Vulnerable Versions: 16 - 18.
> 
> 
> SQL injection in PostgreSQL logical replication
> `ALTER SUBSCRIPTION ... REFRESH PUBLICATION` allows a subscriber table creator
> to execute arbitrary SQL with the subscription's publication-side credentials.
> The attack takes effect at the next `REFRESH PUBLICATION`. Within major versions
> 16, 17, and 18, minor versions before PostgreSQL 18.4, 17.10, and 16.14 are
> affected. Versions before PostgreSQL 16 are unaffected.
> 
> 
> The PostgreSQL project thanks Pavel Kohout, Aisle Research for reporting this
> problem.
> 
> 
> Bug Fixes and Improvements
> --------------------------
> 
> 
> This update fixes over 60 bugs that were reported in the last several
> months. The issues listed below affect PostgreSQL 18. Some of these issues may
> also affect other supported versions of PostgreSQL.
> 
> 
> * Fix queries that could return incorrect results when using a nondeterministic
> collation over a unique index.
> * Fix loss of deferrability of foreign-key triggers. Previously, a foreign key
> defined as `DEFERRABLE INITIALLY DEFERRED` would behave as `NOT DEFERRABLE`
> after being set to `NOT ENFORCED` status and then back to `ENFORCED`. If you
> have a foreign key with this problem, after installing this update you can fix
> it by setting it to `NOT ENFORCED` and then back to `ENFORCED`.
> * Improve the planner's ability to apply partition pruning to more cases.
> * Fix self-join removal to handle join clauses that are only boolean columns,
> for example, `ON t1.boolcol`.
> * Several fixes around virtual generated columns, including ensuring
> `INSERT ... ON CONFLICT` works when `EXCLUDED` references a virtual
> generated column.
> * Report a serialization failure when `MERGE` encounters a concurrently-updated
> tuple in "repeatable read" or "serializable"
> [isolation modes](https://www.postgresql.org/docs/current/transaction-iso.html).
> * Fix `CREATE TABLE ... LIKE ... INCLUDING STATISTICS` for cases where the
> source table had one or more dropped columns.
> * Fix `WITHOUT OVERLAPS` to allow domains.
> * Disallow making a composite type be a member of itself via a `multirange`.
> * Fix sometimes-incorrect results when `array_agg(anyarray)` executes in
> parallel.
> * Prevent bloating during restore of an incremental backup.
> * Prevent stuck logical replication slot synchronization worker processes from
> blocking promotion of a standby server.
> * Make the `pg_aios` system view `pid` column show `NULL` instead of `0` when an
> entry has no owning process.
> * Fix cases where `pg_stat_replication` shows `NULL` lag even while replication
> is active.
> * Correctly display JOIN alias variables that are used in `GROUP BY`.
> * If the startup process fails, properly shut down other child processes before
> exiting the postmaster.
> * Fix race condition that could cause a standby server following WAL from a
> primary of an older minor version to get into a crash-and-restart loop.
> * Prevent indefinite wait in shutdown of a walsender process when logical
> replication is actively publishing data.
> * Ensure that free space map changes are persisted during recovery. This could
> have performance ramifications on a standby server after promotion.
> * Fix assorted bugs in backup decompression and tar-parsing code used in
> `pg_basebackup` and `pg_verifybackup`.
> * Ensure `pg_dumpall` doesn't skip role grants with dangling grantor OIDs,
> restoring the behavior before PostgreSQL 16. Emits a warning about missing
> grantor if the source server is PostgreSQL 16 or later.
> * Fix `pg_upgrade` to use the correct protocol version when connecting to older
> source servers.
> * Fix output in `pg_overexplain` when using the `RANGE_TABLE` option.
> * Fix `postgres_fdw` crash due to premature cleanup of a failed connection.
> 
> 
> This release also updates time zone data files to tzdata release 2026b, in which
> British Columbia (America/Vancouver) will be on year-round UTC-07
> (effectively, permanent DST) beginning in November 2026. This release assumes
> that their TZ abbreviation will be MST from that time forward (though this
> could change). There is also a historical correction for Moldova, which has used
> EU DST transition times since 2022.
> 
> 
> Updating
> --------
> 
> 
> All PostgreSQL update releases are cumulative. As with other minor releases,
> users are not required to dump and reload their database or use `pg_upgrade`
> in order to apply this update release; you may simply stop PostgreSQL and
> update its binaries.
> 
> 
> Users who have skipped one or more update releases may need to run additional
> post-update steps; please see the release notes from earlier versions for
> details.
> 
> 
> For more details, please see the [release notes](https://www.postgresql.org/docs/release/).
> 
> 
> Links
> -----
> 
> 
> * [Download](https://www.postgresql.org/download/)
> * [Release Notes](https://www.postgresql.org/docs/release/)
> * [Security](https://www.postgresql.org/support/security/)
> * [Versioning Policy](https://www.postgresql.org/support/versioning/)
> * [Submit a Bug](https://www.postgresql.org/account/submitbug/)
> * [Donate](https://www.postgresql.org/about/donate/)
> 
> 
> If you have corrections or suggestions for this release announcement, please send them to the _pgsql-www(at)lists(dot)postgresql(dot)org_ public [mailing list](https://www.postgresql.org/list/).

