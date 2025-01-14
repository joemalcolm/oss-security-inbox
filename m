Received: (qmail 16183 invoked by uid 550); 14 Jan 2025 20:53:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16150 invoked from network); 14 Jan 2025 20:53:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=L+43w1lxAR0MCZyxzRDl69oUq7fg62IhdhJb2ozwPSg=; b=
	Gl8Pl+c1M6CilQzoXtYw5Fb5hYsc7xewmXZzhaWMqRqgYcBXDSfH/5+QESGlu1dk
	qnp/S3XqOgfgdcQ71wxCqi5t/cKhPw0yc1JvMFCmf/PMop8x/MR8XOx41atAOfE0
	wVBawRQV0Hy23IsqBxdkI0vdgVjfsZWS648BOpvZ+vnVtYcymAluHy8zhXf3ZPYE
	RU64AI+ilSxtZWzt6DZZL5VaXHLtMRtMGZGlQlOGMKpc7qUEfOYxAMuIe+sI0duC
	O38Yc9DJTPoXmuMz8R+3SKnwzTmOV0zKvkrWunMn95Osfs1T2Sbxcj1VRl8aEmCK
	bjE0Qm+7QBtWC8JA4CerXw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ozol/AZvlWcBJt7WW/3104jJDGv+XAAgLMOIKS/3qROx5fL4UpIcyIzyBOYMYvlawJhztO27xyYrPLrg3VUJnF/uptsaMg33CG3YkNJl08nP+pNQTTGeUUKx8J/YynqE4gpbvPkMRYEZzVBO+HoAg1Yg0//naLXJ2pjIJCHF6ScUh6j7kSmpHZNH/v1VtwCMDfRbsDqWxro5NJUzEzA3C/tWK0zO4OS4rI6xHr672AboQOzgQ2MKxS5ZLPDSYfVFhbN+ZIIc7XO00hPColNBMosHcJ4Eis0Ca+LPeEUEaFdmLrg6x756ZSq5aI2drnJoQEi3HCmqkZN0rVByvq5oWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L+43w1lxAR0MCZyxzRDl69oUq7fg62IhdhJb2ozwPSg=;
 b=wpfrYeajIC1yiXXP8zK4NosxLquZC80U/GE4LgQDlR+3Y0UoRANrpJEvAJ1lG0s3//qaQnPqan+aagAl/1IjbMGaeFWkKaO0XNWPwwqZFVxJ/iWR7vLJAd3oJjt5lFEKXmZeg3INrWomhTsqKIJrx/NhOmrQ7JdGdzSUdNDzgqb60a08bM6bRA5/Z2wV5slYnrIN9xo++7WMw6ihplq+vl50jKzGXkfzykkh/v4Eva9rfY1tb53LQvlXJW2kEAiTwuaF+OVG6Srd85mH5wDeDSYWdv+gID+4phVAHvTuDiaM+vTOtAHmqnLU9NfqU2NWdwqwr3MINvKiw55odUSaog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L+43w1lxAR0MCZyxzRDl69oUq7fg62IhdhJb2ozwPSg=;
 b=y0o/L0rH+aXCwFooeZf24uPI+RVpF5ySZS6ckVXO+54tKj1CLPKEca9a1JvYgHfCZhmK1uwigZjlNYJjWlUz9etSVsL5VlT9Ju/YeROGoI219JwvFIpPvFH5fNx7tGf0JSo8199MX1DKFBjC4f0dNSFX2OGydgKC9zqLooUEFlQ=
Message-ID: <efe5d030-746f-4ad1-b2e0-60cebf7e0471@oracle.com>
Date: Tue, 14 Jan 2025 12:53:36 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CALDM2HfAOzs+zr3XLCDAKH8oOosigdaNooUANDf=Ez5mLSvQcQ@mail.gmail.com>
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
In-Reply-To: <CALDM2HfAOzs+zr3XLCDAKH8oOosigdaNooUANDf=Ez5mLSvQcQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:254::24) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA1PR10MB5843:EE_
X-MS-Office365-Filtering-Correlation-Id: 0127e2ed-27bd-4f05-8891-08dd34dd852e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MjNJK2dtUnplajVFQVNrR0lNSmhRZXpaTFZ5WWorYm5QZjEwc1UyWStISWdy?=
 =?utf-8?B?UENid0Q5QnlPcjRGMjF1czZjTlk2Q0lmREM4MnVOeC9JUmJNNHJGR2Rsekli?=
 =?utf-8?B?RUhFMExmZGJKV094eXFQR0pUUy9vckkyZC9sRzVWLzlGSHFJUnZwU0kzUG5y?=
 =?utf-8?B?bFo2TjN3OXNFb3lwcnUxanN3Y0IyMHU0Z2hkODNUNlNUNzlUQjM5dmhpVEYy?=
 =?utf-8?B?aGorcTl6cjlkOHdMODB2OEIyRHNBOExVUk9wK2RIdncrKzZGVjVhSlhyV09w?=
 =?utf-8?B?U2ljSENZRE5wWnZaU1hrNjRKYUZCTHRvS1YxQ29namlkVkFBOHRNTWs3Y1VZ?=
 =?utf-8?B?d0w5MFIyUldJY1lCMWJkNlI2a09tTGtnM0U2S2owZGI1Q0FhR2VKTVFlYjh1?=
 =?utf-8?B?R0tBYkZZMXk1cFNRRG5SbStTQ0ppNUNXZ1puRlZEMkhpekR1V3hjQlRoUHlT?=
 =?utf-8?B?djRPb2pCc2RxdkFZTFBlUnF0MFlFV3J2c3hoWGtmNlhOR1B1Z1VGRk9BbWNZ?=
 =?utf-8?B?bjZvSzluT2tRQkdpL1FvdUhVRW5xNjMwUzg1UVViR2g4bnNIVCtia2ZtQ3VM?=
 =?utf-8?B?V2R2ejVMQXhGMjY3b1BxbUxteVhGSE5XMlFnWXdCVU1ueFpTYTdqeHV4QjJs?=
 =?utf-8?B?TmFHdndOUVk4YTBDdG9Qc2EzTVN4OEV4RGFvK1ZQQTJFQlo3cC9yTjdiZTZZ?=
 =?utf-8?B?VlZzbThqUTFHM0VhV1drTFlYQkFYZS94NENORUVHVmJvbHNIQVYrbnJVS2Uy?=
 =?utf-8?B?dERpQStlWjJGTUVBZU8vR0czZzdYRmxBcWlaenpWS25id1F6WmMxbmVlTnY4?=
 =?utf-8?B?bkVsbUFuQkpveitaRVZJbi9TaW4wMVVENjR5M0FMLy84SllpQ0NSSHRzZU5L?=
 =?utf-8?B?RjBuYlJNUndSMFBMbHUzUmVWM3F0elpHdmFLa0FmaGN5OFVoMk03TEtEa3pz?=
 =?utf-8?B?eE03TG1lUGxJcjJCOXM1cG1YQW45UmNQMXp4K3hseitoak9yUHY3Z1RLbGhH?=
 =?utf-8?B?SFAyVXhBQU1CUXk2am1OdXFSUUUweGRDUlk5WkhnVEpDc01iRDRPTFM1K20r?=
 =?utf-8?B?REs4QmZRZEIrVzU4Y0o1VEl6bjQxazkwaVdpK0VBZ2ZoLy91VHpNTU9HamdK?=
 =?utf-8?B?N3NyVUJHeVlVZytkRHcvRCs5V2hjQW14L2F4QjNQbWtFREhydXVzalJmV01G?=
 =?utf-8?B?dy9OSjQ4UmRqdjF0clRvUWxqajR5QlRwL1JpckpwQUxFd3BhZGFOSngvYXZP?=
 =?utf-8?B?dmo1WGNwUlhUR2lQR1JYMHVOanR2UmlRaUkzYmZPT1QwWU4xYjRnelBKdk5H?=
 =?utf-8?B?c0IxVWJZTzhzU3UrT1dSZkk5WUhFWjFNUTV5d29GQjNuckNpaGJpaVFjY3c5?=
 =?utf-8?B?RXJORjlNZi9ybUR0TXFhQW9hWTNhV1RSdFpraGpxTDdMZzlxakRwZERwQkQ1?=
 =?utf-8?B?Y0dsaWIrQi9OY1p5YXV4R0REMHpQN2ZwaDR4OUh6cTBzY012YzA0SHNIUWN5?=
 =?utf-8?B?bko0ZUFJZ0VNckZFUUl0ZDVPZ0s1S29HaHhPK3U5QWJpYWtKSm5ZM2xSQzZk?=
 =?utf-8?B?Q0czSzNEV1o2aUlVMTFMbUZBZ2JZeHRPZHFlNFduQitqTGtOdmJPK0RHNi9o?=
 =?utf-8?B?dldwOXRha1dKK0c2KzVBS0dJc25saXFBMGdxNTZJRVNkbVNtUU9tSWQ5ZTBV?=
 =?utf-8?B?YVVKUHNyd1FScUpSTDkwSWM1YXlhQlZFT2d3MWhkZnJwaE90OVZNY1p5ZzE3?=
 =?utf-8?Q?i18oOFqwPmxvj5epA61R0eacC3bW8K9vvzqXIzR?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TVpDNkZORnhsNmMwbmM2aDFadTZkYXBkUXlqSHdhMUxublM5a1hZUHFzUHRS?=
 =?utf-8?B?OTBhUHpadWVaZ25XWEs1UEdmUm4xd1lSMnVudVlZY3d3aXB6OVhkbG1Waitl?=
 =?utf-8?B?bjNMOVdQUGJzQjR6YzJYY2ZLdTNlY0t5WGwxTHRtVXFnbFZWeUw1TEJHSlhK?=
 =?utf-8?B?U2REUU12ak1DUjlmVkI3eEw5TnlZbGc1d2tpTDlDL3dMQ1FXcjFoTWJRc1ZV?=
 =?utf-8?B?UUxuZ0ZKMXA0TjU1OWhkUTdCMk0xbkVrZXMxeWpRRm85ZlU5c2ZTMEZVZTBo?=
 =?utf-8?B?eUhHTmN5R1dWRGVHbHdRK1Rxb0xjTSs3QlMrUml4VnkzT3BiekNuWE9WSDND?=
 =?utf-8?B?Mit5d3R0NndSZ2kvUC9YVjRrRTNwRWtFa2Y1NlBpM002TllpNHlGUXRzNnFQ?=
 =?utf-8?B?OWQ2U2dSQmlqMDZIaFdFWFFPTHdSOXNWYWRwL0Q1bE0zUHFESUJDcTNVbmhh?=
 =?utf-8?B?Q25oQmU1eUc0TGpxczNjRXo2M1ZNMlhJeFYvbXdjWlg4VkNUNnlhUkMzamdp?=
 =?utf-8?B?QXhhVTFRWjh4T01pY1dLc0hmT0tYYjVOZGJUQmxxeFY0Y3ZBL21lWlpGVVFx?=
 =?utf-8?B?VGxCOHI4U25ndEVYZmlLLzROU3JHUkN2clFyWjdzdVNSeEpxVEl2dnd5d1BX?=
 =?utf-8?B?TzFIWWFlRXExdExpc0dXNUNCd1o2ck1McUY0TnE0Vy9FREd1aytoUHE4eTBr?=
 =?utf-8?B?RjNacGwxeVQ5WVg2NUk1amVNTWF3a01FNklLZVJoT2w1MTdrTlg2Q2hGV1Jx?=
 =?utf-8?B?c3pheVk2d2x4cG56SC93MW5qalNlM3VEUGRhYWQrZlgyWTh1T0JMVjVPaDUw?=
 =?utf-8?B?OGgyMlUyeXRDZGFkQWNtK2tmT0FsN1VUb2lWWmhlMEJVVWhjR2pTUm9Jblhu?=
 =?utf-8?B?L1Rnd0RlV2lSczFBczZ2ZC9BdWFFbDVZWUlrYUlJa3FnVGxka21yYVJJQWJu?=
 =?utf-8?B?WW4xOFRENFIyMG85MUc3bWE5clNLb1R0R2RHRHJkbDFmNFo0YXUzcEdJTGdB?=
 =?utf-8?B?SzQxaUhDR3VsNWhIWFFQc0gvMURCUitLSjAvMkU0QkMzK1p4RzlOY3BUd0p3?=
 =?utf-8?B?b1BlTkdWdW5TN3B6anFVcFY4V3pzL0VRaGsvMkpWNnBkYi9pQUVwblQ1T3FS?=
 =?utf-8?B?WFhrQTVmaGhIUUx3ZEVheGhKR1o1MEVtTElqeXBEL3lUcVZBTXZzV2cxYm14?=
 =?utf-8?B?eGdOTUZPNHRyQ29BSXNjVmxPZTZLT1NyZWRpZjlUMmt6RzBCT1owTStDc1RQ?=
 =?utf-8?B?OStkSy9wZk52RXVGd1htbXAyYW42am53ZGtaRFIzN2c4RWRoOGtVeDBsU1A4?=
 =?utf-8?B?dFVDVVdUZXNLcFBpdFRpamNoQlc1R0ZlVE1MMU9JUUZHbXpGREMxZXJzVkhC?=
 =?utf-8?B?UlRQaFNzQXJUbk1UT0FMbGFUL2FsMldzenA3eEhQWE4veEdOQjRzM2FNY2sr?=
 =?utf-8?B?Qks5M0lTZVdDWWlMMlBiUHZ2VG4rRDRUV0MyUDc2VHJHeVM2UFltbnIvNlhE?=
 =?utf-8?B?NHNKeWgvMFc5cFRRR2U4RHVHWEpCam1yWnFGbTdlTE5xWkthNmdESW1DSVY4?=
 =?utf-8?B?em1mclRwV1ZvMXJZazVZdVo3T1d5OWpzNldXQzYxdFdNT083VUxpUldkNGgx?=
 =?utf-8?B?SGNwNW83OENJSndZdDJVY291VDF4Zm9GSmVKblBudkdyS0h3VFc1QWhxU05I?=
 =?utf-8?B?aGloR1EyWXNMRUxvbWRtTjhCNHdiWXNQSytVcUJWbDI0RWhPelhuTUZNM0lZ?=
 =?utf-8?B?dUhvdkZ3b2VQZzcwZ1BINSs0QkEyZnE4S3F4SS9jR1hFWFFDNDZrSlNzcjNx?=
 =?utf-8?B?SzhlcXBLNEVYY3ZwNk15dVZYT1hRTlVRMmh2RWFzdFZGbis1SHVVcUhVcTdP?=
 =?utf-8?B?M1ZiNHFSSDdXNnYrL2pqbkp0RUgzQzhnSklWd0xmcWhSenFCTHBGNUQ4MU1C?=
 =?utf-8?B?SmZaYzNUS3pIWEJ1cVFrS1A2djR5V3FsNzl6UnBuS2FEanpoZE94SlNtdnFa?=
 =?utf-8?B?bk5iTGZ5aW1wVDVmaFJ4L2QzTjVPU3JhNndsNUt1eFlKUVkzeHZqejZ6OWxG?=
 =?utf-8?B?ek5KM3lNU3FraEE3K1kzellLYkN4bE5pTTM1U3NVNzEvalJ4Q2d2UWovTTI0?=
 =?utf-8?B?amdaa2ZGNE1zcEpDWVdPaVNCQ1ExelozK1R6Mm1Tb2crc3o2QmZFM0VpNUJX?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	l9mk7DLpE1p/5tp/lq5Uns8GtRu6l0/tRuWvh3nKFx+aTdnDPHKf/oWasy/paQFuZhhJShB3emPATILkhbgiUx2+pP/iaZ1iTyJ1cVtkKies7VR6XQvTKYBg5LgYUL5b9vfsNn5zInfqIp9rKYHGEVU+1GCcQL5ZrybEyMcwIAGywjZJsT4mZki7dGmSU2K0tG9jWtddfQPMUmy3yGF9zaMImEBTJSUBq3f62EY0/HSzYflhkjE2WA5HrJOR2WjrnzkPqQkFleI9o4HjAHdJyDymijmB3x9GPiPVD71fFrkUU/zLU+mLpfkjBfeJXaTOdplgcdtH4yPZ0upg98FXRDmW5oyi2vqVLzYAB73Slru1Iv6/IOtzJF3UzjKFmQE6+En4jhehhadWr2E2ickeJHyeSVfUTtsyGdROwte9NTY4NAUi8VKbd5e7mcBGP52Iok2nUqvdRBaCHRG9QDiPhk/hflx/I+Fu4JJVP77nrDC+LVOIlBm/ELrbOmU1JW6Vcly5TNds/sSwoUSsuUbCQvVukEaU5I6npY/YPGGuVXCFONNrdDQVF0/CBkogYpfFt3yfNBFTH9jjL6/rMy420rcVWaEfU/mf6F7lBb8aOZg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0127e2ed-27bd-4f05-8891-08dd34dd852e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 20:53:38.4722
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8RDcp7utqa7GDpcuL4kBCpDBCSD54W7ILazy5tsiyK7QuX1+GEz5vlF/8v5L0lTp8X9QHdILVEETAN2UwvMXb+r+QOOpY4LN5VJGsCu248M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5843
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-14_07,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=999
 spamscore=0 mlxscore=0 adultscore=0 bulkscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2501140158
X-Proofpoint-ORIG-GUID: x_JRTbrBC2tdVGWIgRLPtbFCKgECXqZA
X-Proofpoint-GUID: x_JRTbrBC2tdVGWIgRLPtbFCKgECXqZA
Subject: Re: [oss-security] RSYNC: 6 vulnerabilities

On 1/14/25 08:53, Nick Tait wrote:
> Upstream has prepared patches for these CVEs. These fixes will be included
> in rsync 3.4.0 which is to be released shortly.

This has happened now -
https://lists.samba.org/archive/rsync-announce/2025/000120.html says:

> We have just released version 3.4.0 of rsync. This release fixes 6 security
> vulnerabilities found by two groups of security researchers.
> 
> You can find the new release links here:
> 
>  - https://rsync.samba.org/
>  - https://download.samba.org/pub/rsync/src/
> 
> For details on the vulnerabilities please see this CERT advisory:
> 
> https://kb.cert.org/vuls/id/952657
> 
> The various distros should be doing security releases today
> Many thanks to Simon Scannell, Pedro Gallegos, and Jasiel Spelman at Google
> Cloud Vulnerability Research and Aleksei Gorban (Loqpa) for discovering
> these vulnerabilities and working with the rsync project to develop and
> test fixes.
> 
> Also many thanks to Wayne Davison for assisting with the release process as
> this is the first release I've done since 2002 when Wayne took over as the
> rsync maintainer.
> 
> Andrew Tridgell
> rsync maintainer (again!)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
