Received: (qmail 20366 invoked by uid 550); 1 Aug 2024 21:31:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20335 invoked from network); 1 Aug 2024 21:31:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:references:from:to:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=7Zcovy8kBBvbHxVLHpS9vuiyTV4xNItZyC61daotzx8=; b=
	C332E3xIIS+qcgSpi29r4kixyNKS3VTUq+1lDdd0ut2t3ACObL3cEJaipyl/LDqn
	XZCASS0Eym7MO5HcCk/p076B8yl8rYfDrVh7603mxuvxSH+jVRs2eDIBnvivTxr3
	S1bddEF8VJS8T3zGkqYxwv5UIHkjflWPm3qurZYQep34wMumDkE49w3Sf2YTbpYM
	jgnhJ9Xj3d+C7XVkQKUSo8qj0Q+oWdKv8blaPSJ2pPgloFGUgxXZIJ4tu3E8m3Zj
	jf3KXcvaYhbchsNq33OHundqBJ5YCqsobAAPfNh69qfHp5OI8xH26sNLQuANhgOR
	IWojcc2kr2SHhynOEm5kvQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CYfOODpF9TbhW5J38uFuJoDP2ejNgxAHKIjbtVruYrSzTjDDcXKpFDANJlofCAfMddbelIeWa+D2Ud+fLI8+nzxbzi5d/vyOIgId85puz7LxkVPh0RnrF95kM+aOiWkvmH78jMk6UyoxFOAlzQbSPZi/ZVG2c3PFDlneaXcoxTOdYfGT6e4WtAS2RxarjC5aIWuMht0LPw84i84uiB0xH85mz7dUQJp+tnSKsu8QRXxKp83DPYc8zR08lPoYAH4zMrONmKafPSi/F43mydXscTa02akzAbt5qb7MQM+Vl+MVQUO21yB/e7ytZSr4Al/fDSyOV3ZXIcVM1uZl8tE2Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Zcovy8kBBvbHxVLHpS9vuiyTV4xNItZyC61daotzx8=;
 b=ukjsF8vABderc1UHL7Tf6un5ua+wbyXlWjFVveonXTnm+uK4BXJNkmInSya4fMOx3b42BY94OsdHe4a/kl13OmpB6Gg/bKwenKswlEbkVYJRGAgmCjg9jhuVwXIEZQH/yKNbbwaB726K6Uzreu3OZgMwqamdzmY+6FBTAvu0RyGzqVbnDWsa2Nl6xXEn02Op14GDN4wP/9VqwNzCiuZS+/drRFfAZ21/ct90QRc4DTJhWHJrlTFFcOAMl7uOK1nCCVfePJBtsUlz90e5qGpOxnmiacXSpIG8PRoY5B+i7unO2BnwZXMw7NnaZYzzHouExGuXrGII23VbuFmjTeijpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Zcovy8kBBvbHxVLHpS9vuiyTV4xNItZyC61daotzx8=;
 b=Cj7LKvegXGvikrFmJZTZDS4+pEDHHcFDzhUBeXgLihfA0a0/hHG3VbXqts7vuCGJwTvRMqKCGDCHBkB9U5AM8UvEei3Z0kWYsZzMG/x4WjFghXnjZvsPrz1J1AygH1hpGtyzFHg8rJuI7k4LXM3DYkerxkJmIQ/hCPKO7pDEfvY=
Message-ID: <f787c960-d069-43c5-b106-fb72bda132cd@oracle.com>
Date: Thu, 1 Aug 2024 14:28:38 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPRxo1cNtsjvmYjgZgUdkzjQSb6XBekKweDiXvknvs5SUQ@mail.gmail.com>
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
To: oss-security@lists.openwall.com
In-Reply-To: <CAADqWPRxo1cNtsjvmYjgZgUdkzjQSb6XBekKweDiXvknvs5SUQ@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPRxo1cNtsjvmYjgZgUdkzjQSb6XBekKweDiXvknvs5SUQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0140.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::25) To BN0PR10MB4997.namprd10.prod.outlook.com
 (2603:10b6:408:12b::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN0PR10MB4997:EE_|CY5PR10MB6264:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d35dace-ec33-44ba-7a1f-08dcb270e9bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RGNoMXJFbGZEU2JsQ1lPNDRwNjIva045dFpnSVVjSUo3UXF0VGFsZ3N2T2pY?=
 =?utf-8?B?ZWxoYlNtOG9hNXc5S1dXcmRIbkxFZXZkbVU3QzdDMzZTL0lvVEpQVmlyZHBF?=
 =?utf-8?B?MUpSMklFRlZPNHcvYUwrRlNyTGFJOVlINEFpUmRxclYxczQzVVVyNHUzWkpR?=
 =?utf-8?B?VCtXSHcrVHlleXNkQkVsMGNFZ0l5Z05jQmM1M3l1WWZkYXNrdFovQXZLNE9M?=
 =?utf-8?B?NjhrSkcxUWVBWms3L1hLdlB2SGFBS1kvUTliUW1sc0ZFOVZYNmNHMkJFNjly?=
 =?utf-8?B?RHh0eEVhTlVnSnNyZzBnOGpmZ0tPKyt3NUxMWXU4NnlPL2J6ZCtta3VrWHA3?=
 =?utf-8?B?eHJtMTZTRVJYTVlDSVloSDhNUDJuQkNDT3RrSE9rTjhYZ3VwUWxZaE9RUG1q?=
 =?utf-8?B?clJ4Y1pObXREU2E1RWM1YlNZOENzenRXNDFhS3duMFRDWTA0NkVEaXJlOW1I?=
 =?utf-8?B?S0tPUjdSaTR6UVk1S2drV25kaUNVMmtGRVJEV25vdmUreDVFTUp5aG9RQ1Fv?=
 =?utf-8?B?SVNWTURva1FZL2FBak4xUU8wTTB0UWQ0Q2hPRlhYOE8zSXIrLzhtWkFuL2Fj?=
 =?utf-8?B?REEyNXZGVHc1OFVnSGJFWjNuL0h2N1RUY1Zic1VFbm5RWERlY2JTUE0zQkdT?=
 =?utf-8?B?WTRJZFRwZ0k3Y0pISTEvcjhNa1JhNi85TElLYlJ1SUI4M01lVVBJVHZ1dGN1?=
 =?utf-8?B?YWpncFZ2anFjbVlaeUpjN1JNblkwZjhyOVgxSVk3bzgrTWVkZFQzMnRPdGR5?=
 =?utf-8?B?VzBzSGhFTURxRUFzaTRnTnBqdTNDazVWWnpoMTV2Vk45ZjduZmdUS3lWWlZ6?=
 =?utf-8?B?WElHaTEzSFVVdlkvRWVEM3ZmVEJjRlgyc1RCbzZmbUhQcDBkV2xuazZvRHQy?=
 =?utf-8?B?VnJvaS9CWEREYWNRSmtGdTBpYmtrTnFBV2NGWlhFUVhINXlQT0tKem1uUFRi?=
 =?utf-8?B?U3JqNFkvQlJXdnc5a3RqYXV0SVhFRUJ4SzdUMHFUakpQakZLaWg0dUd2MlAz?=
 =?utf-8?B?c3BEUEJpRVZvb2ROKzM4SG5hVEtaZHZkTDBkaExTN1g0dk5VK2tKMkdvTW14?=
 =?utf-8?B?QzB5bEpSbnppcmQ4b1IzYkRCQ2d5VDJNR3VFRDBIZlRnRmc5djRXMGErdFlq?=
 =?utf-8?B?cW84QjlSRjNqMWhaQXNib1dtc0ZWTVR4MStiL2czY2o3UnNFSVZGSWpaL0E4?=
 =?utf-8?B?L25LRkRscFA3WXJJeHd3VFlEbFM3QU1HY1F3UW9Qd3FIdHJ1YlVuWVZ2QTZs?=
 =?utf-8?B?Z0dqTE5qYnVWbTJMeStFcEVRQ1piSS90aTVNWmlYdHkzZ0hBVS9xRExGODdo?=
 =?utf-8?B?U2JBY3hyZHVXNGJWMndWeGdYTVhUYzJnRTBZMUIyNHBxL2UyNHhTRjJKZm9F?=
 =?utf-8?B?NHEzN1dkaGpTSnB6Z0ZCYmtyVk5ONmtoMDhGRWd1RDNUNWtkQUprdEk0cXV0?=
 =?utf-8?B?UzVMTWZhMHhaN0xjMEIxamVLQjU0ZWNXVDdzdjdpYTRBZ0dGcCs1K1ZJUzFm?=
 =?utf-8?B?ZlVmcm5aNWg2R2xObkpBdEY2NFQrN095VHFvVGloeFB4TTRvelRXT2RpMXBT?=
 =?utf-8?B?c3RqbkwvcUNlbVliYlJ3MmVHVkkwd01abGs4eklEYzhHZUtJNWVHTnlBazFh?=
 =?utf-8?B?MHpqMHBwUnY5ZVFQdmx3aUtudUNsOVdUSzZiazhNNmwzSHFIREl6RmlXNGlO?=
 =?utf-8?B?czV0SWpheHBmSlhqMCtDa3J2K2o4emlDS21DenUwZlRrbzVSWFV5cThBcFlP?=
 =?utf-8?Q?GrHRWja5BvWBqUwMi3uEFO8F7lI9IIqJ9TSpGWk?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR10MB4997.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Z2JvUW1UTlA3R3JaY0s3M01jTmxsOGZ5T21GSVVSUk9PTHpiZGNZdmIzeGxT?=
 =?utf-8?B?elZxVk81YWdUT0ZkL0hvMFVSOS9Yd2g1WnVjeEpqRnFLaUl3bWZHZnVmN2Rk?=
 =?utf-8?B?VjIxZU1GQTNHNmZFU0JkVTVJKzZzd280MzdCSXdwUzA4UnM5bjd5QUVwMFBP?=
 =?utf-8?B?RzVVWS9ucWZ0bi85Y0pQSkdEQ0RlaHNyOEpVZ01RS1ZVNWpFSlVVWDk0WU1y?=
 =?utf-8?B?eWp1Z1RyN3VVVmF4cVFjM21RNElGZjdiNlpTU1pzWDlLeHd5S1grUHNNVGJD?=
 =?utf-8?B?OVVldjYrWStvb2JXdXVoSGpLYTJwcjZxZ1lmQXVxcStMTUdiUUczTC95Szlm?=
 =?utf-8?B?SkpwSDYxTkdteEVYUW5zOEJ1aDV0Ky9xQVVlYjYvL3JlWHJnNlVhTGZmK0pS?=
 =?utf-8?B?YkxoYi9kdXRVVWpTQ1dzaEovN255VTJCOTAzbnJyYmZDU25tTlJoYUFBd0RZ?=
 =?utf-8?B?NlJwRmltcFJoRk9WaWcwT0swRjJKTCtQbUUwbUt0SGQyQjRaekpkVmtPWEFJ?=
 =?utf-8?B?Wlc1bnlOLytUc2Zwck1VSmJzbGwvQ3VQNGNULzhTLzVDL0RWaGNoVTArVHdz?=
 =?utf-8?B?RUVsYVYwYlAwbXVqa1ZOTmRXdUMwNmFhQ01xSTJsUGxFNTYrRUMvdEdBQURi?=
 =?utf-8?B?eGE3alpVaE9UU3pKSjlZTVJTZHdqRHFxbXhLL09CV3pFOFhjQXR5UFdZRW4y?=
 =?utf-8?B?NU5OYkNuNHRVSjJjNW5wcFZmZ3g3OW1HZFljQmdwNmlseDNpKzk5LzZkTnFJ?=
 =?utf-8?B?MmZjN0xZcFN3Q2hpc2owRnZ0anlzVFVheW5lZ04zZzBxZlVNNGtZa3YyS3Rv?=
 =?utf-8?B?bnozL3hQRDlEdkoyYjVaQTBJQkRQUk5yVTVXUDIxZEJHQStjK2ZFWTYySlFM?=
 =?utf-8?B?T082Skw5d2pOOUsyMDVGOFMxRUxMV0hseGJWdmh4MTludkdJMXh1bHF4NFBJ?=
 =?utf-8?B?NkoyRzVlWTh6Y3BpWTJ3c0FTS05NT0lKb1hDNkhCcUc5YloxTEpkNmlhK3JX?=
 =?utf-8?B?NngwckNka21jMFdOeURPN2x5VWY2Q2JBNHk2b21lVGRBNlJGTzNpaEllcEJQ?=
 =?utf-8?B?QWtaL2w2S0lycnFqNEZSbm9OUndxU0RJbURDRUZFMzZrWkszZ3BaWWdiV1pi?=
 =?utf-8?B?cEFnZm92M1U4ZE96NmtydVJNOHJHNnRNcm0way9ySHIrWFRtZ005QklOVnpK?=
 =?utf-8?B?eGIyK01TSlkvckJxTDlSdi9RWDh3YjZTWUIwVGFLN2VTSlpQQ01rUjlpUlNx?=
 =?utf-8?B?Q21LUHBsU1lMbnRjeVI0NGY3bXcxNnQ1V1BYelhkTnplR2tzSVlOY3ArRmFu?=
 =?utf-8?B?RHc4TSt4UU0xdUtYbTlDRzJYZVFPalNzdGZvei9hdGpaeFdMb1NOaU11R05X?=
 =?utf-8?B?amJDYlp5ZEZVTk5IQ0piVEpxczlrblZIV1E2NlJYM1duU2RyVW81RkhaL1BZ?=
 =?utf-8?B?L0pEMTh6R0V2TzB0VDV0czVQMjZFOU54NkliejJ4b3UxcjNaRUw5OUZRRGZ2?=
 =?utf-8?B?QUNaWkRpd2ZVYUxQeWVsd2JHdTcrWWhPeXhwRkxTVVo0RlN2eHRuQm4zWUdN?=
 =?utf-8?B?cUc3NXVkVWlhc285TkEvZGJlUmRTK1pQZzBVbkxsbUY4eU5YSHRyK1ppTGVh?=
 =?utf-8?B?UFMwUUlkUncyZ0dyVTdIQmdLZkE0UHNFZEJWZTIxZU9KaXFrbW1mOGUzMDdr?=
 =?utf-8?B?Wndta2NDdlNmZHF4czFLVXZ0enJ1OVdlSTNhYXQwYmJvVEo2eVNJbVQxWUd1?=
 =?utf-8?B?ZUZiVktMOGhod2UzTk90ckQrNmpGU29QeS9SWVVKdkhCTTMwWlJLSE5WSXFn?=
 =?utf-8?B?SkhDZHlVNWxscit3MTgrL3k0VU5hTTFTZ1M1QWl4V04xb1MyNU1NdU5KK29T?=
 =?utf-8?B?dTNIb09vRU5COGZOZnFwMTlwRHBRMmQvZ1J2UGhwQ0RnVkhUQnBoU0FseGFZ?=
 =?utf-8?B?bVpZeGhsSERGUnNwZGV6T0Y2dXE0enhvTndSSUxiNkxoWFowdzZTQStZdE9V?=
 =?utf-8?B?UjlFNTg1N1dKOE1Jb3RvbjNQaXV3ckdEVWFKdlVES3orNDh3ZlgwQXcyYjJx?=
 =?utf-8?B?djFZQTBkSWhvRmcyVjJJR3ZVS2JnbDh5RWhYakVjR0FQNHZ4RUdwY0VrNWxL?=
 =?utf-8?B?K3dZb0o1b0ZqdHFPNEpSeEc1Tk8rV0NzeDVLb0JINWQ1c0htY0FJNmNqcFp5?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	QN2CxwGErXhZ9fIgFZIyTO3Kk/nkMxNAxt8Zvj47CmD7+dZYvDS4JFRCs8m9C4Db2xjSOHbQy8eJJOi/u+QJ/zu3GWGbPGympjFtM597AGD+m6tZV7gF3zmwCDKVhoaUvUY1AMLmCtBHMhV+cHqdFibJgAiFkKWzpkHqXh96OXwbtwlvn5RCBH7tXGBDp8SQr0fdEHKMskKaFoxNvBQqSiSnYzeYpU8NGxT8rXohYqMuPdXzulHhC6Qe8Uu4tRkU5nhuZMZ6XyDJIAVDZvBJJza0as39SiQ+3njZ2hUuC6ysufQAa23/CsUkX5+gv20VV4LIcTu/aN5wr1Fw84pmjXwF9WdadIEO5N8RGCB+11HhOOEPRf78KhTJM9TYz1joY8QJmcN1uGzFwXLSYzQ62M5aMfK/NZCmRnRdOKjMWarJM9GmDXk/Kam5GfmZKdN5RgqJD+WO2HqVFjC1aaZdAKxAuCr00rAQFfxXq90FtfRBOf9DxOKAP/qXvn8xeYYT4dM04QA+89m4M/+5s5PtsxwzQvK6XuKQ+YWbm3Q5U7K+oacUf8u7abKUut/V89ASu9CijQxck5I2ovoGEuzx2CdO7yfq4YXNyJonxqIKGR4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d35dace-ec33-44ba-7a1f-08dcb270e9bd
X-MS-Exchange-CrossTenant-AuthSource: BN0PR10MB4997.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 21:28:40.8698
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CnJAwmP5dAwQgcXI/xaNIVJCDiMhfkXGGzdalUPmJMAiW6xmc6hYB474eYR3gjXo71NKT/7aI7E83GG+xSNbLHB8X1Dhx5MqweK9vS/aVTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6264
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-01_19,2024-08-01_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2408010143
X-Proofpoint-ORIG-GUID: CdT49p2swl3BtveTUOShLPJaOs0zhQPa
X-Proofpoint-GUID: CdT49p2swl3BtveTUOShLPJaOs0zhQPa
Subject: [oss-security] CPython CVE-2024-6923: Email header injection due to unquoted
 newlines

----- Begin Forwarded Message -----
Subject: 	[Security-announce][CVE-2024-6923] Email header injection due to unquoted newlines
Date: 	Thu, 1 Aug 2024 08:38:53 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org

There is a MEDIUM severity vulnerability affecting CPython.

The email module didn’t properly quote newlines for email headers when serializing an email message allowing for header injection when an email is serialized.

Please see the linked CVE for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2024-6923
* https://github.com/python/cpython/pull/122233
* https://github.com/python/cpython/issues/121650

------ End Forwarded Message ------

The original bug report stated:

> If a parsed email header contains a correctly quoted newline, setting an
> email header to that value will include a newline.
> 
> from email import message_from_string
> from email.policy import default
> 
> email_in = """\
> To: incoming+tag@me.example.com
> From: External Sender <sender@them.example.com>
> Subject: Here's an =?UTF-8?Q?embedded_newline=0A?=
> Content-Type: text/html; charset=UTF-8
> Content-Transfer-Encoding: quoted-printable
> MIME-Version: 1.0
> 
> <html>
> <head><title>An embeded newline</title></head>
> <body>
>   <p>I sent you an embedded newline in the subject. How do you like that?!</p>
> </body>
> </html>
> """
> 
> msg = message_from_string(email_in, policy=default)
> msg = message_from_string(email_in, policy=default)
> for header, value in msg.items():
>     del msg[header]
>     msg[header] = value
> email_out = str(msg)
> print(email_out)
> 
> Output is:
> 
> To: incoming+tag@me.example.com
> From: External Sender <sender@them.example.com>
> Subject: Here's an embedded newline
> 
> Content-Type: text/html; charset="UTF-8"
> Content-Transfer-Encoding: quoted-printable
> MIME-Version: 1.0
> 
> <html>
> <head><title>An embeded newline</title></head>
> <body>
>   <p>I sent you an embedded newline in the subject. How do you like that?!</p>
> </body>
> </html>
> 
> An email parser will interpret the newline as the start of the message.
> In this case, the Content-Type and other MIME headers will not be
> processed, and the email treated as plain text. In other cases,
> required headers like To may not be processed and the email will not
> be delivered.

A later update noted:

> On further investigation, a plain string with a trailing newline has this issue:
> 
> email["Subject"] = "string with newlines\n"
> 
> So the "re-use parsed header" is not part of the issue. 


