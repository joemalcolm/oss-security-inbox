Received: (qmail 22047 invoked by uid 550); 28 Nov 2023 16:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21969 invoked from network); 28 Nov 2023 16:20:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : references : to : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=Uy8e7JCTWYIa94nhCfCF9IQnmDXD/KMY0b71h8FbEFE=;
 b=oBiOK8CJStY5Gt6pQ0C5M459VjwHxI7QwWrAHTK3dpwo6Qt3o9kEzIcXJwS/HbRKgH8y
 U01vWcCZN4Uxb80URZOT11X/SFipTBPOWtEq4LkEYgwP5rghf5InuF5fj04AmNpx0he0
 EXNdJJfV6bl9mC8/VivEMbsZiaW2hzQ4oIPTkTa4RNZ3ydXFHErJwfu/Ii0qGxogGh5K
 n9018xp5I5oy4Oqs3F4DzHeCIHJYMFfE5k+H1b9i+jE7LHyomwxSG8HglG+dy4VjVVOm
 XS0vTgK9jJyCB8miaAl1ViE1dtQrmaEI+ZOUgYEwHZYPGiIH8I6buP7YSw6uwskubceF UQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aI0ATWjPtaaJHPj95DZkzK/zSLAuxgRUk1wQZknnd9eSG4EUtX9VVAGI+BAJ7l5ZXcXcirDx1MB1/V35mR9LPOyuSZE2Px9wPWsSGw7rCooeCDWhV68GEkp8ETHP3d9RmcGpHqIDGPTpEjHrGFynJJNRTUnU/FrZ84y5KG9At6N+crnNQZsQ9ZSdtcfJkS5H7572qezVJ4oCxzOrYf0o8JrNABbPgHfb+s83ZqHOag7S42cMqq8HRnfozx7RzGSVyzl9t5B3YZ4hu5HnOZhuggbZUcYrNhZ8YUM0AsWdFbPlcqGmKEltnfJMC7267nlV5k1FlaHDFp4YxtfxfrhgeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uy8e7JCTWYIa94nhCfCF9IQnmDXD/KMY0b71h8FbEFE=;
 b=gcmIb/InmANASD9dCz1sWx5iUHva8th/XlvVw7JbDrXA88mfKxLNoJKCG1XChoYizVWTZJnK9244bWUegI+qGMuvK9gsNNG0QwzdlZb8n9NQMrrehV+aRC79k/0Gqnta8legq2gD152t4bTX52PhHlBHz2Dxf2xtkHGkOdntjailXvnutv2mlMfKrDtAUUUrmLfphjre42LGiJtkYn9LYRXemEQRxZZZllqDOudlB748Mh7VTOYJJDTdcDNJrLt6PDEFmg3BB53zGrSVcLdyObY0egdY1CWjG7TwG53WCh+/Zb2z+7juHyrD+LBq/8Syv7Madmc6ZHdjQfa7hNiygQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uy8e7JCTWYIa94nhCfCF9IQnmDXD/KMY0b71h8FbEFE=;
 b=tcc61jKbTDJk1bm6ubxvE1j2g0nP1tmJXv07vPkCk4gQE4kD/b06eVnMYItVcOMoOVTlj2gtxm4bKSb24IziknQ2nGYam22P9ZxBa0NX0VP9HVO+10gRKCP8VeAh/tvv1QyDfnmuE5W3K+CoJ9qOaBlDxM4hkA+eVs8kjinh7pA=
Message-ID: <08dfa0b4-fcf6-4562-92ac-c992974c5d5c@oracle.com>
Date: Tue, 28 Nov 2023 08:20:41 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <c29a1394-1118-4b3c-a05c-484ab6957c10@samba.org>
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
In-Reply-To: <c29a1394-1118-4b3c-a05c-484ab6957c10@samba.org>
X-Forwarded-Message-Id: <c29a1394-1118-4b3c-a05c-484ab6957c10@samba.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN2PR08CA0007.namprd08.prod.outlook.com
 (2603:10b6:208:239::12) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH7PR10MB6058:EE_
X-MS-Office365-Filtering-Correlation-Id: e19f1624-075f-45fe-6df0-08dbf02df7b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g1KNrxTbLD9C7fYt2LxUMtC9rklGox7iCBnambKMxnYIdvZw1YlmJA7sohfybSSp20LTS0tEMWUaVe7CuwKvp2PLdroUxF0yWrnjnuiusuWVjL1qixhLoRtiGtjtZekiBA7TLS3uLJppr0GhTqw6oqo6NZD/ob+4LsvShVb6xTNPxAqag6BDqAyWExaaEswFNTCSCRZ5z/CHtkPHLbxawe68TBiMB+hTH/AAHv7PoWHW5T7g3Fq7GqtMASWJfBstYOst4ez0PU0OgbQJ3P1oH2X948A44mXwCbDL5NeTgLJIU0bCSReA06JeEhR0Gv7STi3tM+80cNYK8821fLyqRCT+kypThEAdy4mExkKhE5fs5dlxp44GjcKScLvEx3hePA4cRkUKCyF4SYi0JLguB0K1e3u5b05t+/BniaDyIYZ00NrgPv+6P03tlejGoMt/BK7dNli4MZ8IW/ARfGQSU2sPIgBAE/n4LxV0kZjTz5gufJPruvOF4a7U41oxRh1RvEV/0OGo/5OvDcPLSLF/Ky4oxanLE70mNzFDI1a290B6ZmpPx3x7Kba+ys59SeKX9UoMvQpQTp193tXiUjDOt5+SJQFNbMaN/qtPCQhthXrMz/BxRYb9S21X6MG1katlNhCETAv+scun0g5uWvWALdqnBSFiiTKCdbvXwGaCiSRGblKRW6gQCiGMcDnOlwQ3
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(396003)(366004)(39860400002)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(2616005)(45080400002)(316002)(36756003)(38100700002)(66476007)(6916009)(66946007)(66556008)(26005)(6486002)(478600001)(966005)(6512007)(6506007)(31686004)(86362001)(31696002)(5660300002)(2906002)(44832011)(41300700001)(83380400001)(8936002)(8676002)(66574015)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MFl6U3RyQllDSjVGZjZwZ1k4NllGQUVxVGxHazRGRXJGeXF2SmNsWVRJZHB3?=
 =?utf-8?B?aG1KUVNtZktNMmRYbVJIcUVBUUR1U3FwVHpPZmsyTG1UdjF5eEQ3ZmJJZGs5?=
 =?utf-8?B?dnVta1JnQXl6aTZuS0FxLzFXeDJKbVlicEd0b29ETXJaN0lOZ0RneXlPendi?=
 =?utf-8?B?SHRPdnVXTVVkU0lsQllYZHB4ZS9OM1lSUFFxNFBWVW5OS3RaRjhXYXV0U1Jk?=
 =?utf-8?B?VzJHTHNYUHoyYjk3NGU1UGVYNmk1ODlIUEpRMExFc2kyZ0RPai90bFprRzJz?=
 =?utf-8?B?ZHRGcmpPaGhTazBRT3pNUlZPQ3BObVp6eWo5R0p1YzUvQjNkbTZ1NHdEUFY4?=
 =?utf-8?B?SHQvakplanhSbGJPT091bEgrT2x4clc2TlNwaFNBeEg5SDZuYUE5T0dXVUZs?=
 =?utf-8?B?MG9ScXYrbmYzK2RFUnZkMi92SitDUlV2bTdUeEpiNWR2OFpyWVlnRFRKcWNG?=
 =?utf-8?B?NXllSUFrbEI0S0pqTythZDlIN1RBcG9SNnhzdEhqUTNFS1B0K0VwK3BRUEk1?=
 =?utf-8?B?Zy9kYy9CdXB0emxpTTBLWkI5dS9PMVh3ck5CKzJPb21KY1Z3cmMza1dqQVpP?=
 =?utf-8?B?bzVuTWZzSTIxbGZJODVobVBCeVpISDZiWlpCcmJsbjlKT1pPaE5nQjByeGph?=
 =?utf-8?B?VmtyY25kVGxFcmw1VCtwcWtVazVKaVlrWi9WbGZlRTFiODVCdUdRaUx0L2hN?=
 =?utf-8?B?YWZEZi9Oanc3M05SNkwvcW5tdnF3NjJtWWpiOWgzUEYzeEVVc09ieHRwSjN5?=
 =?utf-8?B?eURsRFo1cDJqVi9FMzZZT3JpS21kL2pGWW50aVp2MG5VcXpWRVVpd0V5ZTZu?=
 =?utf-8?B?UFJhUE9LTUh2dDRjSW1mRWNHVFFYeEU5UHkyNU1meGlsbVZVeVVwVW1WajdI?=
 =?utf-8?B?R3JNNktCREowZjdFRkdPTFArbTY2VjFXTHBNRzhVTHdCSWc2MTFaTTV0aU11?=
 =?utf-8?B?REFhOWFHdjRMU1QyS1VDQ2J1cXBhZDNBaERpeUxrdUhoWlpUVVVOVG5HMlI1?=
 =?utf-8?B?NCt1THVXOWxWRGUydGVwU1RzNnpxUExuTlYzMVkrSm9BdnpkQlRPK1A4WElU?=
 =?utf-8?B?RlliekRYcnAvOWp1c0dWalNER1NQMzY0M2dJcUtENWNzSG9qaVhmUW1JRW9W?=
 =?utf-8?B?YXVCZmpIdWtLYmxUS0FhMW5mQkJNVEhoSzduUFRTbjFsT1BESmg4L2Ird0Rn?=
 =?utf-8?B?NXpoeGxQa1RNYm0rakM3cGJpZTBUNE4zVVR1Rk5FRERwaE9CaDhxK3o3NThj?=
 =?utf-8?B?dm4xSUkveDNEemJKQmdZQzduR0xhQTBaWEN3UUpyV3ROQThMNjBEejdRWG4y?=
 =?utf-8?B?OWg1dE9uVHdzTE5yTERhOHdDN3BnZExTV1FpTUY4TnV5SjRNTmVXUFFXUFUr?=
 =?utf-8?B?T0FYUXlySUp0WnhLbEJkNVdpSW9UQ0w5SUhBQXRhZUx5Mk91MjlrOUNZNTJs?=
 =?utf-8?B?OHRONXhUMzBJa1g0OGJySkVOc0hKaVUrczRSLzdtd25VSVozQ1R1R0Yxbzc2?=
 =?utf-8?B?dE9hd3VlaG5tQ3JaVkZnVFA2NFM0c3NPVkFtVndyWGE2cFdZakNST1o2UVFy?=
 =?utf-8?B?azFXUXNZRWplajlHOTFmMGR3RlFFay9sRDA3WE9TUFJ0eTkrODcrSk91bEt2?=
 =?utf-8?B?Um1IOUlZRFEvVTF1YjBDVDJQa2l0QmlaWUh5RGNYM3ZvUkM0TnZSeHpiNTJm?=
 =?utf-8?B?SHlONSs1dVZhdndYUENzV3RYNkZWditQT0hzU3llWTFZRGRTNjN4anFNdUl3?=
 =?utf-8?B?RWFCNE9lcnFZS2RaK3lkd1o0N3pZTmZqeUViSjJjQ0ZuMEl5elVuaGwrZjBn?=
 =?utf-8?B?S01iMkdhaEs3c0poTzhZKzh1U1ZQdkpuRzUxN0RyTTZBVGRTQ2xSbkdyNEZY?=
 =?utf-8?B?d0VXZ2JkeWtrSGtDQ001dWNmRnpVdWVaS0M0MnJoK1djWUM5dmI3WmN6TFo3?=
 =?utf-8?B?YjROQXBuRm96WUNuakRPNERvV1BCQUl1VTRaVFM2RFB5V2dONGdmNWRUMWFR?=
 =?utf-8?B?aHhDYkZyQmxNakh0NHZBTU8vVnBSbzVkOFhld05CS1JDaEJ5aGpTNGFJdFpK?=
 =?utf-8?B?NmFwYzJQYno1UzNLRGNmYWE3MytFN1QvdjZ1bG03VjQ3NHp4bmlIcGV0WXdZ?=
 =?utf-8?B?dEdqZkJsZzIzem5qajdnRS8zdDJlYUo5SHZNcVVBK2ZTck9UM3JDcmJBbXJI?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	WrZhDidjRVgtgENSmI7YFE0WqLSuHuiC0EqYz/xICc/iZsyigeizGJVQeSD/FXaLs4g4fWTAvFZDfd6DEaex7yihDoEWmcpUbsM9IdwbO2pHcJgOzgrVV0exv1GP8vrKXFjvEIlSstBKdapnwnjSeybAMUwO+klsNMzi1NuIOA8YlkgOL4YB2aAQgc8xhNpdrVMCfcHH9+lAsytTXR0is/YwymaKHdG5ccffdHJKAFTTnLVK9n+rS6Pr0WZlQ9Syw4hcK67bMq3E4C1HzeU7mFcKkZSAeiyvmsf5jSYimdBaJgrI6er9ppAcyZq/81fTbSPKcYZIVncNOG72wp0Vw01d74t6d7AdCqvXQyw4411c6Rn73Euyqsz2Q9q5AVJb+aNKM3mkBYG0unD0SWX0RHwEimSn4DgBj8Na4+bA8ox+ckKtIUyoF0WvcVt5RovIumFyix8dcn7kF6I/vp5Nr68HZbXnOxg8E5dXUZJ+DFmDJbXEHUeElMk1MzM7vfSjj5KjT31qmHnFO9fxHLD+cyvpOfRTv9FKEs+dFy5oxQCx8QoCBOSs0t3ErqW1YO7M69AECI6ACBRVS21VGQ76uNm1HqMpAHo55j4LEjrfyOJ7mhYjwmOV0U7OrzEThqrPXHe7iSBn7rOVcFiblGLylVdh0AHJ4NnqtnXRtamA5bchNTi4lCAPj9Cxt4jnBXhO4YWJlpBJ3faHna8om4LJ4o4qL2mGzh0zTyCP3Dsg1oUAl3mL9QHcIX0Br2Oc/zhp3G7Rq9Zf6GrRXeMjgUn3zw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e19f1624-075f-45fe-6df0-08dbf02df7b6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2023 16:20:42.4135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nAubIOOE041DC1YKcnhhn1ERbFDDf2vO5lX2e+LInywPBxqD1gSSwydjf/rAKZ34GlyvX5eR4NdHGKeQZJPD3gLyEeeKK89J0ZTEH3rukFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6058
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-28_18,2023-11-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 mlxscore=0
 malwarescore=0 adultscore=0 suspectscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311280130
X-Proofpoint-ORIG-GUID: __j-ht6qJXnqJJLpIYJk_4lyYRYugrgS
X-Proofpoint-GUID: __j-ht6qJXnqJJLpIYJk_4lyYRYugrgS
Subject: [oss-security] Fwd: Samba 4.19.3 Available for Download - addresses CVE-2018-14628




-------- Forwarded Message --------
Subject: [Announce] Samba 4.19.3 Available for Download
Date: Mon, 27 Nov 2023 13:27:40 +0100
From: Jule Anger via samba-announce <samba-announce@lists.samba.org>
Reply-To: Jule Anger <janger@samba.org>
To: samba-announce@lists.samba.org, samba@lists.samba.org, samba-technical@lists.samba.org

Release Announcements
---------------------

This is the latest stable release of the Samba 4.19 release series.
It contains the security-relevant bug CVE-2018-14628:

     Wrong ntSecurityDescriptor values for "CN=Deleted Objects"
     allow read of object tombstones over LDAP
     (Administrator action required!)
     https://www.samba.org/samba/security/CVE-2018-14628.html


Description of CVE-2018-14628
-----------------------------

All versions of Samba from 4.0.0 onwards are vulnerable to an
information leak (compared with the established behaviour of
Microsoft's Active Directory) when Samba is an Active Directory Domain
Controller.

When a domain was provisioned with an unpatched Samba version,
the ntSecurityDescriptor is simply inherited from Domain/Partition-HEAD-Object
instead of being very strict (as on a Windows provisioned domain).

This means also non privileged users can use the
LDAP_SERVER_SHOW_DELETED_OID control in order to view,
the names and preserved attributes of deleted objects.

No information that was hidden before the deletion is visible, but in
with the correct ntSecurityDescriptor value in place the whole object
is also not visible without administrative rights.

There is no further vulnerability associated with this error, merely an
information disclosure.

Action required in order to resolve CVE-2018-14628!
---------------------------------------------------

The patched Samba does NOT protect existing domains!

The administrator needs to run the following command
(on only one domain controller)
in order to apply the protection to an existing domain:

   samba-tool dbcheck --cross-ncs --attrs=nTSecurityDescriptor --fix

The above requires manual interaction in order to review the
changes before they are applied. Typicall question look like this:

   Reset nTSecurityDescriptor on CN=Deleted Objects,DC=samba,DC=org back to provision default?
         Owner mismatch: SY (in ref) DA(in current)
         Group mismatch: SY (in ref) DA(in current)
         Part dacl is different between reference and current here is the detail:
                 (A;;LCRPLORC;;;AU) ACE is not present in the reference
                 (A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;SY) ACE is not present in the reference
                 (A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;DA) ACE is not present in the reference
                 (A;;CCDCLCSWRPWPSDRCWDWO;;;SY) ACE is not present in the current
                 (A;;LCRP;;;BA) ACE is not present in the current
    [y/N/all/none] y
   Fixed attribute 'nTSecurityDescriptor' of 'CN=Deleted Objects,DC=samba,DC=org'

The change should be confirmed with 'y' for all objects starting with
'CN=Deleted Objects'.


Changes since 4.19.2
--------------------

o  Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
    * BUG 15520: sid_strings test broken by unix epoch > 1700000000.

o  Ralph Boehme <slow@samba.org>
    * BUG 15487: smbd crashes if asked to return full information on close of a
      stream handle with delete on close disposition set.
    * BUG 15521: smbd: fix close order of base_fsp and stream_fsp in
      smb_fname_fsp_destructor().

o  Pavel Filipenský <pfilipensky@samba.org>
    * BUG 15499: Improve logging for failover scenarios.

o  Björn Jacke <bj@sernet.de>
    * BUG 15093: Files without "read attributes" NFS4 ACL permission are not
      listed in directories.

o  Stefan Metzmacher <metze@samba.org>
    * BUG 13595: CVE-2018-14628 [SECURITY] Deleted Object tombstones visible in
      AD LDAP to normal users.
    * BUG 15492: Kerberos TGS-REQ with User2User does not work for normal
      accounts.

o  Christof Schmitt <cs@samba.org>
    * BUG 15507: vfs_gpfs stat calls fail due to file system permissions.

o  Andreas Schneider <asn@samba.org>
    * BUG 15513: Samba doesn't build with Python 3.12.


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

         https://www.samba.org/samba/history/samba-4.19.3.html

Our Code, Our Bugs, Our Responsibility.
(https://bugzilla.samba.org/)

                         --Enjoy
                         The Samba Team


