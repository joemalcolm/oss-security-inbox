Received: (qmail 11580 invoked by uid 550); 26 Nov 2025 20:29:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11520 invoked from network); 26 Nov 2025 20:29:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Ez0GLgflljljPmCv
	C8TPGA1JQZ9zMdJrxrNDgYUYqZ8=; b=VEz1Cox43rvNKDU7Y6hm43m2sM/EnW64
	NSglY2LRPaTSf/DamleEviEZXIMYZk68Ew3Zl6rbW/AcM4+5QuMppqvB94k7b4PO
	zS/p0olTlP8cMFMwOPcNgfagBYrp0wkwRixoTpL2vtET6PBL29swRnD7U+F+KdA6
	Hy4ycDk9nT/AI8IPyhREvAY+J6tpj1hclrUsxzZzLrr2mpJX2vr9eEzuatk0GOod
	ieFW+gKDEPLM0NnYUsZ4j8CXgPS7n1F082M17fTT4bjgNUu1LzUsIwULbh9AhHKL
	2VNLJ7m5KOgYywCaH4Qavpl7CyhBgeiSRtrONLhEBwNGktqTMSSFHA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mJSYgkNhP78h9mcsUazj2WChqiKG4CML8tFJg7k6qKFynn6N4/yWSiHwh25BRRrMwJsGhMSiL5Yc07iqELi/2qxAZhNkxsrA2UjOGAOZ+PjNEhC+gqUKqY9duMXM4XBwx9vipkaFUD6488aKeIGFPiTxKwfiyKjBvhqX2SLbm2Q83UOU+iPIx342n+/HUh/KZbVxYc6IW0S705N1W09qkn/JLvbjd+kvqX5RyjpeD81+SC65J/7K0z/tJl0xnB7XPiQ1J06UB56mRmXbTGonauXI1q6ljXitUAXxMPXYHSdevdTz9PIXHmFz7OgA/SKKaZLq+dPnKskYVM/39zkiGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ez0GLgflljljPmCvC8TPGA1JQZ9zMdJrxrNDgYUYqZ8=;
 b=s98VBrauIWhG5Xvpe/XoB4gFq28T1AuWBdcFYOjhLRQm8ojjKJUHg7nKauYqPqaBlDBpZdTwLM8BiVNQRdY+5tTvbOh4g5865BCKUMYVFhKjYhgr4oinYCZr4nzwWrNGaWgoYYmM0vc/0OJvrGvVRw7z0Witifw0YbfkccGOzNFE1mKNFzI6tIZb8VKoM2JC2WYWvJR+bHek5zARzBkoRUv7M+ZuBaD2LmGsSUWajGc0rq4//GoYZzxMHNUVZ4ehNUuyWS+kb1XJD2a+NjFEFotonrWFtGKZHPtlU6A4lP8lnopcaaRS1QnKxYwz9GF6yw9hh1ECTwzO+7+STpfybg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ez0GLgflljljPmCvC8TPGA1JQZ9zMdJrxrNDgYUYqZ8=;
 b=nf0Stg4PCZfxyBw0N8FpGKKJAHJ0qZJUSrdPZ2DLqYtHlJsgjJs0Jham9MRx4DO+t/yJbFDUAn9fQmZfr8O2EBT05Ql47kJ0m9NWn2P2QgPtIJSbyh6FWf7i1wG8DPDbNw9ShXzZnulyeYPAc7OTZfi7IL9K/tfU9GV7BR5loyU=
Message-ID: <2362c3be-360c-413b-be59-d15dd682deee@oracle.com>
Date: Wed, 26 Nov 2025 12:28:45 -0800
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
X-ClientProxiedBy: BLAPR05CA0032.namprd05.prod.outlook.com
 (2603:10b6:208:335::13) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|DM4PR10MB6765:EE_
X-MS-Office365-Filtering-Correlation-Id: aaf2e6d1-bc9f-467d-b49c-08de2d2a6804
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NXRCMUt5eDNhR1lEaW5rOVpmeFFYODk0d3YwSE9yd0JuZG1xdldQbW5ZVTFu?=
 =?utf-8?B?T29WblJGWkZsc3B6UVA3cjMxbkZUVjNVUGVJbEVOVUppL0ZodVFkTHRzWkZR?=
 =?utf-8?B?UENvL213OTA4UHpoT2J0amk5eGxaSDBZYVhWVk5Xc0o3VkFERlFtaHptMkx5?=
 =?utf-8?B?ZHg2SHF2aXY4WHNNc1NibFEzdk5IMzZhWjVvQ0t6a1RNZ3doNmZCQno3cXo5?=
 =?utf-8?B?ekRxWktMdCtHcW5mTWRLa2o5NTRvNDlQazdPMEJuajEvMkFSaFlZRUg3SUsw?=
 =?utf-8?B?L2NYTGNiMmVQWDFCc2d6ZlY2UjAwZFBlVVIzbTFBM1RWd0gwZFJCQmNxMXhW?=
 =?utf-8?B?Y0YyTSt6U1RhVUZSLzZ2OEZPUnNNOVpLN0NtMlRWSTVZa2x6WlBuZGVLU2Nn?=
 =?utf-8?B?L2FPcjlXWkxmM3duRzByL1FqK3VWMmgrQUdLMGIzV3o4dkZKVkM4Y1RRY2t2?=
 =?utf-8?B?YllYSXRVVkN5WlBtMWIyWWZ5MTJRaE1YMW1sWW1jbTRFeW9jMUxmZ3lOR3Rp?=
 =?utf-8?B?eUFxOWJNL1daTWJEWW9LM3ZyK1NBUTdJRGg2Z3BuT1BVaHJEYzROVTNEYVdn?=
 =?utf-8?B?VE9Na01LSURHNjJiZE9DQkJNaityL0hjdHdaUVpEV2NCMjNSVDRiRDZ5dmdn?=
 =?utf-8?B?R2hDNVc2eHhmYkxDY2NkKzBqbWFodWJKb0MyUjNSckN0N0twVnlyQXFIaGZX?=
 =?utf-8?B?ZVVqbE1UeXh0S3VuUHFiYmI2d2dyaS8xQnBYelRhV1luOUJMZ1JnWCtjQWxS?=
 =?utf-8?B?d296V2psNjZJRk4rak1zTkZDNGtOL2Y1RlcrOTI0dVVZcHIySFZDZjVxTGEr?=
 =?utf-8?B?KzAxQVJSTnZNK2wrYWx6K0Znd2djS1J4UEMrYk8vV1VRN21hZnpmNzdDNktS?=
 =?utf-8?B?UDlvYlozK1BwN0pKYzBWbTZVU0J2VU1HZkNwOEp1V3JBeWU1N2tFYlo5Nkhj?=
 =?utf-8?B?ZHNVc3pUZnFKNlNjeDFrbXMzbWNnbFZxYWFzdU96Y0RqNnZNakxITzkvTWpj?=
 =?utf-8?B?bys2RVhNU0NzRzZzZVBTSFJkNDFxQnV3TTdnUzhWQUxtTFVjTHlSdXZuSnBq?=
 =?utf-8?B?aDNqMkx6S1h4WmpVNTBvdEtQV04vR05lUUlEOXZycDhFeHI2dTJRaGlWQ1I4?=
 =?utf-8?B?RTNMazRRb2llTDN0ZXNMZ2RPaGRCYnBHZnJSY0drdHNhZEQ1dmE0a1ZIVWVG?=
 =?utf-8?B?Yk1ydnVBMHBVejAwemtkVjRuaG01T0E3Zk5hSU43Ym1IM2FiSE1pWEdHcTZD?=
 =?utf-8?B?QzNTcHlpUFA4TU9wTXpucGV2THdqcFR6SnlvQ2tGanpIcjhRbVhncFRyT3RM?=
 =?utf-8?B?dTYrNmR2c0NFeG1PaWRXclVQYlcxUEZkY3FlUkYzSlg5SXA1YUxiZ0dzaXFa?=
 =?utf-8?B?djAyTGhoMWZZZE5BUFh5WkVHMHpyV2hqeXlncDdwOGV1QzRQZmEzNDFoaTRr?=
 =?utf-8?B?R25Pb0Z0UDhmSzFpVWVtVURBekgrcCtrZEpBK0kwWHYySUJvR0ZnV3NnVHlh?=
 =?utf-8?B?TU5ZeituSnkrK1YzemQ0UmEva1V2alU2b0l0bVI2MkFudENLd2dMN1ducmxJ?=
 =?utf-8?B?UHdwL1lZWkJDekhWVjljSXFHN2VyNjR0MmZ3VHVTRG5QMUlYcGM0RHpiN0h5?=
 =?utf-8?B?MDBZeDM2YWZMa29nRlBtZ3h1SHFFS0J2SUVHd29aZHZ5R2VNNHEyd0R4UUhn?=
 =?utf-8?B?T09xMk9EZkU1MzBIdjZGeTh4YUlOQjFLVzF5ZC8zL1YxUFVpeUduWEpOZlFP?=
 =?utf-8?B?bHRQUE1iYkdOZXI3NFViQ0xSL0tpWGhUZzVySVM4TXFDV0JWTWo1ZzhQMWRY?=
 =?utf-8?B?SkNVQmpic0xadzZHY0xOWE9GblFtYUZrZnpsT2VUeENGRURjV21jTndobE03?=
 =?utf-8?B?NldhdE5vMEdEV0pXMGdEaTlZWVBjcnZTV1FaanMwSmFVaU9JSkJkdTJjZVhB?=
 =?utf-8?Q?oT58X9Rfg2g=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WitwSkU5dTk1TzRaYzVybUI5aUZSaDFTc1A1clU4VU9sc28xYk9nRXFsbXNJ?=
 =?utf-8?B?MnNLWExxMURaM3FxMUJ4MHV1MmFKYXdUTXoyUkxvR2tmb1dTZzJFd2F3QUV4?=
 =?utf-8?B?UlpwQ1p3d1grcHVUNDU0dnNtZDdSUWdRQTErcDdKeU9sMi91ZWJxaUhIdUds?=
 =?utf-8?B?Z0xaVEJWRElXZndzTmdQdnVtYkQ4N3J6WWNDRXdyUHFZZUFEYzNxVlE4RTRv?=
 =?utf-8?B?RHdjeDNjMHViWkp4SEQ0Qk9rYzI2amtpbTIwckNOZ2hXbWwvZUtubE9WNWlZ?=
 =?utf-8?B?WlV4Q1FHL2ZscFVzbnpSOXBZSzhYbWg0RXJNY1FhZEM3TzhsR2tSMzh6Y0Fh?=
 =?utf-8?B?WURxbStFajhxQytUcjNvS3lULzdTR2gxZm44REhqa3E2akFycDgzbGxPTEsz?=
 =?utf-8?B?Z3EvSEdISFhodmxsT3pIQ21DS1pmaHE3UVNXWm1rYkdYZU9QckVSaVoxeXJj?=
 =?utf-8?B?eStoclFGSmVveWdxSWJnYXcxMXdPWGd4dHVnblo3QzZ4STd1NVdKU0tKM2Vj?=
 =?utf-8?B?b2FUdURWY3hPL2taY1NqaGdXQ09KK0w3QjkzZXhEWGxyU3ovalJMSVNxdkZH?=
 =?utf-8?B?L3RDYS8zZXdPSWlHSVF0eEhSRHVoMWRKa1Y1RW1QdnBoQ2ZySW5wcGVyVmY3?=
 =?utf-8?B?RVI1ZkZGUHMwNmZiV3U2QnZLWG1TaTR2eDFubzdmVlErZ0UxdnoxNGNUM1hW?=
 =?utf-8?B?QjMvYmhoTFBVVG9OSlVENzU0NTFoSmh3NlRodnpLdDRGUkFZMmorQlRzY0w3?=
 =?utf-8?B?NU96NkhwalJieTErRDRCSUR0LzBmMDNLUTlDQU9hb2dwWUlSV1pPb1EvWUh1?=
 =?utf-8?B?RXgyeWZ4UzUrYUlqU1o0OWlGWHdYMVRRTjA2NjVHTFlpd1A5Q05meVdOblRC?=
 =?utf-8?B?aUVad1hPTWQ4cjRVMENtUVVuM0ZJeHdtZ1VkRmZZM01SK0E3b2NYa0laVnFo?=
 =?utf-8?B?bU9mMDAyTVUzb2UzNVdOTUJlb2kyTk9uSTZ3dUU2bFQ3SDdqenJFSXRycXNM?=
 =?utf-8?B?OFIxeURHKzhjT0lDRUR3TjJ3SXNZUENCK0FpUkRHaXNDVW94VVg0RW9mYzJS?=
 =?utf-8?B?SThCTjROZ3hVaU1ia202UUpkeG53ZTlGSDE3YXJnb2hyaU43elcxQWtYMFRR?=
 =?utf-8?B?cEhHNkt4ZGY0TUdxM0RuOXFiUVpzK1hEcG8xRHhnYml0RUZOU3Bmdm5Ec1Mw?=
 =?utf-8?B?dG1IcGg0OTBkMTVYWStHRmFsMnd4NGo0OWc0LzhLdndiNStwTG11ZTlWZVJr?=
 =?utf-8?B?dXFnRGJzMEFmMFVVNnlreFVJTnZNSjVBSituMHVWL3FEZWM5M2dHWmlZWi9h?=
 =?utf-8?B?VE1aRTJHSWdBN1BycnIxUGpzbDhGUUtLM1ZYUEk4dXkwQStEcnhESTh3VDlp?=
 =?utf-8?B?NXQxSExRTERyL1hxSDVvU3dUSzNvcDVFcDdabWdpR2R1U1lBcWo4V0hxRUdM?=
 =?utf-8?B?Uit4S1lmUVROM1VMbEM4TVF2UWUzd3IxNi91NHlKMnJ4UHQ3S0lsWXk2L2R6?=
 =?utf-8?B?clZtMksvS0VPTnFZekd6UXF6bGtpR0EzbEY1VFpQWncyOEtoREYyejE2NG53?=
 =?utf-8?B?QXlReTVxa0NtY200alEzRjUxTUMrcmVrSms4QXExOGMrT1RRRXhSYTFhelZa?=
 =?utf-8?B?ZElSSURFRkR1b1pBbnEwMUMweW8vd0l2bGFPMTM3eHVMenJhbnkvNUZKclRX?=
 =?utf-8?B?NDU2Nm5kLzlEa1FrUVRKYlZwUnVUS0lpbTJUWlRhc0tMUlpyUkRmazlpQ015?=
 =?utf-8?B?TC9pelFtbjVsZy8rYjVZOHJpWmFxOXM2R0lxTFI3VUN4ZG9YaGpqY3NuallD?=
 =?utf-8?B?R2pMMU9Ka1haWnJXbXpZN1EzOEc1UmZPZFFnd0gxLzhOekJaYUlvdmlaM2Nh?=
 =?utf-8?B?NGQ3V0NUYjBpRGJsT01aZ0FQSnZCajJ0NVFKWEMxOHpIelE3RmRLbnBoNXdt?=
 =?utf-8?B?YzY4Rm1ZWCsrK1JYQjZZclREa0ZMcDBKTFk4MHRRR3YzT1haVWF4TDN2T2Qr?=
 =?utf-8?B?NUV3MlNtYWJzRHhQYXR4OEpINlppMnVpbWdJaFh5UElwNnpEYktlc0tDaVpK?=
 =?utf-8?B?N1J0WDh2dVoybTdERkdVNk5RYUhzbHk0czYwY09IdGxMdmRiYStrcUpIQUNK?=
 =?utf-8?B?eDE2ZGRQZ3pVR21FRzlNdkFHQnBTNkVOR2tlMDRZUXoyV0N2bnRtR0lScXJ0?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	dOJv6nWyT7Spr03krgGilNi5s5SevN1OB0UayguT7c2UDWr9DxYtnaZe5RS99pc9llseMfEpGc93oM0UVcEN4N+If4drvUd9jsHKEnOtnzimaF3EnYPrKD2etTUREEleVc0acYYUfiBOHCLAexpmAXJd7D8hWdsRm2Yn6kjA+8iRrWgaHr7fQOGQvMpj8+Q9A/q0GCuhu6YlvgNzeTr66n95yzO8OBsnALYWgfYnCdzZgYAleHm+zp+Glm0RI1hLYmYA1i5Q8b7hcwuj9o1CjalC4AGu2uFXjuRUReD6E7wBCmY51mzEDXujrfM2MlGiCdzvXrx24ZG/XmAKaKNvvnHKcgDLaXyd1A1gB347KWOQqN1aEeSLRDPiLcevptSvfXmfZ1t4jdo0oizn06e+FJzQxtkKjfbW34EQGd/QtaSrjLDgSUGWlkKkep5Tj6StRdQU8tAgz32epm9VqEiy6+RYuKWAY8WzZSU+/wUwp2R4tFBhZ0a3dqDoYoccdU22rabojnglQl1bX0mPo4zm+CWLkSaknHF9LJnRHHKtT9Peu60KNqmY6oKEXo4NjHVg6seSfYPijq/1ONMmCbrnkDcP2xZYT/eZ3tV8AWxDaGU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaf2e6d1-bc9f-467d-b49c-08de2d2a6804
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 20:28:49.1239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UtmGI4BtDdK5ogkFtGYjb9JD/TSZ50A5zoY0rIg/VGniNdUSlIkzDlnQ3hz1cwG6a6eg/GevssfZoOIInfStzQdwtLDqYNUEKt5mk9fBDds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6765
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 malwarescore=0 bulkscore=0 phishscore=0 mlxscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511260166
X-Proofpoint-GUID: FO4cMXV8DUqeFxGAs9djY4AtjQtdN68i
X-Proofpoint-ORIG-GUID: FO4cMXV8DUqeFxGAs9djY4AtjQtdN68i
X-Authority-Analysis: v=2.4 cv=L+8QguT8 c=1 sm=1 tr=0 ts=69276305 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=4O3DgOpyAAAA:8 a=0Koq7nDUAAAA:8 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8
 a=Q-_8_mOge0R0O7tcmsoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Zbxxx-gdmP0IharEM2-J:22 a=QdywUjFo55fTaeivifS-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDE2NiBTYWx0ZWRfX40N7Z2eGCtJH
 DSTAfYhXx1DF1HM5rJ4XJyhheh+QraUGwik/ItgCCildU0u8yBUpVXwA4S/g/qwWJlIOanm+eJb
 P+S/lVSV+SjQnaTAiFNB086BNjWMdvJx8JLhY2VHJ+D70hWdcQcjO5uSqoftWufAkMgnGbBE/ck
 yNSnaMiLnH7D5yAkVQUDoVjKvZO6IXJMHaN/amzgx96SJNKxf78m0S04RzBLzZuYZYqlb6qamDM
 gf7FQrH3Lr8YFvBtng5ShtnLkh4qAlSk9iY7vVUmUY3r7wECXPIIhsfjhmYoOg5EKSzkm4ZJy+l
 8RK5fTlAiqkERLo0fc/5RXMXIA82N1R+vjI6QpFj9R/aP8hDE3GVBV8L147+jdFf+kwp7E0FK6b
 PejLrN7ATM3wzVUylqvVZZjZ1Y8G1Q==
Subject: [oss-security] 5 CVE's fixed in Fluent Bit

https://www.oligo.security/blog/critical-vulnerabilities-in-fluent-bit-expose-cloud-environments-to-remote-takeover
reports these newly disclosed vulnerabilities in Fluent Bit:

> * CVE-2025-12972: Unsanitized tag values are used to generate output
>   filenames, allowing attackers to inject path-traversal sequences
>   like “../” to write or overwrite arbitrary files on disk, enabling
>   log tampering and, in many configurations, full remote code
>   execution.
> 
> * CVE-2025-12970: A stack buffer overflow in the Docker input enables
>   attackers to trigger crashes or execute code by creating containers
>   with excessively long names, giving them control over the Fluent Bit
>   agent on the host.
> 
> * CVE-2025-12978: A flaw in Fluent Bit’s tag-matching logic lets
>   attackers spoof trusted tags by guessing only the first character of
>   a Tag_Key, enabling them to reroute logs, bypass filters, and inject
>   malicious or misleading records.
> 
> * CVE-2025-12977: Tags derived from user-controlled fields bypass
>   sanitization, allowing attackers to inject newlines, traversal
>   sequences, and control characters that corrupt downstream logs or
>   enable broader output-based attacks.
> 
> * CVE-2025-12969: Fluent Bit forwarders configured with Security.Users
>   silently disable authentication, allowing remote attackers to send
>   logs, inject false telemetry, or flood detection systems despite
>   appearing secured.

https://fluentbit.io/blog/2025/10/28/security-vulnerabilities-addressed-in-fluent-bit-v4.1-and-backported-to-v4.0/
provides their analysis and information about fixes in versions 4.2, 4.1.1,
and 4.0.14, which are available from https://github.com/fluent/fluent-bit .

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

