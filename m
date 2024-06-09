Received: (qmail 10193 invoked by uid 550); 9 Jun 2024 18:26:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10160 invoked from network); 9 Jun 2024 18:26:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:from:to:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=o
	/B1YUbXe+Mh5m33SIn4t0ZZwfqmjSkw5hN07+wq9p0=; b=QzqQ+935tfqj7UUFX
	bzpi3Xw1A7foVFBBJ7LXf4e8FYjCmApPBjoPmw71CFSmdmowvXuAwhhZt7NMNF1+
	a28e4TWqKnp1ME9pyUPZak8jX5WseEVmxfv1VYPo7bqZZnucJOo1UTUxdMuWzlkD
	zFp9BJDyvzs7n1frTIN6tAdpEw2fyh/fEMqUGW8iPLkpPIPfm96HZxMwR1oKgs5p
	v+ccoNRW45oVKDA1cPI6wR3jE/5OXYT+zjfkCQcnEnsneaHtIvVRy4UsC75rlZfG
	mFtIASZxxTL5QcFHKSFwLITEH+R0aMuOtAqiSJlGrAgfsZ8tyg5Qn9wz1QiLfgVM
	uRLNQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AzSj/7FIdne6LhW3clbZI1o3WRrediAE2PSBMDdFdzXLW88gxNc+J+U061qV7YClSxBJdEi8b5olcCUlmstNsH8/s/1RFTjaAqgl0IT2jYJrj/6dQIx1OReEhCXunVC6hCCpjKELJC8+p32uj3YGPb5r9s/PbPInHb1sgPuZvjztfB3BEMk/x1kt4ai39yBI5fztq6cbK+3/PGRZ0/PchkzR740N08SLk+jOfFq4ZvoAZ0pXTx1O6l1+MA7yHhPLw3MjI20i6QnOFqt/uXUNyk+ykBrmnFZzbP5fs18eF3VB7IJlgET+k5jeFzH52ONdfPT/XvebGkUYOow0wgwK5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o/B1YUbXe+Mh5m33SIn4t0ZZwfqmjSkw5hN07+wq9p0=;
 b=YNm1Qci4RozncSXm1UOXpimns/y8rH9XvZJJfXpSFq9hGsTzott4i5zWDjO3nWadMlHPl3rk3l3DRU5iONkKxJZ81NQwIrhlRtxFjYeTxUxGePsci3vtHl4xuiipCvdjQZDy9jYdfP5+7zAdcIhIZun18B5t+K7CkINCEvSQw9j/zkfUcGc7Yw5ovMiDX3DDs7m1quROc3UnUD7k7b+3NsYMkGthhjeIz0zuAiwUt3pZbUbTOZdes/vMIuiYLpo66NQrsKi2+yNbEKUWU/8UboC7el34hS0Dx2SbHnlNZcbuGTsJdOGg1p/fTxpRto5SZTLJrXvGLAkMYXWDaJg79A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o/B1YUbXe+Mh5m33SIn4t0ZZwfqmjSkw5hN07+wq9p0=;
 b=z+wc5/nBWwtfCBU0m8tGNGtowpwTfXLiINr5o4Gd41eEKXdvqf8l/pZxK98MV0WToyToJ1J+ayTcxeS+CkrRtbgiGmu8nDPgo+JyCvQdj+akPl4kVMELrX/zmcrKM3AVKg95VwGVG1CEADELNvM/RsNFnZREo999FtCxrHisqaw=
Message-ID: <730060b6-e92f-437e-aa44-fbb1d47431f3@oracle.com>
Date: Sun, 9 Jun 2024 11:26:33 -0700
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
X-ClientProxiedBy: BYAPR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:a03:74::21) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA6PR10MB8086:EE_
X-MS-Office365-Filtering-Correlation-Id: f2790c19-e1bf-46d8-8a83-08dc88b1b24c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TDJrMzVsQk90eEVSWWNJZUFvTURJclZZRUhRUVYrUlNiSW00Wi9iUFVKNDdE?=
 =?utf-8?B?Rk14K0tMV05ZVXNESWZjN0trdStPUlh1b0dFSnE3ai9aUXQ0R01yUXhpQlZB?=
 =?utf-8?B?RXd0ZC90eTBpV2YxVEhCVFUxZ1lUVUpUL0syd0lCTkFkKzdoa0NjVnBrY09J?=
 =?utf-8?B?aWJuMjVkZ0FVNHNNMGNSS0svbmVSajd2ZzFlWFhsUlFucjRjeXhhT2dqa0h1?=
 =?utf-8?B?UUlMcnl0bFZZWFkrZUZGQWdQanNmYmRlM2loeHYyQ2lGWU9ZTVd4ZVc0Y2hZ?=
 =?utf-8?B?YlJuZ1owOEhFZjVvQ2FhTXpBRmFCdkhXOFJZQlpBb0x5NUMybW15Mmh5VTNk?=
 =?utf-8?B?Y3FORGZtUTRpYjQwQVZscnBldXN3ZmVBeUNBa0k5L0k1ajVwR0lvV2NFMHFQ?=
 =?utf-8?B?MXdpbFR0UlU5eHI3YWloeXFhSVVibE1CVGY5QU90VGJ1bTM5RlNtS09VVjRH?=
 =?utf-8?B?Q2lqQzlwQ3N1RWxGbldKSHg0SWVFK3dYU1NaSHJkL0lPclB0SERrSzVKRkxp?=
 =?utf-8?B?Q2JHR2x5eVF0R05wbklPSEdNY0tqUkxRWWpJUy8yQ1crQWtTTjc5RkpPbHdM?=
 =?utf-8?B?M0lraU5vUHBtNVpOZTFUTEVtdlprdWlQbCtDbEJIaHVnUU9JWi8rOVF0bk9t?=
 =?utf-8?B?cFNBM1d6am4ybm1mR2hpNW5ibXBxVzF6RHVDTkc1VzlqYUlERFZ3RkZZQnQ4?=
 =?utf-8?B?UFpiTlg1SWdZc0RqSnd2TU1FRk9BZU5FSEFEb2hpSnZIWXBnVmc1N0R4YSto?=
 =?utf-8?B?WmRKMVcxNlpiZHVDaG5VWGFsOGp4QU5JYjdaNjVxckRJZVl0Q3ZEVnBDVVdw?=
 =?utf-8?B?NkhWZWtmL3c5STlYMmRrckVKSjN4YXdkL24zZU1vWU9rUU1ta3UxUnR2Vjk0?=
 =?utf-8?B?YW9VNzhsd2JycXRHSUVzKzRKNS9YOXdnUTdPVHRtSXZmTDJRVTRsNXpiVmtW?=
 =?utf-8?B?RTJsMUpvSk5DamJqVFRDMUptd1B4dDBzcGJ1bHNMSEJRV2swbEVUSGNnQ3N6?=
 =?utf-8?B?aVJJc1ViUVBSNGdkMTRXWmdzZ2Q3T2ZuaE02QVZ4TTdCcXYwTUdqcXFjRG5S?=
 =?utf-8?B?TmFURUZZWWFHZGFIN2NNOFJrYSsycHl4bE9sMmk1WXptcUt6M1JWeGVCS1U3?=
 =?utf-8?B?akdsK1hicXV3bDFzM3VYS2Y3VUR2YUYvRXJtM1dPRUprbGhQYmc4cmo3Wkw2?=
 =?utf-8?B?enNSa25ZRFhoZXJQTlhLQkZLWE1WQUh4OVhSdzk0cmpnQ1BpQkpaaWtPdjlz?=
 =?utf-8?B?Umc5YWFaR1dmUW5PekhVUDhqY0FPVTBFYVdOc3RUS3FxcEx2LytFTVhBT0NK?=
 =?utf-8?B?K1hhUy9Nb3pJQXZhRndzeGFtOWRSRTZteWlzVUlrVm9HMWFHR2Z0V3Q0RmFI?=
 =?utf-8?B?MDdVTEQwOXZ0RlV3MnRTOE1HalZUN2g3MEFVTkhkZHdicnByWjhyWFFSSGZj?=
 =?utf-8?B?bE9oZy91cWVRN2Z2MTR5WFdwVWtWaGxMbFBudkh4ZXorNjAxbVoyeG5XWE1M?=
 =?utf-8?B?Tm5OV1UvUUZPSHVKL1dzSG9BKzdVcXpSNVdKRjE4VFBpWW45NDd5TFN3aHZm?=
 =?utf-8?B?U1Jtd245OVlGMjg5cEtBdGdNQktaUUpEajgyREcvR0h4S2sxSm8rQjNjaG44?=
 =?utf-8?B?TmxHYXArNVVUTnRFdk1GZEJnT1RROFhaT2hxeDZYK0tSNElxa0ZZZHQ3ZTg2?=
 =?utf-8?B?ZDVSL2hwcFBrNTVjR28wa1IvME9hZFhqY3lBeHJoSHdsb0lFRWIrUUJRPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bDlnaUVjTlhDY3lzN2JTdG1SQXdmZ0VVaGZXOHRQZGh2R01TVXpLcjdoS09Q?=
 =?utf-8?B?aEM3Ni84N2p2Qm5nc05yeEJyNmRJOFRDL3dzcXNJdFRpem5naDEyYkV5U2pW?=
 =?utf-8?B?ZjBPbVV3UTdURVUxVkYxY1Nrb2JhUXNoZXhvdkFKbnpUNDkzTjVaZXgraWpQ?=
 =?utf-8?B?VjBzM1NKMXNpVEJuRVlDNHM2dUh5bUxhejhyaFdpLzZIbXVpUTVnSnlmZ1NI?=
 =?utf-8?B?YmpISVR3WE1hMlovaXVtRStZcFJrRkVOclNwVURONkkvVk5lQStIMzBGV1hq?=
 =?utf-8?B?V1ZKSFk2b0lIQTROVk55RlIxR0swSWgrK01nbWZpYzNaNk9NL2xDZlV0Rk5L?=
 =?utf-8?B?UGYwSjc2ZjR0SlpsRjNtbnFSdmc0R0d5UWdaOXlUYnJ4RnUzZ3hVY1Q5ZWlq?=
 =?utf-8?B?MjRkdEY5ZWtidVlMQ2tzbHhpWWZOQnQycjBFNUVLV3F1T3A1TXVGOXIwN2tP?=
 =?utf-8?B?YnlZK0pac0sxa2RRYWxGMC9XcDVzNGVkc2FvUVFRZ2NVRGtYTmtJeE5IVDVS?=
 =?utf-8?B?bmtlalJGZlNTaWh6bDdoWktpcW41b3ZwemR0TFRWdS9qRnRVL0hod1ZCcnZt?=
 =?utf-8?B?dHJveE1jaXlnZWJXeE1ZT0dnRm1Ic1l5b3pHZnZTZjByWnhsb1Z5RDUwSWFV?=
 =?utf-8?B?VzFXTzhYLzlCWFo2c1ljTGFKcC81NHFjcGsyRkNrZ3VVUWQrMTVadXhXOTRS?=
 =?utf-8?B?QXlYcWNZV21wcTdISWxpK1BXVk8vZDQyMTdJRW0vekhHb2YrQUN4SUpURUxV?=
 =?utf-8?B?blhTK0dpbmFqQW9RN21NUVhEbGNGV0VGVXJhVjlUSVV1WTdVSzhWQ0JOMjBX?=
 =?utf-8?B?cG1YTG40L0FSc2ZZMTVXK0d1RkNVOVhwayt2bTFrRzZrUnhEM09DWUMyWjEr?=
 =?utf-8?B?Yk1BUnllOTdaZ0lJRlFQTitKZ1lGdG94aHUybVNLcEptM3FCcVl4NGZad2x4?=
 =?utf-8?B?VlJFR3VoWGZmNXhtSHhwNFpaRjhEWkFDMzFhalZYWG4rSGo1azZtUUtHUWlC?=
 =?utf-8?B?U1BnZ0pnaUxOR2hFNWw1Y0IydUN4VEJpeGxtUWJHamRDSmxJc0x2cFI2dG96?=
 =?utf-8?B?TDU0a3ZLYk03YmM3eHpUeUk4dDdrNllUSFA2Qzd0TlF6d0hneTN3V3gyUHJa?=
 =?utf-8?B?V0FKZzJrMjdoM3hKR0pleDVtdkIzUXFLaDcyb3hzUzYxTkJwYjRET3dEUWtU?=
 =?utf-8?B?K1hBVkQvT0hpRnZOSzdvZ2hwNDF0TEE0cHU0OE1QK0NqMXpML3RpQ3RzbVBD?=
 =?utf-8?B?bWJDeXdjY3IwM3EzakJSVTRRclQ2M2Z6djJPSWduTk1NdGhGMFpUMEtxNStK?=
 =?utf-8?B?eHl3cHkraDkrRmVFY0dYRVVCbU5LNHUzMmF5YytOUU1NMWwybUhBWUc0VzFj?=
 =?utf-8?B?SGJ1bU5JU3orQkw5R2QybkNpRWRUaTBLU0NxTjhHc0M4dWRnVjZvNTY1L2ZM?=
 =?utf-8?B?NEwzZmJQcGl0bzRZbEpkR0c0Mzg0UXFhcGZMcFFVZUpnY1pxZXhzcHFFOEJT?=
 =?utf-8?B?RkplN0kxR2NTSitVdGI2TGt3d3lkekpNbkNqLzdQY3RBNUc3Smc4Tmd3Zm0z?=
 =?utf-8?B?d01IU0R2MVVxcllOc0tyY1JNaUJlaWc1NTdzTkFFUDFIcWwxMVY1WjRzbUxm?=
 =?utf-8?B?d0NFTjVyNFZCWUhkSG1BU3llMyt6cmZibFM3SGRDUWx2aVpKZG1CZDRYRWZ6?=
 =?utf-8?B?Rjh2TVI3a2N5T3pGOGVabmxvSWpVblZaaEtoL1hrNnJhaEswUFZnbmFHeEk3?=
 =?utf-8?B?UGJ6aUdhRGtxQXRERUVZck9KMmdzdFMrVk0zV3ZJekR1ZVFlMDN0RnZ6VWpt?=
 =?utf-8?B?aEo5cnZDeHFmMU8xR3RPK255aDRMY1lOM0lqQzhkTWV3MkptdU9iL1lMM1c4?=
 =?utf-8?B?S0JYRWFVQmh0a290cU9iTVo4Rnc0MGYwVUh0QjYwNVVkQjA2MjJ2QnByM1Fl?=
 =?utf-8?B?QkVpWlcxNzhxVkJoSlpoZHdtYVYrVVhLVlFQbTIrUklqc2hIcWRjdnRqWjR6?=
 =?utf-8?B?enFGZkpNUFZieDgvT3owMGgybThFcW5rN29vb21XWUVUOTFrU2IzSlhxdUVP?=
 =?utf-8?B?K2ZjdmpJYzlTN2hTZEtWTGZaYW16T0ppdWNobWZ1cWJPaERwdkdOWGR6bTRm?=
 =?utf-8?B?eXlIUnJ6UVcvbFFuL1VqYjZtVjdFOEpPKzQxcXlqM3Zwa0dLUzhObzY2SWo2?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	olGbNigW7Jpe6dB/WirCL9wzqX/KnQ7xi+2ZV+Mw5Mubz5SWBRZv6XPYAX/g8Qt9BcKY29jEuaykH5Y6DI1Ki+yAfDhWmtMTymEWelD2qcHYkEA8NiWf95vpEm1vu+7mtTw4izDlxzI3sfIFXqL6btnsv7YzGosKNyTFfCa++D+3c9VZccX9T9YqHvmoYwrOJdCHW1vIl3PT9uBrH/IEoc8uNrG89FU5udfLFPIzP/0aMtKEm1xHSTNDRjtRJfL2Z85Cq9o3ggt+uJH83ECABaIgmiZ8hT9+4PtHdaADNMu7CPGfXwLcAoD81cXRguG0Sx6LdTCl8jTlukDWCKsBdbbW25nclCOQswZfjlcX+Oa/72NfRFvVvzxptL5vQxHcxuHNRWpwaR/hXzcEt86MVyEcGTe2VOGs7d6s1VHO+IorJqsc0DoynZbqNyHESgXSViabMJ7opoS945xrbD2lEkIsYgwUE0NUZkwlmxKpxgU4cZF7tJax9TWMO70J6xHUoWxLn+awP5T7Y3dEH6OT7YRHr02OCa9Gk3N9zdsFIkPYdcK0kyttRhAfX0RDQs7AQRFgOBMXF6Zq7hCsposFEDhSo3Uv2kyJRrW9efu80P8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2790c19-e1bf-46d8-8a83-08dc88b1b24c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2024 18:26:36.2953
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 62oZtiVDPKYzreydnElOtGDbqcRlczp3tD1pkihsmfs/+yM2gWa6yuTJiP/4Yc/nqLgxftSV98j7gWKIUEwuvENeS7d6iWlOr/NGHHq4EBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR10MB8086
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-09_14,2024-06-06_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 mlxlogscore=986 bulkscore=0 suspectscore=0 spamscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2406090145
X-Proofpoint-ORIG-GUID: zul75le0W9UebR5QoQDhaKJUmH_8sPQ1
X-Proofpoint-GUID: zul75le0W9UebR5QoQDhaKJUmH_8sPQ1
Subject: [oss-security] vte 0.76.3 released with fix for CVE-2024-37535

https://www.cve.org/CVERecord?id=CVE-2024-37535 states:

> GNOME VTE before 0.76.3 allows an attacker to cause a denial of service 
> (memory consumption) via a window resize escape sequence, a related issue
> to CVE-2000-0476.

https://gitlab.gnome.org/GNOME/vte/-/issues/2786 explains further:

> The ANSI escape sequence "e[4;;t" can be used to resize the terminal
> window, where "" is the height and ""is the width. By providing a
> large number such as 65535 for both values will lead to a local denial
> of service, where the whole machine can be frozen.
> 
> This same vulnerability found was in XTerm back in 2000. The CVE for
> the vulnerability in XTerm is CVE-2000-0476
> 
> Steps to reproduce:
> 
>     Open gnome-terminal
>     Execute printf "e[4;65535;65535t" in the terminal

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
