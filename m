Received: (qmail 7933 invoked by uid 550); 6 Oct 2023 22:04:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7912 invoked from network); 6 Oct 2023 22:04:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=cwnjIO/Pn6R5cUnqTD6vssI5dk3fW/q+C4EiGLAkjMY=;
 b=AgtCc0c5AwYNeQXFXKdpBjv/a7pFqAsodrm3FqTFmupzD6UeMRVpcmJWUy47MlLmf8P0
 ETbVql59L99r0GGXGPVEWBoJt+Wsw2gdqWL9dITG7Md3lNtLibrZCIjCQEDHHAkBk8J6
 s93qYAGMdHGmPGq8p5nQgfJZQIOB+zwHqUELxN/gncRveQw8InGGS0g6fMlUgl7c/BRP
 PcM3nlPGKIiTgFIPZrdsgJ4zrL1LuMNoDEcvxIGizLF7j4Rusb77bv10WSViWGSWGkxx
 Qa2q5CB/fkxpeggypAtDjzcd2M7uKyU5YBxYxn5nkmO/D1kb4YSNwoTo44i/J8khqFBB pg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csBhKcU2BAW7aFXVJDBXboqW2pFBomOYFsFSj32WV5HqLe8417aL9jimqJkzlmfi3PxvhwF0532+94JcDlo6qXpQRpi34Abifct/211sLkGm1YXLS9gzr+fACgTdCH/STaDAUZvjo2/yjuUFNVD/EoXcEmtXbR6Z81itdqbu8jMu2Wa05sZeaN4YO48TwQvzLlLrU+p+5ekQrjGEo1/pUeWJiu7+Creshilr5otO0T6L6lo+sMFZQwyId/7IaRr7yaSQuSKa7I3uKpvAub+5A0eYEoQoAAU1poUD7NkPHqYNJLCJ3Y0/6Eto3wvKFP4olAqzC5OBPWz1ef0g3u0coA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cwnjIO/Pn6R5cUnqTD6vssI5dk3fW/q+C4EiGLAkjMY=;
 b=cKPUQ5+zAMka+K+sL783Y5VoFeKrmVbSPdvtMFjWlEu1XJ/xw5iBFxfLFrFRLWEtnUllBZzhuu/l6091nKZz9UkNdcYZ2wi1ynWM8hU2ljsk+WLsPaZBMagv8PVpx7GZjgF/9xN0XAFomU+gS1EHNBXUAYJIt3eVFGeGgD6eVpx/j7pSUhQLsz9rXizMiwP9jZmgl/7ZvtiLLKsYLm9i8ig17vjBdJqFsJozPxtUCH/m/9y58ux/FxH3wEC3WkIdaTnWo4zOPt9cSsNdvdjGjWy2OBpraZMPwI6Pn3tStPgWRjjdYJ10jUCRJRXCVrRopbfuwrzY05pwhd5VnOwIkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwnjIO/Pn6R5cUnqTD6vssI5dk3fW/q+C4EiGLAkjMY=;
 b=mU3WgE+LVD3PmQeYM7QyuBcFvKuCy/IZVCQsOdZ6Mrc5MHOwQob4NRBsGvMOgmwfCP7s1RvPa6QKYtUm4fVyvchxZ3QUz+5EPDAmuk9Wf8AftgGPhkua+kVt0e0amFVy3uPc+eK22Phrrw4ePuxF/W+JEoHaJW3GJsOAQ1xkxrI=
Message-ID: <27cb8fce-75c8-47bb-9dbc-87dbe14a6109@oracle.com>
Date: Fri, 6 Oct 2023 15:04:27 -0700
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
X-ClientProxiedBy: MN2PR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:208:fc::15) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|SN7PR10MB6474:EE_
X-MS-Office365-Filtering-Correlation-Id: 096e6d55-2537-4705-e3f1-08dbc6b83727
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Yv5CuP34W5ug+mQUIbBipOVD8ZQRALOK3ouvNWyqUHLTOWn2Q72Q+g+WmXYvG6+a8Ir0PcFasP0FTdV4CMQl3Ww3Islk1eK8DQ9U8YZYaGbuAqwX0D7yF+wqD9/dxbGjhT0knhzIReY2YZ12nGRq2znbpYagrFIwLVf+ak3KHbSBCZQbCOXVHoIsizXZGhs4Q+5gf/DCAa5tDRFzpteqhB6q+Qkep87pJKWcuSypk6wzIuTQLkybDQ1M0ejeMGwDOqQw28hQDRQIxA3MUq0QptLTLbOdJec/uFLIoQPgFrzYCz6kGs4iTr61BBVbiHFiglJRKQr/u2cwOsjeGOWhyUr/vB2Mq4CGJTJUbv8EVc9MUNn54sSKXH4B0eQjHTKlBBiVkTm7UW52mB1Td2p7YwBCHSk4MknfL0WGwMTZo/GDBebNNipYnufVPSAc58HAa2+cHX0rkZOIszSRXEHKSHuMS9z4ebuz/4M1nmkCdExaadYp72BH0SzwvT4a+nICYi9xpIdpeIg6eEs8uxF/A+27Ewy6itUg/orz6mR7DV+DvhKorSkObUikMUA0BozbGZNnmdMGrhULmQ0ixJ2oU/KpFgfiIyJUnZ/4x+wPoMQ5Me2PIErj2asfpMKaGXP/yIw8acU1u1gTSGul3EBp5j6dXfDzFfhGZ4cYQHF0RKj14Xk3eijjEXL4wB6/FiYF
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(136003)(376002)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(316002)(66556008)(66476007)(6916009)(66946007)(41300700001)(2616005)(36756003)(6506007)(6666004)(6512007)(478600001)(31696002)(38100700002)(6486002)(86362001)(966005)(26005)(44832011)(5660300002)(4744005)(2906002)(8936002)(31686004)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MllEV2RDeXpZTjZhVVhjcWhpTndMa0VXTkxrd2oydlVFdUlRMm80bG1lVDM0?=
 =?utf-8?B?aXhFVGNVQno1dlI4UDJaN3NlOTdnckhMd2FzQnIvRFZqRlQxZzd1Z1g1SlBa?=
 =?utf-8?B?TitQbkpmbWFoWnh1Qmg0WjhuRUxJSGV2ZGl3RkxLL1NEN29VRHdjTXlaazhI?=
 =?utf-8?B?SE5adHEvcnBGaWEwdEpmMnpzYlNBU3ZpQ3h2VmFLWW9GVXJ0VWFwK0piY28r?=
 =?utf-8?B?cnVrRmIzeWlmWStjQkt3WWY1ZHZDamFjZTRrbjN6U3l3R2NTM01xWU1OOHdm?=
 =?utf-8?B?T2Y3a1I3S3VzbEZIWXFlT1FBT2lUWXREak0rM1V6MDdKVjE3N29VT3Jubk5K?=
 =?utf-8?B?ckt3K3FjSXdYRGhGTDg3ZUFKZSs3VU1tMm95RVlLUit1QVVtL0FhRDMzZitM?=
 =?utf-8?B?QjcwQ2ZMc2dWb1g5TnZSckhpNzFaNDdTVWl2U0NFUVlITE9DeUdsV1pnTWt2?=
 =?utf-8?B?VUN0dCtpNTQ3c0VUK2VwN3c0NDV5ZUd6dG1vU1hkWmE5S0VXdDluQW4xNlNP?=
 =?utf-8?B?TzFWQ2JHZ2pIN0hNeVdNVHhZaU1WYUoyeGVDL2UxbUxUV1dZTGlQUThpMFhn?=
 =?utf-8?B?WlZMUU5seXdxeVZIVFYxSWZBZmkrdnExNmRqV0J2NDRCTmE0ZDBGTTN0eS9J?=
 =?utf-8?B?TTRLcysrSXlXSjRKSkdRTUNkQ1VKWEZVVjlUcksxYmdjZk94czM4L1F4czR5?=
 =?utf-8?B?T1VOdnNzakQ2NFFvMklhdEE3UnpNQU5hbUlPZ2dpTjNKNkRCVGRuZXBkeGN1?=
 =?utf-8?B?SzdCUUxHZis2UkdyMGNvOUxjTGRFUnRXU0ZhNlBHYlk4UUdpdFMxT3hXRFVx?=
 =?utf-8?B?YmlPQXdMR2RRRnRualgwZEtxaGhiRGdkV2pMZVY4UFVFdUxoRWlxbmlJVHk1?=
 =?utf-8?B?R1lsMWVxaU9KWEp0b2liSFYwME8zOFpCbTQ2OWhGVDlQbVlmOTAvMWtDMWJH?=
 =?utf-8?B?enlabTdibmJTSVBHS0l1cnZXOEZSbmd1b3grQUlYWEpNZ3RvLzEvZEhlVXB2?=
 =?utf-8?B?N2RqZ3NwRVBmc0pySitSbUk4KzA5Mmg3M05ieGFWWkhCcGdvdDhXUTlWNlZX?=
 =?utf-8?B?c1FMTW5ILzdBTnpaWEtDOWJpMit1RytZYXZxNXFSbDZoSjBhVmV1Y2VnRzdX?=
 =?utf-8?B?OG9UcS9KbGxjZFBsbkRoeFBXaWFoa0l0cW5DOVRzQ0FEcWJQWnJwOUxZbGNt?=
 =?utf-8?B?bUJLb3RwaDYyQmpFSkJ6c0tnamtQckx2cUxRZGtDeUNwVWh6bVFZSVloVnAx?=
 =?utf-8?B?Z01xZitDTTEyQmRsaDN3OTQ2S1psVWpoUHBtemZuS2VVOGpJdnVOR2hqck52?=
 =?utf-8?B?bXkreFdZQ3R2UEpBbmhTWmpHaldxMW56U1BrdmZLRDB4TTl1Y0VSUVdvWnJF?=
 =?utf-8?B?Y1Z5c1JGODNTNVRXMmo3aFV0eGdGWm1TSCtxc0dTU3daZy9GSkRIOGZvY3JG?=
 =?utf-8?B?TUpFSlBzM1lNaDZ4Q2lMd1FYMXkxMVhuMUJ6WG5QZ016UTN4Y1ZmdUNjM29F?=
 =?utf-8?B?Y3ZqWGJwelJONmRZanhaZnA5WnhIMTRvRHpvbkJQejQrVm5Zb0tublZtdWM5?=
 =?utf-8?B?S2VnTk84UkpTQzgySC9BREsvRU5vS0tkczlkYWZxTDNkNSt4VmpidVRoSnRx?=
 =?utf-8?B?YVFuK2NQSUQ0amlIejZVL3dpWHdZeWI1MWlDNUZldENqRWc1d2s1Z2YxUzVI?=
 =?utf-8?B?cHU2ZDBSbklrOVJQbC9Rak1qVnQ4Zk11dTRReFV1ZzZoK0JxdmZmK2tIekRL?=
 =?utf-8?B?dlZnWXQ4eTUrOTFRdldYaGRzWU1pa2JJSWtzYit3K3pEVXQ5WGVyTmhsT0lF?=
 =?utf-8?B?aU0ybkZaQVhQUUQrZXk4Qlg1WkJvM0grcEVncktUVjlHVHUrby9Tb1FiVFht?=
 =?utf-8?B?U2dUb2s0SnN5SHcvdWJENUc5U1VrUTJZMHI4K253WEdtRDl6WW9ncDUyNldS?=
 =?utf-8?B?WHRRK1V1MU1XVmlxcVliUS9WYWtYMjhHaEN6aFUzbFptVkptaHdaQmlWekZQ?=
 =?utf-8?B?Um1kYUxLQVd1WGVzZy9ZSE5IOXhSRy9SNkpHYWd4MDBRTnJERFEwRDBXUENr?=
 =?utf-8?B?VFVLNnpVcUJ1RVYxV3N0TSs0c2xneFBOQVpYbGFwOFFlcEhsTVcwQUUyRGt1?=
 =?utf-8?B?WTlobWc2Zi9DazJrREQxUFBsRTZIRHA1b2tUTFZWVnhuZmU3eEN1RzRkd0ty?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	fVoGk6WdeQitZsP3iI8Z9udYnj6lxbDOpryNJO5eFbLzccsBa1Tgv7YbUTnHoyNLixdoyVSSL0gmfYdqeGpGJLCyGVd6bMFpy2Jr8aE3oGRNSh4zV/xa+ZgjWCPAGO/92BcO7un3xCwEo8eXzQs32HimRtOA0N7xxeOv/86qpY4ea2z/5pEe0JhEcBNhQkSd1yy5rg4VcFN3sTi9XIe5n19/K7xuEpGj6PtOG99Irx9n/jYNEU8TcxbUEuBwSRuL3YR1RBk+GNENe+Cvdj4V5k8KP+xfDxW3b8+6du+DHVyurjyCoqcwZbwAw44km49nmulvOSuzE5+NfOAT6smbmHySqk6QIP+0iomiZVMaLSsE6qw8dIlMkEm4B5Devjw3nYgalxOqHZtNdpBIX0lwBT1a0JsVp9lRukUcXHKlcpB9Wj/c32mbKQOGgod7g5muHjr/JpjMsRsbdnnR4Xz6h8coa024LRC9BdVjKKnb0VTw51TTkkyxkk6Sj7ac+r7K4zsydyAycHxC1BMnysu/MoyHMkOj8YZe3Fdf8pxsEVAWUOD7n1HhyzekykqMxIqq/06AJiK+TZgf9dvk+hMjFxLFReG/1FSQGXk+7h2PdDAdemzCrVX2iPPA89bGmdlNmG930/Jd9FSR3ubWNXpu2SoWY4hDZNXKY/TAD+vsByrWQP/1KTDOjTpUL+3uFq6KckAOBIUpJD2QhQO19qHmwLELdW9z5S/43ugfCUT/Yn0IeM3Xqk3s5SOCd+leOXHxktvlPY4mqt4cpSVmX29d9A==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 096e6d55-2537-4705-e3f1-08dbc6b83727
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 22:04:30.5568
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AKMVhdO/F3pd1mMXHbgl8kiwzvorQiZvq5LUN881EXjQvCkvZpekyZctT2f0NDY+PNR1A6p8ApbD8O6Ya1o4mAwslK8hbnjcv9IvirVhTNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6474
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-06_15,2023-10-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=894 mlxscore=0
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310060170
X-Proofpoint-ORIG-GUID: fnslOTNOaZd8G37KyCZ-hve7Xlo1Ag7e
X-Proofpoint-GUID: fnslOTNOaZd8G37KyCZ-hve7Xlo1Ag7e
Subject: [oss-security] CVE-2023-45322: Use-after-free in libxml2 through 2.11.5

https://www.cve.org/CVERecord?id=CVE-2023-45322 was published today.  It reports:

 > libxml2 through 2.11.5 has a use-after-free that can only occur after a
 > certain memory allocation fails. This occurs in xmlUnlinkNode in tree.c.
 > NOTE: the vendor's position is "I don't think these issues are critical
 > enough to warrant a CVE ID ... because an attacker typically can't control
 > when memory allocations fail."

The reproducer is attached to the upstream bug report at:
https://gitlab.gnome.org/GNOME/libxml2/-/issues/583
and is run via
"./libxml2/xmllint --copy --html --maxmem 315229 input.xml"

The fix is in the git master branch, but not yet any release:
https://gitlab.gnome.org/GNOME/libxml2/-/commit/d39f78069dff496ec865c73aa44d7110e429bce9

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
