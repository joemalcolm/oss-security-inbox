Received: (qmail 19938 invoked by uid 550); 21 Mar 2025 19:27:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19908 invoked from network); 21 Mar 2025 19:27:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=PWJPVO4qTiQVnXMq
	prT7ocufmunPDJQpFz2KsskUuHQ=; b=dhGozZFKPQjJyzkP8Ucz7P78bSOr4Kp3
	Ss5mOQ6+q4LirIhdcfAI0OAxS65R8WEYCgXwd0l5u14xE6x2iDr20xXsEPJvugM/
	CH/7POlAMnuS0KMDCOF2DJxKLNIpAXGVVhmheEWqz6V7rl21TymWygT9z8PuV2KG
	DaO/0h4s9J6aKDQ2Y6tl4IeVexiTEveYRkhVLTIc2NJBAWK4zkJTPFfa5b3ID+3F
	sA1h4cL180wy2S9rcKQ7XtpJch7sj6qYHs35iUNIuFQnKmNQOM1HVFYyhOmAd9fC
	giXUC/op3hXxL0lfVKFUVoKmxIr6cymoZijL4+KIoJSrK7bjQI1YNw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZJJCfE6ELP+aW100TOt/rnDbWMw1zD1UXg1T7mUGX5vw5hzO665gITcvmFGi0DD7/YqgGJ5kiWzBBqNIBzw26O9GJ+pt/tRKB6HCjoHwCkesIxXe5d5pHY2aj1oU0pUSnu34DM7UbDozZMrkp595wWQLhP7bl7SlGIUfww3/rQ22ZCB4MSyA85Lht0S7fC+b8ctwP54p88UvlElD8XhNInulmyRKol6ygWBu0jbfgte4c3e0QQq991LhHZjqqz+Udc3lE1f+Bh626rAbgiBeFGC1e3u5B4i6DKsnXx2BGVYAHaIU+GBU7JQGx1c5umXy/ytez76mdZ6CodCw1bvlYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PWJPVO4qTiQVnXMqprT7ocufmunPDJQpFz2KsskUuHQ=;
 b=J3NglVicg/eNFvzn6ZaJyg0bhRjSABYrHPtdbgJzkMFOeNzYsrSDJqSbYWsXGV35vqImAD69ZgR+yYrqwviniJFEQP48VGRnRVuRjaJADV2xVc0RRvBFJyXAPiKz7MbGBKgJ3hsofeN7H1mhGuiXPErDb6fT5wMpnrLzOA3dFLQvEEQrNizBRVN8ue7mP4D8IM78nY8arqKQXYKRfiBsIfD0G/YtSauis7fB19wR76zj6qk4Nxfk+YmSefqGu9eHJRorNktcU8HG2L0j3pOU9Ha3mzAGgyvYgwmYIYPXE+oqdW09gOUs/YSA26EIPHzMlAdlDlLn8aR4OACigYOwNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWJPVO4qTiQVnXMqprT7ocufmunPDJQpFz2KsskUuHQ=;
 b=qcZdzVTOOxOALn3PsMhpjmDuyxN7w1VlqVUT5q0Gy/Tlq8susZAGR40ypvKrB4+AQ9U4A9gnZevWiKw51dNnsihMSi71ecJ88yv3XyFIji0e2mPbNiOlYdin5R7sqmO+IygmxJF8I+sutNEQXIZtRHDjtlz9KazLXI9/aZio3wk=
Message-ID: <7cacb5c2-6208-4bf6-8616-5b3865aa09ad@oracle.com>
Date: Fri, 21 Mar 2025 12:27:01 -0700
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
X-ClientProxiedBy: SJ0PR03CA0258.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::23) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|DM4PR10MB8218:EE_
X-MS-Office365-Filtering-Correlation-Id: 5da3d304-5449-4836-1e3d-08dd68ae5c52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UjJCdTZ2RlcrMjNaVllBVEJPSXNZaFFWRlV1S0lZbW5ubkFzZkxxcWpWb2lU?=
 =?utf-8?B?MzloYW9wNVJMRS9sRlI2YTcvUzcxWHdJNkNlMFFyeHF4bUFsOEtmNEtSNXNW?=
 =?utf-8?B?aVdic3VyYkhrNVQrQndsTlBMcVNiZG5yYXJEOFlGVFE4V3Y0aVl5cWNta0cz?=
 =?utf-8?B?aExzV2d6bE9IZnB0b3A5Nno5OFhaNlVWZ1ppdVRaamtNRk1VNEdXU1pIVXdt?=
 =?utf-8?B?YXZWLzhTZUNJUXdJbHpvL1BSaFZmY1NEYnRjaFpPY3N5UTdOd3ZwU2lqZUxU?=
 =?utf-8?B?MEZaOExtMDNocWpYTFM0NTYvVjNzcE8yUFE3YzZ4VDdOdDRrcnBIS1EzRkdw?=
 =?utf-8?B?YmNLQkVSaFFhMGdWU3lYcDJZODZnQnYxNGRXWFF3TmpqSUpyV05QQXBOcW0y?=
 =?utf-8?B?Qit1Q1JoNVhzTER5TTEvS3gvREMyakhsT21KM3FPUEMvT1BydFVKUHVwcXM0?=
 =?utf-8?B?WEdHRWNsMW9naVpkTk5hdXJmS1VQN0pXZGVqYnVYam5pYTlZMkZQN0FkS3lR?=
 =?utf-8?B?aFBuQVEyNHM4R1Q1WUZZT005WGtFS2tudnljWlcrQkdYdjVINGxDM1prQUFj?=
 =?utf-8?B?THh0Zm5jZjdvZnNlYTdOV096a3NjWEF6cnNZYmdJTkZrK0xBTHA4OGkwZlF0?=
 =?utf-8?B?L1Q4SythelMvOWkza1JoQmxBOWFGR3l3bXBic1I1eGxKZVR5dHQwWjBka2JN?=
 =?utf-8?B?UUhYdUdTdlFVUWJTZHkxdHd2dE52bXFwaXB1Y1BBQ0JNcXF0dWJ4blR5QmFU?=
 =?utf-8?B?alJheEgvTDhEdnNETzg3aUpzaXplQng1TUxSYUZqUVEzM0pGcENFQmYvRVp0?=
 =?utf-8?B?R0NudFRTd1F0RTJadmFWMVJreE9aK1FReXExZTRoeTRlOWVzTzlkRGhzM2FE?=
 =?utf-8?B?YjJWNzZiYnlqMis3UWxoZ2xXajRuL0luRElQVjFiTWJXdVBxYjJPTktEMEJ4?=
 =?utf-8?B?SzBiUlRnRDM1K0d3V3FCQmRRa1k3akQ2QXJxOTVsU2VRbHc1aDRUZEUrcGFV?=
 =?utf-8?B?UzVuQ3R0ZVB1VTBURG51WFU1bU4wLzRRNmhPUC82bkVlYmRqS082L204Vk9n?=
 =?utf-8?B?LzZZTnNzMmxTc0xqZnlzaFJmenNFQWZpd0pyWmx2V3pKVHhCc0JLZkp3MVVj?=
 =?utf-8?B?ZW5QdTUybEI5RVRuajBDeTVqVjFVb0hJY2dEeVl6SzNEWU9ZZDFXd1VLMnRI?=
 =?utf-8?B?Z3ZNelpqZzdpQ1c5Y2hlTC9NL054dFVrNXZTODZBL1Z2WU03a2tQMTdSNHA3?=
 =?utf-8?B?NjBXQ3ZJR0xyNzJtZWVhYlVDaWprSWlNT1pnODBQVzJjcHF6QkxWbk51aHNZ?=
 =?utf-8?B?Um93bVRZM2owaEFCRklzeDFVc3ovQ1FXMnhUTW9pOS9GdXhHU09GN2dLcHJX?=
 =?utf-8?B?S01kakpHaTJ5VXYydlZqb3J6Mis0d2htSmRxZllpeWQrZjZuTTlwZzhaMjdv?=
 =?utf-8?B?WjBKUHhwc29NUGFrMUdzbjROdm5RdU1yNGJPakUrcEJLYitGK2FzQ2dBbmVu?=
 =?utf-8?B?UjBDOHdpRTJFS2hFVTI2UUVwS0pucHJ1RXIrclE0Y2ZnYm42aysrSzJiV09I?=
 =?utf-8?B?SjBmSjJxR2lsNVhDRGdvbENsTzFVYXZzeEt1UWdFNlRwTnpUVVZwL2svVVhw?=
 =?utf-8?B?dXlXNGNVejNQclhwSWxla0x1V1hyNnE0Ty9nRmJXakwyR2w5dFE2VTJFLy9t?=
 =?utf-8?B?cmRIajRBVmJEQ0RFbmJkM0NzYWdtOWhGZkRMdU5NTzAycnR1ZUpjdGU2T2hL?=
 =?utf-8?B?anU5ZlF2M1VBQXduaXB3aVdyM2EwaFlaTDhaWUUxcWwyWEpzb2hDb1FydjVD?=
 =?utf-8?B?NmxlV2NjLytQQ0llZ0xPUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UUZMSmpFck1nVzcydm1FejRmQUdpRkhSdG1Qbkh4TEc2bHFET2hsQWpSaDhh?=
 =?utf-8?B?bjRzU0ROTnRVTVdVZ1Z4blA0SlVOWlcrQ05zWEpEME0vRzBzSnp0T2p6Nnhm?=
 =?utf-8?B?SHZWTzdRL0g5TDhCYks1VXpDN29CODFNbTRlNkpRNE1pSTd1MzlQbFZQZGNY?=
 =?utf-8?B?a2hLek5vNUM1RGN0MFkrM3dJbnBFcS9yamxzdXlnckdsaDAxcERveXE4WHda?=
 =?utf-8?B?ZHdwT0tnL2tGbVVtT2RLejllc3VwZ2hvL1lsNytIQVpqU2x4VU5EUnZiaFIz?=
 =?utf-8?B?bFhvYzZyNzdRS1lxeWp3bDNYemVLbDNwY3lVTm9FM2wzbDJDdkV5Ymd6WGtZ?=
 =?utf-8?B?SXR0RXhXMVdtMXNuRExaelVsOHkrU3NqSFNSdVVBM05NQlBteFN6MmRCQ2FR?=
 =?utf-8?B?OEg0RDZXdkIzWFdYVU5CTE9vOGJYdm1FTzhNb1VUOHM2YS9ySEZtT1lzYTAv?=
 =?utf-8?B?alZqb29wZXI2NXlieXNoa2FiSWN3WFU3ZkVybU9YL1dvcGM0V3dVK3NZQUFn?=
 =?utf-8?B?b0g4TzBtcm5lMXQvejlScG5lL3RhUzdJeHZablZFekFIR2tCMHlRNWxLOGFT?=
 =?utf-8?B?QW5SRXh5aUVxaG5hTVBDcHUxSFNMU20wbFc4SE9xRXRUbXl6TkhITDFWVlpO?=
 =?utf-8?B?eEgxNDVNbTlXWVhVelNTQXIyUGlaZnh3TmttQWFremo2Q01mRGlGcFNCVUlz?=
 =?utf-8?B?aHpZbXZJQUVwdkNwaDh2cGJkVUxXb3MxUGkveVQrS0VvWEpkbFNtWURoRmFM?=
 =?utf-8?B?THZsSWdVOWpOMDBNWXgwQUtPRGVGd1F3bTRudVdxNXJZenBSNXpOcUNVSHJl?=
 =?utf-8?B?RWtUN0J6M2l2d1RpMnBnVHMxdWJ6VDhMNzROMEdaekJDSlQ3RFRzRVo5Tk1y?=
 =?utf-8?B?WUJrQ2V2SEY4Rmx4SDF4bVdZa0U4azhGQWVCVm0vY1Z4WllQNUZZYkpqVzY3?=
 =?utf-8?B?bFB1TVVZOTUzMkwxWEVqekM4RENVYXNmZzF2WGI2THBNUWlQeHk5am9jUUZC?=
 =?utf-8?B?M2tRK2gvTVE0Rm1VeUxOKysxMmhtWlljVklUQVlqT2d0UXFEQUFyUkQzbUl5?=
 =?utf-8?B?akZLSjZlS3loWU9EVllIOUNjTWZNU1BiVjZVdlpjaHBlL28rbm14UU5BeU5B?=
 =?utf-8?B?U0RkOVhmbVJvVFExTzZrTm91YUVQYmI3UmtUN3l1a2ZyMXJtR1V0R3hwSFI1?=
 =?utf-8?B?c2k0T0tLbHZMb1d3Q250dEViRldWWTRvN1RMMzRvMUtRSmU5SnVDU1ZCdGhU?=
 =?utf-8?B?ZUxsYnlMcXBOVVpPK3JYUmgxVlE5TkNTRVpYcGlDaXZjaVM0Q2VNQVFOS0ts?=
 =?utf-8?B?Vlg3Uk5SM2Q0SHpNMWRaTENyNzBWYmpPa0xKMlo5eXo0allpQjdMQ0hWbUd5?=
 =?utf-8?B?OEtidjlBZmR4NGNlUDBQangyTG9nZnJ0TEJSeHFrL3h3VGd6d1FGNllLdTZ2?=
 =?utf-8?B?djFFK0hXVklZRlp3L2F3NVJ6eXY3NlZtbDFWNW1ieE1IYWpyeGYyRStPalI3?=
 =?utf-8?B?emRUNHRsZUlGS3ZROVhhcDQ4S2l0c2xJWHVxa2g4emgxQXVJYkFOVWQ2R0Va?=
 =?utf-8?B?UHdXd281elkwZ0g2OW9WZFlXTDlDTW1OT1lQcmZJd2E4L0JrSThBdVNMOGIy?=
 =?utf-8?B?NC9pOEVka2xCS0N2SUNCTnhwdG1GbDdNTFVOcktTdlN4blhZUjkrNm1ZWmE0?=
 =?utf-8?B?bjQ2Skowam1SRG9TdEhQNjRiTUV1aEtNSnEzSXhoKy82aGZWZHM0UnZwNVpJ?=
 =?utf-8?B?QWdmU0hmTFlWSm4xbC9yMGUvWVpZYWowMWNUK2dwd0U5RXNEakQzaEFPZHZ6?=
 =?utf-8?B?Mm1DdkhNZFRnOWc2SDBBV0xxd1JSYm9hUUhsY1RyYUMxQloxVHMxbndrdXMy?=
 =?utf-8?B?WjVuQUNid2FOUVJiWFdwZ3VhOFBSYm9yTGJXSHBQcUxhamRqbXR6YTVEZ0Ro?=
 =?utf-8?B?V3BFVSt5MDI1Nk5yZnpTeldHRWgzT2RacXV3M3BZYzgyd3g0UTFPTkw3eWpj?=
 =?utf-8?B?SU1mUVZ1eUF1RjRuK09OWVhsSzB6Y2pzSnJqSTdreVhLblIxMHFVdlc1bmo2?=
 =?utf-8?B?Y3VPVXlqVXUyT2ZnZzRIWENSN0tXRGdCOWsvVVMxOW9GbmdGbVR6UUNqK2ZV?=
 =?utf-8?B?ZW1wZWNqdnlNUWF3cGYrL1MrN2ZYUGJxN3pqN3F4cDRnMC92UTRnUWswVmFE?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	YJNt1rr0vbYcIOtbDXwMDuwRaejmIWnHYESYxSSf2XRWF0eaF3KTGzqQtEU0RkXP4C39DWRB1RH3PKn/+Mo7Du1JlnGo0cSbOaNWPAzTgHsrJI1ElnBWItFqvocJIUTmS9D78LWApAq6sibZAsclsZAbZ/Ypf9ZhSEPwtTZjc8+9ufJ2tBNwc0fZAVw3Ta3179heI67ueKAsJ6nJv36+LjmIQwsjpzF9szqL31+XtOSb/FNRTjVFAfTD0qnNSt4ROjBCKQLsA+EOiw6J/hBqpgyQnk3gYW9Ev+X1Vyo9FQ/jWqR9yOXsxD2bQ0Qwvba2gkes8VKBWCj9dYPneJig0EPL3LPK2HJPWOBLLmkhycqt+WbPCICEolpGSNNLhZyGapBoQSbswIW0IEPTfbfAzQdPUcPPrVJMCoJvQYL4aX+9tQP7/jZVYEdDnaFSgSKQcP/8zU3QtXAGwKV2gJodJgnIEve0Dkk4mxH+lcDvnErqennWXlcMUDXKG0mg24FAXK4oERZgbeDS3c/VOZYPg8wwL44gvC3kEvj4CUIawFn/JyLaBBObCm5hCr9AptSa2+R0Nx4R6gpGF3enttZid5Eeb4ipPIZmuasQ5qLe/jU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da3d304-5449-4836-1e3d-08dd68ae5c52
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 19:27:04.0947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mi1pudEg0IBMZ2/nWyqhkIfohjx8z1lM8FzMpZ3f57tF72mPz7XspUIOHgd5ngsEzUVcpA2zq7eclDeQYPYh5Jv0OlXOZDuf6AmLLKpohUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB8218
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_06,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503210143
X-Proofpoint-GUID: _R0C5eTPWU7GXbvtUz4_Fzdca6AckkLu
X-Proofpoint-ORIG-GUID: _R0C5eTPWU7GXbvtUz4_Fzdca6AckkLu
Subject: [oss-security] Mercurial 6.9.4 fixes CVE-2025-2361: XSS in hgweb

https://lists.mercurial-scm.org/pipermail/mercurial-packaging/2025-March/000754.html announces:

> Subject: Mercurial 6.9.4 tagged (CVE-2025-2361)
> From: Pierre-Yves David pierre-yves.david at octobus.net
> Date: Wed Mar 19 15:16:31 UTC 2025
> 
> This is an out of schedule security release
> 
> Please update your package builds, thanks.
> 
> 
> This fixes a XSS vulnerability in hgweb, were an attacker could forge a link that would execute javascript in the target browser.
> 
> In practice in production setup, such injection might be caught by the wsgi layer.
> 
> For example the popular mode_wsgi would catch such injection and return a 500 instead:
> 
> https://github.com/GrahamDumpleton/mod_wsgi/blob/develop/src/server/wsgi_validate.c#L75
> 
> Thanks goes to Julien Cristau for noticing that such mitigation existed.
> 
> 
> -- 
> Pierre-Yves David

https://lists.mercurial-scm.org/pipermail/mercurial-packaging/2025-March/000753.html adds:

> This is an XSS vulnerability in hg-web, and the original bug was 
> introduced way back in 2006!
> 
> This was disclosed without our involvement and showed some gaps in our 
> security handling practices that thankfully don't need to be put to the 
> test very often. Nevertheless, I hope that measures like refreshing our 
> security list should improve the situation in the future.

Debian's security tracker points to this commit for further details:
https://foss.heptapod.net/mercurial/mercurial-devel/-/commit/a5c72ed2929341d97b11968211c880854803f003

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

