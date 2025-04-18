Received: (qmail 2028 invoked by uid 550); 18 Apr 2025 19:40:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 2007 invoked from network); 18 Apr 2025 19:40:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=V9QCT835Er16IeFv
	FWmL18D0FhyDXKj8qUZKl89usUY=; b=R9EwQD0cQPSZ0/fQrSHMcihxsBIGktlm
	+/Iy4frx33jRib4H2YuUvFpcpRNYkSNU6pog0ZmwxkB793jJbsRQjErSjHua4p+w
	2XWZxuLBnGe+AprlLuUrmfhXwfFrOkb/KVlDAMtoz00l18DoZiDROmegqFkvWQ73
	+6kqwez7LZ8kgD2rzCicj68tutjcPOwdc/2OeJ3KrW4gWU1qiP1VLl93+nyKw0s1
	QdSPG1UOqCHRBNlY45HQ85Hb27UOVtqhMa91SYH5fixjWbPYZZL7G2LO2IG2Y++P
	hcLdhZl9rPf5n7FOA76kRMbdDfSgX1YzYQvOhGLtFKC4l+rHnpEWWQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e14Ps8JAhxCa6unsaOGXR5Wetp59vpXXvvQLeb2py+9Cxe41mpKZXgD/ot4J/6ud1mq/4A+tACdVqZCBZJQYg1ELWrRl7RUNYW6pvSbSk+AL3AveftcjKE5EdEVWWbbZBETRMIkmsEHgRYqNEpbjckvpAQ4S0KEesBZxlW6/vOCLMtV+fyLdv54Hmhv4wJeUL3XY60y8W6lA5soypRHsWaVtzgqWm4ZKHlSJzRIPm8bGsNjhFOTrKsqiLdGrnXUXG2HrpQAFUQO3pyr4mQShtmEb1mnL9Dfw2XqZLnfZyh5tSezdfMl/Eb4LntkqRGNTL6HvKJcjlDMbkO/1I/3lcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9QCT835Er16IeFvFWmL18D0FhyDXKj8qUZKl89usUY=;
 b=AC98S8OSyoxWKeFab7oOPNRDzhzRa3fHB73IDtyu294UGRSURCVWD2ianQHJVudSow0muxJfdlPJVpujYmNxm9u41Io2oTYDYxzdYSKVbwba3+BnhBehNP3jNbydsdqC/39Pkzb0xcUZbBXw2IvtE37T0Y3D0k/67zifhgosKlZIlyOVRpqAPgH/61m5lzAC12H6hTs+2O0IMTcmLpFZEIHsZzcvP4/AWCIo+w01ibu4d/gXmZf1rl1lrRVGpvEXaX6LFuXKUnwd/G0fWe8IxMf4uBhdqQziSG+GWQjyyQLlcbvHCLiM1n26yMqLWOBYr62Mf+UeDU3M2XLtbZEzpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9QCT835Er16IeFvFWmL18D0FhyDXKj8qUZKl89usUY=;
 b=D8avrhffUrpTfJtU99B5n0JTBvhPgSfyVerx4V47qxItMJ6h2BunjyA76Zkavk6eHGKSyBoPgJOZN9DlsnHXsZcEKkosIJa3ifXDurSe7I9OcPmZ1ECCojmjsvtbrNPBuAjjYXwdcF3P0aLu7qmSiROkiRRt1IkNs5Bam33c2u0=
Message-ID: <0b5c9344-8f56-4ba6-bdca-86ce0f40cc0a@oracle.com>
Date: Fri, 18 Apr 2025 12:39:55 -0700
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
X-ClientProxiedBy: BYAPR01CA0046.prod.exchangelabs.com (2603:10b6:a03:94::23)
 To DS7PR10MB5005.namprd10.prod.outlook.com (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|MN2PR10MB4192:EE_
X-MS-Office365-Filtering-Correlation-Id: be2c4eaf-6097-4e13-165a-08dd7eb0cc86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bGZKTS9EblVhajViSTVxMTYvVWMrZ3pJNmIwZzhWNzdoL3N2Vys1enZWRUZr?=
 =?utf-8?B?NHNlOU4rYzhzWWFnK0JkWndOSEU1b05oM0toYVpVaUUrMi9lOEVSUkkrakhu?=
 =?utf-8?B?UzdvOUJYYW1Kc2lyc0F6VXl1YjFuQ3R5VmlST1pQWTNJVFNHUVdpY1JUa0Jq?=
 =?utf-8?B?aVpSU1pZdExSZkNYUEtkODUyMndxQW9wckJhbHlWMWpKYWd3dFliLzJIVnNp?=
 =?utf-8?B?Ym5IZ2FsRWpOY3dFWFZyNmNqYmZrY01mLzlKYkJDNGJmVEw5VnFsZ2Y0Vng2?=
 =?utf-8?B?VTdLRloyS293K0pUUWVjR1dOdlFuSlVHY2RpVForL2Q3RTlveTN0aE9RM1Bo?=
 =?utf-8?B?YVpSR3JubWFKY2J1cjhhQ0pOVzB6VENYNzV3cDVib2ZadnZURTFSVW80ZFo2?=
 =?utf-8?B?QXlCMExudjg3Y2dCWW12WnZ2Mi9MR3BCVjRGcjJ1OFR5dW4rMzFPbm8rNHpW?=
 =?utf-8?B?QlpnajI1RmpNUUVuUlgrcGUwMnAzRExQUXdKa1p2RVFRcDAvMzM2cnNJWkt5?=
 =?utf-8?B?aUtmcjJKbE03K29sem1jSWkzdHQrK0FvTTI5OHZ4K3lWVXlLL2dJYjYvQ2Jz?=
 =?utf-8?B?YnRNbThwTmo0TW4rcnVoZjZiKzd6MFRHbkVDTXpMckxtcEUwY0NIa1ZYdVF6?=
 =?utf-8?B?TTdtRUlXaVV0Ukk0a1VRYkxQQ1pDb3h6dVpQTnVhZWFBU29Vc2FPLy9jMDRP?=
 =?utf-8?B?SGxkVmdlSnV2UFROdE1leENBZEdjOTFncWp2eGxXT3JJeTAvZXFEZHNDempT?=
 =?utf-8?B?SXRjZUtWaWVCY2E2dEZoSm9rRVR0cGhYM1E2ZklOaDNNaE53UnpBdWR4VDF3?=
 =?utf-8?B?cE1qbEtZUGRDSUZ1cXhRdlhaNlZCUHFOMDM1aFcwSStuOVJPb3RSWVNCeHJv?=
 =?utf-8?B?VU15RzVzQldOZHRQdWlXVW0zcktiYjM0dCtnbC9zZXJXbEhWSGs0WDNadWQ3?=
 =?utf-8?B?a3VWaU9HOWRsdHNZSnRFNjdmdTBMOHltOGEyVnJnelo4aSs2T2ZHaHZyaVpl?=
 =?utf-8?B?Y2VGUWovV1UzQ1JJMlkzcWMxbGRhczQxUGFDUGdPZXpEd1hPeWJVeUh4R3hQ?=
 =?utf-8?B?eWthdUo4SmJkVE9FcmRHQ3NIbzNRaDFSNWFXaEtGcDU3eS9MNkp0TWw4Vlov?=
 =?utf-8?B?aVRpT0Q5emRPaVlzNWJ0SDNLMjdCYldwV0ZuQmRURjVZTTRaVk1YbEdGZERo?=
 =?utf-8?B?bUcrMlJWZk8yOWExSUc4QzNGem1FTTVWNkM1dmhjb1lnYk15TkpSbVZvZzJQ?=
 =?utf-8?B?VkV0amViNjh3N21mRUx6anFXQ2RmSTN5TG1HS21MVmNobWQ2Q2NsdFFuRFBK?=
 =?utf-8?B?cFIxV2h0cjNVZlN3dCtxVi9VbnUwUUgveThacUlJK2YwdW8xbnFtMi9wNDdq?=
 =?utf-8?B?aWFlcW9DcUdXRjJCTW5oTmxHOVVEdk4vUGE1TU4rRDRxNlN6bVIyVVZ6RGZs?=
 =?utf-8?B?RDNOUXhwNE0vSzdpSTBLSkhJVFFXWjlQalBrdTFkTlpTRW0vajRUMml6OXNk?=
 =?utf-8?B?SDNoNzNacDBneUwrRExLeVorNnBQa2ZqZ25QTkpSeVhsU1BHVjN4Uk5FblpB?=
 =?utf-8?B?cnJBS0E5RVdFSHVHdUpnMmVRMDNBbVhUOVA5czRPS2NDMld5STM3RHVjbkdD?=
 =?utf-8?B?bzFkRkxmK0tkVW5JTVUwTzRTQ3YwL1hIK1hWUmdqdU1pOHF6eFlWcUNPeHh3?=
 =?utf-8?B?SjBwS3Q0TmUrM1lrbDNiREZ0d0dZNkVHV2NNMFM2MkorSnFYazNWRDRFMG54?=
 =?utf-8?B?QjhyZ0J2NkY5UFRTalJnZUk5bXBLWDdUaXBtaDNEMWkvdVpvWGNaNlRFTG9o?=
 =?utf-8?B?bU8zMGN3dFc2a3o2bTVERFREY0ZQK2ZjOWhKQkhOV0xmQUNKNzdmS1MrM3Bq?=
 =?utf-8?B?MFZSOThyajFFdTdUWTZRdU5SNDdTaDVqTi92ZzZTK2gxZ2UxcnFCWWhoMVFP?=
 =?utf-8?Q?FjdzAs2XTxI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QzBYV1VTditvZ2pKL1dDSzl4RE5MSkR5b05jMlRjQnFjYktXdjNuK2FWY1lB?=
 =?utf-8?B?MGM3TFdSQkkvVVpGTElQWkJlcEVrY2JVTDdyRTFVZll6cy8xZzRpQUdvY2JT?=
 =?utf-8?B?c2ZVV2lmTHpXQTNCMytudlg5UGxqbVdVbm1Qa2p0VG9aZkhQVEQzUkdlbEQ3?=
 =?utf-8?B?U280WUgzNUNmZ1FYQUxmQWprNWhNUCs4VjBLTU1ENzlWdEM1ZzRmbEtyQnlr?=
 =?utf-8?B?cVEzZEUyM0lhUE9RdERpZEdLMGZ2YjMvSGVQSVpDaU5tRXIyUXo0U3NYMkI1?=
 =?utf-8?B?Y1U1ODZwZUpSL2JxUk1uN01ERnhVWWtKMGVEbUxnd2pJcC9tSUwwNkZFQkg0?=
 =?utf-8?B?dnVNd1I4L0N4WHUydUp6dVp6QzRYbTlNMHJOZjZLSDkvd05MOGJVTHI3T2Z6?=
 =?utf-8?B?cUxjZjNFQ1p0OEhENy8rUDZqdzF6UzdGLzhCQjRDeTg4aTA1ekdXdDBRSU9Y?=
 =?utf-8?B?d0hGK24zR3h4MnhPMXVweFJnUDFqcUF0Z2UrVitDdUx6L3dESTJNMWhzNW1U?=
 =?utf-8?B?a2hvcG8rLzVVVVJJSEkrWHQ3V2dtKzBQZG4rRjFFa2VHSXV6ODh3NFRNZHVr?=
 =?utf-8?B?d2tDNDdWNzBHcEVQZWJ5a2FoUCtwNEVpYTJpb1dGd2hJQnBaSUUwU0thZFlH?=
 =?utf-8?B?Yk9zdTZKQzB5ZUVjSy9CQWh2N285dU01Q0dCVkJFcHdRM01nRkVxSDVkcXky?=
 =?utf-8?B?RjUvNmJtL09WNWd5OGdUemtIZzFyU2szdklGQ2xXVzJ0SDBuOW84Q0sxajlV?=
 =?utf-8?B?b2wyOFRNZlAycElHVmxseHlDNG9ORkdFWVBDVWYreXNHa3dWR3hSWm8vZERk?=
 =?utf-8?B?OEczeWIxaUMxNnY1cHNxYTFobGh6UjRDNUdOcmNseFJPUmlwNWlaNzBYaXRh?=
 =?utf-8?B?UmtmUFFRSnl5aDlTdzhyVGVtbndBMmpHeEhLSm8xc21SdVd1S3VxaWdQdFNl?=
 =?utf-8?B?VGpIcXBVRW1OUFlnVkUvSGhOSmF2MGxKa1VTUUVhYUdBbDRxRnAxMldSOUtu?=
 =?utf-8?B?SVR0M1dtMVZZZ0J3U3ZMTDZDczhxZzJuQTc2ZGtrYlZQVlhYMi9UK2toTi9m?=
 =?utf-8?B?RUpOVzhwTXd1M1ZuVGFzNW5UQ1BmZUN6c1pqSnN0Zmc0N0o3RW9sNXlEZm1W?=
 =?utf-8?B?dER1R2QvOHRUVGc1bjM0cXRsdzBEcDBneG1rVDZ6dThFMGRmVG02d2llV3N0?=
 =?utf-8?B?L2JpdFlpY1JRY1hEWFYvWTFFblY2cUhMNnZDeVhUbnYzaHY3RzV3cTZlZ2xz?=
 =?utf-8?B?K2VTYVZSU2w3UDlha1dWcXFvQ0hmcVNMWlNhWVF0M1FzRDBYK1l4RGluUmZR?=
 =?utf-8?B?eXN6elJMbjhJczBDaFFDenNBRjJsQk1JM2J4SHpxd3lCTFcwTmlra2VVMVZM?=
 =?utf-8?B?L3JDSXBZRTZXL2tVMlZldnA2b0ZSZHBHa2psWVF3N3hLUzVncG40di9DdTRH?=
 =?utf-8?B?ZFVXYUU5L0lyYWg2bTc2ZmJtYzJsMkR6cDJaTnVNZGp3OTFJMklkc2VMUDZU?=
 =?utf-8?B?Z2lWTnJwTDNidUMrNjFqZEdPcmR3dmZjbGtZeDM2Uk0wS0x3MWVtejVQZGNN?=
 =?utf-8?B?VVI3cisyV2NVSjFjWmFYMTlLeFBLQTZjaFVPYVFkV2Fscy85OEVubzl5NlNh?=
 =?utf-8?B?d3NKVU1zUWx2WjVlRHJJWHdJYm9WTU5QU2JPSVhJcjQ1dUduZ0sxZC9aQStC?=
 =?utf-8?B?WnNwZHVxcWV6dHhaUlJ5TW5lWVZOeWQ2LytLdVpDSVBtLzdkZjdmbWZZN0c4?=
 =?utf-8?B?dGQxMlgzTm1HSkd2dkpDZG9ULzc5N2dZb2tkdngzTE4zTHplVFo0a1huait1?=
 =?utf-8?B?cy9rdjNESFloZ1pQS0x5REhXeFJMQjVVZlorZlhGa1ByNklpVG5HaXR5eFE2?=
 =?utf-8?B?WGg0VkhzUkxIZGVFRVorQmdzblFpdlZWVEd5Q3BvYlJ5MWlhZFdkVzVIazJJ?=
 =?utf-8?B?dElHbFRWSHVkOUUxSGpiRmw3dUwxaTV0Qm9UbE42WEVqc1E5VXdSa1pCcVAw?=
 =?utf-8?B?a0RBWDNZZlRSOUhNUXdRMTZ3a1BJUVl5emU0WVpnbU01YWNHYmNrYnI4Qkh0?=
 =?utf-8?B?bkhEL3BLbEpiWEdYY2dsNFE0T0dLYjZhaW0zU1loVk1ZWVZhSmRNMVBVSUNQ?=
 =?utf-8?B?elhlRjZreFl4MTFnMmR6OVZaNC80cVJMcndmSFJjS0U4aG1POWhJZytSUUk0?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	VEhNll9ab4cTdjK1ANL7k1kt81uKA4J3qI7Hr358FgZgKjYlXFhxcFKQ5xriAwBmbZHGB7TsWse/WjtazXZ1Qd+vZU9xFZHqZTsDCj0OXSi2BUHF9lErI7NnY7qt212jg6kURt07iy9FZihfdyQ5JHcgMVFoeFBmYsNLURONuvLFoGp8Viz1LaI3MB0+33xtgt4CusIRFKBnWbQ4lgzfHbHFfXtJkr25Hpa4MXl7gMPULNRLJNQAXm7S6g8GSOk3kMOCuVJ/TRmzueNbVNhXjS3cL1tVMGPSREm8NT307r25xWzGWb5xyc932pdJsdRngYGkHa7ILxCWnR4mULnwoJbB5LI+c+Y0dUdVnUV2/7l0AgePIDDAvDHyMzehLESZkks00wJ+5iYj52qLuTZl4LIbJwdT9DowmfRQTUvQ0lDSfZUX8kxAE1hrhiLvRccc5WFqKIG/lSdDQQg4BXZFvcOhzELW0vVi7y9RTMreCHErnwfZZHfzAOV9aZxnt5tv0ECaE3lPcHgI699lxhgj+cxFsbu4Aq8drMqaF1HQmJ4ZYaIwWYkmVOABQIxPfVVtwOUB66lEByN7W67rLDnY1mYA53qGqNMlccjYKIEgqmA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be2c4eaf-6097-4e13-165a-08dd7eb0cc86
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2025 19:39:56.8881
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TsYRQNpu6yU+jd8IY6ilAFz30cp+YtxYa8TLNVAQRbjZrfdoj11dbvz860DxFeP4uYBMDCslS09Fag18SXj5Q53It91QsuqbIZnS+P4zI+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4192
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_07,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 malwarescore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504180148
X-Proofpoint-ORIG-GUID: kT_ZmI_4wTEgOt29QLyTUrF4nLFG2p4o
X-Proofpoint-GUID: kT_ZmI_4wTEgOt29QLyTUrF4nLFG2p4o
Subject: [oss-security] libarchive 3.7.8 fixed CVE-2024-57970, CVE-2025-1632,
 & CVE-2025-25724

https://github.com/libarchive/libarchive/releases/tag/v3.7.8 says:

Libarchive 3.7.8 is a bugfix and security release

Security fixes:

  - tar reader: Handle truncation in the middle of a GNU long linkname
   (#2422, CVE-2024-57970)
  - unzip: fix null pointer dereference
   (#2532, CVE-2025-1632)
  - tar reader: fix unchecked return value in list_item_verbose()
   (#2532, CVE-2025-25724)

(Though 3.7.9 has since been released to fix a regression in libarchive 3.7.8
  regarding GNU sparse entries.)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

