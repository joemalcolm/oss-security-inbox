Received: (qmail 30505 invoked by uid 550); 12 Apr 2025 15:59:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30472 invoked from network); 12 Apr 2025 15:59:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=66e2IcF8VeYZRoU6
	NRs/ijqu8wXvyNpJzagu8F7U47Y=; b=kLv73MdN6uA9g+PaPS8M8ZQMMVAZ6dAD
	VXld5NwwV8jCou7qg8OH47cbsGBp1zsOfysyuJ4O1OBaZms+00lEvKwMEjjs8EWe
	wkzu1uR8DdJSrZDsBaEByqexRAsHdf49aECzoJjz6RLK2RA6K2PsisaTjDzJ45z8
	rU365XEUYPrKiSto85PsjmibrRjRSFapD4hVE9N2fiPJF6BLnQGpe61Pa2H161jU
	CZceOSnHboJOiv1SXJlL+kpVjZ3mD96QwxFXAPXisph+N5htQYndM40YYu117NeV
	O3Zgq3H0pXZG2IKPn0EVsAnpRYD+0Vmigur+IjQm26OZ9z6QnvNcvA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ejo5OTUf6vNeIKEB5UGyR6flQAh5eScVJ61MyatmO2+q2flkZJ7nJgwZjmeDi7Cif2qabMeQRyQeYq29h1DOIUgOVL4hVjapBDLiZPBF7acKW41TghnpiJ316HdTSPZZ6JIuAocyq6KTPP6fWWtrrWC1rsCUDeQBpdOtaqfhkq7w8vjZjvqJ9j+eCic0Wr3l4ZaDJwTnrIekc93GrvFvGZIL2EkdgdukEPz80Oz78wUZCARMBWqMkqolLOWY/fy8l5aGANM6VQCrPOB4Iau6xFDY/irpk+KD28ld/17nJqI+hI8RmTAsAJ+mLboc6bnMi/GEoE2F2jvRHONFqDYdXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=66e2IcF8VeYZRoU6NRs/ijqu8wXvyNpJzagu8F7U47Y=;
 b=VBfFQHf6UfHIvy/GuEvAyNu2x2SfUWcO6+jyxxLGLkJBNnv8+qTLH57jW0Bpplm9rRwnMW5g/fyRMPzT6Kgwq3rogQ3wsHSM1Z8x1iyR1ictjbWdzEoXBGPaXQ5loO6NvMUKjuDK30pd6mD4Q6Co3EDngL1NimJuyy/3eWVunk1bRpRc6reWmtzGaZ+Eqh7nl1udPnthnu2a6MyUIFNFJU0EJcCCjrVwqY8lGVybRfUh97o9xTmZ/TzkDJYOg0DE35BMfZ+D6PdyiHEjdlijaZdnLE3SGJsDMIzwEAsJFDliPXRD4sotJpUC0DUOZ/Dj4tSSQHXQJLfM5+MCNQRj9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=66e2IcF8VeYZRoU6NRs/ijqu8wXvyNpJzagu8F7U47Y=;
 b=k/R5Sp3jqqTt6uKohMOya6aN14S4vTfrOlIT7CN4lxj3zj+YyCxlW8YgFyZsibj2JFSoDzdCpZgRN/O9s9hx62RUqtz9kUNbXlbRjdoZswaPfzVW0oWvm1jxVdPNECSJn4r5xagYECXmjwzR8SkhSvZGGDcLE7OxlfUU9bOUEt8=
Message-ID: <2add2962-34f5-4b4c-abfe-f780501c3a4e@oracle.com>
Date: Sat, 12 Apr 2025 08:58:59 -0700
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
X-ClientProxiedBy: SJ0PR03CA0165.namprd03.prod.outlook.com
 (2603:10b6:a03:338::20) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|MW4PR10MB5726:EE_
X-MS-Office365-Filtering-Correlation-Id: c0533b39-598c-48a7-e4a6-08dd79daf0c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cDJuajZmSnNQNW9xOThEVnZKTzVkMjlqd3c4MW5SbGIrUThBWGhENmR1TGZt?=
 =?utf-8?B?N2g2a0JnRVlnaTFUSjRDSWZwZWJPcVlDei9sL1RiSzdtVzk2bkdUUCtqTFo2?=
 =?utf-8?B?cVE2TWc4OURqNkdkMjVnclBBMlhYcnp1U256TEhJRnZoOVNncFFEaGRISDQ2?=
 =?utf-8?B?MnNVdWFzWk5YSjM5dEFXSXNEWjdrWEN4ejRJdzdQdHVaeXpYQVlGK1RjVkJj?=
 =?utf-8?B?ZEFPc0tLRnAwV0pnb0REOFNGU00wMjhEUjFCd0M3eUNhWU9kWnNDYTdYN3FD?=
 =?utf-8?B?OTNubUJ1WkRWU2N3eHkzMEJLcWpGK1JtUEt0bU52a0U0N1g5eEdWMGRRUEt0?=
 =?utf-8?B?VlI3YjZxVXlac0s4L2htSWdGanJoaWRxbU5JNHFSM0thTDJRUE5PRk5jN3lJ?=
 =?utf-8?B?Qm5LblZsejZMa0trUDU0cGlQR2owU0RadW9qK1AweUl3TVR6UnlXbUYxODB1?=
 =?utf-8?B?SW1GTjZ1bkVRQVBVb01CRTlKT256d0R3a09UUUVWaW9SVTlHOW1pK1NHbE1F?=
 =?utf-8?B?TE9JYW00Rm5yL2ZOenZtVzRKYUNxbDc1RzR1Zm5IdDVOdkp6cDlvcmQrVElO?=
 =?utf-8?B?cEl6YnpxKzM4RDJjd0VSRUtkSE02TmNKamwydDFzOStoaStUOW9EbEJRcWpx?=
 =?utf-8?B?YitFS1FMa3RVNjVtNmpuV1lMakEyR3BiWTk4TjdJSis1ejQ4UWFpeW5SSjVz?=
 =?utf-8?B?S0RHWjg2OVhpLzBpdllVbmpmU3lzcE1tSWwyRkRYenRzRXdHaGJXV014Uk1B?=
 =?utf-8?B?Ty91WVdJNG10Q3U3U2pXYmREdUFmcDNPUnhFVUwyRzZ2Z05ISm83YkI2WjJu?=
 =?utf-8?B?Q0xDU2pLdHpFa2tlb3YwSEtvS0xMbUNEc2EvM0RFQzMxblAybWwvNmtuTnNK?=
 =?utf-8?B?ZU9sOTYwaFAyb0xOSlpYODArNGE5eVp1cTM2b3o0Uy83V0FER0pJTWNwS2xD?=
 =?utf-8?B?VGdvTmxJY2tpMU9ZZmlQdGQ4UzJwLy9uYTRuNE5nVnorUWpxQXpSdFphQlBI?=
 =?utf-8?B?NGVWY3RrczdXdWhicDVtc2JHRDlHZHdVRVFKV0VwdWN3UE5XQlVBeUVWc2lW?=
 =?utf-8?B?QldXZ2Y1WHQwT25xNzJFdTRxbkVmMDFzTWNpdktVRmdFWVBLcXJvMndXQ0JC?=
 =?utf-8?B?dEY3M3RxYjRXYnp1SFEwanNnTWNFRjdTRTZ2bWE3d3g4NS9uc1RmWW56Yk1i?=
 =?utf-8?B?OXBBaWVVNzhNUUN6bjErNjdoM2ExSmJVQTNGWWdvSTQ1NlBERUNtbE5PbU1u?=
 =?utf-8?B?dTZuaXlWY0c3SEtBcmxsbDUrMk1aSjBUQWVJSGN1SVo5dGJ1WWwxMi9jL1Ux?=
 =?utf-8?B?TVVzZGJjK2Rid2tuMDFMdStIK1VOU1N3REhjOFFBVktiZWNBclZxSVVNMmdD?=
 =?utf-8?B?M1NKVWJ2R0s2TUNRR2N6ZHJWVm5mUzJtaFVKeExYbzVWYStjNnd2TFlScFNw?=
 =?utf-8?B?T3RaUXRoRzNMWW1RRFVhYWpTaFdsUXNvL3ArK0RoYW15Ty80SElFSnJVVFV4?=
 =?utf-8?B?RVY1bm15M0IrR3RqcnpMUCt1ZlhkV1luQ1ViVHFXWVBTOGlTQjlWQkdpVGFl?=
 =?utf-8?B?NlFrVzJTUXBQOGo2R1Vpem9jOU5YemRVNVRiUjIzR09BbjdQUGJrV3VzbmM1?=
 =?utf-8?B?MUVteDhUQzRseGRsbmlBNkorQk9malB3U2VjNE1Va29yN2VCTWRYNDZyOVFC?=
 =?utf-8?B?WW10MFFJMWlLeGNJa1RGbnYrVEJSQjg3MDZ1aVBpa3VqL2k4MEFFZlJnTTZH?=
 =?utf-8?B?Wkp0eGY1UDNyc0lSTHlrdUpOZFRHR0d6TnJyRjVZWE1WNTNJRGsvTGRsUllz?=
 =?utf-8?B?clpPWHNiYTFaZ0dBZXZUTHdubGRCSjUrQWN6V0QyVjVHY2RVc3IxcDVOaktX?=
 =?utf-8?Q?P9S6kbIP530aC?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZUhudk9OQ0pNTEZpQnpBOEJBVGhVYUp2WExOQkI1dmJETDUrVk1iblNBeTN4?=
 =?utf-8?B?QnFUSzdTOG1xKzRnNjYrRGdHM1ozZGxuZHM4aGh0YlFZRmVlbjdLMEVmUkg5?=
 =?utf-8?B?Nkt2VzNScjZBWVFXTHVzU0xRRVZCTENXU0NBQ1NqV2RsUC9tYzZwRllQNzlN?=
 =?utf-8?B?QkRQUFBaazYvaWRDamVHY05nbkF1N3UwZWtLUlBsRTJkQ3VNWkxnWXE5VlNh?=
 =?utf-8?B?dG91cWdLUEJjdW0vWkdvMDZGY1FiMSswS2dYbHBpQ2hvNmQvS2R3WlVkSDNI?=
 =?utf-8?B?Yks2eHlRUEdaNWpaUFlLVjFFbU1JQ05PUlVIeEs2ZGZSTWptZDIvT0Q0bE04?=
 =?utf-8?B?bUNLV29CTXFxR3NEQ01mSEtUTkhhR0tZR3dYRVljWXQ1L0N3M3V6QzNveDZL?=
 =?utf-8?B?OEw5OTJna3IzTE1PRFROdlBYcWJEUzM3aHhiNlhHSFVYajFHRmFxT3hhY3l2?=
 =?utf-8?B?NDlFczFRV24vdEx4d0xHTE9DSUZZYm82T2owSm1vOEI4OFlLWnFOdzV4Y094?=
 =?utf-8?B?bFgyREowd1l3bmtJcWV2WHhrM0tZclhCcjQvVkNidHltNE9HYVVuRnZ1TGZD?=
 =?utf-8?B?RFlJWVJ4M0M5WFAwUTNPTnhVZ3BBRC9KeXI2MlNqK05tbmhGdDQzWmdlMUZo?=
 =?utf-8?B?UWxRa254RnM2ZkJuTTRhWFJPK3pXNXIyWEtmampXcml0bjNBZTYvTWdWNmNk?=
 =?utf-8?B?cGNUY2RaNnJWSXJNZldLZ1FTWTlFUGl1WFN1YjVXSnF1SS9UcVZyWEFDTWRX?=
 =?utf-8?B?WnJJb09nbEtNa2ZGK1hWM3R5VjlVZC9EaWJua0hleGR1ekNOOHVyZ21UeWpo?=
 =?utf-8?B?d2NYY3FsbDAwYUNXTnRlVVBIalhUSFdkWTdENXY4WWo0cVkyQ25hYTlFaWc5?=
 =?utf-8?B?dlI0NlZZaXVHR0dzaVNLZzh6NUhzZUJZUERXTWxqSTNMaGlmODZJcnFWVyt4?=
 =?utf-8?B?dU1ZOWEvTExDRFh2RkVTYUU4eldFOTRIME5aL1B1VGd1aFJGZDNQU1FDaUk5?=
 =?utf-8?B?dTBWbklQaHZlTjliZkJqWDJaMUVKQU9ONmoxWEM2RXlXU1N6MnBCLzdIMUwz?=
 =?utf-8?B?K0Exc1FqaXJiK0F0bjJWc0FSUkZjSlQ5V0drMHhsMzVjMDlMc3hIOE9vZWpz?=
 =?utf-8?B?MHBrTGtzWVV6TEZHZEdzL2djYzA2ZkFMNlZEM29HVDBQNXRxQ1VabHdRK1Jk?=
 =?utf-8?B?V1hndjg2WDVSNi8vNWdkU2dXZ0p4M2tRcW9ka3RHSFlzWlBraDdkclRSemxV?=
 =?utf-8?B?U1oyOThrT01zSnZFQ1IyZWthWWhUR0JkZXNxT05FT3FBelVtbFJVeVVSdnp6?=
 =?utf-8?B?dVN4ZlRMVmIwQUc1THJDb3JERnFKQ3Y5SVZ4bHRzN0NEMVpVTFIwUVpPNStX?=
 =?utf-8?B?WkRQTjFZZUptSVdPazZpcjNWZzlsZ0RlZExLbmNBbUMwYVN3YVhnWFU2eVhi?=
 =?utf-8?B?NmlQcEx2K2ZFamVVaW5xRTVNdVYzeEpLMERNWVNyQmJuS2EvdEJVZVM5Nmlw?=
 =?utf-8?B?dlVoTGx2dWs1ZEZyNHgvU1J5cGFnYzBweUlwLzY2ZDI1Uk1neUUwMGg4YW0w?=
 =?utf-8?B?ZDFPdTVLbmprTXAzMjFieW55akJDakdmUlEzbXRzVlJpQ2hIeTZQek0vTzBt?=
 =?utf-8?B?S0xRM0FyNWVyeGdob0Y3RSttUEN2cmM0QXo4UG1NK3c5eGFMaXN3UVl4SXN1?=
 =?utf-8?B?c3lTSjhWK2t2eXpPU24xNUxYSnlzNVN0dm93dG1wcUdRdDg0NHRiQWFNdFUv?=
 =?utf-8?B?TWh5dGhJNlhoTnl4ak9aOXpOdlFVSkpvQ1VnMFNVZS9PQy9GSENPSi9aNHoz?=
 =?utf-8?B?dFp6Y1J3c1BZcis1ajdiVSs2ZkJCQzZoeDJ2SG93UFBlbGRWSjVRdFlRYU9G?=
 =?utf-8?B?dVBzVmNpaS9uNzU3M052UEhHOElJQUxaZWtrY3VCdGZhUkhudm5WeXowVWhE?=
 =?utf-8?B?cnJtcEt5Ry9PNVRoOE9BNjlLRnhFOFRUK1QrNkgvZUVOZlE2d3JJTW9mUDIv?=
 =?utf-8?B?ekdaWHVpOHgzUi9jWVp5SVdkQW81RGE2d3ZYdmptY05yMkhlV3ZPcEFTM0Jh?=
 =?utf-8?B?NWt2Rm5SVG1Jd0hXSmd1dDk0cmJFMWRNbE9FKzJYL2ZXRnFXU3doRW1WbjA5?=
 =?utf-8?B?Sng4Vkc5R21HWks4RnRKQUJYK2cxLzdNLzFsak9rWGtWcjVtRUcycUpxUlNa?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	3iqEM+K20dWLFg9DkJ/Ak9qwBsyl4rdQvkSMbcXVL/uSSAZXeYGU0oh45lb0/TIsGw7M/TeXOSyiwzq4Wrh4vbw2E44tzo7SvhR58PqQ0EaV6qM2BpdA5ousjSqx0yQe+1TP5CkA63vQ2NUebvscZwdXqXw+JWaEyGWR6WlPM6L6NrsjdsR/LodEcQPMfadaj954VZJB7/IU03FLcVwfabTpFs75Xfsu8dpEtC4EFuj9M/0Z/JD5a9ojQg1kWhsjdbYbIyBKEItPiGQbsAkNe9EsQuAHwlTw2Go9Ub/xHNnbo0vbTuUncMS+W9kBy/L39/9SAhovWbce3AZJ3mfEic3hgzmZiy/c9nk9QjDkczbHjtMFR6SeurKCMcHCM5sx95HcjkjZfdyE0XWTHVPJ5RH2L2ue2/5DjBwNhditfB62cnF5ZSu3uNm0eSsseIKZM8zIFs/SP0e1NN6e+P0vu+cTRuIEfvgcEFRiYoSzKlaYtlBxMQbZV2Nfu29U2kd0Xk/bLBZs+aGGkcniQECnqzanPQcgcAKuWu9z3zmaIDa0xJjK0jaTJr2Mj35U8P534zxuK5SkCNJn1bZAlyHCJmB8XLJN8UptDgLnDlkQAz0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0533b39-598c-48a7-e4a6-08dd79daf0c8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2025 15:59:00.9279
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UTrn1Jyfkl8dTYsK/c6hFSiYLyLvpxbWJ648mMCfGdcPBb0Cad5fn7FuF9OMKJUjR7G7cAJTv0H+KrQpV2FSPaeOCBjVezuuAVO019d8YcQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5726
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-12_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2504120122
X-Proofpoint-GUID: ANjKqxM7M3bIh6IuJvEZ8qcpgfJvZnjS
X-Proofpoint-ORIG-GUID: ANjKqxM7M3bIh6IuJvEZ8qcpgfJvZnjS
Subject: [oss-security] Security audit of PHP

https://blog.quarkslab.com/security-audit-of-php-src.html announces the
completion of a security audit of PHP by Quarkslab, thanks to funding
provided by Sovereign Tech Fund to The Open Source Technology Improvement Fund.

The blog provides details and a link to the audit report for more.
The summary it provides of the findings is:

>     2 security issues considered as high severity;
>     6 security issues considered as medium severity;
>     9 security issues considered as low severity;
>     10 issues considered informative.
> 
> Most vulnerabilities have been shared via security advisories on the PHP-SRC
> GitHub repository. Other bugs and issues are provided only in this report.
> 
> Four CVEs were issued, namely:
> 
>     CVE-2024-9026 for LOW-2;
>     CVE-2024-8925 for LOW-4;
>     CVE-2024-8928 for HIGH-1;
>     CVE-2024-8929 for HIGH-2.

These correspond to the following security advisories from the PHP github repo:

CVE-2024-9026: [PHP-FPM] Logs from childrens may be altered
https://github.com/php/php-src/security/advisories/GHSA-865w-9rf3-2wh5
Published Sep 27, 2024
Fixed in 8.1.30, 8.2.24, & 8.3.12

CVE-2024-8925: Erroneous parsing of multipart form data
https://github.com/php/php-src/security/advisories/GHSA-9pqp-7h25-4f32
Published Sep 27, 2024
Fixed in 8.1.30, 8.2.24, & 8.3.12

CVE-2024-8929: [Mysqlnd] Leak partial content of the heap through heap buffer over-read
https://github.com/php/php-src/security/advisories/GHSA-h35g-vwh6-m678
Published Nov 21, 2024
Fixed in 8.1.31, 8.2.26, & 8.3.14

CVE-2024-8928 is still marked reserved & not yet published, the report lists it
as "Details to be shared after fixes are applied".

The Quarkslab blog also points to corresponding blogs from the PHP Foundation
and the Open Source Technology Improvement Fund at:
https://thephp.foundation/blog/2025/04/10/php-core-security-audit-results/
https://ostif.org/php-audit-complete/

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

