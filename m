Received: (qmail 30600 invoked by uid 550); 5 Sep 2024 17:21:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30564 invoked from network); 5 Sep 2024 17:21:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:to:subject:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=f
	SB/4n9VgvQjcZc9PXoPZnPQmpDKr+LIew3tVSlzQfI=; b=mVeWW0RVK3x5sCVME
	mSFOYf8e5rCA5sXvQMofKbWJpoJnJ2wVE7JHOMnYpxVcy7X/zuNd5iRfqKEzk3p+
	VyifkF8FjEVJCuZt3kG04Fyi+ZwTQPkzrENJ1G1f1/6sK+rIerAQcC9/dp7xNaQB
	gS0WEPFvpBU+t0j5FToHjMH0tWHFn49jDslwDCrloFUeBV81z35mDyxys908ntmm
	XrzNYY54NGVvQFxsaGOU/IQ4ekoy0fMBIvrXzs3H1N/XlOu6ItnyuNc3vd3PVtwQ
	kDgqAtXeo3SKz50t752KWgvTI1MSyMDLUx4kmOvYNP/s6zOrahU22sAzNjmZeeaJ
	2X9Gw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UQYKTNHO4IYkWk0tJIEazOoCk2I/xXBTNoJgqmEzYgTu/A9P+ZVKKYNq5KOvOFRwJMcCUw8gXZYCumS2VATe2Dv6PXspH9iPcN2mX0lOFO6qfPO/46C24Z/seUUf10neU9xo1fxhvZLwT5PwkSFLhkzpbR2fSF9694+p7ceLz+GI84j7u4bCk7aKCKp1058yxWt6P5aS7LMX1igbdRXyvxq/ddkiXvHbaY7SnqlPpeCpdeKOzOKUQEh6J9u59E1WezQu8DiW3d281rnnojUcuViucEuGXdxYaZO7gEk0WzZAf/DKUuJbalR2E6u3wmZuNjuBAeq0UhE+m41x/3YymA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSB/4n9VgvQjcZc9PXoPZnPQmpDKr+LIew3tVSlzQfI=;
 b=I6bODgaVYCVIpq3shW2Rjh1Xm5uVTrxU5HqPKXyfwWZSfvo3DNpvGDWPJf9fSkZRzQoWhoJMlbsJd8YLOTzueeIxwlC30Xye46aXeZQ6bU5lsJnYLnaDm+RAOk3HvnTSoHYCY7tlTEv3kACusW7SaRfxgZ+2OmFdithTc4/Y1QcJ0n9ZEliuZawxAIPpN2Jq6ePqsq5MlzWoE5lujN8PnlRlFs1S2+y106HHIZJKVvNK1BKFrEw/QuXF2VMIisA7fmh35AYL8kH2t1MkWPSaPFsk7Uy88sg7tja1slpjQ6vifk4kwLOcX3DTAEI3LLf2noLOXm3EziNnicHndTTDhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fSB/4n9VgvQjcZc9PXoPZnPQmpDKr+LIew3tVSlzQfI=;
 b=xO5uF6hvpUjl2ml8yY/BKpXnArx64IsCHFKqQziZh+IyurLw7WG/eRBLhHz4fpjwYPjBpql1etr+XzehwOYmo1VX5qjIPhWM4yrh2iVFbLSnuBxGpS/C/9Mo65Hk0wSYwtCgUlQ+FqKt6YTO0SZcpJt8a0M+6eexudf09aoEmrI=
Message-ID: <ac5258e8-6cce-4125-b467-7cc666f842e9@oracle.com>
Date: Thu, 5 Sep 2024 10:21:27 -0700
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
X-ClientProxiedBy: BL1PR13CA0257.namprd13.prod.outlook.com
 (2603:10b6:208:2ba::22) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA0PR10MB6915:EE_
X-MS-Office365-Filtering-Correlation-Id: f6659bfb-017d-4fd9-92e8-08dccdcf2e51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UDRCMEw2STRqSWdORy9tWHluWk85S0prWEMwdlJLN1lnSXVUTks5Z2I4Vldz?=
 =?utf-8?B?OWVuVVFqMDJOV1hma3BYdElVNGo4a3doZzF2QXcvRHh5UzZtQWJLR1dHVERS?=
 =?utf-8?B?RXdwd1RIUW5KaEpXWjF5QVRuL25UQ3BXejNqU3dGZUV4cnZvcm5GVUc1bkVF?=
 =?utf-8?B?M3k2WkMxRkZnaUtNME5mSVc0cUdlWGNsaUlzdTF0eldnM1l4TjJ2ZlFob2Zh?=
 =?utf-8?B?T0FEZUt4dlZqbWZMZUMwQk1FUVYwU3VDSGY1b3IwQnVIRllSSmFOdE8yUTRR?=
 =?utf-8?B?all5YnRNdlNlcXgwb1JXR0lSTlFQY3Nqa0s0b0ZqYUlqUmpYR1p5ZGIwU0ZO?=
 =?utf-8?B?R0dWblp6NVdyWFpMVm92cmpLYW5TWDdTdXNEZ1lHQSt4RHZxdTRVZWt6YmJl?=
 =?utf-8?B?L0RKYlZwMEM2cGd2TTNSclhmZHkzdHcrdUJ4YXJlWTk3S3JqNTdVZGpualVC?=
 =?utf-8?B?UXdvblg4cjhEZVdDaXFLTlB2aktIc2pTS1FWcDhQcWhSZ0kzMEZtQmlYSGNE?=
 =?utf-8?B?bmlqVlhQZkFZN1ZBNnE4UkxBc1RDZFdTeHd5SHVWeDZTbXJuN21xSFovYW90?=
 =?utf-8?B?YUdVQlNodjJqYURUbzUrZERaMjBLcXlVOEM2czBoeUlQZVBFWFlRcHJqUEpW?=
 =?utf-8?B?a1VEK0dURnZrZUppMTRkSG9uTm5pNUVrMUxEYW1GaDUzYUMzeEhTYUJ2UFlR?=
 =?utf-8?B?NmhDV2FQNm15WU5ZUnQ0NWRpVXBQV0hmZEFsK3FJNm9aMERzTVVWUHdmSjJp?=
 =?utf-8?B?VUQ2dFlvZE9FV2VZMWp1NmtxZGM1WDNzT0owY1pJUDdFR2YvNEx3eUJseWRZ?=
 =?utf-8?B?UUR2dXBBUmxKdWpib1NncFRVQncwSXIxMXRySjZhK0VFbHI1UFA5MENNWmNo?=
 =?utf-8?B?Vmlldnlocmt1c1RCZHB5dnpWODFkaGJQTW10UHEyN1N1U1pmWXVobFV3aUlm?=
 =?utf-8?B?ZUU4S2swM0tETThYSVRqQXhSTjVDRExpK0tSYVp1Y2VlVkc3RitXTTZ2a1pB?=
 =?utf-8?B?akVwK3A3UU9sNi95OUN5ZzRrR0k4S2V3cGpNWlRSNmRCeVdtL1UyWWFiRWNN?=
 =?utf-8?B?dGVMSVJZVnJBeittNHdlUzQzNUtlS3ltOEYyMkpzQ2NuaXArSS9SanBEa3Ix?=
 =?utf-8?B?anVBNkdxV0R4S01hSHdEQlVXcmp6a0FRanRwb2xMcTBJK2lqdSt1bEwvZXpR?=
 =?utf-8?B?cGpxYlMzVVpXTWpDdjhiSnUrOTVXSmw0WTBoZnRKZm8vd3gyaTZrSE1RemFE?=
 =?utf-8?B?SFgvclNDL25zbkM1Qk84MFFUWS9hWFlkc3dxMnFRemFCak9kbTF2ZkVpYVhT?=
 =?utf-8?B?dThlZkJNN1BoOTdBb3d3MUVqRHhGb1NPTmt4WnpFVFJaNkQ1U2dXZVdtWGVk?=
 =?utf-8?B?WDZBaUJIbmxDRCsxeW5kRFZ5MjgyQ2I0SHdha3RENkZEbjNGK2JGelQ2MWdw?=
 =?utf-8?B?aUpmU2VISTVRbTluenN3Y0U5d3lIZ09zUm50TC8rUXVCelBaZHZEbmhWZU5K?=
 =?utf-8?B?akg2am9ZcGZwSEJiMGFXR2tXaGkvMmJiMGdvb1JDMlpSY0gwNFV6czArSVh0?=
 =?utf-8?B?VFRnK2g2eUQxZW5RM25LUUwwQXhCWEw4RVVOUzVBWkVPakNtVHEweFVnbi92?=
 =?utf-8?B?aUJDRHNJcDVxNUUwN1dMcXZBVEhsbWZDN1ZTTW1GQ0hDcEh3R3JPT1d3UTI4?=
 =?utf-8?B?dVc4MVZjaDdMK2FzZnZQV1V0OGJrd1lFbGtXRlBLUG1DVTQ5elNhS1lUZXoz?=
 =?utf-8?Q?YkeAlYAzyG/5QGHkEU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y2JuTlJ3N0FTVFI4cFF1eFNVbXdham52OHJFeDZEait0dW8yWC9sWTBNS0dp?=
 =?utf-8?B?eWZLVzJTRTUwWW4vbm9jbDgxUG5DbkUySzFWL3RTN1MwMEU3NUoxYUpBVTNP?=
 =?utf-8?B?NGQ5ZGFuY0JXN3E1NmRTdU5vQlF2UG5LaCsza2ZLL0hLT3AyWE9NL0xiMjdK?=
 =?utf-8?B?a3FyVEFnUk51dVAyS2xWWG1UR3FyOU1yeERwVS9JSkxQZUNLYzkyV0k5dFZu?=
 =?utf-8?B?Qit4djhuVnVvREdzcG1GbitWTXlXUlZJRmpzdkNLWlRiY1VtVGhLZ1lwSDJX?=
 =?utf-8?B?UGhZZ29yMkJmckdnYWtBMm0wb2kvdzlMbmgzeUE3VGdRSmhWRnlJeXR5RDlw?=
 =?utf-8?B?NFRhYzBXNWxoK2FOTllsb1g4RGUyY0VRZkprdUNNa2JBRGprVnJMcXYzYjRM?=
 =?utf-8?B?aERiZjBhcXhmYitId0xYeEJ2UUhBajFaK24wMUN6NG5pLzBEcWZjdTNNUytS?=
 =?utf-8?B?V2dUeDFMc2JZYmRSRkh5a0dHWG1sSmtHNWMxZEd4d2lVZzF2SFY4SE1ZZjdm?=
 =?utf-8?B?VFVra1Jzb2F0Mjh6amt1YzBrbkZ4dGwzVzh4RFFlSUZlOVdDL3VRYTdnTDBq?=
 =?utf-8?B?Q1BwdVQvWGFnYS9hbmVnVEtvZGNFS2VPV3VQVEdRVjl2ejZsRWY1dDBQSWdC?=
 =?utf-8?B?alFxbm01cEl1ZGx5TWw3bVlrRWJRNDZFeW1RbG5wY1BkbWZRWUdhV051SVhZ?=
 =?utf-8?B?M2xxTUFLakYvYTQvcHA4Sy8zQy9YNVhWL2ErQ3Q4YVU1OVR2cThxRjJBNmR6?=
 =?utf-8?B?WHZXbnEwWmVVaHpnbkJqVXNiWGVpcmlUanFkUGlncXY5eTFteTJuTDhzbnhJ?=
 =?utf-8?B?T0V3ekxSWHJyZWFOSlczWUx0V1VuRUg5VVprMzBSbWhWNG9SQlVTeUdpdWR6?=
 =?utf-8?B?NnQwUG4ydEt2VkZBRGtNbFhhL2ZORzc5ZERwNUhSb05PSmU2WEhOeWFVRFNE?=
 =?utf-8?B?Zi94azA3U2hraGVFYWNIZE5KRVlkT0hxeHRYdGhIWVZTY0JTbGkzcDM4LzJk?=
 =?utf-8?B?MFljSWtXd3k4aktMeEwrZXpPeUIvbWVxazVBZTNCWUdGdEhFOU1RakwreFE0?=
 =?utf-8?B?MVlRbHJJN2ZaNUdXcUt4d05wT0FtWHJwVWZ2d3VUM0dSQWR5QjZyaThmSWJz?=
 =?utf-8?B?cmFRSDNHVVhGNlUrMHd2Qmo1QmR1eW5ac1RsN3hlNUNmZ2IxbmFFT2h6Tnhw?=
 =?utf-8?B?OW9qbzMvb3dpTU5jU3N3anc3OElna2ovcXNicHorVUFoSWlUUDVGZkQrS05k?=
 =?utf-8?B?TXZrS09IbWFtZXRERlpqUndEZk1Fc3pxUzB0VzIyRVUxVHZ0cFJ1TEl6cXgw?=
 =?utf-8?B?Zmc3c3oxc0FLUlJBajJDUkdLbVczbDlodld3TGRGQUdTUGxBUjdYZVpGYXFs?=
 =?utf-8?B?bXhiL2VsVmZUaEdvV24wK2tKOGNvRHVPNDUyUjFNUXhHMXNHYm1pS2s3ejlK?=
 =?utf-8?B?ZGtyYkFPUUxuTFpPTnR6MkM5TStrelA0bVJyZ3Y4MVBvQ25aRlFVU3o0VEo5?=
 =?utf-8?B?ZGI2eUNpaUQ5M09yL1R4M0swcm9mSHkxT3YvTkdtcVdIbjVuMElVemFKZllQ?=
 =?utf-8?B?L2g1dlBTcStZRTgya2U5NnZWMVJIcEtLeDVnS3VhaDBXRTlQRUJFdEFaNWdF?=
 =?utf-8?B?N0doMDNmd3c4YVhrdHFEcjZEbTlmZTN3ZVBMdlVnKzd0OGd2aEt6Z0h3alRs?=
 =?utf-8?B?VEFiTmZrMFcvT25sUEoxNGFVTWlPZVZDTUVjSTZZckg1TWxsd2U4VktBa2Jp?=
 =?utf-8?B?RnVZeGp5YVdWZUpWWUs2WEdsZWtOTEpWSi9wT0NhcjlpeCtHZndJZFA3MXNi?=
 =?utf-8?B?empqaVprNkJHdmdOTDZjcGlnUDhvU0N3a1JucjNsbXhnUDZwSitFV1RRWXVo?=
 =?utf-8?B?dDJsQ0pXODQwLzVFLzdQZzBGc1Nkc1FKa3RDaXFJdVhLa1RUQWd2dXRwZ2Zh?=
 =?utf-8?B?YUxDcE9WUnl3RThzTUtyTWhTazE4TVc0VTM4YXBlTnZMSzRzbmkzVW9jb1p4?=
 =?utf-8?B?K0FmdFhIc1VqY2tpNFRWNUxJSjNkYXpmc2xEeVVrZnpFY0U3RXRTa2drQ3Fx?=
 =?utf-8?B?bzQvOFlTZDdCN1lrOEJXTjFNWFFpamFyVXBIUm1JclVwRFE2aUFWeHpiVXQ2?=
 =?utf-8?B?bkl1Wk5zTjMzTVNaT0ZkTFVIYzU5ZDhoZUxpNzN2Ri9pZkg0TkZzMGRuZUZ1?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	vaeYKIlaMLIgV7cbG9QA9XK/F6x9YtfQ9MBpjF3RZc8ch+kkGh0S8YdpW9OK4oPR2wAEUfxn3Bk1lvmRrL04aBbS+6Nxbq+3XEJMcsad6v3X04Pgu0Az2MCXXSpJp0xMlMSXzTnxSdxED339DbPlr9VjVw+UvjYk/AIECWD5wTQCtAZBmD1uiJ+Ee8FPPOuFHxyoFvNUKkyaFqArE+cae9avHbgt59ArtaKStqbhCCsOgWonv13J2dIrYhfdBxlT7vpTh+RP4K+kaHbrJ6rs5ZJ5m8r9ZcxLcBYWl/u57GbaA/GSrCrVUdKkWN1FWlvQJr47VuF/rPAqu6vQCa/ixQT0GGQZ4IOAompW2KOchbNIRbTmAOIymwhXzlYOmrrVb47j0J4P6eSBf0DYRG5v+MlLeFs8vI1AgwpbTn3VXiM9IfhafIJtaDdiSV5qfHd2Ja+DAzZwemExl+PA0IR9sztvYSqS0ky9GY0yeXOyL1vPbErWEhQm34XnNnchonlKL+o0XDLSeXgSDfO9F+F8vatNQKAlyobAQ0eFUMftA445j24lBvk5lEZrTCd3KxK0CYz88xEjHAtvUJPrJVxB31PE4a/vGNw9h2jhXKXba8g=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6659bfb-017d-4fd9-92e8-08dccdcf2e51
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 17:21:29.9813
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hhj+gB/fXUVjcnr5xb9Oacj6Dtw/jKSx7GaNOzDvOw5nmwYVE+N/LHilR6liU4XlPEwDsMW/u3B3KJPz+pGttX0qDYy3pbI3oeTwGVPLyYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6915
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-05_12,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 spamscore=0 mlxlogscore=816
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2407110000 definitions=main-2409050129
X-Proofpoint-GUID: X-MyTi5IjvxSytDwzkPUNbtW1nmE9AXu
X-Proofpoint-ORIG-GUID: X-MyTi5IjvxSytDwzkPUNbtW1nmE9AXu
Subject: [oss-security] Go 1.23.1 and Go 1.22.7 released with 3 security fixes

https://x.com/golang/status/1831719877121339614 announces:

   Go 1.23.1 and 1.22.7 are released!

   Security: Includes security fixes for encoding/gob, go/build/constraint,
   and go/parser

https://groups.google.com/g/golang-announce/c/K-cEzDeCtpc further says:

> We have just released Go versions 1.23.1 and 1.22.7, minor point releases.
> 
> These minor releases include 3 security fixes following the security policy:
> 
>   - go/parser: stack exhaustion in all Parse* functions
> 
>     Calling any of the Parse functions on Go source code which contains
>     deeply nested literals can cause a panic due to stack exhaustion.
> 
>     This is CVE-2024-34155 and Go issue https://go.dev/issue/69138.
> 
>   - encoding/gob: stack exhaustion in Decoder.Decode
> 
>     Calling Decoder.Decode on a message which contains deeply nested
>     structures can cause a panic due to stack exhaustion.
> 
>     This is a follow-up to CVE-2022-30635.
> 
>     Thanks to Md Sakib Anwar of The Ohio State University (anwa...@osu.edu)
>     for reporting this issue.
> 
>     This is CVE-2024-34156 and Go issue https://go.dev/issue/69139.
> 
>   - go/build/constraint: stack exhaustion in Parse
> 
>     Calling Parse on a "// +build" build tag line with deeply nested
>     expressions can cause a panic due to stack exhaustion.
> 
>     This is CVE-2024-34158 and Go issue https://go.dev/issue/69141.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.23.1
