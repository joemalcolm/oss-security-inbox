Received: (qmail 13595 invoked by uid 550); 8 May 2024 17:31:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13559 invoked from network); 8 May 2024 17:31:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=FzvlrSOTsi3UXULyVeLw3zfMiJPZhIc8XIFPvI2gcpU=;
 b=XvVtPG9/rMx47QCaIyyvAu7UmR2B9IXXulv31FzKmkhebf5GtoT+G+whzsw2KQjD2Q5b
 ykQ3x5W2crY6Z56R95eydz/3G1vPVEYufwwCORFe5NrcDkAihSUdniMszgpgcXlaZHDx
 6A2avDhgijvMOLwLKH9xjUfkJSSLDeM8YIcsU4Z0uKxOIqAgw+1OUhfo6a02mbwzG6X9
 6pGA5PN3PeLInc5jCMVjCJzs/iZ8IVUm9DCN9YaomiktfgCaVxmSxMU6CGnRrSP2Tjhh
 us3Z3ER5wfeWchRq1V9c5fJ2CR9YE+ikx73u+LoaHmKcpch1wT4iNxA4QJb48Zo5YWhs hw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDhBAuFiIsRXKxCXXY8qMwt4p0FIfUWHwyvKhOg3JYbZqGeS1r4y1od0EIp3TFQE7C9auOg0Uu4zgcRjJ7KhpOYrei/+r7trYTyDoVFnfd2/MbCT0MTQeUnZa7112oEgxd+uhvxP8Q4wTA5ORMn98aQ5ITotceOI2LMEDckHL+ecg40oBWE4s+YqC7ISOfKcYBI24oODzeN4puNy60usi49Mm9fYEAh2v09+xYhL/iXZrqtakHLjF5OSHuOdKmX9U3EsWbOKWeXk9SEi4iiDuB0B49UJxylUD5tR54OWewlefl6bXfHT+DTcjCjMH0tYHiSgZHltpaDueBWa/v0Dcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FzvlrSOTsi3UXULyVeLw3zfMiJPZhIc8XIFPvI2gcpU=;
 b=jnBtKoItZsPcOGr1CaClb7iGhx5a3iA3qrG/DfokssiwPYk1xezyrPsU6FhDO8mvpOdZ1b8FvJei4uOodLg/TBD/Vrs6SU0WR4K7r+j7IbxLzOJB43O6m/4S8USgsR9mYPyfZnPjSjz+YTqYoKF2fESMhp9hU7KsXE0cS0qwIAJ66Tno+zImO7gCuDUukFTMeJSYhULUq0UrsoVrvojY45urTMKmeAmaB/eWA5Hx5+7Wc/I6Pp3xZ0FTmBNJVkkYK3gvt51R/XQaVEIiiC66JYg5zwrQK55fd/6XMhmIfsEuS8KH8mPbSo4ZzAS/y8Ausdbw5Xp6hrBOLbdL3Bj7ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FzvlrSOTsi3UXULyVeLw3zfMiJPZhIc8XIFPvI2gcpU=;
 b=pi++SntsPiSBqZhwYa47i0uGtBekchBc/A/cchYobPW8NlD455YbbcOzywrXf30+ekFGVYH/E7xkgcleaYbPuAelQyjCmeaFg+IkL+SFvCnm8sD3sgaW2gwPqTIq7np2ut1wj2/14mSG+rxKbLDuUJ6G8J5z2I1NUXncMFXpxB0=
Message-ID: <4a6e23c0-8acd-447d-adfe-160f8dc3f51a@oracle.com>
Date: Wed, 8 May 2024 10:31:33 -0700
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL0PR0102CA0026.prod.exchangelabs.com
 (2603:10b6:207:18::39) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH3PR10MB7713:EE_
X-MS-Office365-Filtering-Correlation-Id: ebdd4cd7-28c4-4007-2584-08dc6f84b630
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NjczUWM2cG5kTkt0cnlrMklmRzFBdUtwbXp5VFFXTzB4MENJNlA0MUpCd1Ir?=
 =?utf-8?B?RWR6bk9hL2hlMEZMV2w5dU0vYlJjd2xoVnBYQkdvTExBWW43MytyQUxQMEl2?=
 =?utf-8?B?SVhJYmtVMzJNV3VaOTNsVkRYRmRjdWVaRDExZnEvOEpGeEJmaTdCZ0xrOWho?=
 =?utf-8?B?LzdJdi9QOTRQK2hrckpQYmR3bzJPQTFHQW9HWkNoYWpKeTQ5NlRjclRPTzVJ?=
 =?utf-8?B?Q1pqU1V2d2R5OU5TWWllN2ZYMFRyMWlubFc1TGFLQU1PNzlYNUJIR2VlSmZO?=
 =?utf-8?B?MEhtWTlYOEI1YlJ5Yit5em9OWlllUURlazVrWjlkRFhDVlNuT3EvWG9XUUNZ?=
 =?utf-8?B?L2c1VUxwQXRXTHdCYTEwNUFtTHBpWThuWmZnOHlxMU1Vd2JtZlpNM09yNm5l?=
 =?utf-8?B?MEFiK2NPQXF1ZC9oL1BiMVAvUnoxdjFrRFZ3Y0kxaFdPRi9YSjZwLzdZeVJv?=
 =?utf-8?B?QlRNY2RwMjdrdWNVdjh6R280QUZ2NnNHVXhZdjJVVlVrUTV6OGlneDBueWpZ?=
 =?utf-8?B?bTZMOEkrV2pNK1lJM3RsbHBZSzB2T0UzZDRML3dhYkhJdStjbWJITDVWL1Nt?=
 =?utf-8?B?NVV2R1lVSkpTd2l2SUNGNTJ6QUxRRDRqOHU1TXBuaFV2TGxOUnVVaVo1eVZG?=
 =?utf-8?B?ZUdFNjRDQ1JxdXd1eTR5L1VNTHd3WjhrTUE5MzFWZlZKa0VRcWVIOVFEV1d4?=
 =?utf-8?B?Nkt5OE5NZ3FKaTd2WGswVnNUOCtadGdFTnlDaE15dGZoS0RWeDV2VnVxRFkr?=
 =?utf-8?B?MEx1S1dNMVg4d2NjNWdYV3ZodFNEamZuTkttSnAxQXQ4ZHYyMVRLbndsc0Jw?=
 =?utf-8?B?eEp2cUZqQVBJVmEzM0V4b0pOSXZCTkFZdGtsMEtVVzdFREpOU0lRdVJRbVZ6?=
 =?utf-8?B?ZHN5d2NXMS9zaXUyZVBrbjdIUkxlaW1Yc1gvdFVXUjhUeWk2d2U3cCszSngz?=
 =?utf-8?B?cG5VL1JYMG5udExiWTdhY2dtYXEwUmNKdk1JNlRqUEZQQXBMcGdxWVBndTdo?=
 =?utf-8?B?b1l1b3p4Ykp3NDNaZGhrUFY2REtGenA4TXhwc01aSlhmT0ZEZ3IwZmtwa2ds?=
 =?utf-8?B?Nm5NcWh5QjZTSXZRejczbWJVeUVDNVNUbWxDOEJ3aGhBZ2VRWnhTVGZmckN6?=
 =?utf-8?B?Z0I4d1ZwM3BGSTB5ZDR5eGsxWEg1WkEvYzNzdTJOc01hM2dYcnM3eE9LVnow?=
 =?utf-8?B?dUpRQ2NyVnIrR205eUs4NU8rY0MvVWdqaUhMYjdxN3F3cW9SYjZvQmZXenB2?=
 =?utf-8?B?Vy9KM09NeEFIdk94bU9xT216SU1ZclZjWnZnNVg1WHRkdVJhWGtNdHJLMmNo?=
 =?utf-8?B?bGwzbEkvMTBOeUpvaEpSWFpFVDNGdjV6RFpRdDFRV2d0Um1CSy9PUWx4UDE4?=
 =?utf-8?B?dldiZkpXM2ZKR3ppcDhKcEVHWS9LMGtLSjMvMUhoZUVtSlNlM003S3pPbjk1?=
 =?utf-8?B?TkVXUTVpeUJUMXIyL1VQczN6YTE2NjJJcUwzSmJwd2hkUHIxYnN1VDROeGlT?=
 =?utf-8?B?UHBQZUx2WXVWZTcrblNyalFOYVNmVUFLSm9BQ2hHeEdad1BDeEdUVkh4dkM2?=
 =?utf-8?B?Z0RRVVQvbnJOQ01qWnd6OFBuaHRGUzVYd1FTdSsyZkVySUNPL3E5Wmo5TVg0?=
 =?utf-8?Q?tGzWQcbYiOqIM7Vd4HdpP+5DFY+I9YVjVtZTbVG9UokE=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MFljRXBQY2FrRFFNU1JJb1gycTl1S3FKaEtRanVkZmx2bzVKRCtYRjFXeUZ4?=
 =?utf-8?B?ZUU5OHJ4TlJ3S1hLdnJPN0ZJcVhBTE05MEIzVVlZamJhMjVmc3VNckpsN0Mz?=
 =?utf-8?B?U0FLeGF3c3N0aEJtcTg1dG9scnhxd1dzaTNjbUxlNUNYM2JTd2FNcHpuNFJq?=
 =?utf-8?B?Z1FKaUxVSU8vRUZabHBBYUhXdDFGNm9zdmw5R2dzKzkyQktSQ2ZsR241TERH?=
 =?utf-8?B?M3F1VG1kRHhuQ1N1bW5SMG84eXdxRVZBQTBBRWp6a1JjSjFpK1JkT0ZsN1dT?=
 =?utf-8?B?L1hMNHhJa0RNUzliNUtmQjAwZC9DWjliNFZ3R1BUdjRJb3R2cTZLL0RjQTEw?=
 =?utf-8?B?T2NVdlBTSVNqNlBsV3JtbURROXlLQkVSSlpRaU00Q1lTMmovVE5ySVgvTDFs?=
 =?utf-8?B?ZEt0eEswVTNab3lpb3JyaE5oaHZwUjZFTUw3UlF0Nmo1azlOMDNIRndnb25y?=
 =?utf-8?B?VGlmSEprKzRRUEZ1bXVCOEpTQlc2LzRxSEhGYzNZQnBIUENOZlNWaXFZeGRU?=
 =?utf-8?B?Nk1Mc0xRTGc1bUdCbHlEQ3lRNHJ3YUpIbzN5WHl2Mk03RWZ6dFc1dXJReU5y?=
 =?utf-8?B?VkZqakdvRjEyZmRURFlSUlBrNVVZUlhXTFUrRkJkTVpwUG05anh3N1ZRcWt1?=
 =?utf-8?B?NTBNdVZQY0t4VlVSZTFGejViK09XR3pNM3IySVhzZVRRUTFpY1dEZVVyR2g4?=
 =?utf-8?B?dmhzdnhKWE92SkRBVmVUZnNOYWpxc0lady9TY3JZdmg0UVRJdFZOUjNpYnZu?=
 =?utf-8?B?Rk1BYmRldHhWcmRvREQxMVpwb0hnYUpQWFFvQzlRLzBCUUxscndIQ240Z0pz?=
 =?utf-8?B?RVR3RGhtcURrVFNEQXFwTy9kWWd3bkp0WGFHU3h1V1BkMXNJaHhyUnp1bHhD?=
 =?utf-8?B?MDZjL1k4azh0ZUV6L0NjTExHbkZQdnlDWEZqclpmZGxMSWRmQ2hHNExudWY3?=
 =?utf-8?B?cWJpb1d5MTBOM0lFa0xQSmwrZmNJQm9mQnRaM0pKWUdhVlJ6WVJYWDM0dkN0?=
 =?utf-8?B?VGlyM3RMMzlQVndscTZ6Y3BGVGQ5dk5JWFdFYVdWS0phaDdFMDBreTVldDNj?=
 =?utf-8?B?U0xXWVprbEJHL3hEbGQrVkRTeVBjamk4M01zbVBYZ1pJNjhIUlVrdlJSbWRT?=
 =?utf-8?B?S2dRZUtodnZiNkpXazkzWUxNSDBPU0xiTm84dGw5VWJNUXVhWWJSVmRENGZF?=
 =?utf-8?B?WlB0NmN2VCs5WmFaRlNDb09FMmREa0VqaURIUDVicUluZnVzdjFJZmV4VzRk?=
 =?utf-8?B?YkFlYzBDSThhV0J5Z0JYaDROQWtJdGcxc2hXaW0wNFVLTGRBWUhNdmJrcFpB?=
 =?utf-8?B?aHhDM0FJMkljSWttdnZZVWdEZlFKZ21mWE1JZ202d1dCV0Z5bVg2QlBxcFV1?=
 =?utf-8?B?dFBRVGdVa0Ztdi9RL1BiUFR4MVlRMU1ITmdpZjduOThUQkZhZFlMd2sxU2FQ?=
 =?utf-8?B?c2I4T3dTNmQwd1hmSkd5QkF2bGp2OFRhQzdtV3RBbFR2THhFN1QzR1dCViti?=
 =?utf-8?B?WmtHOEx2bUgrZVBmNm5IWXcvbGliK2YvU2VyeExOL3BHVDAxN281aXhWQUZ6?=
 =?utf-8?B?eTRRUm41WnUwYlhjUXBLdDZFYU44MTR5bTV3SVNRSjBGTktvaDREOTlLcm9k?=
 =?utf-8?B?cTB2cXBYVjB0YnVkbmRSSWlsQkloU2J0Rmw4cDVrSVBBTGNQZEF0a1R5M2NT?=
 =?utf-8?B?VHl0Y1ZVUXRtWjRCNDg1TlVPZGpqbVN6VXpVTEFYYXRqbTZlWEZVeUJ2UHFZ?=
 =?utf-8?B?WFNWSTVtTjFleTNNTXA0Tjd3SzJYWDZKVm1DWmRRQ3NhTWpUTk5RQUdQZ1lp?=
 =?utf-8?B?ZWo4Umg2eUpZamxhak1LSlhXeGxsWUtuZmRUMWM2OFVzRmFka2JIMS95ZzAy?=
 =?utf-8?B?YWd3ZWErdzdLSHE4Qnd0cWV4VCsyRU5nVEt5S1h2OWxDVVlaSDYxODBBcXJL?=
 =?utf-8?B?TVRlNDg2ZUFXb2VZNmVCTjVGbkZkNWVMWWZoVUFQMmR5UGJTZFRzNGZzbEZt?=
 =?utf-8?B?K3M0VlRBMCt0QXRVYkpmRGd5bWNoTEdOakVRdllwSW5kZW5SQ2oyOS9pejlF?=
 =?utf-8?B?alVFOFc5enZBOWh3Z2l3RXVWb0pTOUphRFpmK3k0a0VJSHh4eDU4U0ZsUldV?=
 =?utf-8?B?SjA5NVFDUmVMWlcwRUVWZjV6TTcxdFhaSWVTNEVFQXo2V1luZVQ3Z1pCcEdI?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	06Tn6HBjxGHO/G2hYGfo9lX9w+xpDZSxfMf4qlHrOIA9Q0diVkwL6TzBzdSSUfR0dc02ajm1Xw9NTyLSMUb9IZqEgF5gGBr6A+4l3aCScGCMBmNNKtHDsWBBZdOgAFyzq1YjB8iaH3CW8E4ZAypBRSAEjwhtDGyfBr5vqpdIbfKqKf7JYxsNnLNoSGkw+n5AUJctleIWxVHQ8ReaejB9luSLQY7DojI0vF9wT5rHRcPgG/H5GRdkzpYCwAYR087ayPLhJg+eLE/KWlEjp18DcIhxAftLUn3bhc8TVXurf8BMrKGc2CDFV0QXDM7lehvgUxpgbuQeb+Lh5rw6Ulnm6IzYZV5Tu6IPPOkrujiIdXhA8Za4kFGq0zsQdcaE3Z9z5miVMQXW3LH+uhloN+i+QlHkshsNA6Delk1bW/vqXod0KZ802CElkeDPrSiNdsX+H1+GO8qz61f2ds2h93u73qHrbbKp6EH5jCuNWALmJ6tekzImVYeHTK8JybT5bR1h0Ez+1nCURGfrF+pIZpOPKv/zKa7tey5Fxc+MIhgiBfCY26vxS3vUgirIvzI1aYfJJ6pI1NlshIh/zIfIoNX9YKIJ7Yak0V921UWQ/Xg9GMs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebdd4cd7-28c4-4007-2584-08dc6f84b630
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 17:31:36.4087
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QlNugFRcrPIH1fXGVRjtOF0fxMFrn23Vt6ivMIyH77mikY6s+MjGgSYJy/wx1nrLssdOvSkoCIKn7bz8CAnaX9IC5KWfKEc2turyW4A/Xu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7713
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-08_09,2024-05-08_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 mlxscore=0
 suspectscore=0 spamscore=0 malwarescore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2405080127
X-Proofpoint-ORIG-GUID: 1lvhJojbiufWOLbK2F4RhLPeDyJReHPN
X-Proofpoint-GUID: 1lvhJojbiufWOLbK2F4RhLPeDyJReHPN
Subject: [oss-security] [security] Go 1.22.3 and Go 1.21.10 are released

https://groups.google.com/g/golang-announce/c/wkkO4P9stm0 announces:

> Hello gophers,
> 
> We have just released Go versions 1.22.3 and 1.21.10, minor point releases.
> 
> These minor releases include 2 security fixes following the security policy:
> 
>   * cmd/go: arbitrary code execution during build on darwin
> 
>     On Darwin, building a Go module which contains CGO can trigger arbitrary
>     code execution when using the Apple version of ld, due to usage of the
>     -lto_library flag in a "#cgo LDFLAGS" directive.
> 
>     Thanks to Juho Forsén of Mattermost for reporting this issue.
> 
>     This is CVE-2024-24787 and Go issue https://go.dev/issue/67119.
> 
>   * net: malformed DNS message can cause infinite loop
> 
>     A malformed DNS message in response to a query can cause the Lookup
>     functions to get stuck in an infinite loop.
> 
>     Thanks to @long-name-let-people-remember-you on GitHub for reporting this
>     issue, and to Mateusz Poliwczak for bringing the issue to our attention.
> 
>     This is CVE-2024-24788 and Go issue https://go.dev/issue/66754.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.22.3
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.22.3 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> David, Cherry, and Roland for the Go team

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
