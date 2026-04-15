Received: (qmail 1333 invoked by uid 550); 15 Apr 2026 22:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1309 invoked from network); 15 Apr 2026 22:51:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Nzu9nL0xqPvZdry7
	Wo7AM5YFES+lF0kEoP90J4oKRgg=; b=SnexfIKiyOoh8HePCoILmNNf++JsywNV
	SWKQkkvoryZxvapfL60qLPj0+9z8rxU9Up51gZio51JIeIj7j51Sa2xzLSTUBl4E
	oycfahP8ULXuyl13y28eV7gGhZMRc++40OikMZhTJ6jh1czUPZZTj+IYhdHU4COM
	C+cRUU5UiyLT0bm6BidC0Uiht9QKggn+UENXv8eQHj4jTn1TWsCLzChKXakZmetV
	kebXMFCg40cJUQz9wywthEyrmc23G5CsDzwsTFXLofyB0uzzRuGBlGXVi1L4mpnL
	0EF671XpPR+jn3yU6pfL4db4f8j37Xh5vyNEtAh65/wL1pGvV/5zaA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mnT4evU4F3vXJKm5k3CrizYJjg4/Mqzj/rMtykJAHlHaelMoSCvlwNsyVbgvYS6BibKTgPxcSt90UMqLtVgVbUXnqrQrCyIYKHaOFxyT0kWRVR0fmybG9tReW1eJ1i8qNPBErCDUSsEKfsf9uqKGidBeWrXq5Gs4wDlEy7se78A6TYeAv/Kj6L21+SySVeUg8IxsLvsKfS5rZdpwiFZWMxRr+yEGmvJiyCLO1CvhY5tBBQgkwYhJzk/Kl5lt6kG0QWFpRpn4J8psI+0xLQ61s3fpZ8Dcs3fXg1fK2SGPXca2gMldv07F1NTEKMTZV9DugKhvY23y2XcK2noBccCTaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nzu9nL0xqPvZdry7Wo7AM5YFES+lF0kEoP90J4oKRgg=;
 b=jGVGmxwvODJsNtCWDTDL05wKuBU968hpRSTaQDSm/YcJlbH1nw/8BXmaRNZurNP5uygkLyoflpr3ue6aGT6pEcC5NHOGggEtBiGrX1yBv1DkFqvOoVDKBWcKs1bafdhw/mGivECJ5RPZ+aYby3+D8VqNPg2LAKH+9Fd+Cx2GCaMfOdSVEf2Mi6i0LxCNu29bIPqxG8/BYVcWCWgKg9/DpcUrQpQIu2RGLKpN7frQF+uCOQHPXvCdK3yxgsGuFzyLZsrx5mMg9z7em19Igl0acNA/LqMhdoPWc0DvZS+1wrkeMCibwxoxyvYpwCJrYZssPsIy3djqAP0IricyLAum8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nzu9nL0xqPvZdry7Wo7AM5YFES+lF0kEoP90J4oKRgg=;
 b=XYbpVlLAhU/xLOUD7nI+PgI2q3y/1j2JtaYgBHAmXbgMy2f42+m4axtCg/eX/Oj/O8W4hBDRJgNe4lO80uuIVi0qkgBJlozKJ+tISx3hzkjWp8OqXL3/IgkEu6M+ZVfJVmSJfGYkmlj92B8rf+DP9+Fd86bJBdrQngaA+Xirhsg=
Message-ID: <c9bd5dbd-7b11-4637-80cd-5dec79dd491f@oracle.com>
Date: Wed, 15 Apr 2026 15:51:15 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DS7P220CA0016.NAMP220.PROD.OUTLOOK.COM (2603:10b6:8:223::8)
 To CH3PR10MB6739.namprd10.prod.outlook.com (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CYYPR10MB7626:EE_
X-MS-Office365-Filtering-Correlation-Id: 782c4988-aa9e-46c7-d670-08de9b4180f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	+GJ5U0A6N+qj8tZMXkyERK/Q841A3PEboWkmbUEFW7nXYh1EaT10Q6NhIycPN8tFrPQrLn0w7STBtv4LM2nWx88G7l38QKKfqsvqG/zsrjtX/A/TVs5ZZEmAdWkFvc5B+HyjLrenrKsbsqasDWedetCeqC1NBCKu9uGJQYac4M8gjdbtVm1NRw4a4J1hSdCltAd1K7P3ZW/gARpn2ZYPQvMQxjztZWEAE27cY42DuP0plyAusxvpuQIwucdc5uymXLN87iiaZuJ/9MfXvDTsdgARMoGp8aWb/xcUxV6KyZelcCQEkeh5La5iGn/yLCfIeK8z1kuD1FmrKjhGbak9qLSUeuoARjc7MU18xRrQaCG+HqXha+hXtlOuY+zqPLVIjARdHDX82Pe+osG4ONjE3a32yy6iWrD79DHI9R1rLy2g8VS6OrU0ix/UCaG3Kj53Wp9mY5wps1LWgV+bRg4kV/3KaVCoz4BehIYZMw6bCNVEeYI1WPhajwK8hXEfOHkjdwj/8c4/3yOxCKmJm64pQdVJ23D0ntOO4SjOFr0DPStyVvD8LAzWh1wKmjz0TjlSaJDu+/Boo/TRuC0GOx01lj3bDUIHmxu1zs+XyX87dgk5cjhxLZh7yr/02POCI6OyABDFrTWMNz4sdZcFZwGcIZUMvwzDobxK9Q4FIXxHn/8N3FIEX8uJw7/6nLM3DCXw
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QTJaVW5PR0hpSXovZFRqTm1GNEtoby8zSklPL0h2UGlxclJmNFhueXFsTHIx?=
 =?utf-8?B?RXBYQi9PeG82U0t4eTY4WjhvUEQ2RkVRS015ZG1FRFZWMUhINmE2S05NRlRV?=
 =?utf-8?B?a1JvS1FSYU16QWFVclgrUnJCZnhQQUpUVUNSV2d2SE5hY2VoSDdJMTBDSmEz?=
 =?utf-8?B?anNmRW84VksybUFmMmhqUW1jWEQwZnpsTHRYdkY1YVlYcW9xQ0F2UkpzVExx?=
 =?utf-8?B?d2t6dVgwbHhDdHpHVGlXWXZ3TzJDbXZqVkpuNWZMUXV0WnphT1VRdjI1TGNq?=
 =?utf-8?B?UHZiK3FVWkt2cFpXZklhVjRqNGRZMTg3WnJMRHM0cHExQkF5RmtiZU9HTHFV?=
 =?utf-8?B?Z1FuY0RYcXlQZXR0UFN3end0bnhQQnNjU2lHZ0xKc3pPbGczSVlNdDhoRmhh?=
 =?utf-8?B?VjFPdFpWdzkxWXFPV2RtS3lTc3N4WTFXd1c1d042ZWdIbzRGdzRsK1ZIWE1G?=
 =?utf-8?B?RWxpLzA3TUttNEdnOGh4Q1BJSFJpZ0dPQXJQSDU2aUV0dmJZTlpqOVhQMG1B?=
 =?utf-8?B?SkdXZVMycXh4RWkrWUZMYWRQV2VWNEhBQlNVc3ZBTEVxODVGS1JqWnNibVB5?=
 =?utf-8?B?YUJXM2hrRTdmLzJoVzZuWm5FeDFHMElMTWNHajJ2TWtzNzZsOGFSamZlUDVE?=
 =?utf-8?B?T3JESEJqUC9tMWlMSlp1K1BLekZWVjQxVlRxaXgzdlB5eDlvcngrUUk4T0xW?=
 =?utf-8?B?OVJ5UVpoN1pUbUE4UEJsY1Q5RjNRNkRERHdwdXp6Yml6UVdMeDgrNHlxek8r?=
 =?utf-8?B?VzBpelZzMjMyaU1wdjRCN09FWW5mVlBMVU1ZWHpVd2JHMG9qaEF5L1dEZ2NR?=
 =?utf-8?B?R2VCSCtuQlpTNytyMnRjZnUxMnBpSGpmQ0syclc5aTY0T2xLZmVyRENZTkRR?=
 =?utf-8?B?bjhhejRnclpTWEJVb2w3ZGh5QXpmd1FqR0VoRkRpRCtxYVpSUGhDdEI1ZWZo?=
 =?utf-8?B?bnU3Z3ROQ1ZZeWlvTmRvc1V4RXYwdGxtdXBEQ2lELzA2dTdFNUZKRzk0emcx?=
 =?utf-8?B?ZmxkdStTNWpSRzZ1K0E0WkN1NXY2dGtnWVJKaW1Tek5aMVNYUW9KWERtVEtO?=
 =?utf-8?B?K1lqTHJIR0dEbDZEbHZKQmtRYWw0dmRubGpIeVFvc1cxSFRBbHZPcVgwWXZy?=
 =?utf-8?B?cElNTXVTdCtiU0VVZVFwNDRNU1JvQUtIdU9pNkRHMGtRcVg0d2xWY2g0RDND?=
 =?utf-8?B?NktXWllWeC81SmRWbG1naXBGdWxPVER3M20zcTFrNU52dVBMakVtR0tpWmpL?=
 =?utf-8?B?a2hIc3lBMUIzVEhlTktUdEhVMnBMdFhSRElFb3Y3SVgrOGUzQU93d2c0SFlt?=
 =?utf-8?B?NVNkaTVqdk81ZjZUZ3ZjWlZYdDROdTdrRE9TQWtCYk1vQWhNRUZVN29FR0JL?=
 =?utf-8?B?WFY2NVN3SC9Bb3o3UXF3c0srVUFCSmhWWTBEMGxVWjgzL1FQaUZVbTBXNWFS?=
 =?utf-8?B?YVB4TjJJb0dsaFRYZllnWXRScWk0enlWQ3ExYi96OU5oL0tUWTZpcGNxYWlx?=
 =?utf-8?B?Y0FleVlyWVBVQ2c3cTNvb0VYR3F6OStHckxiNUdEL1JjNDh3UzlKM1FhVkta?=
 =?utf-8?B?cjN5WlBUUTQwOEwrcG5DUkJtNXVSWmRZYTF1d3dPZXlHS1U2dGlRbHA1dzhE?=
 =?utf-8?B?bm1NaXA2Rys5bnRMNzF1cHJMVU5JcUhUOVRObnUzc0tLNlZ4TXNuSWs3Z01D?=
 =?utf-8?B?WkhqQkgxbTIvcUpMNHZoRW9mcFRSRlhUcEo5cVM4bjJIWGsyWm45d1FLZWNw?=
 =?utf-8?B?ak5nQjBSZlAwYk5sNmlvbmVNVG5HTE84NmtYdXRKSW1GMDZUOVlIeGowQVE4?=
 =?utf-8?B?SWUyRzgxYnc5QWw2RzhyVU5NOTBYUUxPMFBFSk9Nczh0cy9zdXFCZUY4YTJp?=
 =?utf-8?B?NkloNlQzOWJFQWFPRmJGTGRSNkZSbFFYUjk0enVLd05pQ3hqZkRKVUFCMXY4?=
 =?utf-8?B?cUtrSVpJcTg3bEN1Ry84UDRBZHJaU0FiMGppc1pwT1pLdHlrb0tSUE5JNzRV?=
 =?utf-8?B?NzRzWEVhK0xhZDJWaWRVRHYzK2w3dmgwZHlSUjNjMGtoamdVNnh3aEsvZ0hH?=
 =?utf-8?B?ekdBbjBySU1UQ1JUKzRicFZLamM5dFo0UGxGUncxbnB4VzhnYWQvakZFZTlR?=
 =?utf-8?B?Z2FhT0d6dzdtdTVBcFFUTGdZV1picjV2S01qTlpCMnhNSGZmSlJvclN5WW1G?=
 =?utf-8?B?dlhJbDU0SkRISU16OGFPcFMrRXRMK2dBbDR3eFY0SmJ3a01YV0F0VlZic2g4?=
 =?utf-8?B?RFRIa3NTVCtNYjUrWkdENWxNSnZRSmozY2JvOHJ3U1BsMG0ydHRlb0R4bGVy?=
 =?utf-8?B?NUh5aUlKNUZUMW5QWDVUTkRMR0xVMmQ3STJaZ1ltMEFPczJyS1VFQkJtTFRm?=
 =?utf-8?Q?Cpe21onVW0IA/2VA=3D?=
X-Exchange-RoutingPolicyChecked:
	rT9j82w+vah8mnl8FyF0dFDF0BFH0iEWwAEbqee0sbbpKrFHd2KO/46e3sI0xEakKa/4mDp1r+/v7A/jCBRFTLLEUJ1sAGwqnyCzWvmyWbj0psXN6rq/D5oPvfS/hRWYOF9m6AWw/oWhgx81AnUUJMRmKdedzQMno0cyASvd5nqmtp4kZV+ROGIYiAEpiHxSpVN5swkNqG+UidJV+Vr10BVHJ7aUypO/jg18F5L28sEhmU+NeLBZhuhRWnqmO1Ein5FTdp4qwQJhPRw92flZ1OKFbyjhKImCHXS1yceYvsKE4AAN/Be83pzMnJQ8t6bc/ForffqcB0tYGj820gwoRw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	5ysc8SidiDR8keQhQFboNnAdYL57xMFzFVSorsRp5x9varROL95N1hyiNlS+LxboT3zhFY1jFdYuNmBscgRZ+Rx1bXQG/xdwkMv3/bB58N0JlukyeEono4kD5HOnt0Ix64GCyueHoIuuZFQJv1oXpY/TyLsyhTGHDYKVXYEm9ARSpYveU3GQ48/qTq8gret0DEEgzjtTqGwP7pGO6oVmQh7idONJg9eVS/quQh9P0YpMiQPYrkZtfHDiiIG/kWw79pJmDesnsjscIBs8Iotb79Kpz31fS8QVcEpWzTISM4pxvWyA3p1bIt1rKryhaSrpLaM/WIomjVBn2G1XgI4nhnEZHpMpL9WGamahtupvPZ8XUrHXrHrXq8xboVkvjiLUQIE880Nq04F2O2aPrrTJSaqv96s49AySa4vdsoymbT4bfbYPUfb2fBqoBNPdZOBY+EIucywh+9UYSlvdCA7IQApZBpjQavFMNss9/gCCYak21tII/hLmrmkaTdOi/EmJLtWkST/FyKsSvMTbaSo/kryl8lJHOIsq/PJ8twaUgR47/jhAV/OlFbsdLNvHBVju/gnC/46chwIjOe6VJm+RRwxoFhpAHHy3ZUYdf6NldE0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 782c4988-aa9e-46c7-d670-08de9b4180f3
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 22:51:17.4212
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iq+IYE8mYaWqq/tDe6nHp2wpuEvbU0bjiWKzcVGm2U6pUd8YgxBCqBnSl2uPyDAxtNJ6R34CvjdEKVISqt035NtA1joD9A3RyLdvA/ZYWV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR10MB7626
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604070000 definitions=main-2604150214
X-Authority-Analysis: v=2.4 cv=JKYLdcKb c=1 sm=1 tr=0 ts=69e0166e b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=NEAV23lmAAAA:8
 a=_1otn6OxAAAA:8 a=rP-kOlJ0AAAA:8 a=yPCof4ZbAAAA:8 a=TTE5zqixDkWCdXYbAfgA:9
 a=6ssvGwiw8Rvneg90:21 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=-tclTu8cu5AEE0ILzAKm:22 a=A60uPr_FG5abr3nATN9e:22
X-Proofpoint-ORIG-GUID: bESzMR0AujXKdxXCXdxTpe82NbHL2Hab
X-Proofpoint-GUID: bESzMR0AujXKdxXCXdxTpe82NbHL2Hab
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDIxNCBTYWx0ZWRfXyuyPN6Rok8mt
 DP+mywTBuhpzlAVK04pp2yZkRYoGRXMR+5GHxT4O3ebrIcbAgvNlBoeKwFJUTGzaUoArdl2RINJ
 HT3uUb5XnkhHvN2+/mEge45v/QwzKDmneuxOo2ubYyN+6g9KeSQYgzaiyFnbCQDamefGQBkCrQa
 S74syk2MLvaLHNaZfxcNtzFrvu37AiIf/lt3bhfoGU9RNllnbzKt25Dg05P8FXqlsRQZZHC/4es
 plJulP3oT1vs0sIY0jAMvVqDxYghYFLSxIvKjZXW2qaz9uouzR4vI5Zz/F8EOxqupoGdYKWQxPH
 UVo4bspjNyMRjYk+kfYUaIe7VxoIz6J/T5WrsARSRxj3OX9BY7xgQJhXUFMzbbTibpN/Ed5W5hD
 W0GytO7Ql4RK0ZO3o02y7hFY1nEfcto+2eEef+7ptdxaRTlXC4kh7owa0h0JX5Iycd9Hq9nyOvZ
 m6XQwoCvShnnURhCr7w==
Subject: [oss-security] 7 vulnerabilities disclosed & patched in jq

7 vulnerabilities have been posted to https://github.com/jqlang/jq/security -
6 this week and one in March that I don't see in the list archives.  Fixes
appear to be available in their github repo, but not yet in a release.

https://github.com/jqlang/jq/security/advisories/GHSA-q3h9-m34w-h76f reports:
> Integer overflow in jvp_string_append and jvp_string_copy_replace_bad allows
> heap buffer overflow
> 
> Affected versions: 1.8.1
> 
> Summary
> -------
> An integer overflow in jvp_string_append() in src/jv.c causes a heap buffer
> overflow when concatenating strings whose combined length exceeds 2^31 bytes.
> 
> Details
> -------
> The internal function jvp_string_append() computes the new buffer allocation
> size as:
> 
>     // src/jv.c:1187
>     uint32_t allocsz = (currlen + len) * 2;
>     if (allocsz < 32) allocsz = 32;
> 
> Both currlen and len are uint32_t. When currlen + len >= 2^31, the
> multiplication by 2 overflows the 32-bit unsigned integer, wrapping allocsz to
> a small value (potentially 0, clamped to 32). The subsequent memcpy operations
> copy currlen + len bytes into the undersized buffer, causing a heap buffer
> overflow. The length_hashed field ((currlen + len) << 1) suffers the same
> overflow, corrupting the stored string length.
> 
> Arrays and objects already have size limits, but strings have no equivalent
> bounds check. We have to limit the size of string so that the length does not
> overflow.
> 
> Similar vulnerability exists in jvp_string_copy_replace_bad, too.
> 
[See GHSA for PoC]
> 
> Impact
> ------
> CWE-190 (Integer Overflow or Wraparound) leading to
> CWE-122 (Heap-based Buffer Overflow).
> 
> Any user or system that evaluates untrusted jq queries is affected. Attacker
> can easily crash the jq process by sending a crafted jq query. If the system
> uses a fixed jq query (that does not concatenate the input strings many times),
> attacker needs to send a huge JSON input to make it crash. Heap corruption may
> allow further exploitation depending on the allocator and environment.
> All versions of jq through 1.8.1 and current master version are affected.
> 
> Fix
> ---
> This issue was fixed by
> https://github.com/jqlang/jq/commit/e47e56d226519635768e6aab2f38f0ab037c09e5
> 
> Severity: High - 8.2 / 10
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:H
> CVE ID: CVE-2026-32316

https://github.com/jqlang/jq/security/advisories/GHSA-2hhh-px8h-355p says:
> Out-of-Bounds Read in jv_parse_sized() Error Formatting for Non-NUL-Terminated
> Counted Buffers
> 
> Summary
> -------
> libjq exposes jv_parse_sized(const char *string, int length) as a counted-buffer
> JSON parsing API, but its parse-error path later treats the same buffer as a
> NUL-terminated C string. If a caller passes malformed JSON in a
> non-NUL-terminated buffer, the error construction logic can read past the
> caller-supplied length, causing an out-of-bounds read.
> 
> Details
> -------
> The vulnerable path is:
> 
> jv_parse_sized()
>  -> jv_parse_sized_custom_flags()
>   -> jv_parser_set_buf(&parser, string, length, 0)
>    -> parse failure
>     -> jv_string_fmt("%s (while parsing '%s')", ..., string)
> 
> Relevant code:
> 
>     src/jv.h (line 245)
>     src/jv_parse.c (line 865)
>     src/jv_parse.c (line 896)
>     src/jv.c (line 1528)
> 
> The parser correctly accepts a (pointer, length) pair, but when building the
> error message it formats string with %s, which causes vsnprintf() to continue
> reading memory until a \0 is found. This makes the error path ignore the
> explicit buffer length and turns a counted-buffer API into an unbounded read
> sink.
> 
> Reachability:
> 
> Real external source: any libjq consumer calling jv_parse_sized() with a
> counted buffer.
> 
> In-project internal uses such as fromjson and lexer paths also reach
> jv_parse_sized(), but those pass jq-managed strings that are already
> NUL-terminated, so the practical attack surface is the public API rather
> than the normal jq CLI path.
> 
[See GHSA for PoC]
> 
> Impact
> ------
> 
> Only libjq is affected. A caller that uses jv_parse_sized() on untrusted
> malformed JSON in a non-NUL-terminated buffer can trigger an out-of-bounds
> read during error construction. Depending on memory layout and how the
> returned error string is logged or exposed, this can lead to memory disclosure
> or process termination.
> 
> Severity:   Moderate
> CVE ID:     CVE-2026-39979
> Weaknesses: CWE-125 Out-of-bounds Read
> Credits:    @HO-9 Reporter

https://github.com/jqlang/jq/commit/2f09060afab23fe9390cce7cb860b10416e1bf5f
states that it fixes CVE-2026-39979.


https://github.com/jqlang/jq/security/advisories/GHSA-32cx-cvvh-2wj9 advises:
> Embedded-NUL Truncation in jq CLI JSON Input Path Causes Prefix-Only Validation
> of Malformed Input
> 
> Summary
> -------
> The normal jq CLI JSON input path uses fgets() and then derives the valid byte
> length with strlen() when parsing JSON input without a newline. If the input
> contains an embedded NUL byte, jq truncates the already-read buffer at the NUL
> and passes only the benign prefix to the JSON parser. As a result, jq may
> accept malformed input by validating only the prefix before the NUL.
> 
> Details
> -------
> The reachable CLI path is:
> 
> CLI file/stdin input
>  -> jq_util_input_add_input() / stdin default
>   -> jq_util_input_set_parser(..., jv_parser_new(...))
>    -> jq_util_input_next_input() -> jq_util_input_read_more()
>     -> strlen(state->buf)
>      -> jv_parser_set_buf(state->parser, state->buf, state->buf_valid_len,
>                           !is_last)
> 
> Relevant code:
> 
>     src/main.c (line 361)
>     src/main.c (line 653)
>     src/main.c (line 664)
>     src/main.c (line 671)
>     src/util.c (line 315)
>     src/util.c (line 320)
>     src/util.c (line 432)
> 
> The flaw is that the code does not use the actual number of bytes read by
> fgets(). Instead it uses strlen(state->buf), which stops at the first embedded
> NUL. Trailing bytes after the NUL may already have been consumed from the
> input stream, but they are silently excluded from parsing.
> 
> This is realistically reachable because it affects the stock jq CLI file
> and stdin parsing path used by end users.
> 
[See GHSA for PoC]
> 
> Observed error:
> 
> jq: Bad JSON in --slurpfile ...: Invalid numeric literal at line 1, column 17
> 
> Impact
> 
> This issue can cause validation bypass in workflows that rely on jq to validate
> untrusted JSON before forwarding, storing, or otherwise acting on the original
> bytes. An attacker can place a benign JSON prefix before an embedded NUL and
> append malicious trailing data after it. jq may accept the prefix as valid
> JSON while silently ignoring the suffix, creating a parser differential
> between jq and downstream components that process the full input.
> 
> Severity:   Low
> CVE ID:     CVE-2026-33948
> Weaknesses: No CWEs
> Credits:    @HO-9

https://github.com/jqlang/jq/commit/6374ae0bcdfe33a18eb0ae6db28493b1f34a0a5b
says it fixes CVE-2026-33948.


https://github.com/jqlang/jq/security/advisories/GHSA-xwrw-4f8h-rjvg states:
> Unbounded Recursion in jv_setpath() / jv_getpath() / delpaths_sorted()
> 
> Affected versions:  <= 1.8.1
> 
> Summary
> -------
> The jv_setpath(), jv_getpath(), and delpaths_sorted() functions in
> src/jv_aux.c use unbounded recursion where the recursion depth equals the
> length of a caller-supplied path array. There is no depth limit check.
> When a path array with ~60,000 or more elements is supplied — either constructed
> by a jq filter expression or provided directly in attacker-controlled JSON input
> — the C call stack is exhausted, causing a segmentation fault (SIGSEGV) and
> immediate process crash.
> 
> This vulnerability bypasses the MAX_PARSING_DEPTH (10,000) limit that protects
> the JSON parser, because path arrays can be constructed programmatically to
> arbitrary lengths without being constrained by parsing depth. Critically, the
> path array can be sourced entirely from attacker-controlled JSON input, making
> this exploitable in scenarios where a trusted jq filter processes untrusted data.
> 
[See GHSA for code analysis and PoC]
> 
> Impact
> ------
> - Denial of Service (Crash): Any jq process that calls setpath, getpath, or
>   delpaths with a sufficiently long path array will crash with SIGSEGV.
>   This is an unrecoverable crash — no error handling is possible.
> - Bypass of existing depth limits: The JSON parser's MAX_PARSING_DEPTH (10,000)
>   does not protect against this because path arrays are constructed at the jq
>   runtime level, not during JSON parsing. An attacker can embed a flat array
>   of 65,000 integers in a JSON document (only ~200 KB) that causes a crash
>   when used as a path.
> - Affected real-world scenarios:
>   - Web services using jq to transform or extract data from user-submitted JSON
>   - CI/CD pipelines processing untrusted configuration or API responses with jq
>   - Shell scripts that use setpath/getpath/delpaths on paths derived from input
>     data
>   - Any application embedding libjq where path arguments can be influenced by
>     external input
> - Note: Unlike memory corruption vulnerabilities, stack overflow from recursion
>   is generally not exploitable for code execution on modern systems with guard
>   pages. The impact is limited to denial of service.
> 
> Severity: Moderate - 6.2 / 10
> CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> CVE ID: CVE-2026-33947
> Weaknesses: CWE-674 Uncontrolled Recursion
> Credits: @bg0d-glitch

https://github.com/jqlang/jq/commit/fb59f1491058d58bdc3e8dd28f1773d1ac690a1f
declares that it fixes CVE-2026-33947.


https://github.com/jqlang/jq/security/advisories/GHSA-6gc3-3g9p-xx28 announces:
> jq _strindices missing runtime type checks lead to crash and limited memory
> disclosure
> 
> Affected versions: 1.8.1-dev commit 69785bf
> 
> Summary
> -------
> _strindices is the C builtin used by indices / index / rindex for string inputs.
> Its wrapper passes both arguments straight to jv_string_indexes() without
> checking that they are strings, and jv_string_indexes() itself only uses
> assert(). In release builds those checks disappear under -DNDEBUG.
> _strindices(0) is enough to crash jq, and the same bug also gives an attacker
> controlled pointer dereference and a limited read/probe primitive.
> 
> Details
> -------
> commit 69785bf77f86e2ea1b4a20ca86775916889e91c9, _strindices is implemented
> in src/builtin.c like this
> 
>     static jv f_string_indexes(jq_state *jq, jv a, jv b) {
>       return jv_string_indexes(a, b);
>     }
> 
> jv_string_indexes() in src/jv.c then blindly assumes both given args are strings:
> 
>     jv jv_string_indexes(jv j, jv k) {
>       assert(JVP_HAS_KIND(j, JV_KIND_STRING));
>       assert(JVP_HAS_KIND(k, JV_KIND_STRING));
>       const char *jstr = jv_string_value(j);
>       const char *idxstr = jv_string_value(k);
>     }
> 
> In a debug build the assertions fire. In a normal release build they are
> compiled out, and jq dereferences j.u.ptr as if it were a valid jvp_string *.
> 
> When the assertions are gone, jv_string_value() treats j.u.ptr as a string
> header and jv_string_length_bytes() reads a length from that same fake object.
> This results in either 1. an easy crash with invalid input 2. a limited read
> primitive when a crafted number is used so its bit pattern is treated as a
> pointer. The number being crafted matters because default jq builds use decnum.
> A plain numeric literal doesn't give control of u.ptr, but arithmetic such as
> this does: (<bit-cast double> + 0) reaches jv_number(double) and stores the
> IEEE-754 bits of that double in the same union field which is later read as u.ptr
> 
> PoC
> ---
> Crash:
>    jq -n '_strindices(0)'
> 
> Controlled pointer dereference:
> 
>     import struct, subprocess
> 
>     def as_double(u64):
>         return struct.unpack("<d", struct.pack("<Q", u64))[0]
> 
>     # because we want jstr = addr, the fake jvp_string sits 16 bytes earlier
>     addr = 0x4141414141414151
>     expr = f"({as_double(addr - 16)!r} + 0) | _strindices(\"\\u0000\")"
>     result = subprocess.run(["jq", "-n", expr])
>     print(result.returncode)  # sigsegv in python
> 
> Impact
> ------
> 
> Anything that runs untrusted jq filters against a release build can be crashed
> very easily. If the system uses a fixed jq query (such that does not use the
> internal _strindices filter), it is not affected. The same bug also gives
> limited read behavior because values which are not strings can be treated as
> fake string objects and walked by _strindices. In a real deployment that means
> an attacker can use the exit status as a mapped/unmapped probe, and in favorable
> cases can get some bytes back through the _strindices position output.
> 
> Severity: Moderate - 6.1 / 10
> CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:H
> CVE ID: CVE-2026-39956
> Weaknesses:
>  CWE-125 Out-of-bounds Read
>  CWE-476 NULL Pointer Dereference
>  CWE-843 Access of Resource Using Incompatible Type ('Type Confusion')
> Credits: @tlsbollei Reporter

https://github.com/jqlang/jq/commit/fdf8ef0f0810e3d365cdd5160de43db46f57ed03
claims to fix CVE-2026-39956.


https://github.com/jqlang/jq/security/advisories/GHSA-wwj8-gxm6-jc29 expresses:
> Algorithmic complexity DoS via hardcoded MurmurHash3 seed
> 
> Summary
> -------
> jq uses MurmurHash3 with a compile-time constant seed 0x432A9843 (src/jv.c:1200)
> for all JSON object hash table operations. Since the seed is hardcoded and
> publicly visible in source, an attacker can precompute hash collisions offline
> and construct a JSON object where all keys hash to the same bucket.
> This degrades operations from O(1) to O(n), making any jq expression O(n^2).
> Only ~100KB of crafted JSON needed — far more practical than the heap overflow
> issues.
> 
> Details
> -------
> File: src/jv.c, line 1200
> 
>     static const uint32_t HASH_SEED = 0x432A9843;
> 
> Used at line 1219:
> 
>     static uint32_t jvp_val_hash(jv val) {
>         uint32_t h1 = HASH_SEED;
>         // ... MurmurHash3 body ...
>     }
> 
> Many languages randomize hash seeds at startup to prevent this (Python 3.3+,
> Ruby 1.9+, Perl 5.18+). jq does not.
> 
[See GHSA for PoC]
> 
> Severity: High - 7.5 / 10
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> CVE ID: CVE-2026-40164
> Weaknesses:
>  CWE-328 Use of Weak Hash
>  CWE-407 Inefficient Algorithmic Complexity
> Credits: @AsafMeizner Reporter

https://github.com/jqlang/jq/commit/0c7d133c3c7e37c00b6d46b658a02244fdd3c784
appears to mitigate this, but does not list the CVE id.


https://github.com/jqlang/jq/security/advisories/GHSA-gf4g-95wj-4q4r discloses:
> jq args2obj() Heap-Use-After-Free Vulnerability Report
> 
> Affected versions: 1.8.1 (commit ref:b33a763)
> 
> Summary
> -------
> A potential heap-use-after-free vulnerability exists in jq's args2obj()
> function at src/execute.c:1218. The bug is in the public jq_compile_args()
> API's array argument processing path: when called with an array of 2+ named
> argument entries, freed heap memory is read (CWE-416); with 1+ entries, a
> double-free occurs (CWE-415). The standard jq CLI binary is not affected,
> as it always passes an object (not an array) to args2obj(). It appears the
> bug was introduced in commit b279713e (2017-02-26) and affects jq HEAD
> (jq-1.8.1-32-gb33a763).
> 
> Details
> -------
> Root cause: The strings kk ("name") and vk ("value") are allocated once before
> the loop but passed directly to jv_object_get(), which consumes (frees) both
> its arguments. On the first iteration, kk and vk are freed. On subsequent
> iterations, they are dangling pointers — jvp_string_hash() reads from freed
> heap memory. After the loop, jv_free(kk) / jv_free(vk) trigger a double-free.
> 
>     // src/execute.c:1208-1223
>     jv kk = jv_string("name");
>     jv vk = jv_string("value");
>     jv_array_foreach(args, i, v)
>       r = jv_object_set(r, jv_object_get(jv_copy(v), kk), jv_object_get(v, vk));
>     jv_free(kk);   // double-free: already freed by jv_object_get()
>     jv_free(vk);
> 
> Git history: Commit b279713e refactored inline array processing in
> jq_compile_args() into the args2obj() helper. The original code created fresh
> jv_string("name") / jv_string("value") on each iteration; the refactored
> version hoisted them into locals but failed to account for jv_object_get()
> consuming its key argument.
> 
> [See GHSA for PoC]
> 
> Impact
> 
> CWE-416 (Use After Free) / CWE-415 (Double Free). The vulnerability is
> reachable through the public jq_compile_args() API when called with array
> arguments — not through the CLI binary. Heap corruption from the UAF and
> double-free may lead to arbitrary code execution via corrupted heap metadata,
> though no exploit has been demonstrated. All downstream consumers of
> jq_compile_args() that pass array arguments have been affected since
> commit b279713e (2017-02-26).
> 
> My name is Scott Seal, and I work at Trail of Bits. Per the instructions of
> my employer, I am required to provide the following disclosure:
> 
>     This bug was found as part of follow-on research from DARPA's AI Cyber
>     Challenge (AIXCC), where Trail of Bits built Buttercup, a Cyber Reasoning
>     System that combines static analysis, fuzzing, and large language models
>     to find and fix vulnerabilities.
> 
>     https://www.darpa.mil/research/programs/ai-cyber
>     https://www.trailofbits.com/buttercup/
> 
> Severity: Low
> CVE ID: No known CVE
> Weaknesses
>  CWE-415 Double Free
>  CWE-416 Use After Free
> Credits: @sseal Reporter

https://github.com/jqlang/jq/commit/3985b80ce50bd75c6eb5a97cb3348c3f835ca8e0
includes "Fixes GHSA-gf4g-95wj-4q4r."

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

