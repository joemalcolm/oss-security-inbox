Received: (qmail 28234 invoked by uid 550); 15 May 2026 19:36:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28161 invoked from network); 15 May 2026 19:36:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=HuGHzQSRTKbT0Phf
	pZPUvS1vbJegNqVqixvthSDPbLI=; b=GNb7tjz0ophQziZLgZ+UEfNVVRDmVMNM
	GgzZwjOAp0HfZ3SVwyqnXMCj4kowE2FX8fAgjqMIW/VqkB8/mh8fP2IpFSm4h6Xd
	MGSbMYxNHO/U5XF2AKeYyxtdd/VVzsk5ULWxYimFaRxpb9A3tQRuZKXi6BLBEqRv
	G8M6YcrXC4roaxxVzmZGp6Rya+kzKRSMszPP3JcCxArIx1M9h/xIKM9fF7pOfOMW
	yXpF5QD8KMR2074GOJDHuDtyYcebqje9ZXcndSXmCxjHd6nSl0SaKKcbOJje4Bzn
	UPifJD3uh+2m8vS9nYKMFNBPjJeGYssjPEWXLXvPJMn5HziCt+ptWA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iy5jZrHOblu4oOrgq8dm/92bCKJwYsom6OnBmIXeEHriDraRKx24bRWp++NC1+wfzhVZskI79w8+VLo1iqWzL5j8DaSIY4wi7fH7byx3PRqKqAFUjm1MwnAkzxBTUihk3VSYL/+Rd0YGRpqhPs7XOnpTulWY+TazoZMVC/k1cWysgZzGHvAEJD6k1SRN3L/6fILjc09Fw5WWjxapCpBWZAEfG2bulnt5rn6+egL61y0DXJeVZzBKY8lkRIgI0d0u+GUMflbRtP8Rt/UeroiQX3hvl9RINWIrbWxygGA2xH8AP4iwwQB7U/FnR7JmqxN8U2Xkaq+rkFvOrB7BUrnpEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HuGHzQSRTKbT0PhfpZPUvS1vbJegNqVqixvthSDPbLI=;
 b=gIHHWWaS3uAlIPud75KvpSZ0pX05L/KvCcbGfcgyQg9ACi2OVy9w0wRKregUhnvctXoZKSqR6gS/e7LXAuS1FblIkP0qhKDsu/xJo4HQtzhtmp4HkPALu1yBEmVjzxuK4jXV5cJSFKiQ4EWcuJSPmbv9dxSo4ZyVGazFHFCNmcGv2e6IL8wu2NP/qjPoZMss/E4ym2eqAF42VBz2rioVmw2hEK9QfFwKVTNlhdD3CuSK/1liFSjCHSpgjxHhWeYB4IJb0QLznoWJP8xvqSlietSIBtga5M2q7ij5T64bcPVfTKzUWKRzhHZSlUYrQxFNi4sAOnSkWjDwfXPDDLyDfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HuGHzQSRTKbT0PhfpZPUvS1vbJegNqVqixvthSDPbLI=;
 b=cIvUR1uwWQLprxMKhyucOs0t8hmVAXAdoLh4uUJvC6okEVowyAgC85pZuGzTbR7BWw7mCuuyM/0m9rl6ujnIiA4PT3x03KOGKxCC+NR+TIZvPj/SYsBF4X7qf4udWR5ufJex4+dmE7sX8Oz9+EzdZ5ufQXI9WfPcF93mI0aAaq4=
Message-ID: <f3e23103-683c-4b46-9a17-fdbf43312284@oracle.com>
Date: Fri, 15 May 2026 12:36:24 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0092.namprd07.prod.outlook.com
 (2603:10b6:510:4::7) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB997642:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c5f709a-8485-4f00-9160-08deb2b94131
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|13003099007|3023799003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	hk+pkFHH4aE/EAIJYg9YfiEmPHHxak/oM5Nhs7pbfokFl+BH6yCk4hTFCOZ+akTEt7jYXkVs0k7nCPphjcl8eRTQosEO/hUg3WFQNPrtLd+vlYJxSi1yCjl51y3Eg2l37R+QH0nmHUIZabd3Ecc0Mac49OIkN5OF+gBORH3AByrNX1JI2nJFxoh0lpfAreL3miGlmzBw20b1999H50L+IwLdo2iCqkfmS6D1PuOV6hub6CU20CGOS+bOqFUB06JB1VlJd2yLghKQHaeEt9AIhjRcPdpvxgCzH3nktjMxjYw5rokau740oKRhINBedlT60JFvsLP5b0HyFlys3tt2yxMreb0DIEaX6XIS77xC9jxxFYQmjmQLpGoHqvWqgtEI6U8p/ASXCG4tLg8otNUHL4br3SM1sirpT7KyUudeUwIi6RozNEpbD+IRjsZ25/BQTfGTk272yGUYQHZbEJqcxms3DdMV6NjHbCcNwUEAvMKREnrg2A5Suo9WQYAfPbXSKycLMX9ERWkdEewzvs9b889b/JIgvORtHzW7tQxlX/hRoYt1UA8j+YZ79CECC+KhuP5dU0tQiaGWYcL9nHfa8/7YdK3/6zg1tjH5QtfHvtmpZo+xbCVeLLH4Iz7XST08VQWR2QJHGjtwlSLS0OgRnA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(13003099007)(3023799003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TDhid25HbjN4Y2M5U2E4NDFNTDkrdGFyQ3p1U3I2S3NqeWxDYkFndnpVYzZK?=
 =?utf-8?B?aTlFZ2pGbWxLQ1kwSlUrSFNMZi9WdUhUcjZrNFkxa1pnMVVLc2dFYVVYTnNM?=
 =?utf-8?B?VFI0RFgrVXd0RjhqVkt6VXhPUDVMakM5ZjJPdWMzNFhzajUrR3lKam9EakEr?=
 =?utf-8?B?NEczTXR6Qmp1aC9JY1hDYTlpNjJ4c0ZCdFZPZVo1VTMwZ2wxZStnUmMxbFg5?=
 =?utf-8?B?UllQTENmTDBiOWZvYmNTWWhoWjQ5bHJMa3hqVU9rYXYzc3gxdEJkV1U2eVhx?=
 =?utf-8?B?eTFGcUl4R1RScUg2ejZMQUUyRVhNclo0d2FpMFZYWGpaTjlYS3ppRjJDZFdY?=
 =?utf-8?B?SStlRlVNUG51ZTJvMitUdjk0YkF2eEs1VHgycUtQWVlPV1NHS2pXN3RkRytl?=
 =?utf-8?B?bDBxMlU3emRlN1J2TmVid0t6RWh6UEZjbUFCQ0Q4Sms3cFNwNHhJR1dlVVNV?=
 =?utf-8?B?L2g1a28zTk9NNlBLLzAyN25RaVZXU2JOZHV6Wk5qR2N2SkFDR0VXakhCYUFp?=
 =?utf-8?B?V3cyKzFaanR0SGZzcFZQTFcyV3BQNHZzMHRhQU04S1RkSFBVa3VmR3FUR3hV?=
 =?utf-8?B?NGVFeUIySGRuOVRCcElNZmpocTBJK1o1SjVlS0QxL1B6dmkySWE3VS9Ic0pl?=
 =?utf-8?B?Z2xmTmlVSnhvWDdhV2pXWG8vUWpRcVRxbmZiVkNlYUc4eDFXVC9XTGxoU0hD?=
 =?utf-8?B?bWhZdTlIRm0vczkrZmxsZU9KMGVaUGlpVWoxMXBWVHZkWk5BM1Fwenh1VXly?=
 =?utf-8?B?Wmg3NXJ5MVUxdGNmdTJta2x4RHRGSEdUQXdUbkd6L25uOFJCMk9JMGxJRFVF?=
 =?utf-8?B?c1FGOE80SzVjNkRSSE1mZFBMWkYvUDV5VmhIWjVSSHdXNXF1MmUwa0JSR3NX?=
 =?utf-8?B?NUxRa0VQaVRGeFZ2Mk93aVljVmhQajZScExUaVJIamx4QmtFTmhNS2VaYllX?=
 =?utf-8?B?YTFnY0lWN2NTVEFDRG9ycVNMekk4UGRzUG85eUYyWTRvaklEamdhc3BKZ3p6?=
 =?utf-8?B?dm1ZcGZ4ZHY0Um5YbDdZdHg3MitwNStKVll1dEF5ZVB6MzFOV0c5ODhDOHJz?=
 =?utf-8?B?ZWxjbnhHdThpWnhjbEdTWHQyK29HQkt5azBrVU1CZEgvbWVRbnIxSFZKdmhO?=
 =?utf-8?B?K25kSVRqUTdjN2pJUnRRdlZ1NkJpVnJkK0kybHVHSmtvU1g4ZkpSTk5tVjJo?=
 =?utf-8?B?d1Z4Y09XeWNYUUpJaU4wYWdKMXlYZ3E5V29QOXhwS0RKaXVnUE5jRFR6S2hX?=
 =?utf-8?B?Vk0wMFV4dklva3V3RGNoSVlJU2ppVVdsUXFFODlGZWRDMEFJaEdRRG44RlhF?=
 =?utf-8?B?cWhFcUlmYytFdmUzWDVvQ2dnekFDRUNyTGZQRHc0Q08yeDhaancrbFhSeGVV?=
 =?utf-8?B?b1k1eWdPYzZmcUNaY3lCSFRPUTZSRGZpOHVOWCtjZlYvckdqazJiK1FYdXlF?=
 =?utf-8?B?WFhWckNkRjR3cGI3Q0lQV0VyOE1QcDRST29FdlgwM29ybXBmVDQwTXBhOWNz?=
 =?utf-8?B?MWpBSTgxcVpqNTBQWWpKZDQ0bjhkaEgrSENEN2JyVDBXY2E1SDZXbEVLRVd0?=
 =?utf-8?B?aG5zTEs5NjcxS2duK3BiM1ZSbDU5ZFVyTlZRVS9TZTJ1RWh0VWliVFRyNjM3?=
 =?utf-8?B?WmJtOE5EM1R3QmQrVFp1ZHQwTDRpVUVCMlZid011bDlFQktjQitIT2dsb0kx?=
 =?utf-8?B?MXZ4Q3dqcGNsK0lTK3JEUThVWUFBcm00dlMxYU9OaE5lVnRjUXpZaEF2cVFO?=
 =?utf-8?B?RmhOS0YxQktIWGVPVGhZOGY5Nk05QUhSUlpYQjVyUmE4eGh6RjZxbDF0NE9U?=
 =?utf-8?B?Q1VVYi8wVThaSUd4eStsZkQ1RVEvaUVLbWF4UXhJVnZScHpjMTk4eFdySWNl?=
 =?utf-8?B?aDZOVUhza3V2VDY4UzJ2SmJDRUxKMUQwV1pIZXkzVmhnTkZCN05WbG1KOERT?=
 =?utf-8?B?c3pXdVpuSktObDF1UURIcVpjR2RjSDltdHRud0g3Z1NZQ0UzNnViSGloM0cx?=
 =?utf-8?B?V0xiWXhJRFg4QXhBdmpLelRESUc5TjRteFBCYnUvM0lsWk5Cam52VVNMTWR5?=
 =?utf-8?B?Ull0QzkxNnpnUEwyREVOMEZsUHMrYmhTTHV6ZUtHM21vaCt1eDVQYmFyWUtM?=
 =?utf-8?B?R24rOElXNXZGU3d6UmNoRlZEalhWWmx3WFdCUWh0RzhoZm11M29KWVhiT09k?=
 =?utf-8?B?SWpnYVNPZmg3ZTZkaEg1ajZBMHpTNDVBYVk5RitTbUZUV1JEbkxDZFd0STc3?=
 =?utf-8?B?S21RWGRCTWQ1eHIwbGwzamF2K2RYWmZYVUpYMVBRN0JTRXpBSGM3NzBTK09y?=
 =?utf-8?B?ZHdzR1VqZ3lCUjlKcUl2Y3lRandXaUE1NGhaNFZRY09jbXpuQUxSVGEyL0FR?=
 =?utf-8?Q?Mo3EHjtPc0CdLoAw=3D?=
X-Exchange-RoutingPolicyChecked:
	E6PcRQiBnsPn1/RL1fbO7i6vDgZmhyWR+XFuPGpatQAgOgK35gPxXr9Xvt3HUyLmeixgiRIEdstdzwQPDz4niQhLZOSe7OPUxGSpa6RTepglo4H+sm/UEZsm+AONQkzOLWN5YgxsVArKsx8HXBcMmRNI3S8F1pTyC0JrnBaegzomPHpxf8XQM7OSTRtsmsRU+7g4Wj87mumi722HcxztxX/PUcAOJ+pzU9B5O2GdwTywwOhn5NFQJpMrK138afFmI3ZWS1pdXxbqx6mtWZ7ZA8hrNMNbRYUnna5r3YRzo4z3YAwoSWhtAcKoBEAp8292nmXngTJkL6bs+NZmo5emwA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	FmfrnXbkdDAHQHFg/yqg7aVZcWvs56dmlaeKHsDm1BkAid8u5zJylWFNjEQWfvr7I/10+61AAPX6hRXghCvLksQME15KyBnpOHQunWoGWMT2Kqfk5wQSgkxx/2BgeplBDqZq7I5m0+VsEweYhbW99llfUmwit5Xg7+bOMVYHOThP6rcnGJBi2TpWGN3uO9ZDl0bn+mrqhDcCyg8S2nl/y09cQsk/ytHCwsVWoTOgJjmo4D+8JB1xEKT2K+tBq/fEBdeznmlq5gotGkRxUW4c425peig0DwleiBRqpAOwt70WLzlnPDTLdCKxRaBIEV+eSX1MTPOLkmLPZg7/S6SF78SUEUDWWyXNbLlyFUI4/lFSKrTxoKM1Xby4J5B/lXpilhv2fWZEBXIVY+LCP1QFL+3Dsb0S/Xs+oRsqYoByLVpfy2r//Hv2thekFs0PrcZ9G7xWZ3EpmYxhzpheVEkaCEm0OSAHqISFl1XD7RMGKEI7bIf7NfyDwEas2IR/ZKvJl9kvIoXumSr+E3iUW8yUFcWAMqkBTCDEBdrwGo9A3gito3upUP78ho07mI0JNv9cWdYbehsRCJwbJ1ln2bhlJ/WJRmbNwgmH1ml2gtWmGN4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c5f709a-8485-4f00-9160-08deb2b94131
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 19:36:26.7195
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t2P0EZ/gyjAPjj4RMnUgxaWLkyF5UG6ESCXXZMSjovmiAxvrLAB7dy5cFvp+Eo5QUxJCaYYvW9HcaTnhjN+CXF1LYavLCxc9nrGIQXwbr5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB997642
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_05,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 phishscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605150198
X-Proofpoint-ORIG-GUID: M7ig1FiCyoJDge-fLgxe9HKa3dMD1v6G
X-Authority-Analysis: v=2.4 cv=YcaNIQRf c=1 sm=1 tr=0 ts=6a0775bd b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=FP58Ms26AAAA:8
 a=xlbptexoAAAA:8 a=yPCof4ZbAAAA:8 a=5PTkwDM1AdXClF2TUYgA:9 a=QEXdDO2ut3YA:10
 a=rwfE_HEjssS6VgAKNsbL:22
X-Proofpoint-GUID: M7ig1FiCyoJDge-fLgxe9HKa3dMD1v6G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDE5OCBTYWx0ZWRfX3LL+jcV/MU1x
 dr/xzvTcbchfcVQWcmMn0MiPcF7MYpNR/zfheYS2KXfgrfxyAlkNbX33OgOjSdeXih5OnY1dkiT
 RMLwrpQSzW/oTZPXMDZEnbtZaNblmPebhxSZrdk4DIa9poBHyC7466ZVHkTjk09LvmdHuYNU1nv
 b1kwtytutkm33jnfEzgnwXPJbITNBZDtaNI1qVr4UY5jY0zDbILafeGgAA7veMGXk1WJJHeXK0i
 JIEd4RjW0yh2U+WRzuBzOSh5g6tfhUuawJkWJH9F9aPjY6ZQC/ZE7+SHFMaMwdjxJ/aNzQAs+F1
 +yObk3Y8vDwHEetkj8BexDyMS6AwWD88FHRtKTTSW8nKUc+NoXQYPRu0iw1CU1jC9LFZAmUFlsn
 FpbeYC1Lc+gpQWbR/J6Nf2wnh/EiTX836xssSp1+HzbMEA4SqWCmQWsrm2mcqfPfSJt3PTwwWhU
 ThPPE2aeUGkqGwukjWg==
Subject: [oss-security] netatalk 4.4.3 fixes 20 CVEs, leaves 18 for later

https://sourceforge.net/p/netatalk/mailman/message/59334272/ announced:
> The Netatalk team is proud to announce the latest version in the Netatalk 4.4 release series.
> 
> In addition to the following security fixes, this release contains a handful of UAM and container hardening improvements.
> 
> CVE-2026-44047, CVE-2026-44048, CVE-2026-44049, CVE-2026-44050,
> CVE-2026-44051, CVE-2026-44052, CVE-2026-44054, CVE-2026-44055,
> CVE-2026-44057, CVE-2026-44060, CVE-2026-44062, CVE-2026-44064,
> CVE-2026-44066, CVE-2026-44068, CVE-2026-44076, CVE-2026-45354,
> CVE-2026-45355, CVE-2026-45356, CVE-2026-45698, CVE-2026-45699
> 
> All users of previous Netatalk versions are encouraged to upgrade to 4.4.3.
> 
> Release notes: https://netatalk.io/4.4/ReleaseNotes4.4.3
> 
> Security advisories: https://netatalk.io/security

https://netatalk.io/4.4/ReleaseNotes4.4.3 adds:
> Note that there are another outstanding 18 CVEs that are not fixed in
> this release, because the Netatalk team deemed them to be of lower
> severity. These will be addressed in a future feature release.

https://netatalk.io/security provides these one line summaries, with
links to more details:
> CVE ID          Subject                                                 Disclosure      Affected Vers   Severity
> CVE-2026-45699  Stack-based buffer overflow in copydir()                2026/05/13      3.2.0 - 4.4.2   High
> CVE-2026-45698  Stack-based buffer overflow in deletedir()              2026/05/13      3.2.0 - 4.4.2   High
> CVE-2026-45356  Integer underflow in Spotlight RPC count decrement      2026/05/13      3.1.0 - 4.4.2   High
> CVE-2026-45355  Integer underflow to heap OOB read                      2026/05/13      3.1.0 - 4.4.2   High
> CVE-2026-45354  Pre-authentication DSI protocol desync                  2026/05/13      1.5.0 - 4.4.2   High
> CVE-2026-44076  Shell injection via volume path                         2026/05/13      3.1.0 - 4.4.2   Medium
> CVE-2026-44075  Missing break in DSI OpenSession                        2026/05/13      1.5.0 - 4.4.3   None
> CVE-2026-44074  Bitwise OR of errno values                              2026/05/13      2.1.0 - 4.4.3   None
> CVE-2026-44073  seteuid failure ignored in auth modules                 2026/05/13      1.5.0 - 4.4.3   Medium
> CVE-2026-44072  system() after failed chdir()                           2026/05/13      2.2.1 - 4.4.3   Low
> CVE-2026-44071  FORTIFY_SOURCE disabled                                 2026/05/13      3.1.2 - 4.4.3   None
> CVE-2026-44070  Unbounded realloc in charset conversion                 2026/05/13      2.0.0 - 4.4.3   Low
> CVE-2026-44069  Integer underflow in volxlate                           2026/05/13      3.0.0 - 4.4.3   Low
> CVE-2026-44068  EA path traversal via incomplete sanitization           2026/05/13      2.1.0 - 4.4.2   High
> CVE-2026-44067  EA header parsing heap over-read                        2026/05/13      2.1.0 - 4.4.3   Low
> CVE-2026-44066  Heap out-of-bounds reads in Spotlight RPC unmarshalling 2026/05/13      3.0.0 - 4.4.2   High
> CVE-2026-44065  Off-by-two in papd lp_write()                           2026/05/13      2.0.0 - 4.4.3   Low
> CVE-2026-44064  ASP session ID out-of-bounds access                     2026/05/13      1.3 - 4.4.2     High
> CVE-2026-44063  LDAP filter injection                                   2026/05/13      2.1.0 - 4.4.3   Medium
> CVE-2026-44062  Missing o_len bounds check in pull_charset_flags()      2026/05/13      2.0.4 - 4.4.2   High
> CVE-2026-44061  DES-ECB auth with timing side channel                   2026/05/13      1.5.0 - 4.4.3   Medium
> CVE-2026-44060  Integer underflow in dsi_writeinit()                    2026/05/13      1.5.0 - 4.4.2   High
> CVE-2026-44059  Non-reentrant privilege toggle                          2026/05/13      2.2.5 - 4.4.3   Low
> CVE-2026-44058  Authentication bypass via admin auth user               2026/05/13      2.2.2 - 4.4.3   Medium
> CVE-2026-44057  Dead bounds check in Spotlight RPC unmarshaller         2026/05/13      3.0.0 - 4.4.2   None
> CVE-2026-44056  Stack buffer overflow in desktop.c                      2026/05/13      1.3 - 4.2.3     Medium
> CVE-2026-44055  Bitwise OR logic bug enables shell injection            2026/05/13      3.1.4 - 4.4.2   High
> CVE-2026-44054  Predictable afpd session token                          2026/05/13      2.0.0 - 4.4.2   Medium
> CVE-2026-44053  Weak cryptography in DHCAST128 UAM                      2026/05/13      1.5.0 - 4.2.3   High
> CVE-2026-44052  LDAP simple-bind password exposure in log output        2026/05/13      2.1.0 - 4.4.2   High
> CVE-2026-44051  Arbitrary file read via attacker-controlled symlink     2026/05/13      3.0.2 - 4.4.2   High
> CVE-2026-44050  Heap buffer overflow in CNID daemon comm_rcv()          2026/05/13      2.0.0 - 4.4.2   Critical
> CVE-2026-44049  Out-of-bounds write in convert_charset null termination 2026/05/13      2.0.4 - 4.4.2   High
> CVE-2026-44048  Stack buffer overflow via UCS-2 type confusion in ...   2026/05/13      2.0.4 - 4.4.2   High
> CVE-2026-44047  SQL injection in MySQL CNID backend                     2026/05/13      3.1.0 - 4.4.2   High
> CVE-2026-7837   TOCTOU with root privilege in ad_flush                  2026/05/13      3.0.0 - 4.4.3   None
> CVE-2026-7836   hextoint macro uppercase bug                            2026/05/13      2.0.0 - 4.4.3   Low
> CVE-2026-7835   Format string argument mismatch                         2026/05/13      3.0.3 - 4.4.3   Low

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

