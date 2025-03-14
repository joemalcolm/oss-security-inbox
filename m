Received: (qmail 16002 invoked by uid 550); 14 Mar 2025 18:13:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15972 invoked from network); 14 Mar 2025 18:13:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=eZYhPSSLGx8oe9f6
	fS143oqo+ieMS8opZvRiUcH1930=; b=TKM8xRBx9z1OHjN2Xftv8LSRFvzTCTKJ
	55/yG2fJx9R3GFcm4zQSO7wS8V1+MxsnZxopgV0v8eC7zb+0hlAvnwMpafearni4
	RQrQnbqqN3GxHxXThZz1eTNeprV8bGVfosbHzl+nROiyETfy6pitwR4bVzY2tl3Y
	991vFtSk/kf2whtHagsNf7VI2AJWZgEzKS+3aC9eiBmTt6JeQ9I4zPCwj9te1FiD
	U4eOHNEFXxoMuYYTPw1JU8hlbuSJbgbgb5QkDWMp1gCwsJn7JDlN4Ea94lLp3htZ
	rDxaqIOpZNihuhPMiRXUrOv5LN/0444QftR+4dRxf8lF+qi+OD0+/w==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IigMQOVNZVPv2LfgvkfeLgjxb12q42EYB9syvTowtY9LvHDaIgVUbZbw39whDxRIsO6BwvlHKv8OW/SiwUpjq9JRTyEBKzYsuJMCGGQUW1v3OHq/J946l/tfX+Z/nwJVA2u8yfHTPU9z2A8B9QTM5iNGCzM8WFe3HCaudZkhqc1QSD0Ar4X5lsEd5NV/XzXsuh2ygwzcegnvrFlAwH4P6mUBhyYT3mFsjz6jaGhAws/gWnhZ3FWWqdng3l1lEHfdcsN/BsF4hcMK54WFsLcu3BICl8wfAVuOLRtCu1e1QMrpEEBQc10VI3Z1ICUe+gDk/jY+jPzm1TI7TjrdoEdB5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eZYhPSSLGx8oe9f6fS143oqo+ieMS8opZvRiUcH1930=;
 b=aksc+3QSIpzNT767bgdpJfFmo97jdfKhk6TKHt0CUvfITrjEFB/jIq4NLWKHFP90bV7aSgx/DvympwYYFl5giEyhU9HqjVNRCc+zi0a1545SneUyTJE8cEczG6ba9Hg3omXjpzpfCQwGE5E3V1rhPW75HKtzWUyFWY0ua/j0syEnNkKXWsbxnyFoQy2trM4qMXbdI3d0/kiinU663aURSjpApW/Fp940Jo73w3kKiNG7VokYXjr5ROYkXhrGcCxoX2/YwdNT07Qe2VX3R5Nia4XL1CmNUzlR+4a0lg2Ni/Ww4+j224Gl2jQjqLK86C+rfjeuyy0g8cPZbfbZ78FXMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZYhPSSLGx8oe9f6fS143oqo+ieMS8opZvRiUcH1930=;
 b=dubVilqWeRDOu3TzaePGIggAl4Q/O/tPH/JMbEa2dQ8CNmrBK4JBbt6lM7og5DlrZMijBujfttLwr27g7LQctCWDGrUmt6TwcgVCW4DpeXxfbJu6RtUq4UtHa9W0EaHNWI+zTdAwoXW70yOhgDS1rkq4CIe31w9PiLiL5p7sURk=
Message-ID: <bbfda8f1-4808-4164-982f-9d65b2b3f915@oracle.com>
Date: Fri, 14 Mar 2025 11:12:57 -0700
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0266.namprd03.prod.outlook.com
 (2603:10b6:408:ff::31) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB7288:EE_
X-MS-Office365-Filtering-Correlation-Id: 17910066-6965-42d4-bb08-08dd6323daae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MTRNMkQyNDh1MFdiYkx5anZQSUpmbWhnQUdJRDFhazdMejArYm9zQW1ucnhy?=
 =?utf-8?B?WnhtUDlxczQ5S3NIcTlWT2k4dGFiZ3UyRGpyVFpxT0R6b1RQcS9yUlcwSyty?=
 =?utf-8?B?SktTSjNKWkhzMlVOWncwRi9rRndPWnVGNW1iVTV3eE5SWDRnaUFROXd5Wnox?=
 =?utf-8?B?bWVBMHZUdjVNQ2ZIZXlacDBIUE5ia0dEaEpXRFAzWjhzNkVpWXlNdUtOOUN5?=
 =?utf-8?B?U3A2cjVaeUg5VHhNazU5ZktKRGFqOE8xSXRZVjFFWFdteElFVzNYUERqTy8z?=
 =?utf-8?B?dnJUb3lRK2EwNDNITGJIMVlUTlN0OWY0MHhQT0tQVG5EKzRJbStLZnFpN0h0?=
 =?utf-8?B?VVV0ODRSWVIyemdFd1c5c2xzR0pwVE1SUitLTmJqaENKbjBPR09vRlJNTFpK?=
 =?utf-8?B?cElJUkpGN2NNSHBUM2hHSmpGYXZ2ejFjK3RpQ3hCd1dhNlZQdVBXTzZaVEd5?=
 =?utf-8?B?ZzJlNXpqY2gwUkRaTXUzbERDM21zMGF0c0tXTHZISnJ5M3htd2lKdHcvUWFa?=
 =?utf-8?B?K3RXVWgySkF6R1FGYVlhcFBzZ0YyVGJCVVJDSVhHbWMrL001Z1JZUTFQblgr?=
 =?utf-8?B?NXBBZmxPdUlxbFdjWWRiY1hBNXFNaUg4elFpUnJrNmFGbHp5Z0VadWlRZUx6?=
 =?utf-8?B?WFQwOHNISXQ2VWlnaGkxU25NcElFd1Q1b3V0dnk0blh2clBpWHVnK2NCbk5p?=
 =?utf-8?B?NWVseVlYQVQ2YXJLOTVHRVQzUkpVVHlLRlAxZDVmWnZEV1M0RzNxcmNCVmJL?=
 =?utf-8?B?YXAxbjRCMzJwTGdsdWNhMzl2MTJzT0ZhblZPOVNaY3RoL1J3cy90WjJQUFEv?=
 =?utf-8?B?ZFhYSlJ4bHpUY2RKU0pCbTBvMGNFeC9qVXBIVGJXNmxPZU81eENhOFNFOW8y?=
 =?utf-8?B?ZStabDZCN0tFWTdXY0NJbllEVnhhbkVRaGFmdEU3NE4vVDdtaFRBRWkrdCtW?=
 =?utf-8?B?ZW0yVmxNOFBLaGJsUGpzMUN5c0M5eFhYZzNrMjdMbWYwaWZNNVRLd0FwaHZN?=
 =?utf-8?B?OE1oWmdIcHFQek5Tci8wSHBRNjZicXpRRC9YVXdsNXFSZVZORnhYZllXcG0z?=
 =?utf-8?B?Z1UxbVdIcEt2MDBlK3hjbXlMbU44NzlNTXdhV2Zld21obVZ0N1pVeUdtYllq?=
 =?utf-8?B?Y09oMk10czJWM2Z6YUVEYys4a0JrTWJ1MS83QmJDdUlhcmxlTEJLcjl4cmtl?=
 =?utf-8?B?QzR0YjRlMkNoK2JKMDRtdVByaDJPOHNoUnBoNHluejIzK1A0SmVCZk1TMGNv?=
 =?utf-8?B?bGk1aHNkQTA4SFRMSzVPbGtPQU9xM3F4ZWRKK1BrQ3hQdmlwSDVuSHJITytG?=
 =?utf-8?B?c0xiQksxRVlJOFphMWpLQ0pOYnZoeFZIdE15MFY1THd0ODNsaTdoUkc2ZDZz?=
 =?utf-8?B?YzlVS1RCZlB0MXBMRWlTVmxDanN0dGpaM0RkT09pWFdRNXpVWFQ3VWlhdmEz?=
 =?utf-8?B?RVNFY3QrMFlBMDNEK3RFTDRnbWtzZldUcExFc1BsVmlNZU9DbmNEVW8xVjhy?=
 =?utf-8?B?ZVl2SSs5amlLWGRDV3V1RTJ6UVR4NlpObXNLdUZ0T0gwTGlFQXMrZXp4U3d5?=
 =?utf-8?B?S2JDK0N5SXRjZ2xva3JueUlXN2cyUFlibXd5UkZoeW95NlFnOHpjMWxIWThr?=
 =?utf-8?B?NnFWdUlHVVd3MFZiSlAvY2M5dllwcGI5UTVoYUJONnFpNks0UEljQXdzajNB?=
 =?utf-8?B?VHR0QVN6U0hYc0dFVmxINmZldHdtblZCSUdxTGx3RGxlWWY2QnY1Ykw1d3JP?=
 =?utf-8?B?bkxhVWxaNmFIOW5wVHRWTWxsK2NnL1pHeDUwZk9Fd1h2S012TTRHR2l3QlZ0?=
 =?utf-8?B?aWxkZmhOVU5GRU41T1lFdz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eGkzdkltM20wblJiaHh4aysvQ1Q4aHFwQWVXamR2UmU5WUVNcXlyaUUrQ1Ez?=
 =?utf-8?B?bGZGMGhYMWhPTjRxS0VJRU9aSzdqQ1p5MU04bVF5RFN0enZiditLMzI5ZnFv?=
 =?utf-8?B?dFgydkovTVlaN3FHMG14MVFJbkpYczZhMjB6RlZSSlpncmtFNlg0alF6N1Zu?=
 =?utf-8?B?NHZoaU9Wb2FzM2VNOG93YnhIYmVwMkE2WVVOelhHT1ZTS2NwUUEyWWV1cjJ5?=
 =?utf-8?B?Vm1RbEZLbiswTldHWFIyNFl1VzJ6TmFrN1NVeDBucTRHOEN1VVMxdTNudVh5?=
 =?utf-8?B?ZHk1VlBOd2hBaXBFMGtWdjU2USsxai9NMmdCVGdyMWtrQUYrNUJFL2Z6MDVT?=
 =?utf-8?B?anpsVW45NTVqbXdSRjBSRnVCb2R1eStUR0tQbzU1UTJvQ3hCVVI5d09IaE5J?=
 =?utf-8?B?OUxsbXYrQmVDM1JIaCtWZjFXL0szZFUweGpsUXFmSVJxRTVIODJNdVd0SEJY?=
 =?utf-8?B?V1NKYWp2NzVOSnlTMmk3VE9YQzkxckJwenp5bngwcno5aXpaZG5lN2pES0Iv?=
 =?utf-8?B?UVplQUpONDNjUWVDK3VCMDNnSGRtb05VaUpRaWFwYm9uQXBtaVZSLzNCTVU0?=
 =?utf-8?B?S2RKY0M3b2NiMkJrYnA0ZndOLzBrbUxSTUNaWU9kT205V0NpOHR0S3pLc01w?=
 =?utf-8?B?akpVVS9FOG00ZndmV3c0QStETVZjL2sxNGo2dHhOL1VTMlFPTVp2TWdLNGhZ?=
 =?utf-8?B?bk8zWmdSTk04LzRFQzEyb241SGhQbkJKT3UzcjFjMlBaWHRZUmpuekFCaFpx?=
 =?utf-8?B?VE9RYXhpRlI0R2xWYS9ib0gveGV2aklEeTdLNUp2Qzh1RE1SSWJ5M1k3bXU2?=
 =?utf-8?B?YVNDMjNDQzNYNlpaWWNITElTWUxZNCt1b1Fmbmh3OEVVQ0wwejlqTFBlQnBk?=
 =?utf-8?B?akxsMkJsN1EwakdEK1dveURpL3cxZDk1ZkkzZlJJOWdwRWV2cGFBRHYwQmgw?=
 =?utf-8?B?SFYza2RXVTkxM3lrZG1LaEhwWVBZdjFTVHB2b2FLQnJ2YW9qVHlxdDIxc2FI?=
 =?utf-8?B?d0RUNG41Vk55Q1dUdFUzZUlVMDVIc1J0Z1p1QTBCa0c2TS9PT2xaOE5PSDNS?=
 =?utf-8?B?dW9jRHhielplUEVEVU5pUUxIeG9HMllMeVEvWStTUGR5Umc4ai8vZTE5NGIz?=
 =?utf-8?B?dktaOUI1dmUwUThYdjBubk8waXJ1U0lIZlFvaU9OUUZzRjRXRmxiTjgvazVj?=
 =?utf-8?B?T01HcnVWOHJlOVJhVk1QWktIT0dNcDRiaktQSmd2azZVWTJuOU12d1JTeHR6?=
 =?utf-8?B?TjZjV2JzRDFwZkVxUlFrR0dXQ1F5bm1PcTF6TzVlM3FtdEd3YXI1L3dlM3pF?=
 =?utf-8?B?RkJoQUkrc3JjZlZJdFp6N1V0cHZjZzhaa3BITDB5dERFYUsyZkNTY1UrRGxN?=
 =?utf-8?B?b2trRkdNbG13K2h3WWw1YllFcjlRTWZhWnJFQXVnamk1OWZPTEcvY1I0Y2ds?=
 =?utf-8?B?UGVETmdzVjFjbm1iNFRVUXJtNnYrZ0MwVHhqU1h2QkFmZFp3Q0lNblZXSHNI?=
 =?utf-8?B?WHdraUNEV3pOeFhuZ2xqRlNjSm9sa3h3VEFzVE1JUGlQc1ZwYXRWbUxMajlD?=
 =?utf-8?B?ZXBOS3I0UFZGckJsc09CYk14bW13TEN6VUJhcTJheEp0Wmk5M0Q0dEZJVGVB?=
 =?utf-8?B?OGwyM0tUUWlNQmt2ZWZIMzBXaUY3NGxldkgwYXpNOERnVDdjcW0zaGlWaWoz?=
 =?utf-8?B?MFo3d1ovZ3BoZ1dCaUs2alc3VGt5Z09ENnRGMEJlVHN6MzBWOEN2dHBycms0?=
 =?utf-8?B?aXNZT3JmVytmc0JxTjV4aU45K3E3bTFiK3V5YmdFeExYRytTd1M4b3dldWpr?=
 =?utf-8?B?WUpDNFNOOXhwdTJMaTRWdE5YejBuQ1NjaG5xQm12ZWZkUXJJcVdJOFIzaGtJ?=
 =?utf-8?B?MW9LOTluRmkyck9IcVBOUWN4Z29tcnpCM2FsS1Q2dDRldjl0NjRNQnpDeUpL?=
 =?utf-8?B?WWpzZlhPS3BpS3A4bXV2QUIrRWVyVXduZ1RNTUN2U1c0aks2a21XbnZHKzNu?=
 =?utf-8?B?ei9qRGZWV2ZkYXNJS3Z4L2FOa2lrOVA5aU1JeHNpMVF4V2F3YmRQVGlZNFdl?=
 =?utf-8?B?NnJnbzh5d1JMU1NlQWdia1VzUnUzSUNKc0RHZVB3VmtaQkRNS3htdUVWV01p?=
 =?utf-8?B?ZWQ3NFdUd0hEdkVKYXRuUTNhTzZEbWdZNnZ5QWFlbkJFcUlzQXBiY2R1MDdy?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	mj8awt+Njpy/gqi6JKSkvBEm5XnCEEPKk1veQsmTohoEWnZ+/5bTh2T0A3c+oQdRCiRcBs1hJk1leD8hpS/T/bIDaZ7Yt3xoFNJgxiJ4gWCepB8vlWU9HyhyrOySTz7x2FMiHVdAHmWf3v3kV3xPfG2A//4Lgih51lnFEdAniX24+qNS5FTMxY9r4IG4O1r5vwUDxR2yq2GU+szmfu3f9jtPaLGwBAdypexhg6E126utsxlaXY6N1SjbOcQ9T/9GVMWI9Bmo0klD9TM+63jMVobDdx8lzA8jDbHY6arvXR+Zum6MWzGgPb7NdyHIvGLX6825DKmzYJ3+DW0u6Ttqozodq+GhTAIAQyq90LqSWwpiSyrlBoMJIWSphWbPIn1RcTmjFHNnauQTWdSndnRqkUhceA37fSVY7aClYRrm2gyv8x6v7BbzWk9cx+PF//QNp3uXjywc9n3jgbX6GrdzWvLCSTAELFP27G2GXiF4t/OuFuV1wbC4Pajv2BGdg2/9vb0BLnA5JdSKSFuNj+HCZ69m4ebG1GC0Xg2Y7m4O3NnxgDowcblVBYoBFdSdaeMNXyxS56Kbe9oqChlUW3UAL3SxbaLi6CKB44cEwKrPbFE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17910066-6965-42d4-bb08-08dd6323daae
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 18:13:00.1734
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iT6bhe5LDNuwli3u1BvySk23KcLUPUhsR6nbZlcN0fAZQ8Mp3z0TMlyku9HUpy/lm3DYObJoIMQuxeoqgffv9ZOOw4X69U2jbEO5LtfRDK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7288
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_07,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503140142
X-Proofpoint-GUID: tO42z4Ndh8RlwTOtBkbH9dmycV39VdH5
X-Proofpoint-ORIG-GUID: tO42z4Ndh8RlwTOtBkbH9dmycV39VdH5
Subject: [oss-security] PHP security releases 8.4.5, 8.3.19, 8.2.28, 8.1.32

https://fosstodon.org/@php/114156354494375611 proclaims to the world:

> 📣 Announcing the availability of:
> 
> - PHP 8.4.5
> - PHP 8.3.19
> - PHP 8.2.28
> - PHP 8.1.32
> 
> ‼️ These address the following security issues:
> 
> - Several issues with the Stream HTTP wrapper
> - Use-After-Free during request shutdown
> - Out-of-Bounds read when using XML_OPTION_SKIP_TAGSTART
> - libxml streams can use the wrong content-type header
> 
> 📝 https://www.php.net/ChangeLog-8.php
> 🎁 https://www.php.net/downloads

The Changelog link includes further details:

Fixed GHSA-rwp7-7vc6-8477 (Reference counting in php_request_shutdown causes 
Use-After-Free). (CVE-2024-11235)
https://github.com/php/php-src/security/advisories/GHSA-rwp7-7vc6-8477

Fixed GHSA-p3x9-6h7p-cgfc (libxml streams use wrong `content-type` header when 
requesting a redirected resource). (CVE-2025-1219)
https://github.com/php/php-src/security/advisories/GHSA-p3x9-6h7p-cgfc

Fixed GHSA-hgf5-96fm-v528 (Stream HTTP wrapper header check might omit basic 
auth header). (CVE-2025-1736)
https://github.com/php/php-src/security/advisories/GHSA-hgf5-96fm-v528

Fixed GHSA-52jp-hrpf-2jff (Stream HTTP wrapper truncate redirect location to 
1024 bytes). (CVE-2025-1861)
https://github.com/php/php-src/security/advisories/GHSA-52jp-hrpf-2jff

Fixed GHSA-pcmh-g36c-qc44 (Streams HTTP wrapper does not fail for headers 
without colon). (CVE-2025-1734)
https://github.com/php/php-src/security/advisories/GHSA-pcmh-g36c-qc44

Fixed GHSA-v8xr-gpvj-cx9g (Header parser of `http` stream wrapper does not 
handle folded headers). (CVE-2025-1217)
https://github.com/php/php-src/security/advisories/GHSA-v8xr-gpvj-cx9g

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

