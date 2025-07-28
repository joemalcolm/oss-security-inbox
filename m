Received: (qmail 30396 invoked by uid 550); 28 Jul 2025 19:55:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30350 invoked from network); 28 Jul 2025 19:55:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=tUax1XLcm2CmdQrsFrW2Yc1Wp2IVhJS0YkwjRPvg/bM=; b=
	ANWuNesdmtitP9lkz0L6vl0jfNgu+klQdtsyxlNK0M/2LBRMgta9ongwaAWkB90i
	3hvJPM8Ky0QyiaXT0LFGX1IdRVsMC4Ghp/mMR5Dd88JsMu/hDUsdv79XKKYVwDEl
	MmxsYzju0YeaCUL4uM2J/YdftHJ47ACMMhWwtt2G+wYh7yJ5V2Cjn/WR++8ot0sH
	u0ZxkGvqbQ+9Xt4wnnUL02XqejQXg3RGg4CshLfcXuThKDBSEMWATFDglYbIaQ3q
	HICRCxlMHBV7EzyfWjXcEixZui7DB1Sm2RG9V2jcgIoAucKoq5JhhPpZf8vGOjh2
	X0a/D9ghQ3JcYGzJKLKvBg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rv/pbIXb4GkwwblOreT7JjiUVGIsNJkiGg2eQm+Q64zcwAj94lAM9uvq8BwZUFu6myc3lsnOHd1Jf+gsBgvM4PR9CiNJ1FbkDvUwhDmNy1cKpn8OTszzdcfU7P8PCksYhIjvmTAg0ngPsz6YuV/OWXNQzcojwfZebjgSNTWvgv5nPn0Z4zMt0qLE3LfGtDgXHqVL3CrDAaY1AzPjLi5XhghHJvWCotIhbmVBsogpU/f1vXQbwjNaeXWMIpu/ukdqrhcBBfOeSm2YrrnY1mzxGP5VoR8wwIuMZSwJgSXmSCKhQlafw/d6EJ+9B8fOuw231K3sxYzGBwHSDubET341xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tUax1XLcm2CmdQrsFrW2Yc1Wp2IVhJS0YkwjRPvg/bM=;
 b=ptWKjh7ZwmyiCNZsKJEzSwhQYsR1qUT7ajJgiryk+Eddb5kNM8Poh9uNx8WJCY9FbAwYvgLjfH+Qf8Bn3pKtlR/sfF74LVWzCLJBoKv+LdZWo8giWR6Tsnc8GkFQpinhHq3KTe8PTpkWnCLwmxW+bMuSJtBnZ6ZqjvBoGR9G+RKBfaB9eZDncoCTjIa7T3WM13VRxOmzW2SViPc4GbngQrOSwmMRqPvrGZ2UGrKPIOoX3dMTO66Je0+nY14xUkt01JnldwBmn6SvzJoN6J3+Q8efvcRyPJ6d1K1ZWPx2odqagQz3HrR/YlesP8ZdHFBvH8gpjsNF8N/9oL5xciAsLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUax1XLcm2CmdQrsFrW2Yc1Wp2IVhJS0YkwjRPvg/bM=;
 b=ag0EBK2Eia+WOI6asclTRTiamRJy6x6g+txvC29hWCEepi26dM0o78DPszpS6Z1MFHqc6/CvTX8euEGkFUP0aWSPp3cLiacc2Ap2vf11uyRZoHUTSmO2iTvQriemB/HUeEZCEdVq65tNB9E5eYXYpzqkUhVrziuj3Bh9ULZYoIo=
Message-ID: <c1d8d50a-9e67-411e-8f1e-cb2de457a637@oracle.com>
Date: Mon, 28 Jul 2025 12:55:19 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPT33dBPg2cba1h39veP-_C4bpmsn-On8mEXio0Nz_gcEg@mail.gmail.com>
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
In-Reply-To: <CAADqWPT33dBPg2cba1h39veP-_C4bpmsn-On8mEXio0Nz_gcEg@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPT33dBPg2cba1h39veP-_C4bpmsn-On8mEXio0Nz_gcEg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:408:fb::19) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|SN7PR10MB6644:EE_
X-MS-Office365-Filtering-Correlation-Id: 00fe0327-19be-45e0-e483-08ddce10af6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UURlWnRXSHd4L2RuM1JqaFhLM0V2a3BsbHU1MHZHdG91M2p2NTZ6eXhkbFVY?=
 =?utf-8?B?RDdmekxBQk93NTdFRzVncmxMbkpBUE1HNGszYkU2VE1tRTdVeEQ5RmdhZU5N?=
 =?utf-8?B?S0I3U2RicEo1V2VwZG9Ob0dwMEVENFErVGc3bTlVYTB6RGI2dTFzVGluOXFt?=
 =?utf-8?B?SVVSWVlKYnFXTXZoSlRWbmlwNE0zNGZvazMxcWo2N09Qcko0UjRpMk5PTERJ?=
 =?utf-8?B?c2hmWisyNGNiUHUwQmxTQlVCZlNHam5vajg0NmVjb0pDd290akJrZ09kcUhV?=
 =?utf-8?B?Z0V6KzFmcENMWFl6UG8wQU5NczBlSWFaR3FIV2x3aFBOZHJOVVAzYmUvc3lG?=
 =?utf-8?B?M3ozNEJpZlE1S0hmRXdpeGt2a1YxQzJtZWNsRE5nVXplOFRqb3hUeEZVdzhF?=
 =?utf-8?B?ZUhKZEdxaUFtc3MyTERsdXVlbTkzZi9JMm9VM2FveDFYQlZYanhINlBNYXpq?=
 =?utf-8?B?OG1pVW8xRDREV2ZheUlPeFVlK1FNWW9aT0ZNaERzYzlKeUdUcXJXc3RrWXZl?=
 =?utf-8?B?UVpZaE9ZOUMxU2JmTW82NlpJbGRCeG01ODBsVWw2WDY4MEZFd0FXbTQxTmFC?=
 =?utf-8?B?bVBiejR2RjdDRUEyYThjK1lFWTBFRyt2STZkVVAyTkFiRThCRTR1dUl5d3Rj?=
 =?utf-8?B?MFN0ZDduTUUwSkJrdXRHNTJSeDhSbDJoZFg0ak84Ui9GWnRUR2paNGZLMDZN?=
 =?utf-8?B?WU9GS0phNi9Eb2dCMFhrY2lUb09GNTk1SXcvNW9IOWJuNHFROWxiVmVPN2dB?=
 =?utf-8?B?V0Vob2FFNjhEZkFqVUp2ZkVrcS9jc3VuYTNUVHo4KzZqK1J5aktraFl3UXVD?=
 =?utf-8?B?bWRmWXVsaTExNFpqaGZKUVhhcUJpc2N4eXJHMjlsdG8wTUtOZkovSWh0UHNG?=
 =?utf-8?B?RDRvUGZncjZYb3ZqckYvL1lTOWpXR2VXTXY1VlNYZFJHaHgyMVZPdC90Tjlm?=
 =?utf-8?B?YnJOMmVZRm1rL0lBWEM5Y1lPZVpKdEpZMHpJeHJwcGt5dVRmdzBBQWppWmhI?=
 =?utf-8?B?OGlkKzcxaTh4ZmRTNlljMTAyTEs0aHZUcmlJWlkwNVFlYkVaQ3RGMnpPNGM0?=
 =?utf-8?B?c2hVZ2RLam04Q29ob2hSK0VnQXJ4eVZLYXNFQlM0M3ZRTHZGWGJoWDNQOFIy?=
 =?utf-8?B?RlRJNUNoVHU2Q0xhNk9XdWJGSzJNTUxYdEdaS0UwVkxlQVBHblo0dFNLekpG?=
 =?utf-8?B?SWdJaEJ0MHVaV3Y2aVZaYnZpbkpaRkJlQWo0WkpINXl5aHFzMHNlZlZ1S25B?=
 =?utf-8?B?bzV5dmpPdUhFbnFLSVluTGk5WXBZY1dJZnFueURXVlN2RlpQMmxMT0pYSUdU?=
 =?utf-8?B?cVBCNG5kbEtUcGlkSFpjT292blUvTTMvUjZVZ3kvMWFnNXRJUFZXbERKRWR1?=
 =?utf-8?B?cnVjSzZjNVdIQktnQzJPOFhlZkVaRDhPamFrT2w0Rm5lMVNaVW5iaGs2VmtG?=
 =?utf-8?B?ODBZQTRXTVFGcTZDbUFxbzF6ZVdzTjRxaDdYN21EeEk2VHZYQ3RqdVVTVE9m?=
 =?utf-8?B?M1pIMkljTzc0Vk02K0xKR1JuMUlaSFZlaWlvR1FFakpEYjhyb0E2YmI1Uk9Q?=
 =?utf-8?B?ZHdCQSthMEZlWXorUGUzSkhpWDZncGNtdkt6dE5LNzNuUUQ2K0c2OGVKMEdU?=
 =?utf-8?B?YkJWTENTbks3RDgrdUhzT2dVNjhoSWdnU0xiVjRNKzJTNHdVcWw0RkZPdGxK?=
 =?utf-8?B?NGxzUWM2bzhYdlZYU2UvT2R5MFdsSk1OeTdDNmgyRXlTR0NPZkM0OGlsZkUx?=
 =?utf-8?B?MUNBMndSTTdoNUFqNVNJaHBCa1Q2Ykp1MFVRUDE4WGZ4NlpUWmErVk5IQ1Er?=
 =?utf-8?B?blFzSjVxNW9Na2NSWkdzRmxSMUJhUWZPNzZwem1xSW90QjlnbzBGSlFWSlNi?=
 =?utf-8?Q?3BNsZ72fpT3AX?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MXZCVks4ZjI4Q2Q5cjVuNmg1c3NOdUliSnhpU2oxUlM2Z0I0Qklpd2JKd0hF?=
 =?utf-8?B?S3ZvUmVXQWNuUXhqa1lJWFBFcTI2OC9yQ1BPanN2ZndXVVJWR3JydUpORDNS?=
 =?utf-8?B?OENuM29tVDlXSDlNdUtpaDBvYTFOYWU2anNITXRYK3c5Q0IyQUFrcFp4QVBD?=
 =?utf-8?B?cmJJa3pWOVlneWVzQ2ZudUNEYU5sVjBaQ29CbzdPNG9hK2NZUU0rU0F6ZjAz?=
 =?utf-8?B?SDZYR2ZadWorMDAvc1FGTDdaUzk4YzVrZlUrU2tJNS90MTNqL1VMR3BJdUUr?=
 =?utf-8?B?ajQ1TW0vVytVYlhwSThhUTBYYkdTQVVLbFN1Vkh6OGdqS1g2WksvS1N2N0lP?=
 =?utf-8?B?OWM4YVJtUVBWYXoweEVvYzBhcStIbkc0MFlMQStIR2JZUi9RekpSdjRsYnVk?=
 =?utf-8?B?bHRrTk1oU0wvSlRKSEZGSGxMMVpIejkwbWZ4NWFiN1czbmZFMHRDMUJBYW5Q?=
 =?utf-8?B?elRMWkVoenZ2VXVSaUh5U0hyMlVOMnZmTEJVT1MyYmZhNEtrZWlFN2V2V25M?=
 =?utf-8?B?VFVRdnVUSkF2ZGJ6M2xVUHowVTlIVHB6UEhnTG5abkdrbkgza0gyZFkzWUJy?=
 =?utf-8?B?Ykg3YVladUkxWlpSNEJsYmh2UXZvM09veldWdkpHSUxlVEZHQXZldmZ4MU1L?=
 =?utf-8?B?ekg1eStsZ3AvMCs2RmZmOUxwV05iNmYydFJRZUhVNlRUTEh0WGZDT21qUUZV?=
 =?utf-8?B?LzJra0k5dE9nTHE1TEtjd2MxRVd3T3N4UlhUc2pLYk93S0g0Q2MyVmthTGE2?=
 =?utf-8?B?WVhGaEY2REYvTEt6Rk8yTFROT21MV05tM21EQkY5ZmxHM2wwMHlGZHJYdlhR?=
 =?utf-8?B?VHFKTkxYcjBsdFVoc2N5MTRWWHlqOWNGZThRc01UTDh5SkU1RVJ5dHlnRUNS?=
 =?utf-8?B?ZHBkUDRhQmdpbTNjNEQxTmZMZGFVMXErRjRHVEozdHhCMWJudElieTdXbnpn?=
 =?utf-8?B?Tkk5UnpHSnQ2RHBqQmxQTkFNdHBHTXVPZjI5TDFLTmNRZGdyZysyY3NjSTVU?=
 =?utf-8?B?VjNsVVJhblh1N2s0Q09nSEliWGRObk53cUgrdlFESjlIZ1NuYWcyMHVmdjBz?=
 =?utf-8?B?aUt4UmQvTEZJWGdtRzVqMmNIc1Q5VDdYODE0ZjFmRWt3SVdEUmFQTU1zOHpt?=
 =?utf-8?B?TzdodUVpaFJha2hkZG1QSmlKTGRVQWNCck1pK29WZXk5TVpXd2kyaVpiM3NB?=
 =?utf-8?B?djRScHFXaEdLK0ZId1pyTGQxdWVieG9sYzlibUtpMHl6WmxLeTRIeGU0TTdz?=
 =?utf-8?B?MGZ5Q0g0RU90YTR6aWxqMW4wcEtrZUhpeno0WmF5MEFGenBtV3R4WW5zL2pX?=
 =?utf-8?B?aTkxc0xKenJ6dURUM3puVU1yY2FzM3VpeHpOSGJkdWpIemZyb1hSUkJ6YURX?=
 =?utf-8?B?QzM5NkVUcUFjRzJJZTRCWWlxS21ZNXlOb1JlV2I5dGxCR2g5ZUN4N0ovS0FI?=
 =?utf-8?B?bmNpNmNaOE5HdTNMWi8wS21DVWpoZmRYMXlpRFlKZnZqT3JId01HRUZrTG0v?=
 =?utf-8?B?TXB5RWVDUVc1K1pmUk05QWZFOEcxVE15UUl2SHNUTmYyRkZiMTBDOUEyWGpI?=
 =?utf-8?B?MGwxTmJZd0Nja2xDR3R2QjNReFczdEszZjF2UEoyYlRYenFhdC9rSjBYS2ZC?=
 =?utf-8?B?NnNIbFBwK2c4cjF4ZUFnR2ZQUWlWR05CU3QxZm5uRC9ZMXB2cEovRTVhZkFz?=
 =?utf-8?B?UFdNeWw2Z2xxaDFGVnRTT3ZvY2tmRUJHWmhpSFpFVkRxekQ1OThZWHIrdVJH?=
 =?utf-8?B?UVF3M0ljVi9YQ3lyZVlzU2x1OEw2WlhpMDFxc1JsN2VRWXBZTnNra2pBbE16?=
 =?utf-8?B?SzNiZWFQKzZvL1RrMVp3cHNveUJXbDVJSmJVZzJxTUJwMWNtRWxiZDdJb1hJ?=
 =?utf-8?B?YmRLR0hRM3g2eFFJMUxEQWV3ZE1tME9YOVA2K1RYdGxIMVpGWFVia3hyak95?=
 =?utf-8?B?U2d2d1A2YzVuOWFSZXdxU0VCRXd3Z09KYWNLU1d0ZkwxNnlUOGhCVksvdmFt?=
 =?utf-8?B?UU1WR0NIbnlmRjNmbUt5Y0lUOFRWVS9ZUkhUclBkVHFsSkNMNjFNNWZrWDZp?=
 =?utf-8?B?WFFJenlnOUZhYXhwZ0hId0FnVjVmVzlxdW5nTm5manEzZWZBMGZLMXhNUElC?=
 =?utf-8?B?d25BUlVjQU00SlY0bzhPU3YzU21oK25na1krU0QvVmprWXZocFRHejJ2Q0JZ?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	oH6X7BIvl5E3nC/0vsoNGVK19GJSdsgwNnY76pHBcTE7dHchZYKx5cieKnR+tcxbmhPYWYAjrkI8QNRlKjmW7tM6PUQLH8MS/R2BE80r5GuGn1aiMnaflXOaCqmZInXoR8S04UDPkZO3ACV2kB42pkFvSLXZUemvfYbzFxJ3155lqK5fprdeE0qI6EJ9/XQY35iQF4TtW3t/GzPnuju1q958SYF5Y9nJlw3pmIwZEyoYzS/AS8DvBvc2tzLOAzhLWDDnrnkFrXRmXJwK8X2AQC5GJFXM2I5Q0Oqpyz+uJjU1CI9aEKOeRdgxm0Kiq82GT8Cbr7BXri9sOIfEV8cFkyjdJf6jLDFx/54MHW3y7SdXhRQg9qISI26FWFM4WpBM8VrPlBXl7S7FoJqVJmqFbRKlKipLcSRThTgQ2oIAl8AwfDta5K6/CZ2+HFqCUtiS5buodIusQ2Soc9Vt3LcrefyPmG7T+VIgBWOsFS92YH8vF2FSYQY6F4zKZqCOLsyZ6y1BdASxBIczYbpCZsF137HjmUQ6/kgKbise+5uJtKLJBFJJyFqqEMr/vrmot50fAuSzHVSKsbkaoM6BZkE7tNaUqDU0iwV4O1Ohx2GjQNA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00fe0327-19be-45e0-e483-08ddce10af6c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 19:55:21.5867
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRfPPRuVZjTd7Ax2xY6IfnIpmr4oGMYcuHEsj/foNtRz67oJGvO173A73cQpYUWytk+PVylp9tmqSxlBzvwOGLQBDiO42boacgMQkU26i2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6644
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2507280147
X-Proofpoint-GUID: kEAXOnyYdKqpBBkJ_7EOCva7bVV9qhIS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDE0NyBTYWx0ZWRfXxHHLaHK3fTxn
 gMDOOa68VbZ/YQfBK4ypCbrlWmZmsbplM5w3KSw5gzv1tPcJhvyiAkCVB9bfKqz/RvTkoPec2UC
 va8TMDQ/wSMuMkxXXVoiJKEc8Ft3xifutBOMSVh7GsOYMlGZwgj2rkNrXGbYVQ1gz4cTRV90XuA
 Zn6UPkQaapGm5UunLyQnuSpCjVMJmNj7S+VBI4et0WGPx4wXtWDVJrzn1pRyUfce444jPB15aRe
 nDiNdhlKcb+Yf8ETapbH8+/KvGx1lRJQ3QPj/EvJAa6++Pu9q/1SCRZA0mVxB/RSecbCDLghDUi
 Tv6hMCyE5DE5bV7c2cI82GbzYUrvhjP9Z0yA+x91KaO8PpQbj2ETnkpzby+xNSlhgPMqXKxTmEl
 MQRphRxbwXsMRm/tryyFYN6j+Hgx0+PZNDcJWLrSrnP49LP+lA666fFd3BNZtE6++KOfYecN
X-Proofpoint-ORIG-GUID: kEAXOnyYdKqpBBkJ_7EOCva7bVV9qhIS
X-Authority-Analysis: v=2.4 cv=A+5sP7WG c=1 sm=1 tr=0 ts=6887d5ae b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=8r2qhXULAAAA:8 a=NEAV23lmAAAA:8
 a=8AHkEIZyAAAA:8 a=U1LGwlEhh41aH8X6VmoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:13604
Subject: [oss-security] Fwd:[CVE-2025-8194] Cpython Tarfile infinite loop
 during parsing with negative member offset




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2025-8194] Tarfile infinite loop during parsing with negative member offset
Date: 	Mon, 28 Jul 2025 18:44:01 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a HIGH severity vulnerability affecting {project}.

There is a defect in the CPython “tarfile” module affecting the “TarFile” extraction and entry enumeration APIs. The tar implementation would process tar archives with negative offsets without error, resulting in an infinite loop and deadlock during the parsing of maliciously crafted tar archives.

This vulnerability can be mitigated by including the following patch after importing the “tarfile” module:

import tarfile

def _block_patched(self, count):
      if count < 0: # pragma: no cover
          raise tarfile.InvalidHeaderError("invalid offset")
      return _block_patched._orig_block(self, count)

_block_patched._orig_block = tarfile.TarInfo._block
tarfile.TarInfo._block = _block_patched

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2025-8194
* https://github.com/python/cpython/pull/137027

_______________________________________________
Security-announce mailing list -- security-announce@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
