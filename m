Received: (qmail 32175 invoked by uid 550); 4 Apr 2025 19:07:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32137 invoked from network); 4 Apr 2025 19:07:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=LNcfPDjp5i076Ifk
	PjSEcbLWIo93pr3G/O5Jz4UzxjM=; b=B8z5TpTPIjmsZsBFk9+FJmIiUyGMiN0q
	P8tTS5HJxlT0fIY8ztGcG2OXNHgsfa7/UielWntPTeA1kHL4bcgEsDjym2n6QP9U
	OQ2MMdbC6nVkF8sSpMvzm3ULvoSJWre/n00zbGx+316n0jlaeoeCKQn8xmke3ZCh
	RB/HZ6HbPlMnyXgbJRooufsbYdxiP7yd8m2uCZi+BgCNcdbcqDMYrEw0tRb/IH9U
	oIZEHLNh/jKtVOCrb+k+qVB9xqFB0+3YSWb3Dd/QI8r8j8OmqX0s33RloirWt8LV
	i9GBKVb20BfKCeFiFIYuzbbYgR36Cm+bNt4sbt9x1ESMDta/fhlx2g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yjf9DkdRyRiYwYF/LluDj2OwMg6Zlc01T1JivCFSkh6spk3VBs4G3GaHDz2kEaewL7qOLwJ9sno2QAH2YNX1GUCutQAHmiXuVzd8glYRHEC7zaWnZvku5ZVrpdwQHGKtZyaCg3oHX8rdM2WkVrvso5L9k40Se4T+z0lY9ZgbgOxNmpnkwKRMJnbntiAOm5bYiJh39MQIdnToDLkIdP/72a5rUQFlR44DjyUT05KpVpIMlXC1t7EoKLhYdT0Pq7PDG7Ce93lzTpaSrdg0vIyjMDggJ5PPjrTDhT+UTLr0h+8n036NCxy7HJq1NkyvM2OejN4nabKY+AxFhyDOPQujtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LNcfPDjp5i076IfkPjSEcbLWIo93pr3G/O5Jz4UzxjM=;
 b=J3DNGwKtYt+akk2vRQGOwaiJqzNabBIaNtA4Q5dj0vGdlAk1HAyEMTB1mJwLHmrv3RgvtResN57O9mEpdCol2LX0/gevfuOlV3hoptXIFvPiFc6kW/KePcUGUy/tUw5VZdpktgmftiHxRjGvA43RIHCSECOjWUIdT6VyksEuILjhxGiEyI2dW0Dimo0BNk+Bh4Vd7Wp+DGeGgoQPISWCkGoKBAA0kn4jIn1Mqr7C5VJZtgOq2gyZSfelv8ntainAooKKBIFc3BFE/UpIsjzshy+2B3uGHbE40imHiE+vFcHN3K0GsH1MNtRyamYNV0u0HgD65GXDfs1u6BIEjXXMwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNcfPDjp5i076IfkPjSEcbLWIo93pr3G/O5Jz4UzxjM=;
 b=Hafa3fjbu/N5bzoUUIZhYdbI+FsGK84OmLVSh4dbHNn8OLT8sph9zE+FvGLsavATek3ztGVVYl0+lUX0r9x9uWB6Q+bzE3nx86NA0khkVZWOzXR8uUQ4O5gB0UHPseGqI7ccAuJVFCwOa+UqotCtB8moXtU417HRyZsGjDDKL0s=
Message-ID: <c549b82a-ddd8-4ff0-ae8b-3fed9896f656@oracle.com>
Date: Fri, 4 Apr 2025 12:07:21 -0700
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
X-ClientProxiedBy: SJ0PR13CA0095.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::10) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM3PR10MB7912:EE_
X-MS-Office365-Filtering-Correlation-Id: 0310bdaa-ed7c-4274-b3a0-08dd73abee43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L1RRM29GRlloZkJ4T1FQVWYwVERzNS9rRjRzWW9mS0VzNVZaaWZmOC9CL2RE?=
 =?utf-8?B?ZVR6ZTd5Z0xwc2lGR0x6czhTb3ZCL2puV0llRkxXcnUyU09XbDRhS0kyRHFy?=
 =?utf-8?B?RVBZN1RLRHpzNjd3WjVmMER1SzY4MER6eVZ1RE1LdjVCWVNGMXl3NFpYdWth?=
 =?utf-8?B?VTFCSnRESUNwTFVNRkkzOEFiVEVFR1BHN1c1RmEyR3AwWWFLRmozK3lPS2Nh?=
 =?utf-8?B?dDk0RGV5dFNNdmkyY3RUWjFaSlh5TXZZeC9DYitjWUhrc3MzdVltcDk0V1R1?=
 =?utf-8?B?L00vaHJQZWZrcGVNcGI4QS80K21YdEdHaUhIVGZBcVJYZ2dqM2ZZLzVMVmpu?=
 =?utf-8?B?NlhOVzNBZ1o4VVVaZXhHMnk2WTZpNVhHTVg3bjhRSnlYdy82a0VzZFZUanVM?=
 =?utf-8?B?empJVW9TTUoraW53SDZFcld5bWtBSUx5ZGZMWG1XNG81Y29pWkpmZEplREJs?=
 =?utf-8?B?aVppb3Y4NmR0bGRDbVJnbU9xU292cEhhR0dzSTdOczJmZkZnb2ViSHl3bm5a?=
 =?utf-8?B?TWRZU085NWNVZEM1T3YvUlZMNjVpWFltVk1OYUJ0WmN2WXpaOFIyTHYyaDh0?=
 =?utf-8?B?T2RzMVdyUzVRdk15UXFkOVcvYWY1bFBDYnlJMTl1U3Q5MWlyL1E1VHR2VU1Q?=
 =?utf-8?B?MHJsZ3Z1V1JwdWYxd09TY2ljU2hpQnE2c0RpZVNXR3BmdEdrckFYVk50djNW?=
 =?utf-8?B?TEdRQTR5MFI4dGdkVG5pblVMSlJQdUpXa0hTLzkzSFlMUHRFbUxrdjUrWnRk?=
 =?utf-8?B?QThla0FHbDcrd29SRXBjMnhlME1uZmdGODlkdndZZE9Od2YzOW02Tk5Va3li?=
 =?utf-8?B?NTQvMnhXcVlsYkZwVlgrVlRybTlIMTZEbTNGak52S0l0dFJOaXBMVFVWNFlY?=
 =?utf-8?B?VVZvcTZ3U1VkTHZ1cUg5Qks4clB2UW5pbjE1RkRQRkZGWHpIZ0ZIdmJhMXVx?=
 =?utf-8?B?c1YrM3hFYVZQdDI0RGp3Q2JMMnJFQ2t1OWJ3czRZSW1LaVVjRzhYZmFkQ2da?=
 =?utf-8?B?TzdIWkdOeFY4UkdXcDBzMSszM1l1eGZVczRpUHU3VHJVMW5Kdkp4ZE5FYTFl?=
 =?utf-8?B?MFZVa2NpT3ZXd0I1SitBZGpmc0NEVFA5L2xNR1g3emJ4NEE1R0RwQXBuemN1?=
 =?utf-8?B?R2U2eXF0SlhHVjFoVll6eDFoWU5EQ3F2MjJuZUdVWHQ5L0hBK1RFd0tIanRw?=
 =?utf-8?B?ZnR2cFVuT1FWZlV5VDBzYkhZSDVEM3BZeFAzcWZLNy9sQWlYRHlzUDhnUjB3?=
 =?utf-8?B?SGJyWmNUWHRndXNLK09QcURob1UwQXhEM3RGQ25ISFhpZVY1bUNDQ3VVbGN1?=
 =?utf-8?B?R1Rha3EzNFQvK2FWUkZ6ems5VGZ2K2JicVN1U09lYXhHOVZBMlFWOHRZOG94?=
 =?utf-8?B?V21vNktLZkJHVDdoNDExeDI4UFFRd2hCTkN5Ky9WT1lPQlJwR244ZlgzU1JJ?=
 =?utf-8?B?UExVaVAramxxVC85RTRTUzB6amxDS0lqNmJ6aXE0bjJPTnNDVHk4bTRxZ0Qv?=
 =?utf-8?B?R3hSOTZYWGRRcU1DMkR6bmpiM0Q0Tms5TysrS3NwMHA1dm9tUEFCSUZJc0Vm?=
 =?utf-8?B?dkNpdWsweXRUWGpnVloxNDZmS2VMRjByYytWWUhoN1UrN1hDcFU5anpVYUtT?=
 =?utf-8?B?cmVYQ2p0NUtqNk45ejVEOGtOUnFidVM3TjJDS2dFOXlkNVV2a0tDVWVweUlF?=
 =?utf-8?B?ZnY5QjNVSVJXMEZJUjFvcEhiQm0zRXpVejJnVU9tVm1pN0t0Tmo0NnFrSFlr?=
 =?utf-8?B?RVVZL2NNd1R5SXRlN2w4MlEzaldjY2hCSDI2anJuS05lbHQ2WFpKK1I4UUgr?=
 =?utf-8?B?YUYvNFZoYjAwTGpuRFNjZ0hDbUZFTGJkbjN6aU9oMVdZUzNsYTFTWG5MYWlH?=
 =?utf-8?B?anNDNWJCK01jaEtJMDg2eWdvUmd4dlJYM2tlcEVyYVNKb2c9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MTBCZm82c3F1a0JPdlNiak5kS1pRcEx5WGFKLytwQ1FkK1IxaWJWWXFOTHJK?=
 =?utf-8?B?MHJXdXljbVNXSkVxUjQwT0RiRzI2RjNTQytLUisxdURsOG0yaTk1OTRaRUdS?=
 =?utf-8?B?UnlqeXVhVzdnZ21ON0ZYVnByUkgvYXZGZzRtTXI5MndjOGYwamNRQWVveTlC?=
 =?utf-8?B?Y0JnY0h5Rmg1ZHpZa21VYWpRUWROZnJDQ3A2Z1lZK3RxQk52bUNvRDFVeUlB?=
 =?utf-8?B?d3RzVUlKWHcrdTVwVmxrMVpoSGx4T3hONGQ2cnp6RUN5UlgzQzdNNm1NOWRV?=
 =?utf-8?B?WHkvb2hGT0J0cFI3TlRYcHVCY1pXT3V2WDNNOFVCc3dSUzBtT0h1RENQUGI5?=
 =?utf-8?B?aUJJaWJjbzVHNHNzdUxMZUdhWWgzWFowaktSWXlCaWNReDlnRkJ6eHcrYUFO?=
 =?utf-8?B?bGVUWmVuRUhjMFFhNzVDUzBWMUFFalVKRk9mUHJsZHdLR1Z5bG9wZ0U1YXE0?=
 =?utf-8?B?Q1lKOEZsbWlrOThiNk1pYktjZGNSL3V5Z293eW54TFpMWHhxY2FOZzlXU2Rl?=
 =?utf-8?B?UUErUjhJSmtPOEVsTTc2ZVBNWTVIM3lqZGtFb1RNNVp1QkZoaVZ4bDZHeU5O?=
 =?utf-8?B?b2hScW5hcVN6WHMzRkZyeU0zZXRxQ05xcjZRb3pxQm5kTSt3SnRCOXhMYklN?=
 =?utf-8?B?NFBuMXpWNGJzL3VadlZMbENabTBnTlZ0eENmTmFEdm0reTRBdXV6bXlsemVI?=
 =?utf-8?B?bVFJV2NFc211em9qRFdlblBYVUlqaGFaSTVnTzVvajZpRjhLMG5yMFdkS2Vj?=
 =?utf-8?B?UXAzc2pYNHRpTVYyTm9seVpWdU8yS3hxTjkvaVVEcW5rWnFVT2VwZjI5czBh?=
 =?utf-8?B?WlhxWjQ4ZldydWZabjBPT0lCN2orcUNiSXU1TlhsZ0ZPLzBnZGdoamVQNmJV?=
 =?utf-8?B?UnNFUmdTSlovbmFnMjlGNW1ySWttblROQ1cxOXMxd3REanhwSzRrTjFFZ3Z6?=
 =?utf-8?B?WVQvTWd5QUlycUYvZGdNVmhjOUZqcG5NLzRIaW03V3RjUndZek9ZaW1zVUhT?=
 =?utf-8?B?WnBmaXRIT2g5bkpZeVpiYXZBSU94SkowaXU0TTcwUVJib1BOVHVNL3kwOS9I?=
 =?utf-8?B?anNqUThhRkoybjhDMHlpVnhyR2hXVlRTNE5BcERvMmV0SVh3NFc2VFlZUmpB?=
 =?utf-8?B?b2FCNVZmV0djVVpLR0hNL1BDV3NvNjE1TTFULzhObnRwZW5XTUN4SWNWZmwz?=
 =?utf-8?B?eGRBNnBUeWdQVWcrM21wbTRKbG9iYmtQWmlFZkVJcFJWVHV2Y085eTVOelZu?=
 =?utf-8?B?TEJBLytnK3dQZ3JaTG81enVRMERhYVJQV09zR3AxL3hDMWxvYlpsMThxczh1?=
 =?utf-8?B?VzBuYzlRU0Q0WXFJbTVZcDZ4WUMveFkwbnRhWVZCYlhFUnc0SVZiL0FhSUs5?=
 =?utf-8?B?MHpDVGFFMktvWWNmdWw2Sm13UnhiT1J2b3dFR1ZuL3J0NzJFS2VHR3NGcTg2?=
 =?utf-8?B?QXZZN3ZLcHJLYzU4OEhHQnZMS052TzNCZ0R2Q0VGalJPOGkwSXVRM0dka3F1?=
 =?utf-8?B?M0V6OTRGcUU4L0dwT0x6YVlaZ0wzbGQ0RlNwNjhGaVhMZXRQVUZja2VHeTFO?=
 =?utf-8?B?b1NtdTdkOEp1R3VvRkwyeldLWTF6WEJhZ3dwT21CYlh6akt5UVltSzlQWlZ5?=
 =?utf-8?B?cnhSU3UzUmczK0Z4YXB2QWQzRVdvS3d5cTVnSG9aU3RhZDdhbUc2WnRyZWla?=
 =?utf-8?B?aklXT3RweS9hdkRoVkVBb2pud1dxK1d3Y3ZHUzNkWGlxMysrNGQ2SEx3U1J3?=
 =?utf-8?B?czNRV243SWY0blBxQmxqbE1iSmN1eGRRc1AxbzJCc1l0OXRVa1VjWkp6VWZB?=
 =?utf-8?B?bDYwZUNyZCt5OUIxaEFwMGhwak5Nb2JERGJKakJKNUFBSHNnRlduZ1hzYlJO?=
 =?utf-8?B?NTE3ZHVPRXNXWSs3RDk2Zi80aU54VFZJWU01T1pMRGVoQVpEdmtvUUt5ZEpW?=
 =?utf-8?B?Y2EwWjNIcnp5aFNDNzkxK1NhTWNlSEFBYjVBY0VFNWV6RDBBem5CTDEwSGx0?=
 =?utf-8?B?VEVUTzkwaXh6SVVMczVRYldvV0hZRXl5M0Q5UUhxVnFqSHJCZFA5bVczRzVB?=
 =?utf-8?B?WVBONTlRVUZrbmhSb3FaQXVSalY1YWxvMFphTUZqTXdMOXl1RXl4RFVmSDBN?=
 =?utf-8?B?MEFSZEVYUW4xTzd1YjBHaWJpWFk2ei8ydHdWMHkvYTZGbWY4VTR3ajdrRVRi?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	3+B7rQ15J4fzSOv2Hhl8e/d9nL09xE2AuGVI7Y8MUaxaz/nzIS7cF2bQVhb4WrlgecjfU4GhjpdJb6008N6HTgDTPwztUstA0CREZ9A4uDLZgYFhLjdVNixcaAUmfTknp1wyPfH5jGhCgJRH/XRbog1IH7Vb3b1UsMv3yN3sguG1NhnJdAt7YcwMCwsBuCoM42HzJKfh0tuCfHtvldz7/huPaSNqS709HFFXSMlqPHaCQ3Pw6DeocmfWmd2GXjJzHMie5Xq6UdKs18UCdkvONFRL3sofVPlj6qFVtJRJyOc4HnRkeEP+yEaSeCCjQ0FHo2yFDWkWDAs7t/WEKvcfJMBYKV3Kx7dNE686QQsWbkHIOEKi0E5tV7xpiILpC2emPq0qGgwevqS2cTmtJ5U9/T/OyML2NdYdsd5rWC0cLWeTFwGt3+ba5Prgoy4Kn83czO1mbWRsbM0fpo+iA7lTCArVXiMv7aU+gop8DKCVcJVFPok/zOxjoWMTkrHAbDEtNS0anJFXuFlWmehhyKsSLehriFGuutn7xBiKfr4+JLVy2I7K527FDAERoIhCYYt2ycvFQCgmkdJoEYkZYB9PWG4nWOh5XN0xvI70ky4NC7s=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0310bdaa-ed7c-4274-b3a0-08dd73abee43
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 19:07:23.1805
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdmiDcGgG1P1S4vuOvDs/GRNs3yN0OrRqyoYtia1tFrHqZaGM9BNBYAmEbix1C3htu5OHGq+BFMFODb6GcmmWBTawx+SWMPxK/0QYJUO6o0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR10MB7912
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-04_08,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504040131
X-Proofpoint-ORIG-GUID: tlAS3C5f5nIy-2OKaWCt3fK4HunuEAXM
X-Proofpoint-GUID: tlAS3C5f5nIy-2OKaWCt3fK4HunuEAXM
Subject: [oss-security] CVE-2025-3155 GNOME Yelp: Arbitrary file read by
 abusing ghelp scheme

GNOME has issued CVE-2025-3155 for the following bug in Yelp, the help file
viewer in the GNOME Desktop (unrelated to the similarly named app for
restaurant reviews):

    https://gitlab.gnome.org/GNOME/yelp/-/issues/221

The description they landed on after analysis was:

    Yelp, the GNOME user help application, allows help documents to execute
    arbitrary JavaScript. A malicious help document may exfiltrate user files
    to a remote server. A malicious website may download a help document
    without user intervention, then trick the user into opening a ghelp URL
    that references the help document. This notably requires the attacker to
    guess the filesystem path of the downloaded help document.

While there are proposed patches in the bug report, none seem to have been
committed to the git repo yet.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

