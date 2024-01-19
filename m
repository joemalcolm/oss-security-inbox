Received: (qmail 25693 invoked by uid 550); 19 Jan 2024 18:11:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25666 invoked from network); 19 Jan 2024 18:11:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=2F0yVn6GTqlcfDYhmImduNzKCXdfxdg+5Kyms7PbNKw=;
 b=f0HayiMxB5NqT7E/U+ZGOevCW/kPOtEkHi+C6nE+LvaP7GDJWm9lPMClgJ5eb7HHiKT6
 yerShlJ9esvqdQXqRow9Lf2jD7t+652+dDu9WcdbUQiIFToatA6ZPIS/BZY9g/FXUNQS
 w4kN58W3QfDcj6E2FEQ3mpqNOYerkIM4d0Y3KOZHkpO2EWWK5Tv5f4RHKbzcgjOQEXek
 F20usxR6ZW+lg7WoVYg3HvvtaxREWDYpdqdOD8fHHiKIBP+Fsgv/69jp8gktIbc0zD4b
 fU9uFslbakcjFIlhOY7eHOXevCEAJEzgb1HweSk8ZPjmRpZnDreCWXf+11fI9G+WK9TZ bw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FNOxw5Lu6aDfjp85UCJZfK1NayjEdzxzYFIXflMiTJBRd2u0S0efx/m0SlKeicgjuSt31LsFp0qWu/BxwRpDfeJlip7rEYcrX5eZgJU8Mlxw4+EVGM0k+kM7UUthpHOAfcV7RQXBXqNMQfb2RJ8xBb+RnRCKuAn3YMtFAyHgbppKqM91m4mO47klSCITo7AZBwScwC10sARGE5pPt/bUjMgS3yl85oWZdW+cnAwi9A+wXedUpwB7gaa6ADEnDYJRB5Yv5OTBapYXTvp0hXjeqgV5O8tiQeyo8vTdtd/ckcTjGI8P4MTz7miWE95sfQAfFoqm2RrHEp6DAShpVxxM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2F0yVn6GTqlcfDYhmImduNzKCXdfxdg+5Kyms7PbNKw=;
 b=LTf05/cBkYKgaOJWuzKs49Eu3soCjfTaz3GzPTNuUjx/y3gC1cqEivCnb7vO6/tAGgDFhXRg2U/FoLXqECuzoG9ct7iBrrKwDplE+1u00rukdnEfo1WdenNBiBN1iEA+/71TmEGNFjT8XmVyEgbfYM5oBRx2Nz65thB6cWsjQsgnlXypKL/2gadv3Do1dt9UZIdvLxoMWHiGF/khCzTtv+7BQ2L1ykwOv9XZot9gD5NQQEorV3AeYvpYT/3VeHSn24MTAi6b2buzC1C34hF1+r1Ux0d3gZAriYg+u+OkQDSBfjEBhIqDmD2blXkB1Bs9BzWahBeaZTK/HnY0THxTpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2F0yVn6GTqlcfDYhmImduNzKCXdfxdg+5Kyms7PbNKw=;
 b=i72W62kTgEUAlJREDF/j6US+uPFdpP3/cCjkXBSqVRCIK38xz7aaQLY8nOhAWkQqxF8IWrdVSLywhiRbdcibyJ7rf/5fhdyUIIm/y4tZ/PEwdaKs3iGve2K8Xc6hqdi1O1nQe5ecvYnDYGZf/3SH0f/G58/2j0/w1vtctBGjeBs=
Message-ID: <07e18a7e-6f57-40cd-8342-c238bec790ec@oracle.com>
Date: Fri, 19 Jan 2024 10:13:08 -0800
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
X-ClientProxiedBy: SJ0PR13CA0100.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::15) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB5582:EE_
X-MS-Office365-Filtering-Correlation-Id: c8e6ffe9-11f4-43b6-f0eb-08dc191a514e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gaI+OcFXaGDCqiNOj8na/ZdzvtTu4lkmUIq7O4MpEf6mhULpqSMEZ5GqARLD7viRuAI/zduti3X85YuCmoiIC+xhz8x8dOvqxv9ibdWb6LQBjomSLnWBgYbiKbcgg/Z2PQBM1cs3JQbY0hR+Tj/WnODHBkgX+8oabTbdf6KLn5si1NyAa/3x7VOHObA/wKDfIpfWTf7D+9eLVtrmfeXOkZkKYNUgXS1q5iXqHWcC0YN4Vso2VS+ZFrCmeRiRDyANF22mxfMXW7YFjDRwKpCMuv1Vlfct3eay3uqe7oLV74sDF6q+G7xWJwyLXnpbzAXLE5Vw0h9Wl6Cktgd3Sq3XTsgs/ZEdwqCZq/ql3kDEj7YzIpMtBnzD9waN7w5owJPTUN2ZNeBINOoS52fIT35B7wGvhLH2Zh3duMB5NLVok8N+RJFLzhdB8FOJmEzh3czycuGJkF8B6qq02RVNv0IX0sCTYqiDBzbz2/3vpMFQqBlBGu1Y7ORN/it6voO3wqwsTiJaCjNu/z2PE4GqEdqBYjuiTB96JsCsV7gNBMaf6vsmvkjFHFPubHbxZzzlL1nJBrcm7uIvRqb1sIN5cLAC/bcwcX2hv39GvL33dyg1vjZXlsVX8nxqngl+jbzMvN8WXUV2T1EhMMwS+e5wefYDy0Uz+AznXkHOffF8tL8ykMddpFUPhsmevPsNFvvQCdJN
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(396003)(39860400002)(136003)(346002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(5660300002)(44832011)(2906002)(41300700001)(83380400001)(26005)(36756003)(966005)(6486002)(478600001)(2616005)(6666004)(6506007)(6512007)(31686004)(86362001)(31696002)(38100700002)(8936002)(8676002)(316002)(6916009)(66476007)(66556008)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RHBuQlVzdmloNzNFUDlNYU9NYU0rL2Q3Qnh4aFJFTkRXd3hKc2dBcGdwT1Y2?=
 =?utf-8?B?MFhuanlzT1pIQjJ0dldVbnpzSW5ONk40L0JzbWRwOEpxaDlSTnI1a21kYVlR?=
 =?utf-8?B?T2ZCdnlXUFJPZGkrYWFBRjJlNHpkblF0QmZqc0NVSkN4aldTSkZTdHVaVkVU?=
 =?utf-8?B?akVtMWdBbnBpK2FvR0cyTXlwYXBlMVVJTmREZzB6aHRJblR3eCtGVStLUWNF?=
 =?utf-8?B?azlObzhQMzdoeXN4Q2JaTkVLTUFEVkhFei9ieWVBd0pwdFlzNDF2V2RpUWFI?=
 =?utf-8?B?dWlXKzU3SkhvL09OOTlKcGhSMzFLNnp2QldjRlRwUCtrTnFJT21JRndEZjZE?=
 =?utf-8?B?SnVHRjE3TFIyVzg2d3IreHh4aGJLSjhUZWtGZWMrZDM0Z1pIVzJVYlV1bGdu?=
 =?utf-8?B?OExvekpSbTRjaFZBYzJTNWphV0R5aDZQa3hoWE1IcmM4RXZyUnZ5L3JsdGs1?=
 =?utf-8?B?TWgybFIybEQ5R2dkQVhNanpySDViZFAyK0pEVW9TU0FaSEF1VmplcDZyUkg3?=
 =?utf-8?B?OVczRTNrVXh4Q1FwMkhmKzBNV05ObzBUa05UQ0E1empkaHlHdVdlSUkrZzlZ?=
 =?utf-8?B?ckVtZGxuVU5hUXpucGdxRTBMb0J6MjRtb0VvRjVBTllodHRmRGhVaWgxVHox?=
 =?utf-8?B?aVBhUG1hc29SbXJIS3dxOHRYN29JQlQxaFRmcU91VlBJdzVuREdqd3c3dnla?=
 =?utf-8?B?bzFKZGtiZ3RzZ3JCeENUeStXT0RPOHFNUXB2T0V4anZ4ZXRMUmNHWklZcTJQ?=
 =?utf-8?B?K0Y3NjQ4R0xkOXViZUMwOTRkWC8yajBPa2ZTMTVQeENxdm5ZZWxqYk1CNkZh?=
 =?utf-8?B?ZE8wbk9YTEZ0ZnM0a2hUNjl2OFZNRnd2MzB0Z2gyZWpYdWVaelNibjBSTnZ1?=
 =?utf-8?B?QVpMY3N0YTNrcEJ2ZXNnTElBVGRmNnFWMHFoOWd3d0c4WGJXdWJ0QUM2V3J0?=
 =?utf-8?B?SlAzL0Z6UXh6ZnRjcDVwU09oeERvbFArVzQyb3hKVkFGYU14cTZmTk0vVDkx?=
 =?utf-8?B?aXB5V1oxWkRxRjNLM0k3T2ZwMUVSTHloOFpmM3NueXg1Y21sQ0I5VFVHamkz?=
 =?utf-8?B?bG1YVVZlbGMwRTk2ellTaGwzLzdySVhTV1dURDlNS3BRVCtadDdNT1BlQ1JC?=
 =?utf-8?B?ejJqTGYwMUI5OWE1aXlNYldOVStyT2xNcmNadGhKbER6YUdNMUUxVVAzWXZW?=
 =?utf-8?B?NlkzNldBTVNnODI0ZTZqVlUzZTZQNlRlVlo1TUJiM3kvNFlxNGxmY3FHd2dZ?=
 =?utf-8?B?bk15UWdhWjVpTmk1dVlqMVlkOGIvQVkyQWN0ckg0ZWZTbmhkMGQySEx0ZjZI?=
 =?utf-8?B?c1hXWmxUZm5QTThOdzFjckpleGg2QlBmMnRIdjd6LzdPcDJxbnQyTWFkelN5?=
 =?utf-8?B?cGE5YTJHVDA3NUQ2QVE2cU8xb0V1Y2Q1c1paQ3crRnROTnpTaFpoaks3L2gr?=
 =?utf-8?B?VFRlMThRZEZEYzNvb01JNkVXVEJkNjlJVkpNOTA2TkpBbDBKQjUzL0JTUHhm?=
 =?utf-8?B?dlhNQ0Y3eTZzME1DM3AwMnpaYkhCZE8vNFNFTVRwalNsWi9vUDZKVVV1YTZ3?=
 =?utf-8?B?OGx0Qm81Y1FCUExEVlRCNmNNdkRSRDRnbXpBR0tEV20rWXZOaVNrWTlIMUho?=
 =?utf-8?B?VXVHUnpBVUxCZi9ydEcyUkFxZUlaNEtUbVBtK2M3RXpUQ3BZdU1UWnFRY0tl?=
 =?utf-8?B?RGtTV2FVakpOcGpTUmFibDMzMkZuSGhnNFpYUm9LdWhSQTk3ZTc3ckZsa1RK?=
 =?utf-8?B?VkxabTBIL2h4ZEhNRmlKRUpDTDh0aEwrdHgvN2pOd1I2UXMrYmM0MzJuVFVS?=
 =?utf-8?B?QWxIKzVIVWlDQ3F3RGN6R0Q0NlpaYW5ja2oxaURUb0h3dDMyeTBtZzd4YkZn?=
 =?utf-8?B?QmpGaTNNY0FpZDZPL2RsNEc4aHdBM2VsL0VaUytaaFVsVG9YV1ZPRW5jSkty?=
 =?utf-8?B?ZC83emcxVVVUU3J3MGpaTDhpVGk3NFJWdWx0TjZpM2xnT2ROWUxRdElXcUJh?=
 =?utf-8?B?KzUwUDVpMGwxOGMxNFNQalNjWjZFNExOQVFoK3pPbnVQSTg3RmpRL1luY2Fy?=
 =?utf-8?B?MEk2VWVwM0VDdE0zMU1nejd2Z0U1b1pGVlZmZ2tPZGkxN3dYajlZeElzaktK?=
 =?utf-8?B?M0lUcTBDZ3ppdVFXTytzRHJFQXpYbnliVHRoQTRrUWpXQ21raS9jSjdqSFdn?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Svj/M+2zU6223iBfVIGLD/6IiD85kWbKpye7XGsN1ej4ZoVntFY30bmI/VE7ctye21G8BlA56J+8AvZJQzi6opvFUn0A0ceaBRDdzjtSpDbcYfgmt0jw+l7zk2jinkJGYrZDuASHJk6m2On1ntQzLy8mRROoGpaqVEUBX29N772YyPZKwmnZuOxthlwDBFmVKxCsQtKDNrWkJP6/kB1MA3maMZcikjdZ9hgtohBGim0oBnwTgWRhixW+nrbZuq1/JWiTj9DenSuEvSnmEGstlWwzVaUMg8fSDdBO7kbBT3DWCPCGdlhYH6zx7PxeQmXQLOfuaHCnXIsKpyTRy8pXK12QDUJE+lwRAY9FIsGDrBvNXhg+BpVY/ixupY7Ron6w0MHdaP8+P0t0oFnKcFlYtzZyb9wcLnIyz2Y4cP0FRBy5QnUfJ2ivsjiN6giV9uVw+/QtF1PDi65CDSuBb8fq1oSMqcUmWuIewEh9KPISfktG2mzVkpuv3JrG4xeXEt4wKqvuKFLM488U3PwA8qM8UsDgVyle1CszJIpKC1Wl7uCpue97nAcEXpF03/PGpqorPQf6grxjfr+cMRqpx2f7sdxPHXBYofg1xRXIR1jWU9s=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8e6ffe9-11f4-43b6-f0eb-08dc191a514e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2024 18:13:20.5012
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Psl42FUL3td10vWDaeXauEQQEBvbnTygEuA8qtUaqt9ktOTpjHvx6GNrSFoipKizZNhDlo7SbKZOxWtiBPMDIaQ3OPwo92JDj3rJeJmENU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5582
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-19_10,2024-01-19_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 suspectscore=0 bulkscore=0
 spamscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2401190108
X-Proofpoint-ORIG-GUID: vjXbFevIXlRE6_XFIFan2thYje-49kVj
X-Proofpoint-GUID: vjXbFevIXlRE6_XFIFan2thYje-49kVj
Subject: [oss-security] GnuTLS 3.8.3 released, fixes CVE-2024-0553 & CVE-2024-0567

https://lists.gnupg.org/pipermail/gnutls-help/2024-January/004841.html reports:

> We have just released gnutls-3.8.3. This is a bug fix and security
> release on the 3.8.x branch.
> 
> We would like to thank everyone who contributed in this release:
> Clemens Lang, Daiki Ueno, Jakub Jelen, and Mark Harfouche
> 
> The detailed list of changes follows: 
> 
> * Version 3.8.3 (released 2024-01-16)
> 
> ** libgnutls: Fix more timing side-channel inside RSA-PSK key exchange
>    [GNUTLS-SA-2024-01-14, CVSS: medium] [CVE-2024-0553]
> 
> ** libgnutls: Fix assertion failure when verifying a certificate chain with a
>    cycle of cross signatures
>    [GNUTLS-SA-2024-01-09, CVSS: medium] [CVE-2024-0567]
> 
> ** libgnutls: Fix regression in handling Ed25519 keys stored in PKCS#11 token
>    certtool was unable to handle Ed25519 keys generated on PKCS#11
>    with pkcs11-tool (OpenSC). This is a regression introduced in 3.8.2.
> 
> ** API and ABI modifications:
> No changes since last version.

https://gnutls.org/security-new.html#GNUTLS-SA-2024-01-09 states:

> GNUTLS-SA-2024-01-09
> CVE-2024-0567
> Severity Medium; Denial of service
> When validating a certificate chain which contains a cycle of cross-signed signatures of multiple CA certificates, GnuTLS applications crash with an assertion failure. This affects GnuTLS 3.7.0 to 3.8.2. The issue was reported in the issue tracker as #1521 <https://gitlab.com/gnutls/gnutls/-/issues/1521> > Recommendation: To address the issue found upgrade to GnuTLS 3.8.3 or later 
versions.

https://gnutls.org/security-new.html#GNUTLS-SA-2024-01-14 states:

> GNUTLS-SA-2024-01-14
> CVE-2024-0553
> Severity Medium; more timing sidechannel in RSA-PSK key exchange
> The previous fix for CVE-2023-5981 turned to be incomplete as it still leaves an observable difference in the response times to malformed ciphertexts in RSA-PSK ClientKeyExchange and the one of ciphertexts with correct PKCS#1 v1.5 padding. Only TLS ciphertext processing is affected. The issue was reported in the issue tracker as #1522 <https://gitlab.com/gnutls/gnutls/-/issues/1522>.
> Recommendation: To address the issue found upgrade to GnuTLS 3.8.3 or later versions.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
