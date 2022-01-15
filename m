X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2820" "Friday" "14" "January" "2022" "19:22:11" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "51" "Re: [oss-security] 3 new CVE's in vim" nil nil nil "1" nil nil (number mark "U       alan.coopers Jan 14   51/2820  " thread-indent "\"Re: [oss-security] 3 new CVE's in vim\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] 3 new CVE's in vim" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13602 invoked by uid 550); 15 Jan 2022 11:49:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13584 invoked from network); 15 Jan 2022 11:49:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=FdoyyKMzTP/vZRnHP/9H3rdPWV/hcG/mmDHLUeZ5fcY=;
 b=rGS/tIiw0fjuwqka9MxOf6DHik0Fsc/yMe96bKEEEU5lERxfRFYUubuDka6BDnl4QJIn
 Tp7kUS92Xk2qYXEqcN398I2ny2116kWf0/wZNbs9kbnRk67P4mIIA3oZgnAAu0/zbCvF
 tsQXjBfqFATP1IyLeencOBMwCRBhQLILeEwzcKDQ02QpMYLRvDUmStNWvikIc+nkSn95
 Zjb/KB+ITCVgxmRyesm7IMkNU2wrNc/NWDBzutP5OuZ2fyI6RdoryAx4mQJDcf/MBjXH
 2BxxXqh9IRQ3g7Mcyrpq2io2w4vASHR3T35SZjw4mq32G7x3FXVIoE8Jyom4IV1CQkIN kg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adOnbo7RlKrUTkCLVpqFRZ2jHY9BnUIRSmCOEHBcI5Cso5lzy8da8Y8669NuN77YQHY6No8TXZ0xn9J3fvqh1n6PqlE5oLoir25hVDW/Ynb6zahFRM+FN25DXDvSK4E4INe+vS7GyX5Krw3wNDoqAJuEic2bQTbWvZ1WQvi+zHY91WV4vniJDfKOgdnEGjqzmxD/KGelR9ni783Ue7quK4GJezzwmPuRnWZ4VYhk2j3QWsGwivg8GyyPFfzsOjiQFzCOHADeUum7FAi6Le4tkyWmpMKtaFBc0oIQaNC99PiOHUIGaEXIsPeB31chSLvhJ973dN0xA1WQBa/vKA0UWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FdoyyKMzTP/vZRnHP/9H3rdPWV/hcG/mmDHLUeZ5fcY=;
 b=I0rWmlIDCW/uqs1hr3SHbeaM2j2Ao4ec10iCVHBil73TfkLUaiMwQa/W+DWHY5mplBvlqNP9HLcNuN/GDueFqvyWVrfdb3H603OiwoEyID3hr8KAQpmsHlUz/1PhdRyXlbi7EZPbx135fwiD0F/J1tF5rqjwLpC7otVkbZMch6NIUdvZ4OLUnEcicHw4h8ZztvpCWglY8blkmkZH+Jk/99/7S/86HRnCmVyezfoNafXBqwulYsusJeuraMP53m58ls+YQYjNx7v69IoohiPIGJM4Gtj+uIlH9AEkG4EtcZRtfPU7Raqh+0qrZn/mPLva7rZAb4BSiZxGNiYVygAaLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdoyyKMzTP/vZRnHP/9H3rdPWV/hcG/mmDHLUeZ5fcY=;
 b=f3PpRNsGm2QOybQXT1SDI68T5IRUj2ZWya/5RGkUq0iWL1dUJNUWvTe4/OmkVk2JSuVMZ5/+SfWT2ujebNGp7mzz0UHQn34Fdh5/VHnRDFcbg4FSySN1UUKqyIakpqr6QarLKva5C0I3UgMUMFdgHl7simIKRz1BrURMeijENew=
Message-ID: <f893a62f-75b3-3a50-62ef-af1f0302e137@oracle.com>
Date: Fri, 14 Jan 2022 19:22:11 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <51bbd9bf-fa31-a1ac-a667-7b4b9b425623@oracle.com>
 <102a76f4-b371-8c54-7dcd-78010b428849@oracle.com>
In-Reply-To: <102a76f4-b371-8c54-7dcd-78010b428849@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SA0PR11CA0014.namprd11.prod.outlook.com
 (2603:10b6:806:d3::19) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0b73245-1375-48c6-3a25-08d9d7d639e1
X-MS-TrafficTypeDiagnostic: BYAPR10MB2967:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB2967E11EED7449505C566D50E0559@BYAPR10MB2967.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UIzXH7KcEg2bWliDNr44DnfCvIeCp+cvROGSkQb/aPhBIggRICZvNTvCc1Br5K+f0QrN19BaTv3zPZXanP2b7QdcT0tc8hsPSkjsLqzZ7yHI6KyZ/w0vUo1t04JJM9jTBL9QvT/L3Xvjuh1NQBuC038voZSZxJkgC7G/MQS/Yh1ou8Ual1JADLv5ZuKMJOx3ZUFzEUsoGkEfbY9gSGFN+Rm2PY6LFzXgBXu0xfP3dmctge0RHfoCjdYxPlh5bkjDt3pZHIZp8McIjz306hjU69Et/bQxE0SPi12GkxmwkNvMsEbyrbreGTlJ+67N6H3YiOAvRHF2cxqiQ2ruor0LCr/p7yaZVeGlhT9XUPYhwVvQaWrFg5YN0eDaJvQsXE/cE3iChrDiPVZrhYB1+vvF/ApZwzaN64hI6hWuvRUrSgPyYe6h+TQJcjxRpGkrXkr5S8TWlvGx0Yjjhfp0bVk0gWCwxGQO3JQ0iOzWRFR5Alf0TduS2TsDY9LM9y6qSKcU+B0T9eIpPwRS1KzjqaR43O7mL4llqbc0VigCBGCuZr4e3gJpmPalHEb4NlAYgZF9M+IQCxiUqtPs7CPekvumATheKU8B67WVcjklLUVJuaIp1JdG5/ELKbMn4OL70JWymHkp3q5tSq9g1eDevoos7WQG4j8NNhk++2ElphkLrSKJRFENgmivp7BHFpnrCvvR01NxiGH448hV78c+JK8yQP70E6gZMEhVUk3ayFp/cqwWR+3Vf087AtO9HQihIE0EvdJv6hntbczzdhKbthZyqI+keex6q2ZYv0uoFzCCATtI8CKFMMvLjDv2PG5nDzcw9NwQUVJ5facYwh5epYbrD7cJSfxkE66WOVYvu74uUxo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(6486002)(36756003)(8936002)(66476007)(66946007)(6916009)(5660300002)(316002)(186003)(83380400001)(6506007)(53546011)(6666004)(15650500001)(966005)(508600001)(6512007)(2906002)(44832011)(31686004)(8676002)(2616005)(86362001)(26005)(66556008)(38100700002)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RTFOZy9SK200TTJEM3pqRitVM0NNU3AvWjZ1aDgrMjRsL04zN1MrSnRlZkQy?=
 =?utf-8?B?ME8rNXV6WStxN2lnUUF1czI3Ty9TNFlxaURRRk9xbkd5aHVHcWJWcy9hczNE?=
 =?utf-8?B?aXdwNkpDQUZKQ21nUVVzTG5XSE1odkRIUkc3YUc2ZmdwM1Jma1ltc3UxMjNN?=
 =?utf-8?B?RmdxYXJWRkl3VkRPR2NwYW85ME92eG9jQmFOM3JTUjVEZHdZNVdPTTVZSEhq?=
 =?utf-8?B?NzV4c0Qzb253cFhLejJibzloM05zcjJ3OHRtT21HVzhoU3hpWDN2eEZqTHBO?=
 =?utf-8?B?Vk1vaTFWb1BvcjQxZ1B4elhsUlZORFkvTDJrWFF6Q0tleWd0OFRxbnBaQXJK?=
 =?utf-8?B?eW1qYnZrK0NwTkFCTy9CNjhJL2Zuck5tZmF0cG1CQ0s4Z2g0aGw5UHZqbjg1?=
 =?utf-8?B?eXMzUlVPYUg1QUlJejI1c3doaWlZSTFsdVJ0RVpzSVpjbUFHblI2ZlJhdWZE?=
 =?utf-8?B?d29tSUtRSUxJYXI5V3UwakRuRHkrNS9wY1lJM3JaQm1yM2sxTzA2WDZVN1BJ?=
 =?utf-8?B?dGthZ0ZtcFZBaFpYbDkreEQ1OGtMRCt3SVlNTmFyOC9iU1lkUkNWZHJ2NGRQ?=
 =?utf-8?B?ZU14SUVTWjNVZTBoWkFaL042YmVqUmF3OS91VXFOam0raU9mbWw0TUVLZThZ?=
 =?utf-8?B?TnB1OEM3S1dIbkE0L2Z6ZzNlRmQ4UXlkQnFsUWxlSFBpQmVIdTdrSmkwc0Rh?=
 =?utf-8?B?UEtSS1RVUERvVWFhL1drUk00KzBmYWlkUng5TVFqQjl2Z3FibTRuOWltQStV?=
 =?utf-8?B?QzNmQlkwNGRLbzJ2WEVCZmtFdmk1NVp6Z2lYLzU2YzA1V0taSzc2eE5ka2w0?=
 =?utf-8?B?TzVHdTVMOGFmbms3ZE1QWnpQK0RWSmRmMS83YWxoMjhUQWhKOUticG1aRjBD?=
 =?utf-8?B?VGxoaGZTSDZWWmQ4Y2dnS3dpZEtrMXVZNVhYVXBDYTJTckltV3prZWlvUGVV?=
 =?utf-8?B?TW9IQ3llSGk1cy9vdGdBa3JOVlFSYlRtSHlRR2JuQUR5UjhUUFVzT3JWQm9N?=
 =?utf-8?B?MmtGTjhOUEJNOVZHTlgzd1dzaWUwQ1NRM1BpaU1yL0hpWDB2VkN1VnZvTDZT?=
 =?utf-8?B?RWNidEpxUUtJTUtlU0JBNEt4ejRtK2Z2T0liakp4WGp5dDh3WWdzQkNKeGRq?=
 =?utf-8?B?OHRDaTQ5bWkwY1JrdUNIR1oxakhQKzJxUXhKVUNqeERNbWdsREVtTmJ1K0Uz?=
 =?utf-8?B?R01ET0o2SGhQNmdCUXBCSUlNKy83eXVnUXVTRXZjbzBBL3RwbDRPZ3ZVakUr?=
 =?utf-8?B?bUVFMlhhanJyd3ZHZVNJOVg3YVJON1RBWmtBYVhuZkp0UDhpblM3cE9ZeEYw?=
 =?utf-8?B?bkczbUVhZVNOZ0JxZjZhMjh3ZFd5eTdtK3k4OGkvdHB3bTZwVGFQWkQ4QTR6?=
 =?utf-8?B?ZU1WT3F3bGw5ZTBiTG1OMUFrMVBpVmFhRng2UkIwWU44Y1pNQ0RHcFJFQk45?=
 =?utf-8?B?dGk3ajladllUMnh6dzNzVWFQbDdPNXhsTFhyYlN5UHhuSnlnVWx1NWlQbVA0?=
 =?utf-8?B?amR0RWFySEhpMHd6dGdQWllVYlJYWjVMVm4xWmhyaXVMaHNUWHVoTTZPdFA3?=
 =?utf-8?B?dDhaKzI0aHpHOUtlZXBic0NjWllQQzdYZm1KZENCejJlSVhJU0FYY256REM4?=
 =?utf-8?B?R3l3SWZESG0zeGxGTXRhSXpBOTdyUVI2bExTTGoxL3BMdHhia25ydkFpeUpX?=
 =?utf-8?B?WkdRSFYwVmF4R2I2WW11bGJqK1NMbkFlSVRNOCtWTXVvMzRuUStaK1J2cW56?=
 =?utf-8?B?eTdmSTBoMWhBMmJqY3FMOFV4UmlNb0F1UmtUWjZmUDN4ZUZ4d3lCQWpRZWwr?=
 =?utf-8?B?RVg1SklKL1BuRmVFYVd3dXFFS21iNlpkWDB5ZDhneXVhZjEwRFQ5aTVWUllY?=
 =?utf-8?B?dzFXUCtzaXJYZXFuZ3UxVk0wWUxDR0R2TGxBVG9Hd3BpOTQrcjZrMkh1SWl3?=
 =?utf-8?B?SnFZc1czS1FnRGVmREJrNlk0RjBPNGhuR3hPWjNteUgxLytIT2VSSk1Fa3ZU?=
 =?utf-8?B?Zk56aVBKaXY1aUJjRW1SY1FBVGxIdWJnY1VFTmJUWmdNUEk2Tm96U1ViaGYy?=
 =?utf-8?B?Q0pNUHdNQ09DalZZSGJjN1lTWHovOU9NT2VBVzVNVjhRMDh2VzZJOExPQ2Yz?=
 =?utf-8?B?d09yanp5c211L3lnTFFBTXlMV2xRM3VPQnNIVnRsMTVKWjJFSjM1UnNvbWJB?=
 =?utf-8?B?RllIZXA2WmVub1BMMFlTRXluUzZONFg5d2ptbURnYWlBOGNKdXRLWWZMc2Ft?=
 =?utf-8?B?T0ZMTDd5UlVsTW1COGZHRUJMTHVnPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b73245-1375-48c6-3a25-08d9d7d639e1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2022 03:22:14.5701
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D3EJhJlp8frokW3LIlxBwmN0IrSFJQAFsgjw3bFDubaDsf2BvgZJFEM/Shnfletdfuf1+Xu4U8TSSzM22guslywMhwy44WvUpPDPDb25epQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2967
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10227 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2201150015
X-Proofpoint-GUID: DaaGbRibaASy1IIP9vcIXDV6Bi9Pmmg9
X-Proofpoint-ORIG-GUID: DaaGbRibaASy1IIP9vcIXDV6Bi9Pmmg9
Subject: Re: [oss-security] 3 new CVE's in vim

On 10/4/21 08:48, Alan Coopersmith wrote:
> On 9/30/2021 7:39 PM, Alan Coopersmith wrote:
>> I haven't seen these make it to the list yet, but three CVE's were
>> recently assigned for bugs in vim.  [I personally don't see how
>> there's a security boundary crossed in normal vim usage here, but
>> could see issues if someone had configured vim to run with raised
>> privileges for editing system/application configuration files or
>> similar.]
> 
> I do note all three of these were submitted via huntr.dev, which offers
> bounties for both reporting & fixing security bugs.  As a maintainer of
> an upstream open source project which is struggling with finding people
> to fix reported security bugs [1], I do appreciate the additional
> incentive to provide fixes here.  But as a maintainer of a distro, I see
> a mismatch with the incentives here, as you get bounties for accepting
> everything as a security bug and not pushing back, and flooding the
> distros with CVE's - even if your distro policy isn't to handle every
> CVE that applies, security auditors will often make your users query
> about every CVE that they think applies, costing your time to respond.
> 
> [1] https://indico.freedesktop.org/event/1/contributions/28/
> https://www.youtube.com/watch?v=IU3NeVvDSp0

This has continued with many more CVE's issued for vim:

CVE-2022-0213 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2022-0158 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2022-0156 	vim is vulnerable to Use After Free
CVE-2022-0128 	vim is vulnerable to Out-of-bounds Read
CVE-2021-46059 	A Pointer Dereference vulnerability exists in Vim 8.2.3883 via 
the vim_regexec_multi function at regexp.c, which causes a denial of service.
CVE-2021-4193 	vim is vulnerable to Out-of-bounds Read
CVE-2021-4192 	vim is vulnerable to Use After Free
CVE-2021-4187 	vim is vulnerable to Use After Free
CVE-2021-4173 	vim is vulnerable to Use After Free
CVE-2021-4166 	vim is vulnerable to Out-of-bounds Read
CVE-2021-4136 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2021-4069 	vim is vulnerable to Use After Free
CVE-2021-4019 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2021-3984 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2021-3974 	vim is vulnerable to Use After Free
CVE-2021-3973 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2021-3968 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2021-3928 	vim is vulnerable to Use of Uninitialized Variable
CVE-2021-3927 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2021-3903 	vim is vulnerable to Heap-based Buffer Overflow
CVE-2021-3875 	vim is vulnerable to Heap-based Buffer Overflow

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
