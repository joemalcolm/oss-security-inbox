Received: (qmail 5132 invoked by uid 550); 12 Apr 2024 17:43:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4072 invoked from network); 12 Apr 2024 17:43:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=77CHGiJTfUbD5OqM3FS0juzGoR9jCxuDV+tmqFx77Vs=;
 b=Kgmas/BC9vAAHrQfp6Z2XTl/wLq4QeO7F/wlf84hsqDbbdoJS+vFOtB0c4DCyx+unEhF
 Xh/u7i71yYmtykwc0B6KB7/0FSsr8IXqXs1mddrrnN1svNfqXTuxBmQ9qos36adkYkVN
 FQKCzxsabCIoELAUjqA/Faim8ycDELl5oJadTbn8Z++nQ1lyuYLvMSaHS1RX5p1YzFhj
 n64lXK5hF0A0xwJysQwxGPpyvCTycS5/jAvPHV5SUJpk4kgXPtQ0m7HVUohLQMJ9diCD
 nXlZwCVS4bEmtGovxsjDak5JI/dDkXxBT+R6LPiOxhXAvQa+9IqjtK1V9eo2+lzPjLma Nw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hbJQsPhWWw4hoRAFtEFXx6dY2mPlVHjF7wQaao9sSXQPMcrw0EPVM2358Xar3FmxF0xe2rwZWG/CPzTEOmN0eT8ggDXYWZrpEL2m028gBSmkVsTo/iFwt2NFSz3Orva/YHhjPFU41sSOzpRg/A84nkEBmPhaSGImBl/bnVFRDdgCHXr9+LbzzIj8Mr1umh3XQruEYF3MvrDC6H2020PPRmHaUf4KGLybRUjwDz1xE29jnRB3L0DK5Enl5y0MXiVkaN6V4CTIElI+JCBz7Ai4WoL53McLAkbfPEs6VkNFlTycXx+QiSXZbTZ/pv6INhlnoBR64+jcVGs1BXtz/vUcpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77CHGiJTfUbD5OqM3FS0juzGoR9jCxuDV+tmqFx77Vs=;
 b=OpVkzFRLHoXQgAG+MCx44ZUFeiNJq/9k8oAwblWyAc+9PGgfXbKjqbCfirwk9NUw0w8szUY+cWD4DiaeKjR2qePR+6J5OzJalLF+iPj51zGBAheisRrV2j3zFQIslwSOxaTlUXy5yKwiwCCJLFfHvpdr2Yi9Qj5t6mapsSNb2eBg04C+jtrgC7RDlfxQ4Q2BbRSi7ohrTd5bf3h4iPoZ0xceSyJNyHFnCRwTMpk32oY1Q/oxOvuwsT7RClykeNRAeqhMb1xZDp6FXV4Mh1cxhOMNsrzphay9dvLGKb4W8yOZDQ3xCMneQJhnv7LIzUHYCW/LnB7GFIIN48LteEQh/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=77CHGiJTfUbD5OqM3FS0juzGoR9jCxuDV+tmqFx77Vs=;
 b=cwMccM2pK0TwhfHk/PC5URKdT3/vVhCAZ8QwCO2J19bCMS6ICGDgwERIjTMMCLkMcsGQadtUv1T0XZCh4ajJ6pAb/kZCc27mr+E4YHL0ftYNqzToDLCom3UqIOkgAlA8hjt4atWUaPOyW0Tf3uE6jN20u+e6jKenuh8UcqcEfC4=
Message-ID: <2ce44453-1d45-4c1a-a2a8-daf7f9d246bc@oracle.com>
Date: Fri, 12 Apr 2024 10:43:24 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <a5754596-9845-416c-a881-7b1f235ba696@oracle.com>
 <e36298b2-206b-4885-867f-2ff7fa6fba7f@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <e36298b2-206b-4885-867f-2ff7fa6fba7f@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR16CA0022.namprd16.prod.outlook.com
 (2603:10b6:208:134::35) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH0PR10MB4860:EE_
X-MS-Office365-Filtering-Correlation-Id: e1e99fdb-edbe-45cb-da75-08dc5b180f09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P8TdOw+sY+OpT2HRyJhv6+bygPnOZW9nqqY9qFucceLxo7kSFsAFXUlAkDT0d71HJl6ypMwEHcN/pBeufzmEspknRQCa0Rp7m1/IvDETXrLgHccMJpO3aSctZ6OVUKZHFaXSQDymjoKysPkFabQc/KvRFH+jYtczd6STJkZ4fE7lO4VnD4KC2EITmwagUIRfTSJgxn1VMeudL+EpxjOb7tWDVQc6WKbIepjM8+9L1eZFOjnfG058XvHdQH2jnCihgdUjR8Qyur8XZdct96ItepvxWxsrG8OqTrlQtDVM/75msN36tIV9WyBWrD7mxEg3HowXOYFu7tmZ49Y4yCTex1KvP94eIR3FCCm/P4G/RUT0m4NKCtK9p2bab7cV5F41E7nyDEKkOnzqtpW942EvJ/aYFLRLslOtZZeqn5havcMICGxT9OHXyCCDodwBVhfgCNR+SQ2X0n4nDyPYfhDef9qoQ8VrgASmmXG28LNaWFE+sGPtIjo3N6dOhRnYgJSE0thSM9c1VNinpQ2x/L4uJkilcKGVV2qCzzH1zkfUJTcfK0mfgCVFAmC9YjKI0ozkkLLmSbdYDSTx3izbtoG9/HO8gh8EqCwDCFd3txOdpDz46fHtj/LfaOgnY9royfiM
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QnNwYnZqWERBeHhqNHJFSC9BNlR1R1pUT1p6eHUzR095ZGpCUHg4OTJncGl2?=
 =?utf-8?B?L2tTOTQvcFEyVTRFT2dmdkNOTHQ1ZnZ1N2tOWWtJUUpYMEY5N0ZEWGxnY2ZK?=
 =?utf-8?B?cVVOaXZCaGxEZ3lJc3RPZGNhNFhnUXVRelJyTVpMZUpZdC9BOWcycC9sNFFC?=
 =?utf-8?B?ck42K0x3MjF5TTk1KzZGa0pHYkJqZU9KenVQQm1paDlzb2ZkRmg0RmQ5bDNY?=
 =?utf-8?B?ZDUxZlUwWFErSmFRT2FIazY5aFdxUk5YcWVFaC9WNHpMRFJvNXVTcjB3MUth?=
 =?utf-8?B?SnVvQ012TkZiWVgwckFObGcxa0FpZ0NYOGJTRjRoOWxBRnVCS0hsanFKSUxM?=
 =?utf-8?B?cjZDMnczQ0xBOVRZVm5vSmxiL2d6MVhNeDR6Rk53UWVJWGdOZUFDaDFsMmtx?=
 =?utf-8?B?WWFkUTMreWJSZkN4eUxrSmdZSzYrKzQ0TEsvTm1vY3E3MmFBcFUvdHJSZ2hV?=
 =?utf-8?B?ZkJuNXc1cmpmTGN0MlNMTWtiY2V5YisyNEV4aTQzNVdmRm1FRURZaGZWY1lT?=
 =?utf-8?B?QXNFNzE3dEc5VU1DUFBudjFYQThqNUJwVlZGaWYvYnI0VEhRT1RJNENQZ1Rq?=
 =?utf-8?B?OVFYTk00M2hscDlpazJ1cTUzM1hDNUpWd0x1Mm5RdGRrbG1lbERveEw5bmcr?=
 =?utf-8?B?NkVwOG9QTE45NEdETWdkMGpHeW93c3B0T1VLWjEvcEdIcXVCZ0NiVDkyQTBU?=
 =?utf-8?B?bnZoVEt6MVB5V0hWRFhVdUI0Z0dGVGNCOGlaWHMxZXlLNnkxaDlzZXRnMVVl?=
 =?utf-8?B?U01yQ0NUQWZ1SU1va0M5RmlFRzBPeTMzV2dFa3M4dWhTUkt5Z0tYcGxXeFFy?=
 =?utf-8?B?S2RldjFjOVEwWnQ5TFluckVEVCtOb3JIRWkrcWJMelVMUjRDY2c1OWJYeGZy?=
 =?utf-8?B?TURhK3dWNFpLRUlIaENmdy9QbVFpUnc2OWFCYjh4N2h4RUF6bUR3bXZDRGx4?=
 =?utf-8?B?ai9hOWZmdm5xZjRoSVVrcmF0SU0reEE3dFFWQXdkcVpqSXkzZE5nOFR3NzlH?=
 =?utf-8?B?aGw5TjF5cFBpWE90bEJ5UHlPNkpseER3VHF4WlJPWjV1R3M2OGdyT1pONWlZ?=
 =?utf-8?B?a0loVXJaaEczbFI0dE9uL3hDUmJ4VWRUU09HYkc4Q09MTDc2RjFNYjJnSjNp?=
 =?utf-8?B?ZkI4ZTZtUmJCNFNwTGdvZmRjV2lBNm1EdWJ5c3lETndqNmtEaXJkcVNHWEsv?=
 =?utf-8?B?OWtJM0RuWEJHZ2FGT3BIMllWK3hPczdldGJKbkFDY0hjN2F2Y2xtTGVOTWpr?=
 =?utf-8?B?MjVVU0JTb0RzMU1rUmsvMW1jelJEeDVsWkthVDl4RW8vYzFSVEpVTytMWXpn?=
 =?utf-8?B?bnpRLzh2OHV1Y3h3dDczeEdLUE95RStqR0Eyejg0TFpWa0VaZVlOS3d1YkhT?=
 =?utf-8?B?dGwwUDk4M0VsRjRvblptWWpDTVR3ck1GN25EdFgrYVE4NkNURFRzVUV2eEps?=
 =?utf-8?B?ZXpvbkhaSUt4OStxMURIZEZTd1ZzSVBBNzBwNG1jbS9PbmE2Zzk2YTBJbzhQ?=
 =?utf-8?B?RFdPSjlRcm5nelkrVHVDaVFKNEg5Y0JmeENMTmZqQkZqMDhXTnFBL05uNy9J?=
 =?utf-8?B?V1ZSZFhadEZ2WmM1OUtOOVQwQm1hM25QRk1TRXYxWjV2a2ovMEUzcFI4aUhC?=
 =?utf-8?B?ai9hSUtZREx0MS9NWkxPUEcybjJWQ1ZpTmpucjZZRlpMd1lhRWZNOW5mNmxZ?=
 =?utf-8?B?dDZTZEFzSyt4S2NETjY3dnFvaUltdk5pRUZSNkYxb2RFMThiT2NUREU1Mmx1?=
 =?utf-8?B?WG5MWk9TYThhZGl4MTR0WGsxQitQeGhtYXlNUmxxWk9BR2RuazljN21Hd3pW?=
 =?utf-8?B?VUV5bnpJQmdTczJpU0pGVUpwdlR2UVh1S2hTTmxLYS9wWk5pNmxoM0ZTWDNW?=
 =?utf-8?B?cjlWTUR5MXBGWnNpUVdZd2VWWHdVeVloUmpLQ0NSYkkrN0RlQnpybUR2d2hD?=
 =?utf-8?B?d0pSR2psWm83VHkxVmowQ3A0aHN0Rlo0K05QUnNjSTlDNW9scFhPRy82Y1dB?=
 =?utf-8?B?SlIxU2EvelFYSExCU1dTN0dHWEg5UmNzeVlWcDlNOTFoTzBkUVZ2ZkdUZ0Mx?=
 =?utf-8?B?UGJQYVZSUHZyc3kvVWEwNEw0cUI5WFRUN25BMlFXNmZyZytwbkpkWi8vMGx0?=
 =?utf-8?B?WmdvYTloWFlYc1M2cjBwNXp6YnBTUUpCY2xNODFLMXphRjJzblIyQmZFQXg5?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	c8P9JEDdB/x5r1/dOVzLAGD9I4rZnwcKwn7Frpc4L+QghFoRkcnBudb7yvh6Mr/0sX5gOzvoVcu5ldI+dX1w9SO3Ybccxh+cb4VbnmPPTdgm08mt1XOzQCqJqsQ567OKL/0eRdr7Fk0CMCcrQ0xwchJPT2Fk8THF9ziezHUyfk/7JlK5Dz6Kb5+/6mjCKyN13hW8Y5zuHAlQ3iPPmz84EgSnjFuPjnYTErLw709M8XzKdYCA9r53qEDL7x9eyxu3fNhGX8gse8vBB+IPTnlC7u9QoqTcty3HS58EIYkv3o+aaUJrmRVbFm3K4WUaJcqM2nH6pm8xXi1XUQVl8fCs//kGAC1ZeiepdyWvrByd/4oNhT/MvgorMcAdQhxueC/fdTT/3gy6MuAYheplLhWmpol0EJW/L+pWNFztqJzW0gZJ8pDLozNKs3sVbQWu04p2EVIGXjsyyIvBDcHo9UTTgxjfd5mzZFd2vmKN7onAMMFnhtmzS7V17uc8BcFDTHXlgT++BoXK8YfhMe5S+4xI0o76jPGfjEzcYxP/TJ8l3i2Z3eibMaPFl3zfZUVBjDFaR2/EuOWTETApTpuHVOEgDrc9IMfucg2NgeCq6DdVNg0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1e99fdb-edbe-45cb-da75-08dc5b180f09
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 17:43:27.0547
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CfsTcoo3ZqxWxZZKcWUXLa1EAGB2erbAUPNueUbKPvzeI//CmRR6BEyBabAFVHq6Wn7PGqcvXwtj6G3A9KeypJRZ9vilGvp9NM4smPUWwEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4860
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-12_14,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 spamscore=0 mlxscore=0 bulkscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404120130
X-Proofpoint-GUID: tYbwzLfsHojDGcJvXDydqgeW9k246YuI
X-Proofpoint-ORIG-GUID: tYbwzLfsHojDGcJvXDydqgeW9k246YuI
Subject: [oss-security] Re: Fwd: X.Org Security Advisory: Issues in X.Org X server prior to
 21.1.12 and Xwayland prior to 23.2.5

-------- Forwarded Message --------
Subject: Re: X.Org Security Advisory: Issues in X.Org X server prior to 21.1.12 and Xwayland prior to 23.2.5
Date: Fri, 12 Apr 2024 10:41:28 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: xorg-announce@lists.x.org
CC: xorg@lists.x.org <xorg@lists.x.org>

The fix we provided for CVE-2024-31083 introduced a double-free in some
circumstances, which led to X server crashes.

This has been fixed now in xorg-server-21.1.13 and xwayland-23.2.6.

For those applying patches instead of upgrades, see
https://gitlab.freedesktop.org/xorg/xserver/-/commit/337d8d48b618d4fc0168a7b978be4c3447650b04

          -Alan Coopersmith-              alan.coopersmith@oracle.com
            X.Org Security Response Team - xorg-security@lists.x.org

On 4/3/24 11:43, Alan Coopersmith wrote:
> X.Org Security Advisory: April 3, 2024
> 
> Issues in X.Org X server prior to 21.1.12 and Xwayland prior to 23.2.5
> ======================================================================
> 
> Multiple issues have been found in the X server and Xwayland implementations
> published by X.Org for which we are releasing security fixes for in
> xorg-server-21.1.12 and xwayland-23.2.5.
> 
> The first 3 can be triggered by a client using a different endianness from
> the X server and making particular requests.   The X server replies will use
> the byte-swapped length of the return data, causing the X server to read
> memory values from the heap and write it back to the client, until it
> finally hits an unmapped page and segfaults.  The client cannot control
> what portion of the server's heap memory the X server copies into its replies,
> but as the length values are typically small numbers stored into a 32-bit
> integer, the size attempted for the out-of-bounds read may be large.
> 
> Xwayland versions 23.1 and later disable support for byte-swapping by default,
> and are thus protected from these issues unless the Xwayland server is started
> with the +byteswappedclients option on the command line. X.Org plans to include
> this change in the next release branch of the other X.Org X servers.
> 
> The new xorg-server-21.1.12 release adds the ability to disable byte-swapped
> clients as well, though it retains the current default of leaving them enabled.
> For all of the provided X servers in this release, the command-line option
> -byteswappedclients may be used to disable byte-swapping support for X clients
> with a different endianness than the X server.
> Support for such clients may also be disabled for the Xorg server by
> providing a file in /etc/X11/xorg.conf.d/ containing the contents:
> 
> Section "ServerFlags"
>      Option "AllowByteSwappedClients" "False"
> EndSection
> 
> ------------------------------------------------------------------------
> 
> 1) CVE-2024-31080: Heap buffer overread/data leakage in ProcXIGetSelectedEvents
> 
> Introduced in: xorg-server-1.7.0 (2009)
> Fixed in: xorg-server-21.1.12 and xwayland-23.2.5
> Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/96798fc1967491c80a4d0
> Found by: Alan Coopersmith of Oracle Solaris, while investigating
>        https://debbugs.gnu.org/cgi/bugreport.cgi?bug=69762
> 
> The ProcXIGetSelectedEvents() function uses the byte-swapped length of the
> return data for the amount of data to return to the client, if the client
> has a different endianness than the X server.
> 
> xorg-server-21.1.12 and xwayland-23.2.5 have been patched to fix this issue.
> 
> 
> 2) CVE-2024-31081: Heap buffer overread/data leakage in ProcXIPassiveGrabDevice
> 
> Introduced in: xorg-server-1.7.0 (2009)
> Fixed in: xorg-server-21.1.12 and xwayland-23.2.5
> Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/3e77295f888c67fc7645d
> Found by: Alan Coopersmith of Oracle Solaris
> 
> The ProcXIPassiveGrabDevice() function uses the byte-swapped length of the
> return data for the amount of data to return to the client, if the client
> has a different endianness than the X server.
> 
> xorg-server-21.1.12 and xwayland-23.2.5 have been patched to fix this issue.
> 
> 
> 3) CVE-2024-31082: Heap buffer overread/data leakage in ProcAppleDRICreatePixmap
> 
> Introduced in: xorg-server-1.12.0 (2012)
> Fixed in: xorg-server-21.1.12
> Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/6c684d035c06fd41c727f
> Found by: Alan Coopersmith of Oracle Solaris
> 
> The ProcAppleDRICreatePixmap() function uses the byte-swapped length of the
> return data for the amount of data to return to the client, if the client
> has a different endianness than the X server.  This function is only found
> in the Xquartz server for MacOS systems, and not in Xwayland, Xorg, or any
> other X servers.
> 
> xorg-server-21.1.12 has been patched to fix this issue.
> 
> 4) CVE-2024-31083: User-after-free in ProcRenderAddGlyphs
> 
> Introduced in: prior to X11R6.7 (2004)
> Fixed in: xorg-server-21.1.12 and xwayland-23.2.5
> Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/bdca6c3d1f5057eeb3160
> Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative
> 
> The ProcRenderAddGlyphs() function calls the AllocateGlyph() function
> to store new glyphs sent by the client to the X server.  AllocateGlyph()
> would return a new glyph with refcount=0 and a re-used glyph would end up
> not changing the refcount at all. The resulting glyph_new array would thus
> have multiple entries pointing to the same non-refcounted glyphs.
> 
> ProcRenderAddGlyphs() may free a glyph, resulting in a use-after-free when
> the same glyph pointer is then later used.
> 
> xorg-server-21.1.12 and xwayland-23.2.5 have been patched to fix this issue.
> 
> ------------------------------------------------------------------------
> 
> X.Org thanks all of those who reported and fixed these issues, and those
> who helped with the review and release of this advisory and these fixes.
> 
