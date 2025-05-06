Received: (qmail 9343 invoked by uid 550); 6 May 2025 19:18:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9312 invoked from network); 6 May 2025 19:18:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=g7oHFWr4DWlt9a99
	L0gw96R26eh4GMRc3oZmMegpFWM=; b=pw3z0/yatlRkklsdXEcRYVtpWAW55AXr
	npRSnCW9aOdKHj/K1zde2JDiES5DBFJp6dj/r3+Z6CcnZtbDKqQte04T9Xtc3H7A
	m4T7XjgdxERGlL2sELqp2Y1F1pr3eUnVa9xffeHCG4y95DGqy11H4EEUDIhOYeON
	DgisR3DErKteU95f89Lw6Lr0DPX1O58cDdPnfGGjdaVeSLZ9d9ezTDrIMhuJp1Xs
	GewTrpVnRZFmW7pCnBw1UK7gjFRYHYnuB8YOS43wAe1FyxHAfyJaNGyqcTfcQfet
	DjDRKECcbl7HOaYA/PzGTbI8/cXyN3nHvmRqKGSgY+IHkLw4NPL26Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sPBGpMjufQFNso2TKPDthPbg359bvps8pqRf+h/zZl8jf+/u4sycdmE9/uKcNc8iELfecydFvQFHMRu445fzweWcRoP69iumkBu+oKMQWC9aK3LLRQnHff9jHt15jMjCIDWlfClE9InDrdFe++35AKJH5BE0AUXDwFrBW/PA14tyFr9PUxozcnGni8ktFYhAufrHj2QZtZi4JHvTAW/Yd6ZS/RuL6PrBdzWPAmChteAZlX0pWPzNkIah4PbLW4QIHhzjYkXQ7G14upmy2Ap6k/3WCqNBoSJNnva7H3q9URsVjpUzHPZ+q1rBLoVmV0h7BYlP2J/7/se/qVcLBfr21g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g7oHFWr4DWlt9a99L0gw96R26eh4GMRc3oZmMegpFWM=;
 b=UPlJpKvG/QQmiKjAPeBvNIDZq2qEuAKlHWbgGnGdGGgeGSTpBMzRlmjYJan0R/RZ5B5H57M6nfxHs7S2sJ2pswaz2V25OWTrYWFhhWemH1k1zPIV+IZEH2LWsDHoXkX/CBF2F7ynRZe5vov3HUCyG0V4d6wQLIktGaWjPd9C/Fxc7M/qUgHOiK/LACI+dwnuv3+LFVXpJvDgbWg12lhoqpuuoKXJy+a64mcn35ZXb4EjkY4V1PRlKeXMC34BmWPPbp7byb+gyPbkpuBFcvxf9F9OAJR/2DFc35pPqIShJEN5Mkmf22oKja+fbDaCqu0pEJ3k3xPE+z8pUPFWTpA/Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g7oHFWr4DWlt9a99L0gw96R26eh4GMRc3oZmMegpFWM=;
 b=AGi/sinNaYdfqG5AM8FtKSE9Ds1AllrrRVaf/HsP1s6WSWYu2/J1tK8Vrpr+8uUnzBE3kzjDPWylC4HM3bY+wTDJizDfs+epYlNMIlhvaXzg8gG8CEDwyU3IHuKrrGDrVQcvKiXokPbLje7QXzCgZ8LdFmd0yv/h+TMWPGrUlC4=
Message-ID: <120eeb82-4ce9-4507-9aab-79d17c98a992@oracle.com>
Date: Tue, 6 May 2025 12:18:21 -0700
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
X-ClientProxiedBy: MN2PR07CA0024.namprd07.prod.outlook.com
 (2603:10b6:208:1a0::34) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA1PR10MB5888:EE_
X-MS-Office365-Filtering-Correlation-Id: 207322b7-41d8-4c57-f429-08dd8cd2c55e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bG9JRFRvc0RhcDBocS8rUG5NLzlvbHdpV09semg5RGpQcSs1eTVRTHB1dmZQ?=
 =?utf-8?B?UmZRQXhpWjZoZTN2ajM1UnVpYXlIeitrWUs3Q2RacG90ak9Tby9YZkJCVStu?=
 =?utf-8?B?Z2RGVjhnOTY5QlRnWXl2VGtiUWxKQmZNZzdocmlSbFRtMzd3YmRud1JLRnE3?=
 =?utf-8?B?VVozK1JZNXY3Q1BLK1FPK1p4WTlYc2dsK2RYT3ZXQ0NMeGNtTW5ERjNaYlFX?=
 =?utf-8?B?MWpVbTltWk9TK29QMks4ZFViWG9LNTFXVzJIQUs0ZnhYcFZuRzBEZ3NRdTEr?=
 =?utf-8?B?Zk8yVk4wVEhJRjRSb1dHUmhtUjBJMG5NUUJZSWZ3eWkwWllQRjJZUEUrc0Nw?=
 =?utf-8?B?R1F6VUhqaHpnR1YwU05ScE9rUGloSGo4eFdRVlZhYzZIdVFqM2tRaGd2Wkpw?=
 =?utf-8?B?YUV1OW5QSHI2VHlDZ09QUTNtOFNXemdMdjFIMUJwcU9hUnVXb2lnUzdVWm4v?=
 =?utf-8?B?YXNDK2tEMXgzdVNNMmhmT2lPd3Bnam1CSUViM04yVC94Q2dmdHVIdHF6YW1q?=
 =?utf-8?B?WVo2QVdLZXY1cXMvWmFndU42amZRM0NvbDZXQ0YxM3NZbTRLS051dlMrRG84?=
 =?utf-8?B?RjdKQ1JwcUUrQ083TUJjeTJINXRGNVh1ZnN4V1MyUnFRVGtMVDE0Y3NqQ1Nz?=
 =?utf-8?B?a0hyMUxZVTF1YUwySWpsT1ErdFg3cyt4V0pXSWNtRUFGOVdUd0gxZWE4ZG1k?=
 =?utf-8?B?OEV4NzhHRU92VE01U3JlVzJEdlVYUXRjK1EzYzNrQnVXVlJhT281S1kvbmJ2?=
 =?utf-8?B?ZEJtV2J4bEFkZjFpR1VmLzAyV2VieTdHU3VLNSsydXhSb0FBRUQzMyt3dUEr?=
 =?utf-8?B?NFdyZnZ1aS9CbWxtMEdFNjdlTkF3WmIrKzVCRnpzYnR2bjl2OXV1b1VuVU5u?=
 =?utf-8?B?RUJ0b2RrMk5McE1PU3MwMUJaTnhSc2UwS1h0QUU2TS9ES3gvY1FHd0xyck5T?=
 =?utf-8?B?VXBjOVV3NlMxZVVVbWhrZ3RyWFU3K3RHZkpFQ1hFQ0s4UkdFNURDZ2NZeTZa?=
 =?utf-8?B?U3pmSjhkSE1CeXF3TDUrbzZyKzN5WkhFWWQ4YnBxZGhjemlPSnpRMEJoaEZ6?=
 =?utf-8?B?ZG9sby9UNkhmU0x2dDRBUEpaRitnb0FIdTNzYmtPMjI5SG1aZDYzaXJFTW1U?=
 =?utf-8?B?YkpKUUVVWkthN2lVS0VDY29yU1ZZRzRyVVdackxJMXJ6MHh5VUtTeGNlM05O?=
 =?utf-8?B?N29DVm5ZTWdIZXdiUjlWVS9UcHlkMDJiUEhGdVRZc1RCUFpYMEtsSkZDRGkx?=
 =?utf-8?B?bGJNMHdERXQ2VzFJZ2d1dTY2dTVZZklBamlHMnorKzQ2eHRsQXBqL20rYjJZ?=
 =?utf-8?B?Nit5QzJLdUR1SG1acC9JcWVMU09SQ3FseTh3eUlRdzNEVzNETXdaQzFMNjBp?=
 =?utf-8?B?L3RvSmxtWlRhU2hyb1dReEtQZVluS0dhbUJKYjVNdXFqUUVkMlBDOEF0cUtL?=
 =?utf-8?B?NXRnQTdsL0NINmp3V2xKaGpDM0hzMFZJWk1CZXpnY2dnOHNIK1hjSVA5bHVL?=
 =?utf-8?B?MTJ1dng0UlNQSlpOVU5EU1FTZ0Jma3BmcFdVZ0k1blVtenoycTBTek0rZVJ2?=
 =?utf-8?B?RzQ5dm9ESzA5MmNQNkovODR4N1lidU5HMVVjQkxoVGphM0NoUFAyc2VtUE1s?=
 =?utf-8?B?SzB1d29veWhaNzhrS1RYY3NIM1liMnhva000SldZcUpWUCs3aUR3d1lINXc2?=
 =?utf-8?B?V2I2MjFUY0YvRnVLWkZsMmRDay8wMkovK2w2eHZERzdKU1ZQdmhzcTRNSEdE?=
 =?utf-8?B?cE9kY1VzY0FMZmR3YWxidjg4QkN6S05hQkx5WndSSkNjQnFoS3Vyd2lFcExQ?=
 =?utf-8?B?RWhSSVVaZkNyQy9qMEZxcmtTRkJiM1YzeUxOVGYzMVJEREhqTEFwbUZ4VjJu?=
 =?utf-8?Q?eVxw9XM/8lHEZ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OGFHanhwSytyK3NNT0RzZ05uRXVwWnNsRk4yblY4NjBSNlFXWDdVWWpqUHUr?=
 =?utf-8?B?ckFYZno3RWYvSDNNOG1iOHFreFRuNjhSNzlkZ0wyaHlRYm9vVUR2RW5kcXJZ?=
 =?utf-8?B?RHQvUmFXYXBsN1FkZVVlRHJTcm9zZjJPVkxHdzdFOTY5Z1ZLRjhLOC8wc0xW?=
 =?utf-8?B?ZGJGNHdCU2FMdUtMUXhGNlpNcThmemE3N0dFaU4rRm50blJoZXNWa0Nzdyt0?=
 =?utf-8?B?Ny9sajlkWS9Gd1pNSG0zQXFIdkQzOG9RR0VsWG52eWpkUkJqbWhZQTlzN3B2?=
 =?utf-8?B?OHM0RDhBTGs3aDh0M1pwN2ZqL1FIQTBrQkc3YitVcXgxTjVuT04rSndyc00v?=
 =?utf-8?B?aytpV3hvdkduWHg3VU5JbTRQVkN4bDUyZ2dWRGI4cEhtaWxjSnZFNlNmQ2l0?=
 =?utf-8?B?N2NPM01vd3RqRnRCdk9JNGg0NmpWbnkyUE1ZaXVCNGlBZHFiUUJLb3NuSVBs?=
 =?utf-8?B?QVZCU1lQNEk1QTd0cWpncHo3dEE4a0RQdzNFMmRYMU9ZSmpKdmN4UFVoNUNk?=
 =?utf-8?B?R1hsOFNtc1lkTTdHOTVXTU1GRFJuMmtXTzVUWDdqa3RkNDdsTm9QTUpPSytn?=
 =?utf-8?B?WEQvbTRCbUJzSEJRT1o4MlN5UnJIWG5DZytYV3FiMGhDaDFMaWVxRjFaSUFh?=
 =?utf-8?B?NTh3K0g3L2tla3BiVllYWnhjU2IxbE8zQnE4cm55enJSOWZpL25aTWRWdWE2?=
 =?utf-8?B?S3liRGtvV3BCS3hieXNPd2JhZGsvU0JROVl6bHVQQldIcWMzVnhScXZwZUpH?=
 =?utf-8?B?dXhJYWd2dkZZVUlvZEdDK2VrSHh3aFcyVGwxbFZVaTBuYTZQUCtMcE04bk5H?=
 =?utf-8?B?aTNEVVQ5ZmFUYnlKdXNRK2dHN3lKNXRqRnI5ZEY1VEw1L1dtZWJYNGpzWkp5?=
 =?utf-8?B?bC9sYis2akdubDdpMm1DS1Q0MmlIRzBmaDJJQmFUdUNUTGtTUFRteUhudXV6?=
 =?utf-8?B?aklTcjBPTjhoM29tR0FBSjV2elRiZFZwZThiWlVHOGFiSEd6M3l0aUVaOTZh?=
 =?utf-8?B?RDM2bncvN0dwa2FES1h0QWI2ZlYrLzFSY0Z3NDJ6akN1MFY4R0tKbkVxbEta?=
 =?utf-8?B?L2FPWVpmSDVPa01sblNSZURKL3k2ZHB3dStNWGdzQmU3STYxbUdDM0JTLzZs?=
 =?utf-8?B?MGVDYkNHbGRIVUgzZXl2TnJ3czdLSmE0TThVY1UxZkppT2UzV3F0bVVnZVJH?=
 =?utf-8?B?dkMrMExqdEkrZzhEOGF4R2lHNkxScDJScmpEL0VuV3NCbWQzWmp1QzlRT1RM?=
 =?utf-8?B?eG1BNE1ZMFU4dktEeDZKaWdGeDlCSVNjLzJlTWt5NGpjVXZ4V1NIN25HelIz?=
 =?utf-8?B?QVc5cXQydWhNaStxaWdLT1Noc0FhUjJRVkpFL1Fkd0w1ZWhLWEpFUWgzeEJ5?=
 =?utf-8?B?ZUpkcXlaRWZqaUxZSDR6VjZMR3VnRXorQXpGWWpwVW03eVVLTllxaXduR0lB?=
 =?utf-8?B?SXVMR0UvaTYxVTZybDN3MWZJK3o0V29tdnhvSWJHenh6ejBHenZOVUg0SXVt?=
 =?utf-8?B?NE5oN2g5ZHhmRE13Yms2Kzg5N0s2aGdOQXVlaVBKTWtXV05KL2h1QTBNZVAz?=
 =?utf-8?B?Y0tYQjk2Q3Z4d2s4SVZBcm9PTnZScXExSCswQTZ5L3p1Q0cvaXpEa1k0bmJC?=
 =?utf-8?B?dEl4cVFPRzRJcGNCays5R21FMFM1bUV2K3Q1NTBjUk5LY1VjeTM3SnpVY3Nt?=
 =?utf-8?B?WUpZb2ZLYTJUWkNOMjdWbDUrRVFOQTdIZHovcUVtNS9VVy9oQnoxV1Z4OW1j?=
 =?utf-8?B?OHpTTDdyRG05VmgrUWI5cUx6Rm9tSDJMSnhpL1A1T3dNSERIMnlzaHgvMHJI?=
 =?utf-8?B?QmdRSFI2M0JtYnB4ZkE1emhxTzdzVmoxSFhKL2l4M0hVYVV4aVZjdjhsWVVl?=
 =?utf-8?B?bjVUUjF0eGh6R2NscHFIZEQ5WnhTbVV6cC9oTVJhVkxOUUFFOFozemhhcTdM?=
 =?utf-8?B?Qit6Rk5ON2JjV3J5UnArN2w4RDBBVFg3RUI5UHcyREN5RGRtVUQwWUtZOGxC?=
 =?utf-8?B?cmN2RWhMWjMzeGVHQVN6MCtEb1l2c3lydHJEZ0pCNklTRkhNRU0rWEFZd2tG?=
 =?utf-8?B?U1NCL2pIa0grRUZHeEpRanM4MndhSDdRR1lCeWJlb0NQVm9HMzQ4ZkUrMmQv?=
 =?utf-8?B?blVlbFdaVlV6R0tlZnErdGxKQ2F1ZFRWbzhWejRWZDFBbEQ1R2pVM1RadEda?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	5/bZ/yFcS5hCa1aD0m4VFFLjZYZHv4iag3/JKokfEqcV2rSUHnQE6vWFLD9RjJriUiNLpGPIi0pLA7fvLS8xoOph7j5mLeNgpzP04+/a0dtSUdEtHn3lWlyYNU3LNSNQsfmu8YoaxOZh/kdHlr81qlIgPYtM7iWWRNfVYHFbxk1a/QkvmQqQmKVGE3GEM2dZS4LBV6ha9BZDABAAqRtEasDGxUXpZ+1Nx1ZI0BGn7Wnqc7Ca0tX1FLvFEjMLlJMVXKCPyXaukFXIWx8vcN6SvFphAO2AUCO3Afdh0LqibFaAW2mtcXuQiO0RKnurqpSKsKQTi691Wyy1ab52wCQ2mtAlNRBFo1socNqA5RKakZBLhZKLkH72UtlW5HJHhBod2ebD7XC+EYnPqf3ygJvdMbQwahUdRsijuDATtZgN8eRUxa0IumeWIfF91NbZuHSS7ewy4lxzNn+JOemz7rUC6Ko/rMjvksvx7+Oxq6h5jsmD+2c/xpivPsal72ojTlrC6Ljs9Tuj8vNZoe/Cf6kElBOtlsbXwNCjI6FjDbMG+avwUkDcQTRsQCkZoViXyniOQBOFDHV8CDz+42U8lFcV9iMvae/naYn3EFaRd9pRaJQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 207322b7-41d8-4c57-f429-08dd8cd2c55e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 19:18:24.0248
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5t3CKI7wWClPGQaKnTPJPYmeDilT6WFobtniBcj6UIV9LwNLvgoJd8tYhK22SLVHDvOjNexkxzUruX9a4C3niZLogagTcYmrU6uFUO8DfS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5888
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_08,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 malwarescore=0 spamscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505060182
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE4MiBTYWx0ZWRfX4BzdqNEFcxsT Abb6ZzFdZ7u0G/NBdWi37RdD5+NUYEaavGv47Z8Cps2Gsd5ku2rxzQ5pRfx4xX/5+9wUFV9WzW3 qGsDXHxzSzxEbkELKTGuoHWy5W5j6DvbxXbI3ff40/zOKNj9l0CpEac+AMOAE6fMxobiSvBRAF2
 OSSppzyLTHx9/cN28JgsqTC6l5p+IM/WHQAFYutusd13qqbs2Zy6I0A2zrcQEcYtanY96ccCWLn hJykT8QUhKuV1TJoVqWlFd7pcaxNlKWwY7yna89+P+3EW7rYmn847zA3owqSg/u3TFNItli1xWD TwmcW+CFDyFWnK+sswRT+P2ieLnqW7TvvAcXjoaxrMONV7k/j0SkGSlQuw/C7M1JHVGcIFaKLER
 Y9imblZcHP7EU+YrwQ9kYxd1b9hEbDsWpLY+u1CWSzY0P2kI5P/+8GtcpQVquwwRoe34lfyA
X-Proofpoint-GUID: OIqLw1cK8lVE18Uqj3CIca6zj1BOVQ_A
X-Authority-Analysis: v=2.4 cv=c9qrQQ9l c=1 sm=1 tr=0 ts=681a608a b=1 cx=c_pps a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=1XWaLZrsAAAA:8 a=plf8rDjJAAAA:8 a=yPCof4ZbAAAA:8 a=qhJc0Dj1n1vRW4j_EK0A:9 a=QEXdDO2ut3YA:10 a=JWTSs7K9Rhv-lrTctFka:22
X-Proofpoint-ORIG-GUID: OIqLw1cK8lVE18Uqj3CIca6zj1BOVQ_A
Subject: [oss-security] Go 1.24.3 fixes CVE-2025-22873: os: Root permits
 access to parent directory

https://groups.google.com/g/golang-announce/c/UZoIkUT367A/m/5WDxKizJAQAJ announces:

> Hello gophers,
> 
> We have just released Go versions 1.24.3 and 1.23.9, minor point releases.
> 
> The Go 1.24.3 minor release includes 1 security fix following the security policy:
> 
>     os: Root permits access to parent directory
> 
>     It was possible to improperly access the parent directory of an os.Root
>     by opening a filename ending in "../". For example, Root.Open("../") would
>     open the parent directory of the Root. This escape only permits opening
>     the parent directory itself, not ancestors of the parent or files contained
>     within the parent.
> 
>     Root now correctly returns an error in this case.
> 
>     This is CVE-2025-22873 and Go issue https://go.dev/issue/73555.
> 
>     Thanks to Dan Sebastian Thrane of SDU eScience Center for reporting this issue.
> 
> This security fix only applies to Go 1.24.x releases. Go 1.23.x releases are not affected by this.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.24.3
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.24.3 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> Cheers,
> Cherry and Carlos for the Go team

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

