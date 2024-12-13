Received: (qmail 1861 invoked by uid 550); 13 Dec 2024 18:27:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1825 invoked from network); 13 Dec 2024 18:27:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=KCsF4RgZuSVRQPKj
	AJbHX8Fd58Fnv9Autp+aa0LJ6rg=; b=BkfNEPv/xvsd5ZXAMuKA6F56ACkJ4z0Q
	/Cb2y3VyYwLmhjoSTfd73RxeWOk/ZjP60TXPEDYvxVn/CuOGfqZK0wpph1/87vaG
	JBv2VlBHfflRemU4bSDk37KC9ICrDYTxyzdkyd31KtI3CSj4G4oWuL3WAvJbDpjF
	l1oW4TKZkSzWdu/GGrteTRMtCuWLTBUDLYadXchXMI41dU8PLHbpBhiYyM5ZCxQ3
	hoqSH9ByuaeEGQb8VplJXRh8DKLcDHyubVP2NeNo4WLWTtcRFsYUfcGZ++Y8ZYby
	CysfYzuiJmiPw2nKWTL3hScfaeAH6ChQ9Ns9wFpWjvOYwrkN7TZvTA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DBhVsJoTV4hB9MUdRPVUpmlKpjsX6euJaZltYAdg5pBRK021etI4Ppira6BNiUJjZLmmKZLMntIG6WXr+0eaE+S6DnlUHSYBTAt+SmwTE/F1eCn4tqIib2UUzgAuw5R/93BdKoyRfgYmSayzlfrxTSSRkDMlACeORWjuJJj/yCXKOdNO8nuAxwdxYurW9YOAIAktiT9rzejFcV7xJC6oHA/poDvKvXM0G74+XhLKC63gcLn6+UF5hIa+RLlHSsQqQ1KLlp1AvGmoodIwdKO5NQQYmg53rtNGJmDnAFwkBjvBmGf/gCZPARw8Uj3zv54/5Kw8XPcpPUITo0rZ3B+Zhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KCsF4RgZuSVRQPKjAJbHX8Fd58Fnv9Autp+aa0LJ6rg=;
 b=AZpxSv55kRAvC/jbwVoXb4aJUH4VbRUjgTZdeLGDqtYE07YH8IztdvBtbuujwJha86jPG+gpdAhOD9GkCEXu0l8nlS3iJhknlargkwTYSZUUAOg/eTwytit3Rqa+tjfHiJ0dV6CwwDGZJsQT0AZMocQ85Z4LsEnY8S1rIguJKjTi9B4tRIKy2F+8mr3QU5EbahXHj62yUe7m7LYAmJVthahThp/Ndcc/INtnt25vFU89Nnugqu/X6YbGdVe+Xbv5RA8p9RvWOilM7FnNWiTGp2HfkyjAQ1T2cx9D6PCDhvg8Fnfr4cTWSq7JMobFSske7tSxnIfj8d5/d/lP1E/RQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KCsF4RgZuSVRQPKjAJbHX8Fd58Fnv9Autp+aa0LJ6rg=;
 b=Er2GOoDnRnDa7D8kzVWw9Q/c8VLRUT9J5QSO/sx/88AeO1HXFZETVeLhR2epb+mM0sqb+y+cDZQZNL+3lHsNfx3M1hftyB8gohXv8gLPHXoxN2iw/056ZMoroo/PBC1thYrk7lPv4SiS9hkHLQW1uB+IYGvAXEhlMSQbOlTFqNo=
Message-ID: <2125e253-9551-43c3-81b0-cb5050ab1964@oracle.com>
Date: Fri, 13 Dec 2024 10:26:59 -0800
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
X-ClientProxiedBy: BY3PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::30) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BN0PR10MB5093:EE_
X-MS-Office365-Filtering-Correlation-Id: c12a1629-9aaf-4bd0-b86e-08dd1ba3bc63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SjVvVjRqellsUUVEeW41TitCbjI4Tm1iUDArUXpvd055ZWM4LzNyRGE3Qkkw?=
 =?utf-8?B?OTFwTDZ2UkkxdVFyeXhqNWp6UHpYcjhCaWRCdlVDaHBrRnoweUN6N0wrQW9q?=
 =?utf-8?B?TFZVOHZFSzZnZXlQMm5ZMDlPeVEwelNVZnhxZGl0Z1BONjI0TEhaWDloV3JV?=
 =?utf-8?B?WEw3NG1wM20zcFE4QUp4amFnNHpja0R1cGNySkxtUUxtQTExUXhORldQcE55?=
 =?utf-8?B?a08vS0R1SXRPMHNKVGpKUXNnbkdCSjNMVlp5dDFPQlg2WENvd1lUQlZKOU5v?=
 =?utf-8?B?UzVsRTdDMFloSVREZkd3RGh5UzdIdWh0NE9lTStINjhJQm44bUxPczcwQTdw?=
 =?utf-8?B?cWJmenZLNDNheHRRTFNXbmpnQmdyVVJTcnV3ekJEOUNocTBlM3I2RE9weVhS?=
 =?utf-8?B?ZXBlNHpFV1ZxQ3pQWkF6UHE1YUJ6WDY4amg2UE8rbWFYc0VtMU1KVSs2TS9h?=
 =?utf-8?B?bEtVUmNPUnJtL0dMT1FVT1VYN2U3cFk4Mmp6em9GTzU1Ujg1QlZRajN5Ukpt?=
 =?utf-8?B?eEEvdlA4LzN5RXFiUHlxQThPRWZ4SnpoMkxVSXYvWG9LUWR2aVhTVXJFRlpr?=
 =?utf-8?B?U05SQVRodUxDR2ErS2FFYTg5WUpyWWtuZ0llZXZIZWhrempMOUs5cWNBZ3FK?=
 =?utf-8?B?TmhOWmhWeGFuQUdRVDBXT0czY1dVOFZlVmxlcUhxcG5BWjc3a2dpUkpQVnUw?=
 =?utf-8?B?Rm1tTEdjb3JCU085RysrZHpJYm9GWmJxdU1xa2poTFNObU85RElEbCt5aGdZ?=
 =?utf-8?B?YkxudFF0WDZNSEtCTlBnSEFpNGJSM3FSd3BWOXpGdXpucXcwOEQ2S0tmeUx1?=
 =?utf-8?B?VjZudVlqVFFwaWRPMStlTzNDMVkwTkhyME12cTFSWWliVUtmL2NMTjhWNm8w?=
 =?utf-8?B?OUZGbGtJVjhmSms5THEvVWlNOW9iZjZjckMrVDlITVRGMXVHYkVqV0RpWEFL?=
 =?utf-8?B?K1dORmdLT2lhV21kRDYrdlVxYTdoVWIrNnlSVStNR3lFeW1XcGVZdkRPMEFS?=
 =?utf-8?B?WVJ4cWNyMjd5MnpybEE3MmszM3BSR3BFUG1kMmoyWXFXa3grcy9kaThQV1hW?=
 =?utf-8?B?MldYZ0NJbUJzMm5DNStDZU93RVJWTmhQRC9vR0ZVL3BGWTZyOWRwZTRjREtk?=
 =?utf-8?B?amhvQjRoMkJtZE14Wnc2OUZ5WnFyU0ZYYVphK2JTeFJYa21aUlVzN2NtNnpz?=
 =?utf-8?B?RXEyVi9idEg2RHJVUEhNTUI1L0JnaWhyeEtvY3ZYSVZwbUc2OUd2ZzU0V3Qx?=
 =?utf-8?B?Nkh5WUVuV21xejNrcG5QNlpZdzhVdnBaSE0rK1ZiYWVDVStUd2twT3JTSkRK?=
 =?utf-8?B?UnQ5c0pxTkJaRDVtMUM2ZlZYdWg1MzU4b21oUUxoWU5oK0M4eTJTdVRySjFZ?=
 =?utf-8?B?dmJiVDZzMlU0Mm1XVWtmUHVoQ0FDM0h4RXVvaVFuQjB6NXpxWnY4UUl6U0VJ?=
 =?utf-8?B?T2NmUFN6ZFhGdFFzU3k2amdtMkVhUUY3WHgrZitXUSsvMGhFM3hFM0V6U3ZS?=
 =?utf-8?B?dlZ5dUlVbit2aWJUNmt6VitrbXJtM1ZmOCt2NDlkaGdrMHRIb3JWekZZT0F0?=
 =?utf-8?B?WElEeVR5VkF1QzdPRlRxMjBiVldUdzRIQzJacWN2RVZSajRLai9uMmN2NFFm?=
 =?utf-8?B?Y0FzRnJDc0ozM2NSMlVNMnEvVjQxVzdWVVRmbTRCbmIyZ3QvV294alBOTUF5?=
 =?utf-8?B?WTAwRktKOGk2V0VsamQ2MVdOWXp3NCt0emh6R1hLWmcyU2ZFOTRPVERuUVBa?=
 =?utf-8?Q?daC+o4th9YCrRqf90o=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Q25aSWxYUzVMalo4b0JORTRhZGt4MzhEdFIwdU5tY1JlcTgza0RSYnRBVDZ5?=
 =?utf-8?B?VnpMQ1JTTUhnV2Y5Z3ZZTlRaS3U0b1dDRmswNCswZWorbmZtbjE0S3dTTnFM?=
 =?utf-8?B?VDdtQTBPRStVWWF0OEplTys1UjFPUUp6SUExQVNWMmlHU01hNnJsWFhmSmoz?=
 =?utf-8?B?b2tnQVloSEZlUDdKYW5VNmJMdkpNbFNOSS9jbDZkOHUzNk9wSE1SK0k1cXo5?=
 =?utf-8?B?ZkdTMkp2Y0d3L2c1cHpYU1JRZjFRQ0RkM1pJVFg5ajU1ajAxWHEzYllBaHMy?=
 =?utf-8?B?eEp1bDdlcFpxcmJqdVJXODRpbjl3bWNnY0ZITjRqMTNtQ3BqYk5IaTRGdk9G?=
 =?utf-8?B?UllTeUlySEpvRmxUV2RsRG9nTzVTOHFaYVY0RFljMTZpTkY5MFZSY3ZuZHZh?=
 =?utf-8?B?UXNoMndHdWFXYngrQjFYdUttTTZJWDRqa25kWnBRRzNURzVLTWRpOTk0K2Fj?=
 =?utf-8?B?QXlBbEZYem5VWmM1OXpVUlArSUFDcTA5SzRhRm1Nd3J4b3lOaWl5RlV0RGNJ?=
 =?utf-8?B?a2RYQnREVUJPQndqbkUyeEhqbjlDVlY4KzhzamYrVzVkb3pkdEVxaWgzR3Rl?=
 =?utf-8?B?NCtGaHdKR3hFbEUrdnhQZTdSYWFadldmNVQ2ZW9pZEh2T2VGWDFjVXJTNGIx?=
 =?utf-8?B?RWlqcWxaSzloa0xjZVhKcmRDOTJoNEVhSWhmSCtsVFg0Zk9LcURjbDYyYlZm?=
 =?utf-8?B?UlBjT0RXZ21MaFF5VDUyV1A2MC9XYlFkTUlOazltZk9GNlJjMElIU0dZeVhr?=
 =?utf-8?B?SkdoYmFIaFg5RS9xUE9hOUQxRkljSzRmazVWVFhiM2NBSU0rZ3l4elRsTHg3?=
 =?utf-8?B?WTVhWWIrTHVTSDA1U2Izb0RTdVJZVHZxazJDVVRoekRPVFd0am1iWmNnVVl0?=
 =?utf-8?B?Sis1WnhWeGNGTG80bE0xK3FvWU9BSUEyODJhckRQeGlIZXdJalhmZnV3OVZY?=
 =?utf-8?B?UFp2N1JyTHo2dFJjaGpCbHJLS2NKUlgvb2ZWTjB2TlhhZkdMQm5FMlI1UEZ3?=
 =?utf-8?B?VmhITEhwTk1UVFlrLytzQk9EZU81SFlVMFpUbU9FL2ptcVJhbkd5NkxwbW1v?=
 =?utf-8?B?eUFHNmlrd1BCTldxRGtuNVNIUmdCTW5MNUt4NU9IR2lHdy84TC9HU2lLVTdD?=
 =?utf-8?B?M1pNWEc0UWpzVHFtb2tRZnRhL0x3aHRQZUZ6a01pQmgxSkVPd3k0ck9XUm50?=
 =?utf-8?B?N1V6dnRJc2swdWhEQWdPdnhEQXFSRUVDbkZHaHVta01TM3JaaGM3ZkUyeGxS?=
 =?utf-8?B?TXBIaFFDdVpOZVBCNjd6dnpweHFiWUNDODNPckNIRWFUWWFNWlNoTVJmUHNO?=
 =?utf-8?B?RnA5N2lmdHlaQ1o3OERJQmtORytzcjQ3dkFXeUpFbHFid1B1alZ5S3UyZGRF?=
 =?utf-8?B?WWx5NDlnblBRbGJ4Ym13UnhhWVlXcndoSHVNcGVyY01UUmJvdXR4UDVVWFpB?=
 =?utf-8?B?cDhsMzRDcXhLWmVpYTJEaWlQTUhpRWdiSUs1VGNhR0RJa1B5Y2VuWXNWMm1K?=
 =?utf-8?B?QUtDdlV1aGZHU0plazZSQVlEZjBmMnRSbGsyam9VVzJraVFtYWo2dVdWTkZu?=
 =?utf-8?B?SXYzR01BV0tHUTRqZnh5cDVuUUs3MCtRcDVvc3YzN3Y4N3pXVkRpc3lBRHNK?=
 =?utf-8?B?N3I5VlNEM3JrWkxybjhvcXptNnR2Nm9ZVHNxdnc2Mm5EV2hwbGtMYzNPeEo4?=
 =?utf-8?B?Q1JuS2E1d2RUSFh1akg3WjdYQ2NNWWFGbVcweUNTN2hSUXVoU1FZaGlZc2Yv?=
 =?utf-8?B?NjNKNTlOK3J4NFhyazYwdXRuQXlKTE4rWUkvaEZFNnNQZTBZaHlpdkpUTjRS?=
 =?utf-8?B?eWtRTlA1WEpVQU9iY0RBNjlveDNVZ1FsbXhCYmE0eEduZHJvcHpNU1QrUHBD?=
 =?utf-8?B?NEU2Q3dLN09nOXppYktOZ3QydTdCRFFRWENHKys4MDJMQXo1NWdGSllCcE1O?=
 =?utf-8?B?dUsvUTgvRXM1RkFnZ1UrQldDK3ZOcU5iT0YrR0kxT1dnaDBQZ2RhWjh5bkdU?=
 =?utf-8?B?Y015VmpoNTJQQkIrUms1L1NpZ1VQMyt2dWtaY1c4Y28zRktxcmczb3B1TG85?=
 =?utf-8?B?OHFjZUtYYVZIVG5JaFpWN05vd2FJUkd6a2RtbzY4MXJVVnV6bGI1a2xTZUF2?=
 =?utf-8?B?VGNkbGZ4Z2NockdpUThlWkQ2Zm0xbzhrUkNORUZUdWYyYkMrWEkyckg1b0Nz?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	qvvi2sz0H968vcYgYcH/hZE2mrhFhYlib381H4bCVfgJio7wWEBOdN7ttNd+PYfehgDzx7qPG3XpUItZYTatofJKEvZ4LdB3bWpV4SxlaShC68p6rxxA4ygmriVktpPOMItEBHBJiMJmtLTCHoBIbz7XaI4W0/moRQsoj6kNmIBeV1nwlLUg2G5Sf3ax4C9laPrJ5wPk1QluyISPZv5UDrd5mVsM9wdi1rI0QwG81pzmkdj8X9zx3FJCamLCn4OT5Dmf8TQk9rLeZ+U7hnCR6eCZi+Wf42PR+I42aky63yjMgG+cvDeForvTWOwWutfVLzHR7jexjlO8SbnuCuz5ZR2rUOrR1ZskxPjlbr2kLqo0a5jIb0EqvEzLQ8Tif1fLBwsJIE4HsjzeI0TDgIuzhbrCq0suxla47fe8d2nQ7BQvu9bSW2odFJKNMQrchc1WB/wnfqTmksy8V/5f/HmZtGuNUW407EO/XKq97lsUj/v8iH6hVVL4z4FsUgb6ZHN+2AhdPQJfrusZ9xnFgQi3TYuRmrxPFRrixKWee/Z7yoEXCnWq84J57JE/jdyUNqjCpZmXluzv7DYzIO5XQx86+zoeUuk6ha8Q7Ie3cZJJgUE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c12a1629-9aaf-4bd0-b86e-08dd1ba3bc63
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2024 18:27:01.2474
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pvVTbcGdQk4VDok6SVSZa8Qz1uk1B+Kmp+9S5U9C96DBM6IhxMs+Li7aGzIQEJMucMDNmJ5DZuFjuIn0T4KdrRG2gEFfALwj+ZSIgXwgZx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5093
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-13_07,2024-12-12_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0 spamscore=0
 mlxlogscore=589 malwarescore=0 adultscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412130130
X-Proofpoint-ORIG-GUID: 2JhFFOyve8qirEjshcXx-qwiu3M3c3dC
X-Proofpoint-GUID: 2JhFFOyve8qirEjshcXx-qwiu3M3c3dC
Subject: [oss-security] GStreamer 1.24.10 stable security bug-fix release

https://discourse.gstreamer.org/t/gstreamer-1-24-10-stable-bug-fix-release/3683
was posted on December 3, announcing:

    The GStreamer team is pleased to announce another bug fix release in the new
    stable 1.24 release series.

    This release only contains bug fixes and security fixes. It should be safe to
    upgrade from 1.24.x and we recommend you update at your earliest convenience.

     Highlights:

     - More than 40 security fixes across a wide range of elements following an
       audit by the GitHub Security Lab, including the MP4, Matroska, Ogg and WAV
       demuxers, subtitle parsers, image decoders, audio decoders and the id3v2
       tag parser.

where "security fixes" links to https://gstreamer.freedesktop.org/security/
which lists these advisories dated Dec. 3:

GStreamer-SA-2024-0030 	Use-after-free in Matroska demuxer
GHSL-2024-280
CVE-2024-47834

GStreamer-SA-2024-0029 	NULL-pointer dereference in LRC subtitle parser
GHSL-2024-263
CVE-2024-47835

GStreamer-SA-2024-0028 	Integer overflow in AVI subtitle parser that leads to out-of-bounds reads
GHSL-2024-262
CVE-2024-47774

GStreamer-SA-2024-0027 	Various out-of-bounds reads in WAV parser
GHSL-2024-261, GHSL-2024-260, GHSL-2024-259, GHSL-2024-258
CVE-2024-47778, CVE-2024-47777, CVE-2024-47776, CVE-2024-47775

GStreamer-SA-2024-0026 	Out-of-bounds write in Ogg demuxer
GHSL-2024-117
CVE-2024-47615

GStreamer-SA-2024-0025 	NULL-pointer dereference in gdk-pixbuf decoder
GHSL-2024-118
CVE-2024-47613

GStreamer-SA-2024-0024 	Stack buffer-overflow in Opus decoder
GHSL-2024-116
CVE-2024-47607

GStreamer-SA-2024-0023 	Out-of-bounds write in SSA subtitle parser
GHSL-2024-228
CVE-2024-47541

GStreamer-SA-2024-0022 	Stack buffer-overflow in Vorbis decoder
GHSL-2024-115
CVE-2024-47538

GStreamer-SA-2024-0021 	NULL-pointer dereference in Matroska/WebM demuxer
GHSL-2024-251
CVE-2024-47603

GStreamer-SA-2024-0020 	NULL-pointer dereference in Matroska/WebM demuxer
GHSL-2024-249
CVE-2024-47601

GStreamer-SA-2024-0019 	NULL-pointer dereferences and out-of-bounds reads in Matroska/WebM demuxer
GHSL-2024-250
CVE-2024-47602

GStreamer-SA-2024-0018 	Out-of-bounds read in gst-discoverer-1.0 commandline tool
GHSL-2024-248
CVE-2024-47600

GStreamer-SA-2024-0017 	Usage of uninitialized stack memory in Matroska/WebM demuxer
GHSL-2024-197
CVE-2024-47540

GStreamer-SA-2024-0016 	Insufficient error handling in JPEG decoder that can lead to NULL-pointer dereferences
GHSL-2024-247
CVE-2024-47599

GStreamer-SA-2024-0015 	Integer underflow in MP4/MOV demuxer that can lead to out-of-bounds reads
GHSL-2024-244
CVE-2024-47596

GStreamer-SA-2024-0014 	Integer overflows in MP4/MOV demuxer and memory allocator that can lead to out-of-bounds writes
GHSL-2024-166
CVE-2024-47606

GStreamer-SA-2024-0013 	Integer underflow in MP4/MOV demuxer that can lead to out-of-bounds reads
GHSL-2024-243
CVE-2024-47546

GStreamer-SA-2024-0012 	Out-of-bounds reads in MP4/MOV demuxer sample table parser
GHSL-2024-245
CVE-2024-47597

GStreamer-SA-2024-0011 	NULL-pointer dereferences in MP4/MOV demuxer CENC handling
GHSL-2024-238, GHSL-2024-239, GHSL-2024-240
CVE-2024-47544

GStreamer-SA-2024-0010 	Integer overflow in MP4/MOV demuxer that can result in out-of-bounds read
GHSL-2024-242
CVE-2024-47545

GStreamer-SA-2024-0009 	MP4/MOV demuxer out-of-bounds read
GHSL-2024-236
CVE-2024-47543

GStreamer-SA-2024-0008 	ID3v2 parser out-of-bounds read and NULL-pointer dereference
GHSL-2024-235
CVE-2024-47542

GStreamer-SA-2024-0007 	MP4/MOV Closed Caption handling out-of-bounds write
GHSL-2024-195
CVE-2024-47539

GStreamer-SA-2024-0006 	MP4/MOV sample table parser out-of-bounds read
GHSL-2024-246
CVE-2024-47598

GStreamer-SA-2024-0005 	Integer overflow in MP4/MOV sample table parser leading to out-of-bounds writes
GHSL-2024-094, GHSL-2024-237, GHSL-2024-241
CVE-2024-47537

which affect the gstreamer core, gstreamer-plugins-base, and
gstreamer-plugins-good packages.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

