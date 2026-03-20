Received: (qmail 5485 invoked by uid 550); 20 Mar 2026 23:42:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5427 invoked from network); 20 Mar 2026 23:42:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=ax+6mPx/m+DrlCPMhIsnR/zCU5ajJ2X0xooDx7iPZUI=; b=
	D8HdWbQc5hsAN8bog6lgwg6BnomUCowlTmuwjuNujFK2a/ceAz/jWfV7+Mw9mtLt
	Ikp/638OG84rOI136R+E2s1qlC66+8o7mZ/+C9ABjRmVh7ByIFtPaIOHLdhsZgZM
	ZFRojvPMtiQY5MNUTQ/UD0MEIcuZhoCXd7T7Vmol5nroIsj/8MIL3vEM8LWQlXa7
	MOCY8rv7kq/2ZltK4qs+KHb0fhtc1J5P24dc/N1z0jvMpP7p9PaNLkDlyI6q3OHl
	6RRY0O1HX41ajqSGXUlbRyEjr+fW461M3nSXhGXkaRoFSYaaExWaYUVVUBgPbRYV
	aBD8QryTOD9VHGG6AC/i/g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QKUfRGNiIBWwIokblNkbktE73u8Nmyg5YDpDp6UTv7B9pJKUnLuQFslz4xCN1ol3wt9GlioEEq9LkAa/CuagXAS+91buI8/G0P+CxbdhSNyXnlGdYZyjdsPxDlmmiFLiDWH2OoV5HwJIGn0nAsDVgn8uKS6RhzCtDqhZ1wmOibwW6B81pubOE1N4vVbKJ/ScDAmbsmk6pKwKR5va28xOJAkE0JaLtUlDnMh7a1EuT1ufk24Xywn+ypPeafrrBdvqqso0X6G+KMTnwE04gKYL8ANuXnRoFzmU4jsS3j4XMmXRku08FexW6c0iO5lAzT/MRZS6ZgqZwLGtfqbs4QLZKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ax+6mPx/m+DrlCPMhIsnR/zCU5ajJ2X0xooDx7iPZUI=;
 b=F72EIg8YYSc4aH3i8CmFeXbV5zyPBrMIvnX64T3zEMg340fUzQ3nWN3BlkolCxiWFQ456BKYg5khUMw/aI41sDXSwJhcidADwjJl3RCZCS38KTXfQQvI+EgeNng8Ph9TQI/PSVbVcAmQJbXkVSfIjRn6Kj5YaF9Z2yWyf1Hb7p7szdRTIQwC4U8B0DzFFwXZ2268EOxAQHhLHkSbY75lVGipxnUA7/w9rO7Crb0H32Txe0FYYmupFcDo/2j5V4eC7R0Z7VOoO8IcdTfZFG2fdPA9lsumolnmDhEDAh6UiHkAQ+sOJLQ7Ihed7i1Dp6X6fbv3KEKpXHBcMI1afsD3dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ax+6mPx/m+DrlCPMhIsnR/zCU5ajJ2X0xooDx7iPZUI=;
 b=ZgCASsQCywO96/07V/5/AIPG8NTEuC+lAhX/FuiqP0ks2kdW2YlMQI751H8kHPKFz9aiMwgWLqeOaLL32U1KfLtLzoQh+ua1xLufhuSuRI0c0EIcD3nAjXN0zF4il7pcuZ7qDx5B9qn1s6fp+jrxFLEQWy4TIcrlA1IOpcutUUw=
Message-ID: <37aacb54-8bcf-4b7e-a747-6ff3ec8143c5@oracle.com>
Date: Fri, 20 Mar 2026 16:41:51 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0196.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::21) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH4PR10MB8026:EE_
X-MS-Office365-Filtering-Correlation-Id: aaccc81e-d0ff-4f5e-f37e-08de86da435e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	gSCZ3EUR24UdhQiSWWSr/BmP+U5uTYmhDgVc1qiGqprFKhg4u7wNd8Wa9CjgAITTYS2so2AL/AyR69c/GUeCxQ5rV8p23i9fk/nH8jFZ3byXWRKxji+iMT4Y9rN6CkHWkiyGVFFhcGqgkqeBhy49k8JqlHp7tFPFLddVZ/53jQeEcG4RdsMa2omWCNvpo0/f/JbVGWClfjdaoqAmkGQ3/gxSUvYA/eL1AjrlfChAAuqbRyJ33CtDUw3/RcI/4/9gPt6GKZVBaogULZEyPs+rOYkJE4dEShBjd+ljGiwtdfcobiWDXFybDiWL1RDhBBgiTcQMZ0IVwMAeH1GGAM3Qor8uWvWxAHjcBaBAogeZ6QRZsJwsYmryXOR76drZrkgH8XU0mV8fgxdnN/BQ352MWEKYJuDofvnrvpT4GaJez5h3an1a3goGLPguKA4S2O4Lz1AizZBpJNB054eXCTOvGDDyTmhUrcZ+fPYQCTP2Pw/Kw67Glz5RcZx+aeZ/bwhvL+Lc1flHjg+Z6ob8pm3q/zT5QmsW1aVAGMsvaJOiFIUeOPoIQ0vAO3nMAnZaeSLl2ZyZnsK6OItCK7IhZKG3s3iOOhn7QkO7USZtJ4SaS/8xJuZS6LZS+oMyc7iR7rUKLZjN02sRQkKX+0tGqFLHT9lg/Vab8XmnvJjzl3eu/IqSCYqSn41r4XJhz7lEzgvJ
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WjF5WkRuMUQvekVDejd6YmF1OXRpTFdva3FLQ2VlVG13NWxwUG5abUk5SzJC?=
 =?utf-8?B?NkFNSDRuU0hyYW5DalRxSkdXRHpYUnJjNElENkJIblRmaXFwLzEyUnZncG9q?=
 =?utf-8?B?a3RXREttVi95cTlIMWgwNHMvN2k4ZEN0U3V5QkNJcFVDTFo4VldnekMySTFs?=
 =?utf-8?B?ZDlkcnlMTVI2RWgyRkxjQ1FEYjhGcHlEd2ViT1lXN21GeDlLdVp3bFpwNGl4?=
 =?utf-8?B?cnRVV0xzRjRFeCtENGoyelk4KzgvaHV3VHBwZ2s1WE5EQmpZNzJDampicFFT?=
 =?utf-8?B?WXBFOEhTVUdVQllxU0dISjZaT1h6RFViU3NEY0dYLzlRYUhoTFljRTdSRHd4?=
 =?utf-8?B?SlkvYTJWMUY0bHB1WnZjQVI4TkZHSEJoR1dieVNPd3NudVg0ZXEza0JaUkM2?=
 =?utf-8?B?Q2xhMi9hb1FCdVBwWFpVbDhqUHhLVmxFLzVvY1cySkxIbFh3ck9KWkxqZVB0?=
 =?utf-8?B?T2RpNk9lSWs1NG5MM1NobThNY1AyRDhqQTJXdTdkckdqUm83WVY5eTF3QlFQ?=
 =?utf-8?B?RGplU3BUODVwMG9uTXlFa1hvTUk1Ni83MEpkMytVbFRRWEhnS3dWVmZhTTRF?=
 =?utf-8?B?Wm5ZNHhNV1FzSFNmam40elhuQ1FacUdQeHVQV3FNSTNDZS9TSVJkUSsyeHRZ?=
 =?utf-8?B?Wmd3eWJtKzVmcmdNQ0ozWXBWTE9IdFBudEE3VG9LbWhSV3JQTkVSVnhsajR1?=
 =?utf-8?B?T2pkQlZLR0F1bmdMNUVyN2JpenNxck91VG5BT1hsV0xkVGF4ZmxtbTliNk9i?=
 =?utf-8?B?TG9FVU9Sa1R6d1B6WUhmUU5zL094M2FSS3ZHU0llbjd6ZGFIUmRmOTRWeEFx?=
 =?utf-8?B?TlZnTGM4a0lmbk4yb0JKOFNZbzFYUGgxbFR0c3ZyQlFsd2NNaFpCTGZJRG9V?=
 =?utf-8?B?Yzg3b3N4VEFQdjFsblQ0ZXJrVDdrbm9UOXY2bFN4bEJ3ZCtZUnpoeDgrbkR0?=
 =?utf-8?B?UkpuWTVmV2dCT1ovRkF0MTc5OFdVQWdTZnp6RG5ONmgwazNQVU45SUl0Nm4z?=
 =?utf-8?B?cWxEYVp3VWRMNlR5K0JDeC9vbk9VYVdCMzBzV0s5RkhzZ3VHbnZFL2pueFpa?=
 =?utf-8?B?NmJjc3lvbWRYTjhHell5UnlKbW1Ldzl0TDF1WkJqMXBZQysyM2N0UmhDVUhn?=
 =?utf-8?B?VTFJSCtrdWowNUtpVC8rZ0ZoYVRlMW9EUndnUzc3aURyRG1sOVpUSEZQVFAw?=
 =?utf-8?B?ZzQzS0FNNklCUjBEblB2VDRqL3FsbGJoSFZscFpSMDJFeVRpZ1ZXR2kvdkI3?=
 =?utf-8?B?cVBmMng2NU4yZlozb1ZMRnZ0MFJhdDNweDBPZWZFYVdXUDh1akdZbFVrZGln?=
 =?utf-8?B?TGdCbnRoMDh3T25FTHkzbXFhbGM4bWxBM09rNDdOY1BPMU1ybUF4eWdUM000?=
 =?utf-8?B?OXBHNGdnSEMwdmhTejNJRUt2M1gxMEVPcUpFcTQ4MWFNMnR3cTg1NXNpcGRk?=
 =?utf-8?B?a0tVM3RJRU5qZmwrckdjeTlaOUNXd1NzUlFTWVIrS3A1QWJnNU81aUc3WFZQ?=
 =?utf-8?B?YUFtV2l6WGlHU0dsbk5qOEFPbndFR3U0TC9vNDdmdGZVVmZiMDVwT0V6ZEtq?=
 =?utf-8?B?S3ZHNk96NXpmR0g4bjdvN1FRa1A5VHd2VnlRZW5VVVZVOHFvVkpiYmNKb1dX?=
 =?utf-8?B?VFJGR3BwLytXWjRhV2hHeHlrcFZmYWkzQUZaWFc4emdocUdQR25BUXV3c1Bs?=
 =?utf-8?B?eU1wM2Z4bDZRclJTTXA5Q2RzMzFxWURpWXlHMGdoc1lSd3pYRzF5aUE3VVhG?=
 =?utf-8?B?a0tPdkY0dUk5YWJGbFUvWFhIZ1FXOHNkNFNTR1l6clI4S29FdkE2VTVNaldj?=
 =?utf-8?B?YkVuY1FZaW4rVnUyc1RlSG1lMUJTQkxmWGZmMUd4NFBQanA4dFZWTUE5K2l2?=
 =?utf-8?B?YWV3TTVPdGp6RHRGUlBYU3FmRnAvbE56NENua0tsVGMrcCtKMlVtU0M2MnZJ?=
 =?utf-8?B?c2p2alBJVWx5UDAxSW9nSTdoUFpiYWM1L0RZY2RxTjdmb0NPRWJaOEUvaTRz?=
 =?utf-8?B?TC8xalhDblByRDA2YVkrY0szRUJrSS9QTDVkZFdvVnRSdkN0ejBTNCtxT3pt?=
 =?utf-8?B?YkRHNGx5bnlWcS9jMnVGWG1oR0w0NFF0QkVKdUkybzJ1eXNCWFJ5dUVvNjk5?=
 =?utf-8?B?cy9JcWdvQmFqNHZ1NUdBRWs1RWJtYmpwOFBnaE84dHREa3J0UDhsYTRheTc4?=
 =?utf-8?B?SFNsaDk1QS9BVTRkcm4xeUJ3MFp0NmxQOGhXTEJTSGRtSzFYR3o2L3VDZXM0?=
 =?utf-8?B?ZEFiVzRoZmIrTmNvY3Q2bFhCTTdYL09KYVBMVVFBRERXVlhpL1hqaUN0dmpa?=
 =?utf-8?B?d3ZtdDc5QjNZYjBIY0Q0Z2dkZlltQXNiN08wdDhaTkpUU1NSdmM5eXh1UGNE?=
 =?utf-8?Q?QdCxepFSA0noLn+Y=3D?=
X-Exchange-RoutingPolicyChecked:
	Jhv72zjo+zd9Ir7AUcEB/EGU2CVF0xUnR4gIAGrlvbSRVLK4B+Vcns4ZSH6y5XG3KshJeknZ4KnRuLOsPbuDgqaZw3qzILb2UfQsN6xQFUFbT4KZM0AA+jv/fo6cEsK7wC8j3U472EX1izCfqVJHLta7Y1OdOzhNdwXTOvQeBS+ToN81I6ldT9UxuSmMHoutZOoHOMYqUO+xVLPEep1IcdG0whWZGJgwdj6sgAeF5sf6VpgMsDMgtlIY4Xrsz6q7fmHjbjF0aTrwncbCnRYe/g1XuAKI62kPUmz+PZF6OaCcNRbxYaAbz7pEjv7nmR3zv1jo0JO4zz5WgujrgNAXgA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	VR1MkOs/wdW9UXcg8jbtSXzqZWy/aqtmXf75x5Qq14ozXXdwio2wiWQGmxAaFeV3/fnHz3BhiBTvp1tG3gKrWViEybI88eQ6PEAeepL9fQdnvNjq18vvydr+djLQ5yNvRxsr5CJx8TrZohT+XHCNcSkZ43rgLtQsIFXMbSnLisF6599GboqlSO2EaucPqRZKfFNFDfi/GTKlCQ3uo+JR5bk0AB6iDh6Gfyjnf5E7+89j4Kh3BP59eY3Cta5kyTlknNF6GbaN6gDKuDyc8hjWVwNdp6K64KxBz9QoFFYp2x7d7JpZjcm2J+dyGkqj0UEdMJIV3M2G7vKvtcR8yd7kTEgv1BfjC297Egk9k1kHZexN6/4is5U5ryHbfCT6wIzFiH9HtYz2mPUsVFtHAW5NO5S0GT6iPDPh8eHr0HYEPgI7VYxVatMsRv04PMzltrW5CoorFeCElqkPzMhzaEQITwWwuU5t0AEWs2Xy0e33R8DpMsDsv+Aybge10NCaDJay7BblR4pTG46qn4BuZyDyC62rmZUGwcw0XVKFei8pC+05pEbJb1yN8fiEM0+cUAn0D0yRZlk7XuxqacpMR/ftfwcF77LBnULjIBcxDz6QmLc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaccc81e-d0ff-4f5e-f37e-08de86da435e
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 23:41:52.9657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jcueClLej5E/2I579lSbieDA/5hn0LH4k8AzXpEX4ZgP3wEIIqgwzRMVjYtUpTALSXuNF1RYZMqcytCVl3l0U8cT/qtp0ZrBg00ahOtSttk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR10MB8026
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_04,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603200194
X-Proofpoint-GUID: LlcuEkUzTxqir-YunaHN69dy6fOo48aS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDE5NCBTYWx0ZWRfX+uyR3rJbB+0A
 84n+URG1d/h63uu7OwcYNazcGnKkM6i2U4p2zdeCwbLqCF9E6mouLRwc03mWrrjqZQD6FHob1Oc
 TLkDsiYRwsWhCr9htq0eQxscGS5ntW8Ve/YfqSZKPs2TLXV3aE4pXsLjzr87oIvEsyXWBa2EgOT
 8ap5cUxayfHQbSYuBSrzshy6iYHajdAdy3gmOIaY/5XTFK87LwZTW829K3bEegTzafBHNPrbnZw
 w9cUaSYc2mZbJ5RsK10yW2FoChtvkGQVwCM7+HHqU30/9fZ0rdncCIyivRnmnmcQRA0efz5nxDV
 xf2E0qTegUx58XqbxL7mH3m1pJelFMiNbi2qDEUlBUBWHOV8WRfsCLefq2zEX8MAR5jKYKJqo2C
 BgZnEZzc+WKS0PxRxnWRS6YT8/WcOeEnh7kJzKPkMWCZXFbXQiamOPCFt8I+DqZUfwsRvcC7IqR
 e95mEQO73B9fEsss8vGiXJ/3QK4Xaax7YTx6+mMU=
X-Authority-Analysis: v=2.4 cv=dJmrWeZb c=1 sm=1 tr=0 ts=69bddb4a b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=BE10-0SnAAAA:8
 a=8r2qhXULAAAA:8 a=yPCof4ZbAAAA:8 a=0aRmuprtoJkTSktQ7xcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=7Sfvhf337DmkywDkm9lA:22 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf
 awl=host:12272
X-Proofpoint-ORIG-GUID: LlcuEkUzTxqir-YunaHN69dy6fOo48aS
Subject: Re: [oss-security] Buffer overflow in /bin/su from UNIX v4

On 1/5/26 09:27, Alan Coopersmith wrote:
> Late last year, a tape was found containing the only known copy of Bell Labs
> Research Unix Version 4 from 1973 - the version in which UNIX was rewritten
> from assembly into the then-new C programming language.  Since then a number
> of folks have been running the recovered software in PDP-11 simulators.
> 
> https://sigma-star.at/blog/2025/12/unix-v4-buffer-overflow/ examines the
> source code for su.c and shows that the buffer for password input is a
> simple 100 character array, but the loop to read password input has no
> boundary checks and will happily keep writing long past the end of the
> buffer.

This has been assigned CVE-2025-71263 now:
https://www.cve.org/CVERecord?id=CVE-2025-71263

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
