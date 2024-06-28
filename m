Received: (qmail 26359 invoked by uid 550); 28 Jun 2024 17:56:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26314 invoked from network); 28 Jun 2024 17:56:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:from:to:subject:content-type
	:content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=n
	gl/SzflZQg0NEL+5LLU2s6KUv1s+BZDMs7UWq2Rsn8=; b=EyLqQ0ByAhsDlbDSd
	6W8dwiNec3fW87OkbOLKzEcMS9FxwbdNxkNe9aZHqXEolX/RLo4xMCW5efyazl8q
	oPqHMKfwNoyp7AL1t7OsnJJynz8dM3Fyawjb1uV3awa9Nfb28UaTMkZOgx9DqYlT
	IXwF6/w5emZs14fJGYtLu2UNVMv5Hhcnuk+lymK/Ri/bF4reKMD6Aj41bylztsKZ
	LX3bbzvg6UrKsiX5Qfjv9JJ26ucZKKjm0/UjFrLLuqJOpyf7qEJT2D7jpeaHW2AW
	Z2bi2w531ap1nvKFRP7/HHcerCWuBq4KmDVL01U3PLSDyfvJyboaXtqwinRBnlo2
	+Z09g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jWmBCa0YaoOocdSwEOQ8r01Z+yCyKA7bnSBHCTiLkcFhZnyTG06x4CypslHs7LwEmihaimDccxoYicQIqSSmETZxuD3Nol0j3vj9zX/ViWbb6WHmPOB0CyL8gkAhxWGi4I8tc4diWB8RZAFJN7LCQWUaMmaKHbRGEbpcIYXqeXCl/o1KQXmfqLsz4aex4kcFlrhVvWzfUJXjE3Dgwxxj17QDNibk8KflD75cD7s8yBHlmMPCtWUJTqjTYUJMkS6Du6IkJEn6FamJIuANX9ehFk48zJEVJTewdmhl+nSoCeYg/HPUdgH97IJBqm3A95MiZpq0WmIgcx0gMHEPi1nVcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngl/SzflZQg0NEL+5LLU2s6KUv1s+BZDMs7UWq2Rsn8=;
 b=PatbQIQ9esq9urwwczUZXTm032dlzoYHg4EgmBFz0tdb6jLWSV54+UqBuwgJLxVKBXiOpOih9NtFIKpdTgdOxvaPnYdFhAetspGfPxoaPTlVtSQEWz08WHf3lF+hJZW+nZWjMCgRf7aSO8K/z28FpbTT5e5Wfx2OXLJM+L9cMz2t9Zv881KDAAA89BGCNJW0dOuZPQif31oKhbAGmIZvh5V/aXDec7PKnZWw16unHL80O+T8Oj7/m2rSHRThazDZVnWpVZZoZ23f1SLVCgobBI+HjiqVJofClGfGlOtx0K2sdLvWfHCqcE4OB48U1ShIdV/OQDTYgFoiDBRnfKMi8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ngl/SzflZQg0NEL+5LLU2s6KUv1s+BZDMs7UWq2Rsn8=;
 b=qLf8Ja3iJOL9ypWHPSmM3ejN4wUZn2XWod7dqTSbVSOu+el9Msz477lEnaG2YORCs/nZSkwhqMsGRA3Wcrs+Gn76Q4uMtwcdIGNgz7bxGAK31IiPiJ7DBYjHgjmGV2k3RBDuJQBWIyKZUEzQ4R0caUrMre+8azelvWNrH12+GUI=
Message-ID: <2e452939-b858-4ce2-a820-8fcda65d2ed7@oracle.com>
Date: Fri, 28 Jun 2024 10:56:38 -0700
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
X-ClientProxiedBy: BY3PR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::16) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|LV3PR10MB7962:EE_
X-MS-Office365-Filtering-Correlation-Id: dfd10d71-ac74-497b-f1aa-08dc979baa08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aTFpTlhUcWVRcDQyMVU5WEdNdEp0Z2w3eFJtcm5vNGJGbndLU2EzN2NhVGxU?=
 =?utf-8?B?cUJnME9xaFdGVDJKKy9TbTNzNzNmTWMzNGU1WnpISzF6UFFDUUQ4YnREL0o5?=
 =?utf-8?B?SmI2WVNCWDFmdGs4K0Z0cW9JT09ienh5cVJ2RHFWbzlMa1lvYyt4TkU5ZkRv?=
 =?utf-8?B?Tlg3R2dvZWdpajYzZlFnWlZqV3I5K2g2dFJqV3laNmJWT1JrOURYYisrSzhE?=
 =?utf-8?B?ZmxqSWRqdDd1bnVCT21ZbTU3T2lUSDg3N2lNWnRpMjNSN1BqNnpkVURRYktp?=
 =?utf-8?B?eGd1SmxkbUxBVTJEdFVDelYzSk1reW9hcnFac1hlNitjWG4reE1PVjlSekY2?=
 =?utf-8?B?REtaVzFLTzBRT2RLYk1RcjZoYkFhSXBia0UxamNrenB3OWd6UHc4VGJIUm1P?=
 =?utf-8?B?UEtTb0sydlJjbU9GUS9pMnJEbHNya3hzc2g1VFhaeGdkN3BNVEhKdXdIdExm?=
 =?utf-8?B?ZXR6WjJQamt5c0txTFhQRFc5aW1xdEZMOXYyOWUyL1ZhNWVGU2xCWUJDWGVv?=
 =?utf-8?B?bFluNkEwMnZrQTk2YUZOa1VraGxGWTZxYXl5eGVpVEhvbFIxdHJDdHJsS1B2?=
 =?utf-8?B?UElERWM3SFE5cUF0dVpUMjBWQ1JuVFF0N3NrODdCd2YwaVBRV2lENm85MTZu?=
 =?utf-8?B?MllrZldWcjdweDZhYWgwMWZyL01UUTVuUEZkRnNldW9XY0FTWUg0Mnh0KzA5?=
 =?utf-8?B?VFRoUy9oL29ZdzJyVDVoWEQ0SGNIN3Jzd2dxaDZHN09ybEJBK2lUUUhsWDla?=
 =?utf-8?B?K3g2ZFpyc1ZGMnVUZWRnMXZsQ2IyTE1DUThPYmVOUFp3YUxaWWZoV0tNdWNa?=
 =?utf-8?B?RDhMTVBoMkc3L3lXOGNiTUNhcVRKeXhqbXFjenhjTVh5ZEF4anlQZXFQK3cv?=
 =?utf-8?B?M2VUeC9DTU1VbWppRktEaGRmTHdoT2xZRnR3Tm5XZWd5QkM5TEd0SkZxcW9r?=
 =?utf-8?B?V2VodUh1M3FGdkRRTEU2eVZQbDhDQUMyY2hINFNYemYrYUlpODFFQ2FSRVZu?=
 =?utf-8?B?U1hGTWk5Tm9PcXR0aFVCRFlJemRCcmVOTnJ2c0x2U0t3U1d0Q1JDWGpreHg3?=
 =?utf-8?B?T1BDb0pERGJtTnFobzkzeVZEWnVjQkZRUmhtcnl1ZHZpaW1mWURWcHFqSlNn?=
 =?utf-8?B?WENiZXphVm1LaHAycnVXaHM4U2FQMStnZUxTaU5IV1p0c0lhZkdWTGNPdGhB?=
 =?utf-8?B?VWlreHdTZWZmWkdLakJDdHpqQ1RQVHBmT0NqU0hQRmMrU0FqajZnODJoNWR3?=
 =?utf-8?B?RUdFeWFmZ1JaUmRBOTV3bzlFMGhQNGZRRlkyTEpKOUhsRmdtZ2tmcW9OWEl0?=
 =?utf-8?B?MzBlZFB1NmhFbHo4M3lwNkJ6RVI3ZitQSXpxY2lPM3hxNzhrNm51WWtFQmJV?=
 =?utf-8?B?YlN4U0llN2UxTk04UWxJQ0p4MURnajE0Zlc3OEN5eURDbUs1eTBkRy9PQ2Rr?=
 =?utf-8?B?SmZZTWtxSXcySlJsOHcyb3NCWkgrUFpCWlJ6ZWJjazUrYjB2dEYvREpUV3F5?=
 =?utf-8?B?MzBQOHFqNmgzRTV0d1Q4dml3QjR1OC9KR0gvd2prT3NacXRJd3ZJOERIOC9s?=
 =?utf-8?B?ODgzNkVrSjA1dkJsWHMyZUEyOFFiSGJGRWdTNTlNM0hBWDRXYjZjU1NYaHVa?=
 =?utf-8?B?SHpHcGIzWUNOUHhVVVlCdmdpSEhNMng1SVpNR0Q3bnZmQTE1M1pYcmJsV3RX?=
 =?utf-8?B?RXJiZWRweHhUcUR3U2xtSmJpYVNuekh2eStEVzFkaS9ybThTQXhILzlneERG?=
 =?utf-8?Q?cTO/sQWVu/iU0/4YrY9pxiEGwkTXLzc2yaG6PZm?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QmF0NkJQRm9ZaUJLQjNYZ0xhcEhDcWZ6OERXanIrVlFqUTU4MElNWFZ4KzFK?=
 =?utf-8?B?dGF0RnYvMUZ1Nm9NeFdadDdMbitFYll1V0xZcHdLY0lpUFF6czJ0bUZPOXVC?=
 =?utf-8?B?MGRHK0M4SVRydElmamdwcHdpNmlBWkFYeUhwMHhaZmp1YUg2UXRYUzIwdDU5?=
 =?utf-8?B?ZGJLK0dSaTQ3TVpZSkVNUnRQbHl3RUhwYVJKcHZjWUxqVUF3TGVjbXcvN3J4?=
 =?utf-8?B?ZC82UnFTcGNHMUl3K3UvZEdEZkM2RndPNzYwY2lFVUhBUERZc1BTZGIzaVM3?=
 =?utf-8?B?QXNOb0s0V2J4OGRsajZaUTlqL2JteTN0a1FKZVZ5ZSszN0N6UllnckRmTGNJ?=
 =?utf-8?B?UUd4elFVY3EyNjB4WWtISSt4VDIxWVQ3d2VpTW1WYVdiSDhsY0hYbUhrNU9D?=
 =?utf-8?B?aWpNdnEva3k3SzU1aFU2RnMxdE0zdXNCZ2FWYllieEp0NUoyNXVqazQzaHVH?=
 =?utf-8?B?K3orUHJJZjUvSllGcTdjMXRqRDBkUnMvUGJsQjJMNU1QQ2N4aEVFRXJ0M2ZF?=
 =?utf-8?B?UURqT2xCQW1QWERhazh1Y3M5Q2tlcUtFdWNGNHkwTlZyblN3d3N3b0FhSkhj?=
 =?utf-8?B?YTRZUXFuL2JqZ3paSmM3SGozUGZuUVNLYWU0ZU9Ua1V1akJvMzdiMzhuQWti?=
 =?utf-8?B?eEhWeXZjTUMvR3E5NFJ2b283L0ZUOTVNUURjV2hqQVR0Z29OaUF3czRhdXRy?=
 =?utf-8?B?R1FjSW5wUmhZQXBaTzlTcjlpaEttM0ZRZEJiejR4Y3p4QWJVNVh3RXh2WGdD?=
 =?utf-8?B?NjdKaVRNcEtlejlUTUpJT2dSaHJqKzNNZG5aV1drUWNMZHEyTEpSRUhtVFdr?=
 =?utf-8?B?SzBLdXMxWHNKcmVjM2JQNDVyQUR0OWtDbU5hSXBlTkdCaEhHMGVmQTl5Mkhm?=
 =?utf-8?B?QVdId1NRWmtMMzJWMVZiT3R4ZFV1TU9MbGJSTnRGQWdrbldvYnA5KzNabzBI?=
 =?utf-8?B?cGxtWG96UU9EVlBDa1ZsSnRJUlFPOU16SWlYY0drSE9Kc2hXWktWR2ZvSnFm?=
 =?utf-8?B?ZlJGNXAya2ZKNkxTZHVpcEJBYnNEZzAwMThmRXpvN2RTYlhIN05RaDhxU2c0?=
 =?utf-8?B?bSsySkZpQ2s0MlRKUDRtUUNNKzZmYzB6ZEpFVzRZaHJ1MmRtMnhBd1VzT3ZM?=
 =?utf-8?B?RW9leklaUzYrZEgySzZ3Wkl4MDVrVlJqTmxHTk5QVjJFZnVyZW5lMExORHVk?=
 =?utf-8?B?QVhrTnYrbEYwQ2tFL0svbWpBajlqaDl3dTdtdll4dEFZbnNUTmRaYWdFdjli?=
 =?utf-8?B?UjI3Y0ZGMmoyZzl4dEdhNE9rUm85Z0cwYkYzdTQxU05yWFVpaUZnZzgzN1NI?=
 =?utf-8?B?Q2hmVDB0TTJGMjlkV0lPSG0vTjQ5bjlIY0wxRExnb3JKa1BReGtwS2pVbGo3?=
 =?utf-8?B?Vmxjb0k2emo2cXcxYUoySE1WUXlLVnVXdnZDQ3oxdW1lSHVNRExYWXJkUlJB?=
 =?utf-8?B?Zk1lWG1iT1ppS2lIU2VVU2dJOUU3UWV0OEhRRnd3UVR4ZTQwb2FxenVPN1pV?=
 =?utf-8?B?bmc3Z2FvMGJiQ2dCUkdMTzQySlBub3RXQkhaUHJWclJBZXQxZW5wUTF3UVJM?=
 =?utf-8?B?NHcrM3BqU29kTjlYQ0pvZGQxNnZ2aUx2Y2hBc3pMd0huWkpvdFVRT2FXam9V?=
 =?utf-8?B?UDdhTWFrSnd0S1hTcDhCelpWbVRINGJWY2JxWU5FVnpmNGtzbjBQVkhHVXZC?=
 =?utf-8?B?RWhSOHY2eHVjU2ZwaEpSeUV4RnJwVnBncEswTUNWTmlnNG9oL3YyWkpwQVJm?=
 =?utf-8?B?QjVkbE56eTFqbXJ1c2VjdU9ySk5tM1lyUk8rS1BJaEo4QkJhQ05UQXlNZFl6?=
 =?utf-8?B?WHVTNEIvcC81eVhnTnJEeVk1S1lhMW1VbW9GMGh1a2krbWFBdmRHb2Rxb1lp?=
 =?utf-8?B?QmJGQVVvOVJnUnkrZFp2eEx1L3VtRytwZWVKbXA3WCtDSTMzY3NxeHpnVUFB?=
 =?utf-8?B?Q1lEWVdqeUhPUmlMM0lCSUlibml5R1F3ekdjcURhdCtKK2x3UER3UjBIU3hs?=
 =?utf-8?B?OVM3RXVOQnJMa3h3M0p6eTVWRE85MzdjTzd5VnY3SzV1L056Q05JQnFXNmRl?=
 =?utf-8?B?WVZ2ekxLdjY3Q3pGbjlWZnpzYXJJWW1VZmptQ2dIZzdXVHhxeVlBdE9GYTZt?=
 =?utf-8?B?N1NTM3lDQVhQMjFZaHB1cFozWkJPZFcyR1NYMklvaGgyZlh5bUlMS1JsanBN?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	+/0VEBGI8t9hCJ8vsizJ/R1ljZhjKt7FmGQrgM3sUOORLXE63n1CdeaCkaN8g5kfkk0eQ9oPuJr04Y/MuNSKeNjw4G6Xaf/x8qPH/xngiXBqw6fehgpZnW9kTd7euzCcCgOAFIvFMZPkDVTPi5vtTd+Z64GAndCkaTMV4c2JoIpno0lc56Z5R92TAx/kczdAy9t1pPCP91dKxYHsGu418QzFPjSmdogtzhhCDHKBHb/la4+PP5ksWl/bW3dg0oibEix+/GsJmCZQNMhguGXgIhBcsL5kKH7uIzs/MSaQGKD91nnXHAEfJcaRyJ8fASG7nMH8oZldNq5KFpDkrQMPkR2okbntGWPcAvhwfoeL7zNu/Iy72om52UKWxLhYvY/wU5DqhVo9+2EBsYB5JQje/EcNle5ZNlPlRiUjfvWB1StHtUf+vrCmxypcSKH/xLvz0y6h6SAID6XQIy8m2OtmS6vN8W7ZTZgLT/jF/hLrfRg50pHyIs0KscERYi2dzhY5HH1oXV7jYEj1B50UGoBtRZ/sJNjoiWVyToTiNb+jwX5HkXaa44chWfAf+ucwaue0cE8BxYDpcMjsQWw5UbIZWOpcotIeNc2e8IVAdsZZ2Cg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd10d71-ac74-497b-f1aa-08dc979baa08
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 17:56:40.9421
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8NNoXXZcMRqonSrLFmnoLonmDJD9+vhr3P3JgR4naYnK+LPJd/xJ9jqQ4KnqJRAiBVXkMJeyidNZ/o4wAFnADzyDseFHv85RWEvJ9WUxmxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB7962
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-28_13,2024-06-28_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 suspectscore=0
 phishscore=0 adultscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2406280133
X-Proofpoint-GUID: FI-jLbS3PRzQ6ikpiP9_UY-VyDYamjbW
X-Proofpoint-ORIG-GUID: FI-jLbS3PRzQ6ikpiP9_UY-VyDYamjbW
Subject: [oss-security] Kerberos 1.21.3 fixes vulnerabilities in GSS message token handling

https://mailman.mit.edu/pipermail/kerberos-announce/2024q2/000207.html and
https://web.mit.edu/kerberos/www/krb5-1.21/ have announced the release on
Wed. June 26 of Kerberos 1.21.3 with these changes:

> * Fix vulnerabilities in GSS message token handling [CVE-2024-37370,
>   CVE-2024-37371].
> 
> * Fix a potential bad pointer free in krb5_cccol_have_contents().
> 
> * Fix a memory leak in the macOS ccache type.

https://krbdev.mit.edu/rt/Ticket/Display.html?id=9128 and
https://github.com/krb5/krb5/commit/b0a2f8a5365f2eec3e27d78907de9f9d2c80505a
give this info for the issues assigned CVEs:

> In gss_krb5int_unseal_token_v3() and gss_krb5int_unseal_v3_iov(),
> verify the Extra Count field of CFX wrap tokens against the encrypted
> header.  Reported by Jacob Champion.
> 
> In gss_krb5int_unseal_token_v3(), check for a decrypted plaintext
> length too short to contain the encrypted header and extra count
> bytes.  Reported by Jacob Champion.
> 
> In kg_unseal_iov_token(), separately track the header IOV length and
> complete token length when parsing the token's ASN.1 wrapper.  This
> fix contains modified versions of functions from k5-der.h and
> util_token.c; this duplication will be cleaned up in a future commit.
> 
> CVE-2024-37370:
> 
> In MIT krb5 release 1.3 and later, an attacker can modify the
> plaintext Extra Count field of a confidential GSS krb5 wrap token,
> causing the unwrapped token to appear truncated to the application.
> 
> CVE-2024-37371:
> 
> In MIT krb5 release 1.3 and later, an attacker can cause invalid
> memory reads by sending message tokens with invalid length fields.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
