Received: (qmail 3683 invoked by uid 550); 18 Feb 2025 19:09:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28387 invoked from network); 18 Feb 2025 19:06:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=vAfPgNR3W2/pmmVW
	vqiTu99dx/9/DtSAKeKrEqqQLOg=; b=c08pkyX0NKLBgl0aUhaTZuFCUz9HgVsj
	/EY8EC1MB8Iv8VuWwSlP3N9/6VNUJp6aJvxiOoLWCWNbWQqC9lbtkIzTTcXDEPAM
	PPTWiPTzGNZ1dVK4cj1m2fgsWVt0TYST9SMm+f2QTNDH0hKaAHB+WmCw3NOfbB5J
	j2ig2Y/NJeZPRjAmBdDsUkbQ4gVzieIq4kY+MjmZUDKSBKTwGCONNfDtrVX5LVYH
	bwaZP0ZWp1CkW+YpOkmjahi/Bf2w/tqcgFKdBwSrvzdpgF1LWpV7X9GPqKRblYZB
	E1Y45VU7CHx5uEg05IZUVweprtxI94eAz/eLH8Y/OXhHWzGEn0p7oQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eqCgR2V0Ju5LgOG47YyWvPxjVa1Y5L5TgY3EiRKoTOXqjTznadyTd/r10j/mRnano2YRrUp7MNRDcjCvKnZXfA9LLSX2oaFCuSU+iBPL4KilPyISwSd019wHxk+Qc6ejK1PB1djSHL0PfMV9llLdjj070pTyui0iSqVmfjZZXXGsucbY7Sv13n8wjMYeSGWet3Bix5wnHQu40lCO0qv7tUvfXcSIK3fFVWEavIRG0NDu5nHsajGLvMeuJG8+0mMphoHk7aBslnxFXYV5vBSPBW/pXizZcCJ65d7DwEUJEsjKa0QEQmMIUPzC5kmY6NTVbkPInvk9MWpn8P9TwV9MjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vAfPgNR3W2/pmmVWvqiTu99dx/9/DtSAKeKrEqqQLOg=;
 b=F3pt81Sfqr3sKv4Mu5ggxP9CfmlZ4LfSDTc3OCoOB/Pk1v9qYC2SV1hh7WewlznjuxxdPrvom9Y9y55UazlLr9yI0QnMfyIWJ8PAA2Pda/9+9El8wGwOFJrAywPEoKsTvtQWsq3uwNcpc1dQiHlOp7UnEfNO9v7IFFWYDpsIcjR9NJapIShkuV+7RVFz53Q8vZUHdlz5/lAT9PsmzOcX2DSNoNKLVvdqwOoUW9OWHjiZt6C9WdS0d/ggq0n52TCPE1W8kRMZ/N4h+4YE67XTl9rl7pDgvzrBU9rWLvaibRCmotrNgQtxRA6PBcXkJT+6NWBHb0FLnZrBGeWguDY5RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vAfPgNR3W2/pmmVWvqiTu99dx/9/DtSAKeKrEqqQLOg=;
 b=MGo0KNpYxwd+yq4rIpiFg7SYECtkwnQrIUldg8pTlIwnw3OJbHS0lZVhRMCTjpcXsXnM7AYumj4LdmFwmNf91W6L7tCpPRgQu6HA1Ks9rd6kv1AWosc5guJaS9085UsoqNXONLQe6g5FBM1V8OBUTzXoC1ecj2N92tZ61/5k/w0=
Message-ID: <4e7d1ac7-f933-4ec8-95a2-df95100988e7@oracle.com>
Date: Tue, 18 Feb 2025 11:06:19 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jan Setje-Eilers <Jan.SetjeEilers@oracle.com>
Autocrypt: addr=Jan.SetjeEilers@oracle.com; keydata=
 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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0036.prod.exchangelabs.com (2603:10b6:a02:80::49)
 To SJ0PR10MB5834.namprd10.prod.outlook.com (2603:10b6:a03:3ee::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR10MB5834:EE_|DS7PR10MB4846:EE_
X-MS-Office365-Filtering-Correlation-Id: ec1c4049-cfd5-4f01-1fa0-08dd504f53f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SG1QN3hpQjFkazhraVFBMjFzaUJKeEwyR3Frb3hndkIyQ3gwbnA0N3l6TmRj?=
 =?utf-8?B?U25PZmppeUM4ZnJEOXU0Q3haRXlaTmcvZTh2cEk1UkpsZGhheDVTdnZ0WTFu?=
 =?utf-8?B?VkU1cWh3U0JQbHBteUxnbUY1NHQxSFFWanZic3JqRUVaVCtjUE02V3krRmhq?=
 =?utf-8?B?VTVoN1A1NVFGb09OcFR6MTJOaXlhUlgxV2JwS0JBL0dhQjI5cG0zTHBsNXpS?=
 =?utf-8?B?OVQwSmRGSm5OVlhBZUQyZzNZNnpHRCtCWkVaWkhiRS8vdGYyR1dodVBGSW1j?=
 =?utf-8?B?Rmp0R0h6UmFoUjdaMXhXZFRYLytYYytzczBrM1JOTWlEK2phcXVuQyt4TjI5?=
 =?utf-8?B?TDRNa2NQRlVtaFBPSzUzUVNVNWV0NmdvVyt6VVB3YmNSTkljK2J5Mzc3Kzcx?=
 =?utf-8?B?THp6eDNaZ29WYjJDQTdkZHEyRzBid3hLQy9YTFRRbXN4RlVmZyswcnJxNHpx?=
 =?utf-8?B?bFUreXRxbDRMalJweng5ODlzSlg2WEZIbWxUbGNFVm5lb1FVbS9Lck4rZG9G?=
 =?utf-8?B?c0RPSkU3L0lIWXh6TVNPd1l2MkFJdGtxNi8wSEhoQ1l4WWNDZzQvVDNOb0pE?=
 =?utf-8?B?cjU0dGhQVk9wZFhkcXRwVTN4Z0psbDNXb2tJd09BNDhvcU14SkJzdDZaK3hJ?=
 =?utf-8?B?eWZFUlI4SUs0eVR6dEdlRERIRW9FWW9ZQmREK0dMZis1ZFFLR1BRUDFSdkN4?=
 =?utf-8?B?b0w0enlxalQxckoxMEFmUmoxNjI0Q2dwYmlQNUE4bWQ4VWVjQ0J5cjRibHda?=
 =?utf-8?B?SFNUZ2N1cjgveXpFTk0rR2pXbk5CVk84Mk0rdHRkZzFGTHNpdDlUOWJ5MjIw?=
 =?utf-8?B?ZEhTVlNUS1dwSVYvNUJSUXBLZzZXTDFvbnZSbWVNV28zdXFBTzBEMzcrY0ZH?=
 =?utf-8?B?UmdpYlpyY1kzQWNqZzZsbTJWUzhmTy9JVEc0SDM5cE1DWHdaSDgvc2JkV1My?=
 =?utf-8?B?RzhVUXprTEc0SW1sd0VVSWRXa1pvL0dqa2ZkTXI2V0ZaWWtsR2VIZ1dSWURm?=
 =?utf-8?B?RzRUWnZock5ta2dyMWJvTFIwT1hsbjhUWVdtSHRpVGhFS1pZMWI0UjY4b2kz?=
 =?utf-8?B?dE1nYmt2SEgzeWhjYUJQeHhYVnRtL2I3S3Z1YzVVY29DWUFaZ0FxTVZVMlZI?=
 =?utf-8?B?SjFIbjdndWxJdkV3dktsdUcxUGR4dXZNdGdjYlZsVm02YkgxSW5ZNnBIM3ZD?=
 =?utf-8?B?dW5WVE1GVWkrc2RYV1RRY3NESVdFZFp5YlFTUzJCckF1dFo5QVNFQU1JUTdp?=
 =?utf-8?B?QzZoNU9BYmlsc0dyMkEzejUwWU5tUTRvOWd4alRyWkVMcVpVT0NzekNvcnlZ?=
 =?utf-8?B?VUNKcGlzZVdyUGg0LzdmaU5qSXAyZ3V6Qk1IT3hjaUFsbUdOKzRIOS9iZE5m?=
 =?utf-8?B?UGFzMjRpWnlkVUtTTTlHL1VnOHFCQ3kwNUd1YkxiY0RFNXdWSUNTMWp1VzhQ?=
 =?utf-8?B?blUyR05KWk5OVldtZDZDVmR5Nm5SU3dDM0xpNnRhUlc1RDJ6RUxzc1p3dHBj?=
 =?utf-8?B?S09WeUhlaDdYelZndmJycnpDU0ZMcnJMUVA5Kys5YTFnOUlXdHBucXhvT245?=
 =?utf-8?B?ekl1Tzk0MlRhTWRueWxjd1R1amU0emF2ZjY2SHlCRGZremYxWkJ1S0NFbjI0?=
 =?utf-8?B?MjBESmdZcFl2cDJrUkRIdlFsdTROQUlGZUtLbmprdkxOay9oY3RzRzNJbEJ6?=
 =?utf-8?B?UWs1NzBDUjBzT0lhYWhMaVVOZGc3MkNMdnF1SVcxOXVGTW45R29KVHlNSjlL?=
 =?utf-8?B?bDEvQlhXK0JSa0cvRW15bFplSlliaDF4N0Rzb2w3YVltc2tOVk5QcWVXLzNT?=
 =?utf-8?B?bmNJUFdqYU5Tbm93eUZNQmlMQzlCd043YXhYLytOOEtuL3NYMFo0L0k3TFNw?=
 =?utf-8?B?MTNIcnlXQVBGL05weUlZKzNWL3VLaGhvclZldFRxVUVXNGc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB5834.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dWtISGN4MGUwUEFWZ1F3R1ZPRk4rMkFZRjNyQ2V1amNGK0cvSXM3VUVFV21U?=
 =?utf-8?B?ZVdWcC9WUEFYc044VWRsK0FJT0p4QXplMS9ESXM5bWIzVHZqOVJkN3FUQTh4?=
 =?utf-8?B?dGpjeDJiREpxMGh6dmZxTnc4NUYva0JyOHVsZkZ1ODNrRTJLWElObTFpTXFm?=
 =?utf-8?B?Qk5GSnhLMXNCSk50SHU3R1l3c0dKM29ZMEkwM2YxTGV6cGdCdE1CQU5qWEx4?=
 =?utf-8?B?RVpPK1Bud1Y4Y3hHV2Zabk5FbXJybkV1ZXovL3E1bXBzYmEycUNqNU02Mm4y?=
 =?utf-8?B?WDJoUXRvK05rbDhvTUUxb2xLVzdEd1BoM1BOWHJ0anoyQmpMcjJydlpSdEpG?=
 =?utf-8?B?TmZWZzFMMXJlVU5NSDlraDNnN1dwSVYwYXNIOTVVV0NlNmlaVGR4R2ZGejcz?=
 =?utf-8?B?Wm82bmtBa2EwZ2ZpZGRhSXdJYllxQU9GMWhMSjdrOHd0RERZS2lKZ1AwQjl4?=
 =?utf-8?B?N0ZEN1pUQzM4WDR6aG9CSEJjTERnb25EQ2VFNXFxMk5zSTgyZ0M4YTkyU1hh?=
 =?utf-8?B?V1dkdnBWOGY1b2xaSFl3Z1RkVEk0UXBQc0FsYmhNRHp0blIwMGxOY0FQZjI0?=
 =?utf-8?B?Vk5nWk92YUg2MjdSTFRVWFVtRGd1SUxxV3h3YmVCeGFvVTFNZDc2Z3NreTJF?=
 =?utf-8?B?dVprNDRSVnpZd2Y3Q0tpeVVxNDk5RE1nSC9wUU5BNTBCU05YdVhuQ3cvaWcz?=
 =?utf-8?B?U0gvZGhyTy9OcjVIejF3TUZZOWZEK3h6clRxeG15RFRtRXpTN2FTM0ROcEtq?=
 =?utf-8?B?UjU0L01JY1k2OHplU3RydSt6dWR3YzBFZllsYjJxUVlpMEJxN0NBSmN5S2dK?=
 =?utf-8?B?NC9kRU9lM3BYUmhhY3JOY0dDZTl0a3A0cVQ0M1Vqa0U4K1R1ZnJwSGRNYWRD?=
 =?utf-8?B?MWR4aGJpRG55dy9Eb0lPaHJ4RGV0T1VPeUdLais4blBJUjJnaVc3OVNOY0xG?=
 =?utf-8?B?Y3dNYXlKTzYwMTVTbE5xNng0K2luZkdTZG1YRXdnVGI1aHRjQ0FIdk5pZzlM?=
 =?utf-8?B?akJyWmpJeDNzdUJEYVpaakx1SDBzUzFvWC9iK3FwMFYzaHlvRld1L3lkREJJ?=
 =?utf-8?B?bkFCdHRzbkQyQXdMQTh0UFlsdkJpTFZoU0xXSktwUXdwSHZkWGl1OFpyT2Y1?=
 =?utf-8?B?MmRmbDQyUE40OVlXdmRDNUVLZDF4K2thT0lUQjhKb0xqSmxXTVVrMFJhTUhm?=
 =?utf-8?B?NUs3dlhSK2xyait0cWxjSVFIZlc0dzFKY3daaGdGSEQrMGUyenorL0ZldkpE?=
 =?utf-8?B?YWFlektqbWJFY3pxdG9MaC9QOFRMU05wZHIvb3NkaDk4dllkeThaOW5uZ0Nx?=
 =?utf-8?B?MTVNblZEdVl3d1FWVFE5QlhZbmRua1hpWnAxNStJN0Zhek5ValBHeGsyUUZR?=
 =?utf-8?B?VXpoV01ObDJ2S0ZRZjR4Rk5pbnRENFJ2UkdhejcyUFhpbGVmcW9sd3JXVTBt?=
 =?utf-8?B?VHFseERQYUx3b09VeFEwTTl6bWxBdHR4S2xkV3ExbW1qcW52Q2VmbU9sVVZD?=
 =?utf-8?B?QktuQmlTNUhQWklwL29PR3ljU1NrdGpaNTZDbk9ybVl2SW95Vk83RmsxU2dH?=
 =?utf-8?B?c012KzNhS3E3dU1Ia1VzVTl6UVJTbEVpNlhvcFZHcU1YMHBETzBuVGtNaEVN?=
 =?utf-8?B?d0NBZVVocWlybXhnVURPTWJZTWpDa0F6SlU1VWhYSGJyWHQwN2NiZTczZTd1?=
 =?utf-8?B?MDVwOU5yeTlXZDBEemdZWUtTblNISW1EOGpqUkNCUDJrdkpDaUFmZDl5RXVO?=
 =?utf-8?B?L3RkL0VwTWpFZll1KzUzb3R0WU5WMGNJQTZnWVNlUWlCU3gvOVlZVEtCb2Ri?=
 =?utf-8?B?bXZ0akVlUXBDYlpnNnhheDVqMUdVUkhlTFJmZytTVkwvck8ycExmbk1WWE43?=
 =?utf-8?B?Q1AwSVBkdUx4OUJNcE9Jd3ZrNlBBZkIxSkt2Vzh4M3FTc3BsQzVYanN1aWgz?=
 =?utf-8?B?aDN4MlQzY0dVdlNWUkNGd3V5NlIyRkV5TWR4dDBaMk95M08wNUhQK2RnWVJZ?=
 =?utf-8?B?YWlTaTFBWlQ5cEFQaTRteVlkN3RSZDkvOXlEaGpBTG82Q3lUS084WmlQNXVM?=
 =?utf-8?B?UUY4R0FDNjdNYlJyamFjc2xMM29ZbXBENmsvSHdHS3ZzRy93aVUreVR0eThL?=
 =?utf-8?B?eVBubVJNUTd4bTJ6WkdtakkwWlJDZEZCbjFIYUw0WkxSSSsxNzNDOHZ2T1ZD?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	nwPPMPTsOan9JNpi4u8Iodcq7s6paVx7jJf4XWrIZuF8CogsQPzdsGwtybo2a4lSUl7+J8Qb14mFH2utID2WrUvI+x7B9GrswkZjLsUJpzhaY2mmHhY+96PLHPy6TqP6tp4kPV6oUcxIH5hls4G4PaA4KZV9IgVJELJT6cERY64nk9cfYlkFUzhfghPaHzDzgD7CccL+A9sYxl91LRfHIBs9XALjfi1bfmi11sk8IDP7CqTXJ+36AcZ0Jsch3nTMu0nd4cfIuLXqyPZWqvENNdiY6kIrC8oezO6pbgwVx5i4QvCEKYuMCH/Icnl6FkAx8rPR92eqGJiCOQYUtQRXiaSNvgGK9KwCdLJEPeP0Avg/J7glha2nwfG5qeczO5s+Gl5tCO8I38s646ZgtEhXReoD9bZQMCos24s8zYvdnuDyLXK3mB50fCgdR7taOrDV3s0KnSRpwjYwWZowmDg+yW6MKI2crv6nYqPyJbLPaUrz7Phc7N3MatxYH1pK0PhKr4j6YzUE7cxl9vo/9DWpm+L3GXcqymCqpUH/SMu0QNSiIbYtZGB1TQpTcazimz8A4N/h9yqhOSrf9FVt5iaBK462kl+Wt10X9dW3/AezXrk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec1c4049-cfd5-4f01-1fa0-08dd504f53f9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB5834.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2025 19:06:19.9131
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HaI75Pbo5QbppbaqvmazntpIT7/ygipFOI3Nd1FDDFplW5xAhdQyShvi9Hiv3ZIo6o8i5eP2xwgbkB1JWyabooP9KRAWXiTyBrQK+w2YAPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB4846
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-18_09,2025-02-18_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2501170000 definitions=main-2502180132
X-Proofpoint-ORIG-GUID: -xSAV4IrYcLVpwUctEvidsjfnY5kTKiq
X-Proofpoint-GUID: -xSAV4IrYcLVpwUctEvidsjfnY5kTKiq
Subject: [oss-security] GRUB CVE disclosures



On February 18th at 10am PST the following CVEs were disclosed to the 
public via this message sent to grub-devel:

https://lists.gnu.org/archive/html/grub-devel/2025-02/msg00024.html

  You may expect the CVEs to go public in the various databases in the 
coming hours.

1) CVE-2024-45774: reader/jpeg: Heap OOB Write during JPEG parsing.
2) CVE-2024-45775: commands/extcmd: Missing check for failed allocation.
3) CVE-2024-45776: grub-core/gettext: Integer overflow leads to Heap OO
                    Write and Read.
4) CVE-2024-45777: grub-core/gettext: Integer overflow leads to Heap OOB
                    Write.
5) CVE-2024-45778: fs/bfs: Integer overflow in the BFS parser.
6) CVE-2024-45779: fs/bfs: Integer overflow leads to Heap OOB Read
                    (Write?) in the BFS parser.
7) CVE-2024-45780: fs/tar: Integer Overflow causes Heap OOB Write.
8) CVE-2024-45781: fs/ufs: OOB write in the heap.
9) CVE-2024-45782: fs/hfs: strcpy() using the volume name (fs/hfs.c:382)
10) CVE-2024-45783: fs/hfs+: refcount can be decremented twice
11) CVE-2025-0622: command/gpg: Use-after-free due to hooks not being
                    removed on module unload
12) CVE-2025-0624: net: Out-of-bounds write in
                    grub_net_search_config_file()
13) CVE-2025-0677: UFS: Integer overflow may lead to heap based
                    out-of-bounds write when handling symlinks
14) CVE-2025-0678: squash4: Integer overflow may lead to heap based
                    out-of-bounds write when reading data
15) CVE-2025-0684: reiserfs: Integer overflow when handling symlinks may
                    lead to heap based out-of-bounds write when reading
                    data
16) CVE-2025-0685: jfs: Integer overflow when handling symlinks may lead
                    to heap based out-of-bounds write when reading data
17) CVE-2025-0686: romfs: Integer overflow when handling symlinks may
                    lead to heap based out-of-bounds write when reading
                    data
18) CVE-2025-0689: udf: Heap based buffer overflow in
                    grub_udf_read_block() may lead to arbitrary code
                    execution
19) CVE-2025-0690: read: Integer overflow may lead to out-of-bounds
                    write
20) CVE-2025-1118: commands/dump: The dump command is not in lockdown
                    when secure boot is enabled
21) CVE-2025-1125: fs/hfs: Integer overflow may lead to heap based
                    out-of-bounds write

Fixes for these CVEs have been made public at the same time.


There will be an upstream shim release in the near future that publishes 
updated Sbat revocations that will allow older GRUBs to be revoked. This 
shim release does not involve any CVEs, and new shims do not need to be 
coupled to this GRUB disclosure. For information on how to deliver 
revocations, please see:

https://github.com/rhboot/shim/blob/main/Delivering_Sbat_Revocations.md


Detailed evaluations including scores follow:

1) CVE-2024-45774: reader/jpeg: Heap OOB Write during JPEG parsing.

Extra SOF0 marker in JPEG file may lead to a out-of-bounds write. An
attacker may leverage this by crafting a malicious JPEG file, leading
the grub's JPEG parser to fail the bounds checking in its internal
buffer resulting in a out-of-bounds memory write. The possibility of
overwriting sensitve information in order to bypass secure boot
protections are not discarded.

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.7

2) CVE-2024-45775: commands/extcmd: Missing check for failed allocation.

In grub_extcmd_dispatcher() function grub2 calls grub_arg_list_alloc()
to allocate memory for the grub's argument list, however it misses to
check in case the memory allocation failed. Once the allocation
failed, a NULL point will be processed by the parse_option() function
leading grub to crash or in some rare scenarios corrupt the IVT data.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:L/I:L/A:H - 5.2

3) CVE-2024-45776: grub-core/gettext: Integer overflow leads to Heap OOB 
Write and Read.

When reading language .mo file in grub_mofile_open(), grub2 fails to
verify to a integer overflow when allocating its internal buffer. A
crafted .mo file may lead to the buffer size calculation to overflow
leading to Out-of-bound reads and writes. An attacker may leverage
this flaw to leak sensitive data or overwrite critical data possibly
leading to the circumvention of secure boot protections.

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.7

4) CVE-2024-45777: grub-core/gettext: Integer overflow leads to Heap OOB 
Write.

The calculation of the translation buffer when reading a language .mo
file in grub_gettext_getstr_from_position() may overflow leading to a
Out-of-bound write.  This may be leveraged by an attacker to overwrite
senstive grub2's heap data, eventually leading to the circumvention of
secure boot protections

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.7

5) CVE-2024-45778: fs/bfs: Integer overflow in the BFS parser.

There's a stack overflow when reading a BFS file system. A crafted BFS 
filesystem may lead to a uncontrolled loop causing grub2 to crash

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:N/A:H - 4.1

6) CVE-2024-45779: fs/bfs: Integer overflow leads to Heap OOB Read 
(Write?) in the BFS parser.

There's an integer overflow in the BFS file system driver. When
reading a file with indirect extent map grub2 fails to validate the
number of extent entries to be read. A crafted or corrupted BFS
filesystem may cause a integer overflow during the file reading,
leading to a Heap Ouf-of-Bounds read. As consequence sensitive data
may be leaked or the grub2 to crash.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:N - 4.1

7) CVE-2024-45780: fs/tar: Integer Overflow causes Heap OOB Write.

When reading tar files, grub2 allocates an internal buffer for the
file name however it fails to properly verify the allocation against
possible Integer Overflows. It's possible to cause the allocation
length to overflow with a crafted tar file leading to a head
Out-of-bounds write, as consequence an attacker may leverage this to
eventually circumvent secure boot protections.

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.7

8) CVE-2024-45781: fs/ufs: OOB write in the heap.

When reading a symbolic link's name from a UFS filesystem, grub2 fails
to validate the string length taken as an input. The lack of
validation may lead to a heap Out-of-bounds write, causing data
integrity issues and eventually allowing an attacker to circumvent
secure boot protections.

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.7

9) CVE-2024-45782: fs/hfs: strcpy() using the volume name (fs/hfs.c:382)

When reading a HFS volume's name at grub_fs_mount(), the HFS
filesystem driver performs a strcpy() using the user provided volume
name as input without proper validating the volume name's length.
This may read to a heap based Out-of-bounds write, impacting on grub's
sensitive data integrity and eventually leading to secure boot
protection bypass.

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.7

10) CVE-2024-45783: fs/hfs+: refcount can be decremented twice

When failing to mount a HFS+ grub hfsplus filesystem driver doesn't
properly set a ERRNO value.  This may lead to a NULL pointer access

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:H - 4.4


11) CVE-2025-0622 : command/gpg: Use-after-free due to hooks not being 
removed on module unload

In some scenarios hooks created by loaded modules are not being
removed when the related module is being unloaded.  An attacker may
leverage this by forcing the grub2 to call the hooks once the module
which registered it was unloaded, leading to a Use-after-free
vulnerability. If correctly exploited this vulnerability may result
int Arbitrary Code Execution eventually allowing the attacker to
by-pass secure boot protections.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4

12) CVE-2025-0624 : net: Out-of-bounds write in 
grub_net_search_config_file()

During the network boot process when trying to search for the
configuration file, grub copies data from a user controlled
environment variable into an internal buffer using grub_strcpy()
function. During this step it fails to consider the environment
variable length when allocating the internal buffer, resulting in a
out-of-bounds write. If correctly exploited this issue may result in
remote code execution through the same network segment the grub is
searching for the boot information, which can be used to by-pass
secure boot protections.

CVSS:3.1/AV:A/AC:H/PR:H/UI:N/S:C/C:H/I:H/A:H - 7.5 (I have considered 
AV:A as I believe the attacker should be at least in the same network
segment as the targeted machine, unless someone tries to expose his 
netboot through the internet)

13) CVE-2025-0677 : UFS: Integer overflow may lead to heap based 
out-of-bounds write when handling symlinks

When performing a symlink lookup the grub's UFS module check the
inode's data size to allocate the internal buffer for reading the file
content however it misses to check if the symlink data size has
overflown. If that happens grub_malloc() may be called with a smaller
value than needed, as consequence when further reading the data from
disk into the buffer grub_ufs_lookup_symlink() function will write
past the end of the allocated size.  An attack may leverage that by
crafting a malicious filesystem and as a result it will corrupt data
stored in the heap, it's possible that arbitrary code execution may be
achieved through it and to be used to by-pass secure boot mechanisms.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4

14) CVE-2025-0678: squash4: Integer overflow may lead to heap based 
out-of-bounds write when reading data

When reading data from a squash4 filesystem, grub's squash4 fs module
uses user-controlled parameters from the filesystem geometry to
determine the internal buffers size, however it misses to properly
check for integer overflows. A maliciouly crafted filesystem may lead
some of those buffer size calculation to overflow, causing it to
perform a grub_malloc() operation with a smaller size than
expected. As a result the direct_read() will perform a heap based
out-of-bounds write during data reading. This flaw may be leveraged to
corrupt grub's internal critical data and may result in arbitrary code
execution by-passing secure boot protections.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4

15) CVE-2025-0684: reiserfs: Integer overflow when handling symlinks may 
lead to heap based out-of-bounds write when reading data

When performing a symlink lookup from a reiserfs filesystem, grub's
reiserfs fs module uses user-controlled parameters from the filesystem
geometry to determine the internal buffers size, however it misses to
properly check for integer overflows. A maliciouly crafted filesystem
may lead some of those buffer size calculation to overflow, causing it
to perform a grub_malloc() operation with a smaller size than
expected.  As a result the grub_reiserfs_read_symlink() will call
grub_reiserfs_read_real() with a overflown length parameter leading to
a heap based out-of-bounds write during data reading. This flaw may be
leveraged to corrupt grub's internal critical data and may result in
arbitrary code execution by-passing secure boot protections.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4


16) CVE-2025-0685: jfs: Integer overflow when handling symlinks may lead 
to heap based out-of-bounds write when reading data

When reading data from a jfs filesystem, grub's jfs filesystem module
uses user-controlled parameters from the filesystem geometry to
determine the internal buffers size, however it misses to properly
check for integer overflows. A maliciouly crafted filesystem may lead
some of those buffer size calculation to overflow, causing it to
perform a grub_malloc() operation with a smaller size than
expected. As a result the grub_jfs_lookup_symlink() function will
write past of the internal buffer length during
grub_jfs_read_file(). This flaw may be leveraged to corrupt grub's
internal critical data and may result in arbitrary code execution
by-passing secure boot protections.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4

17) CVE-2025-0686: romfs: Integer overflow when handling symlinks may 
lead to heap based out-of-bounds write when reading data

When performing a symlink lookup from a romfs filesystem, grub's romfs
filesystem module uses user-controlled parameters from the filesystem
geometry to determine the internal buffers size, however it misses to
properly check for integer overflows. A maliciouly crafted filesystem
may lead some of those buffer size calculation to overflow, causing it
to perform a grub_malloc() operation with a smaller size than
expected.  As a result the grub_romfs_read_symlink() may cause a
out-of-bounds writes when calling grub_disk_read() function. This flaw
may be leveraged to corrupt grub's internal critical data and may
result in arbitrary code execution by-passing secure boot protections.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4

18) CVE-2025-0689: udf: Heap based buffer overflow  in 
grub_udf_read_block() may lead to arbitrary code execution

When reading data from disk, the grub's UDF filesystem module utilizes
the user controlled data length metadata to allocate its internal
buffers.  In certain scenarios, while iterating through disk sectors,
it assumes the read size from the disk is always smaller than the
allocated buffer size which is not guaranteed. A crafted filesystem
image may lead to a heap-based buffer overflow resulting in critical
data to be corrupted, resulting in the risk of arbitrary code
execution by-passing secure boot protections.


CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4

19) CVE-2025-0690: read: Integer overflow may lead to out-of-bounds write

The read command is used to read the keyboard input from the user,
while reads it keeps the input length in a 32-bit integer value which
is further used to reallocate the line buffer to accept the next
character. During this process, with a line big enough it's possible
to make this variable to overflow leading to a out-of-bounds write in
the heap based buffer. This flaw may be leveraged to corrupt grub's
internal critical data and secure boot bypass is not discarded as
consequence.

CVSS:3.1/AV:P/AC:L/PR:H/UI:R/S:U/C:H/I:H/A:H - 6.1

20) CVE-2025-1118: commands/dump: The dump command is not in lockdown 
when secure boot is enabled

The grub's dump command is not blocked when grub is in lockdown
mode. This allows the user to read any memory information, an attacker
may leverage that in order to extract signatures, salts and other
sensitive information from the memory.

CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:N/A:N - 4.4

21) CVE-2025-1125: fs/hfs: Integer overflow may lead to heap based 
out-of-bounds write

When reading data from a hfs filesystem, grub's hfs filesystem module
uses user-controlled parameters from the filesystem metadata to
calculate the internal buffers size, however it misses to properly
check for integer overflows. A maliciouly crafted filesystem may lead
some of those buffer size calculation to overflow, causing it to
perform a grub_malloc() operation with a smaller size than
expected. As a result the hfsplus_open_compressed_real() function will
write past of the internal buffer length. This flaw may be leveraged
to corrupt grub's internal critical data and may result in arbitrary
code execution by-passing secure boot protections.

CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H - 6.4

