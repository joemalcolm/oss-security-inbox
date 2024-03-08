Received: (qmail 5338 invoked by uid 550); 8 Mar 2024 21:33:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5298 invoked from network); 8 Mar 2024 21:33:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=Rnj6Tg+Xq7enD5MhkLdgN8M6hivhCKhnqp8fLUm/LVY=;
 b=AO1DFjb6/IdxcHWLengvfYv6sTDqTL36ogSUw/NLFNM9v1/dax16KP6xfC3RbhGyV9f1
 HJArPp3J0pGcKPEXjQZXVFi4NvqAacF85nkVu6zjDJQ0v0I0y7i2y75q+iguTQEaJYhw
 r/OzfSLcOx72rmI8VOn3cj5DW8hZ7wZS3KU4IyzEekscpfNqFTXpaHVmwMqA8HOy9FHC
 u2304kCWlYu7bHWXuAxWeQXO+l/ZzLzEXiUBuAP8S3/8TJ0WAzf0dPIvbzwPnErRtnNv
 IVjg3AjyvyKQCUx+CuF2Upj7pQ+kJQbI6QeHUDrkaLaVPa7BhYsk5fHj37/uoui/Ih1h 7g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YpAcdVIvw5liCzUQGQ7kJOjzkcGrWHEekgR8cSxTJCUQrYPxp61GWb58G/IjOSktsYpb0e3SHUFefNJoy72fXJ9h4xjoJWcBTeh/PbXuKviVf7scc3bTswj4eZiiXylJPl7+jappWnYcxlrjM0IPGKia98ETLHczKQdedx2+Q9zPle7hb2rAEQ50bFn784V6LSEDl2s2nQrNHfZ/aidhvXBwk468aMEYSV5SALLZITpmVgPHetDQ0w0wHa0kmbpGIwUVF90sljldhUXiTQVPItGReYn4MoxHeEtr3BZBvkUozogNc1k9uFLfChqneRpmVa16w/3aJQQuowvWF0fOyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rnj6Tg+Xq7enD5MhkLdgN8M6hivhCKhnqp8fLUm/LVY=;
 b=DNZlmz9dKAVCPTN/ODUrVA7MHZMxyzgsW4DsSRzt5wEejW6QRw9n9I/5lA9qgUkqZQ3lhMSKlZSKl97RysGVCxmbNNV4Vwkauxvoh4MeBhyBeSpXIxgo3wkatpej9euqVj5AAMgZxt0JuESwb2KuhOR0jpMZ4Mg4QfTI2kCzVtA/MseYICFa86kOoUDOUZAaxWnTwg2kBZchE8/tS5Yy+adcnN7w64OpJBkbvhGJrXJgyNQNTDaEuqYThcbqt98ZCM24bmMP1gIUqA273r1NJBjfpYmEdDmkj5YKbf93k/dXUSPg73nHxPOQNU3H+r3H+5oLosV7/01nxVuqiW9eRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rnj6Tg+Xq7enD5MhkLdgN8M6hivhCKhnqp8fLUm/LVY=;
 b=SEbjaGwrxXxEZ9n8vk0ZsxQCW1K9Erv1pizdSo3YpOeNObyyE39YzWFURpajdt00wHLPNwWfOwHOqyHUmApdkvyivZnYAWuvBUrnSlCWccr0UJ5aa+LZCnfIQ+kyXSUBVNMO3fHYX/asf+vz9YhxhBxrd7DhgrcrPO4KxOd2dgo=
Message-ID: <44f60ecf-fec4-4e92-8650-ace21e23ad45@oracle.com>
Date: Fri, 8 Mar 2024 13:37:09 -0800
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
X-ClientProxiedBy: SJ0PR03CA0215.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::10) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CY5PR10MB6024:EE_
X-MS-Office365-Filtering-Correlation-Id: 7557ad94-a34b-4ab9-c84f-08dc3fb7ea01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dkJsH4KficvCS29JOBb0tebe4DKnH5RmO77bzU9jb8HbljDNfi+U55s8qa8M6nlvUjTCHjNslHwPY2c2Tl9XT3iUkynmvrrNkZejGnibKupKNtn17BGmZmVYcgGFHYnwpy8jr04TczZwywssBwR/B/7sqS1ExH4WMnmG4BiPZpzo66dX+LgFMBNCzjAg/OAB2atGB6VsyfVlnQF7dXhd+MXg9QfevPT58gPdMOrkDo1MaiPNGXGjXIlkGjOwgl8X35+Y1seJwEyHK2mzDY5lxHfORn15zGNrt/W78/gbQugKlvzU6jOQBtRz+8aFon0T9V+g0aKHjslcLiF3CLPWY8cTpv+3OkbOSLoasKBSJ5zxI1Wik2YBWS/uE5ILzza5wxbjqcbW96LlqGscHlHKMe1YSRH5G0WWJfmpDDxABD08pi0iEBgTYMb1GcBEa3OKxPdq51S/OzRqUOS8wS8tNXmMH4A0BtrrSq0RbNMLAbdHo7oI6JomR6FqJJNpLjKh3z+mNcIRVJgR/n69U3/OJEp8+3ExYkXSJ1/zhiJh88UDiJr9HQq7U4WPvDxCaiLrJdq84K64rP5j14/fp+7/drHHJ1b79fzKjV/BVuncE7CBTN4QCSDBZIkncT2vIYN2
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OW1odkt2N2QwbjlPUWdDUmFtU2djRHpLUGx4V0tTMEZsVHFxZHdaWnZncTk5?=
 =?utf-8?B?L21UU2RYSU9wL09xWXdBZTdpMHNtYmxmOGhCVzJmOVRnSnI1MHVMQUsvMG0v?=
 =?utf-8?B?RmpYeG90WGVrWXJ3aW9raVNtRitPLzhJSDlYLzVXdG85bGprWldic1paTW1J?=
 =?utf-8?B?SWpFL29aK2wzZVZIZHVWMkVBY0dMdFBrRzl4L293UDBzTVptR0RnT1JSQmtY?=
 =?utf-8?B?bW5FQk94Nlkvb085TCtORUZNL29SY1RkOFYvWStCamMwVm50NTZCcDVzeS84?=
 =?utf-8?B?NnRwUXEyRjhEOVZ4L2xMSWFLb29jdEpSMUFzNFVjL0JuUWFPQmczbE15eHNx?=
 =?utf-8?B?Z2VIUjIvcnliZmgvMU9wRkNZeFJmallkbnd1RVBlcytrWlBRNWNvTVJQS3Fw?=
 =?utf-8?B?Zis3ekVBTzlzR2tKZitPd25VRzlwNmN5a0ZuTlZLUWs4dmQwbTFkMnZ6VjVM?=
 =?utf-8?B?TzhxdjJvY1J1c0NwY1FJeCtwTEVYU0V4OU1icXhENlh3Yk43NzlTQkZvRWEz?=
 =?utf-8?B?Vk5Rd3ZlVFhLdHpzdVNsWXdWNnRyaHdHUDlLbHpoUFcrUFFsUC9KQ01VTUNT?=
 =?utf-8?B?NEhOdVdjRkY1QzQwNUhoSUNzSG5LeXJ5YnBMV3JTVkU1SjhtZSs1WW1XMTN2?=
 =?utf-8?B?L0RzOG5BR3BEUHJIVWxzQmZSVVlnLzVKS1h6aGtlQkJxdVk5T2NvVUlqZGNG?=
 =?utf-8?B?aEJsbEVRcDl3eWw1ZDZrbklsakxzN0dCTWpoVDAzbnE3dTE3V3BWRzlBTjBI?=
 =?utf-8?B?OEpEczFWR1FkbFBiUy9hRXhGQU52VVVxVTdPVFdhcjFCTTdmNlhlMm9YUmZQ?=
 =?utf-8?B?ZTQ3TEozaTNZTllyNTNUWStyeUFnRmJBbmtoS2p6Q0xUUXRGZWY3cWZYdVB3?=
 =?utf-8?B?NGxaNWZqTVRNNllDRWI3VlNaMnJMQVlvQVh0T0JmUWpWQzF4Nmc4N3EwNXhH?=
 =?utf-8?B?ZWZ4c3hVOGFLTlhYOEpGanRpcWFaVVNneGRIWW9pcVRDS2JKam1DckRwajFl?=
 =?utf-8?B?aEIzSWFpakoxWm92TkZmWXJ2N2VBRGRDdTZtdk5tcFZadTFMYXpYMnlFK2Rj?=
 =?utf-8?B?OFRta21WeW43K1R0VERVMVE1dENXN1p1Q1dJdytHVVk3SlpHU1lqUFdnS3c3?=
 =?utf-8?B?T1ZKL0hPeXVWVzhiVmRmeFM4YWt5azZUMHZLVkZ3dXUxOUpNMHBUc0xQeFcz?=
 =?utf-8?B?U3kvM2FzK3huckRNYk1nMThBQlZZVU9Za1daczI1Sjd6VWpzcEFUSVU5a25Z?=
 =?utf-8?B?VHdRdVg3dzF2djNndU9Rak5kaXRtYmNHSzdaU1FFUEVtVGJKYUh3OE13WHgz?=
 =?utf-8?B?ZDdIK2xpM1BTM2tRTkNDa3lleFNtR0FjRnQ5dGpSVWlmLzVtVDVXT2lZTEI3?=
 =?utf-8?B?b1NFNDhsTDJHeVliQjBMOTd1TDdNQ2FhcnoyZWdYM2E5RHI3TVZtYldidTBo?=
 =?utf-8?B?RHZNeTZ2bG0rbHB3QVdMMzVZUFhxTWFCQ3JnWjhRR3RWNXZRQ1g0ZnpmOFJQ?=
 =?utf-8?B?RkRLN1JqZWJraE01Q3I4eUNod09pcGZmejZPd1ZqQ283ck4rTDNJZ29CUGdL?=
 =?utf-8?B?eTZySmJGSCs4S2dhNkdTOU12STJqTGlhcnYyUGxrYzBjT3pLc212L2V6Y2sy?=
 =?utf-8?B?WFBMaVpHTDZPb0tGUHhHVHcyY3loVWNhOG5SRHpPY3dhSG4xKzhQcVZsbXRQ?=
 =?utf-8?B?NWFlcit3MkdhbjA1Ty9kRmp6ZFVEdnYydWdTdFNJczJlM1hqdEZRN1FnTy9M?=
 =?utf-8?B?SnU2ajdCRTBYSkk5TzBoa1duZGlyc1BhbGN4by9URnB0WERZV3dNcEptSFBQ?=
 =?utf-8?B?WkJNVUNLR0E2TFBPMGlsM3p1WWJ4Q2t2c2Fsc1Q0MzR3RmZEOGgxM2EwTGRJ?=
 =?utf-8?B?Z0Jxc3Rncit6WFVkQmw3ZVlPdzhsV1A4RHRGeTVzeDRKc3o3SkV2Z0JKaTFz?=
 =?utf-8?B?UW1WbzlGazFDVEtHQXVvQjZ2RU11d2w5N1E3ZVJJbCttNTZFQVRlU3ZBTlNl?=
 =?utf-8?B?L1pwb1VTeDdnM2xiSkg4SU1TYWN3MVgvSm9IM3paQndqbm95b1FIcitCSEJ1?=
 =?utf-8?B?cjJ0NFdSbTF0ZTNUemVqMHFTdVdYUG00N3ROTlp6QnhXQVFGU25xMW9jWmVl?=
 =?utf-8?B?UFpKWDdrZUNQak1tKzQ2eGRkWld6cGtWQTQrd0VEODNyeUVrRE54NFl1R0tP?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	nGkwR3eaZhPGi6v2HiaoqCBW8/IXSWx/vRiifJluKPOlbzl9dnczgPw+yB4HfQVoY3IG9vFlTkeKA+rG93NW6KAQNG+L2LLDMJn+L5ulHvYtNPkXpvxlb/39IlwUq8sVc0UCMoriBmDjOIiBEf3NpmJ6+gF54BEFQpN04+zt70hRzaKUCQDv1k91ttZN93QbbruTa9/kUsSIBPR+qoPSm/r7CORkbZ56tIBdnMQKSmmbsicTvQ9rINoqCPbb512jUNU8zVElUQv9PXGcuXzEWFxO86bQCgREOVD7/ndSfE99TBhhAEhMXuarmO4lW0XZm45HB3Vq/ddcogMsI3B1IxxOK1pcfhUFVoMn/ioKG+FlYoAW5R9dLd4sqwzD6kXnGP4+UhWntNdJGoOnXx+Y/MtRGTDNqkZVt5f7ZmjUwdHzziG1Fev2/TPetocnVADxPcRe5vPVOlhoAhvaysJJkTAHbbvWAHdqmhhX/x9XSP8fWylqgAI9EXVKlsDDGkp0lfyLltnOsUNn3WNfMaFgON57ZOiFycx6F2ODIR/mQKPkCfZhQKi4TCzuCJPgTCQ2Q0IxtWKJwcx/fVH52EOYYmfI21K4rrH1RLAY+IPC2u0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7557ad94-a34b-4ab9-c84f-08dc3fb7ea01
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 21:37:11.8808
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RFIhzM2rN35JcXurXW9NmCWnm9c+kz7d585t/tnRtJ0wnbLvQzFY4dgXopd/CjswImXRvobsa7iS7DOAMXYsJznjA3N6h+a+yOyCfK+5SUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6024
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-08_08,2024-03-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 adultscore=0 phishscore=0 spamscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2403080170
X-Proofpoint-GUID: 0MVBWcFBj-zhb5ozAwPlp0Sx57VoUpUX
X-Proofpoint-ORIG-GUID: 0MVBWcFBj-zhb5ozAwPlp0Sx57VoUpUX
Subject: [oss-security] 5 CVEs fixed in Go 1.22.1 and Go 1.21.8, 1 CVE fixed in
 google.golang.org/protobuf

https://groups.google.com/g/golang-announce/c/5pwGVUPoMbg announces the
releases of Go 1.22.1 and Go 1.21.8 containing fixes for 5 CVEs:

 >- crypto/x509: Verify panics on certificates with an unknown public key
 >  algorithm
 >
 >  Verifying a certificate chain which contains a certificate with an
 >  unknown public key algorithm will cause Certificate.Verify to panic.
 >
 >  This affects all crypto/tls clients, and servers that set Config.ClientAuth
 >  to VerifyClientCertIfGiven or RequireAndVerifyClientCert. The default
 >  behavior is for TLS servers to not verify client certificates.
 >
 >  Thanks to John Howard (Google) for reporting this issue.
 >
 >  This is CVE-2024-24783 and Go issue https://go.dev/issue/65390.
 >
 >- net/http: memory exhaustion in Request.ParseMultipartForm
 >
 >  When parsing a multipart form (either explicitly with
 >  Request.ParseMultipartForm or implicitly with Request.FormValue,
 >  Request.PostFormValue, or Request.FormFile), limits on the total size of
 >  the parsed form were not applied to the memory consumed while reading a
 >  single form line. This permitted a maliciously crafted input containing
 >  very long lines to cause allocation of arbitrarily large amounts of memory,
 >  potentially leading to memory exhaustion.
 >
 >  ParseMultipartForm now correctly limits the maximum size of form lines.
 >
 >  Thanks to Bartek Nowotarski for reporting this issue.
 >
 >  This is CVE-2023-45290 and Go issue https://go.dev/issue/65383.
 >
 >- net/http, net/http/cookiejar: incorrect forwarding of sensitive headers
 >  and cookies on HTTP redirect
 >
 >  When following an HTTP redirect to a domain which is not a subdomain match
 >  or exact match of the initial domain, an http.Client does not forward
 >  sensitive headers such as "Authorization" or "Cookie". For example, a
 >  redirect from foo.com to www.foo.com will forward the Authorization header,
 >  but a redirect to bar.com will not.
 >
 >  A maliciously crafted HTTP redirect could cause sensitive headers to be
 >  unexpectedly forwarded.
 >
 >  Thanks to Juho Nurminen of Mattermost for reporting this issue.
 >
 >  This is CVE-2023-45289 and Go issue https://go.dev/issue/65065.
 >
 >- html/template: errors returned from MarshalJSON methods may break template
 >  escaping
 >
 >  If errors returned from MarshalJSON methods contain user controlled data,
 >  they may be used to break the contextual auto-escaping behavior of the
 >  html/template package, allowing for subsequent actions to inject unexpected
 >  content into templates.
 >
 >  Thanks to RyotaK (https://ryotak.net) for reporting this issue.
 >
 >  This is CVE-2024-24785 and Go issue https://go.dev/issue/65697.
 >
 >- net/mail: comments in display names are incorrectly handled
 >
 >  The ParseAddressList function incorrectly handles comments (text within
 >  parentheses) within display names. Since this is a misalignment with
 >  conforming address parsers, it can result in different trust decisions
 >  being made by programs using different parsers.
 >
 >  Thanks to Juho Nurminen of Mattermost and Slonser
 >  (https://github.com/Slonser) for reporting this issue.
 >
 >  This is CVE-2024-24784 and Go issue https://go.dev/issue/65083.

Separately, one more CVE fix was reported in
https://groups.google.com/g/golang-announce/c/ArQ6CDgtEjY/m/oLMrdq_GBQAJ :

 > Version v1.33.0  of the google.golang.org/protobuf module fixes a bug in
 > the google.golang.org/protobuf/encoding/protojson package which could cause
 > the Unmarshal function to enter an infinite loop when handling some invalid
 > inputs. This condition could only occur when unmarshaling into a message
 > which contains a google.protobuf.Any value, or when the
 > UnmarshalOptions.UnmarshalUnknown option is set. Unmarshal now correctly
 > returns an error when handling these inputs.
 >
 > This is CVE-2024-24786.

Though note the followup message on that page:

 > A small correction: This vulnerability applies when the
 > UnmarshalOptions.DiscardUnknown option is set (as well as when unmarshaling
 > into any message which contains a google.protobuf.Any). There is no
 > UnmarshalUnknown option.
 >
 > In addition, version 1.33.0 of google.golang.org/protobuf inadvertently
 > introduced an incompatibility with the older github.com/golang/protobuf
 > module. (https://github.com/golang/protobuf/issues/1596) Users of the older
 > module should update to https://github.com/golang/protobuf/releases/tag/v1.5.4


-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
