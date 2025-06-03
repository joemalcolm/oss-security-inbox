Received: (qmail 26587 invoked by uid 550); 3 Jun 2025 16:54:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26549 invoked from network); 3 Jun 2025 16:54:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=BwabaRIrVmO3GxZ7uLFocD0tkvduKNmZ//MTA+YFgio=; b=
	mBKX83ugJVxhY7saODtfHep0x3+2ZI5jejyPaWLPMu995WwJqK4VdLhYwNFpt9io
	OHhRDFG/tcsx1e9vUlyf58LgyafVC9lM5v3qFFYB1x07O1wLWa8HdUCLe3Ajzh5c
	9karGHzyFS53oDNLr8+V5AcNFnFDQvHJr6wRjO2vmnzIwFNldlEqeCsscX7AICFa
	7+89Z1+GziHHPSaf53TgMYouYyd7L4UR5W9wa9xOs96l3BbxIoJF+CPMYlsyRCVH
	GbWIWDac0ZvJw3Jy4zUPUOiPxKuzizBG9tZS+MUW6I3nFc0bQTmULI9TL2fpKOri
	stVZjRcM3cxCyWgUDOzEpw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wcpb33QO7wss5ITh6uOgk9phxqQbvOyB0IJiKej7HBtBnwvIWCIt2lTt2ygjZtgU/PWaXwKdD5iih+MtPHUT/yTIzSmoN76RVbzAeYcVOQ9nmjNUlNj/LdzBFIqu/d39obai88i6N/3v22lJ1JRqy8wiYFVCitG8HvyixTKIRiF1ACrEoLQaaQ3Oy66uKUWKvOHZOFY+pVXE7ytnvcUXjOEqy/gee2g1/GgJ1G9FyaWuBJxH3r97EfRJ6KjL7nIfYP60WDvxoAAXetjRI+e6Xe3JTMku+4qPrhpjA6rlVVj5zPbz4iOG+ditExSxnfuptDLk6FbvXfNHMNeFSN1S1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwabaRIrVmO3GxZ7uLFocD0tkvduKNmZ//MTA+YFgio=;
 b=g/Zah3bj2LMpDlBpVCfsxudrUwggp+1n1iL7JKWXBO063OWbTmDW5DS5+lr8YX50iEb2znJq5JSjqDWgsk6X0CE9b/v+zOZzkYoRF/sBVAb20aA0F+xFALVejc+pgRO+MixDxcDOs4hwkKnI7n6zWTi7jGYkNlKDdjXUdUzC5A80bMFx8qMZk6eT+DE7RgdFzoW3WdRZhdPM1S+x/PzRg7CcgtzRVQS8ACtQ5cB4pHONL/FzR7GNtlKYcVzwMGiOzXzwTLkEuX4O7/xW6qPIpZK/wAMzOodwLMSBz/x/5wFr5tx2a9LSD0rYhiihGB7C1n6xR/3+gUBGQ+KY1bJEHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BwabaRIrVmO3GxZ7uLFocD0tkvduKNmZ//MTA+YFgio=;
 b=eT9skLg1htb5BbfudkgUOTF3anUcy/eOcPd1Vidrlo1r3/qccwysyQ6vTOf5O6PAJEiZ8rvArpTjRIUXDQpqE5+J43IXK6pN4NFJM3lqfLjLVQ09I05PY/qFvn7OtoLSupJy+LzgK4AgKN3wsSGBWWhZtgjoL1QCh75jPNTowS4=
Message-ID: <89332613-efb8-45ad-b68c-f5bc0ff3d093@oracle.com>
Date: Tue, 3 Jun 2025 09:54:38 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <4ab34772-0c26-4b03-9cec-a375e36fc9ff@samba.org>
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
In-Reply-To: <4ab34772-0c26-4b03-9cec-a375e36fc9ff@samba.org>
X-Forwarded-Message-Id: <4ab34772-0c26-4b03-9cec-a375e36fc9ff@samba.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0167.namprd03.prod.outlook.com
 (2603:10b6:a03:338::22) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB4432:EE_
X-MS-Office365-Filtering-Correlation-Id: 25ce397d-e988-4416-541d-08dda2bf54f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Y3EvdEtxSlk5VndTQWc0YUp6OTRYQWg3NmFPZ0Qvb0FjdlZFcFIxRlZ3OTZY?=
 =?utf-8?B?WUxBUTBNQnp1eTlQQ0ZVaW9OSUhZN0g2dVFJb01lWk1SZVFvUVQzb1lNS2c3?=
 =?utf-8?B?WnkyVkw4TmYzdjk4emIxYVVsUkM3Zy9OVnpuVEQxakg5MWIwRWlPdlY1NEdp?=
 =?utf-8?B?eE5VYTMxZ1l1MUFrQTVOMTV1a3Z2SjQxVVRkamFSMFhFYWVnUGtmVmdOcUZ0?=
 =?utf-8?B?LzNnTjVTdmlnazZVL3Y2WTcwZmtURXNxU0EyN1VZWVE2S29GcitkSVhsVksz?=
 =?utf-8?B?bkZ4cjJTVnBMMHlVKzNWdFlWWkFUUmtSMGRLNHhiNUhSOXR2OEdkOGR6NHhK?=
 =?utf-8?B?cnpaU0tBLzhFVkl4L2F2R3E4L01BRC9waUtpUm9NQ1RmU0ltczNTMlNlMDdR?=
 =?utf-8?B?dllPSEk3ZkdEVVZEdkdEdk96TGVNUWZCVGZiRGdCQ3pqckl5Zk4zWDRVa3JP?=
 =?utf-8?B?VVdvbnNmWUlmd0VLSkYyM2VoWk9hT2V1cjhRdEZkVG9jTXhHb285SmJPcktQ?=
 =?utf-8?B?VUllWVdtSjFpemdXcFprM0xDbDk2bnc3VWVEOExOc0ZrOHgzUk8xajNFd1RG?=
 =?utf-8?B?UGRqSzB6Ukc5bzNlQVpxRXM2TTdCVE90U2JCQ1dvTUVPaEZtTkNDVlo5YVgr?=
 =?utf-8?B?NE5rcjMyNDV0YlpQWExuUnNWcTJJamQya0FxNjZ3K0V2bmVDcUoyWXFIOTh6?=
 =?utf-8?B?M2phayszNFQrTENaaXppV0dnak1Sc3M1ZHNwM1RzQmVyQTRFc1h3TGJjQVpL?=
 =?utf-8?B?QzdBaXZ3dURpZkJMQkhDbjlnak1oVmlkcXVEUmxlaXBjeFdsZjhJWUIxNzN6?=
 =?utf-8?B?OGhpb1lzd3RIL1lVQk9qMjRYRnYyaCtraHFaZENBcmJGWSs4NFVxL3YxWlVU?=
 =?utf-8?B?U1d5WWtJRkM5aVoxQXlsUG9PVUlkdHZ5bFYzTnpKSzU4QW95WjhQL2tDM01M?=
 =?utf-8?B?ZGZ1dllNeGZxRWdDNS95RU1IZDRGODdGWlpZc01hSHlvU0plSy9BU0RIem1R?=
 =?utf-8?B?S014a25qSkNEOStHTUl4SDY1dG00V29FUkIwZTdjdmUwMXg5ZW5hWEhjTFJL?=
 =?utf-8?B?a0JWSjlVVVZOVHNsQXhvMXkwTEc5QlpFR1FRM2R0eUN2QUtRcnpaRDJIZHVV?=
 =?utf-8?B?NnZGUkdoQy9ybkpqb0cwczdnUEd4ODlieXV5b25Nc041bGNoaUpPVVRRdFhZ?=
 =?utf-8?B?bU9SY0FHZG5qc3BiNEFMYUFTMGcwSEs3ZUEya2NCbTF6NlA2NUdOMzNNNExx?=
 =?utf-8?B?WWMwRWVWVktUQk8xQVk4NlBJTFJmWnA1aHFPRE9xdXByOHAvb1hhZi9RZkh2?=
 =?utf-8?B?VkJKLytJc012YXVJZXdwMk1rbW9sajR4VDBmampiVE1jVFNrTCtHMEs5UXNt?=
 =?utf-8?B?dTVNOFo3R2F2MVE2R0o5V01JUlg3bVN0YTc2cW5iZUlUTE5xSytVWGlJSGxR?=
 =?utf-8?B?MXpSNEhQelBWc3ZTL0xsTnlmWnAxQTVRU1ZWUWUveS9LNnRtUm9raTg4OTNk?=
 =?utf-8?B?NktkNC9JT210MzdoM0JwdWNmQ0ZuU3c3MmJDUUJuTkJxYjZWMi9ZaEE2ekJM?=
 =?utf-8?B?cFNScW1DQ2xMdGtHVHltcS8wZU5sand3NjlyTElBbC9BOWI0WExzSHRRYXZH?=
 =?utf-8?B?eTBHMjNqMVNHc09WOTd1TE41cEpNK2czSjlhWW5XQjNEcFNyRXkxYkdOQm1h?=
 =?utf-8?B?QkM5TU5nZmFabkxXV2tIUDNLMUpReW92RHJER01SK2wxT1g0ejdmZno0TUFu?=
 =?utf-8?B?ZXlBMHF0SzFIR3I3YmM1ZEMwYjhqZ2lheTVzcGhFRlFrMHZ3dUNYdjk4YzFl?=
 =?utf-8?Q?cZ28OmwY4GL+2pnp9srfMoBV29s+kz2R3oG00=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NkRFQ3Y4MGVtMmxzR0hlK3lpdkVPR1FjbVpKazUwdWtqMmhTMkhoQUZHVEZH?=
 =?utf-8?B?ZmRraG1BaU5BTlgxaGl3QS9oMDFlYmFsZm5mRkZzQnlVenhjNXp3RzFTdnJl?=
 =?utf-8?B?YndUVTlWK2dtV3dWZlh4TmNVdjNkUE9FOTJaYVcvUEkvNGVNaUFPNWJ4amdP?=
 =?utf-8?B?SFlBZG5RUCs3ajJpeE5GR212Mm5WcEhKRFh5VWNmUkUzNGIwZFZIU1pHQ0pn?=
 =?utf-8?B?UjNLOUllVlVxSzVkbnNwVVR3OCtXUFBaOEZDOG92Y2FCbDlmd0RmWFZqeHlo?=
 =?utf-8?B?K2Q0dng4QkRHWmxEMlNzQzRRNmZUU2pmQjhScVI0aDljZ0NWWDdlMG1tc2N4?=
 =?utf-8?B?c1ROeTNCUkRCLzhNN1FJZDVsaE9RcXhGWmsyTEFkL0szMlhmdFJKQWFZanA0?=
 =?utf-8?B?b05CaDRxRlFpSUlBQkE3c1hYdWpXZTd6TzZvSEwyU1ZHU1dzNC9DM2h2NkJn?=
 =?utf-8?B?S09wUHM2VTZMUFBMT2dZSTE0b3VDT3d5OTJZdm5rSW9YT1MzREpPM0V1RWxz?=
 =?utf-8?B?ditzVENkWFJYUDEzdFNkNkV5TnNvWVZMbWZtVmNlQmQ5Z0JGOWdMOURmckNo?=
 =?utf-8?B?WlJxY3ZZT09WM0ZiSWVmaHFtVjlrdzNNL014TXA0NmJRRkR2cmlhcW0waHVq?=
 =?utf-8?B?cGdxaFhzZ3p0OVd6SEl5MjN3cXhzajJ0bjFBbHVNQWY4MWpMRVRMRGl1MjNT?=
 =?utf-8?B?OU84Zk9VZjA4bEpoc1VMNmZ2ZE9FZnQ5VmsyRUh0YTdQbVNrTEMrNGs3ZGk4?=
 =?utf-8?B?ckZBQVp2WWF2L0tYbjgrU3ZsUnpNY1dFUnJqbGcrU2hmUXBPR0x1aVE1V2h1?=
 =?utf-8?B?cCtNWi9ReUJpSzRkSERaZU84TnBsZFZKYkNUM1pTNURjcis0NUVKdHAzOGJ4?=
 =?utf-8?B?MjhhZjdTaG5Pb29KWms1YXZPazY0NGJKTDhwK1lnQXVDVDlBYlpVUm9kN1Ri?=
 =?utf-8?B?dGtRcGhBZ0hndURTZXgwSlBEUTcxZmdXaXdxWHN2Q0xxb25kemhaMXFCN0d4?=
 =?utf-8?B?dmhHQWRwMHR3QlBsVGM4c0lhb0N2b21qMDFud3F1bXhGeXU5VEdNZXF2ZWJ4?=
 =?utf-8?B?cE1Ic2ZOeElVektPMkFBd1JIVHlyZWdrcTY5R2s4d055dTY3Tks2TGNOeVdw?=
 =?utf-8?B?Q2tXT2RCOUtBeGFjUVJFaU03RE9haVEybGc3dXdkbys1eE9IT2pWZUVtM2k0?=
 =?utf-8?B?SWNZUWxsK0g1RFRmYU9TaDlHeVZkb3BlTUpvZE5qMXV6MWpDVHVKbHhiU2ZW?=
 =?utf-8?B?T1FuaTFRQUR6bE05WUhkbGFwK3E1Tzl4WkdaU1BPSHQ0RFpRZTg5aklwdldj?=
 =?utf-8?B?Q24yRXJDNExXTk85eDBBZ2tWemllRStpOEFsalVOaXUveDVhMFNsalB4d241?=
 =?utf-8?B?cnpJUnN5YkFCUkFuWkExMWh6MURVTnNTcXJma29ZNzRmb1hmOGNmRWRqeVZw?=
 =?utf-8?B?MEs1by9BaS96YWZnZTJsenFTQUh2SUhxUTQyb2l2djVVdVUyNExvS1JjK2hl?=
 =?utf-8?B?NzZBYkhBbzJoV1FQUW50L1k4QlVXQlFqcnVXMjJDQkJuWGwrcmlCUjQraGxz?=
 =?utf-8?B?UUgyVGliVHVYWU5RSjd2WW5PMnZCUy9kSS93dEVMMkFMOHEyQzcvQisxV0JP?=
 =?utf-8?B?Rk10SitnZmw3MlBIb2NKUTR1MnFzWmhwenYwM3dWeUxzaWVKV25WaWpWTjlL?=
 =?utf-8?B?OGQzcUdlYzc1d25sdzFXb1U5eTVkYUgvNzJxTHV3U2lNbTZwNFRQVWR1U3ZS?=
 =?utf-8?B?a3Rpd0ltV1ZpeGl6SURCRFZaaTk0amZpaURYMVJqMlVkNVYrNWhXY2xiM3A4?=
 =?utf-8?B?dmpDSThNZHlVYXd6SVNsdGpKNkQvNnhwQjl2cFRXUFZWK1ovdkhEbmlhSmli?=
 =?utf-8?B?ZllvSG5pUHppakJZdm9ER1kxN09IOHBGR1gxWHdvZm9qT3J0U0FKR2xUQVhE?=
 =?utf-8?B?U1M3QkJkU3hnK2MvZDVFb040Q3p6ejc2eXhyc2gxM1lSQS9oYSsrbWVJSkZ1?=
 =?utf-8?B?REFXSFNrUXVhOXY3T3FQRXB2TzRyeVQ1ejJZdkkzclMveXJlRlA3YXNDVUpv?=
 =?utf-8?B?bit5UkJvQVpZWjl1WHUyUHBhN0xubjRlamxRWTJRakUrQVdnTmg5aFpTcjZ3?=
 =?utf-8?B?ejIvMjJLZ2RhU2o1enppQXR6blJsaGcxazBHUEpiUzBNVHlRd0JFQWJ0TXMx?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	dESbC11zORYF2Qb++lT3DNkn2d7CJFxkRGz58EOd/T4aE5ahONZFUFpKBMnG+2SaEi6iB4hQy3OWsupXErjrvAqGghbxb+116pUx7G8nxfPnSS68vgc3WIEK6nRJznLB968Td3+Zi6wpRLUs+rfsE7CZyyt6WuWaITL4VElbLvcdLqVS+aN9gVefrwspNKDjcYnMbxMepW3ayoWkRlU8C0fRKNK9p01Q+E9s3DIogRHBWGG3J9WxesM0qn3d0EQbsKrG/tNlLVDee0Toj1Vjx83kdEbU4nYmUeob6v9NF4asa3NZOZo0X/XtayU+ELC7tY//jnPyM4kGQ6KlFvDUlhMfXt+r4iMefIJw4X+75Ii2esHDwBV1lSu1M9FKD0b33JrDiqzvkQ7C5TEFYAil7V12XygI9eWjcVq8n4/l0NEe6u3YgLj88gIYTIrrwH4vWTc23g+tu0RmOX4ZHnGTQSjvhExSoP+cBtFoIW7QeziVkj/qoPdVp8zco6L8L81OYTeWvQaEfYrHBIWPfSTF6Wxgc0YrpT7i84BNR14LCy/MkQnmp7bu4C43zWiKeOEMOw3kHyMCmN691NzCLoIDwaE4+q2C+eujd7hq3HH8uqc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25ce397d-e988-4416-541d-08dda2bf54f5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 16:54:40.6498
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PeJJZR5UkWxTfAe9PYl/cC/rf07la0WpXY4hW+YhUtz0WL0syAp2BJhJBWxiouzEijcnJDATUTxssKbpGV2RATK42WkZpwU2F9HeDDRR7u8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4432
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_02,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=999
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2505160000 definitions=main-2506030147
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDE0NyBTYWx0ZWRfX3n3jC1SyQnKx f9Y1hlM/k7nsDxwv8lp/tGgThWcoW0MVB1SwJbakciJw0rsNhd1CWCltnmD1KBVLqrJKgynuhTV Cpmxp0GtPSf6ywLhCfXHqkJa8j78HXXMhWpEmXkpxp7Gr+L2OH6ceTihNZWjfbebwO+84bsameg
 t5+mTIZD67r6M2YzweeSYoZ+fVi7kTIgpYtY8eqBf/Razv/eLWkp7TserUUD1/wGwpGWFKxM/jj 4TMBeMf74G1CWCwzHYV7soizMReWOhZ0R1/GOzfLo/z3qEjXupd8AbxEmhbNrIvCBM3ALlGHEMR eFzdDY1N+lmQ2/XEdGQ7nUyP2FsZfX2rPyyeZk1tqoUtH2FQZjjcpWIE9iYfwPGeAnLW7zcytq3
 ik8PkaGzXg09qkyTPE/W8KRqMp2Xcbi3FFpDNlAI27i4CxQGzjZIWY988k+deNIM37QgYGXI
X-Proofpoint-GUID: TzHEj0WdGfm2qSX8e_EfqlwgoecO3LaH
X-Proofpoint-ORIG-GUID: TzHEj0WdGfm2qSX8e_EfqlwgoecO3LaH
X-Authority-Analysis: v=2.4 cv=H5Tbw/Yi c=1 sm=1 tr=0 ts=683f28d6 b=1 cx=c_pps a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=hGzw-44bAAAA:8 a=sAV9wGZvAAAA:8 a=DfNHnWVPAAAA:8 a=lB0dNpNiAAAA:8 a=I2lh5nmXAAAA:8 a=inRunXuVZDo-5TTtKWsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IwHZtBPkvs0A:10 a=Sp3aJtJcjDgA:10 a=2_K8r0WgY2IA:10 a=rmA-FMTVYrEA:10 a=HvKuF1_PTVFglORKqfwH:22 a=lVQL-uvWM5arJzzprxL4:22 a=rjTVMONInIDnV1a_A2c_:22 a=c-ZiYqmG3AbHTdtsH08C:22 a=JlL9aOIgGzp64LwJF9-u:22
Subject: [oss-security] Samba 4.21.6 fixes CVE-2025-0620 in SMB session
 re-authentication




-------- Forwarded Message --------
Subject: [Announce] Samba 4.21.6 Available for Download
Date: Tue, 3 Jun 2025 09:11:55 +0200
From: Jule Anger via samba-announce <samba-announce@lists.samba.org>
Reply-To: Jule Anger <janger@samba.org>
To: samba-announce@lists.samba.org, samba@lists.samba.org, 
samba-technical@lists.samba.org

Release Announcements
---------------------

This is the latest stable release of the Samba 4.21 release series.
It contains the security-relevant bugfix CVE-2025-0620:

     smbd doesn't pick up group membership changes
     when re-authenticating an expired SMB session
     https://www.samba.org/samba/security/CVE-2025-0620.html


Description of CVE-2025-0620
-----------------------------

     With Kerberos authentication SMB sessions typically have an
     associated lifetime, requiring re-authentication by the
     client when the session expires. As part of the
     re-authentication, Samba receives the current group
     membership information and is expected to reflect this
     change in further SMB request processing.

     For historic reasons, Samba maintains a cache of
     associations between a user's impersonation information and
     connected shares. A recent change in this cache caused Samba
     to not reflect group membership changes from session
     re-authentication when processing further SMB requests.

     As a result, when an administrator removes a user from a
     particular group in Active Directory, this change will not
     become effective unless the user disconnects from the server
     and establishes a new connection.


Changes since 4.21.5
--------------------

o  Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
    * BUG 15774: Running "gpo manage motd set" twice fails with backtrace.
    * BUG 15829: samba-tool gpo backup creates entity backups it can't read.
    * BUG 15839: gp_cert_auto_enroll_ext.py has problem unpacking GUIDs with
      prepended 0's.

o  Ralph Boehme <slow@samba.org>
    * BUG 15707: CVE-2025-0620 [SECURITY] smbd doesn't pick up group membership
      changes when re-authenticating an expired SMB session.
    * BUG 15767: Deadlock between two smbd processes.

o  Pavel Filipenský <pfilipensky@samba.org>
    * BUG 15727: net ad join fails with "Failed to join domain: failed to create
      kerberos keytab".

o  Andreas Hasenack <andreas.hasenack@canonical.com>
    * BUG 15774: Running "gpo manage motd set" twice fails with backtrace.

o  Volker Lendecke <vl@samba.org>
    * BUG 15841: Wide link issue in samba 4.22.

o  Stefan Metzmacher <metze@samba.org>
    * BUG 15767: Deadlock between two smbd processes.
    * BUG 15851: dcerpcd not able to bind to listening port.

o  Anoop C S <anoopcs@samba.org>
    * BUG 15819: vfs_ceph_snapshots fails to list snapshots for entries at any
      level beyond share root.

o  Martin Schwenke <mschwenke@ddn.com>
    * BUG 15858: CTDB does not put nodes running NFS into grace on graceful
      shutdown.


#######################################
Reporting bugs & Development Discussion
#######################################

Please discuss this release on the samba-technical mailing list or by
joining the #samba-technical:matrix.org matrix room, or
#samba-technical IRC channel on irc.libera.chat.

If you do report problems then please try to send high quality
feedback. If you don't provide vital information to help us track down
the problem then you will probably be ignored.  All bug reports should
be filed under the Samba 4.1 and newer product in the project's Bugzilla
database (https://bugzilla.samba.org/).


======================================================================
== Our Code, Our Bugs, Our Responsibility.
== The Samba Team
======================================================================



================
Download Details
================

The uncompressed tarballs and patch files have been signed
using GnuPG (ID AA99442FB680B620).  The source code can be downloaded
from:

         https://download.samba.org/pub/samba/stable/

The release notes are available online at:

         https://www.samba.org/samba/history/samba-4.21.6.html

Our Code, Our Bugs, Our Responsibility.
(https://bugzilla.samba.org/)

                         --Enjoy
                         The Samba Team



