Received: (qmail 9419 invoked by uid 550); 13 Feb 2026 17:45:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9349 invoked from network); 13 Feb 2026 17:45:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=6hjmiwL1AUmZ7S2K
	GfHHRZDrMkZEB4X1U9wSDbmSnzI=; b=HTMO/21opNUZAOk2bcL9Sb5fpgzg8DvD
	/Ixe9+1boHT6Lsc3N2pc7FT+sAvtUcbGW879C+kb11pz35O96Ee8Twh4r4lLaIc/
	liyRb1YoqJAY/jk2gwTPEmN12QbBlLjSNfXUXwUwra6czQ5jeCusIKzLbOONSKEN
	ep+nArg2SwpK7xSI2egZ46zy5JTK3NN5DfgsHh+BXCaCF4QE/SGeVSRvVbgFg66b
	Raz9Z1I+dnyL4vOtZR3UJre7DsWV3fvloCfbDx28SKaAhGjBze6Zfa2WtbgAJdOr
	Zhf/y9w4AhNuFoCfzXTvsBm3wqS9PLWfPNzBaJb2xLLtYrzWHqC8rg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ExPDJXwNcyZHcOjVLix5Mg0o8NCgcAXr6h7zE9nka/4nAsjO/AyanDquefWvs+awPy4YQKDyzF1dMW9t8J4PiVPvxiz1UfJMnYoFqW1r1x8ebIyuyMmADn2BPp7jf+M+dP1P595E/uH9b5HAVBTZTeWEttLaX/pNRzNFb0p7junHqB7LXejlHwp+s5Vehi7cYhZ+kHNwknKDuOB7smVXbihy/ylJW+enOyHwxoGn5eIa8Lf0t9YCCxBkNkB5b57DQg+ZArNkVLZNiab9cUxQ6j6RccMIMTT3OZ3s+qAgbXSk+G5pQTo9oqtln2HyUO9s3FoY7egH49ttRWg24QvjjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6hjmiwL1AUmZ7S2KGfHHRZDrMkZEB4X1U9wSDbmSnzI=;
 b=fLGhjcVbgH6cAZhB/xHRmysu+a+Trl7R0vhvOdlcu3Is2IRA/s3sBRZew3iQe8U02w1rpxyBIrc4iGAkeeZW3O+E7Y+74HZvJ1LVdNmZZa88lL5sdV/tOidcjplTooXsWCEfAo5RTHyoR1jNAWyKTyDAixxtzvGdC8x1YzTVFEz9HvPSXNkoSs2fhMeCX6jO7saVFPo+CP5zpPAE6nmDzTsSLt+gJfmy+vr2JX/w60oAJ2Dpzy/NLWGcTrIjl7d+33QiBXfBBaGdDRjuAQDoc60Mfwzi7fvQCZA3CGwEGlvDDxF3SljlC60bQVJ9g9vUMz+WOa2QcU2qdw1u1PKbXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6hjmiwL1AUmZ7S2KGfHHRZDrMkZEB4X1U9wSDbmSnzI=;
 b=R0WwoJ4FLvvb1YmFekd7oFCagugn1QCyVsUaesoTfFCWmiMEirmLSmP+5lj4jk8XBArcgyf6hsfU563CABQgjJE+z4tVb6vqftWSEQuB92w8FEoCilJP1POgpEoPGkbuzUbCqZAxsCdIiY7YTTZbYpVGDyr8Ywe5zElyWQmcZjI=
Message-ID: <55aad68d-e0eb-4b2a-b01b-7678a49e7e05@oracle.com>
Date: Fri, 13 Feb 2026 09:45:41 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P221CA0066.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:349::6) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA1PR10MB6390:EE_
X-MS-Office365-Filtering-Correlation-Id: e02b194c-01dd-4852-fec4-08de6b27b5ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?c0lScy90dG9zaFEzQjcrWXEzNEdscWRkbEtiMEFhYlB6bTU4K0FtRnlKdnJw?=
 =?utf-8?B?TDB1MkFlZmo4OUlCbCtIQXBpTERZT1ZKWExKRm5ONUlnYW94amMzaFdEY2VZ?=
 =?utf-8?B?TWthVklCQlNuSCs1aDBtbWZxM0MwUFprVmFyVWh1WDdnZGdoM1hGUWRWZ1Jv?=
 =?utf-8?B?ajU4UXA1K0dwS253Q3puU0RJZklhd2MyVmU4RjdUdEQ1VGFjbEhycmJHNHpW?=
 =?utf-8?B?M1RyRjJuWjdQYXhvT2tUVjVIbWlZSWU3ekdhRUs4aWs3N291RG1rSFh1N2VG?=
 =?utf-8?B?UDBBUGVhNXpHNUVkVVRhRlVmRVdPcGI2M3ZwYlFHNk9HamliRldmS2lZdmhB?=
 =?utf-8?B?L3NlYmZqS1lqMWpLV3ZNNWp6WWZUZXZBSmp2Yk1LaFBEeVZuU2Q3U3lDQkdX?=
 =?utf-8?B?NyszdHBJaHAxdm1Tem8yUDFxMU9peXdRLzhnRjBrWDEzS3gxUnJkZWlMWmFT?=
 =?utf-8?B?N2ZMd3NCaWgxcFFITjFtWUh5dXhZNzRUM0RnL2hleENXTXJWV0lobFpUcmc5?=
 =?utf-8?B?TEp0dEc0SGsxaWtVc2ZGQ2gwWU15cEYwZ2JFTmh4SGJMMWNvTmY3SXVJU2s2?=
 =?utf-8?B?L0ZLR3V1NEVWaEFWb3g5OHdkc3YvTTMvUVdqR09WVGs2STQ3K2tNaG80RGdH?=
 =?utf-8?B?MlBDTW91dGNIMlFPZm1RRUFYWjAwT3cxNmdva25Rejlsc0M2NVEwYUlvVlFP?=
 =?utf-8?B?VWc1eGc4TVdSSzRVQ0lNVFhWdUhFaTF2aFltMUtoeEd3UFBPMWI1dEI3WjIv?=
 =?utf-8?B?ZW5FUkJsOVdSTmtzanVObTlZbnQzWUpCZDJTejR3TW8wdDhyQUhyeXZKS3Fx?=
 =?utf-8?B?SE11WWN3NnJkTk0vRUppMXJCUWVjczYxU1NyYXZ2enpuY2FqQWRrZDFKL3U4?=
 =?utf-8?B?RHlXUlVJNkp5dzVraEpVeHFybElwRVI4UVFMVTNSdzBhOCs1bUdiQi8xOXdv?=
 =?utf-8?B?a3pTa1hiSVA0dVlGYm1LOUIwRTlxajlURWxCVDRzMkl5aUFHM0NWTnNpV2Ir?=
 =?utf-8?B?NzRNQXdFdTh5Tml0T3BEb2hFTkMwSVl4VWx1TmlZK0JvV1pGckVGNXo0eTY2?=
 =?utf-8?B?RHpnUEo2ZVUzNnh2MktZSThLdEFkUVpaeFRwOU5JbmJNNTNDL1hzTkxZVXdK?=
 =?utf-8?B?NGFZc08wYXYzS3VQRmp3M3V1UWFwbjJaL1NSM3ZscFMvRWJ4MnpFQVJUNUFw?=
 =?utf-8?B?ZWlSaDJTbDhkMTU0OG9SbVE2M2UzRzFhL0l1NkVJT01xSUpkblp2YmZhUmls?=
 =?utf-8?B?RStWQlM4R25lN1FPMTRUN0RFbE9SWWgyc01LNFZlWFJUWkxCUytwRHVXV1lE?=
 =?utf-8?B?WDA2LzNJWmZ2MlhNUkJ0NUM5L0NMRUpaaEtnc011NE9JaXNFZ3pYN2MxMkRa?=
 =?utf-8?B?MDd3cTNNVWJxSnRxWXFVcXN2ZnM1N1NFVkZpY1ozSkdYcEZ4VUhVcitaTjAx?=
 =?utf-8?B?Ykg3dmFvSlA3K3U5VGluT0JpVXMyeTM1blFoVjZXQ2hVMTdWY1lQbTNYZHRH?=
 =?utf-8?B?cnFldm45NjRkZXFFR0xmcWxuU0M3VW1nNW12ZGdMUERqbjAzTGs0U3EvK0VG?=
 =?utf-8?B?M0Fuckc4endsSmhIS2QxTS82ZEhEbmtmYXJReG1tZzNGK0hPY0huSHRISlJS?=
 =?utf-8?B?WVVMTkg4akt3dVhoaDBLSDR2M3lNdjUrRUxxVWw4YzRrSWR2YytyVHVUdXoz?=
 =?utf-8?B?S2ZSR3d0Q0E1ZjVUVVpqd0NtTGxGajNVdURhRWNqVEY1ZTMzc1crVExhMkU2?=
 =?utf-8?B?TlNjRS9EbW9JUW81OUZ4cVV0eVhUS2pvS01FMGt0ejNUMGQyZWhLcnNiSWdC?=
 =?utf-8?B?UzFmY0FndmNjMnZVc0NvQ2JiTUZXeVVRSnNwbHIzS0JqVkV0SUIyTkJrc09p?=
 =?utf-8?B?dDhSaUJsaHRMR2o5emswNm9oNkYxMitkZ0dsTFN3OUlTUUtrSTdNaGFBQzRL?=
 =?utf-8?B?T29sanRUWThwSWdnSzMxeXI5YVV0UGlZbEphd1ZhQkxtTHB1Z0VETjdJUFFv?=
 =?utf-8?B?NU4vaHRkV1ZhdzVEM0pHU0s4OVBnb0RTam82ZnpIT1c5Y2VYakpEaHQyUmo2?=
 =?utf-8?Q?yNsPI3?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VC9XSVRXMmRhbndoU3JGZXFBcllDYzN6bHMrV05zQ0dXbFY4b09KdndpTEVx?=
 =?utf-8?B?cUszSGxOWFNxRkV0SUhQK0pSMWE4M25vc1dDNW04UDFVQnFXaFA4UzVnYURt?=
 =?utf-8?B?b1VCaFczQ3ZDYytjUWdaaFY4Nk81OEYzc2MrMnVJblAzNHhXL3ZSaUNidWtJ?=
 =?utf-8?B?dE13TU1RelU1a2FsOGNISU84MlJobGk0QjFCV0V5R0NmQlVDYWJqVnJadmx0?=
 =?utf-8?B?Vkdsemh2NWxqNTZmSENTdEdaUUJkUWtVNXc3QmU2MTMwM0sxOEpMVmNGVFM4?=
 =?utf-8?B?SmFINmZUbDRZSXExTHhQOGxIWmw4ZjFiRU9pUmR1andkSVpvTkhxdUtIR3h4?=
 =?utf-8?B?cVF6aW1WdWVVaTZxSjdnQlFUTGRNdTZvUlc2SmFHNTNBK29tSSs2N2VZMHN1?=
 =?utf-8?B?SUpRTDUyUjF0Vms5aVVTWEtUVlQyR0hTa0QzMG1VWjFGTy8vVnMwUHlnSmM1?=
 =?utf-8?B?K0lSbjg3UGNXRm1Dd1RHT2I4S1ZIcHYwK2Fnc1MxSzRlMGthY09TbUNkUXhy?=
 =?utf-8?B?bVFtRWhnZ1NuakI2RFJyMFpLWk10L0VYT01Jb2psanUxL2QwVGNOaXk1d3Rn?=
 =?utf-8?B?RTdFaHo5U01GdzVkWTBDRWprYTlHV3pSc3BmRkV6UmhEWkhtMXBQL3dTN0lV?=
 =?utf-8?B?V0ZYU3M4djhac0dKZW9ULzVIdUdtak45QmFEbUZMSmdLV3Z3N0RZUkZlSzBM?=
 =?utf-8?B?VzdwV0QwT2Vza3JDNG1yQWZValNmdkV5MXVsS1dORHZXMGtGOXZhVHlmOHVk?=
 =?utf-8?B?ekYxVDZwb1Z2MEl0WkhGdm9tZ09Hc3I1ZCtiTDJ0QjgwVzdXSHdlWkYwTEZ3?=
 =?utf-8?B?a1YxT3E2OTVucSs1N3ZYMUwxSjBVU0o0V3NZMUt4dVJNRmNtbkc5eEt0ek9r?=
 =?utf-8?B?SkpiYnZjUURva2lzemovTTdINDNSYVpSZk9FWHR0bzlaTk5ZdCtwR1k1dWhB?=
 =?utf-8?B?VnhFQzJ5RlZUSmxkOXVEUmRBdW1RdFpKT0FMZWtjbVU5S0haaGVrYTEzR3FL?=
 =?utf-8?B?RmZTcWZRUVFkTExWZUhJVVgxRU9Qb0ZPUklHektvL0o5cE5ONmN3S3VEMDJI?=
 =?utf-8?B?cXJGeTQwcDdEUVpTVkpmS3ZNU0VMWm1qeVhDV01oekpLby9YNG1QQXlKSytL?=
 =?utf-8?B?d2VkZVUralpjSitNaHMrc1daZklLMkx6bStVZVRnckhnbXpuZlVVYzU3MnlH?=
 =?utf-8?B?bkVGV0t4L3EwMkNoa0dzSVlZbFlhZ3BVOFBRS21iZ0hubllLZHNmVmNjSHFp?=
 =?utf-8?B?bG1jNUlWUlJMYmkySFA3NjRFYkdHaXZReldGMUg1SmxqTXF5ekZaR1dlZEhD?=
 =?utf-8?B?S09WNWduU3hlVWp6V0hOSFBhVUVSNlgzNTBpNUhjblludDQ3OEtiWUtMMnky?=
 =?utf-8?B?REk5Q0NyWVVHaElhVE42YkE1TEZxaFhvanNhMUxqM0FwaERzVXQ4bE8zU0Jl?=
 =?utf-8?B?aS9XeHg2OWxiRldmUCs2Vkd0cUplSlo1ZTlvRDZNbi9QVE9IS2VhczQ1MC9D?=
 =?utf-8?B?MmdLSU0zSkRUOEVPZnhoK2FsVlFJcHhudmt1WVAvQ0pCU2R1bnluZTZkUThG?=
 =?utf-8?B?NmFtRjVIT2xiWEtpd2FlcVpScE1xRDJ3WDhZbDFxeEFnSlR3NjRveXlkZ1hX?=
 =?utf-8?B?aHZwTjVkU3ZKRjdDUy9nT0Q3dlc3ZTdIc1lLVmY1dzlzdzNUMHNSd0M5Tkw2?=
 =?utf-8?B?eU1YRnJweGxGQThPekRQYXVkeGx0TGtQajF4UFV0cEZya0p4czNhbjh1amZJ?=
 =?utf-8?B?NFZJZEdncU1LbG1yWUltK3pEaU5lclVrSFhpUmYyOWFCVkV5R09pZEpNdkd3?=
 =?utf-8?B?M0lFbk5xQVdxVUdZY1FBLzNKNDVQYW9xUjlaMno0enBQS1F0djR3cW1wVS8x?=
 =?utf-8?B?aU9CQkN6VjVZcEpFeDhxdk5xcmJUMEd6R0grKzQvOVJQaS9MSElwMXViZkY5?=
 =?utf-8?B?dnFSSGVpSlNkSG9vT1c4Yyt1YlRsZWsyS2ZTcWtXTVowY1VTRWpzYjV0SWYw?=
 =?utf-8?B?cmo2V1NUdCtkUVVtblRrT1JMQm9acm9TMG5KNzJkY2RTei9VeVE3ZFNlcC9r?=
 =?utf-8?B?NHo2ZUFQc3pKallMU2xRdFJzOXJ3OTFTWFgzSTdNbGFhOVFtMjNZTnArdFJ3?=
 =?utf-8?B?SkpWbmpFVTNlb1RKYU5zU0p6bTdlcGtmVGdkY0s1TmxsbUdhU0U0V1F3L3or?=
 =?utf-8?B?clFXVWZQRWFWeHh4d2ZHMFRQZ1hNRzJQVFhpOVpjanVyNGZvS3pqdFdGM3Vj?=
 =?utf-8?B?dUNUVm92MWY3UGhLdVpqcHhLVjlBWVcwSzJYc3lTV1VSSFVGQkRzWjBzcGdh?=
 =?utf-8?B?Tmd6UTRtaFpGZkkxb1RRZ1lZUU9FS2tsbEZIY0dNVW1RakY1VDhSVXQ4d202?=
 =?utf-8?Q?L+kq/FD+bGMnnjq0=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	xF9n4g9oTf9PiKNJ+huzZ3XZqzrSArYCCamFB57qTBta0K4wGvQug87/aih6VIeXMJJWNLV2IJ+YNBLdP95o8oM04Yw596ve8L5RilXK3OdlAczT4+qM9bJPzIcOJeeugdxxedCm1rHeA2HwLknGBunYF9D0ztsQ1+OsynbA209MkCLwHZXIguz/6mo45sjj1H5OAAym1kroFuh+OLa2N3I3iYezLN/+e9ZiJkXH0FJ1ovDMURa9aduY+NXY042DgjBwFQNeGuCoIpeSFtjeAkXAB05sL3xHzIOBAM/Fm6Rb0bgPgoqpRqigcMIGPDW1V1tpq4syEWZa/bOO6cedC9jpaXMWo15yGjAn4ksNGqlNaSP857VijVu/V8/RIkRDNnYj9QFB1lIaTwzbwzpPc5gUPoWNy/ZZ3hEkxkCm7bWEE32ofLr+MFFwRuWyqFT3lPeiWH8gjkouAsBKSB1/2rwv1njh0+msSZfF32kaaFVdJkGXDqaC1CUOfNog2F2yBXs+lTng5RDwq5rdHMzEM/kOiOw3K3FpBZLfr9vKzoTdmF9xfG7zeSLXrVVEFChpITnViUjANok6R73Dr9FwJ+LXUgWSvcff+8eHT7kM0aU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e02b194c-01dd-4852-fec4-08de6b27b5ff
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2026 17:45:43.6114
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ciVhwXhWHb73ZFfP1wMuUEzvYgBpsHM1X7RZV8yq2kufhf3dlLbkLOjYFTJ9QM7EYJSoEXhrO8qDGUUKewbCC6UiKcJi2lmTZpdLx+1BMgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6390
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 spamscore=0
 adultscore=0 phishscore=0 mlxlogscore=904 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2601150000
 definitions=main-2602130136
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzNiBTYWx0ZWRfX3iAeqDZk1I5i
 rstI3f27HvjF1Cty2hu0Sk3e4VGt+ybd60aW11+QO2Sm2FSDYv2aRofljTlmEksq+53O+O9lmZo
 tZH7GbFMlw2dgvBrCgwIHFXXr12pEOwc73j8OwmtHcf4CovZvkhOtDWC3YCqr2HAAhAYV7dvDbP
 LC0rOqkQzsvD47qB2pojmbz91CYEGg+0dCw0r+muGGFngoKLZ2bg5c7GZVHuXQDUOk8tjJOKokD
 U3fJ8HozsyUMZnLDpwziUFCM2u29WKC+ZfQS51+u83XFNG10E+raJ4PgE4CWfSQnG7uWOF68Vil
 G0J9TYzxu3cZ7WlYtuZUEf60Nj38AqMtWWKHej+OQZ3dp9ZduuULn0HdQdEcgWoWuxuCtfxb53k
 jmHptsH3ZoZx/lE8Sd0d8c8YiqqzCORnz4ctVPJkHS6NFxSgV9jopPA98ZZtYOx7sF3L552bVTw
 YpPGWKsgzuoBgBwGN8DEncrpfeMrd6Ox1OjkGJTM=
X-Proofpoint-GUID: qQoyxwIz4eGcTho3n97F7PYPLWeGx0Jq
X-Authority-Analysis: v=2.4 cv=AqbjHe9P c=1 sm=1 tr=0 ts=698f634c b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=wyjpycHzAAAA:8
 a=_IEhM8lNAAAA:8 a=nKonJPqVfFBDH8Lny8UA:9 a=QEXdDO2ut3YA:10
 a=ROKTiUA5NBresHysc1Cf:22 a=WN5SZLvFwbRUu1hQBHWk:22 cc=ntf awl=host:13697
X-Proofpoint-ORIG-GUID: qQoyxwIz4eGcTho3n97F7PYPLWeGx0Jq
Subject: [oss-security] CVE-2025-40905: WWW::OAuth 1.000 and earlier for Perl
 uses insecure rand() function for cryptographic functions

https://lists.security.metacpan.org/cve-announce/msg/36977848/ warns:
> ========================================================================
> CVE-2025-40905                                       CPAN Security Group
> ========================================================================
> 
>          CVE ID:  CVE-2025-40905
>    Distribution:  WWW-OAuth
>        Versions:  through 1.000
> 
>        MetaCPAN:  https://metacpan.org/dist/WWW-OAuth
> 
> WWW::OAuth 1.000 and earlier for Perl uses insecure rand() function for
> cryptographic functions
> 
> Description
> -----------
> WWW::OAuth 1.000 and earlier for Perl uses the rand() function as the
> default source of entropy, which is not cryptographically secure, for
> cryptographic functions.
> 
> Problem types
> -------------
> - CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
>    (PRNG)
> 
> Solutions
> ---------
> Upgrade to WWW::OAuth 1.001 or higher
> 
> References
> ----------
> https://perldoc.perl.org/functions/rand
> https://security.metacpan.org/docs/guides/random-data-for-security.html
> https://metacpan.org/release/DBOOK/WWW-OAuth-1.000/source/lib/WWW/OAuth.pm#L86
> 
> Credits
> -------
> Robert Rothenberg (RRWO), finder

