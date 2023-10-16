Received: (qmail 17861 invoked by uid 550); 16 Oct 2023 15:54:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17829 invoked from network); 16 Oct 2023 15:54:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=LRX4UC1fUQd+R9AjKaNdkxyg9AVfPFOa0Hovbi1Sq+Q=;
 b=ul7X9Gz9g4U9VHXb+wWIMLIiq987L5ApfXLwNr55FiXDluz3DlrjcW2uqfjzeCD144F4
 2Q/kklkzUXdzXMpTjqRWXgzIj/cC7lJoqGkPcRIJ1xDwIaUCEtZ+4xEf1VajyHad+d0c
 fiYZyMR2zPU6wPMCArD4kjMZEwndVZQryPdxq7PrCmQdeCw/CF2Nj5CVCs6OcjYDw7FF
 s6IisggcGFP5kTVlWiMpTuDJmt4ZNv7U5BJA9OorIZDnubR4aiKBheDIJVtMkRP/YzL1
 x+FmxPYNH+Ka/NdoRNk6vzIkMzXYwd8jMyBr9o94bm3BphF5QXyKi3+qBRSUa/20cgjy SA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUzZU9t0yGySaKx4o8XpKe217WGPT3HyWDgJg7hWzDMe7/4g0UxRJ7ihvrd4SXehW6tXkxOGVr6j8EsX+Mep0tbQgQaWXYf3ACO/uatYs9K2OWQaKYQl1a1SuItgxi8CTyzwxyB//ZJfYmJmtSeRg9mHnwWRy6zluJiQ3AR9XUCitPrdwHim6edITs+TGJzIX6TjokI17OagiHycKI21L6vK/4VSgyMSo/pFiHzoLL8tXmcHeMA11QGsxwhHixiFxxL3nN6lhP1FXnYVWwEVfROZTM4nfev28PAENjSQ4tUWrtTWC+qbrtnTx7Q6XWESiU4dDV9774Oazf151HC3eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LRX4UC1fUQd+R9AjKaNdkxyg9AVfPFOa0Hovbi1Sq+Q=;
 b=XGf2RTt+gbhJ61LMxGnMMt9NCVBCEAllCvlQRe6duVXv3cR+GaaK3pYzbs1sFudd5wYdEBm9BmLh3zLOqAXEJbo1+Sf5rfS2Vu78PBckMU40shKIm148S70odOBkl9P/y23l3i9r49np6bVcFvLineeo1v8v/pUzme5q2CiuVLZ4JROVFQK9SbqR2V3PJJXdGJ+iTrT2cvn6H37eLIqN+ASVCNW6sUuw4+5qRoFT2jQ4m7ehhTgKKfVGwTVlUInPSfncTbxYXKAzTOAn4KODcqLJw49Vjp9gxskAB177YlwCHOx5RtVRluMaxUgaZj56R+7rdoTHynXeg+O8Y3gXAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LRX4UC1fUQd+R9AjKaNdkxyg9AVfPFOa0Hovbi1Sq+Q=;
 b=w51K/+3aINUbV17ePCpL2Vx7X5Q1ajWVr1vGm1toBqJtq4f2KrXyZIq+JbTMb6Ubc/GtDIZfb5FblqnJrtnyOwFc43BZY+1e+0IZRB9RgxvIP4K33t6mdo3A7wmGOM0kz3FLFi1An9iQTenDocwXF0YuFrMaQdHURHXtz808Dvg=
Message-ID: <40dc99e3-c447-471c-858b-98330127a161@oracle.com>
Date: Mon, 16 Oct 2023 08:53:57 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com,
        Demi Marie Obenour <demi@invisiblethingslab.com>
References: <ZSyUUSF_-3YbT14k@workstation> <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh> <ZS1CSkbTjDYdGq8F@itl-email>
 <2023101622-imply-tidal-b6cf@gregkh> <ZS1UPsZo1VyHDAkV@itl-email>
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
In-Reply-To: <ZS1UPsZo1VyHDAkV@itl-email>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0064.namprd11.prod.outlook.com
 (2603:10b6:a03:80::41) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|CH3PR10MB7805:EE_
X-MS-Office365-Filtering-Correlation-Id: 3eb4dea7-828e-49b7-0a9d-08dbce601dbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qUzYd5X1dhMJnxLiSMNCDggGX43PUqiNOz40RDzKqCwBwWrZHrwvipr5xS94sHYWa5+sp8ZhCZhYZ6R6ZMEGQOlCqBILg7/2kCiIW/OQ0uDHLK5uyzA/haJX+iLg/QM3OZpqFvN9EPPtLA+le5Bb6+gyhxwKt2PFUlo3NgjaW+SEEuslV52wPokk21l3gpwoeeYRxHVAOYyb1GFAvAtUivc+z4wt4UyWYTunks5mdYCKEeExY8ymy9iPciKipZga/KIAuTKbucePk18yYPlCZOXELWSItEYU7WYOW6/JRlOQvfXLm+Y8smDqCM8/VaLo9J8LH1ILWMiEDLGK4FwVkaqoBW2T0FcCOj9QzX7eBt5W4H8nTAeky/rD/WImM3kZK61W11/n4ri4Wc9VkPVJ4Z3tXz/AMaLL1dLW3F54yxQG78Un3GN8W8WsRhgoRFMhmRRDB5f4KIlPmCV//18c3nXF4STj/PQMwTXd7T8y3JiUAlpiMzg/NNGpcayAJ0Oimh2Ejw8kgcL+sUBSUlBAUY2Cd9jTiqvrtTy4SvZ+FwlnkLlHhPAR/Wj46fdMfwAh4AlpKL1pvzksTRJtbVgk38MreFl4XxXh6zbWtWM3D9PYkh9kisV9oNbZA0QxFTUkoLWnWSGHbKeDQ4iLj4Uw5A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(366004)(396003)(376002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(8676002)(53546011)(66946007)(6512007)(316002)(6916009)(66556008)(66476007)(6506007)(6666004)(44832011)(38100700002)(5660300002)(8936002)(26005)(2616005)(478600001)(966005)(31686004)(41300700001)(6486002)(83380400001)(4744005)(2906002)(36756003)(31696002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b05JL0JtaUkvc0tDVGh1RS9BVDR6cGk0VmZORzhwNVJibFlLSWtJRDhsYVli?=
 =?utf-8?B?N2RSaUxuSGlYbDhFUHFCQ0E5enh0L3NVODN4RFQrSzNjSE5DYi9vZDVwT1M4?=
 =?utf-8?B?TmZsdWpXMWZBZGlEUjRNNUNsWnBwVmRWR3lCemt6dlFIQnpIL0sxMGV0c3h2?=
 =?utf-8?B?KzUwR0E0NTlna21ZUGpqUkZ6T3dQVTNWbDVJUTcrRmxvOGRWQ241RUNTclk3?=
 =?utf-8?B?QzF2OUo4OW52MFpUV01ZcTJxcXdHeVhSUi82aDlPT3BDU2pEVlVJMHY2dmVU?=
 =?utf-8?B?Wm5zakhxWmUxcEEvS0NJMzhtejdocUVEYkZLa0F2ZldobitrbWFPd1IyQlJ0?=
 =?utf-8?B?N1QrWU9yUERhUjVMckVLZUZKRnhCUFE4dzZIYmpFTzNoemdjZExtZWs3eHZ2?=
 =?utf-8?B?c3Vqcy9JeTR5aVo0NU1TVjNWdUx6a1dxb2RvbnpLQk1XTlFTQXRoREJwRTJ1?=
 =?utf-8?B?amU3NVZlUkl5akQ0VEZIdUxCT0tKOFR5N3Y0bW5YUFRUcGkyUi9BYmkxKzND?=
 =?utf-8?B?cXpEdFI1Ly90ZzBDbnh0djRBQ0JoYmpleDMxaDJsK3JlYUFEcXdQVFMzZitn?=
 =?utf-8?B?M29TdS9FSEt2UEI0eEFXTi95Kzd4Mnp4V2FWU0pTODZkc0crK2tqRFdwSVJa?=
 =?utf-8?B?QmJQdUZrbVpYeDNnZ3UvVVlHcThWTUJQTkdlNDNhSG1uS3d4bWZOOGJUY0lI?=
 =?utf-8?B?bG9WZVVYTzhudEx5VlpsL3oxZ09sa2wzOTVVbDIrREVSUmdOTndQWkZLd3dz?=
 =?utf-8?B?aHIxcnlTWC9IMEpnaDExdGptRXZrNkErVGgzK0x1ODJTVFpMNW8yZFkwM24x?=
 =?utf-8?B?MUhLR1lNN0NER1JsUEdNWDVEMkV2S0dtcnlCTzRUbytvYjYxV21sR1NyV3Ey?=
 =?utf-8?B?anFqNFM4enRtdDFwYStXQ3ZKaVU3NjlBYm8zZmp3clVJY2F0Q3A3bk9SWjNO?=
 =?utf-8?B?Q1BRNG1uRWxRby9YL0F0SGhYQWUwWFVxVTJWMmJINTI5aHc2cnNEYTNkYk5i?=
 =?utf-8?B?VHIwSXNieURHTURtK1RiV0lCelRHdWtBcXNGWUd0OU4xb1VaaUdNblhvL3o3?=
 =?utf-8?B?U3JwamZUWDYyNzdFemJEWnNZYmR3d01mbkZHZytDYXFiZENneDEvOXVsV1FQ?=
 =?utf-8?B?UitaZE5Ra3FtTUxPYktBem1OZTZEZWxGMnBIMXN0Q2hqU09KTDU0QUs5a2ox?=
 =?utf-8?B?am5mZ3ZsS2FkRW51SW5mcnpnUVJLR3VyV09DV3BhSGV3RExjKzJVeEV0QU90?=
 =?utf-8?B?RGJrRXJRZzdxVXpiWnJFc2xDdE1aUjBBSjFyMDdwV0Ntdk1nQU1jKzJxYmlW?=
 =?utf-8?B?cGlOUmJGK2V0MnhvTTJpM2NjOUN4MDJDNlZ2cVFRMjBQZEw4WkVScUpIK1Bu?=
 =?utf-8?B?blA3d01tZkdibVlJSUR3Qks1MW0xRHBuaW0yZ1hrSDdjRElJcEhCVVMwWjNn?=
 =?utf-8?B?WTN2UGVZWERCQys3RUV2eDJvTVBObE5MVndlNTZwKzA0N3pBa1U3Wmc1VEdC?=
 =?utf-8?B?WXpkcjNHN0E5cHZJeEsvSUJJRHZNQUNlNmZBWXBpRWc1b1A1cmkzUkVrcTda?=
 =?utf-8?B?dVFrZEdjSmlJMFdtZWZhZjBSSGhoQ1A2a1JndjBmZjdpRFhwVEIvVDAwUmdY?=
 =?utf-8?B?VTkzajlWQVQ4U2c2N0pFbzlIcGRiZmFlaHdFV3JiWVVseXVKbkw3anRLWno3?=
 =?utf-8?B?dnlocVRzY3BkdE5pZUpqam9NMHJubWNGUjJPL1d1RkVaMFl3YmhzeVdaNGFY?=
 =?utf-8?B?Uko3QnJOMGtkY0ljRFFYUGZRWmtHbEt0UVJQU24xTk9ldEJ4WFJwV3ZrZU5r?=
 =?utf-8?B?bmdXRFI5azFyVE1MZjlHaWFoRVhSQWhqbjhNSDFUdGJsQ1g4b3lZZnM1VWFn?=
 =?utf-8?B?OGl0QnlRQVlKZEdtdzVURzl5Q3RuNVgrUGRmSmRHeEp6bDFLNkxwUUk3RkdB?=
 =?utf-8?B?ZFBRWkg1UEw3MHl2UzQ4WHU0UGlRaCtSamIvNHUxbk9pYTBnUkVXN0VTeUdX?=
 =?utf-8?B?bllHZ3lialk1Y0RlakpoUGRQdml0d1Rkd09mRVBybS9MSXErU3JHR1RHV3cy?=
 =?utf-8?B?UGdWS3N0dHRvbXFibFdZZGE3WlBJVGRISTRBdWx4cDYyOHo5R1ZLTnhlOUti?=
 =?utf-8?B?cU11MlBiT0RjbHpBRGRGNHM4OU04VE10ak9ZQ1hkRGFTWGwvZGNJelhRWWc0?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	4z6KMnQnkS7BJAtDi5xdQuRk0ehqbs4OQrDqBH87BHbdQ3WiT3iWlHvg6tARrHqY4R2sCwKfZMWQRQSiTTNX1kPgF5lcq8AKUtq+L/VMCt3pgKrqdmRhS24JYbpoRduIUhFyBXAPjRGfjHB6l3ovt0onf79Jb3UNs1UfIqypWBRaVLR/7Tr+PZfeQOgUG3K4puVyZ120hH2mGHh4qqCIk808VVmBd3SR0tYHObfssv9fpj8/2fGjDd6xje6oQTbEfCZdXOLmgfTvqWPO+jh+pkN//+o69XaTWT/gQjNwkR2q0VLnl20yuzaOvotnbBW3V6vqBMN6UCw3EeTZR0ygbAHgM1F7piia7bVuPcKulloz6vBcj5ji+KCzneYMKyGkgelc1DVCqAcrceAKwoOiHPvfUgJ+CTA39FUhQgIpSxKj2l1ZmVypHsJ3SWn67biUmO8FEu85nrT3fXDAoqJvmbH6XDD1fczzxd80/Z+GeHUZ0FKV6zyIlb8trE3ZHhPmAi+nBI3W7r9+gE6wFpqm4UvSvpdoyKGn3IknFBE/82l2u9ZQGZ8mGcvKDkj5vSMLHhCDNp3rdRvAVi94gNP2GJmKakrkXTOTg3nTT9qG+8bdFq4fRRLZt3FjEuhMgyC0UpVko70mZDFApcGQ1SR9qldMtyhFpUOQd0cabQ8d+erUE0trzWGZUd0fapX5zULLoSEcLVbqd23Xp+JRYREwXW71IB7+sMXb5uZMIFfzyR620NGujq2osEJ4AlcgMmkskl57SUhBoyIy0nbIqiPvfEBhL7PWwVhkvn88jt+8yv8nAtEhIMK26pVLhDTa/K1hG75f/ePNcdPyMgBariAbXw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eb4dea7-828e-49b7-0a9d-08dbce601dbc
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 15:54:01.5746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LbqcrF7xLbK2avK6GZssbQe8lY1Vt75cRI1Eq84FKCsqgpxyXA//sSX6Ecy5wBwSgSKQduakv7QsqY9MVP1d2wBOinR3LSKeNhFRAxuFJwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7805
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-16_10,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 malwarescore=0
 adultscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310160138
X-Proofpoint-GUID: VGk8f_kD4GzuSwalyLK6KY_Ar9rabAxA
X-Proofpoint-ORIG-GUID: VGk8f_kD4GzuSwalyLK6KY_Ar9rabAxA
Subject: Re: [oss-security] linux-distros membership application of openEuler

On 10/16/23 08:18, Demi Marie Obenour wrote:
> The result of this is simply that those who do not have access to
> lawyers on staff will not participate, which will reduce the value of
> the list substantially.  I suspect that most people who report
> vulnerabilities via distros@ fall into this category.  I know I do.

Perhaps linux-distros is different, but on the wider distros list,
almost all the mail is from project maintainers providing fixes -
the researchers generally contact the individual projects directly,
as those projects aren't on the distros list and can't see or respond
to reports from researchers sent there.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

