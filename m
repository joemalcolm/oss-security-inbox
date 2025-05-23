Received: (qmail 11649 invoked by uid 550); 23 May 2025 21:24:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11606 invoked from network); 23 May 2025 21:24:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=LUDkA0/yMJ51T5Yl
	veeZqZepMuvOGzD593oBWGGFm9o=; b=IIyn0zLWXxrrvcip0A3j+hSR3w1s6sNb
	hWLPdUzU+lIrxc4C1fewFRv3wit8EFolpUa1KWNwSB420rmH+wKEI+fK9MWYJroc
	L2Ujl8t8nZHiGTjN/3Kh3yP6eg50xzzmqpp0MjLPBldmCpd9wSu5Qi8ABjdaxFmO
	fX0TT+n1AFFyjqX6C0hlTVq9aSA6v29OuCrxQQ4SHw9CXLhbqu9bzToMxOU2GDR3
	720yPzBmGfwJHi21ZcNy2VQzB4WQBbvepTTz3f3diKGDOBcoo1XFqBvbAVaCLJUU
	XvYuuX5YVbSqOMrCMS0laJegaj+132dSwWfgQUvMzqGYfZtYnQ8xpA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FJFNSfGjZjgAiifWc4a3krsF5A78y1fpNvvaP3WEWcv38ChrBZS+V7O6izP7NUgmIQ3PleUcxHp1DWdgE89yCtcEGYDROtADMwRIvgbA5M/tbjC25HpdrAjII3pqc7igthJyaLK6iT+NAIjP1MYRO9nBw3RnUr7zcZYO+LvI5Bv3TCKxvK2u4f4dwmqOHgsKPmbpyLJbvgG/j2ClHVMWAd2KhPaH8wpEHas4IhfyQQxKA9PitvfOV5nbCK5bZxkkIeTDHQcko5mjSXk3qHctzaMDgvz+4HJ7Vfcq+vbIbZUdsrL9AvbZ/2cCRum0ToL9+/LfKS0lhmHEVI/eOTgDag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LUDkA0/yMJ51T5YlveeZqZepMuvOGzD593oBWGGFm9o=;
 b=wMS3r7a3l520pezDuAQ3tBm52WlwCBc8AT4NxMrpEtbjlfczAaP/4iBFUdLjwIo9lOrEcJjU68G8CrZy5Qf+4Ey84ZYTP96EYInggiANbvDThaDN5bnAeJJtEVD57O58ak7OrVu6uiqG5HT6Rzw9k7JFHoxrCyJ8SBcgRDBaNHfrVfQR0JCE8lSy+P5KjpH2YBnDyvQMsq9fUpuKOYoAVA9ZUBomgdrYtHCCuQ1YhuuSh6wS27j0nFrztCffmHldYQiFYOAcZWk44pa5OnPTXQrP/U+z28+QwElWSb0wcTzlkMaoJG4dfsh0FfXoi3+6igvWzLLz1wBuXrV7z5c5HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LUDkA0/yMJ51T5YlveeZqZepMuvOGzD593oBWGGFm9o=;
 b=NFcFx4VYKwAq1F39HtDSpZe/eNr3ayMZOfDi7/NdGB1BZl4Vfx9P+Tzbhqg8lqKfIPW0nM7rxnNK/ZCOkXVEvcmH9+361y+E6r85CbCESGHBy/Wi4ozUplqOE2M2ZaJ0qRUk6iM5yGlnuHpowW15Hju8TkhIHAHBfIMXn+vs1mI=
Message-ID: <d003d52d-17fa-4830-baf0-db787ca5e52c@oracle.com>
Date: Fri, 23 May 2025 14:24:14 -0700
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
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0062.prod.exchangelabs.com (2603:10b6:a03:94::39)
 To DS7PR10MB5005.namprd10.prod.outlook.com (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM3PPFC190398CC:EE_
X-MS-Office365-Filtering-Correlation-Id: 591c606e-d861-4eee-e8cf-08dd9a402bc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UnhPRyswUTdpL0IvUmlPL1hmZkZTVFBqbjQ0STdkSmRUeHNxT2t6MGozTzJx?=
 =?utf-8?B?RTkxeElOd0IyUWF6dVV3RlRDWEVYSkJUV2I5bFFnSHRBZUJJTVlVdFBhaThU?=
 =?utf-8?B?aldBS0tYMGFSZDQzaDZ0MVR1Z2JHdUN6ek5COUdyN0xHQXFjMjJ1RTFLbWhM?=
 =?utf-8?B?Ym9xMUR4OTRlVUo1QUJuVVM1bFk2QkwxZ2p6QkhVOFpkTGtUQXFCMkgydmVB?=
 =?utf-8?B?THF2akZJQTNrbVFvUTNQYlh1L05lZThXL1lyUWs5aVZOOUdGT0dLeGVoajU2?=
 =?utf-8?B?SFY5RHBueW53RGp2d0wzbk5tSVlzeW1aS0xOYUhnNXhuMXd5a2l6K1BGVXVa?=
 =?utf-8?B?RFBNMFI3THAxek9yK3RxR0xvOUkxVmhHTmFUbEhnWWN1T044UTdJQjIvT0R4?=
 =?utf-8?B?bGJpU3hqZHhUeW5rUU42Yjg3THBBSjVVVDBkTUgwQzNIR1FCUnBzZ0g1OVBw?=
 =?utf-8?B?Y09xb3hDeW5yWVVKNVp6UTNzSE1hMDR2MDcvemlmYlYyZ01jcEptYkJySzVr?=
 =?utf-8?B?eDZGYkZjck5kUC9ZL1NCYmpKTFk3U2xzeWdmT3dkQkhDcUJkLy9ORXp5UWFS?=
 =?utf-8?B?RVo2UlVQUVB3UXNaUFlyVkZEdjZtZlkrN2VOVmc2cVkzN0E5U0dKNjlEd25x?=
 =?utf-8?B?cTFOcmJpZE1hL1pZWVhOZGI5Z2tteUY0UXFJOGZaN29OaThWYTNkVDlCeHho?=
 =?utf-8?B?ZVFaN1d6eGl0N3ZGamtVSGpsNUtQdm1FeXpuaUowNFhna24zUkdycFdNTURt?=
 =?utf-8?B?MGFuYkVsMDJ2ZGtrZ1NrZW42T0c2QzlGSElHSEtSNXEva3VReTc3NTNGY0Q2?=
 =?utf-8?B?bWZiV29URzEybFkxeHVlOFd6WUsvMERnUHNZdisrWlI4YkJiS0pMeGc5bWZC?=
 =?utf-8?B?cTVIRnlZckxNTjBPdVNxR2hCZFpsbE5tRzdLZXJuSXRiYkN1dXo5dTVUTHJS?=
 =?utf-8?B?QnduTUhjR2thdTdZK3dMbVhZenhrLzg4UytUbmw3b013MnYwRTVpQ3hvY3Jz?=
 =?utf-8?B?NmttMlptVW9IV09DOXY4ZjRXelFHVjZXbHVZRG9LbnpPNUZHUWkwTkJEM3M3?=
 =?utf-8?B?aTRNeDRzZ05KR2cwZGhJQkNpaVE0N2ZNNGlOaE1mTUxiNDRKVUVwbVRxSC9M?=
 =?utf-8?B?cFZmYnZjWUVZcTJNZkxqaWxIQUVXSGhTclhvNm9mTWdZMHY0cE1MQzNQcTdY?=
 =?utf-8?B?QzlnT0NYY0pRL1NFNkhDZndiM1ZJb1dwMThFcTBnZkNrenJ4ckhZRE10Ulkz?=
 =?utf-8?B?SlBiRXlhR2NpYkxYZkM1c2ljS0RSRnpLMFp5amtrUUFPRDhMMUtVOTlKdWI1?=
 =?utf-8?B?aTl1TytWNEJCS0xocytPUjZ1UkZqT3JCenMxcERRU3Q0TEhGMEZObkF4ejVY?=
 =?utf-8?B?UERReWRDK2ZreEI0dCtRMzdMQXNXd3V4MVBWUUVzbzZ0UkRMTUxNUlZtUWY3?=
 =?utf-8?B?VURzMWRWOUsyVnl5cUpCTDVTTkYzV2hZc3h4bnNRVDRBc05tUnRBQy9XRktJ?=
 =?utf-8?B?WWpDZ1dGd051NldicDkzZEI4am5nNU1OdlRwdWtzNUcwNEJoZTRLUmlKTGxB?=
 =?utf-8?B?VVg0L2Z1REp4akl2VGJmQThsTzBzbjlSSGlWd3hveWZReHNxOEh5WS8xTTFD?=
 =?utf-8?B?S0FFZ3Zwbnc0bzFmc29vTlNhTGZRRncrT2RvRU1aOExYV1NJbTFreVFMOURE?=
 =?utf-8?B?bmhRK0pkRHJONTRLYzBydlV0cDVldTBvU1dJRThaWDhFcU1BTkU1d3FyL1NV?=
 =?utf-8?B?bGZNRzl6LzErZk9YdWJvVnVvMGovdytXVjVFTnNaNmY5NFVMZ3ArUWhkVDd3?=
 =?utf-8?B?TGI3aGVqbjFwbkJXWS9oQ2dLamErWG8xSjhZOEpFTEhBd1lCaGNQUkQwVXpo?=
 =?utf-8?Q?XUrrSou21CQ5a?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WG1Zbm9xNGtqZ0FJQ0VPZWVSZGhBQkZUTXk0NUJOZUZrRlNtTGcyU3NUZ0NK?=
 =?utf-8?B?Y2FyRTRwNWRsVytBQVpsUlB4NTF6ckRJYmFQalVMOTZ6NTlybys5blF3ZExu?=
 =?utf-8?B?Wmt1R3BOVitwcEVYUEQ1UlQwWllIU1J1RnlzZkQ4YWsvcFhyeElHa2hRaHdj?=
 =?utf-8?B?Nkk1ZjVsZmVBS1BUVVVGZjlPWlY5aCszcEZodUJTLy80Z3E2dEFnVFpvWDFR?=
 =?utf-8?B?d0pFNFF1TUZRQllJRitzMExITmVWWWR1aHJldkxkWHdBaHc0UTdQY0h4QXNB?=
 =?utf-8?B?Q25aaVgvdHdTV3B5ejJvMUFkK2hkbkFjYlBnM3Vaek9kbUdxZWZTTFFaQ1Q2?=
 =?utf-8?B?WUlDaFdsaUJ4Sm5ZRGFhL294MDgzdys3WG9IUGlySVdNcldGQ0V1T2xQMFFV?=
 =?utf-8?B?ZnRtbDFaVnZWdDVHeFB1a2pQem9QNlRhWWxBVVJDQm04TDd6UkRPUGJxQWRt?=
 =?utf-8?B?S0ZSOGNuUWtvMGk2d2pIU29JQmRWYmt0SEtyY0JJbjlOdzM5c3pCeDlYbysv?=
 =?utf-8?B?dUY2OStoeU9OYVhaZVc0ZnZSRFVBeDlHTEpHY0JkclB1S0dLMGY0dmlaWE5O?=
 =?utf-8?B?WkRSaTZNaXc4MXJqQjVDbFZpNzRqMmFuUFdOVUlJRXlHanJ2a0FEQkM3Y1Fo?=
 =?utf-8?B?ZkVjODNvS3dCVHdHMGt3elhYTk5JVURSdGZDc1Q5bUNST29BcGUrcTBjd0pa?=
 =?utf-8?B?dVZoeDByZ2luZkVoMG5mWHN2cGd3MnFDaXBBWUpGNHprNHQvbjhFdzlBN0pL?=
 =?utf-8?B?S3dUVDlBN1lsSDEzQ2Q2T2kyQitxL3Y5UE92WjFmVWFQRllwQTdzNXdCSnFX?=
 =?utf-8?B?dEhYeXAxSjBXaTRvOW45TDlyZFRuaG9yV2JoQ0pyS3dOL25kU2hJMDZsbzYz?=
 =?utf-8?B?bEtyRTNTNG5WWEg3NUVIVUVXSk15LzlBR3BLWUVkaGpEblZoWGlvNGxiVkVp?=
 =?utf-8?B?OXRzbWh0OWVxWW94bEFyTnYzejN2OHNHd1htNHFFcnJ5STRxVTRmVjZ4R1ZX?=
 =?utf-8?B?S05sK1hhZnlIcW1acVRMdUwwc2VrbUhpbVVFenlybnBma3ZxTUgwalZ0d2hM?=
 =?utf-8?B?TEFSOU1ONkErUVBOMVBwelk2VUJodVY1VEtYcWNrMm92M2JZbE5LZnpxZGIv?=
 =?utf-8?B?WWZuS0M5NUJJdWZqcjVVQm51QVZTWHgwVldSV0JVTm9GSjAxcjRyTUgyckl2?=
 =?utf-8?B?aTIrb2hCZm9TVHJ1L2pybmgyc1J2cEJubnVVTnMyYUQrRitROUNvdXlSZEYx?=
 =?utf-8?B?UW9XQ3JLNk9HZXpEUnA0Y2FjTU1HN1YvbllGV0hyUlVxWm1tVXgvM3Bnc1Rw?=
 =?utf-8?B?SUlWWmRQamFyc2taR25DaUt6azBuK0Y2TFEyUVh4OEtMUVQ3UkJyUEJoSUd6?=
 =?utf-8?B?NFRQTGIzSlFOdldtbGZlcGY0SXJ3RDBIQTgvMVlzcmtlN05MWjZwVFNOMkN2?=
 =?utf-8?B?emZkTkhEZEs2MTZJc2JBR1JDQitmRXArekZGQTZtQWpMeWVESUpXTzN0U2xL?=
 =?utf-8?B?VWs5R3J3aGlKMjhMbFlEOHM1MGpuVG5PN1dyQmZBMUVLU0ZlVzViamp5dmRE?=
 =?utf-8?B?S2tCOTRxNUxnaGJ3NTFIa05VL3hjVXVocURPczV2OTRhKzMvbmtTclduM2sv?=
 =?utf-8?B?YVlMbnBUamRscmdBbHFjRUNseEdrMTk3YUZMc2g3bFZISlVoV0VXVFFuSjlB?=
 =?utf-8?B?RW82Smo1QWFTTkJ3T1hHU1FyN21VeHNlamxrbnZ0TElPNFJmKy95SktYZDhU?=
 =?utf-8?B?MGw4OEdkb0FJQkpzVlZBYStXQWVtUkczWHN5TDZwcjEwS1liSUtpb3J3eVdt?=
 =?utf-8?B?d2JLMW01RjFHUm1neDJlazh1azZSdVRIazlUZUhEVldlZzVTZE9IRGlmUWww?=
 =?utf-8?B?YjRLNWI5c1k3ZFpIckFDN3JkRC94OUpTbzBEbjN3dEdvRlNhdUVVR2ZVM200?=
 =?utf-8?B?MkptQW5xNUY4bFJQa1JHRHI3Ykl1aWRDbUZSeEh6NDRHeFlHc2gwYngyVFM1?=
 =?utf-8?B?WlFXejBTV2R1L09sZVZjS1pLTm5jYU1PdGdkREovcFJaRDNPeFlQaENHK2Zx?=
 =?utf-8?B?TjhQWWFDNVVxWGdxVDdPNEQ5YTFQaGxJVUJDNUxWM21ZamlpejM0UmVWRzhX?=
 =?utf-8?B?SFdGNGF1YWhmWHFxUHhoQ3NqMGJoUWlaU0loV1lHcFZWWEJHcEVEOXBHY2N5?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	9hQMxolInPeILec67ixarW1acbKjQdSoXHx14shrEkDbqrrrPrFZPL+hU+SYXgFhyJ/OYLtb4bvpMLFBv1BqJNbeJ8Up8Qt87LrFO1Vt3+iu/RrCwWdPATSE79fdNrPlKHIxYM7Ws1m869aa23Uj4DZChiHp1NsR4DWoGclO3zX+QKGCVvBllT2IPpoRR+hiGbAC7ip+hqVSCzYccmHFW/am8Kj+3nexe9MhlGhCGCLNouKrAWC38g/TxB8DXjL9jDVn9B4gD5ew12aPt3GPIveuRJzVfKZsIs/zk+x/8mmURvMxuH01vpim0UkgD4Qzk9no8ZkXQbZB3Hus0wT/TwecJqYop7AyZbmomBUEl8WrBF02nnFkg+qH1o56z5ysAB6KPLLfU9rtgXPR0ya0jwMVdgjhHBKrorF7z8hSMU66okFKbWkGk5iXyrobgq2TyGUvnhaVugckvMk2HCqsEiVdptv5k3XPwXSwXQojzxU5FKo7++8ggv3HxuEB5EZ2p4vDAM3m0Zjk/+USoxt1Zaeu5oH3KwuA8M3IaXacx5qv2B6iKAAMQsItw/2J+VyY2iNqjGOiP+ZLiHST7BtQVzAz9xnKDNI6/8NwjoT4MUM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 591c606e-d861-4eee-e8cf-08dd9a402bc4
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2025 21:24:16.0808
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v7hhAm6lkpkr42B7LEHAF3qM3lXVw2kSqfOw4qRSgauJfyt4p8ssCViEbUdXGUTjuF3x3JtD7z5BXv+zldjWKEAsLri85HL3yslTQpjGqOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFC190398CC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2505230196
X-Proofpoint-ORIG-GUID: d8lC9tRsw7axig9pYBhmUI9a0VPc3Djc
X-Proofpoint-GUID: d8lC9tRsw7axig9pYBhmUI9a0VPc3Djc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE5NiBTYWx0ZWRfXxySjzBS/B6Yk hEmxemUppNcY4A9vO3G4Tkpg/O6x99kMM9HnUju21ekqq8NoCtSCfF+eSXqFWLCNQSPUDMdZaiX DVe/lk5DtGGY2uaGgjgy3eurz7cSMeLX6TlyJx65xYpiLbRLw2ZvR1DDtPv8XEKnIx4gqZbmilA
 xFHV4lvzcAnfI9Nu/fu+fFlgfeJiNSDav5NuugzbWb6ZBMGo7vkDEhUc9OKc1Dgz/6AXPrC3Jh8 NdP2sReyOtvpzjKDh3qHGm5aM1YCcYDlmZqqsamvX+n/RVy7GrJRCr59Mrc2F3Bar/dEcSIWPln 5+KgLuGqdwreIX267N7dZl9gsdvpEBGuVdV0Tv2IasJKPTRIdjB3ECqJKjJtttwMGTvhcPVWGpd
 5oU8SFhcI/3aXf4yq3N9tfyd6GN8NiYI9qCWPY5idNw3DV3iZ/xsE/nVjDAxOTOMk2mlntSW
X-Authority-Analysis: v=2.4 cv=DuRW+H/+ c=1 sm=1 tr=0 ts=6830e784 b=1 cx=c_pps a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=8r2qhXULAAAA:8 a=gDkh9niWAAAA:8 a=yPCof4ZbAAAA:8 a=3JiXoAk_8kiV_qupRfgA:9 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22 a=lGOMK5oLEwUwZHJ1FuQB:22
 cc=ntf awl=host:14714
Subject: [oss-security] CVE-2025-48708: ghostscript can embed plaintext password in encrypted
 PDFs

https://www.cve.org/CVERecord?id=CVE-2025-48708 was published today with
this description:

    gs_lib_ctx_stash_sanitized_arg in base/gslibctx.c in Artifex Ghostscript
    before 10.05.1 lacks argument sanitization for the # case. A created PDF
    document includes its password in cleartext.

The bug report at https://bugs.ghostscript.com/show_bug.cgi?id=708446 says:

    When generating a password-protected PDF using the latest version of the tool
    on Windows 10, I noticed that the full command-line input, including the
    plaintext password, is embedded at the beginning of the generated PDF file.
    This allows anyone with access to the PDF to retrieve the password simply by
    running a command like "type" (Windows) or "cat" (Linux/macOS) on the file.

The fix included in the 10.05.1 release appears to be:

https://cgit.ghostscript.com/cgi-bin/cgit.cgi/ghostpdl.git/commit/?h=gs10.05.1&id=5b5968c306b3e35cdeec83bb15026fd74a7334de

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

