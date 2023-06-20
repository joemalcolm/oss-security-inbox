Received: (qmail 14174 invoked by uid 550); 20 Jun 2023 22:47:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14148 invoked from network); 20 Jun 2023 22:47:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=jZgJvuxL7V3lYUTxDPQODHhP9eS0AIzR5bBFoED9brM=;
 b=0URhi/kvAiq6pNOyexRZBQuzRZ/HpSVH4lWf+ryM+2lRGmPfa05cLUNvSieVaZD5cJp2
 UpTzbce/nCcJI5wMgj7pkgGXnTKMe5o3tuyIwGtk666vEpPZmQPx9kb1626P5qDwYlJE
 NGH1LEMkSeuuy9wxjxrB5aj/l1OuYrmEi9wOQhPYB1ZaOvkZ6l6zCks8PUdkDxzcAVyR
 EL+uhwcdRo2U5om/o9n23N42JCSKaFmwnckLuQfSYZftlp9qg5E5Nqxfca6ZX56ccu1U
 urdawUA8juWedIN22CwXuuFWcG0RyRrmf4dgqW8JuHZe+U0I14FwdvKaXRwTbZtv6pKd Zg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQYxhcyYOtlAyfk0mvh3rPNSesDEOlUNYaoBxjVjLvJgzkLRHZ68RUUOumax4cJPi9QGwGAjqn5RPdFdz3XyBM7sGUS3Ju7MUcxB6S5ykcAhN2romMUCtnngvYvCtnChYF7JpUjtFpp/77pd5xQlHGrZqrXpT/UMYS/7gk9+te/18NUuT9PTVNodXxIpKjS3nsdcik1ytwY+MrMuK+9AYEClG+YGqQMC7lnop51Armydy1NjJm1WSxGMZqJV1kd5VW0rChnGPt72DT81fNW9YBkJfsYgr3eMKH+zMRgjRr02i7kDcS6LpbfOXUoesAfgAXQr7VDKHDCjxGOXCN+ulg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZgJvuxL7V3lYUTxDPQODHhP9eS0AIzR5bBFoED9brM=;
 b=IoRut43MzBSUmrC2Ej+H2Be58v1biBZ9SvtEl9k+ZL2jFXTX6l+90S5TUzLSwM2/HsBjFdh1t3CQBbPODhnebFPo5a9ic4uQVBg7La4RU4afu9B2CGT2cV8fsUz0PdavtG3ktqZ7QloFT3FM4Et3LjTjr5SsgU8Ozu+Yx7AETiREgkfxK2Dk7MTKu6TFrb/V4K7td/1YKBSdnHaGeKlf0vjsIhjE3JqoE2HMcUdzkuhas4T+kiTGRCPBXWLQvscBmVjFqJL1tjzC9rNgGek2L6zWKtrk8JiEM645/R9gMHsRO3UekSARbsMY/U6pGIAZWlMH5s4Lbi2XbQ3Je9c6VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZgJvuxL7V3lYUTxDPQODHhP9eS0AIzR5bBFoED9brM=;
 b=XSFcFocSp0A4weLTp7MKYZx2L/hFAm/gLyBRQIuR/OxoMZcpmbYqajTMyqVu5NzolHxah72/ZpuCEdCHeuVBPan23DgHLbVO44OKaIeaQvhVbBbUxLkHNffHydnMsFSfUT1e3D4TefzJnGYCojUPVDnRciu6L1/J6ZEZuGuifeE=
Message-ID: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
Date: Tue, 20 Jun 2023 15:47:28 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0003.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::16) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|DS7PR10MB5373:EE_
X-MS-Office365-Filtering-Correlation-Id: f5b829f3-b1a6-4952-2250-08db71e054e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8Wh0w1G89VJr8f1A5iQ2tN5LIkalEzqYsMxvVjXxVtm+pV5RBCOvPPkFpd0B5G20lEN5xfEif1iVTQXpfnde2/2CbLWj8KzZo9+ukchSZaotbuxnbPEdqhd5w3qGPDvS6xWzS++Z4zgYSyqYPR7biNjbe/oST1W14kmkJSBsxRr4NOUl+AnRhnPzPUOqKYtf/TnuVg8KWTpjQGL8XtBUvsf9ChGYjLFpf4z6NbV2MXjkzTFxsacSoutdOiptB9GsKZEpPiTFC0UDm+qFnPtAhJ1nOXRzGpnxaika+UMpfIMP+PuxfWS7WnHgfvlwRJZZWCXD/dqGOOUEKpjgLEhX0us+R0hR8APSnqItNsXGOr74k80bnlvKrAKXSs/roMxV8hoGTfeSCnz2Is4GUiafq23lNZo4AINSZ82EGpRFXLM18E6owajH7yjf9j6ITUocyn0rpsGpBARD73QLseI78XZj0WiA0V5oM4kbPfZMFKfc8UPdEaHGwX6eR13RAHHA1PzOMDh4oEkCtQ4q4VeEAJ8qLT0daVyEpXwGAzvLA/2fjxbLEGLdSNxPfpuQdBsAngso6uQbXDNIsZpsdi+w20EGq9pw6bdT7Z6+97g/VOjCCzokjK21BmD1MSJifIfvQxM6KzW4mNB7sISvEVocepme3PMlFb33OPFqdDd+BPUPgqhRZNN4O6GLnMDir2cw
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199021)(2906002)(316002)(4744005)(8936002)(5660300002)(6916009)(41300700001)(31686004)(8676002)(44832011)(66476007)(66556008)(66946007)(478600001)(966005)(6666004)(6486002)(6512007)(6506007)(36756003)(186003)(26005)(2616005)(83380400001)(38100700002)(31696002)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eXI2R1dvTTNsVzNEQUxtdVRvYWU0M2h4eGxBNzhjaTNXdzVWWXFKeGQ1U3I4?=
 =?utf-8?B?dDJyTGFBWTliZ3dYZDZ4UVhSUFdYbXVjMlhVYit2bVhTdzFaS083R0wzeWc2?=
 =?utf-8?B?bGRVcDZKT3NFMnJ6Q3I2RmJrRXQwNnRWRThEZFBJREpxTFVubS9VMTZVOExx?=
 =?utf-8?B?MkdBWXh4a0s4dk03bFJZdXlSK1pZTXV0bzBxc0Q2eURWYitBL0g4SjVQNFJP?=
 =?utf-8?B?YVJtR2FnVFRlRzhtNlVzVnI3NEdwZ04rMjQrakRtL1FZTHlYNDZrL0ZSU054?=
 =?utf-8?B?eXJmMnJSbzBMazhkSXNqaWxnOW1NaU9tTkNEdTFURUNnc3N2bTZua3V5OSta?=
 =?utf-8?B?L3RnM1ZCUXVCQ3FiMVBLMmdMSGljV0VhblhaTDc0NHBBcERDREdhL245dVhr?=
 =?utf-8?B?OFlsQ3VRNWNFaXpsTXhpc3FDVXp2eCtDNzVnRnQ4VjBucVBQcWt0VWlyUjdL?=
 =?utf-8?B?NGxPR01WclVBTXZPelhmSmdkbkhJcUFJVUZmRnlqMmVmLytzQkhLNlVET3hx?=
 =?utf-8?B?NCszMDBHZXV6TVErc0JhdnRuMTVKbTZYVVpoQ0UwcWlyeUFxQ0d6ckpieFRN?=
 =?utf-8?B?aHlnazBobmJ5SGVDTWMvM1pxdTl1clJSbUs0eHF6NkkySEVlTUY0NUJKeUR2?=
 =?utf-8?B?Y1FhYjFYbnJNa1NVVzlYUDRpeGxZY3JQMDNTUGxmNHdJN3FiZ3NHZkM1Y0pi?=
 =?utf-8?B?OWZRTWlSNUVEbC9sVmZMa01BN2Q1dTdVb1VXcURoaWVhOGptVjhPYjB5L3ZH?=
 =?utf-8?B?dHN4NlcweURpdmdyR3hCU2dySkw1WHBLK3FVS2wrSHBmcWtsUHJGcWpXWkZY?=
 =?utf-8?B?TFlkb3pnQzc3NmM4dUJ1MUIrd2dWc1VUWmYzU25mOHZmSDJIM0ovL2g1Q1pq?=
 =?utf-8?B?YU9mSHpZa0hoYXNRaC9ZenN4NkljanJIMy9pQzVidTM1dzZBdWdZWUM3bDFY?=
 =?utf-8?B?UjhVVWg3MlJIdmV2QmpNeG9WK2RKRUppcStVdzJHNE5MclJRaTBvSHVITzAr?=
 =?utf-8?B?SGlZOHVuYm1yS0JMdDF1TnNsck9OSDc4RElhME9SNEdpeERIaExHcHZwdXZx?=
 =?utf-8?B?NklyM2dlRURTYXREcWZhS1NMYWE1bXhoMmgwYXRiMkRFb0Y2eGZSQkJ4WTRD?=
 =?utf-8?B?K2RYUjQwMjlMQlRKeHc0cWdoaUdRc2czZVhpem5obS81ekNnZlNrOEhiSG1w?=
 =?utf-8?B?RXJ4ZHRZSENWSmEvclZ6b3g5T2p5czA2aDJsbXV3VEVsTkt0MDNsRDRwa3pQ?=
 =?utf-8?B?L21DUnE2RGRaclErZ0I2SWFoZi9nTnBDZzVsWWRSazA4QnQ0eTN2Q1pRTGdH?=
 =?utf-8?B?VEsrelI2RnNDem0xWGQwYm9WdjlKZ2pvS3pzb1pUZ1NOMXdzK0QwMWVvSU9i?=
 =?utf-8?B?OFd5VXR5dU5kWktWdGwrVVNIT01ISjNtRjZEYUl4UUFEaHo1U3BRQkpHSkRL?=
 =?utf-8?B?OGFvSTgwUUFkbGs0SHErazJrekgvL051NXpXYitiaVdVb2dweEw4cFJhbDdm?=
 =?utf-8?B?Y2VUdjFJYzNkcDNucm42SGRwbmdyQlhpaDEyREhaRzdoQVdXNDhPRWRYQXZU?=
 =?utf-8?B?QlFQNGovaTZkK2pDR2hJYUVNcnJDYm52QVhMU0dyZ3diNC96VWZIeEMvVDNo?=
 =?utf-8?B?ei9KVzZRWldNNU9qSFJjUUNDY29NUmpyRWdKNlRqL0V0aHJsMFBxMncwcEli?=
 =?utf-8?B?aWxldkwzdW5KYzRNTnozTndIWDh4cDlLU0UwNVVJZTRPL2UySm81UFVpL1Er?=
 =?utf-8?B?T0RVM3BlZktuYSsvZUhVZiswVlB1U0FPYStSMnI1VE43bWpHMWZucGFzcWVL?=
 =?utf-8?B?aDdWajJpYWt3dFlRSE9JalkvZGZFaWs4ZlhpMzc2OGo2L3huV2FGYThwWVZ0?=
 =?utf-8?B?RkpQT0ZwYnd4ZGgzdW5vMk0vTk4zYzBTU2VTLzMyWExJU3NrUHVua09DMVR5?=
 =?utf-8?B?eWZ4N2Vlakd1V2ZlZzd6dFlrN2xja2R3aHZiMTU5V1V5MW9JZzdXeGF6d3Rv?=
 =?utf-8?B?ZFd5aGNjN1JpVFVNdXhRS3pxbk5WY2d6YWtVS1BsNUd0YTBubzRIZXdhVWJW?=
 =?utf-8?B?a2owZFRVcUp5c24wL3E0SmpwVXI3bTNJaDN2Z2lxRlAzZWNIUDlnT241ZnpB?=
 =?utf-8?B?MW53d1YrSUdHM3E0dnpsd1NWUnEzUmNOZm0wNEFrQTl5ZmJYVHRGZENqMDBl?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	M3D2gEpz9MZSloXl2gbM6DNGAUsF7Dw1wSFUz6wUJKxQkKK/arBcCG9XzHj9nhP8dRY4iWQY4AOsl3KwDaPGfy5FSNgRgkXkdtASSL/kx6aMdnX+JDuAT8i3GTx8YM3WSLCk1bldMVTIZt+j40J7HLUPeo+pAKsrKuNfAdUINS48wLQDahyVkP/ZJIvEXv1kvq4wxm8W1EdUloLVYdcxMD5itE4jbeoPNBILmC0W9Yl+7FDtPzoQPVaw4FrtCtORODH81vt/NmsjHKloctD7BjN/6GaQlZNFqq7x/fnqfETbve5jln9u4P7Yqx0pDIzNmFQ9J8a2qyyOTsnQbPSgjtXPjWUpFYSTv3Sm3uUQvWvzMMg5kFwES2t86TBCNBb5CET0G/3Ut+GAAf2EMqu8W2MNxmv2YN7brx1TiH+Qt4hdLcmACb0x4cvwoGlk4kU6P0MMGxov6K4HQkXx6IMgiLTxbpyBvy4+cWSdAQV9jKJTXTXDejCRQxHIEHYWn2UwGhyWxsUp2FfEyWh1xK5mow2Ky2Lw/i9e3ccklUB6v8FFJXASOdumVKjkgYt5EXJKU0hR7yvu21GvOR39lBFkQwdl6re+od1TxnCACbxqzxmbBcgGBXYoOguCOMkAW1kGhCrd3pY0BBxd8/8/3PIeXkhgnjVBm5zN1JOhTlWAHXS2wTuYmnqUjMhPNTgqpTNsrS5mBrtFpiwBaibumgj0im8rSz+gMt7fl6DtB0ZV+T02VrhD0bczHZ4XMDp1q0ebDUQuLhSy39hFxvHeihNUWw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5b829f3-b1a6-4952-2250-08db71e054e7
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 22:47:31.5946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n2Fuxuy6ADLBvnc4mOC25uDwxUCqkLfRnEclV7dNBCqqwGenkA9QgpJ/dXTy0V8BObgSAQJ79tkhlArwWxBGLkKAqw+zey5H/vpKRzpOKfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5373
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-20_16,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 suspectscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306200206
X-Proofpoint-GUID: WHLvjUkIw2JoC8vvvPG2SP6WRaJFDzBG
X-Proofpoint-ORIG-GUID: WHLvjUkIw2JoC8vvvPG2SP6WRaJFDzBG
Subject: [oss-security] CVE-2023-31975: memory leak in yasm

https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out scanners
since it claims this bug has a CVSS of 9.8.

 From what I see at https://github.com/yasm/yasm/issues/210 though, I can't
see any CVSS higher than 0.0 being relevant here and think the CVE should
be withdrawn.  Am I missing something here?  All I see is 2 objects of
16 bytes each not being freed in the fraction of a second before the
command exits and automatically frees the memory - in a command the user
deliberately chooses to run, which runs as themselves with no raised
privileges, on an input file they provide, and which exits after processing
the file and doesn't hang around keeping that memory allocated - not a bit
of security risk at all there.  (Yes, it's a small bug and is good to fix,
but not to raise security alarms for.)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
