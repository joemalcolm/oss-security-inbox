Received: (qmail 1364 invoked by uid 550); 30 Sep 2025 18:09:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1323 invoked from network); 30 Sep 2025 18:09:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Xl0QdCbx7oXAhlKl
	C3VfcBW1aIDuE1X5Tf/z9+XGbA4=; b=H/J00FMFQy9kTEwoLxBVnDCep8RSgQXG
	X1CFL+lXA9JXEnVcB5bKEYQ6n0HITmuBTgiamsJ+JpozMjMkxp4f3RPygpYrzwkZ
	6aibqpkzQ2mxWVn0GI0DoVsuCcBey9lU1lfDs29s7FGYWWK8QtWPv4dx+Y5iuQn7
	hi/AfBbEinKFl8X8YIQN6V4kkS9cKYDR7kaV4uVvMKJgIf4M/vglNHrgb3Q2Yn6h
	Vd7025CIxDHf+9UDL+YNYUZyWTcb2EQcgzV9ivGIILofo6TaWsEInTh0tJ3CvD+C
	a7q9Fh+Q0vfPBONg+oAWKuLU+x41DQIfMlIRhYv729bqdhayuKW/ig==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EQ5sasIT4RKy0Wx53wBeV5N5mY2czvu8u6AyPM7f5HCHxuGeIryxV6atIMhwEEVmdS6iPlHZIX/31YBPkZDes9DeRdl3oZt7pJZ/E0T/VKhX+YSL5qlgeciUig74nYuJ5F/+mW+r42mutPDgfNKB8OUPxN2BuKYeAxyBm8xNKOqI0FikBySxoOChFXT5DmwqUDANcub8v3H8yPhGsflAEBF4D7/vVQoVNe5VJWxGRY9uL5UFuC6SbC+wq9uTX4UGuRNStJSxGj6itSc3QdCU0kZpBwQwakSqUlkhm2ckQ9jWAljevs7FHL7R+4jvk6TBGqDxj8LxwhLrsXCKb2THvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xl0QdCbx7oXAhlKlC3VfcBW1aIDuE1X5Tf/z9+XGbA4=;
 b=m2huVrdFWxWIP6hvlWFqvDn1CVO9KfPS5O0TiAhwsTHgqac7YIFIcUIGsTMBCseEfFXmyRbLZtsmhjgYJx/yMspXeNpEYs4NcUDoN6WxI8QYiNqRRyhFqo/4U14Tq5N9+OABmnYUOUqNJaN53g9tIw2KlwIx85DmiDpltHaBJpd2Y62Cf56H3xmG8PSJKUSmnoKQGmTIlX035ZaJiuWKm2TTmj405DQ+1vJFtldDJYihwClskRJ+Dq5q1AYrAm6xHD96OZn2TX2GIklCr2INY7hjLkni82MK4Iq1o0SdXv4148dDDvDeX9nKSAOfdgmp5FZys3W8AVddTXh+rp65uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xl0QdCbx7oXAhlKlC3VfcBW1aIDuE1X5Tf/z9+XGbA4=;
 b=r8J123bR7C9SzMT/ricsYD5Xy6pjNaWxy/GMNXDujZkISGnzHyZLErOVpwy1pHJ1AKqxkxpzOt0emkMsaU/+HAVdYBhgLdrS16DxdMo2A9FtOs8Z4Jj8uN9vuf3ffzpwEaoGbL1j2PVicJ++9eK0tUjprAwl697o3Wo9v3Qr/fM=
Message-ID: <44cea7ac-ef99-49bf-8ce5-65cac0b5440b@oracle.com>
Date: Tue, 30 Sep 2025 11:09:21 -0700
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
X-ClientProxiedBy: BY5PR17CA0003.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::16) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|CY8PR10MB7314:EE_
X-MS-Office365-Filtering-Correlation-Id: b00fcda5-1cef-4b57-9bcd-08de004c7c67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WUkzeG4vV2UycEFRQW92MGZpVFBlYzUvWTFrSjQ0YTBRbDQyVytlM1locExZ?=
 =?utf-8?B?bXNURzRYbjBZM1JYODhRUWtuYU5DaXIzdm9WNkVJbkZtVXhSTWt1dEZrbENu?=
 =?utf-8?B?RXUxRW9MWW5hMVhib1ovem5jQ0puRHdVNEhWaHhzNTBkRzZ4cldzTWtHNVpx?=
 =?utf-8?B?N2VWcnRnajRpTG1ITW80VFU5R1JDQnIwdFFMdHRvYnIreFpXc283T1RjVVk0?=
 =?utf-8?B?Z0FUQlNqR291WmN6RFg3dmxQekY3Y29waWU1WXZkOVRvN240Zi9wbHFKRUpW?=
 =?utf-8?B?bnNTT0RweUV1L1U5YjE4N2xBNlNyQmp3aklTMG1YMmZWZnNUenNmTUxvSGtY?=
 =?utf-8?B?SEU4QjFmL3QwN25pZnQraTRob200bXZSZmxNUnVPRjNpUHhlWE1haGgyR1B4?=
 =?utf-8?B?S3RUNUtyKzJURlJTakhNQmJhdzFwRmlIc01IWWEzN1NqVEUrQXhPNDRTN2h6?=
 =?utf-8?B?RkZ2WldaK0ZPd1p0eXl1NVUyREU2bkpWN1BhY3dLMHkySytoVlBwelF3dkhl?=
 =?utf-8?B?TEZHdGhuaTBoMmdhTGkxdnY2M1lFbXRDTGRhbThPSHRoV3Z3OWlSODk3VlU5?=
 =?utf-8?B?c0RPQnlNaHpzUG1qOGU0N0cxNDd4RVJKRjQyYjJ1VnJmdFNzR29WQU01T1Zt?=
 =?utf-8?B?Nm5VV1Q0NkZDWlE1M09YZWtFUkRMcUM4VE1PVXVqMlVkN2l5aHFiSUF4UzJk?=
 =?utf-8?B?MUZVazJDdVVtdHhTS2cxRmVwWjFIdTlYN3NxTnk4aWthNlNEb1BYbGgzNFVU?=
 =?utf-8?B?N1k4MEhSMGxFUFNIV3NhdmRuUWNnZW9XWWZKK2VHc25hb3lML2tQOVJ4Mk10?=
 =?utf-8?B?c3o0a2JETnk3Yk9QR0RvbFU1b0l5UHhIUnRtNlgvazdVVEpDcy9EY1E0bkN4?=
 =?utf-8?B?Q1l6bkZ2bEEwajJYdWNiTXRHWitvYzYrVU1NUzA0OFVFbWtiVTl2ZmlBamhJ?=
 =?utf-8?B?R3hxaE5zUlVkSi9QU25vRGRVZENjTEl1S1ExSERzUlBTZnZtZzZRcWlqU3Ni?=
 =?utf-8?B?Q3VibTRHTU9lbFZxRlNIb0NCOWxxa2pldkJtWjZDNlJESVI5Z3RmTS9KcWx2?=
 =?utf-8?B?cituU2pkaS9hRmpMdENkaEI2NUUvRlhHdGtwdW5DWHZUM3NvSC9NdzJXajB1?=
 =?utf-8?B?V3YzWTNjUnR2QU9VZ2J1YnBDK1doN2dWbHhNd1YvcW9MeUovaHFjVUd3dGtC?=
 =?utf-8?B?Z2VqQkJOUFA3OUhjZWpnRjhvRmU1ZlpJRmpmVlpTRnU2SkNRaS9CMjlDZDF4?=
 =?utf-8?B?b3ZTbU1ENEJ3RzFjWkQ0bFJ2amhDWnJWYzllaW5VUUpCZGZRMFNQY1FmSmV1?=
 =?utf-8?B?Mm00WTF5L3lIMEZnQVFIbjBrNUxyVC83bXROZVQ5UU51NjMvQXhpUEFFKzhw?=
 =?utf-8?B?L0pzVW1TNDBGeHFTbGFDTnVHeDQ5cmY2aWhKVnRNN3I0V01qVER4bCtwVHRm?=
 =?utf-8?B?MTVVZmhaeFM1VU8yVnhqbXl3NlFhRWhzdC91RDlPc0YwdjFkYytNV3g0dDh6?=
 =?utf-8?B?QnFQNGtBTXA3TnplY0pFUkIvaGxnYmx1Wi9QZDVXSnM3Q2RVeklYeDdCTGF1?=
 =?utf-8?B?M1ljdGFQRzd0Y2dxL09oZGZGa0U1NkpxMUhhdUVoMEtzMEY0czlNZzk1UHBP?=
 =?utf-8?B?OW5GdGQzd1g1aCsrSzJnckxHQUxlR3VIdzAzRVZjeG1SUjh5MEpTbExwVWJ5?=
 =?utf-8?B?SUZWQ0lteS9jdUxmdTRkKzExcVZlbHA0bks1MWF3YUZOWHhtSG9vNmcwU2Nj?=
 =?utf-8?B?V3hLc2ZvT2NiWXhJYTkzSUpBYmNMajY2NThDaWpjd3h5Z0Z0MDBvYTgyVUtr?=
 =?utf-8?B?THhPbFRkZFRuVXlZbEpOK3FMV2NseW51bUJXbEFnZ2I5bTRxbE9QOTJkaHZY?=
 =?utf-8?B?Vi9PUTd2dUxMQXorWFdJMTRxUkhUL2o0UUQrakRUekp0bmx2aWZCaVZzeGtN?=
 =?utf-8?Q?vQR0EGrXecs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bXRCVG5rQjBZYmcvYzdaSlJJWkFWQVdyRVE4L0YyT1ZHRW9KVVBjeElMOUpD?=
 =?utf-8?B?TExCOG5xajJqUGp4am94clVwTXRjYkE4V3BFY3hacGRpaXNadkZQVkdML3ZB?=
 =?utf-8?B?Z2t2SkFaRHBJcVJoa1BzUU5VYzlacXkzNlB4RWdyOXJZYWdCUFNNQ01KZklu?=
 =?utf-8?B?RVc0K1d4MWVKak9QSVl3cklYTUVrWDVsTktjTW8zRlBaemZYK1dHWlp0dkpp?=
 =?utf-8?B?M1Q2UlAyblc0YWtTZnFldWxFSnFDMDR0eW9UdEplanpMaG13d0IvaC8wMTEw?=
 =?utf-8?B?THorQ3RCRy8rdHdVcmVISWFSRU1jcVhXeFFCL3VrMWRZb3VxTFd4TzVMZVc5?=
 =?utf-8?B?a2FkSTZuZitLVFpnbWh6NnBqNnBRUWZuZlVtbmxaWGtwQm5tSXJ2L0dTRldE?=
 =?utf-8?B?N1J1d2Q5MURhUmdtSTFUR0ZUS2JVd2NkMWU5YkhUdkh4Szl5RVNGcnVMdWlx?=
 =?utf-8?B?NDBhTElWUlk0QWp6SnAyV29XVUFabjZ0SzRJbW9xTDlOVXNEWmtERUU1ZkdO?=
 =?utf-8?B?VGpUWmZXNWlZWjhxSFFSNWVHY2wxQkdvUERQYitKRERRUTBEamt4TGVrOVZO?=
 =?utf-8?B?STFTSjRaOU1ZNk1NVUFYRFRWZngvZ05zNE14Z3U1Y3ZRQUlUbXJ6dFg3S1gw?=
 =?utf-8?B?Y1NmTXgrbkp1NzhYYWNROWJSWU85cDM2WkdTRWdmKytyZjBGK3NEZko5UkRC?=
 =?utf-8?B?K0ZHa3JOR3plbDlEcFBMUDZaQ1M0aG1QNnFWNzAyOEpQNjRFQXc1VDd0Z2t2?=
 =?utf-8?B?ZWY2NXdqbUpwU3U2QTVyR3ZiWUl2bm91MitMT1p3cDBXMFlYalBMaEZsMlFa?=
 =?utf-8?B?WHIzRC9FNkJPeFRFYlo1UWtMSnBwcXFxQUx4dHREMVB3WlZWMmtKdWh2ZUt3?=
 =?utf-8?B?M3QvZkY1RndCVzBRRUdiQWgva29RTnUybEFFRkEyUXdkdndJc3FOdk1hOHE0?=
 =?utf-8?B?bEUvc0hTV2ZIQ1Fjbkp3L2RFNHUyZjU3aXdwNCtyS2ovQU04eU03bEhsVmZB?=
 =?utf-8?B?dGRjdjQ1KzNBcUFEWDdZZnc4c016UHB5WnpNc2hhNnJTSjc3Um1DcndWeGg0?=
 =?utf-8?B?TmRYVktvTk0zaldFdnNRNmU3bWl6L0JPT1Z0Zko4WThzTUhEbVFaL3ZHV0Ri?=
 =?utf-8?B?MGJlWGZ3YlhiRnpuQ3FOVWxKcGlXclJYdWJORFpHVk5JQ2VxTHFnN2g3K0hk?=
 =?utf-8?B?MHFZR0NZTTFVeDROSWlRTGgxN1AwTUhienFScUV3dE9WSTA4aU9iSXRuc3do?=
 =?utf-8?B?TkI0dTVHbk1NTGs2TC9pbUQzMmFhQW9aQ053cHBzYU4vRDVITWFqZUphTGJB?=
 =?utf-8?B?LzErZEl2dDRQcHpoRE05dU91RFVSdGlBWVdHVkVkMkhUejRCVmdkM1pxSUJH?=
 =?utf-8?B?NUFpcXFXdlJ6dmg2K3hVcHA4cUZNZ2lETkErRVRVKzQxa2lxTGZEclhQbFFH?=
 =?utf-8?B?U2ZFUFYwQ2d2U1BtUUR5S2d3Mnd0OE9ucDhyRWJsZnQwa2JVVTdrdkdDU1NV?=
 =?utf-8?B?ZklvT1ZVQnRQeHdmYnY2TGxsTTdZbkpxb0R0aEFOa2VjTVRyOEZGdzNVV0Vp?=
 =?utf-8?B?R1laT204c0tSMlJnY0Zld2tJc0Q0NFpUU1hHMjBocGNRYlk4SitRTHFzaW1o?=
 =?utf-8?B?bU11Z1Nja2NsdjYydlMwSFMwaUMyNWx2dmNpdzBlWi9YV0JVYVFEU2sySFlz?=
 =?utf-8?B?eHJoSVplcm1FQWp2THczd0ZlM21SblZadlI4a2svQnFVNmtsSVBMWGFjREho?=
 =?utf-8?B?NFVianZFamU0L2laTkh0anNyWmhkN0tKdU5oR3lkR3NtTzd3SkVUSWhQRXo5?=
 =?utf-8?B?SFExSmZVV2xRQkRJQ09rUE5TaytaOGhSejZCcWc5eVIzM0REMlg1U0QvN0gx?=
 =?utf-8?B?dXdjS2YvNTVVVHdVeGV0VUtmcmQ5Y3QxMW8wSkZ1Nm8zL2YwNk9kNUR6bFFP?=
 =?utf-8?B?QmI3OE9lQ2NvSjNGRHlqeE9CZldiWVFHWWFZMmhPRlRLNzJaWkdHSjM3K2da?=
 =?utf-8?B?MDZuc0V3TUkrS2lXZzdNWkVmL21DNWpQdlZiYysxR0NwK21MYUV6NHNWNzRy?=
 =?utf-8?B?UEY5WjRxQnk0QmxGK1RHdVB5eFNQS2VNUWFJR25SUE10L3JucnJxcGwyNkt5?=
 =?utf-8?B?VGczcWlQUE9wT0xVbjA2ZTNMc3pEL0lCV2QzTDUzZGJrSVpEN3ZrTytXQ25n?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	DPobZ3w7JPKS9nw6jb92m2DJ59kJqvIhrGIag65b6oEiwUic0q+cgq2smRlTvsv5J1ncNelbWFy0sBsp6XDLGE+eOoRngqv11qbBvRLHc0g38o3H7rOmWPPTAo2uL8VKtPetN+bpDeAuyU/JTxlkAGm7zLw2Z16gCUOkQumde3BuZzLZE07xKGGehcaP1fKeiOSFaNdVG1FwDd5FygO0itcYM8SWnzQ1986pbZil8mgGjXFSdo3MpR4rsnTqjCL0nvPT8SDU2vcFzb6YZ1yvPPERXaMBGOx3Bw8PVmXo3OG58C/RDspCsSa0KAFnOl5f1mFSFf1orQJJdfeA0ObqHpEv2R+lTeFAcXs6pt95A7iEYyvBb9FVLCBcQkF+6uiDR99stPix3IajblgU8cwhUt293aWoiKwNe4XiY/JnHd66rl43OrffS0giZQuU4BSxksMVBtPRl4lAa1sHUOCe9AWBlSaRgNPa62wlSGVsjbsAz++hx1HkYrqMNOSJjBZFneXE1llIEBySZedIK7md2OAEdrv/dG9LeDJbyFnbhIudA54aSKFbPSpYhD0bdE/jsz6YPurwxwvCbU23yy13gR7464XAcSyEwtVjkwN/Ta0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b00fcda5-1cef-4b57-9bcd-08de004c7c67
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2025 18:09:23.9970
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fHZnq3nnfCneSSNdZRkY7ZoesSh9fyyoaZKLSpIDKTm2aKKE3JElMp3Vbw2V5pa1ZesTpERdurhnUvUYtyf3PdQGnZbCkA3Cc6BWQi0e8lo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7314
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_03,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2509150000 definitions=main-2509300164
X-Proofpoint-GUID: Dq8zVL4pVH7MRCxCoT4ykB-AU-4cxOzJ
X-Authority-Analysis: v=2.4 cv=GqdPO01C c=1 sm=1 tr=0 ts=68dc1cdd b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=6FPNYluCAAAA:8 a=aYjVkuYQAAAA:8
 a=yPCof4ZbAAAA:8 a=eA0dHMCW0-EICQuIaG8A:9 a=QEXdDO2ut3YA:10
 a=0TkXfT2pXjVnQC2iIllu:22 a=XAG9d7F89tCahMKViDxK:22 cc=ntf awl=host:12090
X-Proofpoint-ORIG-GUID: Dq8zVL4pVH7MRCxCoT4ykB-AU-4cxOzJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTMwMDEzMCBTYWx0ZWRfX8jN7Emr4FOt+
 khttbvIKJxgKdnY+rbMUvOjiqhZn786b+L8Y3MErDTuchaM/bJ5Ttzq+sdqJjUR4wSj8A3g8c0m
 RajsNMcDE2wlJctOBLd8A6DX7fhbA28q/YS1Fs7aWQS4PZetMXSneEB3FXjtQGUa5+jO7f5tGyt
 TgryJxyHWWWFeVsmX0Gx7FakNqy6P0gQPiuzHPCnxXI2Dx4HSTZnQGimGDiynaNGPsnWNWxASGP
 D4P/fdEh+ye8G19QKtFONhwe/69vK0hTB/cbeL+xQPue1FaarW85oAUGnZORE49heG1he3lLvwS
 UAjRHzsNGUs3o7P8VkWiyeeyO/sWdQ1YW5XqZK3DXmakRa3WYoODJwhyuOibEoGZ/LxBMo/2i6B
 6A1cqJU4uJG2koZljR14wP4VuDopFtDqRQmNFKxT+HvSzwvBGkY=
Subject: [oss-security] malware in SoopSocks package on PyPi

https://x.com/jfrogsecurity/status/1973081889977114815 reports:

Our security team uncovered a malicious PyPI package called SoopSocks,
which disguises itself as a SOCKS5 proxy but behaves like a backdoor.

Our research revealed that it installs persistence via Windows services
and scheduled tasks, modifies firewall rules, silently executes PowerShell
with UAC bypass, and exfiltrates host and network data to a hardcoded Discord
webhook every 30 seconds. It evolved from a Python module to a Go executable
with hidden deployment scripts, enabling attackers to proxy traffic, anonymize
connections, and perform stealthy reconnaissance.

SoopSocks was removed from PyPI on September 29 after our disclosure.

Read our full technical deep dive, including dynamic analysis, IOCs,
and remediation steps here:
https://research.jfrog.com/post/check-your-socks-a-deep-dive-into-soopsocks-pypi/

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

