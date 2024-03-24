Received: (qmail 14227 invoked by uid 550); 24 Mar 2024 16:05:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14202 invoked from network); 24 Mar 2024 16:05:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : from : to : reply-to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=wy7oAw7KpkljFwyLTJVCtdL97BHTT2zPVazdJXXx780=;
 b=LujLubOIYVOARDsVGhxObrMVk3KDp7eRczHmacBgtXO7lLHCmLd3BBzlxChI3cc5dM/q
 HqXjlvykI0AbuCFubAINLQ97JVghzK0fdZCEQtn8VihCkrNigw8FqvCA71ZaB3arebC5
 dfqfQR/5wZDtzzgK5Uju4AaQ6AF2kA6aH99baOEe2ZyExHU/oaabvHDjSABv+ZZlx2mg
 3cKd5juNOC8c4DepXvK4y5Lfav4f2gi54ZHeS9qBDPZIg9dpzDk0lufiAn03Cpyg2Tu+
 76Umr/DA/M+X5spmrrq2ruVOHMtaLHsfrz1/PfAqwwFBTX2fDm2QfYFIXjXZR3wPAp/6 mw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QU0zdrElpWqamiRQphy1hV8XLD1PB2vD/j8RJHUZPcQH2dxSIxIZNM1SDpa4F18tyDSf4kyXsWY6zT4/x1kd3gSIS7qo7pAYQhMdcJ60zexkQXjbl6LXCYmnAd6f7CgjVG6+n3EZVUXaHlLkSpA09JD66W636nRyA1GVZVOu80wb1mTeHV0XwGuD3GTK8UD+gL1ZVPHZsrM06nSFaSVAPmODfpMpOqyDHfSP5Xx+QUwYJBCw13yi7oDnqEUqETopPEnM8/v7yS7zngRBxl7Al7i8Q5aJj8rdf+B6V/90/g2AyT3AJdAUnCakTpR2xVsTmo/yNnZnp686mnJ95QK/RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wy7oAw7KpkljFwyLTJVCtdL97BHTT2zPVazdJXXx780=;
 b=g1XhPjxxWaIhwAV/BSPh/sIwojuL5mrUkVd7ZkorNo2QSSQXVRR83ZuvlFK4PYULxmbvhPel0vwZyEKJSTgtbFYsO7AD5oxD87ynaFqUugSeIZv7W9KHejEfw0z2vt3luaIZGw8A6N1tcoUts/YCa90EIcMqngj2D/N7ww847vRYBmmO8G40RLA8+sqLjyw/9RRxVSr9Ki/VdiSuoWgve0pciPnHv4fh86b6+LVAlwLeoLEyGws/yKd90EOiJHttKJeOMD5c6+wLAWpn9PdQOYzZCZzNQfoaFMnYu+VUgMu6703xZdWhpgbfVKt9HxmyQhaiPg6qgBriTyeKcXrWpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wy7oAw7KpkljFwyLTJVCtdL97BHTT2zPVazdJXXx780=;
 b=U7Wlk1g1Gg+U0dNN1gqGIb6t5QUtbK/mzOe3GZ0fZecuOe9n1CBKthv802pjYJO1jo1yDCeND0weDEUyZw1BKOGvwG5erCQKaBEo27NBa5LncV3a1a1Mc2j9r/ripLm6q8VtJOtjRScYnDvpxnuLHbxkhPCZ2CrmSVRIWv13sMI=
Message-ID: <11e6e0e9-e5f7-464e-af30-b78349483cdf@oracle.com>
Date: Sun, 24 Mar 2024 09:09:57 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com, Ali Bahrami <Ali.Bahrami@oracle.com>
References: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
 <22b2c6ff-84ab-4fe8-8e1f-c192323a6bbc@oracle.com>
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
In-Reply-To: <22b2c6ff-84ab-4fe8-8e1f-c192323a6bbc@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR11CA0018.namprd11.prod.outlook.com
 (2603:10b6:208:23b::23) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA1PR10MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: d3d93c1c-f8e2-4fe9-6fe2-08dc4c1cda24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PlVucOF9xSRKNk6gTJuIqDXMUkYeQDU/v/G2nTcrKItvAPWvWv2JW2oOdNg9P15zJ6KvrBxFpupUvxsrMo6JeKBTuaj+THIww5f7HdCIXwPpZQiFFoMED8YaElzjtRJJfeCB13v21BCvzncF98KcnaQz7cU6aiFuDrr0ItL7caZxJg7o1fImUdiWRx3i1UuwI2HeVXH3Ytdl6L2m7itq7K0CSRGAXCrtJWOPWJ9H7spYqN/e2c9J0k9+cWbN1GnKNDcs32pW8bliG+EyL2KAhaJRSUlfF7pSFrdvQygMYmHicQ4rIyuUvUkiHuDubUg+vSAQwVDaIpDwWm5T/Sq6PTGo3V1dQnbpm+0kcOIl94KTgcsnIwz+li1pk5Iqc2om5CU+UyCqIvAzyT1vLB1hAEdkUHJsMX4iUzSNoXdiO7/5F4Bp2nVb9tPdYDTsT97LX8287OD4FAWWPwKWK018dJGqzRk/SWcy+qsHwYa9tFtrh5Ou4B0qSnlC1x3kfuJeTikvQ9MylfK7N5FzNm9QN92fPUPRB9Ka1E6byQYOvSYyjPS3vsZ4sOOlAU3sVNZhUqJ/W5wbSylZ0cvqYiocBzuYQlFxA+XXRVPgzehjRzo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eERndEdBRmVsZElEcjl2WHIyNEduci9yUFpmM2grK3pQNVVPTXpuZ3VwQ2NS?=
 =?utf-8?B?emtySFBYT2haMnVFcTRnQ0s0eDg1cS9CRFhwc3MyQXF5bGdkVFdqUkZldnBZ?=
 =?utf-8?B?SkxaT3ZHK0RMVStubFEvVEl0L0dtQm45RC90aGZyWXhQcUc3RVBSSnZqMmNx?=
 =?utf-8?B?ZTQvK1ZvNFBhS0J4ZnBiN0E0UXFpMkN0WmdCUkxRMGxQMFM1Qms1L1l6eDRm?=
 =?utf-8?B?VkhlbENNdnRRLzBpc1BSUGw1RHNiNGR6dmlNdWV5b1hVbThHUGMybWczUC93?=
 =?utf-8?B?a0kvdVdoY0lzQVJLdlpUTUoxTWdCc0hSaU5QV05LZXE1WHQyTmRkVFdPT0pw?=
 =?utf-8?B?YVcyanByWGxwK0ZTL0IrRUZ0OWZ1bUk4cDdEU0Z6TzZqdVQ0OHA4QzFyOEoy?=
 =?utf-8?B?dy9ncjl4K09ORXVUa0c1SGE0Slk0MWRBdlRxNXhlNFBQZXZraFU3WFkyN1JK?=
 =?utf-8?B?SXhhTFRjL2JyckVTditEaWl2V095ZStsbGJhMi9IUC8xTzhqeGNFRCtDZVRz?=
 =?utf-8?B?NFZDQWJvNk83ZUd4SDlCS0FQdUU5anZLTVJTN3A5a2o2VmliRzhmZDU5NGxX?=
 =?utf-8?B?SEErUDBiRmNmSERPSlpicmpkaUxRbC85TzJwM1pwOXVZZEtWdzJNbldPeitH?=
 =?utf-8?B?cnJTTmpBWWlhVTRhQ1F6MUN5V3Z0Y2s5bnZUVUV6RmFlRndiWWhiYVRYVG03?=
 =?utf-8?B?RWhDNERXZEhudE8rSm1XclVtcGhDc3B2WlBwVHJSUEx2dWxEakZrNHpFWDl1?=
 =?utf-8?B?RG5mdkhBeWtaL2x5c2w3dXBwTFlqeXZPeEcreWNRdmlNeU9FYzZLM1BMYWVR?=
 =?utf-8?B?QW01Yk1WNzdpK3hGZXB4d3owUldhVXZBZFJEaUFzeDFDeXFtUHdkbUxqR01I?=
 =?utf-8?B?bW1kZGp0cjhIS042NndqSTZUL3NJYTZUNmsvUThURGlNZkFLbkxaY0dTR3lo?=
 =?utf-8?B?T1NDZVJLYTBNd3hYTkoyVmRReGhDUW8vQkZkSVBtWWpDUWh0WUZKNXE0Mm5I?=
 =?utf-8?B?b2d0Yld0d3JmWXJDRDdrYjRaVURXcUhrSnNkbnRISVhTZm9yU3BGNnJ6YlpY?=
 =?utf-8?B?d0w0OXQ4T21GR2t1dUxIVzlsQUNGWkE4aXVsYmJBSTdOS2xSRE1GSXFlMGYx?=
 =?utf-8?B?MGZIa3pnMnRidVp5MHVOME9TdFo2Ukd1cDIzK2VEY2JSaXBmQnhnZko1OFBQ?=
 =?utf-8?B?NmFjc04vN0xZZTZEUFJsWUc3aW42S0lsbGw1U3Q2SFJKT1d6VTdIT1RETE81?=
 =?utf-8?B?UkNRbnU3b0FrN1VkdVpENTV0TDlVSEtFZDZScjVsY2tKZXVCZTAxcDRVWmk3?=
 =?utf-8?B?YXdFNkg2b0hPY1cwWWRzVlZoNnQzbjFwbFI2eDB6MUxyNTZBZE1hRTE3TFZz?=
 =?utf-8?B?NndveWZvRW5RQ052L0ViZ3g5ODNXRk90QlkzSjhsWU5CWDhvTDBLU0RGUG1p?=
 =?utf-8?B?bW5VSnA0c0ZTV3FBZktNRXdYTU1hMVMxNW1SaEZTL1NpNGxHOG5HWWdKaWxt?=
 =?utf-8?B?Z0xKeVNFSFRQaEhMaGI3T2oyTWlVbXNwWDRlKyt5Wko4bnhVLzRKcWxhRXli?=
 =?utf-8?B?UXU1T0JkVi8zdGZzSVVaUHVJRUdhUmRvWjRwajFlbG9mZW9IZTZ6NWpwOEdF?=
 =?utf-8?B?VFVqeFkzVFlYL0dNSDZ6emlOY3pCSFROTHV6K1VlYmJRM1BreVBKS3h0N3dq?=
 =?utf-8?B?Y2N3YW4yNzJyV1VzRFc5QXVaRmZ6aXRkSmY4cUtkZjdBRXhtTWJvUVNYMVQv?=
 =?utf-8?B?M0RBd0RyUWI2WjRkTVJvQ1hMZlk2Q3ZIYjRPMzVLRVJGWHk5Rmo3dDNNczFr?=
 =?utf-8?B?SEh2d2dxNC9IOU14RTRFUng4Y3NyR09KNXhPa1hEbUhCRU5DMTk2K3FwZkht?=
 =?utf-8?B?T2ovaUErMDI5TmN1Yk1BalNDV3dVTHhwS29WMDZJSUdiK1ZjZnozandKS0Rs?=
 =?utf-8?B?aDhvTk94MndLam1GcjlxaSt4aFB0RnZRN1JzZVVrM0s3R1NCMmsrSCtpb1hx?=
 =?utf-8?B?RG1JbVdJSkpnSzdMNjhFUVJHTXQreGxZd2RtbFZSMFlOR2F0ZkxMVzR1SVF1?=
 =?utf-8?B?RG40ZTArVy80WWI4R0xzQ0puMVQ2Z1NKb3lPMmF2WmpTMnNDQ1N3eGhUbTFn?=
 =?utf-8?B?RzBJMjdRVTNFQ3RQUEFCL2h0VlNrV1A2MEFSMG42SEQ0QmZtVFk4WmlhdllK?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Mknn4HLSnY/ln9vtZoyUCFiBdDtgh3754zp2m8ytPl7mIWApUwEGajR8D6LfaqBQgltFC13bvjBSMoPn4e6BszCxHGm7cWK/3tLKd0QBB9Ao+p+78BJfz6NRT9vq++t8tB/+XjP9StKQptpgnCtUK3onZTQKfccjKojutU8VU1foqheRjXUvjjXjNuT4Bn/ll2xKZGmdLF2C+VtCWttn5EaWdnAkVwGG1I8rMitApQvf4bX+Cpcgs8mRMucopJZpC5K0HRUHcs+SSQoBC95mWE9sFz83T5EMeiViiHJtBfY8nzN+cm/Yuzi1MK+shmcXuy90luOiZye3EOSI0tGQxGHVcV7iLzvQwSWC9VoF5gC0U3xIS50bTT3TFBhy5j1QATJL/MvIi0xzhh/PQOia34DIzbJ1x+Ixii5nW1SRkQku7LM+9J/pCsDM47YubUFAT7ne7nmrrcxd/VKUbgpsquYbHxLEe6SiM6SE1Y/NPA51QBHyqjzQKmEkTNb2VbsGUC/4Z2tNZH0x94VB1xTY9n9C01KFDMxAtCX2AVsu9wm++9PPuef6GyIU1iQw2K98AsrbLM+e19DTtvq8xFt9QkWSqM8mqMIIHdyEZXGKXQE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d93c1c-f8e2-4fe9-6fe2-08dc4c1cda24
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2024 16:09:58.3335
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pnEPN6Mm+JjCDK8xyYEQXDZcEZvlz18zXlZy0HRf3F+QE/2zl9FLSA/qVFUcDQA/BmA+erlFicN4Lzi2eFkDw6m4nt0NTklA08fFwF0jQVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB5995
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-24_10,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 bulkscore=0 spamscore=0 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403240103
X-Proofpoint-GUID: Di88-U64Q1XowA0okuTdjYOG1qf1KAeG
X-Proofpoint-ORIG-GUID: Di88-U64Q1XowA0okuTdjYOG1qf1KAeG
Subject: [oss-security] Re: [External] : [oss-security] Fwd: GNU emacs 29.3 released to fix
 security issues

Apologies for the duplicate, I was intending to forward that to a different
list and failed to notice my mailer autocompleted the wrong list.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

