Received: (qmail 11513 invoked by uid 550); 7 Sep 2024 18:16:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11475 invoked from network); 7 Sep 2024 18:16:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:to:subject:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=a
	BWjNuZ0YzJCvYSqApxBMioZdAcBGbPq79p61NJuw9M=; b=BPZwMJSFYbpDvTeiT
	eKC4j1waAIetYm379QxAKDxKNuKYxvgyWBJQzrHhK6kVy49wafNqGvJDl938DjP0
	2x4z0t9xF038iM4olGq8WQiPCXnQ9H070G0gx3Au+fMDRZT4Xihlzt2s0XPXuell
	31pdUfioXtkYpL94zXZlUYxXLDtlRpvfz1l/jwhvWE4LwuQeoO3X6a5YkAFLXdz+
	Ngu5Y6WGmriAaXe6wkuJma90ISJ9SHB1XiC6kUrPmGi3XuZex/C0NOellQHySqnT
	7j5ahmP+OCbRiCONOpcwlqylrvL7+Fr/gSgH3bwl9Y+hTV2Mfqau6WzjTupPSOtI
	fevDA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xz3ZJoDp0T0VASPGXqhhGJR3rmlsIxTZxcJcVjZUZygMfkH2kv2+ClJzcFS06mObD4vOv6ASbd6xzJtOQ/G00MToPiks/G2X7i0wBhupPbuxSheK9Cj+aBlLLUizezzu3wyBa7gVvzfL8IBe4917xqUhs0dhazHym1sPgQipJxNOvT/PNJaVYWLhpC/Kgae3vpE8jiAF1X7gWUEl0x8Kz2/wvol+aALAqwNnQUxOk1ILAPn1x4k5eS6Nz4+P9chZbRuUNsf72WcFhyPYrFLQGMETQ4X/sBV/UdTdRX2JMABA6289Jjp4pKkvUOfYm+hN1a8Jl60tBQIa09iqcT8M4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aBWjNuZ0YzJCvYSqApxBMioZdAcBGbPq79p61NJuw9M=;
 b=YgLVnyjkmwKcx88XXBc+tskfwg9UM9aZXGyAXJUz23THoKOCglJw2zVMguknr1G43IiZOf95tOhgGhB13J35LP8zpF9Xx1d5bTSsOiT7fhmsaMjO5ZpLkeowgEHHO9/zzfcOB0/eZkZBFbOezibjhSm1moci6xqKfpvuTL7P3u631a67pdfCoeVLoomKrvfmAjtpn4SmVfsiroxK0hWJwt5rI2+x+HgDQCOHYPmXxYQA7DCkOovBJI5tZb8bcxL+RWWagxZBB2o9yzb09e04/UUWQtztGK36NTpwxMieygGKRKWuz4Sp2/yFboXAbSHubbFEFxuBsrIjtWVa9V5taw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aBWjNuZ0YzJCvYSqApxBMioZdAcBGbPq79p61NJuw9M=;
 b=Eye3CHLhwRShV58bKHw2Ty5PHFvf6mRRBy2WUxiJAE8leVhMEPmiUwuh9yiXHGOivg0wN3KS70sIDUpdg/T5pzoRK6KXjxzXs0eW+NsWAFDEpwI+uAefitWL+keFbwPzQ+ZwjbTFklNQG4MoJa4zHswHJHcK8NPqbENEAMUSaWw=
Message-ID: <96ec222e-8e99-4be3-a35a-457ca7e2815a@oracle.com>
Date: Sat, 7 Sep 2024 11:16:09 -0700
User-Agent: Mozilla Thunderbird
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL1PR13CA0267.namprd13.prod.outlook.com
 (2603:10b6:208:2ba::32) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA1PR10MB5736:EE_
X-MS-Office365-Filtering-Correlation-Id: 018611ff-5a78-418d-2d41-08dccf692792
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QnJPa3QyNWtzK2hVdk85WHRlR2U0bkpXNG5LRnhLTFBXdU5wWG5vOE5pOEhk?=
 =?utf-8?B?UnpmN1NyV0dXWU9RcStkdzhvN29EcHJMOEVVTHo5WTFEQnhrajFQcVJHRTlu?=
 =?utf-8?B?MmM1SnlRWnU2VmpSYmRaUkFmMDhZVFhsUkcwaFoxSVY2OHBmTjZHRVMvRkZK?=
 =?utf-8?B?eEViWEhhdms2c1dmdnNJN0xNc2hxU0xHUytjY2l6Wm1NcmhTUDVYb1c1RitG?=
 =?utf-8?B?emNjMUNHQUJKK1drRXdCZHpoM0pMVXhTaXEzS3UzS1FjaUgxcDF0VFNoeVI3?=
 =?utf-8?B?NEFQTFA0SFl1a1JwYkVZT1dQOCtpOERiNlA1R3hUSFI2SmI1eS9lMy9ZbytS?=
 =?utf-8?B?QUNVM3NUZUlvMnNBQXhGZzhPRmNUMUV6UDNqRThqcE1mbmNzMG1RUmU2SW1s?=
 =?utf-8?B?YnFCNlU1QzdpWnIxUVkzM1p0Y3BzalBKVUdwdmpWc0ZBVHR5dUh4aWVnSng5?=
 =?utf-8?B?ZjArNmlGUGlQRUVhd3pDSU1JNnhsRXV0eE05R3UxZDVadDdONSs3Y1VrRWFO?=
 =?utf-8?B?c1hINGFRL2pzSXY5djErdEtMZDhRVFBjN0k3THBnKzl2RUl0YVhzWm5VYVFS?=
 =?utf-8?B?ci9qRG4rYVIvZDhZb0FPSzZ3cGRXdC9FbitjekR1SHVmVlZWNGxEODJobFZD?=
 =?utf-8?B?YVhlOUsway8wbEk2bDJHQWRmcUppUW5jOVcxb2d3Y3llOG5mSlZ3dGhWN3px?=
 =?utf-8?B?clJDU2lSaTg3allDb3Q4UW56Q205VGVING56WjBPNk9RTjQ2bVMrR0lha2RS?=
 =?utf-8?B?M2R3OFprcXc2NkhvbWtKM0ZtZHFnMGV1Z2IxV3o1My9ZcnRwekVLalY4c0tm?=
 =?utf-8?B?ZjQ2MEZaVVhTeXhMWFdORThHQUVBeWRwcmpQNm14Mi8zck95alVaQVR6bjRp?=
 =?utf-8?B?Tk9aRFpVUkZVTWlaSlg4RUN0NmRzcC9EZjNUVWtyUHovemdyaTVVemx0Y2JV?=
 =?utf-8?B?N1NXVFk4SWt6NzFwLzA0VVZVUU1EV1JnNmhEeVJPZTNkL3NVaC9TdGExVnhO?=
 =?utf-8?B?VGxxNE1lSFhsZnZrbFlFZTczc2wxc011ZDJ2cFpBeHJTdisrT2Q3L2pVZDMv?=
 =?utf-8?B?eDhuejQwa1V4VTlTelErM3pZaytEVGRqTVZOMUNUSXNaYmErK3NmVWYxdkl2?=
 =?utf-8?B?LzA0cldvcVZ5ZWJoZ21MUzEzUW9hZ3dFVHFqWXlTQmtwWS9OMURabTNqc2wz?=
 =?utf-8?B?QmlnNE1MQ1FLcXJQNENwU29SQS9MNXN3dnpoOHNpMXZ2aVBRUU02enhnSGlu?=
 =?utf-8?B?ZTJiSCs2TTJ4aFdRcnBhNVhydVJuTVdYdmpIN2puQytMRzRiL1pSVFgzRXY3?=
 =?utf-8?B?Z2x2Z0pVeXF5YzE0SVJjSnA4NkFNMVRxZmlYbzlUZmZTSCtMdFBUekk2RVk2?=
 =?utf-8?B?QkVSWXc2WDZtdzJzOUJyS1VsbUpoQ3NBNkUvY2VreUF2Vm1OaDYzNkR5NVp0?=
 =?utf-8?B?WjFVYUZkdWdGNUMzYm9qeEU3RlI5SlJwQks1YkMySTVTZkF1RmY0M0xQOXFN?=
 =?utf-8?B?aU1PY2VBU0txL1RwVi9nZW8vTTRIQkFMZk9RdFVubVJhRXBhbHh5M2gvNmRa?=
 =?utf-8?B?YjE0NGgrRHorZHRDdWhGNHE4REJJaGFmRzJNZ2htK0Z6cnJHNHRGeHhZcXFG?=
 =?utf-8?B?TEN0RjhlZ0U1OGZLQ05pb3p0L2lpelVyMEp5SmZzeXdHVUt2aXIzbHVvd0ox?=
 =?utf-8?B?NGd1SVRHaE1mdXVJd0srSzRCM0loTjNBUEltaTJ1b3hvZnJPNFFMVkxkSnUr?=
 =?utf-8?B?VWNHMkNwbXMzSnRabkViVDNxZlJUQmUvUVQ5emN3cloySnpSR1lCK0hpV3cr?=
 =?utf-8?Q?nCVawBF5MspzHSOcLJ/l7lDf2SC3T6Ko+TTWo=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eUtoaCtsOWg4SmZ6a1U3YlBRYVdZdWhuZFpDSGE4OTROUUQzaUo0bUxxMjdM?=
 =?utf-8?B?SnFQbWNUWEJBTXl2dkdQNHRKUHVqVXR3YW1UbkY1VU15NnBVdDc0L3ZFb0dI?=
 =?utf-8?B?SkpHNEpCRXNyUkIvR3VSMm9QUzRhMXJaZ24yOEE4VUNLUFl4Y0JuVVpnenVh?=
 =?utf-8?B?Qld0c01FNWViL2NIeHdZejdBTktMUGJNdGd2VzdrZ1gycy9xUktuSk5yazVM?=
 =?utf-8?B?amcwaU5TSWdLVGFZNzJIeVBlNDZpUzBYL25Sc1c4OWppNUI1ZklNSXlhc0Nn?=
 =?utf-8?B?eDBZakdHSGZHTkJlZ2hyMDVOY1k4SEVGOEl4cHdjMnQ0Y0dMSUNDeWdDQlVl?=
 =?utf-8?B?YnRLT016K0RQZUtFZmJZWVJPMHVUZGZOSWtURjZCQTNUOW5IRDFQUkliM1Nq?=
 =?utf-8?B?YVJIQkQ5VUJDUWlGR09xWlpQV0VkRWcwQ0VQekFmVytNdEhTemN6SzM5TTBi?=
 =?utf-8?B?bjZSeTczOE9UOGg5d2xZREVxQnhRTlNXM1BNTDhrck00WitiOTE5clV6aUEr?=
 =?utf-8?B?dlZMa2kzSkUwb3Y4K2JNYmplM0Q5dWRBUHdzWnJyUWR0UDVnU1NnQ0FEL3pz?=
 =?utf-8?B?OGlQRWp6ajBHRWNsSGx4NFFWVHIwU1FrM2oxalA5cGZKNkk3bXVUcm1ybVZB?=
 =?utf-8?B?Q0Z3c1hmTWlIK3A3cXZJWFZ5b0Q2QjZkdHdrblVOWTNobEJzOU92T0prYWlz?=
 =?utf-8?B?YjVWN3Z2QmgxaVNOMnNaTlVzMGo5SnFORG1EUGVzQ2FoRWZaN2VmNkpQNU5T?=
 =?utf-8?B?Y2lUK3RlMGVBWnpiTzJHY3VaZWlNZmwzeFFVemNkQUlvMmdINDgrS0MrTDRN?=
 =?utf-8?B?b3BnRStsWGJTTUxzK21nRjQ1bUZVaGx0dnZmcHNOTGxoc1ZhMTBLdFNKYXVD?=
 =?utf-8?B?N2MyRHRKRXIzeGZRaHNGTURZUGpuTWZvc3ByYm9rSWQ0T0J2eHFBQTJDZUtv?=
 =?utf-8?B?TlZtR3hIUEIwTzhnb3pyTCtyR1MrNVM1akxZUzkrdng3WDA1c2tuS1dpUW93?=
 =?utf-8?B?K05aZ0dqaUo0alBMd1hjSVg5OEZDTW5Tb011ay9oODV3dkdHQTlJdEx1a1ky?=
 =?utf-8?B?MDVHd1ZjR0FuMFNrODN5WTB5SjFMdkJPTmhCOXM3anQwbDRTYkovVFV3a1J4?=
 =?utf-8?B?N014VWVzWGp2SnB0YjVmQm9YTjYra3FoanVtTnZuRlZMT0RRUCtBZEdRR3U1?=
 =?utf-8?B?L1oxMmZ0MzY4TmVTaUM0V0dqREVLZ2JxdnR5UXM4ZUpOTUQzemE3VHBNK3ZT?=
 =?utf-8?B?UHZocnJ6MnR0cXBqZlB4TWp1eTc0VmZKV0o4bkw5VHkzODVWUWs2emRKalJH?=
 =?utf-8?B?NEhXRkV5aEJXb1JGREUvS1lNcGVYS0F2WHBvSEc1Vm9sTXdlcU9KRHRtcTlZ?=
 =?utf-8?B?eHkzVENtbDRGc1NtRFRMUkFxWjdvcTIzeFVrc1g5cEY3QndCa1Nkd01TOTBW?=
 =?utf-8?B?UkdNdUp3M2FxZnhUdVJEOUpYZVVBaGltY0d1QUVGazhBTzBGUzlSTHlBTE1X?=
 =?utf-8?B?Wk40QWxhcDJWQnFacHg1MlJNMjY5dDdQTjkvSGI1SUVYM3RGQURmNkxIaW1N?=
 =?utf-8?B?K1RiM3FVcHBwY1I3VnJSNElFU3VTRVRBN3pxQWNyRTIydkpON0pPTkNsdjlS?=
 =?utf-8?B?RjhvNTFCeUJXd3ZKRjlKRzZsTGxETjZ3TWpvSUtTQkd2MThmOXJYZU9zN3Q3?=
 =?utf-8?B?eERFRW1yZnp6aFhjdnBvTktRTDhycHJiUVVrRmJ4U2FJKzFTaVBFcGd3UWZX?=
 =?utf-8?B?L3VnLzlIaElKNUdyNHRYT2Q1SDZuaHBObnNmTThYRk0vTU1UWnpTOHA5SVJK?=
 =?utf-8?B?aUlwY0l6Z0M1WEZOTjZaYmNhdC8xZnVLV0dvMSszdm1VZVI3QXRWd01DOXU3?=
 =?utf-8?B?WTkwV3BIYXZBTzZCS3pkVVkya0J6aHlIenRUMmZNZyttbjVBUWpvUnlpR2V2?=
 =?utf-8?B?WElGc09KOUdUS3ppUDVMbXNWbTZ3dmtqY0daOGlXdXdOSnB1YUtsYzAzM29X?=
 =?utf-8?B?MVdjeVI2bm1hYjZ0R3NOQmd5UDkvcWovWFhpVFpUNEJVVzRNNHN5NU5LZC9p?=
 =?utf-8?B?a3VxWi9neVdqNnE4M09Jb3ZoZE44Q2pnMG5tdCtQYkNLbUlJemZmV3ZSemFm?=
 =?utf-8?B?WWtXL0xna29mYUljTkRrY0EvdFNNem52NHVaSU1JWlorZ0ViTGZDMCtJOXhH?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	0jNy6dN48IYjn0XYBzJZmQhZomt+un76GXqJF8eamIi5BBVUL5CCM5qASIEgy1l2jRMkpUx+RK2ft1X0mVcfdO+cIb1/KXh+qVD//MHlahQgOSrQHag6UnAKx3HQ+Osq5Fln1voWt88LF5nmtkirCvoREydyld5NeGvxLz35S0xIqJ+6tpjKxUIkTfgKSkz1ngUktG5gaJbFOuwmVw74RynMVhS3I5l2gFxQV/VGRnR0nq0y7zBiq+FUHbvCeCpRT2FoCAkJWJM1+GEguQJ51Vkcasu/0LoSm1/2mohHsD2u4bQXUSSLeD23kEzA/V0MJLhKD+wFZ+W3dWy62p1pPySbDpYC/xZcQ4ch7Ks4Q3Sf7g/BT38WGl64bDKm2a+FmXAbjLoW/ZLpufNihaCMOTYTTWC08icgw22oCFLVsLfYTvhv9ZH+YqCg2V1M5T5BelUgvt3mRv86U+mA0YrMY05MLqkopvT8mUdVmESOaBmEBa1bXcpyOaMwMw/klVR4A0+Ac5jfuKJ7s3JHK1zkm142H0+LWghecTffp0myaFEbwOA0h1FZMU7w4sRFBZwWhv+zPH+jAoZQAncRrVLmOgEz1Orrii6godQc/NQ1fpM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 018611ff-5a78-418d-2d41-08dccf692792
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2024 18:16:12.3262
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: APurGapOcGo6ruAVG+lYZsJIi9CMv/yD7BAUSnmPlS+EveYOLr0pGWd5v8OXjO0erbS9cYLmxkG44fyFu0smtHk/bFlBFM7PCPvw8wYr880=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5736
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-07_10,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 phishscore=0 mlxscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2408220000
 definitions=main-2409070150
X-Proofpoint-ORIG-GUID: ilPfuAbf5-sLrUiOOjjxBP4rtTwouafF
X-Proofpoint-GUID: ilPfuAbf5-sLrUiOOjjxBP4rtTwouafF
Subject: [oss-security] Security fixes available in Python 3.13.0RC2, 3.12.6, 3.11.10,
 3.10.15, 3.9.20, and 3.8.20

https://mail.python.org/archives/list/python-announce-list@python.org/thread/N6H2D7I752UM3VZ37AVSBOC3CAGAMUX6/
announces the release of new versions of python for the 3.8 through 3.13 trains,
including the following security content:

> gh-123678 <https://github.com/python/cpython/issues/123678> and
> gh-116741 <https://github.com/python/cpython/issues/116741>:
> Upgrade bundled libexpat to 2.6.3 to fix
> CVE-2024-28757 <https://github.com/advisories/GHSA-ch5v-h69f-mxc8>,
> CVE-2024-45490 <https://github.com/advisories/GHSA-4hvh-m426-wv8w>,
> CVE-2024-45491 <https://github.com/advisories/GHSA-784x-7qm2-gp97> and
> CVE-2024-45492 <https://github.com/advisories/GHSA-5qxm-qvmj-8v79>.
> 
> gh-118486 <https://github.com/python/cpython/issues/118486>:
> os.mkdir() <https://docs.python.org/3/library/os.html#os.mkdir> on Windows
> now accepts mode of 0o700 to restrict the new directory to the current user.
> This fixes CVE-2024-4030 affecting tempfile.mkdtemp()
> <https://docs.python.org/3/library/tempfile.html#tempfile.mkdtemp> in scenarios
> where the base temporary directory is more permissive than the default.
> 
> gh-123067 <https://github.com/python/cpython/issues/123067>:
> Fix quadratic complexity in parsing "-quoted cookie values with backslashes
> by http.cookies
> <https://docs.python.org/3/library/http.cookies.html#module-http.cookies>.
> Fixes CVE-2024-7592.
> 
> gh-113171 <https://github.com/python/cpython/issues/113171>:
> Fixed various false positives and false negatives in IPv4Address.is_private,
> IPv4Address.is_global, IPv6Address.is_private, IPv6Address.is_global.
> Fixes CVE-2024-4032.
> 
> gh-67693 <https://github.com/python/cpython/issues/67693>:
> Fix urllib.parse.urlunparse()
> <https://docs.python.org/3/library/urllib.parse.html#urllib.parse.urlunparse>
> and urllib.parse.urlunsplit()
> <https://docs.python.org/3/library/urllib.parse.html#urllib.parse.urlunsplit>
> for URIs with path starting with multiple slashes and no authority.
> Fixes CVE-2015-2104.
> 
> gh-121957 <https://github.com/python/cpython/issues/121957>:
> Fixed missing audit events around interactive use of Python, now also properly
> firing for python -i, as well as for python -m asyncio. The event in question
> is cpython.run_stdin.
> 
> gh-122133 <https://github.com/python/cpython/issues/122133>:
> Authenticate the socket connection for the socket.socketpair() fallback on
> platforms where AF_UNIX is not available like Windows.
> 
> gh-121285 <https://github.com/python/cpython/issues/121285>:
> Remove backtracking from tarfile header parsing for hdrcharset, PAX,
> and GNU sparse headers. That’s CVE-2024-6232.
> 
> gh-114572 <https://github.com/python/cpython/issues/114572>:
> ssl.SSLContext.cert_store_stats()
> <https://docs.python.org/3/library/ssl.html#ssl.SSLContext.cert_store_stats>
> and ssl.SSLContext.get_ca_certs()
> <https://docs.python.org/3/library/ssl.html#ssl.SSLContext.get_ca_certs>
> now correctly lock access to the certificate store, when the ssl.SSLContext
> <https://docs.python.org/3/library/ssl.html#ssl.SSLContext> is shared across
> multiple threads.
> 
> gh-102988 <https://github.com/python/cpython/issues/102988>:
> email.utils.getaddresses()
> <https://docs.python.org/3/library/email.utils.html#email.utils.getaddresses>
> and email.utils.parseaddr()
> <https://docs.python.org/3/library/email.utils.html#email.utils.parseaddr>
> now return ('', '') 2-tuples in more situations where invalid email addresses
> are encountered instead of potentially inaccurate values. Add optional strict
> parameter to these two functions: use strict=False to get the old behavior,
> accept malformed inputs. getattr(email.utils, 'supports_strict_parsing', False)
> can be use to check if the strict paramater is available.
> This improves the CVE-2023-27043 fix.
> 
> gh-123270 <https://github.com/python/cpython/issues/123270>:
> Sanitize names in zipfile.Path
> <https://docs.python.org/3/library/zipfile.html#zipfile.Path> to avoid
> infinite loops (gh-122905 <https://github.com/python/cpython/issues/122905>)
> without breaking contents using legitimate characters. That’s CVE-2024-8088.
> 
> gh-121650 <https://github.com/python/cpython/issues/121650>:
> email <https://docs.python.org/3/library/email.html#module-email> headers with
> embedded newlines are now quoted on output. The generator
> <https://docs.python.org/3/library/email.generator.html#module-email.generator>
> will now refuse to serialize (write) headers that are unsafely folded or
> delimited; see verify_generated_headers
> <https://docs.python.org/3/library/email.policy.html#email.policy.Policy.verify_generated_headers>.
> That’s CVE-2024-6923.
> 
> gh-119690 <https://github.com/python/cpython/issues/119690>:
> Fixes data type confusion in audit events raised by _winapi.CreateFile and
> _winapi.CreateNamedPipe.
> 
> gh-116773 <https://github.com/python/cpython/issues/116773>:
> Fix instances of <_overlapped.Overlapped object at 0xXXX> still has
> pending operation at deallocation, the process may crash.
> 
> gh-112275 <https://github.com/python/cpython/issues/112275>:
> A deadlock involving pystate.c’s HEAD_LOCK in posixmodule.c at fork is now fixed.
> Stay safe and upgrade!
> 
> Upgrading is highly recommended to all users of affected versions.
