Received: (qmail 27698 invoked by uid 550); 21 May 2024 16:26:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27665 invoked from network); 21 May 2024 16:26:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : references : from : to : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=/uXXE80WrHMmE8wJ07b9Th6hOQfSBD7IG3wdxXE7hT8=;
 b=HLrNBtmGx5wGP1RQcTfCLbksHaaKay19anAC9LTyIr0rthi3pOWds8z7GX2103UWv4eU
 VBonzUBYQAQ/voGWNZJ02NaZ67tG1P2zGt/ga94wy+/IUQVuzRoLJ1Toaod6TI21Aj77
 5twChXQqDcgWUUuJO2TZs6HewgH9UWF1ym7WJJKO9U68MUl98Pu4WpK17SNifBjX8yDN
 HsOMwvwTe6F19/NWQFVLxnLvhyJXb3MrynTdIv/oTshokqgNd+hx/yFyfc/3PEfdl4YX
 eKplfVMtTjGG7ZlomDi9C2r7glMuT+8DBhbVRFROIcbxh7l0Hsv7E0oTxxmM0DWzG+fb nQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hen+AqswgB7Csz4/wfwsKHUo7/TAJII8vG9puboy2DFGFAKzIjFb7r1uwFnzlp0GMtRov9a1emY+bu9kxd0eh3Qa4UQ9+y446KIs1M1euFKnBCpLM4xnOvGkOGksEObM4KcPMJgaHqS87ZzHtK4cfJc7ZkaijUx1EttaGkqpQoDP507hDwAw5Hrz/WxBJBSndntGcQqJBmp2WcTpDcNWKlUE0TfUFEeN94lifmUtkdpsfTbdKwOhX60u8yXjH5my6p/6yKmILH3Is+cV45qIpRjjBuHAcppnSEbJynqTuAKft1j4+LOEUMLdSMXov3f+0AKBIg3zuWBHp+5Nlu89Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/uXXE80WrHMmE8wJ07b9Th6hOQfSBD7IG3wdxXE7hT8=;
 b=Kw4GmGsXQNDdFhy5U7oWE5DNMeWIo5rYiee/O53I2KIf6ReHxrcUaVR4gZOJD6vFBbasir7McnF5HahwjLKJ38KrflR8oUiotPEvik/zyrtB2RCTZ9wUvFpzINTYVN3qsoxD/qF0/YnLN3K0QHaVwQPvSx8iAdg3Y8wzYA3qKVfvoCNlM43qHDS7c/wWJ0kAxYeDsx5Z3j8LncOT8IPEvyiMg4EncXLdDp4/KvJlcJI7hdyE6rCu4T9CrtldLfB2rYrQWfw132bxe0dWSS7i6+G3w8nGRtLXILVDqAd5Jbh6juxVR1GXUkJBaBrcEhEXgJb9pV3yqvY4/v9+5nXm8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/uXXE80WrHMmE8wJ07b9Th6hOQfSBD7IG3wdxXE7hT8=;
 b=bg1dbTE3ahySHrQZTD25dIBQVLU6JfSxEMf2WbEkprRx29pOEi69tffPBnW0fC8xOdNARDKORtMAaqh/1W2Pz+GvrqrbSNj662qmZpDH/iYy3XsZmh1u8bSXmN1F0QKxamJhnw8/+neGVzPH34j2lu3Dg3cVyZpWQiRfetnbB8c=
Message-ID: <ceb67382-6a84-4e9a-9d02-23444d39b23e@oracle.com>
Date: Tue, 21 May 2024 09:26:01 -0700
User-Agent: Mozilla Thunderbird
References: <08d43dc1-5e81-73cf-1563-b48f5eb28a6f@sangoma.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <08d43dc1-5e81-73cf-1563-b48f5eb28a6f@sangoma.com>
X-Forwarded-Message-Id: <08d43dc1-5e81-73cf-1563-b48f5eb28a6f@sangoma.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO2P265CA0514.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::21) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA2PR10MB4698:EE_
X-MS-Office365-Filtering-Correlation-Id: b3f036a9-cf26-446b-1013-08dc79b2b745
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z1VRWXJpMXdKWUJqZHdSUytmRFRpVG1XVGMranM4WXlzUmtZTFZKNFg2c2Jq?=
 =?utf-8?B?TCtNWENEZURYZk1wZFhCQ2k3bDg3OTRwSEo2amIvVERVRWhhSk5ObWJzRmVF?=
 =?utf-8?B?czR4WHRQRHc3TER2aGxMb2RUZjRRblBCMllqK1FZeUs4UmVJWUNhTmo1N1FB?=
 =?utf-8?B?Tk1uaWN5VlZ5Vk95WHdIOVZiTHZxeG1SU3k1UFh5N1lLRlBKZmJML01jYkY3?=
 =?utf-8?B?RmFxMkM1eDExc3gvS0h2L0tQS1pXUFMxVDNiaGZwdWs1L2lCMjYwMm5QQzkx?=
 =?utf-8?B?ZVlIN2dCZnVNV2d0b21FUG5xNzg1QzdvNDN4YjNFZ0FkaTFIdmdsaEhFZ2FF?=
 =?utf-8?B?bzRpTmFLNGZoeGw5K2lPUkxvSzZZZXJpUnJsaDNkY1oyQS8vRHJiMmx1cUkv?=
 =?utf-8?B?ZjhFWms4RzB4SU90dmRtWVdzQjIwRnVoOWdGOGtlSVJGS2ZrT1BLWENlZGZ1?=
 =?utf-8?B?OGRuZzZ4NlU5T1J1bEtLN0k2TkVQSHdjWnBnOC9pYko2Y25WZHJlV05mSGxr?=
 =?utf-8?B?UnJoV2VCWWlvYVJ4aGtaKzNkaUNxWStBUDB0ZFdHSkhLaC92a3RTNXYxaDJz?=
 =?utf-8?B?ajBFdkdkTUFpT1IrQ3NLSnpZd0x4QjZ4OFdJSjJYL3prZ1lqakJMMHBLRGRS?=
 =?utf-8?B?LzlZYVBmWHVLNzYxNzZBSFljVWI5RU93RGVvS3N6MEgrMG5PeXpweWNZaW9s?=
 =?utf-8?B?cUVWRC9JTlV4cGx5SEZXdHFxV3RGcGVuQ0tpclk0bXJCTjFlbTFWS0k0Q0NL?=
 =?utf-8?B?eGFmejNxLzMvQ2kvR0lUK1FtdFk5ckFxbGYraVJJQnpBdGlRdEltQnh6Q2hD?=
 =?utf-8?B?N2g4Wm1USmFnR1cxQXRZSDZwb0prN3FCSHlIVWZmODllbko2UnB6dzdXVU42?=
 =?utf-8?B?MW9COXIzMVh4aTh0czd2K2swUDBiNm0zcmVLbFo2Tjc4RmV2QUovRVY4bFRF?=
 =?utf-8?B?Rm50RGdlRlM1aUhhcHdBbWhFTXZ5SkhydGJ0dFZyTlZMWS8rT2xNWFR0aUdG?=
 =?utf-8?B?SFhYbzNpU0g2RHM4Tm92TVJlQUxGQVZFMk91ems4Uk95Vnh0VVV3cElNeGdT?=
 =?utf-8?B?WTU4TTRMUWF5TzU1Z1JXeXA1enNZYmxaWHZaeWt2VFp0dW0raUEwMzk3OG9s?=
 =?utf-8?B?U1NrMEFVQjR4bjhjRzdsTGJkNlRjRkx1YlFhNmszaGdGUmNyVmp1VjRmcGV1?=
 =?utf-8?B?MkhyK1RhWG1RclpjaysrM3NFWHl2bW8wWDBZc2VYTlFPekVkamFXZUZNYlEv?=
 =?utf-8?B?dU9kZzg3RXN6YkJINlBadWZiWGxlbEUybmNvUUd6bUppckE2OHZuL0pFcTRr?=
 =?utf-8?B?djNIMStKb1pxU0RlUmZlUFlNSDlkYmh6aWVvV0MrYVNXWDhhNGRYTldZcmox?=
 =?utf-8?B?RnlaYTBGZTlNOG0zcTJOdEhTNy9uZDVzZUVhMDBnY3BqLzAyL0QrVy8weFpJ?=
 =?utf-8?B?N1NrQ3p1Ync4QzZSOXlpQ1FrTUZoYmMrVlpjWHQyb1ZtbHZmYnJodGpZZjNs?=
 =?utf-8?B?MWRyNmNybzlMbHIvcHcvQ1JTeWtLak1GY1FQSlZOQk5raDNyOWhsNW9FWjl4?=
 =?utf-8?B?SXQ4aHppVkk4b084amlHNnVpb3VxS0UyL2IzVFhYR0pwNk1kSXl0Zmtac1JW?=
 =?utf-8?Q?4svvvL5ttwNJHFugnR4OqSMwVjw1wM1LI5Q10NbCqts4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?akQxRzhWbjl0Nm5IWjliTzQ4Zlk2WjFIV2t1Q3BjRGZ5SDNjU0RwYnFCNita?=
 =?utf-8?B?Y1BqaXI1RFZ4Tm1KU0gzYmE3Ny9SWUttNnlQRGF0Q0FmUklKRmFncXF0ZTA0?=
 =?utf-8?B?T3ZMNElHcGU3QklFRFBGa3Irb1FkanFabmcveVdQTEhRZDNtc1ptWENId1U4?=
 =?utf-8?B?c1B2ZFAybDZYMmpKYURINEtNREovaGppMUVDdkJqTlNnaUtMMFphd3lWeVZC?=
 =?utf-8?B?WlN6VC9YQ1BsK04vSkFlT2dFdk14aUVXbmM1NytiWisxdVpESkc3bEVNMXpX?=
 =?utf-8?B?d25VZWNPZVhIMXVuQm52VldwWWgrdzhjeTJ1Zzl2VVcxL3ZxWGFuMWVscjhL?=
 =?utf-8?B?QkFUZzhHM2huWElVQzlHcGdvQ3FXbHQ1UGhOTFFQeGNYR1lOZWdhaGxNNDJM?=
 =?utf-8?B?SGFiTkhLRTZnWkJ3VFpTbjdBeHdnZzhpcmdtVVNZUHk4Wm8xWWZrV2VvRWRn?=
 =?utf-8?B?dG1LYk0xS000N3BGR0tUOERKTjZYcmdJUWJ0QlFWV1N2VmROcmhEd2hrWUVL?=
 =?utf-8?B?djdnK0ZENUZDRDVFZVpWeTlGQkxLYmszdXVMZFVkRUlvek5LRDBOWXZUVHFW?=
 =?utf-8?B?VzZzaUF4RElzMGp1TEtmdkNKZzZSQnhBUnc0ZXlGdGNvYUluMDByblFuN1pS?=
 =?utf-8?B?MVc2SDYxZTVYT0FvUmdWSThSOThFcVZpZ3JjaHVYS1MzY0tzN3pzMDFNQXJU?=
 =?utf-8?B?LzBHRTJuT3dSYzUvN0dnamJCc09RYXZZL1RnaE9Cd1pPMkpIN3N5UTVjZ1lo?=
 =?utf-8?B?TVI5bXY4RGQzamgvWS8wWCsrbmxSellaTEJwQnl2d1NVWUEvaE9wbXJsbmFh?=
 =?utf-8?B?TXlsWHpJQWJRNHdQcE95ZDJ0NTY0SnVTTmJLN3FML0d5dDNYNVlsZWQ5RkpJ?=
 =?utf-8?B?RzAvdHVaclJMRHBSbFB1em8weDRqTFVJWndIQW4wcHFqZXhHK2licXFXZkFT?=
 =?utf-8?B?Kzd0TDNLNDltS0c4enFJc2s0bmt6UUVEaDl2dFFMZ3NhQU5zTURGTVNObHNv?=
 =?utf-8?B?eEkzRkV6M0tyalI2L3pyV2JqR2dINVVhUXVoVXdSOXdUQktDaVNhZkRHZlhQ?=
 =?utf-8?B?TFg4cHU3RnVNUTUxdm9TZEVDMzJ2UGpuY2xxNk5ESWpmaUpjejZlazlXRGxB?=
 =?utf-8?B?Q2lmdVYwb3d0N0NaMVphSGhNV0QydS92Z012UmtoeG1JUEhpOVRaRUF1VXV4?=
 =?utf-8?B?NndidklTRGEwcm5qSXROcnJaTmpXN1hzQjEzTDNGNWJoWkpycmM4dDM4L0xt?=
 =?utf-8?B?c2l4WVhvOEdQTzhoV2ZGamZ1Q3JWTzlsWndkK0ZlY0dJZXhFRWtTUldKSy8x?=
 =?utf-8?B?b3dlc0tsVEVvaFVpOWVuSDhJN05ValBsVEgxOW5xTzZrTUxCNWFtdFNwN0gr?=
 =?utf-8?B?RkNVQzc1U1dpcTVZcld2ZmptREx0QVB3ZFZjWmRQY1lmdVBvR1BVY3R5YndQ?=
 =?utf-8?B?WXd0RzNSYWhvczJVdkpVcGNmYlZFZENWTFVwMmVxaXBSaGh1ZTY2NEx2a3Vv?=
 =?utf-8?B?SzE3ajFtRUJPTWhTUlVBWkRwY3Z0bGhxUm9jZ2N4dExxaWNCckJleG1aekUr?=
 =?utf-8?B?Q3BjL3p0ZFBTdjIvSUhWQVZvazFvVGdjTXdCODdkNFN1ZEgzRitXaFVtS1Y1?=
 =?utf-8?B?aGtBMHByRUE4VVFZN3BDa1NPNW5zOVRGdGRQeS9XWGlSbUdnTGFoUlFRSXBQ?=
 =?utf-8?B?VnN3K1Z3RUhRVW1CM01iYXlvNmdoWTNpc1NaMVE2WHRUaTVTajYzZ0VtTjJP?=
 =?utf-8?B?bExDbENyMFFXak4vOXVuaW0zamRmTTVsUzZzV3NWMjNhcVVLVXNrM290YVVK?=
 =?utf-8?B?RzE1Mm9LYU5KdzM5MXlSWVpBcWpiVW5BU0dIU2lEMElkOFVGMTRCTkorTFNw?=
 =?utf-8?B?M2E3Mlh3QXJ1TmZZekVGbVNldTlJOGdBMGVNK3EzSU1lb2RKQVpyOGZieEZp?=
 =?utf-8?B?MWkzN2xrODM5Z3VNRjAwZ2EwZERrM3pPeHBMK25tWW5Ec3dwRlZPcnlTK1RL?=
 =?utf-8?B?VExyMTdjb0s1SVRHdjUrUkQvUm9vWmJzdDJ2L1NMcWFXMHNxZVVFNGV0dXkv?=
 =?utf-8?B?VW8yKzdicEh4Ym42TDZqOFAzM0NsREdJRWFmeEsrYzJXRVpGMFlnTWZYdUdI?=
 =?utf-8?B?eDNwRTZuUElOMzVjRzY0OVFGaHB4VmJNMVBJNFlhZXZPQ05UQUpQNlBab0tO?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	L86LF/pqD3qH9e2bdzo0ILDwf2LPggdIyecU8EOS2KLkaeYwsdUOjhZjnuir50Pq5q65MZnkznu47bq3DdX1hRSRJhuYE0IMgSHuk3vfAGZy/QjakxTKmGrVj99L12rl4C9EEo5JH+cttgkuD0+tlPj9dqqSLHlgUlq1Q2KQvgq4XxCiR6syGge/A86SYx6rSgVNUh5M3tN3PxO6D1FYWz7Gt7PXSVN3nlg5TMVbUYPrLozsfSMZam4l7A09MSI+9kJMpVBFuoBQiUZ3CVuDDjkNanbrrj8Uqe4jrGjayWK2/AIvbeOfad3ug6dAfOwFanU2MQPwuv4AfNSfdzsJy1iuz1nQ1nR7t6rOx/V+cMdtjG+l6KGX58KY11zNPYSDGVDr6sRXeMBFlEjwS1aLQ+IhsrwhMRnhQslT/jaBHy03qhU4JDyzFXm6PL2nDSxQURrhX25SPkeI0JY1zIJPabrPfxrmnhOapMD6vi6anJyKXciwRTl4I7noThehzkhJGsRboaEObVGoMv7WO6XXLuxZMTF5zHnLyLlB1MeOssr4LRu0mqmVNbaWde/K4pQvYZUmBfITnCK6suIVBwLIoAVeo1616BD60cwQ8s3mpB4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f036a9-cf26-446b-1013-08dc79b2b745
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 16:26:06.7672
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: or0xuwdaZtnVaUXUm4B8EPS7mX+LSLLqYmZVJexsdcM59N+6RpBaVtHWkj8JjWTWWAXXEuIpS2D9hCJoJ9MZfim3wY2HGh19YuyIs1XzcgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4698
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-21_10,2024-05-21_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405210124
X-Proofpoint-GUID: W_xqgyXJxH3F9gMdn-AtqfgflvOHWlki
X-Proofpoint-ORIG-GUID: W_xqgyXJxH3F9gMdn-AtqfgflvOHWlki
Subject: [oss-security] asterisk security releases 18.23.1, 20.8.1, & 21.3.1

All three releases address
https://github.com/asterisk/asterisk/security/advisories/GHSA-qqxj-v78h-hrf9
"res_pjsip_endpoint_identifier_ip: wrongly matches ALL unauthorized SIP requests"
"ALL unauthorized SIP requests are identified as PJSIP Endpoint of local asterisk server."
"Impact: Unauthorized access/calls"

-------- Forwarded Message --------
Subject: [FD] asterisk release 18.23.1
Date: Fri, 17 May 2024 16:46:28 +0000
From: Asterisk Development Team via Fulldisclosure <fulldisclosure@seclists.org>
Reply-To: no-reply@sangoma.com
To: asterisk-dev@groups.io, voipsec@voipsa.org, fulldisclosure@seclists.org, asterisk+news@discoursemail.com
CC: Asterisk Development Team <asteriskteamsa@sangoma.com>

The Asterisk Development Team would like to announce security release
Asterisk 18.23.1.

The release artifacts are available for immediate download at
https://github.com/asterisk/asterisk/releases/tag/18.23.1
and
https://downloads.asterisk.org/pub/telephony/asterisk

Repository: https://github.com/asterisk/asterisk
Tag: 18.23.1


## Change Log for Release asterisk-18.23.1

### Links:

  - [Full ChangeLog](https://downloads.asterisk.org/pub/telephony/asterisk/releases/ChangeLog-18.23.1.md)
  - [GitHub Diff](https://github.com/asterisk/asterisk/compare/18.23.0...18.23.1)
  - [Tarball](https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18.23.1.tar.gz)
  - [Downloads](https://downloads.asterisk.org/pub/telephony/asterisk)

### Summary:

- Commits: 1
- Commit Authors: 1
- Issues Resolved: 0
- Security Advisories Resolved: 1
   - [GHSA-qqxj-v78h-hrf9](https://github.com/asterisk/asterisk/security/advisories/GHSA-qqxj-v78h-hrf9): res_pjsip_endpoint_identifier_ip: wrongly matches ALL unauthorized SIP requests

### User Notes:


### Upgrade Notes:


### Commit Authors:

- George Joseph: (1)
_______________________________________________
Sent through the Full Disclosure mailing list
https://nmap.org/mailman/listinfo/fulldisclosure
Web Archives & RSS: https://seclists.org/fulldisclosure/

-------- Forwarded Message --------
Subject: [FD] asterisk release 20.8.1
Date: Fri, 17 May 2024 16:50:51 +0000
From: Asterisk Development Team via Fulldisclosure <fulldisclosure@seclists.org>
Reply-To: no-reply@sangoma.com
To: asterisk-dev@groups.io, voipsec@voipsa.org, fulldisclosure@seclists.org, asterisk+news@discoursemail.com
CC: Asterisk Development Team <asteriskteamsa@sangoma.com>


The Asterisk Development Team would like to announce security release
Asterisk 20.8.1.

The release artifacts are available for immediate download at
https://github.com/asterisk/asterisk/releases/tag/20.8.1
and
https://downloads.asterisk.org/pub/telephony/asterisk

Repository: https://github.com/asterisk/asterisk
Tag: 20.8.1


## Change Log for Release asterisk-20.8.1

### Links:

  - [Full ChangeLog](https://downloads.asterisk.org/pub/telephony/asterisk/releases/ChangeLog-20.8.1.md)
  - [GitHub Diff](https://github.com/asterisk/asterisk/compare/20.8.0...20.8.1)
  - [Tarball](https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-20.8.1.tar.gz)
  - [Downloads](https://downloads.asterisk.org/pub/telephony/asterisk)

### Summary:

- Commits: 1
- Commit Authors: 1
- Issues Resolved: 0
- Security Advisories Resolved: 1
   - [GHSA-qqxj-v78h-hrf9](https://github.com/asterisk/asterisk/security/advisories/GHSA-qqxj-v78h-hrf9): res_pjsip_endpoint_identifier_ip: wrongly matches ALL unauthorized SIP requests

### User Notes:


### Upgrade Notes:


### Commit Authors:

- George Joseph: (1)
_______________________________________________
Sent through the Full Disclosure mailing list
https://nmap.org/mailman/listinfo/fulldisclosure
Web Archives & RSS: https://seclists.org/fulldisclosure/


-------- Forwarded Message --------
Subject: [FD] asterisk release 21.3.1
Date: Fri, 17 May 2024 16:50:04 +0000
From: Asterisk Development Team via Fulldisclosure <fulldisclosure@seclists.org>
Reply-To: no-reply@sangoma.com
To: asterisk-dev@groups.io, voipsec@voipsa.org, fulldisclosure@seclists.org, asterisk+news@discoursemail.com
CC: Asterisk Development Team <asteriskteamsa@sangoma.com>

The Asterisk Development Team would like to announce security release
Asterisk 21.3.1.

The release artifacts are available for immediate download at
https://github.com/asterisk/asterisk/releases/tag/21.3.1
and
https://downloads.asterisk.org/pub/telephony/asterisk

Repository: https://github.com/asterisk/asterisk
Tag: 21.3.1


## Change Log for Release asterisk-21.3.1

### Links:

  - [Full ChangeLog](https://downloads.asterisk.org/pub/telephony/asterisk/releases/ChangeLog-21.3.1.md)
  - [GitHub Diff](https://github.com/asterisk/asterisk/compare/21.3.0...21.3.1)
  - [Tarball](https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-21.3.1.tar.gz)
  - [Downloads](https://downloads.asterisk.org/pub/telephony/asterisk)

### Summary:

- Commits: 1
- Commit Authors: 1
- Issues Resolved: 0
- Security Advisories Resolved: 1
   - [GHSA-qqxj-v78h-hrf9](https://github.com/asterisk/asterisk/security/advisories/GHSA-qqxj-v78h-hrf9): res_pjsip_endpoint_identifier_ip: wrongly matches ALL unauthorized SIP requests

### User Notes:


### Upgrade Notes:


### Commit Authors:

- George Joseph: (1)
_______________________________________________
Sent through the Full Disclosure mailing list
https://nmap.org/mailman/listinfo/fulldisclosure
Web Archives & RSS: https://seclists.org/fulldisclosure/


