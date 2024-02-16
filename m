Received: (qmail 5753 invoked by uid 550); 16 Feb 2024 19:07:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5732 invoked from network); 16 Feb 2024 19:07:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=lFaRVhAjKmZhfyYOBUloH02X7AiuytSDnvMsb0LBpXU=;
 b=JIUDnOAZyebYyKtpTsod4WbZqyRkgdHs3mTmMUuo9GRfMYolEuyh7qlOHf+dXZmTmwic
 vJcW7rVdgL/YDLKJroFhjQz0Jriqsg+gA1FTc4onD+z09MqLuPHYz9PtwBRLb+8s8WZU
 bsr5msW/syK1Z92UjprVr2+I5GVh9ednfpyc4w6OfZeHvPjXS2JxNmLCWe64NkeZvZ90
 vOmnvYc2D2tvBHpE+xd3PePLPViutEn/JfLyVqSXaNW5g+r42XqCJdUrXC5o1zfg/yMF
 MIIiHsqvmFChAkvvkZUycbnMvUfWe6dyo/daVnDHTE+vPHjQpk4j0YnRVzqWZQNsqDyh NQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dfiY6UcrQqQ07btgL9dnaflHHhIxyjC1BKnTOfGnz9SARBSHtbdgNNYbUntXWT1FqSVtB8t30KTKATzi18gZKTHlGao44sFeMbmrPHlr03dFjF9Tb6rnsAYP6PZEptRKS1NA/6CDuoTroEL62TOvuafZOx70plC1zbHxtqxOa7C83y2SPx0Lg3801RpvRHenzfzRHn9XMQowSczyLVnGSFffSl+mM1eUThhvHnzC+01VY1RLYYXY98IYHlR6VFXLG/g9CDfc9Drz8k1W1SzSpqyHMROU2x9gfeynU1rS9GnaSl1LXIIwMTEJ79zJH7evIFS6rB26HJg3bX7EJeePdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFaRVhAjKmZhfyYOBUloH02X7AiuytSDnvMsb0LBpXU=;
 b=T14W4+nR0+iLE4Z4f7IA3Wm2xgDKv5ppJ3tlmfh+D2L0nRnOtPaA2Pg1Sp/xg4nv/WIr2NalnFVMpdY5WB0cdzA+VA3VrcRnDtmwIChxSFBLJ2/jDGT5GE9T2UyuLys8A5BO9T/z1YSTsYdeBXMpJhB7Jmiva/6VauxS7cJ/5SW4l2/c6E5jxFUXa4n2RuTZVnjy9uZ6l5gHe0uJc8V9CVZO4/YSjt0o4+16TsgaRNn6W2zuVQRNjM1OO6eWK7RRlS40ty24aFVrPR3fqPspT8+pAFDQfKF8BGv0tdzvCBWSLLwh7czA6E3GIDNhl0hkGJKku08GLfCxmoIZYtB7gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFaRVhAjKmZhfyYOBUloH02X7AiuytSDnvMsb0LBpXU=;
 b=YQqX7Is4yIN66Jog9AOui/3M8uy+IKiB5CdzMJIo09/XAsOCw/GB/GIX+nXCuF5LQSm2jc9OZAsCGvjw+55VqETccW9ZP1NkC9afUL1NwOummugpwAbUB27X0mp6NJK/Z4yZcwMI1AuFdg2sbLnCGIHcFcgBXFPLv9d0QPPeHKE=
Message-ID: <e8c3ae93-ea1d-42cb-aa77-20f71782f638@oracle.com>
Date: Fri, 16 Feb 2024 11:10:08 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <8f2901ed-401d-441a-bcf5-f23eda0d9e88@nlnetlabs.nl>
 <bf47ae9d-4a0f-4446-b224-c8c7f08e44e2@oracle.com>
 <20240213215209.GA4099@openwall.com> <20240213223436.GA4355@openwall.com>
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
In-Reply-To: <20240213223436.GA4355@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0084.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::25) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CY5PR10MB6237:EE_
X-MS-Office365-Filtering-Correlation-Id: 4884bb1e-fadc-4309-f1b9-08dc2f22e528
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hkh/BK+vCitq4b3lhpQ4XoIJalmo6OZCATt0NKH6XEfQgf+DoVad4w9g4eHbIXvaHD+/UCpaBux66KAdlIwaX0FvQ3wR5hh2PJRGLd6NN2Ih9BM5eakY8o5vi09/EQFwm+y2rGvF10ECPZQmFpYGR9pZTEVGTHJdW+BGwCJ09mkc2ulyVxh6fZnpRb/mzG6dsXucH9PsVPcKuLZ9pqKfOUOK8J/SQJXyNO5/Ti7altu58+AZp0WuUMdsR4ngHX1vW1F0uXK+s07d6CzvTXzFowEInQp1HxIKXxO9Q/BbEb0L6KbDh0P8wccr3xinWHrmpmKAEbxqTeNoAyGN37va8tm239jEqu7kygp9rNSrcN3iR3zZ216acsm6pQovbwWkFbE9I9hBpVMq0YtAJmm4rxD7oSIYLO6X062dU7WXwhgXzS6QVatUObR43TEJtV89BN2A1vJWmzUUt5y8Njd5BjdV0lOjJAX9lha8u6eTP/jIfjl9DqknM0EX3HWHV8Ns/YBowDkpB1vVU1e1rXgJqMeHZk8+c+/UcCuFo+cXaUs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(39860400002)(396003)(366004)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(31686004)(2906002)(5660300002)(4744005)(44832011)(26005)(66946007)(8676002)(41300700001)(2616005)(66556008)(8936002)(66476007)(53546011)(6916009)(966005)(6506007)(316002)(478600001)(6486002)(6512007)(86362001)(31696002)(38100700002)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WmVJV3pOdTBGVGM5Mmk1UnRmRkhCUUxFYkpjVHdOR2Z5eExRcnBPSDBWMC9j?=
 =?utf-8?B?N0czeVFxdjZjRktaVVc4SHhTVlI5K2ZuZFE3QXVKblJ4SlZSZlozdWd1d0Yr?=
 =?utf-8?B?WjVPYW51YXZyRHo5c2ZRek9lZVhQNy9ZaTEvWHdYbjJmWEx1VDBlODhQZ2px?=
 =?utf-8?B?Y04wZ1JhSjdwVytzZmk1eTE4dWlwQWlKWVpHb1ZBWWhHL2ZhMlZKblFSUjdB?=
 =?utf-8?B?alRLZFRUZXdxbCtLV1ZyVldVeWJBQ2lWZnZYdm5SakhjUUM1TmZVbVc1TW5p?=
 =?utf-8?B?MHNzdHo0Y1JuNDVoNU5sb01HYWtOQmVhNkxkNFgxUm5HY1pTSVl1TU5oK2pW?=
 =?utf-8?B?OGxGNmdwdE5TTkMyMkpCSWRTdTVIcW8xM2pYZitRMk9qbWtVdTc5UnRSSmsv?=
 =?utf-8?B?VTl2UWRZY1RLVmY2b0tTQmFHTkVwV3kwaXVtVktMbmtaYzdCWmNxVEY4RFdH?=
 =?utf-8?B?OUM3eExRbkdKaWJjd1F3WVdjck9ZOWJxajFTeUVYcFdkbTZOOHhFQlpKQUkx?=
 =?utf-8?B?bXdMbDA1R090dU5yYXpiSFNsNlVBamdhVFdZKzkvOW5zY3k0MGlZT3hPMzAx?=
 =?utf-8?B?V3VEaG5xVWxiMlcreEoyblROMVZvVThmTFNObXNnRUx2anVWa045b3FKTE9n?=
 =?utf-8?B?eDVzbzYwWU00Uno3a0hPYmxzTWZuRWV2ZTJmTXMzZnhYRlIyNTFOcHFqOUVL?=
 =?utf-8?B?b0pXY1hkODVNWGZPUngxMURvUXVzVERnQ0JacDNId1RqdWF4T054cXBjaWdh?=
 =?utf-8?B?SDVhT05TR1MrelhKUUpZSTVuLzQxZWRicWltUDFTMHBHRE5WbXhDalN1b0pl?=
 =?utf-8?B?UVc5amp0UU1NT2tHNUdoSEI2UGxQTUtwdnpCenpLK09DSHlKcjBHYlBUNXFY?=
 =?utf-8?B?UlpycWRZVWZxN2RsdDhjSXRYU2hlbHlHQ1hPbmplY0dTZVRVOTY1cUNvMlhL?=
 =?utf-8?B?L21HcHZGMGpzdy8rbE5yUS9BdFQycGl5YU51TDZlV2p2YkRsQWI0QXZqODNx?=
 =?utf-8?B?OXBJeWxxUm5NSnViNjR3Z1ZnNnhDVHFuUXg1VlVvUmtaVExrVDBLR01UTFZ5?=
 =?utf-8?B?L01NUDR3YkVrS1B0ME5lWW54MnlsUHoyTTBhd2dsMmcvVnVyak9xV1lFR3py?=
 =?utf-8?B?ZlJPR3FuK2liWnNKNjFHNjloU0pQYWxmUDlnSW42SVVhN3dwemlmaHVyNS9j?=
 =?utf-8?B?TXBuMER0WnRRN0ZGZmtNVEZZUm9PdVpRbnJscHJSUDNpbmJGUHpTNW9zVCt3?=
 =?utf-8?B?QlVoN3JNOEl3OXBwdVp4eWs3RVB2bmFCdzFlcDBOejNaOXhRbDVRZVVBRjRs?=
 =?utf-8?B?MHRXeEIyT2d0NWsxWVhLV2g3NlJkTm1KejMxMmZxcS9ZS3FuYlZpYlZVRzNF?=
 =?utf-8?B?d1Z1eWpEeDREem1HNkRUOFNZRHhnZ0tONHBJSHNQaUdETDNiczQ1bURmQnBP?=
 =?utf-8?B?aGRwbmEvM0RXSUg4bk52eFdVNjJUM2JEOGVKK0xGaldGUjFDMUhCbVQ5THJt?=
 =?utf-8?B?K1o3VTN0bEpySEVwcjNmN1Q3TUdzUkdhTk16eDBGTDdNZlpORnFYVCt3bWJ1?=
 =?utf-8?B?T0oydUY4QjJuSWNYcmdRZ3hhK1ZKMUtVeTF1SGl3NW1sazBlQk9FRnI5UWo0?=
 =?utf-8?B?K2VreU9tWEM5OEtTbXo0MS9vVW9YNjVSeGh3MVp6Z0ViTWtaS1gzNEpWSVhv?=
 =?utf-8?B?RWowRUkwbE81dnk5QmtkY0N5cnlYSzhZT3M5L2JHQnF5MWJFWG5KVDJEY2JH?=
 =?utf-8?B?WEcwcDJOUGpRYWw0d3NadzdBbUYzUnZDd2JNcVBwZldrSDU4QnlweW42V2N3?=
 =?utf-8?B?aWMyRkFZeDdaRm9tZnR2Ym12cU94VFIzRkJZQlppc0RIWkZZd3c2NkliTjhO?=
 =?utf-8?B?TG56NFMySU54K3JOOUhJTjZLM2FqSTh3cG1tNXhGckhXVlB5Rngyd3pOMTAw?=
 =?utf-8?B?K2ZJQnB6SGE3ekNZZUlwRTFyVjh4STFNQ2g4ZzVjSlUxTUZoQmtNQTlVeUo2?=
 =?utf-8?B?TlB5MjBlWXhGNDdrOStFcWRUQ3Q4SkxobDVwNk8weWxYMkdTMVN5NDNBcFph?=
 =?utf-8?B?S3FBMEthclJJYm1UUlc4NWozc2RyTU05NjJxRzNWUm8rM0FBTEwra3VScEdl?=
 =?utf-8?B?dGlqcm1QN1VCU1VWWkpkMGFsRTFhb3haSEpvOUsyRVI4eXRXNzM1cCswS3hF?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	+qntjwy8/qpLqcVhinZiSD868STVyLOWC2QS5o27vRqWtvgitM3g9OOQ47LChTcld0S94xGIS3agVbhUtj1MWoXCR59MRHmd5lN5yVeFWbE9ag/GC9KfXrsRdRVQU4HnSlwXZF4H48QPmTeGBrL5dosop3U23CmtGHlZE07e+1UnCVnj9eeRuiRkqcTcxyxlRbDGp4vO0wiW+uVisp9KWUlJt4lQR22pqbn87zXJF6jqVgWWG1UXglTzZkZYJr6Gt0vMw77ePZ8DYaS2c4VFG0J2JCMbzWIH3qc/ms/rjLRulkWqNXBfZjiyRqP4myYL+eLSJGZJhKuYEnVNw2lyNao07F6azm8R4eFybfNlbvdM3KXc1fyfSBVbfXmGIz0zCHdaCWCipe63aKsvixq7UOl5F5NfjbTUFWVtvvS1XvDyvwo0fRsamZc8s7jo1/ql5YxmnrBSkRznVobFOCwY3zyUBrWrYLdEEJMlEgMwXORyPmDOCYx7vb/urquIumNUw/eNLEspClvK1SQPcgznarHciJN1k0+8olEovsEWEH2kU6ThCqVaHVVsZbL0XTKRu7HCebmuC1bLuEKfnAgRUol8Upt9ubHtXYe1TussWwc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4884bb1e-fadc-4309-f1b9-08dc2f22e528
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 19:10:10.1327
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bYm2ZKTw4dxKqYXiGGctRXocXP/SfcGyatRGhNMuGVVrILjgbcM2KTzot45NIejLgiwvhcuAzDvdm7GFsqobB5AU3WuqYt8dYh/ULrM4kvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6237
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-16_18,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402160149
X-Proofpoint-GUID: qWKbWP9duui0zRqDizvqRGVqN8Xk-i2f
X-Proofpoint-ORIG-GUID: qWKbWP9duui0zRqDizvqRGVqN8Xk-i2f
Subject: Re: [oss-security] Unbound: disclosure of CVE-2023-50387 and
 CVE-2023-50868 DNSSEC validation vulnerabilities

On 2/13/24 14:34, Solar Designer wrote:
> It's not great that we're adding to a thread on Unbound, but since we
> already started...

Sorry, in hindsight I probably should have started a new thread.

For those who want more details on the CVE-2023-50387 flaw itself,
the researchers have now published their paper at
https://www.athene-center.de/en/keytrap (see the PDF link in the
"Technical Report" section).

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

