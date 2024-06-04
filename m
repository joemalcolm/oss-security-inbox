Received: (qmail 26197 invoked by uid 550); 4 Jun 2024 19:44:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26152 invoked from network); 4 Jun 2024 19:44:48 -0000
DKIM-Signature: =?UTF-8?Q?v=3D1;_a=3Drsa-sha256;_c=3Drelaxed/relaxed;_d=3Doracle.com;_h?=
 =?UTF-8?Q?=3Dcontent-transfer-encoding:content-type:date:from:message-id:?=
 =?UTF-8?Q?mime-version:subject:to;_s=3Dcorp-2023-11-20;_bh=3D6S9/v4hs6WPO?=
 =?UTF-8?Q?1/zP6ODksooM9EQg9dkHF6nMJeaGZPA=3D;_b=3DCifA1pQM4igreKOGcku0XTg?=
 =?UTF-8?Q?KT0zHkq6VfQWQqfGHWapQXvKABi2IEY/FgoskJJeBQARP_E9UxFl+dGE3psjRdP?=
 =?UTF-8?Q?8lYiyQIaM6RHjphWJgn7jTSGMFECVTr9Fc/KpTE0hFmTUFKDfUG_DezdN0UZGTc?=
 =?UTF-8?Q?XlAQl6AC4Vl4kY5cbPI/R6T9S4soioDoetQnYsdhWAQa7uhvlyVUHsnUQ_2Q4Kk?=
 =?UTF-8?Q?8hlvSQmiGfWPU+qmkLxGtdV78hqzAYb+YB/ySRw6iqsKC8wGps+zkt2nGPZl1/q?=
 =?UTF-8?Q?_PPPMr31Ihw470SjVB6guu7OorJlWQJmELq3P4sN2Z34Dx75DeD6m12rCqhU4HL?=
 =?UTF-8?Q?vcIK35_Kg=3D=3D_?=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OiTYI7XBZY6ye5snQpj36KLV9Y9I90Ll23NOwzvn+hRBj1hEVWnkI2yezSdTD/n4PN1uQ9r+4GLdDzhRdOD8mgr7u4F9zntPHramIA6qATr9+lx78nsHHVAy2+S575vLXxnOPUm89ZwRgfCuqjj3KkMvbfaNNNYMJdZ9nipCMlxqbhH2jkDCOsfJTOUE0LNeGtZ07tacvxN2sYskwA1zpTY/HhA9s7gVJiW6TBwyiZS4w/fraiOgZJbVHKyUTgjqzQ4xstLgMH6a2CczQYUNpaUCQ0pi4vDUVEDh4sdRsUfLFQk6ZGKKA+Ggd3dD/i41bM+GbiNxZ+cy410yfK7a9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6S9/v4hs6WPO1/zP6ODksooM9EQg9dkHF6nMJeaGZPA=;
 b=ZjCxA9QXoaGhuPABBZwW1Nu2o7KDtafT+FYZjwifC1lM0uUmO3DjbNH/dcBhN3Y1aVsNFWs9UT6aNQm0ZRcTy3RBu+nzex8Fg9FeZYqXkbLA5axFeLjg77UTikiHoYt1Rz2JwJtY7KzD6durruvRBbjDYks+wll8eXu21GK1j+4cL3sEU7sob5Z+a/+JSJzGJasL1eQ7+ikIrvly6HW2VhQZkEFbm0b+mmD9E4IZap+HsjSmcSDn2u+grIztQ6Ju05KkrSsYAr7EEnq9IGKU+DpwD+7OwTn5a6TXzlyx5vgsZXH6+li1JIYu8qGjmMhMXE5Zt7DOFmeHtmRKSrC/mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6S9/v4hs6WPO1/zP6ODksooM9EQg9dkHF6nMJeaGZPA=;
 b=wJ1LAq8VruQ87LBTo9qVihCq7WhtcFn0scICDu4etaHLJYqPGv0Xz4nC4f1lECQ/9VCu/JbjalofdkxTiZ43VW4oZxbN3xt3T9QTBMQoci4JzUCCI6ctSRpSf18dWGH4pOns46HRCd0dviyUUv3LCI520yhH8i04JG3PdNfP/60=
Message-ID: <d06cc1fc-aac0-4f33-8c6a-8b8e09b330e2@oracle.com>
Date: Tue, 4 Jun 2024 12:44:28 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/nZ1KboV9G
 q5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2gEQfPiyBw+trIppWF
 RV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdEa6f4uLqoNHP+m4yYnzapFuMD
 /R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx98qUR473l4buXjHgDkkXXlHqdzil1vK85
 PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwVPb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5
 vR7PdjM32ZJCN2+aM4dYfNzQxQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJv
 GAENBHSH1QjpZMJGCTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLB
 ido3DtAETbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w
 ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsKCBBMRCgBCAhsDBgsJCAcD
 AgYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBEoZPAbTXnxnD6TvC6L7nggfLRMOBQJkQs2eBQkn
 DNS0AAoJEKL7nggfLRMO1esAnR4FVD60BpDY/bJp5RC1VXhOVlo4AKCJgsQeVeGLxDlMuhAm
 bcCkOjafqc7BTQRGm/pvEAgAmnlpSWGjmtSGlLqKTuymwBAU9G7Jw8ow27QngXS/86g/PTzm
 yhXzK0uPgeoIaTZlqaHWNKCWJnC6T2btXtaDHH6cElrClYNf94os5sSt8PBDh184W+NtctAy
 Y2dA1pQYhYs8/eXwa4E4cyrrQG75M+CHrbu9Se0vlERARCpNcjNYLpTXRCwNuUvAi905VJ0Y
 XnGX83WbJfNIq+uxnBa2gVzwb2/2FwKOG03Wyb1vs6NznWJle9x61y8/LlEDoBRbfIQTFp51
 R0ue8gX2yMVgh8lYVViHYCBq+cat7p8X41Xa/fN/HfBFPsf3/+bhggNgmaBmDJBxxd6BPB8Y
 EireiwADBgf/UWIxQwwRLkiXPacOoh34MJYQIBTrCC8gVFxetlbEPEH5mueZMJegAPTF52l8
 6REenxdNVz/0xT7BD6VlHHY5DowlbRca4W8eb3gpkX/wfNYDYCHtTifT7ewumTrNZx5mrbNk
 0XTJVOPAP3z7E0rVD2w/xo4p22DzIwfeGKwpHqt1b6Z9fmrRDwaiXaFmwUf+rIiGc/OFcOSe
 46HwTmIyTOt6NVdQSf75jOPbdeM/n1I5svOdWTLEj6QEj2q9UQ98UEPJuMdaotyBFwKlcDOO
 LMSL793fWINrYSskdXhHjaht5wWqI+egO2JfciI/vP1+bEzhpY9llGq+r7WG3nCSf8JJBBgR
 AgAJBQJGm/pvAhsMAAoJEKL7nggfLRMOgugAoIdhGnD9d/IS6fDVgv+4xnOXvyohAJ0VVxc1
 uoPzepWFbgvLuHIMvyjRog==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0093.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::34) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|MW5PR10MB5827:EE_
X-MS-Office365-Filtering-Correlation-Id: 76cf0fbf-7898-4359-ea60-08dc84cec07a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NVhkMndZV3g1aW9uMkNING04b2tQZlNtb2FOckNYcFFDVTVXMnZWdzdsY2Vk?=
 =?utf-8?B?QWxyMTJjYnlUUnI2NGg2MjhvbVI1eklIY2tIeC9ZTkhNNGpmb2JUQ1YxcnZ2?=
 =?utf-8?B?dEh6bmFaR2M3anptK2RyK1puOG9sYnlDVkdmVmdKaGNiSVlkUjA0TmxEMWRV?=
 =?utf-8?B?SU5iWnFmN3ZyMDJGdVk2ZkkrNFdnUWhRMCs2ME5ZQ3craDMyR3NwUGMvRFNX?=
 =?utf-8?B?Skw5c3pHdHJ6TmJFQkZZTEQ2SWEzeWp5N2xYTjJWVDRkZjNEU0RSMHdrbXhJ?=
 =?utf-8?B?Tm9Db1RJNldjSDYrQ2dXWkRwZld3WHhsTHo4ZGlxbW1IY3oyNFk5OXBUdXVo?=
 =?utf-8?B?NjRMTTYwc0lFSHFoYjhPbDZJVE5QWnROZVBSZWxHL2VtYWYyVlA0b0FoMncx?=
 =?utf-8?B?Q2VXaHFtSzdnWktQWlBJY3NYNWdCMThWUlc3RmRqMTZkU3ZLbEtIRHNaZVFH?=
 =?utf-8?B?dnRSZDE3SWN2NmcrU3lxWFV5R1lKNkhOVDZsMXcwL2dmRXQ3MzFyUUNkWExt?=
 =?utf-8?B?UUtENFk0RC9zcnliZDlqUzR4a3p4andIcUhFdXRpcHpHZTVLVUVUZWdINnUr?=
 =?utf-8?B?bEZMQWN4MUhYaWhXd2ZmcEcweTFDTGgwMWh3SWRVK1hhUHAxNTFXaEdlNHhn?=
 =?utf-8?B?VnNGQjBEQnl5aCszcG1wckszcExEb3Jkb0QyaStHWlVuTDZrbjBoZXpWbFZk?=
 =?utf-8?B?a2xHT284ZGxNdWtFRWVxVC9aTUlkY2ZhRElpaUp0L2JxYWRQaFdXL1M1VmMy?=
 =?utf-8?B?emd5bmFoZ2hpajY4ZVpXdHhkZllvYTF2a0I5TVdQVFpXdVdYc2tjYWsrT0Jt?=
 =?utf-8?B?NFBjalZQSFg2aXBhZDJ1M0ZpVVdid3l5VVBmL1RvTHlYTm1JYkpuWGp4ZXdD?=
 =?utf-8?B?eldmczNsNEIwS00ycjZpdHNOb1dtNzUxQWdTWUMxZk1TY3g5Nno2cy8rbEYw?=
 =?utf-8?B?R2llT0NoU1d6Y1VFSCtrcC91SnVHU1picjdWb0xuVnl0bWwwQ1F4U29PSXp1?=
 =?utf-8?B?SEFRY0hIek9iQ1psR0U2Y2JYdFl0bk93UlF0cTA1TTVKOWQ4LzVUdnFuV2Zj?=
 =?utf-8?B?WG5KcmZrbzFqQ2NFMTYwN0VSYXZRVzhtRVJpWVBuc05QQmxJa1ZjKzF6YmtC?=
 =?utf-8?B?aWRjUnFsUGlXVGpIYUJuOTFUQmxDM2xmbld5Y0RrQkpqUWZ2enM3TU5hcE8w?=
 =?utf-8?B?cGNlanAzUUlRSnBoZFBKc25ia3hoUzBnemUxbFlIVU80U0pGUHgzdzJZL2VD?=
 =?utf-8?B?dDFpSk5YQmp3RXJERk1lRytBVkszMHpEVTVJVGM0WlJKZ1dSNmFQemg5LzZK?=
 =?utf-8?B?Q3VaeVFCZVNlQy9SRkY3MjEwOWRoN3podGtsT0pkSWdiVEl6bCs4aHlncTRk?=
 =?utf-8?B?M1VjdGtKajlQZXpBWWhMdjF5SmJsMEdtVHM2UzZaUzlNbWdHcXJCOENEN1Rr?=
 =?utf-8?B?NFE4OEZ3R2FIZXhlVEIyelJoQm5nMUFYT3VER1MzWWtIbkxFditmS1oyTmRv?=
 =?utf-8?B?cTRwemhsdmQ4S1FDNHJvYWh0QjJ3YzIvN1poUnJ2b2kzRTVqYm02Z1pRV0NH?=
 =?utf-8?B?WUUwUjlLTjhaRzIwRzVDR2ZJbUt6VGY2WGJjQ0pJU2NDOWpwVEF0MjdTY2gv?=
 =?utf-8?B?ZUZ1T3FBWDVUMDQ3OUxyVWd4Q294cmtkakJxcUNwYnZsbGMzL0RLd0twRWxn?=
 =?utf-8?B?S1VNckxXYU41NWxDTFJUYmM5Nktqalk5N1pHMzE4cVZyU3RHY25GMkFBPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bE5LNlArYloxQ2U2aEJBVkt6T0ViVUIzb3ZhK0gwNXpCcERKQ1RoQmxoUEVr?=
 =?utf-8?B?Zmc5Z0hxT3VLcVFGZ3JpRWpXYnZWUWtBM2JmclhUeThZNHAyR09kUTRiczJI?=
 =?utf-8?B?OUY0SGt5VUVFNytld2JqZW90c0tiTG5hVFNWbW90WU5KMnVNd1JlRnBzSC9V?=
 =?utf-8?B?L0tMVTJScHkvZjlrbERLM2Uvd0l4QlV1d0cweDlCR2xnNDlMK0hKQUIwcVVP?=
 =?utf-8?B?QTRjVkx5SHNlSms1R3FjRENJQzE1blBRNERkbW9uMmxNUzh2ek1TdjFmM0ZE?=
 =?utf-8?B?OXNPL0VzRVY5YVJYT1UvY0JicnR3S2dvQVNOYWx3dWlBN0pyaEsyd2dXWmhO?=
 =?utf-8?B?aCtzUUFCZ1JheVpUa1BmaS9lWElCaTdTbnpjZVdLZVpDZTNka0YxRmRSYkZX?=
 =?utf-8?B?V3ZQb1lyYVV0TThhM3BNZkVVbllsVVNPMFYyNFFHc3hOMUlnbkttZC9IYUJ2?=
 =?utf-8?B?SW1reHhnYWNmeDdwZGU2NlFKM3FFL2wwSWhyWWI5Q0dscG85c3pINFZDVE8y?=
 =?utf-8?B?ME5qU0tQaUs4SHpaMGQrNkVnb2FEYlpmMGJtOU9BaFc1NTdLK2pLRkhSK2JN?=
 =?utf-8?B?bVBqWHovYmxoWVA5UllibUZHYnFZV21CSWhlNWc3cWVTRWhHTWFDS3Y3bTBi?=
 =?utf-8?B?bVhPZlVwWmVyRUNsekhsajYzSnpkNWFTdFR6TUdmQXZ1bW5LSUxGc1hvclZV?=
 =?utf-8?B?SldCLzlYOTRrSktBaE1xMEcyOWVkWHNrSmg2TG5KaTA5TGxVak9aUXlwdGFo?=
 =?utf-8?B?ME8yVkVKV2VFRXJFN2h2UlE3WndtVzRCb1R3by9kVU1Rb2ttTzREL0N4UmdM?=
 =?utf-8?B?NUgvaTAyYnp0TjFTV2t3UFhWWW9tZXdoQUZRQW9OcFBSdi9FUURqbDZ0c3Jj?=
 =?utf-8?B?WlErTm4wK0ZLdE5rMzMwa1M5L2s4OWV0Wk00STVhUjBzQ1kraDh4ZjhaUWFv?=
 =?utf-8?B?T3M4anpkWmRHZTQrZXk0dkNuRWFTZFhEU0FicjFrL2tvcmM5a0h2UWltcnFm?=
 =?utf-8?B?UUZiSkZQeGtOcUJIQlVrb3psdjVSVjNBQXdNSFBiWjBMRkFYUDJCS3loNkwv?=
 =?utf-8?B?THdrQ1V6aXdzeFczbkVKT0c4R2dmNzF3VGVrcFo1NUIyN3lHRk9wd3M0Y1FH?=
 =?utf-8?B?dGNwVTFIUXNNcENxSkNsclFyd1MyM1U0WlZ1TTltU0swUmVyZ09Bc25TN1dS?=
 =?utf-8?B?bENJeHRkZjMvN3RwOEFTQ2xZbGFUVFBlYmJmTVZuU0FzWEF4eWxIR0xNeHR4?=
 =?utf-8?B?MzN4dlVHdGtCZXk0VnlvSFcxSzU5Y3M3YkVRWndibUpRZ0hvaVpGMWFtQVFI?=
 =?utf-8?B?MXJNU1hZTmtqUVhTSHlVbmhDZ1R2V3VlZy93N08wWVgwQmJWYjNvUms4a3Ni?=
 =?utf-8?B?UXVoNlZCVEhmZXhldUtYdG9oTVFsZ3BCN1ZiR3FrMmIzZUlwT2dia0lnZGk5?=
 =?utf-8?B?d2F6Ukh1bit0bUl6T3FsZlBRUE1icVU1RHdKRzQxUDlDY0U5WEZsODB1OHoy?=
 =?utf-8?B?NHF6bVdMUjk2aW1TS0xsSmNsdnA3bDdoWlIyRnBMQ0ttTURnUHVrZWpsUldL?=
 =?utf-8?B?aGdwRzF5YlVFanJ4VWsza0RzRjViSmJNbHU4TEtrY0plbmFBVGNwektPVHQ0?=
 =?utf-8?B?UG1hYmZ5NldYbW5RUVJmTU9ycUUrc1dTTm0wQ0w5MENYU3NCSnZWNEE1S3ZY?=
 =?utf-8?B?dE15TjFxM2ZNdkM3UFgwbHNNTVMzdFErUmFOTk5uNTVwazUzeXJzMFI4QUVO?=
 =?utf-8?B?YWVyMk9hN3kyMEE1dkJyTHZocFdkVm11b1NpbDRpNG80NW42NTNRWUp0RWJF?=
 =?utf-8?B?akQ4dUJnWFg1V1k3WEp4OVA2dzVmU1c3MU5CdElYOXlnLzBwd3dVMFp5c2xD?=
 =?utf-8?B?OXZOeDMrQzZmdmJoVzlWQmtKSURIQm42Y3pIc2tEYjVhVUJPM3MrZ1RCNzJJ?=
 =?utf-8?B?ZTFqd3kxejI2dlZWeFhiOHpxVVNwVGJ6U2E3M25adUF1ZnhBSWJORng1S1dB?=
 =?utf-8?B?Y3BkR3R3ZHRvTVdFZ29uTmF4SUR2MmpraWRVQmtXOVd6KzU0aTM3djcxYjZi?=
 =?utf-8?B?WVN0bGt5Uk9MS0pUd01hajhoM3pMUHEyRC8yaUFSNlR4STZBMjJQd2wvZWcx?=
 =?utf-8?B?WmZ6Tml5U0dhY3hVc0NRUzB4QXY3TDJhVFVFTWhKVnhQcWc2U1dwWHM0aStU?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Y4s2WXdlGFYQpbJQWDYz4S7t3G7NToAmjdvWZ8bxv3DMeK9Gp3AUWj5DCM6GVwrKaRTX1+QAEnXPszY5APNMT3OukerzdMGI2k9fcycqiSl7OPpEPEXOrZmNecjZ7j4HY9pOrsS07MY+NV8Ir+RSQHQad2GjS4WLQfjC9PQL9dv9q0aDxglQSu5/B5EdpO6g6EIzCscZRK1Oyi+6UJ8XeiFhEehGfaBQ8Bt1+mnxY3aAYr0jDpvH+ChBbP4QuInx4EjtRZepSLD/TZcfHIxcBn44SRXMnsKPsQhvTyx+fYsfxcq94r2WfC/3v0c8rIJQcykpHsmYUbTQBGIxeYHpCxqVZGi3eGte+gakuIA3tNWb3tb0r/iEBcL3Srv9S0foRcO54aOznqkS9hdGYKRDyFoVR0xnFbBZCdNHhCtRHuwBUBi+bgJnyET2AyQq2d40ifNYkxwRAAlmMuAnjfWnOBGz9YwF1Zm2bb7CLyGrE+2EhrMKogbSx/e8gxkbuwrqjS66j39YaQMJEXEJe6sTmrlqUChPZRiFGRyOvmtOdNhDnVFcraZEuSqn1XPWSxSvWddI3RyCLLLj1Ma2IyfSj3y6mne4TtvJPzn9RjTVZl4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76cf0fbf-7898-4359-ea60-08dc84cec07a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 19:44:30.8281
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RdP9Y6aJUK1Y4UCWTLpU+FTy19Pbvu8rXQMdu+Alwm2M9uKt74ayoYNWxWSlk4feDbMsbP/4GjExa7KLHCl0Qcu3qIdPYI+ZPNeYC1j9kPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5827
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-04_09,2024-06-04_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0 spamscore=0
 adultscore=0 suspectscore=0 malwarescore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2406040159
X-Proofpoint-ORIG-GUID: HDBDHtp23kSZPlpDUsNFTYPoGEWuD2ii
X-Proofpoint-GUID: HDBDHtp23kSZPlpDUsNFTYPoGEWuD2ii
Subject: [oss-security] libarchive 3.7.4 released with 2 security fixes

https://github.com/libarchive/libarchive/releases/tag/v3.7.4 announces
the release on April 26 of libarchive 3.7.4 with 2 security fixes:

- rar: Fix OOB in rar e8 filter (#2135) (CVE-2024-26256)
   https://github.com/libarchive/libarchive/pull/2135 doesn't give details, but
   a detailed writeup from Trend Micro / ZDI has been posted at:
   https://www.zerodayinitiative.com/blog/2024/4/17/cve-2024-20697-windows-libarchive-remote-code-execution-vulnerability

- zip: Fix out of boundary access (#2145)
   https://github.com/libarchive/libarchive/pull/2145 states:
   "If a ZIP file contains a file with an empty name and mac-ext option is set,
    then a check accesses memory out of bound of name."

As noted by Will Dormann on Mastodon [1], CVE-2024-26256 was issued by
Microsoft's CNA for their bundled version of libarchive, so the CVE data
currently doesn't reflect that the fix is available for other platforms
from the open source upstream.

[1] https://infosec.exchange/@wdormann/112559605548386109

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
