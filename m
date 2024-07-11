Received: (qmail 29920 invoked by uid 550); 11 Jul 2024 01:14:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29888 invoked from network); 11 Jul 2024 01:14:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=82thfCyrQtG2MqlsHN9nNyFwsPTIuUviBSRGcYQ9svM=; b=
	diT87JP1VNstxttdVn/l4t76Yh868hUHJNolU9URQeKTRWWBO/UcyogahoDX76IZ
	SSbP/KT5vvMW47PpIbXDFiTCcoUV4p8HArC9YsywEoduto2VL9kY52DpFfq8wJZb
	qfKoyheyEGqM6B3TWqXJTLSOXkahYC2LpckmUYDTrJcZmGfT30e1gp1dJqHSaAHT
	/dpOglki/OqUD+Kd/8NCR2Ck9c9XN3O0FxA6UADkIQZMihqehctNK5MGwHP5Bh67
	grFLd4qK/6qBg/M+kt7QRKjK8MPG0AJKBoUwz2L5E4v3tYiZvh9n47+dZzt0vIVj
	MjyVRB+iK1BQq07MjUFC8Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P195FQ0AIz5ev+qjUE6zxiYhzAvVwwUclo/cvzfskZD7mmlIaujZ5M3zUyy8hyKxGMNgPzUqbEqVe8RSu4o+vWBSKrtT6o9R9/aRvdW78ywG5/UgNA6XX0wMr7nKwmH/txKkFaSzSevc3vjKQeNRH9wTRGPu1Zc4FGx7oN6erNi9m6am4iMvonZbkiEbIOF7c9EtfWNs+e1pj6M+KLIjkDktbf+vCX+6hWzbJqGLCg8augv+7xlVCiNC01XtKnheWcb3tHHghBXGa7s3zsDf68n2uCJWzGHE5BljTtfioeXHkNOL4ILeeeMMVRnmZnqEH9eCFyCBTqK+Xk3aD7JAtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=82thfCyrQtG2MqlsHN9nNyFwsPTIuUviBSRGcYQ9svM=;
 b=fVMubAuS/llcyqLo6V3vNP/1OLTlXNglb/ZU5EhYv8XV4Kl65M631tnS6jJF16U6K7eUxcSVG15ola9c+2u2R+W0Pc7XWTgtxC9sq9WBf9PyGHP6KeaUr7Ey0BdcOMc+r/B9FAtGxVonbH38C3DAKkWzwr6j9Z/K3h43LP8S+mzImtwaYTVYrouuDE06mtCPbCXP1SjWqrjdPtzy+20MlMR6luHObD9L+684NFanaO+BEKv7utMtt35T691EtY0t+nqveWPW0ImhMRhdsKEgNdxsAs+wtKOOdW5gYVtclICAi59NyOIvXSjSxsS+oxwhEJdazYSeBj3zsd9tQr1yJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=82thfCyrQtG2MqlsHN9nNyFwsPTIuUviBSRGcYQ9svM=;
 b=AjJBM+u0EuVhT0/HUZcTLiPcg9o8IAsQeiLC0P1yl10y0j1ly8uhBJ7zfAFq+PkKdsSvTKRFNc3Pisoyr5JTjI6SQ0hBMfwY6BF5zehfHKY2M3aufhcFyF/XUb1lgM6h5AGmaVzcKAd1Ws/JXBrEZH4eJ60MTSlHw3G56fSJDWI=
Message-ID: <43083fe5-9153-4910-9970-b3da15416d38@oracle.com>
Date: Wed, 10 Jul 2024 18:14:34 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Pete Allor <pallor@redhat.com>
References: <20240701083838.GA12787@localhost.localdomain>
 <20240708162106.GA4920@openwall.com>
 <67430275-b84d-462e-ab74-5a756c6d068f@mindrot.org>
 <20240709224923.GA17147@openwall.com>
 <CALDM2Hc9XdQh0xjB1SKwMofRnTS2ORubMi3QZ0=Yo0NObnuq4A@mail.gmail.com>
 <CAEFCzXUwgt1dcoDvcjKEJ9Tj-kiFpQ0u_GQT14BcztXWiRgrSw@mail.gmail.com>
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
In-Reply-To: <CAEFCzXUwgt1dcoDvcjKEJ9Tj-kiFpQ0u_GQT14BcztXWiRgrSw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR14CA0009.namprd14.prod.outlook.com
 (2603:10b6:208:23e::14) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB5646:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d12d254-0f68-404e-797c-08dca146d5af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QS9iUitiM08zSWNHRnBWNjFRSGdoWmVMNVFJSW5mSlY2ZERhOXFPYzBDMlh4?=
 =?utf-8?B?eW5nZHhFWi9QaWhYK01qalRqUTE0SGhQdHR3dEhPV1ZSWkw3MG9CMHpEeWR6?=
 =?utf-8?B?QUd3Y3p1djd0SmxJMURWQm51SDZIY2ZoZE9WbWx3Qm5oR3E4aFlPRC9mcVZQ?=
 =?utf-8?B?Y2dNY0w0ejJrU1oyOGNkKzJCMzVybjR1ZUVzcU82R0ZQb01wYUNQaDg1dDVM?=
 =?utf-8?B?eFV6ZEw0aXNUUmhzT3M1dmRodDdzOVlaVk0wQVRqMElldUJyVVlNVTdxMkY2?=
 =?utf-8?B?RnR4cExrNFgvRlpSdXBWaGRBc242Wkw2MXVvTE84T1hmUnIwK0tCcFR2cGxq?=
 =?utf-8?B?K3piTEpUWGx1MzRKa1gvTXVqQzBtdjA2NUY5dk11U1JRKzZjRG1IK0h2ZWc3?=
 =?utf-8?B?U2FPdmlub3BNaWFRc294WDZKNk5EaWkvV2R1NVRFN1AzT2k2dWtFQ0J6Nm5Z?=
 =?utf-8?B?K2FNVmp0UThIWHQ4QjFteE9qSytSa1JzY21yUjlKMnZPaWs1VjN4R0RQKzlu?=
 =?utf-8?B?bDhSNksrZXN0ZUJvdXc3OGV0bXE5VFlKcGdNaTN2M0VacGxPNVE2R3JHdldR?=
 =?utf-8?B?Mmo1cFJGbVdJNWxyUFNZQjNuSExGQUYvZ21tZTF0eGdTSU9wK0F6RTI3L3Iy?=
 =?utf-8?B?MXVTQkVoVWFnTld5dE5uWURyVjB6YXJjOTljdUhPUDlGVU9SdlY4NXFtSVlK?=
 =?utf-8?B?cUdRVGlBUXVvaWs1UFRDNnFUVGpER3d3VWFScU5NYVhTMUhTUGExUFh0eWtP?=
 =?utf-8?B?VnA1c1cxYUppbm50dUppZUJ2MXU1N05VVlFMV3ZsTnRBQnNPTmpsY3lQQ1k5?=
 =?utf-8?B?RHZxY0JHRHVFWGNXNEJKeWhSZURZOXY2RVRiTlRSQkZWdlZ2TVRpV1dMUjJZ?=
 =?utf-8?B?UDJpSnFidXA2bGMxUG42MldOV2g3c1ZFS1YvOFFWdHJ4dW5ncUdkdjI1ZTl3?=
 =?utf-8?B?bXVvclo1amRySThyclRibmhUVlpTTWhIcVlEZFVUSTR6RzNmamZ3Q3FmSnVj?=
 =?utf-8?B?N3VtMHZLVWx1WGNaeHN2eXUybHlxcnRwaFN5d2NrL0Z6OHdSMnB2QUVlWlJQ?=
 =?utf-8?B?MWtsWE1UT0RZcVR4Nlp2ZXBzaWNNcms2Wk9LZjBCaURJZTdRamdEY1QyOHFi?=
 =?utf-8?B?VDB1UDNCUW1uRDUxSy9yUDRTRGtaanplV0ppcWFWZ29URG1VSGFZelhDdFgw?=
 =?utf-8?B?dVFQZHhZMkM5aW1mZHZicXErTXB6NzY4NUorTXdRSnNqRGRnL2tKQUhvQVhp?=
 =?utf-8?B?S3F4QnA3MUU3MzlWRGt3LzNHRnBuL3U2Lzh6N01NTW9tRUFuSEVDZlpmZTVM?=
 =?utf-8?B?ZWhrM1ZTaUxQYjM0V2NqVGlKMHdQKy9QUFppWE5DR0V5dUhPRVg5V0pXbW1V?=
 =?utf-8?B?OUcyV2t6ZllpRHJWYVV4MnQyOHBuSzA4V0ZYWWNJZ3oyaGZyVyt1aVU2RXZq?=
 =?utf-8?B?UHgzaFRST1FTRmJMdGxPdlpuRkhMUFFSa1VxdkticzRTcGRDYlduc01lWlo2?=
 =?utf-8?B?bVgwOWlYcm5kckhaUWRHZElqZmlJdzhlRTRlNU4zYmRUdVdqMEpiRHRucGJV?=
 =?utf-8?B?cWtYZDR5STgyYm5ya2NiVTNsMkNuRWJDandGRjM2OFpMazRXY2lDaWJpd3Qz?=
 =?utf-8?B?OGdWZjlTckVjenpkei9xaGJibDFzNTVLc09ibXpmdGMyM3FYTm94Q1VEOGRD?=
 =?utf-8?B?K3ZtRVJEbTlkdzhYV3NJTWRWMEdQMDhVSlZ1bkh1Q2J1OFhRemxURDhiWld2?=
 =?utf-8?Q?mFYc2i3zh2L76udj4Opg1F85D+5g9EmBBDR/DPZ?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NDl2MGcrck5PaUNKSUVCQy8xekxaL2dBVVJyQW9QUE1LK2M1RTdyeXpnWDB2?=
 =?utf-8?B?L1F3NVdPbGtPMmJZbDZBODNTc2xMUXdPL0dqUjN6STd5UmtiaW4xcUFHRTdi?=
 =?utf-8?B?aE1sU1NNSmFURWlhd3Rra2VsRnZxVHBmby9WQ2cyRDMreU13SGN5Rk9NSUNq?=
 =?utf-8?B?dytlWGMwREFlVThxek1VK0tMclN4eGFJaWpqb3VIc0MrWEZNWHJwbkxwaHNn?=
 =?utf-8?B?bGltdHhvWWpwRm4rODJkQ3JpUlgyL0FpUHJwVHlrbnJHcjdTV1RYNWVWKzNH?=
 =?utf-8?B?YmFRSUlicDVrSENPb2cwcFVKeklHQjMzS3d3Q1RFYUZVdHU3WlF4RmRoRktw?=
 =?utf-8?B?QkdKRWJuY0N2NjlobnlNc1F5N3JnbkY0Q005VlRYNTNlaGZNWXpjNVJMTHNx?=
 =?utf-8?B?eU8xdFU3YlR1MGRqMzZJLzA1VTZoYkZvTDRtclhUQjMwQTNyKzhzWEt5UVRS?=
 =?utf-8?B?SFU2eElRektNOFJYelRqbnM1emVCZE1qWlhPd1FMWUt1eXhxNzFDZ1dvZUdQ?=
 =?utf-8?B?TmJ6YWpSbGdTVFFrTVV3NmhOMVMvYURxQWpCQ2JSWTFydFg2dkJSQlE3K01Q?=
 =?utf-8?B?RjdBWE9hWmduaFVzOG5uYUFPM2YyZ0tNYTZEYmdkQjJaVjVvbkp1MHBpT3BQ?=
 =?utf-8?B?N2FTdkVtSUF4Q0pnMHh3Z3hTRnpENVZadDl4REFHN2FWSmFZOFp0VFdBbTBr?=
 =?utf-8?B?cHJLVXdZSytsT2V0YVRsS3NIMHZVQThlSW8yKzF5dDRkdUFGK29mcUJaOHdu?=
 =?utf-8?B?VmtNUWliK291WXgwT1lISTJxanVxZkU1bnlBSElXem95aXoyQmtUc1BVakph?=
 =?utf-8?B?QUN1bzVxSEdJWCs4RlRSU0lqZXZuY2JJVENLeU9uV21PQ1U2dU1qakFvVzlN?=
 =?utf-8?B?OXRhSWllZWxZaXNyZWc4by92TUNFTzAyajhVTlRmdUpaSlQ0Nk1oTG01WFJx?=
 =?utf-8?B?WXZxWlNnQUNMV2NCYzhUU1hrWU9tOTNoZjY5bCtnNXRUemU2WVF0ZWEvSCs0?=
 =?utf-8?B?b3VzWVRvTmZDWDBOMXBybE1PbEM1bnBHKzFYVFFGWVpUTkMxZW1QQ1B5OEV2?=
 =?utf-8?B?WjVydUlJNUVWdW85WkMxTFFLR0hMcG5RWWxoZUpzQXBRMWw4KzNlTFRFSGpH?=
 =?utf-8?B?SjczU1laTFMvUUd4VHE3eHBYaHE4SnhuS1FUN2E5QmRpSG1Sa081Ulc0RlNP?=
 =?utf-8?B?c0s4eEpzY1hkQjVUSTNZdUtPcXBrZ3lyekFVVlFUcGFERXNLNnQ3cnc4b3A4?=
 =?utf-8?B?MFdxdDlkRXkxRjE5Y1ZHd0g2Tm9FVHptVjZlYWI2eXR3eTZhMVNtdDg5ekdM?=
 =?utf-8?B?UFhCS29KRjZnM2dnY2J4aGFkamNXL2IyV1AraGowL3JicEprNjFTTEh4RWo5?=
 =?utf-8?B?ZVZrakpzK0tOL0dtMXY0S3owS1ZWU1YwcDNXWVlPT2cxMFlMS2tJVDJxSnho?=
 =?utf-8?B?WVI4bXZQWExZMWFPam1YSytxNkozeGJpbkJrbXNQSSt3dGZza0JRNVVmcnZJ?=
 =?utf-8?B?bDRmelhjTjFBZHBucXFSYXVlRnBuNEQvanYrS0tSRHFIQkJyUTRGcVhUL2NP?=
 =?utf-8?B?S3QxUUpFcXlMOGpPL1FXZnRYcEIzVlprb0hnNDdQYk9Xc2tDSmM3VXNPREtx?=
 =?utf-8?B?S0F3ZFRyUGpZVUFFV3RwQmZXNi8waGZoUURBUElQUERXLytNR21qWWhmeGo4?=
 =?utf-8?B?UFc4c041aThQdFNtVGd6TkZtTlVHOHMrZWl6elhjUml2L1JpQ2tDOGF2clNm?=
 =?utf-8?B?azNDUkU2eXJxMVRtYXhNQTZDU1JkdGRKajFpcHVxYmVrODFXM1I1ckFhQ01m?=
 =?utf-8?B?VXo4cCtqUTk4NTRvYnZ2VkxneFdnQ2dnaENFdncxOUthZ3V2ckhlQnlqN3pZ?=
 =?utf-8?B?UnRwV2RMWVFQZnZxZUY5L2lxMkdpVVJGSEkzZ1VzbENNamY4NGxyT2hxYUE1?=
 =?utf-8?B?Nng0amdwZlFaVjVLVjlyeHVJVGhyeVFsaWtJT2FXWk1iTUs5QlFYMzBBV3Y1?=
 =?utf-8?B?MjlyVWgraU9MMWZISkoxMUVJOGJrR1MrV2doZmVyUkpEZFFHMkZKMm0za0lP?=
 =?utf-8?B?UjBBWlIwTjhpNjBSc3VKclVRbUl6TTZHeEtPUlRRTmo5UkZPOU1ucURuNW1w?=
 =?utf-8?B?SmhCakQ1QTBXQXpNUlI1VlNhZFc4YTl6YTRSTFhuL2JURlVVeThTYjg4Tlp0?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	wKGOkn50Q9srqpCBvOvNal6U5BUfZ9c+cJdn1WTdlu83ZKR4mcxMyJxn3MblMdUmypPS+iBYY2mwE/f5L1RrdaahOzZSfsQBLrxoYxfMYrKJMpL4Lmz2k9q0HxyGo9ix0LUjz22d2ZvR6kWgoppqUXMr8BfZ+KlbnHIf0eQP1qgBFSgxo3JBvKgkEbf0KeSwkBetpOAmp97xsGzD8eas5fx2UN87RqYqTQnGWh42Irrfnq3UqZWWrTZvYT9qggn2R4guhWFNT0xQBcKxWvPXu8nD6IceJtJ4nCqPORp8gt4hF6va8y82wrvA3l1MVZ73JaU2x53yo7wRTT8eN36gzyeukrLGBdAm4sdpuPJyKqapqCmse0BcPcFtXfhCIq8oaiby0kOghGdc3J9C1gILdRs93UstCjLLQdERVAQP9r7NV/YJszQ/Qw9sH9OZMk/kVIE8+muxAiqSSp6TqKxQXI6hpNSmfF7TufxRULNnFkI4EJEzZRqQNIGHPYIe0b8GiJjm1YO5GY+B0BfJgTfYhZAWsM7xTVH/g0HyKyo5nxCfjad5DMCU1WMzKsm830z4MarQkpafxK4zoWiLB58rQ7GXXR0W2hpubmkVluVTS8Q=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d12d254-0f68-404e-797c-08dca146d5af
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 01:14:38.6150
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WVpj8lvQ8YsBHoaPdR0PEXXzQ+VjnSPc2w8Zk5u63XuI0HwWEoUsUEKyUFDyrPIJ84XflRene+ZvMmqirmVvkVhsbF87rcuKTddR8Z2UHBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5646
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-10_19,2024-07-10_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 phishscore=0
 spamscore=0 mlxscore=0 suspectscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2407110006
X-Proofpoint-GUID: bb-_I6r7cF5gG8ZSBqRxFAfCZlO009QC
X-Proofpoint-ORIG-GUID: bb-_I6r7cF5gG8ZSBqRxFAfCZlO009QC
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

On 7/10/24 08:06, Pete Allor wrote:
> Under CVE rules, Red Hat can only assign a CVE for issues within our scope,
> which for most CNAs means their software.   RH has on occasion, provided a
> CVE for upstream projects which are not covered by another CNA.  That is
> really about a coordination point between multiple parties.

But the scope of Red Hat's CNA explicitly includes all open source projects
included in a Red Hat product:
https://www.cve.org/PartnerInformation/ListofPartners/partner/redhat

and many projects have been told to contact Red Hat to request CVEs over
the years.   I know I've requested and received many CVE's from the
Red Hat CNA for security advisories issued by the X.Org Foundation - far
more than "on occasion".

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

