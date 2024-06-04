Received: (qmail 5982 invoked by uid 550); 4 Jun 2024 19:31:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5949 invoked from network); 4 Jun 2024 19:31:03 -0000
DKIM-Signature: =?UTF-8?Q?v=3D1;_a=3Drsa-sha256;_c=3Drelaxed/relaxed;_d=3Doracle.com;_h?=
 =?UTF-8?Q?=3Dcontent-transfer-encoding:content-type:date:from:message-id:?=
 =?UTF-8?Q?mime-version:subject:to;_s=3Dcorp-2023-11-20;_bh=3DsKK4POlycygw?=
 =?UTF-8?Q?q7If+vxke3PsAmA5OKZtsrrv9hIi0tA=3D;_b=3DeP4/BSZ0Tq1bTXDWRJUO2iH?=
 =?UTF-8?Q?Z1z/FF6dY643+V63zMd39qjmUIH5mTVbLaoCs6NkcmPdp_jtoqyY+jfs4z+iIJ6?=
 =?UTF-8?Q?U//zy2Ff4gSnBrh3b1cf24Y3okPIZ24nCNHCMosjRCunppsVVvn_Yi6dj24Ch2D?=
 =?UTF-8?Q?JJ9sLi1xL54cSzJNzjxDiue8gACljdqx/1Aa1GPMG68Gf25BtLyx+SE4f_IIVwe?=
 =?UTF-8?Q?3HEa5jQ6zGrm92p9jKWpDVu8FizdQLXY+wK3QApDED1qt9flJ/HBXJNCFJCoCgz?=
 =?UTF-8?Q?_346Je+on2zp5rp/ERDI1nXNKiTHT+gBvHfQej16LHZ6V2QjcEe5kAr1qAfdURT?=
 =?UTF-8?Q?emgmfK_Mg=3D=3D_?=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqCBXoIn7ZnCw2T2JmJ0nhofyP69tLj73b0oBQVqhNG+EpVVwvbHjTCDeEl9hUph0C91jqzLx0MWF6vHGzZtBIZc8xsl0FhpQEVIX4j5caqEHAuFMcgqkcRg3ElQmQwXHM+YdE8Y2jzBNoudfDhGfvbfeXem7CdoszhaZ5y73JUxtFR8wAHETli1l5DxujNoPZG6BpEasZHW07d2SLOtcQoKQM5oYSo9vnnkTL2DmV5XkqvwZ2Yo359CY9DniIKOJaluYENfJeQ9nXLL5hfFByVZahFuhI0BjeeOyhve/kI7mtVQFQ3glRMAZFiYfVFns1BZOcFmanlUK8laLfJjGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sKK4POlycygwq7If+vxke3PsAmA5OKZtsrrv9hIi0tA=;
 b=I+FkMOxOMc4UufGU90vozbIDlCTyzKWKY7RCDqjnvRTTaAWR3D8nyOqECk2PLJDV9pAfBJIaDFc2YsCNYx+kGYzVxD6KPVB5ayvxED2hpfYQRx6lEtuiNgSXk/wIaNxlDb7ANvmA7tweE9sRwZAP5bgIf4MVhe/A4DR8Ch86P4G2NR4o5OB7ymSokeR3V0VbBvZGNklCcuKY+R8r3RL6TIHSzO3MwT6s78iQ6FQMNr/U0kQpNmxUcchCULq0dGsviJgPmvAkKYCoHWQQ63RPY4npFtitGyI3V0lSG4ZN+s1HH0tC1m6dQW/GJM1QVkcff+j95rjO1UWWnabu6SgO0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKK4POlycygwq7If+vxke3PsAmA5OKZtsrrv9hIi0tA=;
 b=bYaO1equpeseyu3PDBAtgm1UZdJMfg2jneojpZvRk/XieSHPgaFcqTeLRcWQ8k+oRa9P/1EgW8yvJSaCKCqOxk8Jd1frtAiSf2iJ4CJx92UqBXhiFqp2IcvbTfd0TXc2ZYshm4t6iXrlhCXtgm9SLmWhg7fZvqZEpCVrBfk4AOk=
Message-ID: <2c4b009e-1b19-4894-af8b-f0705c8038e8@oracle.com>
Date: Tue, 4 Jun 2024 12:30:45 -0700
User-Agent: Mozilla Thunderbird
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0038.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:152::7) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CY8PR10MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 266e4897-c86d-42fc-2766-08dc84ccd7ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WHFaa01hS1djMm5nZHVTaWtsckNvd1ZsTWRkWlVTSWZsbU9qZ2ZuY3lXYlJT?=
 =?utf-8?B?elN2cDl4cWNEZWoxT3NQd1ZGS29tQnFhVTJ1N3NGaW5rVHBRSjhMdXgzMzYy?=
 =?utf-8?B?MmFLTTZ1QmFQWGYrM1Q1Y2hrSzRjc0s5c1RDaTFQdEtsVXE1TWFTMjFJSm4y?=
 =?utf-8?B?aXNnOHo3QjNnOUlHVVFqWDNhMFRmdjdVcjhMQ1o1aUhxaVJORlpkcnltSDFM?=
 =?utf-8?B?VEt1NlZzUStGMzhLTmFRZW52WkRmMWd2ZEp4WnRLS1F6SUxsZCtJTUtPSXhT?=
 =?utf-8?B?Qmg1T2tZTG9KdDEwUjAxODBtaThESDFURTc1YVp1Z2dKSnQ5Y09keDYrVW53?=
 =?utf-8?B?ZTgyMC9hdDlDQXpEdXZxMUNueHczRXhxTFNocDlSMHpxaFFUcGhhSFB2Qnph?=
 =?utf-8?B?QWdMa0ZSc2luT0laL3VZdWp2Mi9wWDVpcG5pcjRaOXZpcVJmR0dGbkpFT28w?=
 =?utf-8?B?SURjZmM4bUp3NUUveG1Sa0tRZVdtZ2lDeWRRc1ZNamdiczNKTVdKcXVucVNU?=
 =?utf-8?B?bnZnRHVGUmpsUk5xeFNzWUZqdFRPbkE4L1ZVTUhkRVlXNlJDN1MxZ3R1KzE0?=
 =?utf-8?B?Vk1SNFQ5SFZrWU1UV1RLUjJxZVBjWW9WbDNpQ0FoVk9tN3NqdHJ3RWpQNksw?=
 =?utf-8?B?NStqdHhScHdSR2VWSExCck5DN2N4eFEvMTdreURaNTV3dnBudUFBQXg1ZUZ0?=
 =?utf-8?B?VkxwRjZGY285K0FzWm1ndUp5ZXhLK3l5QThPdVkyMmNqUjFoWmp0WUgrQ29a?=
 =?utf-8?B?ZXI0WkNSNytOU0ZlVWpsTnVXZzN3UFBKK1ZRMS95T0ZrcXVIWlhmcjAzMVdR?=
 =?utf-8?B?RDlDbVl0aXByWldhVXRPRDN2aklnNnROMk9MQy8rV2RPUklOZ1VNVEI0ak5W?=
 =?utf-8?B?VjVSVG85Y2hQV3V4MlNvd2JFQzVCV1BJQVJ1NGNZSHgzdmNRNVJRS09GZjNG?=
 =?utf-8?B?WkFqWWdXazFoeXd4SWgyTW5IQTdNRDhldG05blVIdmhNSG1OazRvN1RObENn?=
 =?utf-8?B?bGhRdmdtY2RPTW10cmhLTzFHS0tvNVZ2RGZCT1ZKWDh5V0U3QzlCVEU4dVRQ?=
 =?utf-8?B?S3BYSXl3UmFINHJtZzFrYWljbnBJMWRLeVJxREVJNVFpNDg3OTRDZUJsdnZq?=
 =?utf-8?B?UldEQ2x4blNCMUR3djdLU0s1eVlWVkpnN3ZIeDl0ODZvei9TNGw1VWpnSStS?=
 =?utf-8?B?Z3pTZzR1cngrcHV0azVoR1RFbW95N3E2NFlBT2NhSDJBMHc0Z0hLWnJMQ2hi?=
 =?utf-8?B?MlVyOTBYMis0NmpRVjhIYXdoaTY4b01GaHNGS25qU3E5MUNnemZETTN5cThw?=
 =?utf-8?B?bDAzR0NLVmtydS8wa3hacU1LMkNOSlpzOCs0bmpZRjl1VytjQ3MwdlhTR0VB?=
 =?utf-8?B?bENIemlSWmNoSXAvME1ld0F5d1ZNWlMyaFBCQUw1Z0hWdHV2VEFmanp4eW82?=
 =?utf-8?B?SXY3dDRnb08rY1pzTU9scEQwVkFSVDdsOGN3Y2pxZjYxZFptRCtmaXNlMVBl?=
 =?utf-8?B?d1loQnFjVlh1V2FTY2JLemt5Wkl0TmpBQnBsM2V1Y2FWand2V29TOE54dGdX?=
 =?utf-8?B?MlFsVjgzK0IzNDRacmdrcWw4OW45VHNQSXRudGFIRkIzWlFGc3dPeG8vcDZx?=
 =?utf-8?B?OTBFOHBaRkJUT3VrTVNveVZtY2RRMnBBOGllZ3JuZ0VSMWpJbVR6VUVyWVpE?=
 =?utf-8?Q?htp+kWPnqTB2hffSgWJn?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y09zYmNMclg3NGlVdzdMOFJMR3VPMkZ6RVdLTWNucEg2NDlTdi9GWUdqQ25S?=
 =?utf-8?B?Qk42MUJDTmZEZk15NGV2Q1BxaTVlT1FWSFFMcEhHS1BDVE9CVnUyV0VUTVhP?=
 =?utf-8?B?eFE1WW9kZEJsclZMMFdaakIrRGdVNnBDOHUzMlJDSk9UOW95RFBHVkxVeHFS?=
 =?utf-8?B?VytVeEd1aTIxa1pRZHc0eVRJSWdpcGc4czhoZW92eE9Uc2YrTEJZSFEzMkxq?=
 =?utf-8?B?UDdiS0JFcVdSTjhVWTJhNEs3M0JidHJQRHdiNnFBWTF6UG51OEV6Mlo1UVgy?=
 =?utf-8?B?TldmZUd2OUI1N0RMUHlBWkE0bmdKaG5VWExQekNkUVIzVXI1SkJsMDlpdm40?=
 =?utf-8?B?V3RDREFFb255Q0dTd0FuRGlCWEN1dFJxTlJTbitIN0JXUUNTYXBkalZ3Wm5j?=
 =?utf-8?B?SUlFZkdraVA3RGI0M2ZpbTNYUlFScWVNNGQvUjEvWDVxenBPSGNHTWdGRm5o?=
 =?utf-8?B?cklaaFplQVZOd21HT1hHMk9rTlVSbmx4anptK29Manc2NkY1L1R4NzlwNDhr?=
 =?utf-8?B?QnFQQmJmNXhOTXM4czRqUHZScmRmMGNDY2FJSEdFK2NRelJKbldwRGQ1M2tM?=
 =?utf-8?B?Q3IxcnhXMDN1dDNibEpyQkZpRDlWRnMrSnAzWTdsVkJiMUs3bXc1MzRveGxo?=
 =?utf-8?B?NlZaeWhUSDN1Ymt6Rm9nQ0taUm9yU1d0RVBIY2lCYWFjd3NONmg4dzFURGRp?=
 =?utf-8?B?QnQyYzdMQU94MTlFTThLVDA5MlJNdjdrQVBDUE9wZUNDVDBkemxyNldkbzk0?=
 =?utf-8?B?UWFJQ3ljaWpKRWRldG50Mk5lU0w2RDNkNStuVDF0d0diaXFFbkoxNDVwK3ps?=
 =?utf-8?B?M1RqL01YdXAwbkRxazVWYjdXWWd4b0Jvek9pNTMwTXFTVVdOaUNQK3NnSHln?=
 =?utf-8?B?dmJ5R3dCZDUxc2l5ZUVmcnFSMXNKKzc3MmxIUzJyVmMyWWU5R2lscTFDK3Vo?=
 =?utf-8?B?aGNFNnNsVGN5ay91ZEZOanZ3aGROZHdJRVV5emxTd1F5TmdGQlVDKzdTVWhU?=
 =?utf-8?B?WXRLVDg2RFFvM3FrcWw2TG40UUFlYzg0STRLMjZIeStQQmNKci90Y0NwY2Vh?=
 =?utf-8?B?TmxEaFp4R3NILzZpVVJaeEMxYWFQaVB1THorMG16VWJPa0lJTDVMaXlxbGhj?=
 =?utf-8?B?aXBUdXlSa2d3aEJpTm9MZjQxWnQ4bFNsSVB4eTFIcFpoNTUxVXJDeVEvZVBu?=
 =?utf-8?B?dUdYclBIM3ZBV0dWTHdsUUY2R01GWnhZZEM0RWRJSzhaWTQzeENsSTlmMWg0?=
 =?utf-8?B?eUFpNncvdXJzQ3ZjQVErSFFFZmxwZkZydDJtN0FCMlpWSkZwNTFiWHNhZWxE?=
 =?utf-8?B?U25ibWV2NW04OER2TnJEUzJIWCtIN1hVOGo1QXdQTWxtdFpNSDBvNTVaV25s?=
 =?utf-8?B?bElKR1dqUC91Z3hDaVJMTG5aUTBrcjUzUUgwckd6WGZsRmZ2NjNvS1pQSjYz?=
 =?utf-8?B?dzVDVEdGR1ZNdldGMlphUUxHcWR1VTl6Rk1qQWZSVjR3a3MxUjZIakNtMHds?=
 =?utf-8?B?WlRPYUZoVkovNFVPS2pWK3R4TlIwRVlud1pvWmxVeXoySzQvTzNGc0pvRTlm?=
 =?utf-8?B?M3ZKVWJQb1d1TmpNR3dRdEx6QzJZaEJVaGJuZ1gyK0txUkN0dGlYNzRRVFlH?=
 =?utf-8?B?N3pYM01IZmxHTGpmb0xCekYxRHZEaWVrSDVZSUpRVGFOVFc5VzhiTkpqU3pH?=
 =?utf-8?B?NHpPMjR0KzRXWXRGRUU5OE5nTEo3SHZOcGlXanpadTMzVmpBTFhOK0NTUlVF?=
 =?utf-8?B?M1pUWDdVVktKYW1rang1RWo0WUhGdXJyVUdhejhJRm1Xakl5Z3U5bVhnRFlI?=
 =?utf-8?B?WUNGYzdDS3dxT1NyT1ZKSGV2QU0xMHdHa2Q3ZEJINDdmVUkrNG51blFWVkhX?=
 =?utf-8?B?M2NRUG5TYWI3NXliVDZMN2lmSUxuM1owdVhmbmRGNlNjZ2VZRWNnLytGWEMr?=
 =?utf-8?B?T2FFRzVsNWJhUzVRdmJkUTZjYjcyY0xGdmtNZFdBMm96VE5wMllKU2t2Yk9W?=
 =?utf-8?B?cVhZRkVUWW1HUXg3ektUT0VOdGd6cHA4L0tyT0VNemt2a3VySHZzMTFqUmlm?=
 =?utf-8?B?ZW4ra2pEa0xESElkbnZ4SUxuNjdIUEMyQi84S0JITTF3cUJ4eWR2MVkvUUZJ?=
 =?utf-8?B?NHhqVE9jbGxUNGxndkZZK1EzTVVHdjdwcTN6Z3IrLzZuYnlpVUEwbHNnNTFV?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	wFgEgIInOVc1Z2eqo80TRPovRlpDlXkOuXeNKuui90tx47r+0VEy1ZUNhYGhzSWMbcOuDi5ULeET+/8uZdDAZuTW9eg3YtAoMezesb0Cd/FduSCxciPekDdXUHGTLl/KAeboV0tbbK4nbv4eRv2uYvMrrZy0Q2UsgCdl4XohvXp2Eng83fAWB7jH/QUmbSPqcQiAxznYIRWaGY9Xnby4f2qS2px+Rgv/m4LfuTkq3QrIGr/k8bgCOnYVx1vbk4dkJU2NBe8eY5JnITrXhjGUZW0WA1vYRaT7cma2yVSC1fc0lrOniecxjSifZAq6dj1c+IZPLuDx0/7+JmYR2pjdMRYJAwThGLA3DMjeRjmro5oLLPTLU6MBzt62F5O4CSTjNMjQ+Iom++wU2uZXJuSQswu52bkcegPtTK4zLZ5TehM/bk5GAHO6B/bkQ/dsRc9gtugQ8rEHRS1Xs/zG8HS1gRh0ZorxR8/eHqZ1byCHneftlMDIff3CTdu32RC3mLOGnqXkIRxak52luOLt7FGo8ZXO+BWyRNNn4WVdL8x+yHqq0QbQXTcpwnqLusm3jxYWELXOyCA2dp0UBm9+cecWnsCX2I8w2U9twp7HkeG8/aU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 266e4897-c86d-42fc-2766-08dc84ccd7ab
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 19:30:50.8344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NbD7UFF8VxZTRYxlo5+9N2yW/i131iq9Zg3KPp0CIE8alFWYNei/pZebMcKRSr41Te6fkMUjwMtEi+fsieeFHL2m3u24xtj4Hkr57Chnehk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7242
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-04_09,2024-06-04_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 adultscore=0
 phishscore=0 suspectscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2405010000
 definitions=main-2406040156
X-Proofpoint-GUID: t6q6QKFXRSieOabXCMlbeboD81IOUIBU
X-Proofpoint-ORIG-GUID: t6q6QKFXRSieOabXCMlbeboD81IOUIBU
Subject: [oss-security] Go 1.22.4 and Go 1.21.11 released with 2 security fixes
 (CVE-2024-24789, CVE-2024-24790)

https://groups.google.com/g/golang-announce/c/XbxouI9gY7k announces:

> Hello gophers,
> 
> We have just released Go versions 1.22.4 and 1.21.11, minor point releases.
> 
> These minor releases include 2 security fixes following the security policy:
> 
>   - archive/zip: mishandling of corrupt central directory record
> 
>     The archive/zip package's handling of certain types of invalid zip
>     files differed from the behavior of most zip implementations. This
>     misalignment could be exploited to create an zip file with
>     contents that vary depending on the implementation reading the
>     file. The archive/zip package now rejects files containing these
>     errors.
> 
>     Thanks to Yufan You (@ouuan) for reporting this issue.
> 
>     This is CVE-2024-24789 and Go issue https://go.dev/issue/66869.
> 
>   - net/netip: unexpected behavior from Is methods for IPv4-mapped IPv6 addresses
> 
>     The various Is methods (IsPrivate, IsLoopback, etc) did not work as expected
>     for IPv4-mapped IPv6 addresses, returning false for addresses which would
>     return true in their traditional IPv4 forms.
> 
>     Thanks to Enze Wang of Alioth (@zer0yu) and Jianjun Chen of Zhongguancun Lab
>     (@chenjj) for reporting this issue.
> 
>     This is CVE-2024-24790 and Go issue https://go.dev/issue/67680.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.22.4

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
