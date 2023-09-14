Received: (qmail 18238 invoked by uid 550); 14 Sep 2023 21:37:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18211 invoked from network); 14 Sep 2023 21:37:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=c7ZRaEqikUSLP/z7eLuwvbGGRtTRMRAsucu52aC3plA=;
 b=OS3XiOg/AFahEHlTZUk3zpa6XgMzp0qe06jbwmen46RiuJcEaenqd4T8jvSjoW3XJihO
 PP9z1Mk3XIlzqH3iDioS2brfRe84mC1nzMyql9YfZ5YL8GhScAoERiDF2hf+vpzwffTb
 IDLEOtBduR6Q+F4LAZTC6ksTarpyS1IWsZO3nWQIkeAXGXiovuFua8jovC1Q/vXYYrfV
 02POHzSf91ug+1LUUtxgDhLJGFvmCK0zD8HzbF9rMXtFHv65D6u80Cr5cnp2Ot6G+Mjt
 pK8yXInbgo46J3NTCWTtH4T1BFghHlpYKy9Z2qAI4vG/QKKRMXbSleXm+5ypOOo9Fiop LQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lG9Q+2hJgq2FZr3leFFIIm9oTyyWm6eqjnpKwfUfyAxrfcp8moyE7TlQyyiGBrcODgj5kHeks02cP9THYtOiodmdBVhvTHRJtDTqPczoe9i2mOQUnem1N4oWQByy23645GaUMRsuIDH9up1VzjMI/3E2qr/BE5+XnepznGUeZH6N/dn1D7mRygLYEE5+fjUScmoJ31TeUn8MfIln25NTlY/Gj6V0HhEtRfJl9x/PK/0mNaPEEt5T/43JiHu430Sctpk+a8UbG72Lm6kzZy95ljGLZYZfnkBRjzX++tpnSfVEL0lZyHc+OHNvyfE3U0RxNh9eTnAxwLF4iEIkIQLdXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c7ZRaEqikUSLP/z7eLuwvbGGRtTRMRAsucu52aC3plA=;
 b=Z7IDrH0tqlXBwBkO3shsO3oo64w/4/vreblgvjeQCTjA4Nuo0wFx7WObxo6dFQZ0+UT/GH9MRTS141HK5BzdHmN4YLAim+KJbB8OmTSBcn2biMSlvKBmq75712YwFrBmlXXmckguVh0pe9DVK98jP+2MB1vjSn/KsttrGACqrK7sx7B6mOMfvZjnCO5pjI2gZkC6hs61RPo8LdSCuecBmFsO6U6K50pYFFMpn1m/AeD/+xWxh7C+2gH1ckvP9OzzbSduAxo4xmsqeo4sMgWv/UUHd0C2PtaJE8i3+t4J3lQxNQ6d2XSoSuO/KisrEVc3Uk5KO738SHjSaHSFWAyMHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7ZRaEqikUSLP/z7eLuwvbGGRtTRMRAsucu52aC3plA=;
 b=zYje9Hac9XRxGQ5bVbf+4J+nMwMH1YfjnyHU3CI4KfeXUBhvg8Pl/fqjXi5RTX7z73KtoZY1i3PT1614lu9lamBRm3IVtwIRwydkOpSLzStLLr5h9+tA1vOI+HbaACvslqgar5cph56h/HuYbJSWMpchtR4fIZ7cAGsH0ZZskxE=
Message-ID: <42346bcd-ce05-4221-b89b-eaa98d27f03e@oracle.com>
Date: Thu, 14 Sep 2023 14:36:47 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com, Dan McDonald <danmcd@mnx.io>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
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
In-Reply-To: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0046.namprd07.prod.outlook.com
 (2603:10b6:510:e::21) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|CY8PR10MB6564:EE_
X-MS-Office365-Filtering-Correlation-Id: 02359c54-1102-491f-08f9-08dbb56ab581
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mfFyMjUdCVo9rtxSFRcHN2ZIVUK3GHxYaICgh3oSA9qUON5DuhcxU4pEl23ubTU5sD1XBIAm54zQ26uFjLLBZYHvKiLClm3yuga3ZN+NgQTQrGsHuZh2XSOV0gNB99whE5uDSKUMiFpz/m5qW1NSTiRb/OzrpHuGNIvFdl8YNKxjH/szEnlJXLBzJyP1Xm/krKyy/XotasJfL0qIfYN3o73rrmDQJOnbIGhrJYLVBrt9H+zGxsuwW9KBRORefgXN9HuQumhKLMkHlBSbGSlmEcxTGBu0vmqXx4t1QH2ztDU9SUtbmv4Rn3GiT+9r/HaiKvGovCy1/nzdqGhQq0oq273jsHZITUW2KwzCm4mrghQbs/+L7TiAPDaDPXVl2xgqGSQGnciZGJCL8S7bPm8x7QuS5uyQK5cM4+1U14FLEwzFUphOGgdUmF0rFfAKkyzpxTDsemXEMxOGbURSCF3+YZHgVHri1M8wJu5Xcfw1H/VbOYStmsCcMG+dV/CCNSRyVUIa20LLBdAYlaGniuSB7Q+pIfCS1OXKiSPe0FpvwLf1XZjYg8pgSmmSGjJ+tLfo1Hxe+NQAhHIQYa0vmw2FioVLnr/bxAH/pV+P6tFHxl9sxtx0T7lf/hXy54YrOWkdIlEW82TS2inbXdVboDGcmPn4tbXZXSvHU27GRUby2lI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(376002)(366004)(396003)(39860400002)(451199024)(1800799009)(186009)(38100700002)(6486002)(53546011)(6506007)(6666004)(83380400001)(66556008)(6916009)(6512007)(44832011)(966005)(2616005)(15650500001)(2906002)(8676002)(66946007)(478600001)(66476007)(8936002)(5660300002)(31696002)(86362001)(36756003)(316002)(26005)(41300700001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T0VUYXkxVkkreFdMOEw1VkpvR0xyTjVEZUZVeGlneG9IUmVDQXJvTVQ1UjhP?=
 =?utf-8?B?VFAzTzBYNW9wQTV2NE55M3BiUURqK2l3a0RiNUJZcFozVWRFcUs2ZnQvVjN4?=
 =?utf-8?B?TXFzeVZhM1UrUXBaTjIva0gxVjBNU1huM0xEaDYyZWQ0eElJVVN6MCtwQUpl?=
 =?utf-8?B?RWQzS3AxZHdISnQwaXgvTUZQK2JNMnZNZmdFODJkeitsU05ESkExMk9nU0ZO?=
 =?utf-8?B?Znk2STNPUnd3QmRyNG4wY3U1S045VEFBMnF2TUhRUjUwQUhlY1Q1TjlZdWtT?=
 =?utf-8?B?OXNJYi9tMGc4c3hWTmYwSFE0M1k3c21xVkRKV0N6TENPcEpkeVVzSUw2WXZ6?=
 =?utf-8?B?VkNxOHJsbmJObHU2azZpL3J1N1FGUW1ldmFoNFV2K2N5ME92dGQwdGdQdGZI?=
 =?utf-8?B?N3RnUG1oRUxiTGZqTnJxNDlqK2d3OXJYUW5Dak0xWitDOVRPc1ZibWxsY2NT?=
 =?utf-8?B?MVlSOHB2a0RXUDdwZzN5dUFJRGtKUFhRbGF2MjZCMHI1cUY0ZFplNHpxUmc3?=
 =?utf-8?B?RkpvL2dvMEpNM0VyYUdOV2ZJbHFxNDBTa3ZadThFcmhEZGZPYUJLejBqN0Fu?=
 =?utf-8?B?QzBHVFdmVWZ4UXhHWkNHUFdHR0ljanZLYzZlQXBDVStlUlV5OHZwWlpRQUdw?=
 =?utf-8?B?Y0s0MzdVRGY1dDlrMjBPazdSUUxydWxSbFRkNU1nVjVNejE0NEZRZCtlNlhN?=
 =?utf-8?B?YURMY1ZSSUFaMW1iM1E2eHpCeUs0eHk0dmt5dVJheEhENnJVMlp6Q0NXcjVz?=
 =?utf-8?B?MkZLc1Q0V1hEcnBxelNMRmdkOTh3UDJZTEJSRU83dVplYW5aRnprcnR5QS8y?=
 =?utf-8?B?aW9pWllPcTdZM2VFMG92YkxyZXNxNjZmTmlCQ1BYYTJqT3RPd004VG9aTXlG?=
 =?utf-8?B?VHBBVXBNbit2T0dSNmlXakNmNktIRUw1REMvOWZmTkczeVJhNXE2cDJoNkQ2?=
 =?utf-8?B?M3d6azZFd3VnVGF3eDFPUS9Ga2ZpOFJ2UTJyYUJscW1WQ0lZcUNSWnhhUk11?=
 =?utf-8?B?VzNsdTQ4YUdGREo3Mmtwa29KTUp4UnFwK3hhOEd4UnlmdTc3dEZaaW42a2tv?=
 =?utf-8?B?VFJ4YmFjdzdqbHkzUEhjWngvcjUxZzduZ05TWm1XRXFwQ095cTNwYW1jbVJH?=
 =?utf-8?B?em02RmFpd0lvVDhaMWZCTldTak1jeS9xQ2NpMFRPeEZCVkNGY2UybS9QRmx5?=
 =?utf-8?B?VVRraE1aQUgzUDBtRFVtK0pSdmNVVUtIQytMVUUyUE1NbWZiSnY1T24va1Jh?=
 =?utf-8?B?dDJ0UEppYXdJUFpYRUE5OEVZZHlENXZoaS9ueFl2ZHFZUnY3TmMwZXQzY1RR?=
 =?utf-8?B?T3ZPektpZVBxNDRIQndST21SaER4cXY2T0RCS2FHUU5xU0lvRGZ3cVBZbVhO?=
 =?utf-8?B?eUdnTDFhdHkrZ0ZEY0V0SkI5bERwRWV3dlE0YlFZL1B1L1pLaUVmRnRtaEI5?=
 =?utf-8?B?cGdBZkFNSzcrdFZzVk1zaXFwbVA0Mk9LVzdzbFAyYkc1YyswMmxlQ0JUakRa?=
 =?utf-8?B?S3FzZWRoT2I0Vmp3SFZuMWFBRTJTVTMyQk0wdVV5TkJIQnZYS0lGUVlISVN2?=
 =?utf-8?B?UURLeUNvdEQ3SGlxaUJMVmFFQ0FXOVBjYTZwZ2JaMDJWNlFyb3RXTmlvMHpn?=
 =?utf-8?B?VkY5WmwydklFZnpFcG4xeHBtYTVLVkFENjJFRnVHZ3RlcVZSZEVWRHJMR0Fr?=
 =?utf-8?B?QUZ6ak9oZ3NWbGk4WjNpSVE1cXhNczM4SkM2RWVqaEZkWUxZOEJYckg3WW5s?=
 =?utf-8?B?dGVLaCtPcWFQaHltOHV6aU1BT1ExY0FHVlRvWWJMNUFoUjF3Qm5GRVNBS25G?=
 =?utf-8?B?ZmhiVXhWMENRcWwycUx1MGYyNGVTcUFNL21raTg0aTZTZDhhclUyakhCQ1hl?=
 =?utf-8?B?aEhUcWY3Ky9JcWdmcGJ2YUlRWDB0Nm9qZ29SMnZoa3B6TjNFMTZhdithREdZ?=
 =?utf-8?B?S2NnQm1nSUJ4eWZST0ZsNVAzL2w2ZHhGcXAvb2xxV2JrSkE3TG1nNWZBMVgw?=
 =?utf-8?B?aWE0RXMvT1hiTHZ0d2FqbUFIQjdCKy94OW5YN3dBUEEwaXNkNEpCa05WeEp5?=
 =?utf-8?B?bGNWWWpYRWh5dHRIeVowbU1GQnowRkZPQjNkUWRQQ3MxT0RCVGF2MEVoOXFa?=
 =?utf-8?B?UktIWGwrYk1qSlVBaGZqbDM5ODhNMnEzU0k5UnhvMytCM0ZzZWpIN21NMVNV?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Nml0JGtKJzhJoaFP+X5GTd0SJNqYEdm34Uw4TfHP9qUWKz4lEqYm2NJcUB+FNeFLlNJ9lBobqU2hDCeLBspBaaVzWwPGyxiAXtub6Nh+jxSVWIETspBcBOXTKxP2EqIZdFemVPD6eDSIUmGx93bzvUX45LidFQ9C/MR7eiIVdbBK//b51+6aEPSRxYP7x3jhrPu+r54pK8MUY1jkFYnOcp6x7JTrwPGbiPkPThgI2KA/ys7xDfkaxZpyzaZ63ESyyYgZk1QLggoDiCYXHobTfZ9Siep3Fqa4Kmx4+0r69zAMmvd069N/gLyt12rSnj30GkqRMeKOQY2sXTkApbBtQqGrAKhAyP9rx8e6mtVKlcvCRh79RWTJ1KxEaBn4K8VpmhCJeRXjGRBwfXeDExoGDxkw8Jf/L/KZ2IgUgWFRVNhRQ6JbPfAyrciOSpWSMGX9u9iBfSuoF7qmiiLB7h0AEU0fHoPf+MS9yu2Konlac0MTHcIy7oQbhU3Vr7m/wmr9hXdScb4RQGU0q7Jt9y4dy0zgYKha3ztPw06kT8ZelI+lGBXDn4sj+v1XIKtGlX1QXlaDpG3nMY6k6zN2PFeWtGELwIJkh45E4syJAsMcwlfafbzanlvp8oAcy7V9tDRBqV62XfC2qMzs7DEsSY4iCa0lLTrL7Dskfgcnh/bE/PYU8rRJ9Drwlq/jojfXU38r99A4mM1ugm4UgaYLAUkr+JSROMcU7MqjPMH7lN+nJrfYTZBEME2XhibGzPv4tb5lka+KtKgC6YpVSXPfuHXvj3o5EG8IMCKwVN6w27TNkHo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02359c54-1102-491f-08f9-08dbb56ab581
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 21:36:52.1094
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lv07bO2QwGBprXjCBBS6O41oZVjkpO0XesHkjTgJJqqa+meEnl9JVMLaThIxrt5jCKZY8wvyW1fkKh3B32PJfmndmbHjVDhuWGGZpimQIec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6564
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-14_12,2023-09-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 bulkscore=0
 adultscore=0 phishscore=0 spamscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309140189
X-Proofpoint-ORIG-GUID: f8oqjI6YXL2rubZ5W4XiYUPL7irftdNr
X-Proofpoint-GUID: f8oqjI6YXL2rubZ5W4XiYUPL7irftdNr
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

On 9/13/23 13:21, Dan McDonald wrote:
>> • Have a publicly verifiable track record, dating back at least 1 year and continuing to present day, of fixing security issues (including some that had been handled on (linux-)distros, meaning that membership would have been relevant to you) and releasing the fixes within 10 days (and preferably much less than that) of the issues being made public (if it takes you ages to fix an issue, your users wouldn't substantially benefit from the additional time, often around 7 days and sometimes up to 14 days, that list membership could give you)

For this criteria I think you'd want to point to either the github logs
or release announcements for the distros themselves (OpenIndiana,
SmartOS, OmniOS, etc.) as it's asking for the history of the distro in
security response.   I don't think the illumos-gate has any relevant
history for this criteria - you can certainly show fixing security bugs
in that code base, but I don't think any of them would have been shared
on the distros list, as illumos-gate only contains a small number of
externally maintained FOSS packages - most illumos distros add many more
FOSS packages on top of what the gate ships, and its those FOSS packages
(things like curl, cups, git, sudo, etc.) that info is shared about on the
distros list, as you can see at https://www.openwall.com/lists/distros/ .

>> • Have someone already on the private list, or at least someone else who has been active on oss-security for years but is not affiliated with your distro nor your organization, vouch for at least one of the people requesting membership on behalf of your distro (then that one vouched-for person will be able to vouch for others on your team, in case you'd like multiple people subscribed)
> 
> Per above, I believe someone on this maling list can vouch for me.

I am on the distros list, and have been active on oss-security for years,
and can vouch for Dan personally.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

