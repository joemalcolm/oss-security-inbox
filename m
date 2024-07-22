Received: (qmail 19476 invoked by uid 550); 22 Jul 2024 16:58:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18415 invoked from network); 22 Jul 2024 16:58:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:to:subject:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=5
	++5iBBKXnMn19eT7u7IIRexZRiJMgmAVWAO0Ta1XSE=; b=YrtyIZIm1VkAKWGhr
	Cw7G9I4WN2ynHCJaq3kk6MT8NRc7zyp+su7NcVFy4mkAi+Mo+TI5tMwDkDwMo4Fl
	7Z0HFoPaPCB5/EJjIXGaXIr7ebgf7u/XLE785CuBnUC0xxjpnd0Ex4rgDc+GT0ri
	E/K6oMny/Bq+BdD7F9VP5zzXaxl7Ca8a/BMLd0OpGk2uS3Ttii4kyCRCTEYDQndo
	tUBU/8b/e7Q1AnXtrfChHTB6exwYeUQoCuzKbsJlw8HYiTvmvYAyOqPMSSgE0tJt
	dBveO4sb+mGlENisYi8aDOTFY1ln215uTdviI7PeDkuimQfkk8SOid9psLJYSXRY
	bjMkw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T+qpRftU3iLzT36yiWmr6ewDVCBTHT47tf7anLjq+kYTgXflGlPl7aTXtuScT1NSX8NkI1ydo/CHpkhzL51r8mujIN1p0cA4OyjrFwXBTAZC2xhEU3JuLYRqkZewVV1oyXwmR67/EiYLHc6p1izD9be2mH3lmAIji7vz+SXqBxsYuayB57/jX89/T2+upmppGg8bpnhDGRNgUfCYRaAeAx3N+mqfk8WonvQBXarS+IWG13gBqHFXSY77pBhUESeiPLd9FvbP5pxkr6JH/PSAgTe3FE7WXZvUddLiJxPfMfe6DzN5/hvRs3+ARAKsr9GMWtj2vWP1m7s9eQ7U1jR4eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5++5iBBKXnMn19eT7u7IIRexZRiJMgmAVWAO0Ta1XSE=;
 b=N/6/sschW2O6PUXKSiU0NRmJrI57MGoqe6Wl+JTsxQTOrsmZFoEBV34FlgpPBOBrAd0emWtcR5r3z1atGSARFe/7XoaDWitbyhzyOhWSUiDRiMeGGYYL3lb8vT/JG7bSAy57dwcHRV5203hQLUsAUT7Bu4wt2MuRbCugKt67JddUkw8z06KgIaMrQwenvqMf06mahtoAqofKyZw3rLqqdmej/a/L6cWWkIYndxwB97A6X12+sfLUCcBwXtTS5x9aqObKN5lOj4cjUZvXEV7VicphxWWV0YpA712owSyufoMiJ6P6WEj80m21zyuMVf0KWAdX2eXxUi7gfdIz7UpOFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5++5iBBKXnMn19eT7u7IIRexZRiJMgmAVWAO0Ta1XSE=;
 b=VRZvUi/A7YXBDhI9FvNet2JsnaeGIkz6FZGll0r0XfiSKIPrtxmKqRix7Eo4ueqTskQBUTnga5jgXC52KyiPHo8crilqxIz7Ev2ecqIlt3ybUsKe6ArZuOgziblrdrlVCUAt7ZSghAhHGKZ4vZmbmaiulz57vm++bCKGa58ofUs=
Message-ID: <a824f65a-ef15-43ea-9563-264c99f88bf1@oracle.com>
Date: Mon, 22 Jul 2024 09:58:35 -0700
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
X-ClientProxiedBy: SJ0PR13CA0108.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::23) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BN0PR10MB5143:EE_
X-MS-Office365-Filtering-Correlation-Id: 13d91628-25cb-43db-e496-08dcaa6f87b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WUxNdXRCWUtOME04b2EvM0JNdGlhQndEYzNVZGxYQTlmZElaMWc2TytEVVFS?=
 =?utf-8?B?WDA3eTN5OEtHbXlmWEFtSnpDV3VaSGlkdjQ2TXF3YUJwYnlTSEVzM2ljN3BN?=
 =?utf-8?B?Z0hFNnZCR2VVRU5pcWdxYzdDdm9ZM085Nk90SCt6WS82TWpsWjF5SlNSU1RV?=
 =?utf-8?B?YURwRjFDTHY1dWgzNGJyWHllZHAzL2QwT2IwbXNsMmVaUEVWdkFOaGdxWG9i?=
 =?utf-8?B?U0xyWmlHYTRUZ1hLbUdjSm5KMllLQ2wvTlBLanFRdVUxMXFpRFdlbXRZQ2d3?=
 =?utf-8?B?eTJNdWp2aS9EekR1NHYzSCthMFYwbjV4WGkzREV5Z1UxY0duK2JqN0NMWXJy?=
 =?utf-8?B?NlNpblV6YzJjQjAxZ3VCUGExNUNMK3o4L2E3bkpkRWRRNWgydzBETmZHNjJv?=
 =?utf-8?B?SDF3WWY4cDVZNy9uYS9xVDlsY2tjUjg2c3FTcE8yZGlUZThnRSs2WFZ0UU1V?=
 =?utf-8?B?Y1R6ZWdpbG1EeDdEMWVjSnpHSk51UzN4Z0hTZmJ4a1FJclc2VjdWM3U4ODBX?=
 =?utf-8?B?RFdIWHBKd1FNSlZKYnZ6Y1BESHFWUW1QWStzU2M0QkhjNjdWTWM2THptMWpH?=
 =?utf-8?B?bFdsMjA3bFZZc2V3TnJFeGp3SmJ5Sk5BT05nbW9DelVkUGRDNjV4YnR0bFNP?=
 =?utf-8?B?Q2tOZ1pTSXVEVzBZMFdIaHByczBiKy93MU53dnU0NHlsYkRVNHZuSWdJUjdL?=
 =?utf-8?B?dWZlUmZFRk1NRHFHVHRrR2ZwaHBYYWs5R09MdzRianowTjIzRVlXS2FvcjN1?=
 =?utf-8?B?SDVtbXMvTFRPbmJ3Z1A0bTIwb2lGVmVsZ1VxUVN6RmlvYzdaQzhJdG5zUUhX?=
 =?utf-8?B?bDBpUzFMSFZad2dHWnFQeHNNNjJSM1BMSDFsVDRrQXQ3aWhrN3RCSnAvZERM?=
 =?utf-8?B?YXRwMWdJY0cwWEQ5UWdNcGgrNUlkekxDdHltUHRETDRvNk9hVS9GRiszWW9i?=
 =?utf-8?B?TWtKR3NYR3BMNTNnU2hFS3FOZkhjQjc0cTJYSzJKOUFtOGlPK3cvNmNiOWJN?=
 =?utf-8?B?SGVldStpS0xjb25RZ0kzem5BalFCRXhwR2w4VVpMMTZpNVdubVFvRVNPeHd3?=
 =?utf-8?B?MXhNR3AvcGYxU1luQXNkS0IzK2NZM3BpR2Nmc1o4UVFROFRycEVqY2t3VnNt?=
 =?utf-8?B?MmJud2FHdWdNRWkrdUxBdjhockpiSVpPWm8yZzNhTU1xSlRsZlRHdEZMdEd2?=
 =?utf-8?B?NUZCSitWUUFRRHB3U2lDREJWNVBzOHh1aFZOYXhNM1ZOZzZjRkJNM0xYWE4x?=
 =?utf-8?B?RHFNNFppc0FQandOQWV5eDRoYk5acGVHei9aU2srdzVsNmw4cnVkdURCSi8r?=
 =?utf-8?B?cFZkaGhKL1BSVUoyWm1INGx1b2VHRjNqUjVyOEoyR0xOa1J5UEQ2ZEtJQyty?=
 =?utf-8?B?U3E2b2JXNUpCcXYxVjJpTDY5Ti9aM1ppREtHcWlsRHNPdkZzeHI2L0VrOEh5?=
 =?utf-8?B?VmFQY2hkTEJ1Y2c5eEQ3eU05R2UyZ1ZpNEpIUlU3RTc1bTNUaGZrcmVwZHVO?=
 =?utf-8?B?Zlg1ZFhXVWFDR2gza1EvUitWT1ZrWXJwMUtNK3R3a1RsS1Z3Q201cm5aSzE5?=
 =?utf-8?B?eEdMczIwcVo5NkNKczhsaG9ORnE3Q09HZlV2TFZzY1piaytBc2lZbFVocXhK?=
 =?utf-8?B?OER6VGNJMTBpUWJRZzh6Z29DWm1MRVJzTTk4MmhMYzExanpubVIzWG9zK2RO?=
 =?utf-8?B?d3FaajhQaElvZTBkZHFxQmJCemZlZWxLRk1McHIzeGZRcXN3bGwvU20vV3cw?=
 =?utf-8?Q?PiOE1Ym4BzqiIdX6uM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QzJPRDNMY3V1Zm4yVk9wUDhTejErZ09PTlRaeHI1a01rOVF1NTlVY3lJYUlk?=
 =?utf-8?B?S1g3MkJSR1RFSjlENi9aSTN3RlV1TXpPVDJRa0U2NWE5aERhSUJNZGtlUXRH?=
 =?utf-8?B?SkxRaGMzSFVqc0Q5VnVOTiswMVBlNXV4S3BheFIzMWtLSWx3R3FqWk9jNW1j?=
 =?utf-8?B?Z3graVlVSTREQ0RCQjBSY21SUUhSK3NhTmxFNXg3ajA4N2tVVGRlNnR6NkdV?=
 =?utf-8?B?ZVRjVXdZUVpNOEduM1hoZ3B1QmVFUDNDcldTREJFZm5YeFZQOHV4cXVvSU95?=
 =?utf-8?B?VkZpcjRMclEvQ2NrUzU1YkROV2dBWVlSRHRGdVRoRDBUTXh2YUdFR056TFkr?=
 =?utf-8?B?cHdsVlhlRDFNQkdYa0g0eXNqa0JaZjhaQWF3S05sbkJUOTJ5Z1AwWXZ1T1Aw?=
 =?utf-8?B?bjZ3aE5lb01qR1Q3SXYxL1czSDBBTXZGR1lYNk1pRk5rR2VJRm1GYzhyWW1O?=
 =?utf-8?B?TUp6NHFuSVRreFJhbXh3eUxtSlNobWZTd3dUVVdKVnRUNVBMQTlpZ0ZvZWZQ?=
 =?utf-8?B?eHRDMittOTFHVFo2MWEwN2Qydzl1YTJpbXRYNVBFNjAxdjJubXBVNHJzbHlY?=
 =?utf-8?B?ZU1TWXRVaUNpMWVqSVEzK0RpQ29zb0kxb0RGOVlSZG1Yc1pXVVBtTWRYNThx?=
 =?utf-8?B?eUYwcThzWklQMG0zR2dodUc5OVdNN3Zaak5jRTVxK0Jic3ppc1UxV1IvZjE1?=
 =?utf-8?B?STVnVjQxa2R5blBkTk9pbC80eDdtb0M2aE9sY3lSQTRDK0F3UkR3azM1K3FJ?=
 =?utf-8?B?QkpOMFNMcFBTK0hMUFc3N214K2VhR3lKWDRkVHl3REJBVHZlVTc4K3pBN1dK?=
 =?utf-8?B?dkVhNjJEWG15aSt5WUNJN2FBenpyK1crVmN5ZlRFZElnRFRzeXVWQWpjZGwz?=
 =?utf-8?B?RlFuSWtPOUMvQW84cnB0OGEvb1h2bmh6Vy9VcGJpQzcrQk5GU3VQUDBhbFhL?=
 =?utf-8?B?c21Hd0xvUkFvdHp5bjIzS2huVjNRcCt1Y2ExY2cvd3BON3VCdnpBc0MvOElr?=
 =?utf-8?B?NXdRcDZzaUNKaUlVSXpaWHM4Nkg3eUVJOERod2w3TTEwY21UTEVuRitCS1V2?=
 =?utf-8?B?WlVRNXo5VllzNW01VHhMdjJpczRnYnIwdFU0a25jVU56cUorcE82QmtUK0Jz?=
 =?utf-8?B?eTl6R1JYaTZ0QWVtOG5xWTlZL1k1Q2Y0TWhiS3Q1cFpNakptSTkzUXNHUmVa?=
 =?utf-8?B?YjZobExacDJGRW9TbTFXejJvbmQ2THBuQkZPQ1Z1bmF4UWIwTHVZNTljbEc2?=
 =?utf-8?B?RWI4TFNLMUtoS3BKYVo1QmFlbmIyMWJER0JGNnpZZGFMeG9TU2Vzd2paUHdj?=
 =?utf-8?B?Lzc2dWtDb0lZcTV4OGQwQUh2cisvaURyMUhVZWtrTmM5TjduUnZucnd4cHRl?=
 =?utf-8?B?UDJyNU1YN2dTQno1eXNSWlhaN0ovK280MzB4bTlzYm9nak1zZW55ZUZDTTBo?=
 =?utf-8?B?U3dISG9SNzZGS1VwWklZYzdURE9ndnhwNGNnbWt4VDhPMEdPOHEwU0owSmF4?=
 =?utf-8?B?c1JlazJCT2tvQXVibVNjaFp5Q0tGazZLaFNsVUg4ZWpqcEY3QlI4djNIcHl3?=
 =?utf-8?B?Q2k2UkVWc3h2MHp1azNpMmlWaVBpOFU3bFQ3OFF1R2oveFliV3JWWHhJckov?=
 =?utf-8?B?NDZEKzNwNzVMcUpnZWcrL2ZDZVFFNm5UTm83bWwxZHFKblQxWDJlWEZyeVpj?=
 =?utf-8?B?Q3NHemdLdDUwYW1ZNWx1azQwcVN3OGRLbHMzZGdCZjFzUjc4R3Rwd0JteHNv?=
 =?utf-8?B?YTV2WHlDS0NsRU1ZM01KOHJuVkJUbnlDZjFFYiszd2JJekIxYkc2TzR5a0RN?=
 =?utf-8?B?dkxmNGtVa1Z4MFl0ZDF3RnM5Z0dvbWNtMmZaR0p2RFFJZXlSdXYxeTd2MU84?=
 =?utf-8?B?YzhtOG1LWWJZMDRCa0ZQQmlDLzBvZlgzRVNJRHN6SzdaSU5VZ2NuYUVDV0lJ?=
 =?utf-8?B?WlVzdjlIVFVUemx0dFVQSHB2Y1Y2OE5ucjdPM0lUOW9XWlhCMWIxbzBoTTdI?=
 =?utf-8?B?ZW4vQXcrZldLNG8yY3hRMUtESC9qY0hDSjI0b1ZDREdpR1huUWF1SC9yU3RJ?=
 =?utf-8?B?Y0ZPbHVkSWdGaDIyOXA2VmxOQXo0THMzSDB3anUxQ0NoaHJibTZFNGVLTTFw?=
 =?utf-8?B?a2tnMGpUQkp2a0I4NFM4a3EwK3Z2dFphRi81dW9rVi9jS0VsajN5cXhoeFVr?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	qHKxpvBKxOc2MJ8w5K9roMlWTgRmpOjXTZDNDwEebYAYm69bHLhWy8Bs838gk6Z7EFUDKUhZhyDUE3DQMrP5eYheSHKxDAGj/Pv/ECSKdm0Yf8ilJZ1+H10Ove4BSP2Sh8QkkKdoX1Ppiu+X98puUBVYtpZjZE8wkIknA7WYM4pAM8EbLDIlEJADeIQyKhPwaTnw9AQYDV0PgTQgfrsWwovH+6AVZ9BMid9th9IAGCI1d+Z88GgreqUEA9UWR9Cq7LOrXxai3waZSfpX085+10UshFCCYglhYmsHATM+MgIAyrndFbteXcF2vjZOJV2jNFbp328sudS40jzF6tSaKsGZnSvXaQ4RLsInAGY31nV5iZMgsO5uYQlEKFNiyzTicOiJcDEilSwY/jwi0mNyxiT+jTfOTBARpYNxmVBYmiiWxG2b2T4mAajO/qi0+oZHDteh+yUxk7oDyLuv+hXSh6/UBcDnA3TZFITozBg9MrOH9WXqWvJHERpQGMd0rN8sghAyEDsmMgPc+0QBBShVbkgDhRe0FSpe3i+VeXhljwC4LZFyfuXo3nqyk6cyjO4WLtbMW/rneeSvybgU/b+P8c/3+Ep4pHx2bWqHYi8Hbg0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13d91628-25cb-43db-e496-08dcaa6f87b6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2024 16:58:37.6369
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OoMc/IQ5wSdq3Me/bfjWO3SMn66etEVWlsePOFuJHMFb+WVuv9qecwCao2lZP8UCVItiOBQtMw7uGxwHZXRTe9TfnwtAt3pG6IlOFU8K70E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5143
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-22_11,2024-07-22_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2407220127
X-Proofpoint-GUID: ykgu0jnpVI6rSwA5XyMmCJQt-LJ_O9MN
X-Proofpoint-ORIG-GUID: ykgu0jnpVI6rSwA5XyMmCJQt-LJ_O9MN
Subject: [oss-security] GNU C Library version 2.40 released with 5 CVE fixes

https://lists.gnu.org/archive/html/info-gnu/2024-07/msg00013.html was mailed
out a couple hours ago, announcing the release of GNU libc 2.40.

The announcement included this section:

> Security related changes:
> 
> The following CVEs were fixed in this release, details of which can be
> found in the advisories directory of the release tarball:
> 
>   GLIBC-SA-2024-0004:
>     ISO-2022-CN-EXT: fix out-of-bound writes when writing escape
>     sequence (CVE-2024-2961)
> 
>   GLIBC-SA-2024-0005:
>     nscd: Stack-based buffer overflow in netgroup cache (CVE-2024-33599)
> 
>   GLIBC-SA-2024-0006:
>     nscd: Null pointer crash after notfound response (CVE-2024-33600)
> 
>   GLIBC-SA-2024-0007:
>     nscd: netgroup cache may terminate daemon on memory allocation
>     failure (CVE-2024-33601)
> 
>   GLIBC-SA-2024-0008:
>     nscd: netgroup cache assumes NSS callback uses in-buffer strings
>     (CVE-2024-33602)

The advisories can also be found at:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=glibc-2.40

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
