Received: (qmail 1066 invoked by uid 550); 24 Jan 2025 20:21:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32740 invoked from network); 24 Jan 2025 20:21:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=6fkepF8jBhgRb8NY
	BphjTJ8vbr5kYzWb2faPSWW4oTo=; b=Qekhfun4oERU3wxowgy6SGueBAVoJFdD
	C6pkLlsWg4GE0nLnkpwa0cdsNRw/B8fD9HRVb+59AboomPT4S9zERB51yqBYn10o
	r3E+qMUHO1WMALywc0hU6lm6ZFGglRbLwuf1IRUx5ZP9Lk6mRAzuu/hVeAOhVqtF
	EeDUKIpnW0uq+A0Gbg5/ieENtNOnJUDVW9ptt54Zf3IYxlJEvSPFuTB7v0hE0oLW
	lR0GsOr5t+VmF3slPso51b9K3pLodM9C6PwIbtUzTSPzjU1Y7LKfj+yU6rgtm3X8
	qAYXlh4Qd2EKD6Jrt+bjmotMLo1aadIOpbdQrnm22F0UnLrCANBkdw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bw1sRiRCg+pqNCJIHPBYf0eizuqYP5iLW8TA4sJhFzWjKtA2HmJ1p9oHpsXia6U0UmSTBd+Id2cDe4kQELyL4ggW3PfhRmpiYz1Xz0Ta8yC3mtiuQ83KpHgC0bOnbfcaU4Nbth3VvDTLy4dARIgJByztcumyMFxXSoYEx96q+6TUZqz4IGDJIoVHneGHCcCnIpA7zHuKKaKllFpEbbC0IGE84JfIgOJqPDSgCwIhzjA7w+DtUFtK+8JOK4EbZhpFgogYsEowKXEc4qQlAK3K17rtB9iG80idTnPFSVLo5BrPeS/WKy7WKHYFsPL6hMuLeflqE8t7Cl0z3olN4PnzLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6fkepF8jBhgRb8NYBphjTJ8vbr5kYzWb2faPSWW4oTo=;
 b=nn28D20xvEyv3d7KHBgAStLzFV31bkPZ32GybYZD34UcHQAh+eiiGcw5sAnL6ECReB5JidHlmHaSesZKkmH9Ylg/S9V/3SEWTPXOpqDuJNf8BB3TxYIF+XmxZ5iRjaGeXxW18V2vR6EL1SBP0o0sYZ36GrVVENxKJV3204xk7h3vqSCBeDGgFEtsZW011zOuUfNGhktwvJ0z3mD2dpn3DAf2ThozmB0By2+6/tuZrUrCOogjvZaWWyg1BeNG/tTHyYNi1vWAy1unddm94MScqSxC+kgrd6hR5ecPyRFDtmUEgSqtmdBjq/2mY9JdRUdiWEJZoNCThB1AxjECFZVKrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6fkepF8jBhgRb8NYBphjTJ8vbr5kYzWb2faPSWW4oTo=;
 b=BmBu6nyxD79nFa4dRziGTBzzXvQD8LC1JakZPBq/aUPLUV5NwEjg7ggk6iR9srhyKdrLZap78IImYQzZ/gdzzZVmFe4DBUrWH9Ya3oLCEsM0WOjI72XUuaaIg1f3ka4eWSY19WjZRSYCquInj1YFqSgkg5E/mvXgsvfVj/L+7wE=
Message-ID: <2cb73c82-5918-4337-817c-0446797e898e@oracle.com>
Date: Fri, 24 Jan 2025 12:21:14 -0800
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
X-ClientProxiedBy: BY5PR20CA0030.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::43) To BN0PR10MB4997.namprd10.prod.outlook.com
 (2603:10b6:408:12b::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN0PR10MB4997:EE_|PH0PR10MB4758:EE_
X-MS-Office365-Filtering-Correlation-Id: 46602f0f-feb3-42ad-c3fc-08dd3cb4a780
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aGlwUVkwWkcyQVppU2FwcnREWEMyUHlveWxBWWtOWVM3QkNxSW12bFNMc0V1?=
 =?utf-8?B?S3NUM3JZdjVCaGd2TndKb295dnBNR2FybnhDZTMzWFY1QVl3SnlHR2lGck1t?=
 =?utf-8?B?Y0ExOTEvUWZmOVFjRWJIT3FxU3YrT2NuSnlaQkhhSWtMb3owNjJlb0RFcGts?=
 =?utf-8?B?bWtjUEVZQVlLUCtWWTBMSTAranZJNWJmSG51UXFTbGtCOHdMakJXKzVCYUFB?=
 =?utf-8?B?czFWdHNRZnAwc2pkalROa1N6bmxMOExJdUo4TG9xUHgzd2RGeTRBUy9DaURW?=
 =?utf-8?B?cWFHSGxQbHN2WHp2VkY1UU83K2lOU3lMQTdUQjM3K1pqcUc5bXJSZjAvdTJJ?=
 =?utf-8?B?Qm1qa3I3NDZKV0s3bUZ1V3hIaXIvVXFaMnQ3SGdyL1lSQ0d5R2lwVHVFYjJ2?=
 =?utf-8?B?UnYvSk1OUHQ2YWphWlFJbmR0ZkNVaGZZbzlZSnpGUUFjN2o3T2JqQXZlSTVN?=
 =?utf-8?B?U0NpaTNLSFBxRUQ3L3lmQnZJd1FoZEVkRG5OdEpMMVA2RG5XOW5KdVJrMzdT?=
 =?utf-8?B?OWh4dHJRK2dBdmVTTGRRYVZmN1pZenlORWlkNjkyZmhXTUVQZmxsd2NUK3dy?=
 =?utf-8?B?aGJWT2FCUjllTWZHVGNXendubXZvYk81NWRuZG9naTVUMEI1blhqMkxYVFh4?=
 =?utf-8?B?Tms1ZC9rK2t3WUtQbHdzRGQ5OVh1YVdrOEM3bFdBNHBDUmhtQlo0WWZWeENI?=
 =?utf-8?B?Q3J0OFlkMDNiOXRYY2JGeCtJRCtmU2U1OW9PSHVOdFhxcFlwS2ZuSGw4MDFI?=
 =?utf-8?B?ZUgxcGtJbnVaZWdnMmU5Mk9hc1MwK2ZpQlE1WXJCaDNxQWt5akhYT0NVR21Y?=
 =?utf-8?B?Q0xGejRKUkkza1piNlkycEhBTzlsN3lveDdiMktjWjdSV1VMZGFHZTFMWHA3?=
 =?utf-8?B?aytHQzdsNXhxdzYwZDJLcEtLV3hBU25TZElTaTBMSy9nRHByK1FqMzRta2Ju?=
 =?utf-8?B?SmVNWEYzZzN4SkdybG5MVGZEaDNKNGtHOE1VSFhHZjN6WXN5V01IZkIyc0JR?=
 =?utf-8?B?Y3VqTHhvdkVKcGZiT0plYUdmeGV4NmZhV2lDYittSGpEUS9VaWZsRWUvazNX?=
 =?utf-8?B?WmVOUEg5VytoU1FUWjFsRHkxRTNkeDJyekVpb21jdTc1em11Q2ZaUE94ajFI?=
 =?utf-8?B?Z256cjRDU1J2TzFlenI5ME0rbGkyTFNkYjdPWmdaU0ZubDdYRk0rcjg5ek1O?=
 =?utf-8?B?VFM1V25Fd01hNjRWVmFrbjNsT3pOZU90RjJ5dXhwc25SS003SVN0M0crTVBX?=
 =?utf-8?B?Z29BK3dMZ2Q3N25iK25VdnMyVGljV3VmWkVIbE80L25uaFQvK1ZGVTNaZ3JY?=
 =?utf-8?B?YVZlMnNMOGRKSHduSndyTTYyazJEVzFqbW83NDU4TGI2Vkt4cDhJKzl1OTNv?=
 =?utf-8?B?NW9EU2JsSVgycjhCdmpENkJENGJ1b05BQUVvZXNTamN0Q0ErTlpBRTZNRi9q?=
 =?utf-8?B?aEg2bGdwczdlUXJtS2IvSDVYcjRNWGNSeEJSeHVsaW95QXZicVhMVmt2NGQy?=
 =?utf-8?B?TFgwNEFyY1JXMmJFWloxTSszbXRXeVpwcHRCTXY2NE5GNDhRdTZCVk1tWnFI?=
 =?utf-8?B?UFhkOUxncWQvdjhGWXFPVjY0eUVqTVdzWEdSbHhqbUo2dHdPam5wMGJlTmdk?=
 =?utf-8?B?aFlhcnVYY0JCTUxzb2FxQmpTalc3NUlOdFdZUjUwY1hqS3lPb0JYQkh3RW9F?=
 =?utf-8?B?WGFoVFhxMDZTZit0N1pSWWQrU0h3STBpb3NNZk9sek9uRytnTWtHdzJ3cDlk?=
 =?utf-8?B?MXo4WE1ONWdSRDNrcFpoMkdZMDkyZ0ZiODZKakFqWGRCMkhhWWR1SXl6aWdY?=
 =?utf-8?B?SlYvZWE3djNyNHFNckVHUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR10MB4997.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OEVxMlRXeUgrSGg5cjJZV1Q1ZHVGckVTTThDZVpIbXB5Mngvc2ZOYmxjdUJp?=
 =?utf-8?B?QnNZUXF0N3FYa3RlNDIrQkR4cVR5eG9uK1ZoOXlCODhPT3dpY2dTSzhNbFR6?=
 =?utf-8?B?TnNXQVRSaitSYU44M0dSYVpWODlEZlpoS3FrQmZ4TllPOXd6RDlORzJlTkZS?=
 =?utf-8?B?WFBFb1ZISDVISGRabmNsZGRwTHoyMlpmVXZZS0lwdENiYm1mYUZzY3hwU3Fu?=
 =?utf-8?B?SzlsV3I2RUhoVFBHSGVic0JhNzVUcWhzelBJY1BlSGlGRHlmSG93bXdsT0t3?=
 =?utf-8?B?RlF1aTFCdUlvVzZsTmlVbUJCd1cxOStDUkdETFAwcEpiVVpsZmJING9VdUox?=
 =?utf-8?B?VlBaYUJYeXVDWi9SRmxIR0hUalZoK1JiWi9OalU4dGdGRnFPdGZsZEVxQ21T?=
 =?utf-8?B?cStpQVhVUWVwaHBnQ3ZCSng2MVQxNUZwVitQclUyYjhmdEhxallnL0N1TlZy?=
 =?utf-8?B?NmRXQS9iK2x1RHR4Uko2U0syMGh3SmNJbElWZlhzd3F6NnQ0WGRGa3NYN2RL?=
 =?utf-8?B?L1kwRmlsNlpQR3dLN2s4Ym1jRnIrbU5lSEJWL1JLVmtEaFdLcWdvRmxhYkg1?=
 =?utf-8?B?eWEzL1o5anR2SDM1UnE4WDZHQzU4RTNsTk5hYzRZL2RJSWgvT28vMzdDV3ZW?=
 =?utf-8?B?L05iVC8yanVqM2hneURaN1IvOU5CTDBTR09PTVhCek5zZkJlL09zTUkzK1BC?=
 =?utf-8?B?M0JOOFVyRlB3Q3pDQWJOTytpUC9hUm1XL2RQdGpHak1zdThVQWdBcDk1eWd3?=
 =?utf-8?B?MmtLaUtEbnl6bVhlT3lDSkxHWTBsaTNxb3pyWm5BR29mMzMwbVloMHlEKy9J?=
 =?utf-8?B?WlloSzJ2RnRmdXd2aW0xNHM5K3RwOElTd3lad0grUk4wSWJtUkQ1bktBcjRZ?=
 =?utf-8?B?R0FsRmZBSlJmazQwa1pEdXNQS1M0MUoxNEhSMVAyNk5xUSs2aXkxQzdDZ2xL?=
 =?utf-8?B?eHNXZ2JZZHlIdGRzT0piNU1DRmR0YnpJbkdrSitEK016ZEgxell0UGt0UEhZ?=
 =?utf-8?B?NDltSURCR0E2VlBvelp5dUVkV0J2bWlZK0NPRWlGUVFINkFFTkJhK2RTb3pR?=
 =?utf-8?B?VWRGcHFpcGFoMkZSS1ZpU0UwakFzbithOS9LL21XaVJlUHlNbnc0UVkwN1lC?=
 =?utf-8?B?SjMxSENTTmUzS2xna2JUOUVKeGNCYXRmeTY3aWVGZFBiUldPbzJvTVc3em05?=
 =?utf-8?B?aXBrRjRTZ2Y2bzN3czFFTnlKZWNsdW5QYnRVTnp5aXl3eElmQVJncWwvOVZh?=
 =?utf-8?B?L3FvcUxlV2Q4ZlU3SXFkbENlcmE2VWI3TTFjQVErTlBuYlRiUGdJVDlTMTd3?=
 =?utf-8?B?N3g0eTFzUzhKVEVMUlJuOHArd3F5d1Z6Nlg2c1cyODhYNFlEUFdaSHZ1Y28x?=
 =?utf-8?B?UVVtcjhXaG5WVWZZeFJ4LzlPK2R1NGhiMmZxRW1ORGlDcXVnenV3YlhNR1hI?=
 =?utf-8?B?VXFZRUlsdDdVRVljR1pZV2lqZGJCalIySTNibk5yekVqbkZRa1czQittaE9I?=
 =?utf-8?B?SFdCV0kxaHk1SWpNRUxSYmRkcmNZTEFQdkpheDdMb3RQL0RUQXE3N09rYi9N?=
 =?utf-8?B?QU9DMTNYRGFCNTJ4d3hpSXkzVGljYzlMVGZoejUrU2t5aDJyOWtYbnI1cFNn?=
 =?utf-8?B?VmNMdmZsRnJsVUszUzBjRUJJdHZ0ZVZwN3NxbU83dVZtZ09NZHltMXpQQmMv?=
 =?utf-8?B?WWtNdHcrcFVsS0QzWW13aHlvcnhVZVJacVQ5MDlhUnBTMkNnZEtIay9NaHRh?=
 =?utf-8?B?ZVk1d3RleWhnT2Yrb1FBbi9zNFUyZ3QrekgwWWU0blZyb0RsN0VmV2xwQTJw?=
 =?utf-8?B?WWJaWWRvbTVKWjExQnBaSGk2bXRRUWlVRkM4NDlMS0JFVCttRVg2TVRhYlpK?=
 =?utf-8?B?Z0UzcE9FNkxrRkdNa2dqbW13RkNMQk9iRlVSUHZVQ1ZEd3M0TmFkZFk0TmJU?=
 =?utf-8?B?NDVXTzNKNHNwOFh4SlhCNERTMy90K28vODhSN2RZZk9NWEVPSHcyZGdmRlVB?=
 =?utf-8?B?ZHlYemV5ckdMSnZ1TzN2MDg0MjdxaXNtWUg3TkxRZ28vOUwvYWlCZFNvYTND?=
 =?utf-8?B?dnJtTWxhUzAyb0pTV3FoQlJLLys5dzRhRnR1Ry9TK1V5aDJkbWlkcXZvcXZj?=
 =?utf-8?B?c3IwaGxndkRJeWdpMXZxM3VVVnBLeVgxZ1h3OTlIZktBZ2QycytGSHJnSmZu?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	inoktBR1Nl8DeLU0Nkd+SQCcenI/lDokyR9AxhNBYn8TO4ViW1jsMpBOw0/CU7k2ZKETI3EWrKFDnCH0vteUYE/bQEj6utaeLbXzFWmtJRouObzxATBvs236iYu5AojF32cHtb9tR+TwJoiOt6aRHYSJYqEDE0sIDehm9ARNv7PH/1sSTx2PfYyXg2eSE5fqN2rylyxPWgW++j+MGzVReD6BQ32paqYpuhc8GwAvoonRtrfpKxfun/nbjIDkMHJWjmh1TcXI5gs58EqRZf5itx6frc96LiUjAG/naLJtNhKLQPdpFURyx3t7E/1XENHitDDTSctiPslLeXvFwo9CgIRCFgVOr8fpbZnM2z8QT5UUsOKtFmHZVRWqcEZXEq+DR89LjUxpogXy8krfca5qHeX8u/d8z4mYPn44IgOuUwvhyuaO6BeXVtrxA2a88upN5td6BaqRY0N7XE30ENHSnSOZiEJJ2J+cJAUZoK/lwjJswBopX1/mGzN8wCbbgPz/FIixL788B/ZS2USBb6HOYLynA/iTKCBkFAv0bNY6byT3hes9ToczXEz9xMG2EUyXnTGSPYCCfsm5UcwBjdQ+M9VFmT6BuLC/t2UsGEbcXp0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46602f0f-feb3-42ad-c3fc-08dd3cb4a780
X-MS-Exchange-CrossTenant-AuthSource: BN0PR10MB4997.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 20:21:16.0129
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lm2kaaIyYPHl9cj6SzBGMk+aLoq3LytT9Ep8KN4oQjmK4S6fvwQ3TtYMkM7cfHW+G9Kn/YdxnqB7Pmwg7kEaNao0IS79QL8cdDMd4jYsXaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4758
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-24_09,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 adultscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2501240139
X-Proofpoint-ORIG-GUID: ZUr9Z87ti2XHMJeIN5HgjmIS-ITAyKyI
X-Proofpoint-GUID: ZUr9Z87ti2XHMJeIN5HgjmIS-ITAyKyI
Subject: [oss-security] 7-Zip Mark-of-the-Web Bypass Vulnerability on Windows platforms

https://www.zerodayinitiative.com/advisories/ZDI-25-045/ discloses:

> 7-Zip Mark-of-the-Web Bypass Vulnerability
> 
> ZDI-25-045
> ZDI-CAN-25456
> CVE ID                  CVE-2025-0411
> CVSS SCORE              7.0, AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H
> AFFECTED VENDORS        7-Zip
> AFFECTED PRODUCTS       7-Zip
> 
> VULNERABILITY DETAILS
> 
> This vulnerability allows remote attackers to bypass the Mark-of-the-Web
> protection mechanism on affected installations of 7-Zip. User interaction
> is required to exploit this vulnerability in that the target must visit a
> malicious page or open a malicious file.
> 
> The specific flaw exists within the handling of archived files. When
> extracting files from a crafted archive that bears the Mark-of-the-Web,
> 7-Zip does not propagate the Mark-of-the-Web to the extracted files.
> An attacker can leverage this vulnerability to execute arbitrary code in
> the context of the current user.
> 
> Fixed in 7-Zip version 24.09
> 
> DISCLOSURE TIMELINE
> 
>     2024-10-01 - Vulnerability reported to vendor
>     2025-01-19 - Coordinated public release of advisory
>     2025-01-19 - Advisory Updated
> 
> CREDIT                  Peter Girnus - Trend Micro Zero Day Initiative


https://www.7-zip.org/history.txt lists this fix in the 24.09 release as:
> - The bug was fixed: 7-Zip File Manager didn't propagate Zone.Identifier stream
>   for extracted files from nested archives (if there is open archive inside another open archive).

As explained on https://en.wikipedia.org/wiki/Mark_of_the_Web
the Zone.Identifier metadata is what Microsoft Windows platforms use
to track where files were downloaded from in order to warn you if you
are opening a file from a remote website.

Correspondingly, the Zone.Identifier handling code in
7z2409-src/CPP/7zip/UI/Common/ArchiveExtractCallback.cpp
is wrapped inside "#if defined(_WIN32)".

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

