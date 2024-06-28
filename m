Received: (qmail 32285 invoked by uid 550); 28 Jun 2024 17:31:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32246 invoked from network); 28 Jun 2024 17:31:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:message-id:date:subject:references:from:to
	:in-reply-to:mime-version; s=corp-2023-11-20; bh=9M/+memxLvBN6Ml
	nG6xAFKfNG1T3glnYNcQWi+uyXe4=; b=XxT11nQFBIgz4OSERCVNHsx7D/SLFMU
	p5cz07JEpB5uMH5WtAKjphKsFQy3dPQmZ8+siR8qx/hsW2ZMfGAJ10rNpJOWUq88
	UJgZ95uyRi/zZqy3vht0Ok98OXXqb/vQaioi6B2JA7OgIxZTeOoFmIDMkiKRTHxG
	664sT1OPxxGzsaUj4LcbXAEtwqUL7yx4MCbhKORA+I1+tIhmBnygCA50umjY+ppx
	RzAnw6SJNMBQ2ByCjyZceL9NmXFAMW9q/Ga3fjmZ93gdL69WWgDbkIDz3YV8kBEs
	R5P4ju11nXeCyv0PasnJgkEHg+HQDqPa2hvyKTPaQUAnRPJQA3RdmYQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LlNHnQKAfR3Gpn7jTNvUUCi3L66bp9WVgYGO7cmgySMX3dY7TpFUUqPGcwFjUjjBJhsLeC1K5P/D7+tQEMrGBQSWUQMuFse8UuX4FZcFjdgos05pDf6xquoVQAkwHdOxXLgqF1bK6kc3jr9UKtswWFGlyvtHhFdvIX9XB7fTLYKiyMqFltjP0Q9FjPpRzObrHkaP0L0Uu/w6q6uhkrtruW1SdG7BfNu6WxE/wwtIRgpn3LGccFEC4MsLfUUFcyB+f2c66bw08oidPiRLvpVoRWPprqX7eNScUCpxe2VTNQ7wkVcxW8tb0C40L5PZ8bInLtC5BacbcJbU/nCzdgWtLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9M/+memxLvBN6MlnG6xAFKfNG1T3glnYNcQWi+uyXe4=;
 b=ZOrn+qrhxxky9VjdM9C2cluenpS+0yOh0lE6m68ohhJEjdx7E6gTpegU7TbNrhCNHkBag6EEkbQDeHLjiLrR9Y5GG7JG/4c5Ao9zPh0VCo69c5z7KWNcOe4kBZABKoEHUj71U0xVeIWhvdR3gib9fbOJnk5TyXa5OKMkotr+OhvF2pgmPVW3BH4DdNxXfhCBSmlO5q+BB8grJsT/tLn5/MI1ktj3ZqPdoslKkVVZe99f478Bz3us2so8JRmGitBu41aMCYsD6hS6TMbF2G4dnfnrcVQl15a3TKMmMIB/EzTr8Pswc1ilY9MCV6DNO/6PiL0zLR9OuYcSNUWBUP2IUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9M/+memxLvBN6MlnG6xAFKfNG1T3glnYNcQWi+uyXe4=;
 b=J+vrcB+FhTeIFSz56T/cNcx7nf/IIPMVTBRcenkWZAmV/lnpttzuFGwRQCh33BciI+qTa4lh/qeNJLrPf/HNrHu0MTmd3r42U3mYnnuQcvlQ/6Uhkkh0xajLm4wDXp2ZMPEe3Up3PRxm37y7zGmkwHDRZHmVkDB8gK7MO0xSSBI=
Content-Type: multipart/mixed; boundary="------------jfMn3R7pApw00LeH60qx0dq5"
Message-ID: <647e3fc7-f210-48b1-a9a4-48cf330dac54@oracle.com>
Date: Fri, 28 Jun 2024 10:31:31 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPSo0q9gg3Wv8-SdB_YJbj+yDS77A5JYvNeY9ay-c3UCuA@mail.gmail.com>
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
In-Reply-To: <CAADqWPSo0q9gg3Wv8-SdB_YJbj+yDS77A5JYvNeY9ay-c3UCuA@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPSo0q9gg3Wv8-SdB_YJbj+yDS77A5JYvNeY9ay-c3UCuA@mail.gmail.com>
X-ClientProxiedBy: BYAPR05CA0088.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::29) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH3PR10MB6882:EE_
X-MS-Office365-Filtering-Correlation-Id: 54ee8078-9e02-4aa3-a344-08dc9798280c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ajdpK2QyTXFqaTQ4c2RFWkU1RE5mWFhJKzQ3a0FKNEF4c3hPTWVKMHZYZVlj?=
 =?utf-8?B?enMybWJidndVcE84RkRTZVBTUFlJaWFCdmJESlFqZTAxMFJLQUpOdE5Na2NS?=
 =?utf-8?B?V1hmSXNIYWVOcytnWG1kRVhVUU9TeFM0bnFiM0xaZW1jS3pnQXNmYjRndk5M?=
 =?utf-8?B?NXViUlFLL3p0YUpVcm1tR1M3aWFhZG1DUUJMZTVTR3l5aWFHcml2YTZEWTZK?=
 =?utf-8?B?SSt5bGtWaFIzODhFc1hPamxzNDlCRkVTMGtmTytrWElQYzA3UlNHQjlEYkJT?=
 =?utf-8?B?Y3JKczc3WTVCKzhoTmtyU3doUGdZS1lnQTBxL2xmemwvV3l3REJBbDRMYlRi?=
 =?utf-8?B?MExoMndmRkVncWtNVFIwaGs5RGRDUzlncS94T1FNS0lKaXBvYlBYd3dqN0Nu?=
 =?utf-8?B?WjRBMFVISy80QUdWYm5KVnk1NGtvQXhuY2JKT2t3Z2lwMitwdjFQOSt5bXln?=
 =?utf-8?B?em55V1NnL2hwa29mck9GWDZ4YXl6Z1FRZGJXMFFyVXJhT0RMUW9kSjQzdDRx?=
 =?utf-8?B?RmJ6T0RiQUpiUWhxd1E5MHhVNUNYUEFZR24wWHlJVUN6QTQzQnpwcWs3dUNK?=
 =?utf-8?B?c3lUSThOc3FJckhodi9UWVhxTG9STGtlSlJDcXZVZjBrS2FxMFVSZUE2cHNF?=
 =?utf-8?B?aHhOb2NyWlpvUmNDL29aQkEzTUdva2Q2NXhvSldVdEhGdkdFeTJzQWpYMWhL?=
 =?utf-8?B?d1psbklEdWpkQXBhYUk5bjVIT2Y4TW45Y2F1YkFpNDBDUFZSd24vV2ZPbzdi?=
 =?utf-8?B?RDl2ai9nVE5YT0VNdlFmWTBndFdFdTI0TWQ3Tk5DOXY1YXFZb3RIQ0JQVFJR?=
 =?utf-8?B?MGcvTjB1YVo5UHgyTm1KSXJYaS9uc0JHWjJNcjJXSGpRQlQ5TUs2WWJjOGFv?=
 =?utf-8?B?UFZSSm92ODE0TTM4dCtITDU1L0xjaWhzUldqY2E1endIUE5RN1ZVUFRKemt4?=
 =?utf-8?B?Tk9JQnpyblpYbHhBV0tIenFrQ1pqMWh1V1NkWjZrUC8wQTVIeGFDR0hzakxo?=
 =?utf-8?B?TVFtaWlMTi8zcU9lSVpFNVZDTkEydWRlVmUzVHdWQVBqelNLU1cvMWxuSVRW?=
 =?utf-8?B?Wkk5aUs3bWZLR1cvZHAvL09QQno1cWFrSkRqem9aYTF4b3BpTTVKY0FnaVdp?=
 =?utf-8?B?TEVWLzN0RFRXRm9HMDVDVGtVbE8rWE5Rb1ZOSTE1c3pMOFZKVXJxMmpYR1Iz?=
 =?utf-8?B?RzdiVVo4ZUcxdm5teUFhSVhXbXpGUnFpUHM5aG0xRnF5Yjk3V0lQR0pRWkVZ?=
 =?utf-8?B?bXRwU2lGcXBvM2p0TlNNS1plS2JPQ1RMMnZoaHpGelE2TWxDamxQQytML1Zy?=
 =?utf-8?B?enZEVmtiejY5NE9NSFg5WnNiSXBOem1FUHU0ZkRsQnprNjhNU25LYmpadGRl?=
 =?utf-8?B?WXF5TEVYRVNQSWN0WDMxcG1hRHhBcjcxdE9oSkM1M0sxcW5GR0J5L1FFYWJD?=
 =?utf-8?B?RW4xVWIxZnI3b2NtUWRtMHNnU0lJeWlDYm5xYk1RVDNkV09QKysrbEFCRDI4?=
 =?utf-8?B?Uy84M3g3ZktSUU5IUEliaVF1aURDdUcwVk9hd3pwbEdvOXVhRUxydXhWbUxZ?=
 =?utf-8?B?OXdPb3BxYUVPVTZvU294eGF2SGFBdzJZbU9mK0F1WWdOMTdtTXRuMkNwb0Vm?=
 =?utf-8?B?V1lFTTY4TTFCR05FRTc4RXMzam9QMjB6em9pUFRJZmhwK2dISGJZZ2JaVkVP?=
 =?utf-8?B?TjZnQmFDd294SHAwTnNIUURGSmJ6ak5ZZzcvSlBNdU9GWVk3SDRiZVUvYzhi?=
 =?utf-8?Q?8tJ4ljrVOq/02isNbw=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RlJkKyt4cm1HMHNqcHRyVC9Ga3g2R0s5MDUwUzJWbE5DYWt4Z3lCRzBBVGhq?=
 =?utf-8?B?VUZyY0hrNncrWTIrc0ljSmkwcTE2Y3RJaU9pMVJFa2RKQmVRSVFMUXcxcitH?=
 =?utf-8?B?cHRxVDdZbjlPOHBHVXJub3liUGl1WDBEd3prTHNQRVFqSHV5MllPWHhaMnlU?=
 =?utf-8?B?TEVQV05JM0NJNzl1eU5UaEVDWHF3WlZhWEJwdThjbG95WGp6QWU2aGdoOFdR?=
 =?utf-8?B?K0psdTI2WEMzQXZSeWU2ZjJjTHY5bVR4MGFCbndRM21QTG9paFZWYk1ZL2RJ?=
 =?utf-8?B?RWVrRXVIemVlM3VSVmxzaDBWWmh5UElRaldidDR0REJJb3R5TS90OEVjbGxq?=
 =?utf-8?B?dEFiQWovc0xJTjlENlo0U2NlcG1MakNwdGp5bnl5WGlXZXJzRGNVeUhwRmxK?=
 =?utf-8?B?QTJuOGhhSjJ0aERxNTZGN3FGZXNHRDhubUM1V0dpQ0lPM0w5a0dEYnpoS2JU?=
 =?utf-8?B?WDg3WFM0TVhmblRyWlVyVGEzeml1VG80Yk5lMHY1eHp2SnkwcU1XWHNjdDlO?=
 =?utf-8?B?ZENZNFkzWkJPMitiaUNjeXhCcmlrZ2VJNDZPQURIZkk3eHA2b2s2SC94Q2NR?=
 =?utf-8?B?TmlDQ1BnNDlNZ2E2QlhDSVpOeHQ4dmNQRTd4dFkzWFRjV0RUak51OU8xZko0?=
 =?utf-8?B?R3c3d3hhREFJRkZyY2JQVE9pTkhkY2lMc2xSZ2JoQStSVkM3NURRNkQ3Zm1L?=
 =?utf-8?B?dk4xZXNTd2hZVzhmMm1TNnNvVmhBcWZBSTlYWFcrZzFLKzljVlBNK05kNzJC?=
 =?utf-8?B?SVo0RG1tNEdOZGF4c29NeTZYOUFybjdBNHdiaTJvZWNNS0V6QnB5U243QnRV?=
 =?utf-8?B?WllQNTR4MjNDa000ZVZuQ2FwS0lwSmtSTG54aFVoQVhsM0x5d2dRb3RCYWZ6?=
 =?utf-8?B?ZjFxNnBETE5xYUtmemRqalA4SXNQelNZTk9qdWtQWnZ3bTRmLzZMZmVacTlY?=
 =?utf-8?B?NWYyUHczckVOMEE0SktJRHcvQkJFejg1Y3ZSQmVoRWlpMDF3QmR6SVh1Vk05?=
 =?utf-8?B?ZHRmRW51SXJvZXovS01rT2o5WHErLzRscmNRdGJ0QjRlSmNsdWlOdHFvY2RF?=
 =?utf-8?B?ajNpMkVTVmlreFY4TW81OUMxazE2dTdQNWZ5dGh0dGdpL3Y5Rm5PTUdvbGpk?=
 =?utf-8?B?ekF0SDlKMUVVVzdaeUhuRFRlaUxyN0RXZWxnemRrRXhOR1hsbjVZTkRHTDZr?=
 =?utf-8?B?cGh4L3pZeFpmeEpoNFFLc2ZnUHNDaWlhM2Z0T01ub2xGa1Q1UVFkZ3ZGWkhB?=
 =?utf-8?B?UUt0Nk95TTcxb0dsdDFaVjR2Sk1mV0t2M0VaczZpVloyemh2MmNyckpUdVph?=
 =?utf-8?B?N0M0Y014MDZ4L3NhVGlOdWpZczJKRFluZzY2aEdtOW1VQkxhL2xqa0RDVDNT?=
 =?utf-8?B?UE1RYUU0YVNQOGM1bStiVDBqRW1IZnVHQkZ1L0xnNnpjb3J2dWhVRkJzeUVZ?=
 =?utf-8?B?Mm5YTDRneTNTeVBWS3pMbVpjald1VVFKR2IrSE9ZWjRyRWVQRXBrV3NKVytS?=
 =?utf-8?B?TXRJR3JEMlhyMHlyUHpNWjBVcHF0TTYzWU5XZkRWU2c5ZFhhazJYbEYrQ00w?=
 =?utf-8?B?U2JhK0RpSld4anp4cjBWcnBFdHhkSXV1UGlxZHlncU5WYWZkUTdnUEJHT2tR?=
 =?utf-8?B?Z2dGNVU1MjhGcUhpaVBPTVkrU25VZlNhbE9TN2tscDV2U25UbGUrSXlmSHox?=
 =?utf-8?B?ZDl0SWF4R1M2d0FpbW5FdHRDdGhObFpESDZ5UHlTQmJlaTRLeXMySGJyYUVV?=
 =?utf-8?B?OXkyRlc1d1hwK0NRUjQ4Sy9zRUwvWTlib3FUenJqR0JXeWszL0dVaUlhNG1O?=
 =?utf-8?B?TlBjLzA1WHN1NnBPNEdUMGQ4ZG5CR0JocmVVdWx4RVJ1bHYyQjhDQ2d6bTZK?=
 =?utf-8?B?dDlhY05rRU9US0pFM0oxdmpFcUlhVS9TTjJaUVZKNk05cllOM21QVEVwdUU5?=
 =?utf-8?B?aVlzL2NEVEpCSzhtWjVPY0Z4VU9MeTgwQk5yZGhKc1JZUko5VDhxS2ZoWDZa?=
 =?utf-8?B?MlBKSkpPS2pHb3JxWG9EMVRrNm52QnNrc2hUOC8vOW8zcFJWVkEvN0VMVFBM?=
 =?utf-8?B?bGlRM2VBNkk1ejQ1V2M4czFONUJWdHBac3VSOVFBV1pwQlo4MWZOSUpDOHZM?=
 =?utf-8?B?NEEzTUVwaEEzVWNqMC9EdVlJUE1vMjJrM3NqYlptTXk5a1ZBenhCRW5kUnY4?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	G2n/1N14frgV1uI0Aprz7+n1lH0B3h5tyP9K3US/0Ujx8y5YT8xQ/X2Vh+YHzJXD0oEQoSIzDXFAOV6No60JJB21HKmGBPzawn/BAmdPjg1iO8ueBWOL8xs6j/pnxfOjMv2lCgKI46THbPFD44zU+bBYSxjU+0+TAuyLk91DdlYdxinYlPL9Jx3OtnPXIMBn+f9XqGex7OsEqaUiApNvy8k01vwWVuXE48QtBOtxo94kFNDVLIOy6kMvs+68LlZlPTlPz941f+PXeVGeOM7KBaAZFozCvAazmpatBRL48R/Lt1tbB0rNgutmXM9ruGGFPwkjzUGSk3CtPpUEFIGtkdiMTmfHe4PbcYqD1oNIlDf5/0L4ofMo32F4D9zYdHsvTO8jpousVKk+hlklSOFyonvqDCfWe364FGtF2M5czSqlsWdsp4vIzBA/RnJuQr4svMPSiAhsiki5ga67We/404YLzU6td3XildcvJbuOcpXHKNTc34RJaMGM1fQLBm1kccRw31bcGPuXbGtLw3Zf8BcJt5WVZyF51ln62SRqeTrlSjyH+/zWEF8D+CvB5xCfLMnvgb2xrj8gijuPKf/oFPDyfdGKxacPx4lb9bsWDmk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54ee8078-9e02-4aa3-a344-08dc9798280c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 17:31:34.5071
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nSH4SQjG8pxrIuH91lZlc7+8FzE/UMWEr48aSVbrWH3GHFDUl5ggOOv9amyA+53uiIruhqiaLvzsGgeh8UjQ6KV5LUhp3n8qsivucymZoGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6882
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-28_12,2024-06-28_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2406180000 definitions=main-2406280130
X-Proofpoint-GUID: D4U4aMMlD2VyniYYtfMfTq54DyG3cVLR
X-Proofpoint-ORIG-GUID: D4U4aMMlD2VyniYYtfMfTq54DyG3cVLR
Subject: [oss-security] Fwd: [Security-announce][CVE-2024-5642] Buffer over-read in
 SSLContext.set_npn_protocols() for Python 3.9 and earlier

--------------jfMn3R7pApw00LeH60qx0dq5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Note that in versions of Python that still had NPN support, whether NPN support
is built depends on which SSL library/version you build with:
https://github.com/python/cpython/blob/3.9/Modules/_ssl.c#L188-L202


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2024-5642] Buffer over-read in 
SSLContext.set_npn_protocols() for Python 3.9 and earlier
Date: 	Thu, 27 Jun 2024 16:09:13 -0500
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a buffer over-read defect in CPython 3.9 and earlier due to not 
excluding an invalid value for OpenSSL's NPN APIs.

This vulnerability is of severity *LOW*.

CPython doesn't disallow configuring an empty list ("[]") for 
SSLContext.set_npn_protocols() which is an invalid value for the underlying 
OpenSSL API. This results in a buffer over-read when NPN is used (see 
CVE-2024-5535 for OpenSSL). This vulnerability is of low severity due to NPN 
being not widely used and specifying an empty list likely being uncommon 
in-practice (typically a protocol name would be configured).

Suggested mitigation is one of the following:

* Upgrade to Python 3.10 or later where NPN isn't supported
* Avoid using NPN via SSLContext.set_npn_protocols()
* Avoid providing an empty list as a parameter to SSLContext.set_npn_protocols()
--------------jfMn3R7pApw00LeH60qx0dq5
Content-Type: text/plain; charset=UTF-8; name="Attached Message Part"
Content-Disposition: attachment; filename="Attached Message Part"
Content-Transfer-Encoding: base64

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU2VjdXJpdHktYW5ub3VuY2UgbWFpbGluZyBsaXN0IC0tIHNlY3VyaXR5
LWFubm91bmNlQHB5dGhvbi5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBzZWN1cml0eS1hbm5vdW5jZS1sZWF2ZUBweXRob24ub3JnCmh0
dHBzOi8vbWFpbC5weXRob24ub3JnL21haWxtYW4zL2xpc3RzL3NlY3VyaXR5
LWFubm91bmNlLnB5dGhvbi5vcmcvCk1lbWJlciBhZGRyZXNzOiBhbGFuLmNv
b3BlcnNtaXRoQG9yYWNsZS5jb20KCg==

--------------jfMn3R7pApw00LeH60qx0dq5--
