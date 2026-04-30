Received: (qmail 11323 invoked by uid 550); 30 Apr 2026 01:51:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11281 invoked from network); 30 Apr 2026 01:51:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=UKgb2VhZW2M9Reg5j3NgBL/M8Y5W2g7Vz+l6tsO9jEw=; b=
	ZNQBqKTIV5Evqd0rjf246wz3Sr9ZsKD8soRRzaqWooIIcVgpAsQfvxOyNtOsTWiF
	GrJedhpM3t/yPFNiNlfjnRBhZJYaEQkhGeZyHUgLfbAA9diZBNm5YdpSDDuGwl01
	stCJBlRSodIsBUYHDGkriM7kDFDTVJ0r8mRnmMyljimSlZ+UUT/pT1uGe2NZ8azx
	fQ13tX4R8Gnoz3ie6EIGDPVszPGsAShBCLe2xcSFTOwJWb7Gwn4PAWcrUPLTc1m6
	MjUpD1g7aM3nF31L5FF+6jV+Hj3PiKONR9EY50/lMCdHOVlnJWVOFqZthb1W6KtZ
	6Kc53SG63camMFo70mxdLw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VL1bbA9f9DmwMZWjfLQpyTAGRIe7ftEQq2WOy/gGtABnR4jx3hYKzb7R9+CjHnrB3zmgnLqOKGmv7MnAmhfkTnzar2UBPqzq3ioBBLm0JbUzOKkO/hK+U4prIIZYXmG8Cx/aA1+AbuLm6AjBGNzDCARrWzbl3bcRm1o3eN3XALIaNOoMwg96D29r+S+oVEgQQFA2Fe7k7xWgfAFIjmhMMU58uIaFUqv3nioEq0pdrjv77GmVR+QhPSUOZDHSWmrefGkrh5IStUrCyQOgk+UEswgHWW02bcHc3fLufAEg9oPOBmX+CdqIWh0kPIUWu0NYo/hZNvmbkHOdt1fd6Ci9Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UKgb2VhZW2M9Reg5j3NgBL/M8Y5W2g7Vz+l6tsO9jEw=;
 b=l8Px3frv5dGXHQPJmNwLvzptRp+ArSbjpTzdQBJeZsx8c5Jt1d76Kenkb/lnzW29SI+EeF2c5Ev/95DVpRPFXJxt0t6UW5gxJYMY16dTiGX2RuxgGW58CZljGOpaznNp+ctOhap7mw+QbSsoQyMXc7K0zxiCz8c4KMpZ8VpCuxwoD2sfNgHh+biC7BDyC+jYorKlBxLPph91u94yrmH3zfHez5b758t7Tt0P7Rjowype9Qb9osu87hInw3OUCnmsg5T62grgj+hTkImf7MX+NTdsdta2GgwoewYaHt0jnzKgyC/Dv4ZdZuSg9OYWSAKsziu+EfFATNKKZm0T0DqzyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UKgb2VhZW2M9Reg5j3NgBL/M8Y5W2g7Vz+l6tsO9jEw=;
 b=wMkXWf9AeaODuEtgof/oCQVlGpHLBBG6npJsPgDpdQ50XY9tKF68bt8tmB16U3kZ2SAK808NvZKzskV/7JKZJkZC2k1MzSD3/aiXCTnxKtlty0m39M0zLXhmkQ+5Re7ZGvJWlS+JPMTZehHzuJ0k0tegrs2Ze6Sr3v+capvpZTM=
Message-ID: <22380401-ca44-4a76-99c8-da6661ccf6b5@oracle.com>
Date: Wed, 29 Apr 2026 18:50:50 -0700
User-Agent: Mozilla Thunderbird
References: <87o6j124q1.fsf@josefsson.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Organization: Oracle Corporation
In-Reply-To: <87o6j124q1.fsf@josefsson.org>
X-Forwarded-Message-Id: <87o6j124q1.fsf@josefsson.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P223CA0004.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:510:2db::29) To IA1PR10MB6736.namprd10.prod.outlook.com
 (2603:10b6:208:42c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB6736:EE_|CY5PR10MB6263:EE_
X-MS-Office365-Filtering-Correlation-Id: da03b014-9e10-4edd-cd62-08dea65ae909
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	VDbsECHDuFKtg6Qa7EYF3THYvccOFHhys6+9yHA0ZFMZzxju74jg34xzSab7+lN1KhCQVzKeW3RQScocV4hxj0KUCAMLgC+wblJxPicWGRKfMDquKCSYs923KUeeiPQAKoDO4WXQLKyDMOD24eI0DDuRytgJb6pSfkQJZTSjlLJgpu8KDc5Uz8KS8+MgrLZuJ2r7wtwh/skXtvfYBifBMffMbu7GPlZxosSKo+M6pjba3x7RKz1eb2EFNeBa6UIP/TGFsgpCa/poM7mtjesad70bw0B+2FxTsc6V+DPKLmgZgKWM5y79FrxQOqtAxKJ+eNX4OH7pt3mGFVC9d/jA+dk0J/5wIr4jqti6xhlBfqwV5E+nq5zBaz0Rrdav/0DAnleucnn8BIL1gzqiA/Usm0wXerUlPP7xTytUTVbtbKwTcZ/ADeklKWfAM4iQjaoKlIG3DR6I7QselBcRYcZNDTasApaZgDEGhuU2TUXboOlitqyLwDDGBoKYGo8X6kwezdmBmYTbZg/5TB4BzDXDVZ1eQJ0aR4GRecLVX6O9w8L/jx8WjuQ52nBMApiXNlw3JuVtmwiNu6CJr9GgaCkCwtG3+7nwmFpjFzgDTf3BKZ9D73PuGWP8QrMEFI4sptTHvGHkHSRrswMZ5pox9evZ4VRat9me6bkg7m/V9ouWStTxAjovajN+tlbbrc7czsKL
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6736.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?R0owb1M4b3VxVENjdlNibm5hQ1hsbkNDZkNydUUzREk2Y21CTytZdzR5L1Rp?=
 =?utf-8?B?aUczeFNuWGhCVXBUQ0sxaTc4dXhmaFN4UDJ3am9NbHZ0R1k0ZmJhS1YxYnc0?=
 =?utf-8?B?UmVoYzJ6WnhzSHg1aWt0UVVsTzJ5dThITU80K3BJTkx4aHJZMVh6UDgyekty?=
 =?utf-8?B?L1hXZHZrR3JsM0s4aktldWZFaUxsK2FwYUR3dk5PUm9Mc2ZPTFFvWS9VVklW?=
 =?utf-8?B?L29qcVh1YzlwWHBjcGJLdnhKazRleEdaREhqak9OSHRGQTNEN2VhaTJ3OXB3?=
 =?utf-8?B?VTZCOVdwZUJNTEUrbitkbk5WOFRMMkY2N1FVbVlDNFVIdmx0K0F5Q3NnT2I5?=
 =?utf-8?B?WVFDdDNndTFpOFlIZVBWOS9SeVU4Nzg1SXF4R0RFakhMYjBmT2piL0hQbVVp?=
 =?utf-8?B?RlJNWmF1UUdxS2R6OWtzLzZ1STJUd0dGM05zbnpmbThodmJucnRvUUZHeHpX?=
 =?utf-8?B?Wm1iNElRd0Z5bWU4bWZuZUR4VUQxRmYxRlZKcFRxTE01b2RSb2hiMDlLN3VW?=
 =?utf-8?B?SEprL3cwS0N6TlhaaFZYRFpIRG1xN0JDSlRVZVgzbC9CM1pCelFXY2VFQWhj?=
 =?utf-8?B?c1dnOU5LeExWNWx4Y1Z3YmtzYUpQb1dDalpaenBucUMxcnFlTFIxbWU1c1pB?=
 =?utf-8?B?ODVNQ1JGaG9oOEFGUzRtbnlEVW9tc011VUFZN0U5T0hpeUh3MTBnMzhuV0ox?=
 =?utf-8?B?QkhxTlFZa2hSQ3FyeUg1bUhYRXY5akNuK2FLZDROM0dxUUdmbGZRRkhsY1Ra?=
 =?utf-8?B?c2VpNksyNmVtNGFwK0lxRVhPUzJsbkl0ekwzZWMzQmN1eFRYWlhnMHdvNm8w?=
 =?utf-8?B?YXBENnlJeUdCKzNycjE3bjR6eFVxZTVXV2loSkNtaUhZU0FVL3pkM2FmSjRx?=
 =?utf-8?B?NFlrZ0IrMjdmOE9lbXFZMkhzZUFyNk8veFE4S2dvZXRPS05mN3lYell4NWpB?=
 =?utf-8?B?M09rYkpvd3l6WEVGWFE0eTB0aXFHcTJEbGpGa0RqdnZQc1JOcElRcGlaeDc4?=
 =?utf-8?B?NEVWSzdydGlzZkZWSm9oZzg1TlJzWFZ2R3hrTXJKTUJjWnhkUHpqNHpnNDFQ?=
 =?utf-8?B?bFBXVGllNXRzb0R6dkYvYjJmbDBkUk80RkdTTDZBR2JVMW83MVZSbGUzSzBT?=
 =?utf-8?B?Y01ycU5VaXVqM2FDQWFib0tmNW1tQnhvRXhpL3EzZGRQUnFkcHFhTFNWUVFw?=
 =?utf-8?B?djZTZEhHSytkZHUxMml4RUZxa3R1UXZxWWJSUURqVDd4a3F1a3hjQnJsdHZM?=
 =?utf-8?B?MDczVk1xMmYrNDRZTTM1VGwrQ0kza0R0eFFUQzg0MlE4MFE5dksxbkkvTUVp?=
 =?utf-8?B?eVVsdkVSeXoxVDFsemVRVUt6aEhmVHNVQ0tXK0hjYVhkd3RZZWlVRDJzdmxh?=
 =?utf-8?B?L2dETURLYitPRUxCVzA5VEVoQm9oWjN3a09KaXdEbjNtK1FLcDZ4eUFXVWU0?=
 =?utf-8?B?Yjl2S0p3NGMrZHhlZVovQUxoM0hTanRBUUxhN3BlRUwzMm1JOXRGb01yTDBS?=
 =?utf-8?B?dDRuNmNVVCtkS0prZnpwQTJiRnFhSW5xYWpFM1V2cW5nalpLdEQ3WHpBMjBn?=
 =?utf-8?B?Z2FjbmJRM3lMcW1oVnVxakZhcGFCa1c5aVdqWUowaTVhdmlKampLdnRMTS9q?=
 =?utf-8?B?QXc0cUticG9IODdvMTYxL2VQRy8vekEyalhJaFc4OU9XOHFOWGs1N2tKZFZC?=
 =?utf-8?B?Yi8yNzFmcTRpSThRaWRrZ0RpZkMxMGNxeEdQSklBYWJqSndoNkpyMDZadXN3?=
 =?utf-8?B?NW53dEEzVUZCZWZVb1FkVjBodDFRRnB0U09Hc3V2YUtEVXFiUW8yOFRyRmFv?=
 =?utf-8?B?KzdONHJyb0VIU0FmaG1hZW9BMk9PVzd1ZVc4K2hDcVplVExhNm56SUNCNjN1?=
 =?utf-8?B?VDBjQ2tPWTloWmV1aS9RWnNIbEZ2SjhxYlVkTHUwTU1PcVc2d2lLOUs3Znpa?=
 =?utf-8?B?b25UdlBqSzViZytzdzFoWjJ0elZRei9FUzNJbkhHTThXeU1wcFhuZjFvdTRl?=
 =?utf-8?B?NlY2OVVSOUkwZ25jVEZLU2xpaGNSeXdvY2pmajZnTUxLa1RDVVF6eDlNd2lu?=
 =?utf-8?B?MXlWYWY4VWlURUp2UnBNTTBsT3pQNFoxcUFjYkpWa0dXRDVhNUFSVWhCdFcr?=
 =?utf-8?B?ejBhbWFOMXRmMXNJQVRQcU01K2RZU2R2MXJHNjg0U0IxWGZaSEJmS3dsT0NL?=
 =?utf-8?B?U2tNRHdEY1IzZXJxRTJrd3YvNGo5SmJzQWtVWUNLVTZpenFkcTZ3NUJnUWJp?=
 =?utf-8?B?MHFpVUY3aGNlQ2MvSWYyakMvSHdrWW1haW1KRmE4K1dhTTVUcnpsLytldTJm?=
 =?utf-8?B?REJGK203Zm0yWm9oamdQS3hWYnRTVmR6OU5Sa3FURUg2dzNHU3AvWFJ3QVAz?=
 =?utf-8?Q?HfFxKYQNeC5LIpAA=3D?=
X-Exchange-RoutingPolicyChecked:
	AZyo5ZhsvJVqC5IVPm0VaMQUmIvQpB2vtQF+srR7r+9dnV2Hq97mtRjjIE2aIu8leDKLQcW0SJWyFYqgHzGdxUs0pPt29obvRVJJSz1Qw6SVc4SCTBpfGCoRRIzbr8KgE9K8uv9efr0nL9HMm9g4Hk6AvnpBmXKUvoINANdXoEZIwpneL1rYR9KMNXKsDUMk6Nl8uXgT5dyZRi8SsSFpQH4SQ/rhMBNkdC2NB7MncCggxsdwac0FmExt7YPOtj8S6ijlt5iy0zjgOIcosHtCRBVc/vWlUZGsO+DB5yMSWxGOW0foqsHkpX9SwSww51txwUORyIPIpx7EAbMfcdfHpA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	uybsBzzgxoPAN/B+r33iaXKAx8hBvpV3NdbSKP+4BF5uS1F37zPi8m0Rb/nm0mkPxrijBRYhh8GjzkecyXNM7nj9hOSwBGIpFufp51YTOotWvAOqLIGxGhqkus1xw4XCDXW6nLi2rRLerQX4oIR/ZvXkahUuSR3DSKMwEIi4jZ+3C/5OYGcfbct+q6xWEQHsN8eE48H1g1uRlklAOsa482TwNTVcv0ZjjSGl/KpjDsI8O5/TuO3w1QeQUbcseRDja/VzeoPhrvhygQ3ySg7X8EJVsG1DsDk4jYTYdZBg3+FaVCWQQLUi/7FlYHrudahvPiJt39vSK6pEf54IJ50i2htM7hG6KaRSH1oNxWO+Gi4vvgtmHu2O9r1riDteDzX+Hv+LuLkBEKwqR7UZJVIwkv701gcHyp/fHG+GUHGAOvS9uKRK/JWt+7CFb1+NU7o82XZzXdIBFrGEDodTTbEo3Y235VQ1IeovKMgwfhwZj98dQhTqsmQYlv/BV0kc6rY/kNLDT0wEtZKIzxpJhO+Y45vanQ/ngw1Qkoszx1dBjkz/ev8FfgAne1GWBaAGlGiG07nlA0hxjWc9ft5onoda/Gin5deKlO0woqSocj2XXYk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da03b014-9e10-4edd-cd62-08dea65ae909
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6736.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 01:50:52.4884
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vxXMGZXJWFU49wMDaZ/ylHMGmTc1nd1rE9hT1BZz5Nm/i8nJkystqW3YAgDlBhwxBg+x4a1iHGZUsUOlqokS0G/hEYoLU9dqlxzN6AkDK7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6263
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-29_02,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604200000 definitions=main-2604300017
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDAxNyBTYWx0ZWRfX0d6JnhjygbjT
 x3Nv2MWTZTdbIgL09iOPG4D1BqA+qFao4xnVQaKl9EnyEgXeNuFkqqb+xs7ZILgbKC64FLUepO0
 /heOnaT/MuHvWnvrCUr1qaPQvrzy/52hnF4SGCW5DESgJoyz0mbqsvaUVkS8GWss9aLpJd77eZX
 EsJQFOwMitDbQ74S5gtGD5G0TKdeZARc0ZM7Cg2mHxE+3fcXkMeK/l7CnC0B5MmZOuRyKfzoot3
 PytJ9QBoCP67PlUU0nYMO7Cjbpk+70Bx2CRgNk04BuKAh4EPSUmUfU3vHNwSXYmqON5dalRTXdL
 HqUSNY6r1bpFrwKYAkUHAdjo7P92L9LcwPo10VXMU324t2eju2gEpKu2Z+cmPk1gDjwYy8iRQJV
 hwdnzIiwelHrfi3WO5WQ7LH0VsH5xQjHAkke4lPUS+rWJ6yGh3S6pme647XO3FucNBepKkGdaC4
 56BfbAl2ZW+9aKkIi3Q==
X-Proofpoint-ORIG-GUID: jhxWgtgLgPXMajOnnZfkKnUA-UUiCwpP
X-Proofpoint-GUID: jhxWgtgLgPXMajOnnZfkKnUA-UUiCwpP
X-Authority-Analysis: v=2.4 cv=E7v9Y6dl c=1 sm=1 tr=0 ts=69f2b593 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=mDV3o1hIAAAA:8
 a=QxaIKMp8AAAA:8 a=XkRKQH6RAAAA:8 a=SXzkmgPmAAAA:8 a=H2kMXXDjAAAA:8
 a=7mOBRU54AAAA:8 a=9bdOxnVxeF5K5s0dN70A:9 a=QEXdDO2ut3YA:10 a=O8hF6Hzn-FEA:10
 a=dADq5_T5xLflyX6sNnnI:22 a=1gUyE30hU_ULiMxJiLUW:22 a=EWLf6cg6Bh5aS0AxDgDu:22
 a=UQGQp_6C1EM-8DAw1ZOj:22 a=wa9RWnbW_A1YIeRBVszw:22
Subject: [oss-security] inetutils-2.8 released with 2 CVE fixes




-------- Forwarded Message --------
Subject: inetutils-2.8 released [stable]
Date: Wed, 29 Apr 2026 16:58:30 +0200
From: Simon Josefsson via Announcements and Requests for Help from the GNU project and the Free Software Foundation <info-gnu@gnu.org>
Reply-To: Simon Josefsson <simon@josefsson.org>
To: info-gnu@gnu.org
CC: bug-inetutils@gnu.org

This is to announce inetutils-2.8, a stable release.

GNU Networking Utilities (inetutils) contain traditional network
clients, servers and utilities.  Tools include ftp(d), telnet(d), inetd,
rsh(d), rlogin(d), rexec(d), rcp, tftp(d), talk(d), syslogd, ping,
traceroute, whois, hostname, dnsdomainname, ifconfig, logger, and uucpd.

There have been 55 commits by 5 people in the 19 weeks since 2.7.

See the NEWS below for a brief summary.

Thanks to everyone who has contributed!
The following people contributed changes to this release:

   Collin Funk (16)
   Erik Auerswald (2)
   Guillem Jover (5)
   Paul Eggert (1)
   Simon Josefsson (31)

Happy Hacking,
/Simon
==================================================================

Here is the GNU inetutils home page:
     https://www.gnu.org/software/inetutils/

Here are the compressed sources and a GPG detached signature:
   https://ftp.gnu.org/gnu/inetutils/inetutils-2.8.tar.gz
   https://ftp.gnu.org/gnu/inetutils/inetutils-2.8.tar.gz.sig

Here is minimal source-only "git archive" sources:
   https://ftp.gnu.org/gnu/inetutils/inetutils-v2.8-src.tar.gz
   https://ftp.gnu.org/gnu/inetutils/inetutils-v2.8-src.tar.gz.sig

Here are Sigsum Proofs:
   https://ftp.gnu.org/gnu/inetutils/inetutils-2.8.tar.gz.proof
   https://ftp.gnu.org/gnu/inetutils/inetutils-v2.8-src.tar.gz.proof

Use a mirror for higher download bandwidth:
   https://www.gnu.org/order/ftp.html

Here are the SHA256 and SHA3-256 checksums:

   SHA256 (inetutils-2.8.tar.gz) = V7PPT3dVWZKIHluioJpjsFqixWNCpg7UMFtfRZODkLU=
   SHA3-256 (inetutils-2.8.tar.gz) = RVBNQFrj92kVzDa6adlwNnABhKqQSjG7ENhRvLJ4s5k=

   SHA256 (inetutils-v2.8-src.tar.gz) = p2u2aAYMXSgmak3NUzy/SOmi0lQtG+PlNy5DB9U0zVs=
   SHA3-256 (inetutils-v2.8-src.tar.gz) = nhQ5A77kAPmT2vZduZyjESeRFVnD0gneNP8lUKdG4wg=

Verify the base64 SHA256 checksum with 'cksum -a sha256 --check'
from coreutils-9.2 or OpenBSD's cksum since 2007.

Verify the base64 SHA3-256 checksum with 'cksum -a sha3 --check'
from coreutils-9.8.

Use a .sig file to verify that the corresponding file (without the
.sig suffix) is intact.  First, be sure to download both the .sig file
and the corresponding tarball.  Then, run a command like this:

   gpg --verify inetutils-2.8.tar.gz.sig

If that command fails because you don't have the required public key,
or that public key has expired, try the following commands to retrieve
or refresh it, and then rerun the 'gpg --verify' command.

   gpg --recv-keys 51722B08FE4745A2

   wget -q -O- 'https://savannah.gnu.org/project/release-gpgkeys.php?group=inetutils&download=1' | gpg --import -

As a last resort to find the key, you can try the official GNU
keyring:

   wget -q https://ftp.gnu.org/gnu/gnu-keyring.gpg
   gpg --keyring gnu-keyring.gpg --verify inetutils-2.8.tar.gz.sig

Use the .proof files to verify the Sigsum proof.  These files are like
signatures but with extra transparency: you can cryptographically verify
that every signature is logged in a public append-only log, so you can
say with confidence what signatures exists.  This makes hidden releases
no longer deniable for the same public key.

Releases are Sigsum-signed with the following public key:

   cat <<EOF > inetutils-sigsum-key.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILzCFcHHrKzVSPDDarZPYqn89H5TPaxwcORgRg+4DagE
EOF

Run a command like this to verify downloaded artifacts:

   sigsum-verify -k inetutils-sigsum-key.pub -P sigsum-generic-2025-1 \
         inetutils-2.8.tar.gz.proof < inetutils-2.8.tar.gz

You may learn more about Sigsum concepts and find instructions how to
download the tools here: https://www.sigsum.org/getting-started/

This release is based on the inetutils git repository, available as

   git clone https://https.git.savannah.gnu.org/git/inetutils.git

with commit 0502102477fc33eb0fd5f13011aaddda19a56e01 tagged as v2.8.

For a summary of changes and contributors, see:

   https://gitweb.git.savannah.gnu.org/gitweb/?p=inetutils.git;a=shortlog;h=v2.8

or run this command from a git-cloned inetutils directory:

   git shortlog v2.7..v2.8

This release was bootstrapped with the following tools:
   Gnulib 2026-04-19 6466c4b5321eb2625a25e582516c0fa4a5261d05
   Autoconf 2.72
   Automake 1.17
   Bison 3.8.2
   M4 1.4.19
   Makeinfo 7.1.1
   Help2man 1.49.2
   Make 4.4.1
   Gzip 1.14
   Tar 1.35
   Guix 1.5.0rc1

NEWS.md

# Noteworthy changes in release 2.8 (2026-04-29) [stable]

** telnetd no longer supports the --debug (-D) option.  Previously, it
would open a predictable file name at /tmp/telnet.debug, following it if
it were a symbolic link.  The data printed to it could also be
controlled by a client.  These behaviors could be combined to result in
a local privilege escalation.  Reported by Justin Swartz in
<https://lists.gnu.org/r/bug-inetutils/2026-03/msg00040.html>.
Guillem Jover also mentioned that another user can create the file
before telnetd does, keep the file open, and snoop on sessions which may
include credentials in
<https://lists.gnu.org/r/bug-inetutils/2026-03/msg00048.html>.

** telnet no longer leaks the value of unexported environment variables
to servers sending the NEW-ENVIRON SEND USERVAR command.
Reported by Justin Swartz in
<https://www.openwall.com/lists/oss-security/2026/03/13/1>.

** telnetd no longer allows clients to write past the end of a stack
allocated buffer, possibly leading to remote code execution, using an
SLC suboption with many triplets using function octets greater than 18.
CVE-2026-32746
Reported by Adiel Sol, Arad Inbar, Erez Cohen, Nir Somech, Ben Grinberg,
Daniel Lubel at DREAM Security Research Team in
<https://lists.gnu.org/r/bug-inetutils/2026-03/msg00031.html>.

** telnetd now ignores all environment options by default.  Environment
variables passed by the new --accept-env option can bypass this
restriction.  This is necessary to avoid vulnerabilities similar to
CVE-2026-28372, since many different environment variables can be used
to escalate privileges.

** Fix telnetd remote authentication by-pass vulnerability.  CVE-2026-24061
Reported by Kyu Neushwaistein.  Initial patch by Paul Eggert; further
improvements and security advisory by Simon Josefsson.

** Prevent privilege escalation via telnetd abusing systemd service
credentials support added to the login(1) implementation of util-linux
in release 2.40.  CVE-2026-28372
Reported by Ron Ben Yizhak@SafeBreach in
<https://lists.gnu.org/archive/html/bug-inetutils/2026-02/msg00000.html>.

** telnet: Drop everything related to TN3270.
The code did not build (several missing required header files) and
even if we could fix it, we have no way to test it. It may contain
security vulnerabilities.

** inetd: Adds new --foreground parameter to avoid forking.
See <https://codeberg.org/inetutils/inetutils/pulls/10>, patch by
Guillem Jover.

** Paths uses $(runstatedir) instead of $(localstatedir)/run for PID files etc.
The intention is that this is a no-op for normal installations, and
the files should end up in the same paths because the default value
for $(runstatedor) is $(localstatedir)/run.

** Some compiler warnings are now enabled by default.
Disable with --enable-gcc-warnings=no.  Based on the Gnulib
manywarnings module, see
<https://www.gnu.org/software/gnulib/manual/html_node/manywarnings.html>.

** configure.ac avoid implicit declaration of tcpd.h hosts_ctl.
Patch and report by Mike Gilbert <floppym@gentoo.org> in
<https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00026.html>.

** tests: Improve libls test that doesn't work reliably across file systems.
See <https://codeberg.org/inetutils/inetutils/pulls/9>.

** Older ChangeLog.? files not included in release tarball.
They are still available in the git history.  Saves around 0.7MB
uncompressed in the release tarball.  Compare GNU CoreUtils
https://cgit.git.savannah.gnu.org/cgit/coreutils.git/commit/NEWS?id=4e112e90b11b70bd6dc5b441f820803fc2aadd69.

