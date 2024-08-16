Received: (qmail 11503 invoked by uid 550); 16 Aug 2024 18:12:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11458 invoked from network); 16 Aug 2024 18:12:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:from:to:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=R
	tQyx9noFtOqYEBVNhnS8m4lHM7MwCMFUv6fNB9MG+E=; b=bXHfqvNTL6OGxJ7Jp
	RiWWWBSWjWNVdp4xo8XSEqECx9NzzdqQVrSTSFjVjZyaj7TdxejQ3h3FPzbB9+EY
	hW9FM2ANhdRL8ptbCSD7OaqYGF+Lo9SSx80IJtvLfVxmJ4RiY83xuwwehyjDSy6I
	7Gnbf1JrEMo3IK+oeq/uAw0Omj9NIjvyfGBu4x2hutyzgCPbwD/OHGv8csDuc4ru
	dswCUm2W3l+AzrjLI9XyFv5giWiT/Ox22Rq8Gtn8YRTXkaoRZOYkox0siCn6VUyk
	zlpSN/SlLf1fncrLYWz37ddGXIpb9b82teKJiKNRC/v6FwSMBdV7tZMvqERu5vG6
	3g2Xw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M9t+y9qmlyLWS65HF7WQgfcwKfP1umO6ZO1N8VkB2I0GEYapg0zKDiXZwWBZkP5HnTQzZuu1X9ocTfVMh6rsItU1pvCagYywE5M3bfeq3CN0hgnOfxjYPUIWV9Hl6+d6+2UsUdcxT/V46uACS1AqMOfqxiC2NtXZFQegTpv7ezPoTFy/A3U4nRLAmWNKEJYBLqG6O9qHqaPH8PfeySzZlsHeA+rHEI+uYBuwTVG8uNega8vOx6xbJRCeMGyGCiivRSQBkHUNRxeLti3ppxVe66iuseKJNuxcSlF4N8YfVaWCBSR6iJA2WbG723rw9smT59sBiCuN9Ava9ByK5JAHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RtQyx9noFtOqYEBVNhnS8m4lHM7MwCMFUv6fNB9MG+E=;
 b=tneW96Uu7aj/GQWHgetoOFirZRcwzZe4j9IwG5x1t/f2d1cD9aqWn3y/D4PCFTAGhgnLBo3Ioleo7KN9L4TqZpEUNbSMfNIxVnwfYRl3PoJEken803S0kKvR4pJ7Zodiw3ajVtCL3hMbK2kWYdLrpJNd8AfEeQ3rPLKHJTL1JhFSQSpsJOJJaKdl1TVMR5qOsv/MhVdzF71nTfOkUECVAtmeFZMRNqIkqYY8MWBnlcSqsj6+GoAAZovNxImql0Mkd11imG64+28D9w8VywYiAB43Y14qMwXTIWuVx8KBotwhRpc/l/6PRvq0d2Xi5rjC5YbyeSxQ82VRoAoFjSLP9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RtQyx9noFtOqYEBVNhnS8m4lHM7MwCMFUv6fNB9MG+E=;
 b=GhEjSUBunQYqOlZ6DcI93P4Qgoi0bp8o/dAg0RlG4/RJk8LTgmlYNX8YQB8GgixTv9HguV0t6Wk9n73fNRWoMOMX4QJMKmQJA2U2T/oGqIYCHtcngDd5Iiwn0BDf3GdXHkndTuMHfkuuj3gwbF1/jwThm3YinxTrHsNx2gse+Yo=
Message-ID: <99854608-a9c2-4a73-ba81-431536d423d5@oracle.com>
Date: Fri, 16 Aug 2024 11:12:38 -0700
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
X-ClientProxiedBy: SJ0PR13CA0091.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::6) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH7PR10MB6035:EE_
X-MS-Office365-Filtering-Correlation-Id: 71e48336-2240-4c33-fecd-08dcbe1f03a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?alFoTUhyWDgyWEJqN0sxOTNJa3EvZXNBcHNsejgyZEhGbEhDeXlvaHJNOHc2?=
 =?utf-8?B?OFNIMlplcnE2L2VJbHdSeUZZMENsbWRnM3dTcWZvRkRMMTh3ZFdRR2h1TlAx?=
 =?utf-8?B?dDhIc1RxVnE0NDNhU1JTNEVobVhYWHhRSUJockJrbTNLbVBTdjR6eWwvdXMv?=
 =?utf-8?B?QnM1V3dNWXp1OEc0Qm1uSFZ0MUYzTDhPOGFuRkF6b2xxZ2lhdG1nN1BwR1VF?=
 =?utf-8?B?Vlo5RU50VXd5a0tqbEZLQmlQTER4N0Z5cENuaWNHSjlUQ3BJakpqZkRoQXJK?=
 =?utf-8?B?dGpXV3hiclhvQnVDenFYdEFiS0srNElWemhXc24zcjRHelNQUUw5cjJNN00y?=
 =?utf-8?B?TFJWUEpjT2UyTEFDOW5uYWdNR2RodmRsSHU2dkN2UnI0WkNiUWJhRTkrYXBI?=
 =?utf-8?B?M0lmVnRUZUpKN3ZIek9ZNjcxRDhvalNnZmNvdENCaXRZSnNMTGYrN0h6MzZ1?=
 =?utf-8?B?MGhvV2E2SVNRY3M5djBYYUFJSElSZWV4MmU1NEwzMVJTeTBZOEJZalMrSWZu?=
 =?utf-8?B?bFhGLzZvNktxblBDZ0Iyb1JiZHFMY0VoRkN3dTJTVXRPY01EL3pKSkNCNWlh?=
 =?utf-8?B?ZVU2OVN4QWZkaHozRWhSbVlvSjBMNU1RbFR6TFpVTTFXZC9NVG0wMHU0QllJ?=
 =?utf-8?B?b2loNVNyeVBjQ050M044ZExYcEdINytGajloSDBBcmlRNFFzaFZoZmg4ZDhq?=
 =?utf-8?B?aUorOUQxVDhOVE55dTR5RkV5NzJnc3NwUzlHWHJkQm5tc1ExNDl6dFF1MDJJ?=
 =?utf-8?B?L2srQStpOFNTcjdlRWR2SnFEc3FUM0xmZzRqRGlpNEllU09qZ0pwVTZKRzdD?=
 =?utf-8?B?TUpJSExteG52K3NYeVpZckpPR05NajVsOExWdHVDT245bitqNDdTWUgvVVhP?=
 =?utf-8?B?QnRtQkFXcWdrNmZTdkNTZk5QemI1QVhHN2dpZTd5TVJKUDJMWXNKcHJUUVdz?=
 =?utf-8?B?Mm5aZVU5TTZubUZhREFERzFxTUJlZ3FRNElQQXEzMjVsaGV1T0NySVdacXJZ?=
 =?utf-8?B?WG9oYWNobjZUSWdoUlFQYU96UXUvMEwzMGt4NTBGcFFadDREZ01HTlhYNnpE?=
 =?utf-8?B?dGhVUmdyMU9KWXRtVW4wN1VVMTM1L1hjWlJlaTBMNzAwV2dMQTIvSXdBRGRQ?=
 =?utf-8?B?MFJvUDVQUUNUaFJ3bW9vWEV5dnVmQms3V0NWTXp0Tk5Qbm1TQ0NUNkNUZ2du?=
 =?utf-8?B?K3VjeXRVRGFpRGduaVdVemhuT1J5UzF5QUs5cyt3dXJac1NOVDBWeis1RkY5?=
 =?utf-8?B?amh2WjRCSHBaRHh1cmh3UkpLdUdINGw2OEo2WXhzcmpxdkVXYXYwSFEweVdM?=
 =?utf-8?B?VCtKajBYQXFzSGwzTmNiRFJIUE9OMk5iVjBDcUFxc0t4RVQ5WFRzSXlDVHRJ?=
 =?utf-8?B?TStpTEhDRkpCVWM0b0h1SmNjK1FaZTB5ZXh6MEF5ci9HUVhpYjlja0NZNVly?=
 =?utf-8?B?ZDRLRlpsU05tZFFKSExiQjFzakNxNGg2RHEzUmh1c2Q2bk1BU3hsdDNCOWww?=
 =?utf-8?B?ZCtnNVd6dCsvOVNvQW9nOEpqWmZFS2diZ3l2amlZTkU1Mzk3WXFJSHVVeC9V?=
 =?utf-8?B?VWZkV1dBTXFGWHNtMFVIZmhSbCtBdDdyVURYeXFKSStHQVlwWmNZcVNMeTd1?=
 =?utf-8?B?V2FEaGdqRVBWZXlHYjBlaEIvVDVNc1FvVThYcVdLa01VcnRCalpJUHdPenhL?=
 =?utf-8?B?L0tmaTBjVVhXRkR0aWJGUnh6bjI0VnJGVmlpWGFpUEh5Qzh0UGZHby91UExF?=
 =?utf-8?Q?rqvidHxu6lMnF1qKWlrV5fH4WlUOHfxk977GZv/?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?STZ5YnBEYmJVUGViQjZOemNoeThCbGNrT0JOa2lZUVMvMXZhT1pORWlWSlhC?=
 =?utf-8?B?ODM3LzI0RzQ1Z3F2QkNSZFdHcUhXdzVrNnhlQVpITjh2SE04REZCQ2hqTnRY?=
 =?utf-8?B?U2ErZEE2QmlYKy92UkVoSnJCdVNnbXQxYnlXUVROSkdaSGsrb1NoUTBtUFN5?=
 =?utf-8?B?Zk81UzdZSlpmNzJPYmVCa3NKYVo3QTBDSWlaOGlxS1VBTU1XMjNtd1FrYmxl?=
 =?utf-8?B?TW5SVXU3aStzQWRWcFJ6aEt6RDh4Y1NJR2ZQZ3lOMkZsQ0hCWWdMdnQ3R2Jq?=
 =?utf-8?B?ci9pQmw3VlgvUEFXZjllbldRcVArdm9UcjlBS0x1b3FLMUVHWkVHWmxYcDJ6?=
 =?utf-8?B?OCtEMm9FS3ljcGFoUFZSRHdSMlE0eUJvNzBmZ3diaExWbWUyb25jU1NTZjdX?=
 =?utf-8?B?OGMvdHV3bWF6VTVGK3gva2EzVjJBd2tVLy85dlBHdk54dDRHOGs0RHdhclNM?=
 =?utf-8?B?dTFieDBDdEZSdnVuTDdRQkM1VzhITTFPczVJQXBJT1JvWEZpYnNub1E1eE5Z?=
 =?utf-8?B?VGVEUWt2TFdyWVNOaUFuQW5jc2JYT05SeC9qQWxCTGZzY29CV1k4eFc1RjVn?=
 =?utf-8?B?ODhsOFNQNmwyZUp0MjdhMW93WnhLSm1TcUF2cGxrSEhEVDhxcXljNlJ2VmpN?=
 =?utf-8?B?Y1p6R1JocDNCYklKRmFxVmhla2FHWTg4TUp6WmVQMkdzYmlQaTVTZ1BVUzBz?=
 =?utf-8?B?ZFBmRmhCb0tHSTBCdnJ2ZTRBRUxnTGcvb2RtRUtvNm1wTi9NMitRa0VIZldY?=
 =?utf-8?B?RnN0V1FOVkQ4Z0dST2wra3hWd254cHR4YTUzOXhQQ2lKNEFBeWs3OWxETGx4?=
 =?utf-8?B?V1Rzd0ZuOWk5QVgvaVNGeGtsbi92bEloczQ0Mmp6MW9DRFQ4a1FvckhZWHJq?=
 =?utf-8?B?d29HaHJHdXdSbStVMFphU3RMeldKcmtlL0VsMXJBUjJFaExTSitoNGV1UWhj?=
 =?utf-8?B?RUpaaG5Ndjljd0p1bFB0aWpNL2NRaUFEVW5qZzdQN3doLzhVdmlscVk0ZzdX?=
 =?utf-8?B?eHdhU3llbHlrOFBDMm0yUGE0YXBpaUZ6ZW82MjBCRzl1Wjd6UFA0dE81N2FT?=
 =?utf-8?B?dm1iaml2bkxhMHIvMGYwRFpad2h4Wmc0RnZhcFU3dXptb2V3Q3VpVFBDMU1P?=
 =?utf-8?B?Y3ZPbzRZTmh6aU9SN3gwZ3kxZzg0Vm42NFpzbFZSZE0vRVFwaUZnK3pxTGpr?=
 =?utf-8?B?eGRSdGNQQ3h4S0NGL0ZNOHQrb2tVMjAvMld6UVJNU0d5TVZteVYzWHEyeU82?=
 =?utf-8?B?RFBWc0MxOVpMcW9IeXdBUzlCSHVRbUdCQ1RpVjkyYUhTakRmcTJZQ1hFUlRr?=
 =?utf-8?B?RWFkMHRNcWpNWFZsK1VubnhQK0FKbXVSWmxxUTNhTHUvSnhKdDEvTGZXQlNp?=
 =?utf-8?B?d05YRklEakY2b1BRcjhVSk1jZUZWSEN0SFFTVWw4RHp1NWhUN3VoYU9ZY0Nz?=
 =?utf-8?B?elBnSGMvVGF2STl1Y2FGTkNkRWlpMmtGMXlvWksxWUdWK3lrUFMvRFQrb1ho?=
 =?utf-8?B?Tzl0dnJFSld6V29CeXZtTk9yVnBMdFJKYUxDdGVXZzgyZXBSSi9ZbDJWWThs?=
 =?utf-8?B?eXYwN1dNRzlRSjBKeE96bWc0UytjTHVPakFpUmJJeTJkOFNIekl5aHlTSHhX?=
 =?utf-8?B?cC9aMjNTOEY1TEVNRlFXdlhSam9TMDlZOGJPM015bDlPV2FKZHEzM1JtM1k4?=
 =?utf-8?B?Vmk0bElzRUFwRGFNZ1NBT3M3a2hxa1dsbERYaTNxZW9nR2t3ZjVhL1cyOU0y?=
 =?utf-8?B?NEh2Ym02R2VXbzNQVjVoRXQvc0NLcjhIS3Z0ZDNiMWhoVkt2V25OKzR2a2dB?=
 =?utf-8?B?cjZMbUI2TGUxdUtDWXNwMHJSdWp1M1pBVlBwcFR0WDVHdk5rcnNjcm5qSFF0?=
 =?utf-8?B?U1N4b2hxViswclIvTi9ZNEhmMTJpditLWmVmNTg2YldZcVVYQUwxakFZSHlp?=
 =?utf-8?B?K1RiLzE2NG1NOW8yd3dEdkd1YUY4SzBHRkRqZzE1MDJRYzlhdWVEbDlFVVdO?=
 =?utf-8?B?ZHVUOURvWFRsM2M4S1htQkt4QmVTbFhuUzZJd0dZY3ZidWhzOWFPaWdOckxs?=
 =?utf-8?B?Q2JZcjk1L2Q3SkgvamgzTE14alUvcDNPdEs3MEtYeCt4ZzRlYm51YXJ2UXpl?=
 =?utf-8?B?cVVWNnoyYnY0b1ZRbWg0R1JUODRwRnAwU0hZdVFLdjlvVnUxSWZaTnRiRjZR?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	pYgn0gWBmbSUcf05GWFCkFPmaG1PbhD8TCGV9oEqforClIW+FvsukLJfrn1nbm8Uvy3DyR/o0ABmUPeqO5AcJertWoB+xp/3cbmpv4rcj8eoPQbaapPTPHyAh7qIJlUT7ZoDqf3/PbbALmJ6XiNsTyJffaR08/Prh6/466ZUCGdfWm/Mo7ajyiKLQFfrh7cDrdTtlX/1y7Y9akXneiXFbMuQ84MYb+2NjYyQFiYGDctZYxN4iD8cT/Tt6DV55mKpS4uMFxPvmultz1lYqOE/TqB6TmfNWwPp2i5IZ3xKxRkjRturCu3ejRepgu9uXt0AfWIEYdyl+2Ei/nAUOAU0zIdoSz88hQpteI3+WgXZfDJ5r2jbOHnXdoYxyZxfNtBeo+j/V+VfsY9Nk1J2pUquzddsZAAsQKqXQHTgAc1vDBuHqlCfZtqoU2aJ70Sw9uPncTkBlEqOP2ra7x6oLGn29F99NU93mfos/EM0WbTB8EchAXbvJRqogEc+oIKhcwxEuuqY7TGTWa0ToQi/owcN6Nu1vgt1XrbGEXoXxIaGYWOqxglp1HlYyeaCHh8RYpxtDvaBX0ZKhxupFyd1+6ZUrjdwIwWB8CDCYgGlQ0wb8R4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71e48336-2240-4c33-fecd-08dcbe1f03a7
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2024 18:12:39.5804
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d2mOB8hPVS7WTTgdWj7hPRaYN1OV5Tj1cNKyAFqnnUXipwVJrMGzac1OUz1AFeRW4R/gDE/J3k1kYBMeTHrJPBaQtamFj7c7NL6SB67lXNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6035
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-16_13,2024-08-16_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2408160128
X-Proofpoint-ORIG-GUID: PciyQe60PMMJZ157s99P2gV8paqd22F9
X-Proofpoint-GUID: PciyQe60PMMJZ157s99P2gV8paqd22F9
Subject: [oss-security] Unbound 1.21.0 released with multiple security fixes

https://lists.nlnetlabs.nl/pipermail/unbound-users/2024-August/008377.html
announces the release of version 1.21.0 of this DNS server, including:

> This release has a fix for the CAMP and CacheFlush issues. They have a
> low severity for Unbound, since it does not affect Unbound so much.
> 
> The Compositional Amplification (CAMP) type of attacks can lead to DoS
> attacks against DNS servers. In Unbound legitimate client requests to
> the resolvers under typical workload are not directly affected by CAMP
> attacks. However we introduce a global quota for 128 outgoing packets
> per query (and it's subqueries) that is never reset to prevent the
> combination of CAMP with other amplification attacks in the future. We
> would like to thank Huayi Duan, Marco Bearzi, Jodok Vieli, and Cagin
> Tanir from NetSec group, ETH Zurich for discovering and notifying us
> about the issue.

This appears to refer to:
https://www.usenix.org/conference/usenixsecurity24/presentation/duan

> The CacheFlush type of attacks (NSCacheFlush, CNAMECacheFlush) try to
> evict cached data by utilizing rogue zones and a steady rogue stream to
> a resolver. Based on the zone, the stream, the configured cache size
> and the legitimate traffic, Unbound could experience a degradation of
> service if a useful entry is evicted and Unbound needs to resolve again.
> As a mitigation to the NSCacheFlush attack Unbound is setting a limit
> of 20 RRs in an NS RRset. We would like to thank Yehuda Afek, Anat
> Bremler-Barr, Shoham Danino and Yuval Shavitt (Tel-Aviv University and
> Reichman University) for discovering and notifying us about the issue.

This appears to refer to:
https://www.usenix.org/conference/usenixsecurity24/presentation/afek

> - Fix #1071: [FR] Clear both in-memory and cachedb module cache with
>    `unbound-control flush*` commands.

This appears to have been assigned CVE-2024-43167:
https://www.cve.org/CVERecord?id=CVE-2024-43167

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

