Received: (qmail 5668 invoked by uid 550); 4 Oct 2024 21:05:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5650 invoked from network); 4 Oct 2024 21:05:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=ScfS65/nOKjUycT7SN3Nct3yV7oV8oZEdL6Qi3EbBU4=; b=
	OkP2RFA/Hc4S3PbyHuFK5euVWYYGdpBrb2vqTmu86tHBg4kXjBmD+Y+ROKg/ZiiR
	UOG1Ff9n6AEkTHV3k9t93kJ3WUpTgcvPrb27xKjOmLyTj60A51iVR26yOiSEtuyT
	iC7XeLrDmH3UR1H1efDt6jJEVP1wd82o3myzJzqsuPy52f5LE/CgYwaDCXSib2rA
	7LQrZ7TFEIvzYrbayK8cF1ERPP6jZ1pU1fyAA4gDjVamcIHV0FhbYakcK8Lhq2E0
	QQBPqCxRmmhBHMyr16Wd6HljRcB5Yl3sqMepksh27wX56YuoLIMgsyoSRJ2bl4CZ
	7JXxc3F1RpPJLW14cTBS6Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PXS2JfELLackqOEZ/CoeKQWI5QMYYOwcfjzZo8l4/WabnYNK4At+lnx+QDLxn/MPCUL4jKL6ioqB5u0yWeLUIpA4JW2Q6YbBLml2pW6y/jmy59tDMyfSaAk9gWoKXsT5oZj1xnq2lL0vh9tHizUDpM61B8lPhSOxrvR45ezil1D3MstbySfFb9r7R2J4fk44h/Plp7TecEgJ66FW1YmAVHWg1VyqmPr9QoJuDdT8X12hnW0YlqhBsxkcl2omx1lwwEfjmOJFfP2tpzY+j502TPT8U0MjLdXKQP9HEOkuy5AhvM5DcVa8QXWWNeQehR/LAd0qy2gGmTSUpw1tMTtCGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ScfS65/nOKjUycT7SN3Nct3yV7oV8oZEdL6Qi3EbBU4=;
 b=Qaocvy4v245vk/yDWV7/K0R31ZRsatb1XcA6By+X/pniuEH9XsVkLfN58puFgNy4AIjDNgbWcHl+PCRezYwThRdQqt9tnQZI5FCAUyeoh1TI2MagWO9LX1sLfrduNGZ+8Zjm4zSfPTFKReGT2o951/onk5UX2QCgsM5/39q15HGHcM1VH/IMuwdcHtufrjWAWQnzOEQhSN8z3guv8CoxxqG36yYlI32tYW+SSISh9t0qCngvKuTperCA/FpvJlAZkGfMIZskz1d6dxiKY6XokAPD3PvMtA0Kq5y8L86jYTCKGE1gbASVroVfD6k9IDmKhGCRkswB5uMdFkbkTeOZ4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ScfS65/nOKjUycT7SN3Nct3yV7oV8oZEdL6Qi3EbBU4=;
 b=RBE+IS1beYoMOeNDU4Ae5oJ7613tcE4GBKy9i5L3dndkQPi04HRJyJ/lWL4C0C2vyU1bIeEYryXL6rqlwd22DAVln3BcguMTW/OycYsY0RVsFBslMrdcQZAP6U1lC03IANIdO3sqUuuHH2cDQOEKUVdNIe3GrJIkwvGlfUMoWP8=
Message-ID: <1d56e4c5-8d15-4642-b312-42ce0ad81b23@oracle.com>
Date: Fri, 4 Oct 2024 14:05:03 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <f2b1d265-1862-4924-a0d1-05cd821b0506@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <f2b1d265-1862-4924-a0d1-05cd821b0506@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0093.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::8) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA1PR10MB7790:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c91825a-c0dc-4e40-b896-08dce4b838de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MzNETCsrNWdrYWMrRXZaRk9RUytQQkE4enRWc1RqUHplbWcveEtqSjN2L1Rx?=
 =?utf-8?B?TUszalNrNlNXQnhidVlaNXpIeTM4R09YaXdoTnExbHRibTJUdXJvL2FSMHB6?=
 =?utf-8?B?c21QWHd4bk1RblU4eE5lUTVVWWozNnFsQjl5Njl4enB1elFyYjhUV1hJbi9n?=
 =?utf-8?B?cWNMT0VsRzlIYmE3WnJWWHQxTzcrVXM0L2NCVXEyOW52MEpaTXlTU1NWdWNs?=
 =?utf-8?B?SnZUYTVtRG01RmUvaStDNjR5NDh2OXF6MWdsTEcwTHNLY01pQzNTRHlUMFZS?=
 =?utf-8?B?RlpSOFNOSERKeWdPZXJTVUExNFloRW9WQ3g5aWU5K0lmT1ZxeVQ2bzhFOS90?=
 =?utf-8?B?UlNseTROOFQrN21GeHB5U2hkU0tlQlM3RW1naDV4dDRLSW9IVGFHVkJSdjFU?=
 =?utf-8?B?TGhEYWxJTXJxOUYybGhPc2MvOGRRNUlOZ0luUGg0c1VMZWxoS3hNN1o3Y3Zs?=
 =?utf-8?B?WHpOKytHV1VRa0tURU04RXBTTC9UaWpCYjNwZnhTYkpQdFo4c3JTTkhaZ2xE?=
 =?utf-8?B?QVg3QzgwWjM2ekx3RlVsUnNGM2R1U1Fpb2s5TGUyLzFzNXpLVmh1ZWc1UjFi?=
 =?utf-8?B?OVQxWjJOcGV1bDN4VGZjTXZHRncrd2JxdXFjRGJjZGZhcitOZlBVdjhTWWFJ?=
 =?utf-8?B?NEVkYWRTTExUWllSbmgwdkJIMDhod2Y4b1IyblRHVWlLczJCNm5lUHRYZjNP?=
 =?utf-8?B?c040Nk1WRVNnQjdmWU4zcEI0L1VVVENhdHh1TWVYSWFBWkkyN1NSbng4R2lt?=
 =?utf-8?B?RzlUVGo3WW5jU28zRFdTYzlVK1pmcnRLLzh2U0pQR0YrWGt3T2Vkc0R5aksw?=
 =?utf-8?B?cHR0dkwybVZwaEZRWE1Eb1NnNzFZSGd0cU1XZDA4endpYnZSMm9UNHl0Z3FE?=
 =?utf-8?B?cDBzZGVlVHpmZHlKU2V2a29ENTlLYVJHWXE1SWlwU09aVTlNVTdQTGl0bkNJ?=
 =?utf-8?B?NjZkZHhKREthTG5mMDJKbUxqcnZGZkNER2lMOXBOWXM0RnMyNkdoV3hjV2ky?=
 =?utf-8?B?NHEwczUxR3BPMjZpdVpTTGNWa2J3N2NDZE9oTEIrSG5uVW9pNkVneDNoTGd4?=
 =?utf-8?B?UHpBY2V2b3BMY2RON2VqY1pqWGNBUWowZVR1cjFKd3V6UytxbTU1c0loeS9E?=
 =?utf-8?B?bDc5ZkhBYjJuclE1OXg3Z3ZjWW5pekxOYlkyRzB2cTVhMG5zQlc2VXZMVWY5?=
 =?utf-8?B?Vm9xK3dnOHJoeG1NRUhDQUxBeFBNczQ1SWEvUzZ3cm54KzdIZmk1Z3BkRHFC?=
 =?utf-8?B?dEZOeTdlcThldFhCVUIzdVgwVDY3Y3QxSWJidWlQRW1ZMFRBdXRRcmorUDZV?=
 =?utf-8?B?MXJqUXQ5YVRrYUxROXVDUTlUc21aOEhFNDBVR3JjSFVPOUZiNjFZbmhMTjRV?=
 =?utf-8?B?QkxsUndxZ1VvbGc3cEFpTG5HOUpGczhIcE5aU3pFc1dGZG4rZjF0ZzJHUXVq?=
 =?utf-8?B?amdTa1BvMXZQb1hzWExjQ2JseG1ZM2pMeTV4U1FVRHJ3NmdxbFdKZktKSit2?=
 =?utf-8?B?dkhYbm1iY1BJUTQrSFE1ZXljTU9oZGpoT3Y0dXB5Y3BKVWVnU0J2TnA5SmFL?=
 =?utf-8?B?R3IwdHNxdlJueE54bzRhc1VVdi9RMDR4N3BVZ1lUZzkxdC9uL3NzYkVGYThF?=
 =?utf-8?Q?zo9lpeJ3WTc6+QRvMYrWPc3AixCbVzftETAdzAuDTiNc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?M0FySkpGdDRoU0lFT0EyRVdIRy9PYkhwK3p4aVpsMG5VS1pNV2UyeW45d3Jo?=
 =?utf-8?B?c1JEWEQzSUlkU0lzWFZ6LzBXN3R4TDJmNUFMT1JidFBLMndrc042Z2tmWFpn?=
 =?utf-8?B?dk9jU2VsVlNFT3o2VEQ0c0tDNkdsQS93T2xXazBIMXlNd1N5ZTNSdndJbnVy?=
 =?utf-8?B?N0JnOE9uTUJhc1hEaFNBY25xZjRRd2lkQU1ZNGFXb0JwM1JpOVVHS2tqRk9X?=
 =?utf-8?B?NWZzMEZkdUE2L09sU01HTFAyZW5XK1ZNV3N0SWkxWE1VZUdmYUJGaWlWMEgz?=
 =?utf-8?B?ZGp0dWQ3MEJmQ3hNUUZ5a24yemR6VkswbHBKZjNVSzdMcE5pTnp4MlZjejRT?=
 =?utf-8?B?VDdWekxrc1ZUSW5jMHhwMWt0L2FRVUNqSlh1QWtEN2V1SzhXNzE1SjNReWRn?=
 =?utf-8?B?OE5WZjhnVy9CdDE1M3h0WGZOVEFlNmNQYnU1ek0xU0NZODQyQjJtQmIyOEZo?=
 =?utf-8?B?UE52TVlPbWRkbGZMdElrQXVhNlRwejVWbUhnZEc2RzZPV1ZvSjN6YzBIWFNz?=
 =?utf-8?B?Um9qZUJlQTBKNlVBMjNVRWE1bVVzVTIxcVlnbVVhQ0k2VEVFUUUyVTFDTnov?=
 =?utf-8?B?M1Q0b1dXMXc0WkVOSS81K0ZhUDM2RGVCdW8za1NPUnpBWWFRWXNGUFBSSmE1?=
 =?utf-8?B?UFJEVmwrMURMa2xCR3NhcHV4SmhicWtzSitQYUxmeWRDaWlIS0prQU9LWlpk?=
 =?utf-8?B?cXFaSzBEdUlmQkljTnl4bjNRSHU3SXc5eloyS2crejZZY1labURhcUJqNDc0?=
 =?utf-8?B?YlRhSGFhL1FWUXB1S0pxL3REVHdsRHZNQ1d3cCtYVHFyZmc3WEEyUUNTenlR?=
 =?utf-8?B?YTdFa05meEtqamwvQUNZVEVvb3FycDJtNzNsOThPbHhsbEdVRzkzSEducWdD?=
 =?utf-8?B?allYVkFBS3pPR3o1N3QyaktsZEFzS0R5RThKbmpadGZJaVNVS2YzcDNLdmdU?=
 =?utf-8?B?cWZHdHUvbExFZHV3T1dPOGlaV3VlNldYZmc1ZXFPa0dsc2Urc1M0dENBUUs1?=
 =?utf-8?B?c2NVMlZqU3JsaHhld3E4M3NKSHlsYzJzNEJ6RVJtUjd5S25CZU4xV3lBSEVn?=
 =?utf-8?B?WWt6bjRucFBMWm9RNjhTWHFxM2llSXYzeEtWOTdRMHpyY215aWtjMG93aWNY?=
 =?utf-8?B?QTZHVUVmZW5TY0hDazNXNTMxaGN1YjExbHJMczJUQW8wUEs1M0dXdDQ4MDFh?=
 =?utf-8?B?aGE1OVluQ2Y2ckdCVi9NZFBienkvMWVZSHJyd2NyL0t6QU9Qd2NZckYzV3pl?=
 =?utf-8?B?MDg0Q1ozVDM3czVEYnVXL0VESzhNSDJ0cFRzbmVKTG9iMDFSNDNrbExGYkJU?=
 =?utf-8?B?bnNCcHI3K1ZEV0U4WktvYWlJVkJlMTBLdW5CVTNjUS9tRFhVeDFzOVNQZkhD?=
 =?utf-8?B?dTF3Ynd3RmVHYnRKMVJDSGNGTjc3aWI4bkU5bXRUQzlLTFQxcGczbDdxQlVG?=
 =?utf-8?B?Mms4Z1JOdGdyUjI3bzlsTVROL0JnbW0yU3htbjl4bTQveGwxaEZiMWxCRnJr?=
 =?utf-8?B?OEkzZVBDYjVQRFpRcWZZOC8zNUJFTzU0TGZmbXlNdGdTbjBuWWhrZC9wSkpV?=
 =?utf-8?B?a3pid09MTDA0S1dnV3IvODl0TFdEOGswZlV6Qjc0QWhVckh3RnN3MDl3Q2sy?=
 =?utf-8?B?SVZpV2VIRDJaUHlVMm1nazd0R3FZeG1OY2lTd2pGTEdPcVBYQUxyRlExZ0Nm?=
 =?utf-8?B?VnEyMGtKaGJ4eWlnMlU0UlNPRHdVS2hCOVlkdDlTc0NrWGdLejNZL3p0c2Vu?=
 =?utf-8?B?ZVNhZGRBWVIrOSthd2ZZTkZQcEFhTHFhcFozSG1Ta1dCTjFXcDc1RUlSVHlw?=
 =?utf-8?B?eGRrOFdzeWlSUG1EMUVTSXlEdUZFMTJqeGxJcjNUdGdGSkk2OWw5bHBha3R4?=
 =?utf-8?B?aUltcTdzYzdreWNROGVmUnNnWVQ3ZDh6NFdjUWJhRFNRUG5XVklmZFRNVkR3?=
 =?utf-8?B?T1dBaHV4OHZBV21pSkhjbHo4WGZnWHMvaVJvVllaa0RDcFU5dkFrU01obDg4?=
 =?utf-8?B?V1JtWXZCb1VHRGMxc2tSRUJmc3RBOXVOcDRBb05aaGwvall0WXI1UTNZcWlQ?=
 =?utf-8?B?UXBCWnk0TlBibWp4MDVVeWxNbjV0Tm1ObzRXYmlBYVg5NFFhK0JCbnZQZCtl?=
 =?utf-8?B?TjN1b0RRcnh3cHF5VGVnQ3FzNGZxK0hVditJVmdzbFZ4ZWptcDlCT2tPS1VP?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	iFe1G2mO/6DQCxKuMiXN+wQ2grqkElfFZsWSYpu/yYz+QHYnq4Z7TkuhYBjtbG+Ydt2teTta++XR7VfARkBveTjbeIJW1w7HBkLpMCOQVy7dXTheBmQB1MCZwY5111uiXFJCCj/KLHBEjnS3OJA92dtVWRcQugspXtSByZbSdxKotaKgEgplGnnq3SqzdKyiSdwjgD2u3+aKwiAp/qthlz5FMMTrkdp1kF5J7xkDhSVsV229TTtpd4D6w6aQk+ry+fIFOLhTC/rwlvi/OrYxxV5UodExoMREAbeVkzulCXrm07ke4sp9d5s6B5QMxRhnfjHm1l/T0KslHVi8LClmlGoSBe4n1EYOyriLXkQnH4byW6tAeCirVXkHq52kTWhoNvnrvf8jZcHJvK9MN6EMw6InI2OEWMkkqulD09N7vlNErUPDN9YY/7OVZcQakJ2wGLRUNDtZk2QeAsUGynOASkKC1Y7Z5IQDV5FxShHiw694Wlhi7w1qCI0ecAY0xxNEot55XgFRiJI//Z6c32W/QoXH1InceZAvrgp3DNxmsiLyg1zR4vsgZYOdDoQUcCZDWokAKv67YkXVof6Xl/xEaPBCsg0eMu6DyNfV2JVwcCk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c91825a-c0dc-4e40-b896-08dce4b838de
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 21:05:06.0157
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dpCt9IK+sGE11malxidsZtq5foAhyi/4O+UAk8bOcTPSW76wWR0KEiPnuNo3XhRJE+mTbIjzDn9I9pR0Ifb7eBlX/FQwNr3fKM4VJaT+8g0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7790
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-04_18,2024-10-04_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410040146
X-Proofpoint-GUID: -OhpF9Ar1A-sDOiBAckjL_0d6MJ2GnQs
X-Proofpoint-ORIG-GUID: -OhpF9Ar1A-sDOiBAckjL_0d6MJ2GnQs
Subject: Re: [oss-security] CVE-2024-42415: Integer Overflow in GNOME libgsf

On 10/4/24 13:59, Alan Coopersmith wrote:
> The upstream bug report is at https://gitlab.gnome.org/GNOME/libgsf/-/issues/34
> and states the bug is "Fixed in 1.14.53" and
> https://gitlab.gnome.org/GNOME/libgsf/-/ 
> commit/06d0cb92a4c02e7126ef2ff6f5e29fd74b4be9e0
> says it fixes that issue.

Oops, I should have noted the above bug report & commit also cover
CVE-2024-36474 from
https://talosintelligence.com/vulnerability_reports/TALOS-2024-2068

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
