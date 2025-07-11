Received: (qmail 1783 invoked by uid 550); 11 Jul 2025 21:35:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1738 invoked from network); 11 Jul 2025 21:35:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=PY34zWezjFgOBcrb
	kf15AeC3HevnbUT13/x1tUWSJqo=; b=UOilrtr3FfYxKOqxupoKqYoyfFLlNhVk
	wka4EYjpEZyqkDfCZ8i8cuWtQR850UnkbdztlNKyYBK5QvgfoU6R9KHL6Dcgt2Rh
	HPzHphlU07DsuT/Gwle452kjBrH23yuSzr8MNZwhKKhjfOgqvutsXljPWpYs2nrh
	eH72a0SbjeqlyKk5Yb/b8ChBzsdigRHpHaOGCNYfR5ZgTFWT8kiAB4QVdGtpESZA
	iz6u4IlFFN6NTyc+69jc6yi2Na7Yr0nWZ8LdlqeMERPHddaIIWbvZ2z1NklIw6ax
	5kPRfKSUM6KnJZ0zurhDpXY6PO8eUJiCb0FkAZhEDU1yo4gZT0RPWQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cz+NnTr/Aa/uIu/FIIWY3aEvCx9WadlCV8VOB7g2gqHffKp67djLVCNTB+mD0/pouXVDvW/AbkonY4lYhglVW6XIAo+AldWjQoEwUwz4Enw51MDzk02mr2u4v9N2fl+DSREVsuVe9DEjCOBnaQOp928SCgcNfA3hufok72GyYtFJCJsjfUqG6x+i6y0dhql7VykuKDN6dry82KFuI1Rdo2M9DIRHhWuVFLh4FVV3FxkOR6qEmbKihZ7emFUg8S76tdijtGYjfQh3zMoxCuvMnNiClgkGbmnC+vPLoF0epyEp73rTeT5IYuIv+u7vII4B6KosbQQCNoe6fry8vs4JAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PY34zWezjFgOBcrbkf15AeC3HevnbUT13/x1tUWSJqo=;
 b=n7AxizULkGo9tPa5oJXCL7o7opx1QPRG+2rnc02UfFwysmEqTbeXRknWd2qe8iW4qqGcjdfRx5WklB11er0FdzDqmpFEfW1DMEsXVoHtye7n1Ul7xcuO9lHrmEE/3QC4tbL2jn6XLwd9DUF0mhow/R1zEsBi3Z2FT4I+R44oYd6cPkeR6k5OB0jGsxoLdNDoydeHl9xhCGzm8Rvdmr8ElGZ95HW5zLOZiJmNvddUXdCqq7nlSCfCwbe5JrAw+kZl9ggIC/L+UJ82azprGtVf7QK0tnzcYjZTGrf9T+1rVxQxqtnxFTjpGuVdhtZd2le7mMVxa5TgqtF78ondYcoIZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PY34zWezjFgOBcrbkf15AeC3HevnbUT13/x1tUWSJqo=;
 b=v51+NxsvLD1gzSenyBEz+uhjfbeYFH/DZ65OdisjW5Hs0zG405ZazygYVqdCahddYlOPzjaEdhXydTJvPJQyo256G3mJRk9SGDlbfx57pdSLkDqOt2nmq9dra+rjXJHFOXB6IRwlFdXNP1rBrIbdQbyezS5mjIqFi4jRCBF7Yfw=
Message-ID: <dee5300f-607e-4108-9739-a63ee81edeb4@oracle.com>
Date: Fri, 11 Jul 2025 14:35:19 -0700
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
X-ClientProxiedBy: BY1P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::10) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|PH7PR10MB6334:EE_
X-MS-Office365-Filtering-Correlation-Id: 69d7dd7b-c1a6-492f-3804-08ddc0c2d6d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NmJxbk42RFBqdFFvbXB1aTI5T0RBWk5LSGpjK1NML2FUcU9UQnRROTlwSTBj?=
 =?utf-8?B?bUZ1dnFKVEFCRERGVHhtcnV1QUI3SWxLTVlYM0NmNlhhdmg1c3ZGUEZ2ZDBq?=
 =?utf-8?B?cXFZWDR5Rm9pTHpJOEp5ZHp5SHYycjVoeVJWeUNvVUpOSjhtR1pVUzJ4WnN3?=
 =?utf-8?B?RlVIZW9PZSs4NDR3K2RlRWhmQ1o3SlFLQzRQeEJLbVEyL0pjUy9WeHRmNGsw?=
 =?utf-8?B?MmF5akhsb0svNmlqUXVRcjE2dmF5OHBtdGJrMjZnSnlFR0kxc21DTktkVVRP?=
 =?utf-8?B?T0tLSmlCcFpkT0Z4NnVqNjkrbnY2SUYrQ09QSE5LWEFpNFJKRHVPVzRKdTBt?=
 =?utf-8?B?azJhR3dNRU1HWlNEMGZSWDhyMXlBb0pMd3dtUUlKSmhWeURzbzN2dSsrWkZC?=
 =?utf-8?B?czdxMzNkemQwVVdDRDUvQURlUmFBWlpMYjdIY25OckJyT0JUV25heUlsVjlW?=
 =?utf-8?B?dTVTT1RUQ0FtSDV4TFN0Yi94T0k0bnVaR0RUUTFPZEZwU3FDbjFiVzdBQ1M3?=
 =?utf-8?B?V3RWWVVRcGRwQW1FTkdIaXFYTXk3VEs1c0hxZ0xlUXVKY3JiT0krTUtTamx3?=
 =?utf-8?B?TVBZdzRkaEUxTDVFck1KWVpPNG8zaXhGbGpiVXdpWmhjK0hQOEhMOUJEc1Vl?=
 =?utf-8?B?YmRhVlVCWjRZbjk0bmkyZnVtR1NlVXE3KzlKaVI4cXJSY2ZFSjBaUjk0cGxx?=
 =?utf-8?B?NTFoVzBvUk81a1BOTlZpNUVHamY0R3VMc00vNDFmWUtDd1g5V2Z1bjYxbVo1?=
 =?utf-8?B?R3NSSnJqQkFrcjVkZ3hDeVBSZjl3d2J6a2M0dDd4ZFBSUVF0cUMwS3lvdTZK?=
 =?utf-8?B?bWtTWHhNVzlia0NsS1AzTUgzdm5oUjdBYmNnazlGQVA0WXRPQ1U4cXYwaDUw?=
 =?utf-8?B?ODlEQld4a3czUVJYZVphMSs1a1NkNnkrSVBocU4xSUIrdXpDcFcyVEFhZXFU?=
 =?utf-8?B?dDZRTWEzalNuS3BVNFZvaVVLdjRxNE8rc21VV0QyRVVTRWZaQ3piTmJVSWt5?=
 =?utf-8?B?Y2VOZ2xrM21DUVh2S2pIQkZQNWNTczdpVTNwQS9kOWdrWXZzVzNNSFBwUzVv?=
 =?utf-8?B?SHMwNmFUczRrcGRhdDliR2pQQitpd0RFQmNLbERFak9LTzBRdG95a09Nc3Yr?=
 =?utf-8?B?SGg0ckJnTzlWUkY0azJGdDJ6STZWakNGbmJwenpUV1ZaNFhLLzFQNmc5TVpI?=
 =?utf-8?B?VXpQWDhJZ1ZuK2xnb2ZHVTdxVUY3dDd0a3pHbXU1OUdIMnNLL0xJZVBtUU5t?=
 =?utf-8?B?QTdVNXRoRDIyTUw2ME9kbnZic3dJYVJvTnFmY1FraEVlSk12cEY5KzJjcWNr?=
 =?utf-8?B?MlhXTTQwN0xQdVNZdDlwUFAwMVg2VTJmckRWZitvdkRZOW02amVMR3Yra096?=
 =?utf-8?B?UjhGN0FFc1BGbFlPL1hKRVZtT0NSTVVCQnF0Z2xBaFE0M2NOTkhsZWE0MXY5?=
 =?utf-8?B?SC9FVXg5NmNWekFOMGNNaTl4ZUo5WVhIeGpqNHR4bDg2Q2xSczh0S1lhMUxJ?=
 =?utf-8?B?eUdyRWZ4NkNBWU9RWm4rRWdxMHp6aDZiTGFUOW9qdXJsa0sxQ0NrZC90Z3Ja?=
 =?utf-8?B?NG5aSG9MOUZoVE5uMDlsOHpCc3U4Qk1wT0dCNWE0ejZqM1E5MExkWlV4WEgy?=
 =?utf-8?B?QXlEV0RKeVRYemo5OE1BME1tVHAwdmhaS3NCc0pMQThvMmNzZWI2dXB0QkNM?=
 =?utf-8?B?MXkwR1JXSzZBMGFmK0c0V2JrZWRpWUxNbnNZMXBiYktEU21mVjdmYnViZHNj?=
 =?utf-8?B?QXl6S21RNWZ1a0MrdU1IMHNRaFpoZHdtemJvQTFBN3NwTlF5RkUrcGZyZ0J2?=
 =?utf-8?B?eUhkRVZyRmlLYWpTcVRwcVA0NEFSZmpsSC92VUNaM25hU2hHTEhwZTlSclBC?=
 =?utf-8?Q?5uN2BmNDxQyTc?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?REhtOGQ3anYvdW1oSlUyakxrdVBEdllweDA4VDRMaWJjSEdoT3BGNmZWUnB3?=
 =?utf-8?B?aVl5YldvL0dRU3hRbWcrUVROUEZHSGpLeE85YlUrU092YTFqUW5NRVlKMEVv?=
 =?utf-8?B?Q3lXdHpLY0pDa1puWXdpcWVyNU9ZVXZjbXpQbkhHQjVmb1owbm9BVzlwdTJs?=
 =?utf-8?B?QWd2M2tMQ015Rjc3Sm51WHhKMUZtejNydmNMeFc5dDZEU0YyMmdUc2RRYVpJ?=
 =?utf-8?B?Mlc3OWsvZW9vdTVKSm9mUURmaG9ycXMrb1huUysvRlkyN2dnK0t1UGVXWlJC?=
 =?utf-8?B?cGVmTStPYm0zWVlrMlE4Q0VSMW5PenpKY3FEMlE1dFU4ZGYvRXF6QVhCQXBz?=
 =?utf-8?B?Vjl5RDhacDRGckt0dFRhVkdYdHFVQVhaQzhnT04rMTdTclJuVnB5dy81NnND?=
 =?utf-8?B?M1l2OStUZVhqVXNKeUNWOVNGOTZYcitmQnJ1K2xSNm1nR3cxcnRZRXpKS1pS?=
 =?utf-8?B?WFNRcDlLVkd2Wmdyc2Z2VHd4TEN5N3BQcmQ5ZWNmdmtWeDZ4ZTRTSHQ3d290?=
 =?utf-8?B?VXBxNVlXK0FmRmNtOCtyN3pEOFJnVHB5UFdkUk9lQzY2SGVFbFR3VndaYUVN?=
 =?utf-8?B?V0FDU2k2QlBhdEhiWUVuMjBGa00rNXBlSHh4bzFOS2c1aWJGNXhCOStRN2x2?=
 =?utf-8?B?QlpNNlg4bXdtR3l6Q2twT0pnQnBVTzlnekVic1FqWnN5eHk2bzZNRHEwR1ZH?=
 =?utf-8?B?NzJRZGV6dGc1U3FDKzRma3FZNVUrNlhFZFJVYVB0NW0xK1g2blI3N2FyejRy?=
 =?utf-8?B?MUZsdndKU0pVTlZad3ZuMVdEZkxYV3B6VE9OZk4zUkJ6L1QrRzJqcDhqRWhB?=
 =?utf-8?B?VnlKVnRSSGpEZnFZWHYrM1NmTXJEemN0aWVIZ00vWVdPSVp5bnNzTFUzUDZ4?=
 =?utf-8?B?RGFRbmdMdXBJcmhkOUc5b0Q0WjJNa2NhZndrREt0ZW1sR0N0WCs4TVN2ZEZ2?=
 =?utf-8?B?WWwxTWxJQ01IcE1tVksyckFzd2NEbkFZSXhpenpmRUc5SUI4RHB6K1FXU3Zu?=
 =?utf-8?B?WVAwN3FCcWNCcGU3OXlYSE4zbnMxV25NZTZ1Z09xQi9VV0ZPbnI3bFowUC9u?=
 =?utf-8?B?eHFMNm1VYXNtemVJTDhEWFhrbHl0T0w4T2NjaExCV0NWWHMxU3ozL2RSeStt?=
 =?utf-8?B?bXdMejhIYThkYlppVjFQUmp0WHpPLzFaVG1kQmR2VnY3Rk9DUEZZcHUxbVNJ?=
 =?utf-8?B?TVpCUWROQlhIeW9wYUNjMTlRRXRlU25GNkY1d091N1liRGsweVRLR1JaR3VC?=
 =?utf-8?B?OFlPNkxmMG9vbDBCdCtrVFMvYUJzNGw0RG1YWXFxbnVBR1cxZVQzMUtSeFJP?=
 =?utf-8?B?a09tL0FZN0R1bmtYZi9OaGFiTjZ6S2Jtcy9YSDVIbXZkQlM1THFhUmVubk1q?=
 =?utf-8?B?b3RGMDV0WGhwVXFHTWFETHpNbE4rUlhqQ1dYL2g0ZXZKSEZtNW5FNUZNNGcr?=
 =?utf-8?B?QzhjWGgwc3JCUVNmYWpsd2ZKQUF1SmN1N3N5Znl0NlZmN2R4SzY1SzY5WTgy?=
 =?utf-8?B?MnpMejlSc2xnbzcwa0V6cWNUNlBoWDZCdzlYLzhlMGE2WEE5WEgxZjc5MFQw?=
 =?utf-8?B?OFd5NmNnNnQ0VTRPR1ZBbjZGcmF4N1dmZlZYcEYvV1Ezb1M1ZE1SU2pCelA2?=
 =?utf-8?B?ZlZqeW04bTZRN1g3Vm9YNUdIVE5vS3FxYlRFUTJzVDNLdW0wcjM3czZjZmoy?=
 =?utf-8?B?d0ZHa1lueHdBamRKS3hmNkttWHhidDBXVFdBaENVNnFwNG1nZk14VHZOSVlx?=
 =?utf-8?B?YkhlN1ZnMHcvamFidlpySDJDTzZ6UU5NQjlGOTJSNGFoUTIvejByTXA0UDhS?=
 =?utf-8?B?cVBsb0JOcFpRZm1EQkVLZ1RRc1pzZHpPOGozaVprNzJEMHBLQlo0Y0t5K2JK?=
 =?utf-8?B?b1RIY2pVQVhqaUVkQy9mRm5LdEVQMVVRUi92MHEyUWNFUXZNelpmZ1MvOXpL?=
 =?utf-8?B?RytuWnJOTytZS2QydWRERGRzRWcwWjZCNFIrbVRVUmxDL25FdHJ4Ui8vZlZm?=
 =?utf-8?B?em5nNXYwazU2RVZaSHVRbDNzZy9MQWZOUDQwNE11Z1U5T1lrcFM3eGYzNG1M?=
 =?utf-8?B?SGxwM1Fmc05zMFMvczdoUm5tL3VLZnR2MnlIanZjRzAzZmRnbm9MM3lCOUlD?=
 =?utf-8?B?TlpacGlROHNHNlZ3MDdhL3VIa2FLMHhpUGEwbTdOZTJLT0l2K2taeFd1V01p?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	3W4RhybZnFgY3fsT9KZBKVNhKf3nuMplH5I4moS9yynNGB75D7Sk6cF3a/cjFubzqa2sziv3oGNfswuXKWYfsoT1auzNXDnRXe7vb6bvhHA9FIBjFWvS6Ieg2TnjtjyGQkwSZk8mq0wIE05aqWGVChSzSKDOH+dc5B0d5A/rdWSK+0X7nUxcKMtgtXPA+MunddTOjw3PZGtnLCReIIpRYVUSCzT39HJgvvR9jHgNeUlsVkQMLzUGHeTyDqVS8pr2hpRtiaYHg74UfJmwFnT1n7uqVqegN5mq4ysJFc3uSWswkYjedpDBPsCs7K+Vzey+QolvYz6XJY56T2so7Bzffor0UnmBgTjSaC3uAKvTasmJP7TY1I4tqj02tVuOgknJjyoVquLFoaARFLfBlJr79fpa5SxdSljArucI0UKJkmERI42UOjYMj3aAkCJJJbGC24kDvyrmEGhugW8GERbu18k373EeNt6TIOmzvKEp5ez39d45ylIkVkEKOQ3tXYPPwfELwJ13Mdqt34AOAJy/lFjsJ9dIfRi26jA8DoS1PZj7KDf5pLQxa/tH59mPqiBlqyoizF+Iz/v0+twDLuK6Q0tDU/clAhkWlKx9qA0BDUo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69d7dd7b-c1a6-492f-3804-08ddc0c2d6d0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 21:35:21.8633
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j3ectuIL9ClqonLPwj01h1nRypVw7h+zSFPf0IszW+ZifpVIyY+L6yN/XhYrIQJ2A7S6+Zn07+uEpP9hlwBhLb9L9O/QDWK9fwJ8/YNuSiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6334
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_06,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 phishscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507110163
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE2MiBTYWx0ZWRfXzGEmEH7PROao lD/1KDaVixtEnBwKp8cXlkDeBEkS2MivbnIwP1sI2mJ9Kq3EJ9CnDqm6Ul9yAx2aSHptnHO31Uf GRBmbbAeVlf2eqCwC9vYl6hIJxtA13TBJgVpnaSm9jPJ96MCdn/J9nZX2c0pFgf0MJ5Ry0e5EEU
 dpiTHrd+CXSktBXHB9pq65pvWtxDaS11L/rSRXnSYEr45kt2qdIZ4CuYGdf7Ngd+nSKBrKk+mv4 +Po2NU4V6888OFUcHKXMe0MeQlzwa6fhqf2DSIh1G6t90wkWfLDQ8wHNQoWJZ2bqv2qkvDt/Gi2 p645Kf+x0CX7AYW+cgNJulHTtF0yDkYSYD7yVefqaQgsRC7nEJP12HFY4U0zd4LhZlVJ6Pzkuyd
 qgew1veWYCMIweTNzV1X3c0QGrB/qTGFB8BOhPGLYztqqq5droJJg4vFagwjl0zki8rss7yl
X-Proofpoint-GUID: VJHfEOrD8K49_yjREohyKikvuXhuDH5Z
X-Authority-Analysis: v=2.4 cv=Htx2G1TS c=1 sm=1 tr=0 ts=6871839d cx=c_pps a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=GwUem0DFAAAA:8 a=gHvrztcjAAAA:8 a=p0WdMEafAAAA:8 a=yPCof4ZbAAAA:8 a=7H0QwECn-EBl4mPAUIwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=VO3SqhUBEN0A:10
 a=yQjQ0J4DlTkA:10 a=T0kky7oGOrUA:10 a=r0dl5i_q2XGqDZkti5dn:22 a=WxcTniOcZjVTbgxX5Dew:22
X-Proofpoint-ORIG-GUID: VJHfEOrD8K49_yjREohyKikvuXhuDH5Z
Subject: [oss-security] gnutls 3.8.10 fixes 4 CVEs

https://lists.gnupg.org/pipermail/gnutls-help/2025-July/004883.html
announces the release of gnutls-3.8.10, a bug fix, security and
enhancement release on the 3.8.x branch, including fixes for:


** libgnutls: Fix NULL pointer dereference when 2nd Client Hello omits PSK
    Reported by Stefan Bühler. [GNUTLS-SA-2025-07-07-4, CVSS: medium]
    [CVE-2025-6395]

** libgnutls: Fix heap read buffer overrun in parsing X.509 SCTS timestamps
    Spotted by oss-fuzz and reported by OpenAI Security Research Team,
    and fix developed by Andrew Hamilton. [GNUTLS-SA-2025-07-07-1,
    CVSS: medium] [CVE-2025-32989]

** libgnutls: Fix double-free upon error when exporting otherName in SAN
    Reported by OpenAI Security Research Team. [GNUTLS-SA-2025-07-07-2,
    CVSS: low] [CVE-2025-32988]

** certtool: Fix 1-byte write buffer overrun when parsing template
    Reported by David Aitel. [GNUTLS-SA-2025-07-07-3,
    CVSS: low] [CVE-2025-32990]


https://www.gnutls.org/security-new.html provides a few more details:

GNUTLS-SA-2025-07-08-1
CVE-2025-32989
Severity Medium; Heap read buffer overflow

When an X.509 certificate contains an SCT (signed certificate timestamp)
extension and its length field is malformed, the library could read the memory
buffer past the boundary. The issue was reported in the issue tracker as
<https://gitlab.com/gnutls/gnutls/-/issues/1695>.

Recommendation: To address the issue found upgrade to GnuTLS 3.8.10 or later
versions. The issue could be effectively avoided if you compile the library
with -D_FORTIFY_SOURCE=2.

------------------------------------------------------------------------------

GNUTLS-SA-2025-07-08-2
CVE-2025-32988
Severity Low; Memory corruption on error path

When any error occurs during exporting a certificate with an otherName in the
SAN (subject alternative name) extension, the library could potentially double
free the ASN.1 structure. The issue was reported in the issue tracker as
<https://gitlab.com/gnutls/gnutls/-/issues/1694>.

Recommendation: To address the issue found upgrade to GnuTLS 3.8.10 or later
versions.

------------------------------------------------------------------------------

GNUTLS-SA-2025-07-08-3
CVE-2025-32990
Severity Low; Heap write buffer overflow

When the certtool program is invoked with a template file with a number of
string pairs for a single keyword, a NULL pointer could be written past the
memory boundary. The issue was reported in the issue tracker as
<https://gitlab.com/gnutls/gnutls/-/issues/1696>.

Recommendation: To address the issue found upgrade to GnuTLS 3.8.10 or later
versions.

------------------------------------------------------------------------------

GNUTLS-SA-2025-07-08-4
CVE-2025-6395
Severity Medium; Denial of service

When a TLS 1.3 handshake involves a Hello Retry Request and the second
Client Hello omits the PSK which was present in the first Client Hello,
the GnuTLS server can dereference a NULL pointer. The issue was reported
in the issue tracker as <https://gitlab.com/gnutls/gnutls/-/issues/1718>.

Recommendation: To address the issue found upgrade to GnuTLS 3.8.10 or later
versions.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

