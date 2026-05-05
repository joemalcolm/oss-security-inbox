Received: (qmail 28461 invoked by uid 550); 5 May 2026 21:53:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28437 invoked from network); 5 May 2026 21:53:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=+HP75xkOup/phvv9
	fyvO1gf73/W9K+EnmQFKIvFWCSw=; b=dtnZ/L+monGxaVXWgKH5DvVZAELDSsTd
	4ooLlgUWJWc5C7nI++wc97Fqg5GAEQzXJQ/9gM6ByJGWnBanQTqC6r2Q+xJuT2+X
	XMMUe648zic+QFC4004fKemBQGdRafP5stEjnAbtRn1Ae6y4x9UnqP4ptwgNFvzc
	4n5OyhjlgiWLxtTVDe1s0U6RqdRrz9mVHR9umVCGec9X/3KhcmxmSot3WEI60cxn
	OhyyjarBDMfXojHucx6vKugA0UKOqmuI66mBld3VmlWcqQ1NDHyCBBnKb1bYT9cJ
	5gGU2Wim/CfSPiyUvVtH+UCpdom9TZLF3g/IKh4vYDMq8ALURIECLg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CVS0gPufmpGEaYk7aY6KG2fJKDiY94UpLlXuHSCP03hLEueXBW4at7gpJnBmSZupsN6hoFoU4KzOeNJrfZ5aOXvTPWqm8p50xGuz+7P8hft0a0hLVD/8hrhG/c5dX0k+xD6rfxTSo8maeBFnoEod8GmgoHou0NZvtxPfPJfokT2k550DNoRTjQnDMczfZEYal/hDpk2KaSzPCacMHdkhfefLE9Bl3m0jIhxOTR/EOa/DDDaqjmSdJ2GkPtzAyi6Vz91/ErtDAev+WfAsZclxCwn+mb4ei+t9WxrkLGJ0OWlDnQstv/l+l+QeUJV/DpXW9SeegJdAAigFrBSxCuLzbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+HP75xkOup/phvv9fyvO1gf73/W9K+EnmQFKIvFWCSw=;
 b=Q0DYj3PQXH5cPlfGonojWlEAIU0hQdtEi5RM2KBq4dn/dZGHV0l+awHhharcOadkqSrWvbT9wC3JyDyRJ4G89gETLFxBQNEqnI4vq0Dxc3XRUJZr+y+3qFjp3mEjpIxep7hc9h1eRi1XiD1g244nxc2LtR77CPiHq9AnMupU6tlWX43rj2v7OSkwnYK+kk8kuQ7ospIDYU/Rm4W1l5EPIW3N5sbAT/C0PE0LWTrzdh37BJrH+UWLCbMByiI43d30VY5GblM8xCtYC9G6eR2foAe7JdydnOC3c8m+CFNaG6lx5yJ/gtuy0M2Gyv4WeSJkSxDWoONeQCF8GzC1v76EFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+HP75xkOup/phvv9fyvO1gf73/W9K+EnmQFKIvFWCSw=;
 b=giFFeFQUpiozd4MQZ3nXYS7j7L9OsV21VTw0hfuEfpeUeFhYciNDVxhWXMxC2z+/8VPjwIDTZTt3kDf84K99CV+XBS4BNDwbGWmAhxmKfq7xyhjZCVVpP5iL1BGQXBPoucbzOlxo6Fgsh104gmbRi9qptBm7/48f1c9LaS4OAcE=
Message-ID: <a62846e5-2943-4c17-81da-aab453f3e1e7@oracle.com>
Date: Tue, 5 May 2026 14:53:16 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::32) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA1PR10MB5736:EE_
X-MS-Office365-Filtering-Correlation-Id: 7db0701f-5c0c-4729-a0c6-08deaaf0b743
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|10063799003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	DVhZig8TfyLDN/19DPtoUmZm6MGK1ekWmCW7uOBf83NBXBUID4m5wXpSk5OLls6pNe7K/rs8UJfi02+gxD12Tb66rTXLTin21JUOmgmFvBqOruM/BN+TBIe7pwPo2/GZQudJzT7ggDtwRPHex5dzYqFEYZro4UOxRErPYmUV4V4pamQhnvQGXWofJ8TItT1H++/Rp5SHKOO4X0kCgPX/l33trvAmrH3iDxXVTOrCYySTcvdu/scUPlYq5vi8dMRrrgRWyJTFU5GBfmYnGog4tJhAXwh73rhyC7AIDU8OeluIejH+1lWxx/Q3NB5hkAl+AAr1gfh4YIEPVZ4AqwggaoF2yl8EbaPotfOcuTr60d4vOwSiV3cFXczINs1epgM2IS/VT5jp5IMQ/Sfan7D5NYOQiGSkD6mhOb1Ou6RhW7gGngAzisoz9E4GMK34j7HMe9Sc/3LRf/OO3/gqvK9PTOs0wP0SLcDf1JcW8AES9064iEFUZ7Z6v4HbaFRYYuqYeUINyZ0uO4/qqRRJXLRQnkOD7rYvbG18EK4RabxwrzOrMH7P1EhmGy12pvMpkZtZOquf0HNliuTtNkg0AeAFxsMVLuJ3N2JHR/jHxciv7ZLGoNGyayGMTQ9bVr8Zo6lysVrs6bt5tED4bc3qHYgsIw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(10063799003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bjN3bG4wS2VwbEZ2UkVOTTlFT3dGQ0Q3c0M1aVAzUnBwZjZ2OFRmZDNaVFl2?=
 =?utf-8?B?Y1FDQVlvYWpCU2VZV1hqY1Z5TTlNZUpNcnVkcVhUbGozV3h5OG1JY0x3MVF1?=
 =?utf-8?B?ZHB0L3I1bGd2eU56OWJ5cGRyTkkzNFZ6a3NkemM0Y2t3emZIYko5NWZpTzdR?=
 =?utf-8?B?R2dKNkk2TDIrVWRMNmpWVnpkQlJzQ21JVG1SZlUzV0NJQ0YzRzJiMVAyN3c5?=
 =?utf-8?B?VTRpU2NBdHhLTTBnY1RXSVBkUFlKN1RWckQyMG5IL1ZzYWE4SllVNkdjMGtJ?=
 =?utf-8?B?Q1RxN05aajA1c2xTUXlPenBIUWlEK0wvM29wQjhxellsRXpaQzV1NVQ3SVBr?=
 =?utf-8?B?MUlMOXUxZ1I4dFN4YXJwWjNXajc1eW4vOWxqWFBOUlNyWHMvT2FDbFJ5Sm5v?=
 =?utf-8?B?ajdscGJDQnl4L3ovbEdrQ2xHczV6ekt3M0UwLzkrNlUwR1BJZ0kwU1NSUUhC?=
 =?utf-8?B?UktOcDJOYldEK3lRUS9YUnk3VzdUK0F2QXYwcUFRVS9BMlhaVDNXNUN3TWg0?=
 =?utf-8?B?MDErTXFZSDVLS095VWhNNm1iVTk1bW1NdVJaRHdtbGtSaXhybkloWTduRjV2?=
 =?utf-8?B?Y3VkcFJ6ODY2bzl3OEthVlMxcTFUWEx5THA2RjJmVWdQN0tHb1pQZ1ZmcGlW?=
 =?utf-8?B?bGhHd05oQjRUV0RRbk4reERUNGJ1WmVpY2V1M2phWEQ5S01JTDRNT3ZFdjZz?=
 =?utf-8?B?Tm1TckkreS9JY3FoUFZRR2lkelhqZjJCY1htU1RzY2FpQWtHUVdSSlNYcmZv?=
 =?utf-8?B?akJrK3RHdC95a2piYjkxaWhtV3l3dHlLWHVnVWpOczIrK2JKUHBXeURsTVpq?=
 =?utf-8?B?b3M1WU9ZOWh3cXFqdTNCT0FBNGpkaXVDRVVLUE93dG9paXd1Mmx6T0NLKzJu?=
 =?utf-8?B?NXBocDlqU3pycVVPaGFlYkF4R0ltOHZNTE9xVmxTMWdKTndEVnVCaHpmamxN?=
 =?utf-8?B?eFByWEFwdVN0MlBhaHJ0cFVhQXV5TkprR0x3WUU5RHY2N0Z6YkFmUkkwSHRB?=
 =?utf-8?B?OWxqRklTUDBjL0lvMkU2cDVEb1RkWGhHMVdUY1ROUVBrTzR3WTFjcTZsdEh1?=
 =?utf-8?B?eE12eGRHUW0vOFUvTmFBdlBPWW1uakszRnlLZHZnbGlMMnpPcXZoV0dqRnhs?=
 =?utf-8?B?YVRKcTcyMWZWQnVqYzU4VGlFOWpjOXJMRlNQS0FHbFZuN3dLYzhkdldPbE50?=
 =?utf-8?B?MzhWVWcvb1hIaUV3cjZGS2JYMFQzb1UzRlB3NzVKODAreko1R29UclV3cFJn?=
 =?utf-8?B?VkhoOFZSSEZ1Q3k0U0JxN0F6Y1JLakQ4ZEEyWEROeTRJWUcwanBGWFFzYm1v?=
 =?utf-8?B?SldPb2w4TW5DbitoU0c0VSt5eW9RY2NMbUl4ZjZsYkNTdC80VXNTd0UrSkpw?=
 =?utf-8?B?ZXZLYmpqYlBxRWhwYTgwc0F5RXY3QmpQOWowbEo4SG9KeTBOcS9rc0o0bXJj?=
 =?utf-8?B?TnVLS2RqbzZBQWJRbTQ4ZlV5N0N2bHcxY1lJUFVHYnlMQXc4aFMwZUc5NVhw?=
 =?utf-8?B?RGp1MlhiYUUvS2ZTNWFPSE9yaXVDR0xJUnVBQ1V0SVl3QVNsUmhpeDMyNllu?=
 =?utf-8?B?M1prdHBWSTVmakgzSFJvSUxSVTlNSFNLMWlYU21hYm1uZ09uYisrMHBIeTVm?=
 =?utf-8?B?K3VOUEtHZnFGeDFmYmVVbG5WTEc2eEZ6bm5FalZRQlE1eUZKTnljZk8vM2RE?=
 =?utf-8?B?WlA4Q21IWVNaRjg3c0E1bWtLUm1WQXRCK2N0c3M1cUxWdWxRTVR5VldYVElP?=
 =?utf-8?B?ZmJrVXByeGNHM3pTRENZRDkyL2JQekVIR2owWEdSSHlQY2FYRUFxc1M0K2gy?=
 =?utf-8?B?ZGRuUTJSR3grc3FMTzhrWjJYNkxiZ3psVGN5SkJzVmc2Z0U5MCtDYmEvWXFX?=
 =?utf-8?B?dENlUXBsVTg2STc2S1B0VDBUbkxWRnUzK0hXOXdOVkNFOFVlT2d5UVQyR0hR?=
 =?utf-8?B?aUlkQUJaSWZrWE5aVDRkK0ZhTVpvcWc1aEYyZFE3Y0QyTnRmclRsd3NrR1Vu?=
 =?utf-8?B?eStqeDR0Si9BQWpVRU95VzRSbWtjekMrT2x3ZGNtSlFsbUFzVy91dzYybW9E?=
 =?utf-8?B?WCtRVDJrVnBpMnlPUGZBM2R6TmFITDFHc2VnNkZNVmlmWGl3TDRwdkVKR1Bl?=
 =?utf-8?B?TWlEOUxwWU9laWVZbFBSVkVTbDEzSHF2TDhlTno0ZTVSVnk3bjNFRDZyMGtQ?=
 =?utf-8?B?K1NvcTFsWHc2ZWlLMDZXdjlFT3ZDTU9sVnAxTkY1Q2RnSExmT2p4azE4dTh2?=
 =?utf-8?B?SnlKVDBIUWxEcnFBR00vckdkNWNlNDlxakQ1RE9DTGNhNlNrbWM1VzA0L1Jz?=
 =?utf-8?B?Z3VTQUVOOUxWMTZlaFhQYmxCNUxTRE14STZEUlNLdHVSY3pYaVV0QUQzZFVk?=
 =?utf-8?Q?TrO7LUY4tF4HCRek=3D?=
X-Exchange-RoutingPolicyChecked:
	hjpUSAyhDPK7VYrNFE8wPYEHhhHREt1ZinPm4IoBPRfa5yloU6JY8uzHx5MI38MX8fzvnSfhnlcVVjS5Gn0bsZpM4efE8pc6+L3Whb0Gw949PQ13+R8RRkUIcYPFnymat5Dm2HK5g6+orAnY1jXHN0755ZyN0wJ5UqxcVtAShDpV4BaCYUyup14cbR/4DkN+0euGREhBh/wc6IQvGFhre2sCv4j9MnmD8cKOkzRhvMsVBp+94mJ1F7pTAMcFzrPW0Z3Kv3tFnPIeIfUBBeb4MSAl2lsyBbw0taHXT9FtWXLD7bnXP/dhCBWlkdQsUW7G7OsGd6lm7jRZlbj1S0k1Lw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	jry8JHpZUBOwBZ0wVEuWYEvH2ijqGGUoVKj/+kvkU2vn5fm7re5kd0OQqPqdt3ZZ5T2VnAe8em9BQOxCRnqok0m5oOqRfLFbf+7bfGmcaAMjomQn64VyXUE21BwJePj+pRxmAmz+N9AQYNrT35wNv1EowCbPFHbLCpk1j6hgnxFeaNeuMkzyS1HNT08vTwMOQgWW2uzG0edcJYVyFNYwMfSZPQOCu0oTX/R1IPbxMAYp77j9D+b/GD+d3a+NpS/HyLSpYtrCl1Yl2VuBArJYLtuJ3r3TfREj4H964sQ6m4B8euwfmbCnfeTpSalP6GTF9+G6GSeeKEHoTXmiNU3ccjIv3whQNJzG0MTaGMnLRgTcnhxQXaZxGnR+L9Q/rgIWSUIaHlWQEXiP1eo9RmVNlotmEMxuSAvZ/+Ou/7R6DCirMDDFvSbJqE6G+JtFFTpU5OixYTu2+hqQbETlBgmV3gut44C+GX1NhDL4qrctX0DxQ3zQze2Zz0e+wyJNwYbv1QNhQV+3eMVBaKQbA+Pg3kfGffG16ltVsB0Lr9iRcUgvT9k5D5vgnccgP1bXjktZZoYcuqoJV0Lndn8/c85+AUdzrn8ZtqPqHj4Ete2pau0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7db0701f-5c0c-4729-a0c6-08deaaf0b743
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 21:53:17.7936
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AYs1xcQdqK+50C4LuOPFWfnAF08Sg9Uhb23KsiGn1dl9knaVQAj2si6tK1alJMa61Z+yAegMDj6pECSxnaatpLO3TBKx2+uqwZJf9y7/1tY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5736
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 phishscore=0 malwarescore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2605050213
X-Proofpoint-ORIG-GUID: Xe4drZenVTAFue-ziUJPl4weSO_OMsYM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDIxMyBTYWx0ZWRfXxZ8cpxN/bByM
 zll3TZY7RFWT/wVNuzPi18/RqjjzaVUhItsYeLQcJKMyPmHAVboI26gJ2dthrAeMhyrqrBGkNBK
 /JmVexfcMdAjLahUc6E4j/Gi+fB7alwNecexTzh5XKlY4A0Cm+TS6b2xDiaAMnCk396q16mEcOO
 K7liLbD/rhzpLeNzXVlfd6o5bSsYWcFIe5wYKUA/Wfg1qSKr/a8F/03bUsV3s9fpBdzZ29Nl2/U
 5uFsEAsd/StxhOg+7arX64LkaGlNZHuy6yQc8FdeFr2UAubYS/U9CZffXXmXI2Vr+hQdsvNUSdU
 7l41MkOjcX4nqTiUwa8egIxlGNTXqC0M+6wAD24cbPAhrnw1NIUDrOeguGjBb6Lb4QMO14BK09Z
 ebG6uPktS8273kNWDb0u+E7mJekE1QxacKSQh81EZd9cunnkH/X2lTxwEe924LKdiOti79R63Lv
 3kVN4qAPU6xMsAdzK4IsGvxkT4V52opfWwYvOQWA=
X-Authority-Analysis: v=2.4 cv=YKKvDxGx c=1 sm=1 tr=0 ts=69fa66d6 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=GKFkmAsyAAAA:8
 a=3MfpYBi1AAAA:8 a=yPCof4ZbAAAA:8 a=odaciRzbKKrVLDVM3i4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kAYzdmAQwG2Wk-AD_5to:22 a=0X5uXF-T04uBCvzKQ_8U:22 cc=ntf
 awl=host:12306
X-Proofpoint-GUID: Xe4drZenVTAFue-ziUJPl4weSO_OMsYM
Subject: [oss-security] Security audit of Paramiko completed, fixes coming in
 5.0 release

https://ostif.org/paramiko-audit-complete/ announces:
> The Open Source Technology Improvement Fund is proud to share the results
> of our security audit of Paramiko. Paramiko is an open source Python
> implementation of the SSHv2 protocol designed for secure remote login and
> other secure network services. Thanks to the help of Quarkslab and
> Alpha-Omega, this project received custom security work reviewing
> Paramiko’s testing, building and CI systems, and cryptography.
> 
> Audit Process:
> 
> The engagement took place in November 2025, with Quarkslab’s audit team
> executing the mission on Paramiko’s testing, building, and CI systems.
> In order to effectively execute this work on critical security features
> of Paramiko, the scope was expanded to include PYCA Cryptography and how
> it interacts with Paramiko critical cryptographic functions, (PYCA)
> Cryptography’s OpenSSL Rust Bindings, and CI/CD CircleCI for Paramiko
> and Github Actions for (PYCA) Cryptography. For Paramiko the engagement
> consisted of manual code review, dependencies review, dynamic testing,
> build systems, testing enhancements, static analysis, and fuzz testing.
> 
> Audit Results:
> 
>   * 30 Findings with Security Impact
>       - 2 High
>       - 7 Medium
>       - 5 Low
>       - 16 Informational
>   * Build and CI/CD Pipeline Review
>   * Testing Enhancements
>       - Implementation of a crypto-condor plug-in to incorporate in the CI
>         for cryptographic compliance and testing of entropy sources
>       - Review  of current testing coverage
>   * SSH RFC compliance review
> 
> The project maintainer worked diligently to address and resolve the issues
> presented by this report, engaging with the audit team to design fix
> solutions aligned with security best practices. Update to the most recent
> release of Paramiko (version 5.0 will release early May 2026) and follow
> documentation in order to take advantage of the hard work of the individuals
> behind Paramiko and Quarkslab. If you’re interested in contributing to
> Paramiko, learn more about them and their community on their website:
> https://www.paramiko.org/ .
> 
> Thank you to the individuals and groups that made this engagement possible:
> 
>   * Paramiko maintainers and community, especially: Jeff Forcier
>   * Quarkslab: Dahmun Goudarzi, Julio Loayza Meneses, Alan Marrec, and
>                Pauline Sauder
>   * Alpha-Omega
> 
> You can read the Audit Report at
> https://ostif.org/wp-content/uploads/2026/05/25-11-2415-REP_paramiko-security-audit_v1.1.pdf
> 
> Everyone around the world depends on open source software. If you’re interested
> in financially supporting this critical work, reach out to contactus@ostif.org.


The findings listed in the audit report at higher than "Informational" are:
> HIGH-21 Insecure parameters for digital signatures with RSA
> HIGH-28 Insecure key sizes accepted for Triple DES [in Cryptography]
> MEDIUM-15 Deprecated group exchange method
> MEDIUM-16 Insecure minimum modulus size in Diffie-Hellman group exchange
> MEDIUM-17 Deprecated Diffie-Hellman group
> MEDIUM-18 Deprecated GSS-API key exchange methods
> MEDIUM-22 Use of 8-byte seed for TripleDES key generation
> MEDIUM-24 Wrong type usage in SHA-1 in KexGSSGroup1 and KexGSSGroup14
> LOW-1 CVE impacting black 
> LOW-19 Use of MD5 as a Key Derivation Function 
> LOW-25 Invalid Ed25519 signature causes mishandled exception
> LOW-27 Invalid Ed25519 signature cause transport thread to crash
> LOW-29 Insecure RSA key size allowed RSA Keys in Paramiko and Cryptography
> LOW-30 Server can be instantiated over UDP socket

with these recommendations to resolve them:
> HIGH-21 Remove support for RSA with SHA-1.
> HIGH-28 Reject key sizes that are not 24 bytes.
> MEDIUM-15 Remove support for diffie-hellman-group-exchange-sha1.
> MEDIUM-16 Increase the minimum modulus size to 2048 bits.
> MEDIUM-17 Remove support for diffie-hellman-group1-sha1.
> MEDIUM-18 Remove the deprecated key exchange methods, replacing them with RFC
> 8732 additions.
> MEDIUM-22 Reject 8-byte input for the key initialization of Triple DES.
> MEDIUM-24 Change str(hm) to hm.asbytes() in KexGSSGroup1.
> LOW-1 Update black to version 24.3.0.
> LOW-19 Warn when using this format, recommend the user to save their keys in
> PKCS8 or OpenSSH format instead.
> LOW-25 Either check the length of the signature before calling verify() or handle
> the exception.
> LOW-27 Handle the exception: either catch the nacl.exception.ValueError excep-
> tion or check that the signature has the correct length before calling
> verify().
> LOW-29 Reject RSA keys that are shorter than 2048 bits.
> LOW-30 Add a check in Transport.__init__() to verify that sock is a TCP socket.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

