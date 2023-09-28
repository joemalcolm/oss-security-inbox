Received: (qmail 11642 invoked by uid 550); 28 Sep 2023 18:37:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11618 invoked from network); 28 Sep 2023 18:37:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 to : from : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-03-30;
 bh=XtdaXyYOIFbX6Wea8Zve1upF+rgP7I4X5fUuhI+GwbI=;
 b=ffU9mRXYF4C9g4G1eUfLRJMy3oJyhFQmnonY+qODAYh5Tj0eZKbi80dgCK3gztAogSXs
 hVCUG6Z/T3uSGmTFcFH2Noa43TJzEX5YRXKE+/rk/Vx1pmBXZU5gE4EqaNKGq0TBB0IY
 KiuY988dfOdiqjX2rzZp9JPXQ3OZiw9hwQz6ccMzE751Ny4n6YWgLA0vQr1QJVhgLQqH
 w8BByTitLZTrKxkj8MnVrKa1FcgzN56vJ7N+WJgOb0MP6WDvBA++L7e9ZaZgTB7uXm/Q
 rUd12qbTHlQMZeNq/CJozqCtIG+KXTra5J6MT6a+XA/ajB++9mCqIFMqca6YNDAw+noi 3w== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HV/EXvr2AwCWGxrfXhIy7msmOCDkRY3TiA0IwDmDTBR36dYdg6CCGfgBd3oSaQuTtpLdRcUfmpxiAsEGOzwMlX6GxS06OmYTTokQUq0OVA2LGLBbVF6Sme7FhiWiYo0aW8hrZztynaaf5fLFei8OISPYyIOQ5y6dRRwOq8KMFUBJp21mUvLSHnLiDljvhgO89cwfIQWcZ80InvJvsMOrdmsT3WcMz/NvojgW0NAw1uOGObn51nQnipanY9V9KpExsR608aLVlqodIqS6U5AQOVEtKXTM6AUuSyLVJhNbaQGpOhCtTna5E2mjdiEpgze07ioAhyTqrRqtGZAtV8FzZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XtdaXyYOIFbX6Wea8Zve1upF+rgP7I4X5fUuhI+GwbI=;
 b=Vw+zEZ3WZ4+6snRH9f77T/yMzZ9J1UO1wnj1R//zShORAgQIkKTJbwbOPJ3ZiY8xGJ2dAfgi8X4ZzDXYmVvr84EwqnpNAPP6GTesodZS1Ua9ir9ehxOxsQfQ1caYH+szFHwTHvabqzVWNfA6+9EHdZFb98jzIyaqp/9BmSvf1mjDr7Q7khOUhwxFDI99xr+0A0lQ6QHg2UDWQCqq642aqlKxnTFAxuhH91LiKC0Yy9zLJIVBzdm7o7joQbG/K19RB6ME7dVayQ4VydR8l0Q6cDiEjU4NsQ+DF3voqu2mMJR0R8x7/9DHCpzs1Sdf2MnyX9rqyU7OLYd6Vc+tvQ/asA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtdaXyYOIFbX6Wea8Zve1upF+rgP7I4X5fUuhI+GwbI=;
 b=LpJHW3bg6e1sqp47yAyLNvjI1ee9DZ0BkxCkNhDV3aiCTAVykPJl7y80m3Fzk617WLXdX+O0IHIzSJAi1lY3cAUqzX5+6VE4emS/KKeHcile5iQTDVomSLLuH5sZ/RmWcaKq+Ym885G9uzWE4Y86l+jOUFTJj0pBeU+j6G/vPe0=
Message-ID: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
Date: Thu, 28 Sep 2023 11:37:23 -0700
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
X-ClientProxiedBy: SJ0PR05CA0119.namprd05.prod.outlook.com
 (2603:10b6:a03:334::34) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|MW4PR10MB6348:EE_
X-MS-Office365-Filtering-Correlation-Id: 955c4363-d843-4f97-6228-08dbc051f678
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+MFb4ies4jeTTvmBQCDg41xL0JgGH6ZftnxkeBLuEio/hpGniq81MCESEesQgh9sUn0HSRgBcejhzyrazvjR5/GbkGMFfV08XRlreePbuavchvY221xT7NDda+y+91MoHUlCLDiq8+QysbCKx0FLqaOTpiGCODzN+twwqRZaZwqJRu7BEeca98iO64e7TMju28kcXJ31bdSYLKvxLsl4TyTk5PL53yhLV1EdSG4LCW+WvtXyfqIDnXrLwrikm0V92+4qDsXViUjhAJz6ONardTO2S6cPV3RIqIwaqLh0jM0ur9SJ1RrMspL+v4uNKfT4ShliZQ4Vxu/1HErPvimPTHyoH0esHKj+9fwLHzktrGpbuZcVSo0CtV7xjQG/fp7nTvYgHBuPeg3X4H0qrFPXf6wDoxKn53+IB7XAymH//j7aLGBXgu6y1N6faTXK9SF+Dj1PeXPe22sifGBOsTueD4/2Ixazkyivh27pTULFyb65gRJm1BWXWFBgSfUeBRf182ePK3ie1sj1EaGr5Zid4rSX6nQd4QZH5Km/c/ueW/omvuXNXKMeKuyDvTRyibh/mjQVMfVBj/uV3Yal/afhfQSXFWz52kPhI7GF4JtLiW+lmdOAWT9j9JD0atAoV5kI6YtDMWqoQgvtPYic5TZX4g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(376002)(39860400002)(346002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(6512007)(6486002)(6506007)(26005)(2616005)(44832011)(86362001)(5660300002)(8676002)(8936002)(2906002)(31696002)(38100700002)(36756003)(316002)(6916009)(41300700001)(66476007)(66556008)(66946007)(6666004)(966005)(478600001)(31686004)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RVE2QXFIbjdvQVp1U2tqZEJxOWdGcTZhbXpsV1JURXI2dEFrbm5vREVWcDE5?=
 =?utf-8?B?eWlNY0RPT25yZDU1a0FYNWFzUVhPc3dBNFUxYWkzYnNsTC95dERkejB1bEdQ?=
 =?utf-8?B?LytIYlBRVERDcUhhQnY3SmEvNklFSmxDM2ZQWEkzdXlacGU2VTUzQ2x1NGYr?=
 =?utf-8?B?Q1RRbEo0Zm92aE10UWVMcmtzNEZJeElzeGJXMVFDbE00RVN0dG9FYWhoVk9p?=
 =?utf-8?B?Y0xtTFV3KzJRbnozSHhGVU9mSmFFemZyY1E1NVVWN0o3c0VIQ0hwZ0ZFNGVQ?=
 =?utf-8?B?blZkMDRxWFZEcUhzQ1JSVUZ4S25xb0VrY1Bzdzgwd2Nza3lEdDFzV2ZlbC9W?=
 =?utf-8?B?RVFwMWJWdG5Gdm1kMTkyRjFYUkFhZkNZdDQ2UXA4dlhENUkrV3ZzSHdLMURV?=
 =?utf-8?B?Mk9KcHdtYUlrNVR6S2Nma1pydnVNZUlBTmIxYk53S3BjaEh3bU9QUnJzOXY5?=
 =?utf-8?B?S0swOS9iUnAxZ05LUVBJOUp0QUNKeU9kY0IvUWFhMzNIUzBDZkRwOS9mcU5o?=
 =?utf-8?B?dkNUQkVZN253Z2NUMTZKcm9yLzFLTTcwRjMySW1JRzBlOXYrR3dsUEY3a1lG?=
 =?utf-8?B?QlVHVmVWZ00wYWRSZjgvR1U3SnVmUWprKzErbE5za0J4U256YVE5RWNhNmo0?=
 =?utf-8?B?dXpNdGg2UEtaOTZmbGxwbkpnVnRnSkNRV1BmTVpIVU9xcTFadUNza0MxUGRH?=
 =?utf-8?B?Ykk2NXJBSlRYTmNBRlBjb215aWtQekNEeC9CNFcxRkpSSk9XN1BzTFY3ekJN?=
 =?utf-8?B?N20yTEZLbjhuZnBHeU5oN2RUTGd3cFBESjJlR05vTVIxZVc3QzZzMHlSNURB?=
 =?utf-8?B?RUtNZHdVemQvcm1DTkoyd2dwQmN2Y1RZTUxNYVFMcis2TlJVZ3hwdjVNRDlj?=
 =?utf-8?B?ZjZLTldzUzFld1ppeW03YzBoSWhlZkNGVS95eUJTcHJhRElYNDJIc0JhdlhH?=
 =?utf-8?B?NXUwZEV3ZVdicU9vZW1nandlYXYyUU5ma2NrdDhid2ZsdkptVzV0NTlUZlpj?=
 =?utf-8?B?T2lMNFpNU1MxejhyakVMaTBPdGczVFlrSW14a1dPcFdWNVFXQy9tNDZDSVEy?=
 =?utf-8?B?U1dHVEh5VW5UbGFsN0E1VDZJSnZSTGdwUG1pRFJKdU5sR3hySEEwNW1JZzBz?=
 =?utf-8?B?NVNoTkVzcXI2MDNYM2FUQ1lxMjBaN2psOXdEL2hnS3o4UERnVUhWQ1RQTXF5?=
 =?utf-8?B?RkpMeGIybmhBUUtuWUU0REdQRmxyTkgwOFdzVFNmZDVJR0hCZEJJR1NXTDNz?=
 =?utf-8?B?NjU1UHdZelRSU21QR0xJZVl5RnVIYWpNOGk1V0xvcHBLV25TTzV6c1JLSUto?=
 =?utf-8?B?QTM0eUh5RGNrbG5wMVg3ZGRQWTdWVklNMnYxVFUwbHFkb1dqbkgrRk12Z240?=
 =?utf-8?B?UjdMZm9jQnNJampBWGtCVDlRVzJpQUcrek01Q3BqbDZtSElreStxMFhnMFRa?=
 =?utf-8?B?S0JnakM5QmVyWm5lQ3Fvdyt1ZjlnTmZUeU1kMEY4dWRIK1grY2pqSFpGM0JG?=
 =?utf-8?B?Qm9YY0lKNnpTMVdJWVRsWmNFcE5mMUJ0d3RPWUh5K0lscUwyVXIvTjBMR1dx?=
 =?utf-8?B?aHJZUU1vSFBsYjIrV1laaUV5S1NYQ0QxS2doZzZyanV0NTdxMXYraFNuZEcy?=
 =?utf-8?B?UEg3Qkd4NUxla3htc1F5ekoxeFFrOEJhUExLL0t3VVhEWlg4dHFxQWU2MDZB?=
 =?utf-8?B?OTFrN2hqc3NkNVJqUXBxZlVpK1o4Yll6MHp3Mi9CQU51UFRUeCtmMG43aFVa?=
 =?utf-8?B?TVlBOEU3dFFJMk5uelhTRWZBNmpsdWU3ZDFCWUhtMFhZb2JudnEydnZlWHA1?=
 =?utf-8?B?Ky9GMXhUTXIwN05ialVLNnpuWlBwTVhVV2tnYmU1Yllzb1U5Yng5SXhvbDU4?=
 =?utf-8?B?SWEyTnplVG83Y3BXaUNJdkNIdEZjRXFrVkdETW53RkFmbjROYlJkWWRJMU4x?=
 =?utf-8?B?eWdpNlBTbzNyYVdMdlZDYndvRDQ5OVRhbHFkRE9sS00vRDk2dUFJdTdscnZN?=
 =?utf-8?B?cEJqZFp3RkVRc1o2WmZZcG1UcjUwa1V2dnFpMmlXM29FZlRncDk3VVVGL291?=
 =?utf-8?B?UGVyc1RuS21jS2Eveks4bXg2bkdCeHdpcEt3Rmc5MlhNdzVTeEZqWHdlSjU3?=
 =?utf-8?B?d2wzQituSkFqbURjMVhvUjZnemZTcTJPemRjWnNsV2lGQnBjWGU1R2dmTjNG?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	hOJmMeceEK10op2atQ6Zx7an87SXzZf8QYbJu5tCvOdELe4k/9h2MnZ3Qr3R22iMZlAsni/JKfA97Qhnx3PO8kech9RMivjIAdDzcz7A/pPNXPKGxufTeZ5XoD/d9xcSwNeNIjzGKBghBE1F3n1tJxmnjTi+xftWi67C3iAsNGgPqMl8jHipzkIbiLLytD+HPpuakQB+XumNR7tpctT1QDAakVaxVpGWfZfi7Y4O61rY9IOPoWTCKewQrJ359E873VwAHjBD4yQ1O/3Z9wMB0al+AIHw2Zo5tv7kiBfN9YlQnood3p+SaPuu3hDuMINdxQqaxyRd0FGJkjXZuRHXIcUlIhnvftFYckN2U+kdI5/kIDz5aujtBg0ZBLHjn0ux22sS/v+DDzoEtT5bJMObl/ypkCs/eOT+3778dytx6vSIqZhd0HTznArS9vAf4ss8EscR8kNURQ4nwmTx0vV4Wjtlh1BlOOJXwVoLss1VM8RBL9TxotxUGaz9eWBSIRQx6eCoogGtYz8TayTSIFvm6cYdu9FYUfR4rLyASrKgf2WwfzcHDmiKf5aeYoNUqB92Jk/6x5ojNeMTQnLKN+PinU23QeSny5tSuOU8h9h8OXGp4wJdVRCMpDXatQahG+kc9yAXjB/xjsu6VW7ORf9pb1LUjEaSrtwRxWFVexAJXYMsN83Qgt1nWu0qvXeVieZubkt+gYfDYeVITsNHmdAkBTtwYnJngOJ3DBzWQ7M0D6zPcXmPtjDsiob3Sn6Vm+EuXWlQhdv/lx2qTNHa/37MCw==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 955c4363-d843-4f97-6228-08dbc051f678
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2023 18:37:26.4577
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xtJ46wbvCZbCdHePzIOK4ZhMhe1kaJgVVNrT2Mya1TRccMTaCxA5abP/c8XUy3DZHlrvZj/6LgVNgkg/z5aEmZRxwJ1LkPF95y5H13YRB6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6348
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_17,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxscore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309280160
X-Proofpoint-ORIG-GUID: fb7cJqA2YLtorL-fuCUAA0oses2uKALy
X-Proofpoint-GUID: fb7cJqA2YLtorL-fuCUAA0oses2uKALy
Subject: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx

Google has announced another media parsing bug, this time correctly documenting
both the base library and Chrome versions affected in the CVE.

https://www.cve.org/CVERecord?id=CVE-2023-5217 states:

    Heap buffer overflow in vp8 encoding in libvpx in Google Chrome prior to
    117.0.5938.132 and libvpx 1.13.1 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page.
    (Chromium security severity: High)

Unfortunately, the bug report it points to is restricted access still:
https://crbug.com/1486441

But the Chrome release notes state:
    Google is aware that an exploit for CVE-2023-5217 exists in the wild.
https://chromereleases.googleblog.com/2023/09/stable-channel-update-for-desktop_27.html

Mozilla has put out their own security advisory at
https://www.mozilla.org/en-US/security/advisories/mfsa2023-44/
and delivered fixes in Firefox 118.0.1, Firefox ESR 115.3.1,
Firefox Focus for Android 118.1, and Firefox for Android 118.1.

https://bugzilla.mozilla.org/show_bug.cgi?id=1855550 is also still
restricted access.

It does not appear that libvpx 1.13.1 has been released yet, but there
are two commits in its git repo with the 1486441 bug id listed:

https://github.com/webmproject/libvpx/commit/3fbd1dca6a4d2dad332a2110d646e4ffef36d590
https://github.com/webmproject/libvpx/commit/af6dedd715f4307669366944cca6e0417b290282

Mozilla's commit references these two libvpx commit ids as well:
https://hg.mozilla.org/mozilla-central/rev/c53f5ef77b62b79af86951a7f9130e1896b695d2

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
