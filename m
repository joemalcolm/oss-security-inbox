Received: (qmail 1253 invoked by uid 550); 24 May 2026 23:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1232 invoked from network); 24 May 2026 23:57:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=cNwzOkO2IgOE/Vog
	yRB0fMF58FJq1+MHWbW03Ux6HNY=; b=HH478aRLxXQjmu9dKeqL+A6JJq57WXlc
	Y/obRpGYnzd3gsCYqvPUikqwyLMFjQMX1NzbnxK7IbDeFe2jqKAU6fV+pLrcO2CR
	oYZpUtsq2tpy8plJ0E49nSZB2BM3iuQXgNEeltRRpOlMptK5FrmW5ydf8aCLnfC3
	IsPj98zxBi2LEoIQY8zpYyzfAjH4LDY3TAadPJcEXhfgDJ6dnthRae2OvlB2ZL7x
	ecpCEDnthO8u7L5Gk33MEaQzJlKiECGZsBxiTphf/x7C+gosZAvZrvzpXpB30D2L
	eSlGunV1vr3YPbmj/U64uCLHB4lOqNorY44susQw4IqEQgRBfVcESQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gxr+6Xe/FFSLallOgpDlKqUMtuECHR+SuNNIWmX8/cgL83QRoJtxH6idTQEvQj0NraAhzewDq408bJe3ieIbzUIVdftGP7xvsW3dvqwM9KFOj9C2Cd3ueUH9o9RO21I0hQanwZGc78STEqoD0/DiYSTSpEf+3ltBPnzIsud0MXzvZ2M280RMtgybxrOKz96tPnCtFECqqGOua6gNBME30zYWZBwFAPtqLbZDBCHuRdNM/JG8nX3h0cSZr1KrryQ7myrXFzU8XQOG+ASuoq30WrbvGQaJClK/a9m4JEWCdaz3EpnTaWsoRCivO4zvTXmuhp57VbFbYUoPtI42F3a2tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cNwzOkO2IgOE/VogyRB0fMF58FJq1+MHWbW03Ux6HNY=;
 b=YfkPw01Me5hlzPEo4pn3Xni4ZI1/hPtEdxY19Bb+hi/KWG0bY1oAa/zhnfEpTUvOIkxk+6iQuN+7SGwPwDnXxRHgq27N+qxm8d3S+MohbfrqOcp5HedIgnOc2W5KlQiaWroxCv5F60e3xOH1YwfGAqsrk/jrZ+EZ5YH5OgcTguJv4qStzyl9kVqmBlvT/UpiOKrR7WhsUXD4VmT8vupLN5K+WvRLv1BWFdMGwkG/uSSwok1sPTwBtd/2LXzaAXjWwEEp1SLvFnlWmXQvSf8Taoy+g3iCqu/6ok2SNk9wvt/NvBEf50clrXn5doU8lv7h0DpFwa1Nysb5NWuU5oAXEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cNwzOkO2IgOE/VogyRB0fMF58FJq1+MHWbW03Ux6HNY=;
 b=fxYIIK0CtsHAv+IqJqwPt9heAcPtQ/ntmtI5F6AJxJgHF1VFNhhlhfaHi9apdWGhLBDOezLyjMUqLvnoXGu95i6hzZLMmcJsS6uSrxHe6zA+ME4T/GVxK9zd3aaWsxonhfzKUJJA5u+MUlQM+ChEFcVGfjz3HyOgC5qni80CdRI=
Message-ID: <11f2d0ff-37da-49b2-980a-1b6739aa6ebf@oracle.com>
Date: Sun, 24 May 2026 16:57:05 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH8P221CA0065.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:349::13) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|MN6PR10MB8167:EE_
X-MS-Office365-Filtering-Correlation-Id: 97bec819-b817-48e8-8257-08deb9f02a61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|5023799004|3023799007|6133799003|13003099007|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	FjGWkQjijQGwN1dTOEjGoAGVz+WIJfRETIhScQFmmcwgdCNQyhMMPaJ548j8WbRHFIaHAa3zSWE5ImcdSI6jQADLUmLRQzcvwBUMLXFz7w16lRmyLN5yK9VV0lBe0TQ6KVDvYEzAEw1nq19eXP+fC4iZ2xuitZ5/IVQFIpurx4iytAfPPXNroivaABpHUmUn5y6aRbzt7FlKo/fLQczWUaWokCuAlgKKx3yTRkFrHtbfLcxgKiuXTVhJqq5jEPQHfT3x56/qYhVtiqFjrHTusx2y8wnpQYDPSr4e5Hoon0PBQnpJhAPezPFwkVx0igO8UWBZbzMO9KPhX/A+me8D2NyO/TY7V5aflVrKy9AQ+POXnR4ReZSS0yge/YPw01YSPcF1fVgp4Md3iiqEuDl9xMjgUhSnnqlgxjGuwmgERTyztWiDjBZNO3Mv8ZuzblatP2reJOy8CUpL5LEzA78FoV7rBWI9NoF3B85A/JJAA7Cz6WpV/8oivatSBFzQGohvd4JEZXPmfMjBbxKPRKl8N3lsH/2GvWaAjWPyVyixhMm40pdOH444RLnloFHcq336vJ+WR/llo1ddWLPX/slBjwRjWds00PTyeCsj4q7j77/nwSYza9sz4+EsP+hHh75/NQmd8K6/4SN+zklZVLefTF3UdpYFOL5db3Tf03gJW1JT23OMSHa45iStxuDQ4x3lGhoZknVfUC5FBckmL7lG+Q==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(5023799004)(3023799007)(6133799003)(13003099007)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dUVLMmowUnNzcktBdkxZNTNlSWdYcHB1U3pNRytmRVU2MEQ5eTZLMXNUUVBo?=
 =?utf-8?B?Ky9wUm1rdHVKdU1MZ0crRytpNExRK2RwaGZyWWdrYjhRQXViNm1XZ3NCWUEy?=
 =?utf-8?B?TVB6bE5ZdGJEWFJ6VWxIZXExTWZEemVEdDRFM3BtWWtudEFZai9XQkJFYTdX?=
 =?utf-8?B?aUNCak52UHVYTHFSS0MxUENSWnF4SEd1WURDaW9ZMng5QTM1R1FJamx1ai9W?=
 =?utf-8?B?K21VYytBZC9XNzdiUlAvUm5vMjdudVpHaVpyVzdmYWpJUHN0TFBDaXBGTTNj?=
 =?utf-8?B?SE5hUHNmRE13MEcwYnMxSy9IUWpjR01GZmJsZVNtSGltYXA0L0pxOWp2SWFC?=
 =?utf-8?B?dUlHNzNkQjZMWWVONHBDc3o3VWdiVnh4eEtJaVNlck8rdlliZ09QOU16cGtG?=
 =?utf-8?B?eERSQnVSVEkzT3JJckUxQlQzRGhRQU1WRms0dE5GMkZLSVRHZ25yQk9jOEVN?=
 =?utf-8?B?N1BiQTlCK1E2UHZrQ3hOUk01RE9HR05rUjNZMDZtSGFqRldaWjIrYmowdlR3?=
 =?utf-8?B?WEhLOUFmVUZyV21IRHgwY1lPSEZkcktNWTFWWnlMRmlUTDdJcC9lUmZlOWQz?=
 =?utf-8?B?Q1V2YWpCTkVJQXBHOEtPeG9OTXJtR01ZS2djV2MzZURDRm9MZFdCWHFKVEN0?=
 =?utf-8?B?Z0dvSGdpcFNRRGJyK1N6TnExTmljd0t2Ni82L3plRGp1aHZCcEVCeGdlZUd1?=
 =?utf-8?B?QnZ4TnR4ZEt4Tk00ZmtYNXloeEx5c25uUWUwcWtHTG1UUi93andVMXQ4OFhD?=
 =?utf-8?B?d2dJN25DRDlIN3l6WUdUcHF1SFlwVkxzS05ZWDdxQVdZcVFibnVMYXZabTBr?=
 =?utf-8?B?dk82SjY2THdDamVRK2VVZHhmUlhaSDJ2V3czdWxBWE9NSVNNT0t0U3g3cFZn?=
 =?utf-8?B?eW90cm8vL0NPbXRvdmFvaTdDd1hINTRlRkhQRE0vZk5DSVd5V3ZnSWorK2Ew?=
 =?utf-8?B?V1pVbGdtd2UxeUoyTmJDc0pzYlZqcVMwWUtWYVByWDlwVVJZNExxdVhCTXBl?=
 =?utf-8?B?V09EOXBFaFUwaHVyZnBxazE3M1NrZk5wdW8zTjd0QSt6WVZLSkJDOHFVeEUy?=
 =?utf-8?B?SHlqTmY1bjVqenZrRy9vZkJKOGxkem1FcFpvMk5ncDJJQnFpN2oxOXVtK2h6?=
 =?utf-8?B?UFdxUUJyQ0dKY2VGRk9qVFl5QlZ0S3N0cG1BZ1NsdHpoMGxnbnp3dmZ5Rmdn?=
 =?utf-8?B?V3p3UWNIYjZITTN4d1Mrb1d2UWMvZUhlZTcza01tWWZZTXJzM1BRV1hkWDlz?=
 =?utf-8?B?a01lNExMUWNpTERjcFJjWkhVVVBXa2xXdzVqQndndVk0dHhKQXQvemU3cTll?=
 =?utf-8?B?YkJyN21XQ2hxZm1FWlpvR0JKUjZ5UGZWSXJwK05rT1NGdDdwd0hwaS85NTNM?=
 =?utf-8?B?NkxJcmljY3lFTS81dWVLRzUwOW1JVkpkcm4zU1A5UUlFQUxTb1Bsa2JXcFlv?=
 =?utf-8?B?NWtlYkk3TVhmRksvc3ExclNXYi9oNDdjNi96N2lSK0dUcDF2VTRLTG5sQ1U1?=
 =?utf-8?B?Z1ltcFF6bC9HMXV2a1E2cjB3cGpHTjMrSm9xR0xsbkovVG9pVS9tbXJzcllh?=
 =?utf-8?B?OTRvKzZNem9tbWU1S1ZFRnFaL0QwVExsVmNrcEc3VzdIY0N4VHpkaW9ITTgy?=
 =?utf-8?B?am9wZFI1OUkxeU1XYUZXSnVSZ2U0Q3ZiWExkc2ZZK1pzOTIxVkZrazVXaWt2?=
 =?utf-8?B?MDNlaEVzWU42Rm5xQW5yS2pDU2QvUjg5aW5xTm5xcWhicDEveUkrWktGM1BU?=
 =?utf-8?B?Smc1YnZKT1B4OVQrT1k5V3Ixak9jY2haMDJiZHpsenZHN0NWcWtRTkNlY3M5?=
 =?utf-8?B?WHdJbFZvOUpzWFBmV1FjTVF6aW1MTCtJY01zVGM3b3V6ZklUeGRpYzVtYnJp?=
 =?utf-8?B?UlZraEwxYktReFpKaFk2N0VHK0dKRlR4UGVEd1cvd1h2cG10VlhtSEY2Mk90?=
 =?utf-8?B?NzllOUVJTmFUbUZHUkIxeEdLOXl6SERoNWtOQnVXcHoyU0JBTEQwTk1jbzVX?=
 =?utf-8?B?ZWRTNnp3cUZ1NGFEVUk5b3haVEdrSWRqemQ5ZkJMUWVUbHZsbC9FWjY1Ykdi?=
 =?utf-8?B?WThYV2h1K0t0Z25YU0tBZUMxNG9QNjg5RThwRUJKNHI4Zm9CeEh6cTB2OWZv?=
 =?utf-8?B?YzdlSlVnYkJydUs2MTdMbE1kZUM1R05ITVEyZWFtdVM3K0t4ZjhFSTVKS1Yv?=
 =?utf-8?B?REV0aGZPZXVZbnNyanhVcDQxWHI3MEJ3aWhBUTFnaXBOaTVBaHRqNE1Sdmln?=
 =?utf-8?B?V1RCQ1JZZk5NOWxubjlRQjVRT3puWTJiZDRWcFVtdEd3MEtMeWJneFUxdS9z?=
 =?utf-8?B?dk9EdEZWeXJMd3JvMmpubEU5QkdqWmF2R2tEU0pIZEVRREtzck5sbjJTeGw5?=
 =?utf-8?Q?qRGoCkyh7LIlwKH4=3D?=
X-Exchange-RoutingPolicyChecked:
	OiISwSTK8gEEtVWDLdYCNkH7dih1C3RIQu8q/yH9Z7pUcjDjyCaipz1YKu6j05ZrC82+wOK/eMnLNL12i4eYIz/5JYKE5alKb09uNDLVVPLVgJY7qctVWX3M2SCPXeoONGAf4pebN20eR4c72w2tDAk8PoEgeBL2bO1A28EakywqTTf4mgNqYyIN7N5WWbguH8CYTbW53dNl1fDuNxp2Nt7RWLRpB6lssQvUjNqx5gUlaptC2Eoqc3Nj3kA5V+mUFrCzmmmcS4+hY70GN9+FS5GK3Nk8HfQycmgE+8scbcdyXW+A3QJihrslRfBwy2dk1bw07n8jhGI5k49+bC46jQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	NPuxHV5Qz5SVFOIJqGCd3n/DpKsXPSiYLjEs9YCSlf/0y5FXi+bCzjQvNTkyOOn7k7sCWfpXb4VZB5ic2wRPMAFs/Lnx4gOzQMGzHfngijX9LWSjPizk0PhSQedwwF2ynl77XkeKYI09AztYFRRUlyWIK64BT4Us/JxfFHLru7+4NT82qAchjhVg6hYw+yg9D8YEbVXhSgCL1XO1Z9EvKkMYbcMUVQdqARIsaKNjvEBKksUhMwJ2t6AoCO0iwChDbWB+blG61Tn1cgZ17Fx73qypsH2iGyISmBRAOd8h0ySKOydfZB+29tfFYYuYIMXWqBq0fn3IOx7FBYPz3Bq0CpwYTci3EWH2SDm59Y/IuZbihxfyaZD98yWpVsM1s8zvSawTTPhFLjdPZs9Vx8uT7otr8zyD8P0c8UrtjjJbtsGwXPNlF/LhNt27ynh3vMONFQxg/ZN2wSxbi7vohg/xaIIZn+m+71K1hX4kDUnKGRtLRGOP69yFSi6o5aV26NxHcyR7e9GPQi9d86eaegaEIA5PBi7leze0beFzl7UYWi/JSU48SVB1cwbOjJ8YWQ42gBG/EqQKkJuiFD98lMwdCslxLn6yG7aOWkCsjHPybvU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97bec819-b817-48e8-8257-08deb9f02a61
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2026 23:57:08.9569
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VALZ7bg1MJW4Qa/8eVCcFMFhIOznhDnGBtEeKSQfgepC/4yiX2prDF9bk2LzRLmGcLCcXTOCAW3vRLGQkQSdXWJAQoIDpfuwmBa7D/Kc1aQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB8167
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-24_07,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 malwarescore=0 suspectscore=0 mlxscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2605130000 definitions=main-2605240241
X-Authority-Analysis: v=2.4 cv=MMNQXsZl c=1 sm=1 tr=0 ts=6a13905b b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x0eKOSpe3m1H3M0S9YoZ:22 a=csi744ddAAAA:8
 a=61Tg0FzcAAAA:8 a=yPCof4ZbAAAA:8 a=TYaNpXbtu4LV3riRducA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Guu6NbLgiLiyoMUfLWhh:22 a=gFQ6JinZOSehdOsrNpra:22
X-Proofpoint-ORIG-GUID: K0Cu-4tKzgnkLmGjjQCv0AM6rGXKxuvx
X-Proofpoint-GUID: K0Cu-4tKzgnkLmGjjQCv0AM6rGXKxuvx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI0MDI0MCBTYWx0ZWRfX5iI8F1umyLXy
 +LEG9/0HrfcN7CaUOWNXXg7V8OagSoJTu0xFv9M74WZvu1Ft3os7INyyBJAv1uTfkhtOtD2FiDp
 vkYgtZsPN5tw+g7PmVAK8HOC1FTtR7/jEC/IZZQ1bhV8nJKQ3ZFo/3jfYF8dZ1gD4olHgEuxwBm
 COtwKX2J4Yc48bIw1ldnH092uuI86CnosD2bHxPz5h/CuPoRkLFn1tT6SpuERZ+yCejsKBwDhYb
 G73lKOwlpUB6oXsobfkC9ME1DReQdHs3KD6MQHY2Ia64idzAPLNfYkWHJpUEnzRWWLzhdKbDzC4
 cnhpXCt9rywK82itEy3hP0jlvApJeAA89V2l0DJKVUhtGs2JuVgWcF7fMMYlAGDvXWso8XSr7en
 dSEu7nyHYXrtnU2e8zHPELpH8MkU83NX04eRFEAqZbVYtcPXbZ2Gpl/y/BHv0J64sEuYZvkGYQ9
 aaOSvxpsftfj0DjYTKw==
Subject: [oss-security] PuTTY 0.84 released with 3 minor security fixes

https://lists.tartarus.org/pipermail/putty-announce/2026/000042.html
announces the release of PuTTY 0.84 with 3 minor security fixes, along
with other bug fixes and new features.

https://www.chiark.greenend.org.uk/~sgtatham/putty/wishlist/rsakex-double-free.html
provides the following info about the first vulnerability:
> summary: ECDSA signature verification can be made to fail an assertion
> class: vulnerability: This is a security vulnerability.
> present-in: 0.71
> fixed-in: 65b8f37c34cd80680693e813e0081cdafaf58324 (0.84)
> 
> The elliptic curve arithmetic in PuTTY contains an assertion statement
> which shouldn't be there. It fails an assertion if you try to add two
> elliptic curve points with the same y-coordinate, which is a perfectly
> normal thing to do and should not be a special or error case at
> all. (Adding points with the same x-coordinate is a special case.)
> 
> This assertion failure can be triggered during initial key exchange,
> by sending a carefully chosen host key and signature. The crashing
> calculation does not depend on any other part of the key exchange, so
> the malicious key and signature can be the same every time.
> 
> Verification of the host key signature occurs in PuTTY before the host
> key is checked against the cache. So even if you trust the server you
> think you're connecting to, a MITM could substitute this bogus key and
> signature for the real ones, and cause PuTTY to crash with an
> assertion failure before you received any warning about an unknown or
> incorrect host key.
> 
> This just about classifies as a DoS attack, and hence a vulnerability.
> However, it is a very minor one, on the borderline of not even counting
> as a vulnerability at all, because:
> 
>   - A MITM between a particular client and server can always deny service
>     in the sense of preventing a successful SSH connection setup. Nothing
>     can be done about that.
>   - The only interesting thing in this attack is that the MITM can cause
>     PuTTY to crash, rather than failing with a more sensible error message
>     (which is what happens in the same situation once this bug is fixed).
>   - PuTTY is always compiled with assertions turned on. So the crash is
>     only an ugly error message, and does not lead to any worse compromise.
>   - PuTTY runs one SSH session per process, so this crash does not terminate
>     any other running sessions.
>   - The only potential damage is that if you had valuable information in
>     your terminal scrollback (e.g. because you had already run one
>     successful SSH connection in the same window, and then used the
>     "Restart Session" menu option), you might lose that information
>     because PuTTY crashed.
> 
> This bug applies only to elliptic curves in Weierstrass form. In PuTTY that
> means the NIST curves: P256, P384 and P521. Ed25519 (and Ed448) is unaffected.
> 
> Thanks to Guido Vranken for reporting this bug, and also providing an
> example case in the P256 curve.

https://www.chiark.greenend.org.uk/~sgtatham/putty/wishlist/rsakex-double-free.html
provides the following info about the second vulnerability:
> summary: Server can provoke a double free in RSA KEX code
> class: vulnerability: This is a security vulnerability.
> absent-in: 7a49ff9ac1f65944434176251b0bfea9fcc44636
> present-in: 6d7a6d47e68e8368216f3ab1a0d071db32d20a11
> 	    0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.80 0.81 0.82 0.83
> fixed-in: ba3ed53e0bf6682f89940bc2c3e83da6b1524024 (0.84)
> 
> PuTTY's implementation of the little-used RSA kex exchange method (RFC 4432)
> has a double-free bug: in some situations it frees an RSA key by calling the
> special-purpose function ssh_rsakex_freekey and then also calling the normal
> free function on the outermost struct, which is wrong, because
> ssh_rsakex_freekey already freed the whole struct.
> 
> This bug does not happen if RSA kex completes normally. The double-free only
> occurs on an error handling path, triggered if the key sent by the server is
> unexpectedly short.
> 
> This bug allows a server to provoke the double-free on purpose, because it
> can present only RSA kex as an option in its KEXINIT, and then deliberately
> send a short key. Since it happens before host key verification, a MITM can
> do the same. Therefore, this bug is listed as a vulnerability, since it's a
> remote-triggerable crash. However, we don't know of any way in which the
> double-free can be exploited to achieve a controllable effect.
> 
> Thanks to Ben Smyth for the report.
> 
> Apparently this was introduced during work in 2019 to make a test SSH server
> out of the PuTTY code (including an option to pass in a fixed key pair for
> RSA kex, complicating the question of whether to free it after use).
> Confusion was increased by the historical oddity that PuTTY's RSA keys were
> originally held in a struct that was not freed along with its contents.

https://www.chiark.greenend.org.uk/~sgtatham/putty/wishlist/telnet-trust-sigil.html
descsribes the third vulnerability thusly:
> summary: Telnet session data is marked with trust sigils after authenticating
> 	 to a proxy
> class: vulnerability: This is a security vulnerability.
> present-in: 0.77
> fixed-in: 64712be3cbc4a02bda4a92ca97e8d4f294abbe9a (0.84)
> 
> During the initial authentication phase of a network connection, PuTTY
> marks its own prompts with a 'trust sigil': a small copy of the PuTTY
> icon, to the left of the text. This distinguishes prompts that PuTTY
> emitted itself from identical text sent by a server.
> 
> The idea is to protect against spoofing attacks in which a server lets
> you log in without any password, and then pretends that it's still
> PuTTY itself doing initial authentication, and presents a prompt for
> something like your SSH private key passphrase. You might be fooled
> into telling the server that passphrase, which shouldn't ever leave
> the client machine. The trust sigil offers some protection, because
> the server can't make PuTTY display one of those, so it can't make its
> spoof password prompt look just like the real one.
> 
> In the older protocols such as Telnet and Rlogin, there is no formal
> authentication phase in the protocol itself: if the server presents a
> password prompt then it does it as part of the main session data. So
> trust sigils are not usually shown at all.
> 
> However, there's an exception. proxy-password-prompt introduced the
> ability to enter a password interactively when connecting to your
> server through a network proxy. So a trust sigil can be used in a
> Telnet session: it might appear during proxy authentication, before
> the Telnet session itself begins at all.
> 
> When this happened in 0.83 and before, the trust status was
> accidentally not cleared between proxy authentication and the main
> session. So the whole session would have trust sigils down the
> left-hand side.
> 
> I committed the fix for this in public, thinking it was just a silly
> bug. (When your whole Telnet session has those symbols down the side,
> you're surely going to realise they're a mistake, and not be fooled.)
> But since then, I've re-thought: it is a minor vulnerability, because
> what if the first thing the Telnet server (or MITM) sends is a request
> for your proxy password, perhaps pretending your previous entry of it
> was unsuccessful? That's still be a piece of information you don't
> want attackers knowing, and you might be fooled by the trust sigil
> into believing the request, before you find out that the rest of your
> session is all marked with that same sigil. By the time you notice
> that, it's too late – the damage is done.
> 
> So I'm classifying this as a vulnerability, although its impact is
> surely very small compared to most vulnerabilities. (Especially since
> it requires you to be using an old insecure login protocol like
> Telnet.)

Additionally, VulDB has issued CVE-2026-4115 for a bug fixed in this
release that the maintainer does not believe is a vulnerability, as
discussed in detail on:
https://www.chiark.greenend.org.uk/~sgtatham/putty/wishlist/eddsa-overlarge-s.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

