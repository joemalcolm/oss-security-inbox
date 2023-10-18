Received: (qmail 9486 invoked by uid 550); 18 Oct 2023 23:11:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9468 invoked from network); 18 Oct 2023 23:11:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=3eX869o2+iUbC89J66gPpSLDvvfMr6kjscz1J/5bxAw=;
 b=orkIF0RZH+4AP55nxa5UEIcSz0Shf5alivxHCDQlRQ1jy3R6dJ+ZNxOIdbj46RVmP+xv
 RSEMAhnkeTkgmwptCRvQpXwyauLB2glF+I+TZDP4YMFgij6Ls0PRJ5i4458xScuno20I
 tHt4cHtplObAdcKkh17brUReluKUFnRmOg049MyNILcxGNCkZuiFFO0DkzD4KDywT87G
 8ZeAiBqXJpPY6Ura5gJHXQaE3oXOi5qw11kzXOQeUHqj6FXMLs4kfxw/bvFb9L9JZG7E
 ssHyKhA4gA9gp1zMxYC/o+ytXMpqmyMNTq7WTYQuQ/fVVWaIukg2qTd+9IBCkZ4J7sig cg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S41ju0GTfhhUJomSs+kCFqjP2HyBg3TU7P3iw/u6F3XeMhT2+YLPY1D3rWF8/9ASlGpcv7Va7iz0u2BBS+K+qLHNN3RkpLvnQrM6QIeF6PMXwg9UTxG1SRFjp95Gs6No7Q0VCRovAgZupHDg4EbncvC7Ev6xnxpMbe35++/cfVP+8cJEjxfsEfEk5PtzBFa71ASrFEjANEfv14q8MaWzA6FUJCTjkQEWEVcrRLuCER9MKzZAy3BKxBiTQObfu6QkRAo/UdOAfSgogc4WyKN5cK/ZTG5QJNGAwptZTYE4RcF03ju15A1ozlTrJ6ui4aVzhQ/1RGuMxMHoFUVcpgbW9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3eX869o2+iUbC89J66gPpSLDvvfMr6kjscz1J/5bxAw=;
 b=ImLvb/Wu3Pz2Oy3nwknUI6emvGHdI7TR8JlsJ3YouAoJUxtsHg5xNq1K25gqM63xeUTgxj4LLbdhFAgedyzJgtktabFAAdE8L1VuHdJ2NlOJmZcD3nzYlMRFzzcqB5oYnE/N05TWMQaGxbS6pvHXB50mC4AbtacDDi4EKrcCA6SDKIEGxuQ1cEyxBioM0/w1FE+/A+OdMjX/D904Hfo+d6Zl6cpo/stA/jRLkzX/xHN70dDm0mIi6Lp6qDdMX5sse4eQFS/uPIjKqGYqWvj5jpETXu0jYPhfCq6FTS/swYnEHcX35UMP0ZSEBe4XOP4kmEUai+KHP3dPQtJzP/Efsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3eX869o2+iUbC89J66gPpSLDvvfMr6kjscz1J/5bxAw=;
 b=xMyZ3QnC7MFDI7CN3/LY6YqXWXCCZz1FxOTJN+qJ72UdpmGhBis54BmvfhEcp2qIvvSzvX9cAt3EmKqcHRWONWOKX0jHux8I+fduZkrQ4jefjc4diRbE1Wlf9OgJbT+040em2mMsaOTyzfMzu51tDpd3ODCenGpDFRqRMRGW4gw=
Message-ID: <f6d49f57-22d4-48d4-9142-497f9c89ba8d@oracle.com>
Date: Wed, 18 Oct 2023 16:10:50 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <51049a59-5e4b-4def-895f-97b9c2b92b24@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
In-Reply-To: <51049a59-5e4b-4def-895f-97b9c2b92b24@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0108.namprd05.prod.outlook.com
 (2603:10b6:a03:334::23) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|PH0PR10MB6983:EE_
X-MS-Office365-Filtering-Correlation-Id: 78261921-f4bd-4230-22f6-08dbd02f7acf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DI36qp+7l+O6Hjw9ggQk7dBSu52SG85Gfzj1dIoQ8fWprGJuilOiyl4d+bubClHmiEVQZQC4LcbACnaEzN6pUDzQ65QzHePEFuVURSiIcp9F/oun+5bJr4ecYwgBr9Xs+w2wIyABr89lht6EYKNJBt3c/jaTJobASzvdbtNBBGvbziatvx8OIm5aRu5MNX/iFb61Ck9TwOvnJrpurQmW5qlbMn5XA6aZ+N5OnycZYiSSStlvc6wJ0FUZtIqHDoppl1+tcPi29b4AcSHjFdXoYLpziM+dWF6CNhdLzJUXQ7C5vhlPcKtKfABx+9b3lKGaJWDb+J4dEsTJ/Da40iatw9ScD2SLEijWWDG1DwaRat5Pkifk6CjpuJWXpR/rG1JfpnRJmpXaONf4uDre80fSnHnni4Cp77NY6lmRkLXch0zmyJmf7RdfEgwwzEEM80mh3xAnjRkEG6luFt731UecwDlyg05TB9UNlcOflnhZ+t3gGSOKKMWwpel63XXFnVubC9TtmvJ82qJaq62ChVs3gxeGphp7MJRp0ZrvlRJbSNgcfCSfDRz556BpPV8droilsAjFFRvBKMhbZLmx2HDIPJZkshTYnM7KTynhlUTY2ZqD4jqdx6FB80ijh4kHZT+uMmyR3idgqUVSwdoK3jOY6uqRDJsfd0wPIp1FmZ7JLXg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(396003)(376002)(136003)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(31686004)(26005)(38100700002)(83380400001)(44832011)(8936002)(66946007)(41300700001)(66476007)(316002)(5660300002)(8676002)(6916009)(2906002)(66556008)(31696002)(6486002)(966005)(15650500001)(6506007)(53546011)(6666004)(478600001)(86362001)(6512007)(36756003)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RkswSU5yNnp4UFZLT0g3bzlJbnB0THpVQTJ6MzdvMW5ZRGVmNksyUE5GM3Zk?=
 =?utf-8?B?cy9hK21GM3hPdjZaRDMzNFdhY2JLQ1JIQ09DeGpBRVh2eWx3MlpaQmVxS0NJ?=
 =?utf-8?B?Z1ozeXpxVkFTZHVsQzJXNDB3QmJXRGtpNlFXUnljZ3d2NlpCODZmamhpQmdo?=
 =?utf-8?B?cUJETFd1dUppZ2pQR1hDejNrZEFUVGlZZUw1bkdCLzZBby9SenRLRGZSWDUx?=
 =?utf-8?B?amtyQnhEZmV5bytqdjROQms4NnErbmxUZW5FWTFqWmE0VFV1SkxFeDRxNUQw?=
 =?utf-8?B?ZmZyd25LZE9kVGM1Y0haSldyWk9MbW4wZG5rNE5saDk0L2ltNDdDbjBLQWlv?=
 =?utf-8?B?djZ5dXJHQVRkQ09oOGxaem83MFo3NlBnd0FrTTR5YUV1QmdMcmJPMmV1L3hZ?=
 =?utf-8?B?WEJQWjNuTTQxSUJXcExKTjViT3FEYnRhRUcrMkZVUWFBZExDclU0UG1CZTM0?=
 =?utf-8?B?dk9NWjlvMmhEZjFaRXU3c3Z2eDVEd0x2Wkk0WExaTEFWMFo3RzA2bjA5eXMz?=
 =?utf-8?B?Nk9lL1UyVVV3NEZKM0RWUFhPTkZMR0pXU0RDM0J0eHdUczFJem1xWlF0SnJr?=
 =?utf-8?B?cWRZemMvUHFMWnlJSFJYVU1VUXBxQ1QxR0o5b3h5RzBjTTNPRkR2SU56dWxZ?=
 =?utf-8?B?dW1KOTNDUHFucERLSVNkcklGUHhNS1YyM3VvTEFPeTJSdWV2bHdvZjUzNXZU?=
 =?utf-8?B?RGFCeGdpSzZTOTc5aHNYUWNxYVNHUENsNUNERU9GQ05Iem5uSWd6dXdPQWNu?=
 =?utf-8?B?MEF0VlJ4UnJzaGUrZzUzRHNWTGVzYi9IbGJweTNFUmUxZytjYXY4TWdnbjZj?=
 =?utf-8?B?d3lpeTBTSmhtdjlYaE9SVzZxY1lmVmZtYmpLKzB6cmF2bm1US2pVVU41T0V4?=
 =?utf-8?B?QVQzNStnUTZBRFdiQm55eU5HZUxaYTUvSHh2MmpVdWdTSThaVzR2N1ZhSUlE?=
 =?utf-8?B?UHhFV0hIalpnOHlVK0hEZG5wYVpHYWMvVHBhaUhlR2NwSEFtWEhEUS82WGVH?=
 =?utf-8?B?YXpFdzUveWl4NTJIQVNyeTlQOFh6ZWN1eVoreGtJL3JWcXhDRkJOeWdTM0s0?=
 =?utf-8?B?K29tNDJobG1tckpuVUtGWUdVR1B4bHRoZSs0ZmxLVjlnMU1hMFhnZktDQ3Nh?=
 =?utf-8?B?SnU2MVRtUDQ2Y2I2TnFYeGpJY3UvN3gvd2lPbGZjZDgwWC9wZ1NlUFFIWmlR?=
 =?utf-8?B?NUpHVWYzR0tQNTVSSnFQT0FyUCs0djEvejRCVE9pSjc2TnhHT0o2TWM5cEJq?=
 =?utf-8?B?OHB6YzdiSitjWkV5YmRzWHl6R2lhLysydW9lWjVYMDFLbUZWRE9FZkxVZElM?=
 =?utf-8?B?OFFsQ3dHTDJJc1VTL3JSRUlxMFZYUkNpclVpeExYQ1ZreGtEWExwelZVMkZE?=
 =?utf-8?B?UGVDekdsR0E0SVFRMWM1RGx1V0xnbVAwNUtJTDF2WXc3NFc5M2lUTTFZWFFu?=
 =?utf-8?B?WFFJdEc0R0piWE9YZFJmUEk0MnE3cjM2RjhxQllXMGNNRUo3U1FFKzdHSzN1?=
 =?utf-8?B?bllIQlorc2lYeE4rbVdTTWZ5THNGZ2k1M0ZuSlF5cUE5dWpIZGdub3Z4ei8r?=
 =?utf-8?B?dmptWEI0UGF4YU5xdzJVUXRpdjQzRnpqa2tTSVRSTDFxY0swam1hRGZCMThE?=
 =?utf-8?B?SnN0UkxKSHZaVXowVXdjVHBoczhoZ2ZXMWZqUkpwQjJxQ0UxQnpOcUFoZyta?=
 =?utf-8?B?UnZHcmJmQnJBVnlieVR3dXNpZmZ4Z0ZYcFhTWE94bFBFclAyUk9zSmp3V0Ev?=
 =?utf-8?B?dGxGM0dKYUVVWVMvUDd3eGlsaE1weXVpZGhlUDlPMHp1TjJMNlBWSkdXd3VI?=
 =?utf-8?B?UTh5bzA3QWl3SEZQVUNzdk4wa2kxODBKN0tVWnMzQ1EwTG5Lc2ZKOUlqQW52?=
 =?utf-8?B?U2s2cG9WbGdSQmhPekpWUGR2UVNBSFZLazlOVlN6a0JqTlpxLzd4TGNuZitw?=
 =?utf-8?B?OFJDOG1HUkFCc0RjeGJ3dTlwVnBhY1ZMSFd6Ykorb253Q0x6VXN0a0sxSXE0?=
 =?utf-8?B?ZlYxOXR2UzNTNFdPamFHZzIzMnB5UVlENFc5Q3M3ZFBJNmJiU21kRkRxOHU5?=
 =?utf-8?B?eG5PdExDSUhNZzJIbTcyS0NkaDdBTjRYcmx2SWJjZ0g5M01IdEkzdEUzbCtV?=
 =?utf-8?B?Y3dEZnNUaTZoVTlmOEJOMDE5OERUbi9GT0xaTzUzVEN3UmlJcnI1VVlBVUg3?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	nW4icMF9NuacYzRuSZf9NRg6vmyM6lEh0qvr+moqpCb6S9ZlZDq636cVzute24HJ81uzKeSTUeHF1wQB0SXbzactWYkHDSNlKUMoVXPhRxi8sNcu+7Sw7w5OITAMdKWc4mQJG6r0RSmProvkIbGq8SnbbVsdhIN3gTGfKZ921okCjPFZHqOU1sA4UYSlhtTDDoWG+AqwKb5KxxLe3q4yJLFrG7paWcgQoNwoK3bYAkF8659QBzKTn8BXO5QfmcsmjKstU2vx6j8KGRF9w44llgH/SKGpLG71Cf0qtmUZ1HMAxTGNFnCl9QMttRqbhyCVG6Glw6RvCtqhrPCIb2RhO88I37tYk3eOHjrokYLaW/fy1+Ufp1B9MxAIcEFSjewUcM8M8fqTsDw88q7KXMZXowgU9JcUCBoEKW992jx6B8tlgNRkjrj6FvsMXu8oZ0jDsMm4DnWfX0c2CxMpJxHyQCdqgS3HvNhguksMnHNB0Ho5/3gThbYXqi1+uogjPRxsftOHCFaKFS72Vksm268RHuaqsHWA6/wgZnXhLbJwaE/aLrDXIqIkdPlqzMcnf/IwTPNNXqXk5bnECpTqXKcfVk1XsF3D3MFL1Qgwl/FcJoVoiWGPoRp+nQBcXmU7ym2XWbcZyaoBhO0NTiU7zILMqotN4F2nj6Fa1JJhV7nZaYXrFzRKXuPI0LK6CUyXaK/zmLDjj418aDW6CcihskcPF4rAyHZwnmha0oSkBHYg7xOLiYswIwpn3sWg6mmrUqL59jCo8S+yC0grK3Z8WEcAVw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78261921-f4bd-4230-22f6-08dbd02f7acf
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 23:10:54.6709
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RQ58df7pdVd3h1U/5Am+rD7JVdrgESs4fMwytAqVB5opAmVR+7p9bWvtoH8WGYM4FncvCJPi/c9LFnOAwUMbTS/Q9q7IRVMV+wS8TWMCyN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB6983
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-18_18,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310180191
X-Proofpoint-ORIG-GUID: F5iE12ZFJa16mU-h9FBnmmHiYPGyoA8y
X-Proofpoint-GUID: F5iE12ZFJa16mU-h9FBnmmHiYPGyoA8y
Subject: Re: [oss-security] CVE-2023-44487: HTTP/2 Rapid Reset attack against
 many implementations

On 10/10/23 11:40, Alan Coopersmith wrote:
> Information I've found so far on open source implementations (most via the
> current listings in the CVE) include:

Some more updates since last week:

> - Apache httpd:
>    https://chaos.social/@icing/111210915918780532

The discussion in https://github.com/apache/httpd-site/pull/10 makes the
situation a little murkier.

- contour:
   https://github.com/projectcontour/contour/pull/5850

- grpc-go:
   https://github.com/grpc/grpc-go/pull/6703

> - haproxy:
>   https://github.com/haproxy/haproxy/issues/2312   https://www.haproxy.com/blog/haproxy-is-not-affected-by-the-http-2-rapid-reset-attack-cve-2023-44487

- http2 [Haskell]:
   https://github.com/kazu-yamamoto/http2/issues/93

- IETF:
   https://lists.w3.org/Archives/Public/ietf-http-wg/2023OctDec/0025.html

- kubernetes:
   https://github.com/kubernetes/kubernetes/pull/121120

- linkerd:
   https://linkerd.io/2023/10/12/linkerd-cve-2023-44487/

> - netty:
>   https://github.com/netty/netty/commit/58f75f665aa81a8cbcf6ffa74820042a285c5e61
   https://github.com/advisories/GHSA-xpw8-rcwv-8f8p
   https://netty.io/news/2023/10/10/4-1-100-Final.html

- varnish
   https://github.com/varnishcache/varnish-cache/issues/3996


Also,https://mstdn.social/@jschauma/111252863550361935 points out that the
Rust h2 crate seems to have announced a very similar issue under a
different CVE id back in April:

https://rustsec.org/advisories/RUSTSEC-2023-0034.html
https://github.com/advisories/GHSA-f8vr-r385-rh5r

and a followup post notes further similarities to Netflix's CVE-2019-9514
“Reset Flood” from
https://github.com/Netflix/security-bulletins/blob/master/advisories/third-party/2019-002.md
except in that case the RST_STREAM seem to have been sent from the server,
not the client side.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

