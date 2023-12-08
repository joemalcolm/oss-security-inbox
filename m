Received: (qmail 5585 invoked by uid 550); 8 Dec 2023 18:54:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5558 invoked from network); 8 Dec 2023 18:54:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=fc+LJeUOxHFwm7Ry/znspB72pkFuSGK9a4ngBpom/SY=;
 b=TYzw4EvVTh6nKW/MN68Xsmu0rZsoibUFYJPkHs+fHKbBN++kxOBiv1+Jctd/AMFsYiSC
 AiddLsuRTjcr4V4ae9aU4Rgj19p93o+Bw2ggQhT0bqFEBBBx9TcD8FAY2c1HcKY0FOFV
 kUP5+OCMxn7U8FX6of+bDUHf9mfuztwftXqKHqrnaYgc3ZzFgW3Q5rB9I+j9IKncSRGZ
 W5SptHP/8UrJK1NSybSsSupyVB/dr1s2I7/b4V0puw8MK3M9ze2j3mIHyZ1sxIphieV8
 F7Tq6dJpRPB4HUBpYOSum/WFJQaXdICUOMF4AyueCqGbKcWeZlUngsB92gvitI0cZCOt 1A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JoSAliHDtjGC0kZB19yRgcz/gqN7/K4MVZS7L4Px28LTRSnwCoYh3mox3uNURI6PLx+GNokIBR/v7FD9hoD5p0Wu+FhR9LOlMWegPHPXpgWxpHs56LJ5xEV5jgxdu4o4tpNxOuuPWo7bn7XVzHuY4noeXsdpQhRMwBPsne23sF8QLo8U8813BJEhdFWRIhIU/GJq9eLsv9q0oLirB8coBP9Cc+NtbeWa3I28VN9J2LZApOuLelypty2xPrTeNXLKzeuSzf+ehbs9VQuI/TvyqCsEbCHc2qabkqIX/XqBueGPSz7AGBAgEjTJDY4MvgyJtzXEyXD32MYdwtPxhlIXCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fc+LJeUOxHFwm7Ry/znspB72pkFuSGK9a4ngBpom/SY=;
 b=i0igYYGdOPGo/0UU6VcUcf5eTSkK2+1H2DO1a1o/EfBjMIl5XXuS8XzRY7Cxtum0PXcjeEkfjS0rQThpd3QIBrkJCmQWIrTiDghQPpqgY59O9sYqQ9Led0L0bNkTnJryixr+YZykCjqIq9NtbnVU88HxBqJt6bBbCaUJ9yA4IrvfjyVQ40naNv3SBmH9ytCB0QFE87nekkNLAVsYPWYqxvOBxH3bZeCfxMAUnoiv6o7OXFscxvDc+uXR+1X6CXvrVIhdYsX+q/u6aJ3XC6z/jwV7yU0P/arACv52ZyPKEfppIqQk/8kqgRUFISQrHMu4irdE0g12tVX5LZB+/ukrVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fc+LJeUOxHFwm7Ry/znspB72pkFuSGK9a4ngBpom/SY=;
 b=suoOr014Lxx50I5KBq+zvwlBdK1st2lpeLvufp76d+K3OTvdCYi+t55FGBr4tBNUnABR06oez9O9I6phtLMtez8xdazLTYSqo9lxSnWkpRZCuCzOWzaQzSzEq2a+mjrDO6DTsJqw8VFl2yMHiXMqhwHKzgnp2QZD+KwPCRRl8ws=
Message-ID: <a6c3f418-bb63-4591-b0c1-fc3e90eb0c1d@oracle.com>
Date: Fri, 8 Dec 2023 10:54:02 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0048.namprd02.prod.outlook.com
 (2603:10b6:a03:54::25) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BLAPR10MB4961:EE_
X-MS-Office365-Filtering-Correlation-Id: aa536f9c-27f9-4fa0-1ca5-08dbf81f0d0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IkH4SdnT/LDwTmdxjJ6LxOfim9hl75CQfPUL3PcwGUSB01OM9k3y9+d7tmPUNRP8tP1GAWgs2MqXjeBUpN3C8pw1G3iSOaOMuxOTApevNHPomezAudPVqd36hn9Spb92CMUIdyxAF9juSEFNs++XKkeHKIPIigF5FSaRJs0eMJ2lyv09stz55POxtKeAdkcDZdvuLAotEpcpVj9jeTlyH9zLZj6X47WK6FD6522ls5uaKfk1yYOKye+LQHH/GAikANLtFeAJv0HaB9pZ2g+GPIaWjaFQvsjY7x8/9i4SprWfEnYjFAVHQUFZDLP2vquZTcIx5Og0/nOrXU1Cdvj4+0UdyfRkkPhtQo/27iHI+Egm7sy2o8S6dad77UZmiY78kAviXhYaVAnraU8LNwWrsqnxtSaiM2eesm0efUfH1VB8YGb5qtimsLrzzhVnR6K82BFD6dllJFwvvMRSJLUBH3sl82kKIkf/SeuBhvQQSTwCO6EWHtOmWYz+AnwgvpW+p2mXwiXkCMhSHEu6AQZqWGpzbmHJ98lnnOxc8EWtQfU9oE50OYTMLK5f7LFpqzv8Nbm06IZ/mafkRAkRNyGlF2ulOAunC7gvbY9fPolWVGBfzAakIIY9FBNU5MOeWcnqh0DOeUcE2cF+CvEIfeBr/mhnxn9fpVMU0GxKx0Svmfl/X0ZIZh4cVlAtf0SxkPCThqPVbBH6RaZM8skO1RIvJjFRQWMehtY2fwA67a9a3lc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(230173577357003)(230273577357003)(186009)(64100799003)(451199024)(1800799012)(2616005)(26005)(6506007)(36756003)(41300700001)(6512007)(83380400001)(2906002)(6916009)(316002)(66476007)(66946007)(66556008)(5660300002)(86362001)(8676002)(8936002)(31696002)(38100700002)(31686004)(44832011)(478600001)(6666004)(6486002)(966005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WU1wU3pJelh1SElzZG4yWnljcE42a2tVMmJoWENWQWMxN04yUjJRN3NPNHJo?=
 =?utf-8?B?RXVxZ2hNRnkvVDBINlIzZmpxU0VOT01EZEhpVWlYNXRZYko1RWpKNzNrM21x?=
 =?utf-8?B?QXVaNHpXSm04TVNQTkwrU3lVWlBwMGd2dmdjNjZPKzA5akZPcnk1MVZhdlBJ?=
 =?utf-8?B?V2dubG8yTDRWYURuTnZZY2dKeDB0L0tpdjY4dkdKN3Nxd25QdWFrZGEzb0RN?=
 =?utf-8?B?WURzV1Q2Rkd4d002U1JuSlBkaXRmdDNjc1ZDY0xSRUpHN3QvOEV2TVpKbith?=
 =?utf-8?B?UUpLNkh0bUlWbkZxOEd3dGZFaEM1RWx3b1FKeTZmcVRWcGFXTFpQTEo3V1dK?=
 =?utf-8?B?TjFoUkZLOC9KSk13NldKVWpUMzAyRkE0YS9KZ2lQR0IrdUFxc0QyKytwbUk2?=
 =?utf-8?B?czNJQzNHQWZTWmlEakdPS3lWYlJyMVBlL2lGa0tIekFNcUtrdHpiU3I0SWZz?=
 =?utf-8?B?NXhZS0JlbVo1T2hPR1ZnZzRLcXh3bUpXSE83YXBwaFZ0WTY3NXNoVnA0Zkg2?=
 =?utf-8?B?bExGMUZoOWdtNmZlN2hJalg4dXBramltNEdmUGQ0LzdteHhyVkVFNFdOaDNw?=
 =?utf-8?B?a0Q0V0dnS3hmaGZYRlJPMzVxTEJmSDQ3dUNYaUl5MFZCc1YzbnNhWENiQ1g2?=
 =?utf-8?B?bVNmbFpqaUpmb1JHcUVONnZtK3ByaWFHWHQ4WHRiSWFSRlI2ZklIYWZ0MlY5?=
 =?utf-8?B?emRjbEhlcXp3NkhWUmJobXhNYlA5VHc4VEpvcjVVdVh5YVMwL2R2anVOaG5s?=
 =?utf-8?B?Z0JVOFd1OCtMZ0Vrdk1WdGdWbURxcU9FeUpYZ3JIU2M1a0JqdEFrb2RxV1VL?=
 =?utf-8?B?cXk0MDd5WEdoMW9sWTcwU3RIcXRKYnpMT1hNb20xbnFLV0plSU9JcVYwaG1m?=
 =?utf-8?B?R3BrNUtMUDNaOHJraTJITVM1aXJ6YTFhcW5ycjBGR1dVcXlpRTkxUWo1T0hF?=
 =?utf-8?B?dEZ3OFppQWRwbkFQVjIrOCs1QWJucDdsWEJEVVZZODFoR2NCczdaWnVIejlp?=
 =?utf-8?B?SFpzZE15K0JhZTJJczBUY1dFSGN5M1VsczBqUnlXaDV0eDZ2OTVaQWFkSUpI?=
 =?utf-8?B?QjFKTUI5UzRNNHBzenU3WlVIaUJhNzlWRmFLZ3J6bVRLOFZuZGhTU0IySk1R?=
 =?utf-8?B?VG5qUkJWc0w4WGYxRUZFYXUyck0wUkNzVG9mVmI2Vmk1c1NxajBoMW40YVFD?=
 =?utf-8?B?UlRuUXVYci93ZVVIYzB5U0RUdTdwSXJlakxIelVHTHVMZ1BtaFhWZy9jVXFO?=
 =?utf-8?B?eG9valVZYWc2OTNBamZ2YnBDSmFEU3VCVkZhTWpWZkU1NUN0aDlabFg3YXVK?=
 =?utf-8?B?aWExM0txRGV2QVZqbk9kV2lQVXkrWE1rWVdTQmFWWkRkVnl6V09EOFl4TnAr?=
 =?utf-8?B?MUd5bXVnWU5jcFFDQk0yS1pwVnNHb1VFRU1hV3hJbVc0REhTbW42VlFiQTZ0?=
 =?utf-8?B?MGlvSExnb3dZVDdDeFVtZEVrNm84dWxZL3p4TnZEbXJUU0FpcWYyNjYzK2Y2?=
 =?utf-8?B?dU5lM0Z2VTNJUmptWWhKODB4WVZPdWJOUlBoVjF3aXZ3cUxtN2pGMkxTVGtN?=
 =?utf-8?B?akpBVDJlc01ZSE5uc2I2TTZSTUpxZXpISXZhYmxDb2I2UE5MRUZ6RG5YMDFs?=
 =?utf-8?B?V0huZk1zYi82cEM4dHlOZWdGbnBhRjNSMVI1SW82dmtMdUxNZThHbnJiQVh5?=
 =?utf-8?B?OGRWUk5VK0lzUVlIZklnMWU5ZjdxZVY1L3ZmQ2txUW1sNDZOQU9VckFiNlQr?=
 =?utf-8?B?amNnZFphaHkwdDZUQWhkZUlSdXRKUFg2ZFdYU1BVVjBVdjZWQVNTWFk0Z1o1?=
 =?utf-8?B?bmU0MFhrMDcyNjMwSlVEQ3hpQUxCb1lSMWQvZGZUZ1FmYzMwUFFmazZxd0oy?=
 =?utf-8?B?TW5WUmo4K2dwOTJyNXJDTFRBMkRsWnpQZHFxb3lTREVIUjlVcUVtN3dVNUxL?=
 =?utf-8?B?aGtYWTdieDUrdlcvL2g1Q3dWTHdhVTNMRjB1dmkwM21CMFU5dGw0bDk5cWJw?=
 =?utf-8?B?RnZuYTNlakMzcEpyWHdkMXdYNWJoR2dOSnJka0V2TnIvQTRiZG9udGFoRStm?=
 =?utf-8?B?REwzUHZSYTFvS2xLMFR5M044Y0NpRDU1Q3JXNDNCbHBtbFBRNFZRdTlTckhp?=
 =?utf-8?B?U1BLWnNHRlUrOFIrTzR5TWhFS3N4K2lWWksrRXFjakdrMStkSHlDTWVUUDIx?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Iktk+GWd/aQ6kPh2hHyLIImHCO7FSsWDvw19ELpeGwvMWOvteW6fxW/P+TPj9xkEYHX/KpA5P6hq7ehHapP86Af40jF0RSRsjdiuDcVNMbziYMtFlyrv6b0UZqxCIG30t3gctF9xPq/zPp/rwT6qqLfhKwu/1NtuniJ2KNguhl1vr1ANy8UFFaj0jn1lFbK1+g+UvfpEYLxrl/aVpRrOg2bU8kZvUN445FY/7JsgRqC/haKlSMyDaDiQml1enOf4iaIKnIgT/nZQqWUVznhi9YEhlNpJ5Fq/ozPn31XylWbVmNIxfL+Glxy1ETuuD2uVDtCeSSeKaWB2OII9CFN932nTK9YhVCGoNP6wA7CtTizMGYIvLza48wEFuct+XKRhXOC2HeHtguoTWOGxDdY7Y+rdJMwZZ0TKx+l6hvwHfA/w0ExxgsNj9zAvDVro4Snlsg09OFKL4Zv1AynVXlFyfQDg+bYvKzuwKxS6gkd5yN3GcEANeqXa5MGG9FsWzL2PFG1LttfG2g4UJI0qbYezt2JDozys4mpA07o/yU8Jr+XvUNyNLoyDxej7Ari3UL1y2r/TjrPfaU/pjcJs/m7GXDLqxp5xYFtmsiR5RRiU7zBW4101n5WqhFLoEyj2DCKYpIor5YsWzVB2pT1OJOXUpFBBgJgw8vafuYcFDLlgiSUQqTIDSuN0JJrWtn7y0s5z2SxdgSd4j+v4Jz7QoP2g2kMBrqPB41Q7OZaod77v/Rhn8/OVldsHnK4n0xh4gadgtrdLnm3oHiKIfn/M4jTi4A==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa536f9c-27f9-4fa0-1ca5-08dbf81f0d0a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 18:54:05.1041
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FT1t9VUdrnVT8S5p0jJWxumOfdlWmsEzxCODSb/9Gehc9t1vk21uFBqb0u/GMBynC+iULhuGuidJskk7FusX1SB3spX7ckzHM9gdKVHh/3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4961
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-08_14,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0
 mlxlogscore=999 suspectscore=0 adultscore=0 malwarescore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2312080157
X-Proofpoint-GUID: fxM0CqMYnN-KGXRChoZORkWQwz7BOWRS
X-Proofpoint-ORIG-GUID: fxM0CqMYnN-KGXRChoZORkWQwz7BOWRS
Subject: [oss-security] CVE-2023-49284: fish command substitution output can trigger shell
 expansion

https://github.com/fish-shell/fish-shell/security/advisories/GHSA-2j9r-pm96-wp4f
reports:

Package: fish-shell
Affected versions: < 3.6.2
Patched versions: 3.6.2
CVSS: 3.9 (CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:L/I:N/A:L)
CVE ID: CVE-2023-49284

Impact:

fish shell uses certain Unicode non-characters internally for marking wildcards 
and expansions. It will incorrectly allow these markers to be read on command 
substitution output, rather than transforming them into a safe internal 
representation.

While this may cause unexpected behavior with direct input (for example, echo 
\UFDD2HOME has the same output as echo $HOME), this may become a minor security 
problem if the output is being fed from an external program into a command 
substitution where this output may not be expected.

Consider the following:

In foo.py:

print("\ufdd2HOME") # Perhaps this value is retrieved from a database or 
external source

At the shell:

 > echo $(python3 foo.py)
/home/fishuser

This design flaw was introduced in very early versions of fish, predating the 
version control system, and is thought to be present in every version of fish 
released in the last 15 years or more, although with different characters.

Code execution does not appear to be possible, but denial of service (through 
large brace expansion) or information disclosure (such as variable expansion) is 
potentially possible under certain circumstances.

Patches:

fish shell 3.6.2 has been released to correct this issue.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
