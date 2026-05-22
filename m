Received: (qmail 3132 invoked by uid 550); 22 May 2026 23:00:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 2038 invoked from network); 22 May 2026 23:00:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=mEliP4NYijIpUEiox7NEinW0f3st5PIxZavnWzRKe9k=; b=
	a2GrQQPNX54IFmlHnfEZRU1TWEi4zSYaD8srOiLM5bnfvMmxg+qzYsEkcdgnnWWO
	EId28ZXEv44UXY+YDdPyxH8MloIHXu1ScibHiT4UUPj9loDhWq6PqkPTJbkKb6dQ
	WzZ6a2HSsMJ6Aa5eDJ/kr6KEOVEhR82PNEiGZAqIfR6XNKPC2ZBOUSV/ZDz8m94+
	T9YqEVEFdrttcjE7tFoLhTA1Lmd3ZI6W7HNy/VIYkTgMtbqcB/kZRVid39g9PKS+
	bHIknJR7/lGrjeUTDBX8YqvApkTPi+rYNhEVzth46ouhcNCou9L4F4CqQuWprFQN
	LUenbsnXE06t2fHrDALfWA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YjRm46/RKi5Xi61M8f9+N0rbyh5y28b7p1lixmTWL/ew07n70XlvJ9VQW7i/Uu4WSnRP6iGYEGjbfQVocdQaHc3I6MPqTfVE924n/ZhESA5dqRdqsW3SZlgl673REIkOg5cxtfN0mbTYwEyhVX4z0pwk96+XDlE1NAyre0KMcHEvJ5J/z1gFkhy8QM3/PUNQWgGuCkDwQ5XuE4K091DQsddVcFnpQr8F5wyRncKwW1R+AcYmmrKmBkmHOaYI6AcBeikJxuy8JlPZ09vtLj7W5svFIdrTwEdFxfxggTJ9suzFQYyLAx11f97VUbz0QN8xSNP57C8HKGs4N3EyPuoMvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEliP4NYijIpUEiox7NEinW0f3st5PIxZavnWzRKe9k=;
 b=qyoJmyks+mkv7N9YO1JsCLejT054rmU+1uCa4R4BapKnykCdp0anze7Jf81VnHGLeC8sYqo8BQvUT+IoNQkd+kf5VC/t1GIbJk1BFXU/ixFEY+EUFNEo9Ra49f/XRiEuCpbUrreYrW8ivtdtKqRQYeijlomre98oE+yLqYK8dalE9ZZoeowQEERFvoWM5nbqo+OQscLprSEjvd9Hslo5h+OV9hBsj+ZkQr/AuHjb1XfKweOII6PW4ikb+gyqZlRikozxulqbSs/epXsXLjTGrt+vMjMnibtGP+xlCekzOv7/jQhKnBXE7tGAaHXa/mo6rSZb6uZZVxbgQanEGYXtUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mEliP4NYijIpUEiox7NEinW0f3st5PIxZavnWzRKe9k=;
 b=IDr/dMn7b4r4omuB64ansJNRvGBqImB+gAExxBhXjuXZhTA374wF/rj8dqQTeWTFhHLVL9WWu/gCtJCBuVqDcixyXRICHQqrcvobHEmqALVbxBvv1fNuwqpgYXmZ86XaNCMzXgTotJZ2AdRCL+K1XUTYz1kFXSGoja6vSovBURg=
Message-ID: <f03868c2-2ef1-40a8-a469-fc6325b8a3c3@oracle.com>
Date: Fri, 22 May 2026 15:59:47 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <329298cc-fc7e-4d1d-854d-58b3d96da252@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <329298cc-fc7e-4d1d-854d-58b3d96da252@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR13CA0012.namprd13.prod.outlook.com
 (2603:10b6:a03:180::25) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|MN2PR10MB4206:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ac952c0-cb64-4cde-504b-08deb855d30f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|6133799003|22082099003|18002099003|3023799007|56012099003;
X-Microsoft-Antispam-Message-Info:
	fon6rMn5U1QbNKTQwDn6rmBl0/DtQ1z8QSpnZyu8DlPy7l/4f0ns868nhaxxNdBs7vM9Vwvgbv74tweyKc7f54x+2tySgor03kjXF0F9qqXbNwz9XHNCgP9D6KFzNkDA6iu3Qd5w7vFyhhxgC6mFt3aLRGG0+4YeNQ8UmWjGbllsK7Xbpdmr6YJgSTrhH/3pQG/XXXPMyDh2iIrxbfl6LbzJ4yDUaS6Zk371RTIcAwamVbEPUw/9vIiuQFYV788a3vh10OK0WAfjW8i7w7/QGCFJQvuMPDypJ02Cr/ANZ5OFzCHhThr+ZIsfqu3Nkg5NEuWMmWolqXNpujcLRl7WqVtrH9aQKWjmhQ6vXq3bJpNKAnSHjGAbdLDYTq1IoHdI6ECLlHZ4CKPFzAb9ljUo7XLbpWQGNyhVS/EP2ZyuvQKCJHwRDH/is7XXpRVNPxW8O3sJRxdIwbNwCtMZrEBHqlqMezcD4AdlGAsC51JBvP9UjXvfj/qQR2+12HJOQSgWtew+psnWHwzDYDpy4TYBuZ5XqWV0ZoBpDenacs6SBdaZ8b1zADGS4ink63XF9vQo/mbNdYymytQVdYCNPqgaWZIkx5FBhhRG9ZgY7OSwrIkmO+Wi/78eCIvXrXN2fk71/Fi+sOrTZtHt5VtXV9mMJQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(6133799003)(22082099003)(18002099003)(3023799007)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bG5oNXpseG9IVHU3SllYb1BEQmZMUDYvOTFyVDM3SmlvSzQwS3dvM2ZGRjND?=
 =?utf-8?B?T1AzZzF3aVFuWXptdWJXdDVzUzJKd2h4WW41TzUwZCtWbmViNUNJVmtUU2RY?=
 =?utf-8?B?Q3BNelpJbTZraGhWbktSczZZYzZTTHMwbjRCSCtPd0g2eExaZ0hBNnI0aDhC?=
 =?utf-8?B?WS95K1djRkNnK1pBNXN0Sk11dEtpTFZBTmZxTGZYU0lLNHFVcDVRbTgwQUxR?=
 =?utf-8?B?TDhzZmxwT2g2Yzg0cVlCbllpQ3FoTDRWODVtQjJuZTh6dzBSelpIQkkyMEx0?=
 =?utf-8?B?b1BSeGREMkFqb01udXpjampyOVpKMWQ2aWYwSU5ITWppd3dLYTNmcFFsVm1O?=
 =?utf-8?B?bVhHdGdoWFE2bnNhTXljNlMxQVlTYUJVT3l4cENzc0Q0YlpNQk9OZm54Skt4?=
 =?utf-8?B?MjZLbU5aL3lMZ09sN2grSGhaUHBoYllFekRXUHJsZW85WXNkb2RybHBuT1lK?=
 =?utf-8?B?MWlmNEdjSkZpcnJPYXJsS3BaQmx1WFZ4ZnpOSjVkTHZvaHZzUHdkclFnYStl?=
 =?utf-8?B?aDEzcjdyOEVzM2lTMFNublo4L0E5R0NxOWdiV3ZzNXVJOWdMNGZ6K0ZwMXFW?=
 =?utf-8?B?RHNJOHNsUzNGOEplRTh2Y280NndqTVpraW44NmhCVjY0U0RuMGtWZ0JuRHJi?=
 =?utf-8?B?Wm5sS0NiWGozcFZ3MmowcStkRFRabmZveGtkSUt0bk5Ocjh1dGQxaEdhbXlR?=
 =?utf-8?B?bWdNNnhEb3hWRGptUTQ3ZjBvcVkwSFIwMWdzcEg3VnZjYzFCUjRiaXY5Rjk3?=
 =?utf-8?B?WnFLeGVvZlpOdjRJSzEvTERIUi9EQW0xNy9rcTRzQkordS9CUUFiYlp5aUZB?=
 =?utf-8?B?M2JHVGFnR3UzVjJseFFLMm9UUUxPTTJGRzZ3bnBLZVloR2ZNMDNwUElIQlYv?=
 =?utf-8?B?bGNUdkFjOG9YSEJEQXJvUmRtV0FsVlEyRUQ3MU9KS2sxdHJYMENLTmp0akpu?=
 =?utf-8?B?YVdmS2w2eFBEcmhZdE9wTE4wRElhMHB3MjFOcUEyak9BYkNCOFA5WWFpM3BI?=
 =?utf-8?B?cm1nbEl1WUxqTXVGZUJiWUUrT3J1c0F5NExKUGxoZ0JtbVMvcEtYeVpmUFBV?=
 =?utf-8?B?eDNGNXJOZDZrUTlFTnhaZjQzOGJyUEExRlNjSlhrSmpZMFBIN01OemxQN3R5?=
 =?utf-8?B?OTJ2WG8yVi9xSEh5QkZYZktiV3JiaTVTek9zVldiaHJOMHVGeWhiNUxyeDFH?=
 =?utf-8?B?Z1dQV25KcEExQkJQajAzaEFrYzUvd1AzVlIwN0QvYjRUbG1nWDNnd0JUQUtB?=
 =?utf-8?B?K1ZwZVdubUNQamwrVVEwNEJPcXQ5dm1hU1J3Z3FvempyaW10L2dCTHJRWkt5?=
 =?utf-8?B?dW9pdWlUd2o0WXptK0R4UGNsVmk3UFlRK04wZSs2V0JHZmVvYjZMeFRaUmsv?=
 =?utf-8?B?cWVCakk4UVdoUm9zaWg0MkFOSVBZdXByZXF2Z0lzUkx6WHAwVm1EM2hVMlF3?=
 =?utf-8?B?TDZlU2ZUaVpBd1dJbktnbmlhaEcyUG51blFYOElwa2lyZjY1V245SzcxeG9P?=
 =?utf-8?B?YkVRQzVWQnNOMkxoSS9xQTY2NldOQllHTmpkS0JUMW1pOGh5MElNTGJRYnlT?=
 =?utf-8?B?bk1md0cvcVY3MUtFRmF0VjVUT05abi9qMDZmVzFWc2JnWW9OK3BIMEN2c0h3?=
 =?utf-8?B?bDIya3lWR1JUemRvcGdoYWF1SDV4elFhckJTSi9sN2FuSG1NYTJvQ2x2K3JI?=
 =?utf-8?B?eFY3ZmVBN2VkdVNHTjhGQnlPNE9CaGRLQUxvLzJOY3ptRkhyOTFqQmg2SVU2?=
 =?utf-8?B?d3RnM3dOUnM0R3Jlc2prTEcxVVF0REhRa1dSSVg0THJVWmtiRS80ZFpoVVJ0?=
 =?utf-8?B?V1dqWkVpM2draHNPdXBQbkUzVVhSOHczMVdkRk8yKzl0OFY1TEVydVd6Qkk3?=
 =?utf-8?B?K2JibkN3OVo1SnZvZThKYURQdllSYnZiNDJhTFQyM3VrN3I1U2VkUDFvMGxJ?=
 =?utf-8?B?eG93Y0tTUXB1bnFBSGwyVFRmaDVQbEd5Y1pNVFBqMEJiNkJ6K1NKeWFmekFx?=
 =?utf-8?B?eGdjb3p6VFpCZmhFMjVQcmZ2RS9iMFY4Tld0cDhwR0luenAzbWI4NXlweS94?=
 =?utf-8?B?ZGN3cXp5S292SHNRSEoxSFhQNGQrUHpXRzF0aHpDZjlZcFN6YWVxcWhuc2Za?=
 =?utf-8?B?T0E2QWxSK3RLN3NuNnU2c0dFdjlkK1MvSFZpQW9qcGxPTVA3WC96NU1neHA4?=
 =?utf-8?B?MkJIUXluTkJyZXlvMmNhODlBMGd4TWJLZnVtcUZOakZVWmtNR3FQTlFwbFQv?=
 =?utf-8?B?UVV3WHVza1pEOXJXU1V2dEw0QmZVUnZmaDBrd3ZrY1V2aDVvSUcvL2gvSXJS?=
 =?utf-8?B?bS9HOEVqaFhvYjlsR1pIclVyclQwUnBHanhBbDhwL2crYldRZ2hGc1NoYUpP?=
 =?utf-8?Q?AFe137K/mGI/xJN4=3D?=
X-Exchange-RoutingPolicyChecked:
	bV4x3TUzuHc4gXrlB332q/eFNq5E/Hqs6MYiB6wQ4i4f7/KkMXqEZQHd9SjDMU7hC8c0jbUSsWumCOdMUDAmJdUxleQkrVS9DPv8gRuYl8OWa9xX0ITCfx/Jm03MwnmiplU9zP9LF2iVsabn5lbOEvR+uc33gSVRUtP03PZbauPBixkrterVFFFedhxfD4Rig9TJ/I1NsKFdlSzKDcEWuzUn13qVwTdaWc/3F1vFjOfJqaIbQBoO4G1WuOxdY+ia+rJRwqpfHNlBOED5A+z10uEfo8coQM3ghZbt5udaG+koO9nk9+FmfRG4W0FySp6vtXbRGZOQ3F4lf2tDSHSTFg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	1oQtzR0oCqU1ZgJl7IPXoUTCqIRodyT5cS60L1ZXhT5he33zQ82BkaXjrrJt2K5B4GrhIwgi5zFjhTNX832x787Vu61cfO3lwZTU7ofGCA/22z9XPOW1SHNfQ+J8KvIFdSuWb3c8j3d4c3xtdSewezm5a6v7DQn/9811ln39IYeKQ2mAck3Bu79iVcvs0OdhmqhAPb+a+CDUKsLOBdvUKz2Jw4X3n9mKmwRZ/akSTnqd7QuWFAreVl/3SiBmDNgs2UVXs/XV9STeAeGr7Zn6spZ7oYXzcPkfpYP3aW0fhWTtQ7l+v+qqvfuU2AE1zMFBR+E4iMrysoBCatf06EO0wkObI6FHeSU4aaWOvxUKUFQRLYeokZTluVJRAzMl6AqUTypoHf9iw1+3xNCAe4qHdoEdjyRgjO+C6v7wWgkeO2R3uivQRxUk3NSJ3aYPPDtegEsM9U1uZvOAmp5/HRfjwsKeDF1L6Rghp5xpzRfGjnO+OZv5xPPFPu5XJoYaW71jgIn91ZR6gzj9GLziH/NZYbAhFve9rh+xs/aZFyz9oOtRMGNnPVzlRNp5R9Sgh4cz6BDNifzdLMLWJDSfqrWjTkVKJzmwE1LK6YXe+WHxY7o=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ac952c0-cb64-4cde-504b-08deb855d30f
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 22:59:48.7236
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hi8emHc3nlRGUCl/KskTrnp+5Hq26M3mslYEqg5lOsRYQdCXldU9AOgX23w1cpIxgR5p5PZcTBjmh6HpR405KB/RYFL51s7fRvj/zSMpwZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4206
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_06,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605220230
X-Proofpoint-ORIG-GUID: GiJPJrpv2_JSgX1N6JM7QrmSEenyhcPK
X-Authority-Analysis: v=2.4 cv=aoKCzyZV c=1 sm=1 tr=0 ts=6a10dfe8 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=o5oIOnhZENCTenyL_yNV:22 a=rhzJWzz8AAAA:20
 a=n2LCcfabAAAA:8 a=xHOAicRMaTXUTyZKCzkA:9 a=QEXdDO2ut3YA:10
 a=4Yw60klCxmr9x6OUr44h:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDIyOSBTYWx0ZWRfXxae+B5MVh7pl
 EPAzeCN3o4cfnnmfspDfBJqJvzgPYVnlxINYv0Bd0sYNBoEi3JtIlIeS0sQ5vOhNgV8P21iMZzz
 XqvDNEPWSqCpwERmRcyKWslG14Sm0nIc+PB67gfDTTFngERKiOvQ9p7VAV2mB2AU5L0ln6t8/bv
 1zi1ZSjAxmvwDtjpN8u5+QPsm35FDCxGuZuHDZkb1uXrVF9cQnYOkkABfKcjS5VpBwMr/a/3J1S
 +E/wRPkSv3IVFx8o8ru8rS1wTQXscp+4iM9BrnuoIaAGouuPRtOJZAbviRP0s8YAAOLzsUhwBc9
 9Uv1cXoNkrpC/tti28ejunW9LBTA7GvFXwBnKLbdpuVAxUypnzfKlojp0XbqKAcGvYM96j4ng1I
 tim63TS20af94gdHShVARNaa71ptxN5nu4SuL2RHh+bf5X4uoc8+/T5zlWfEtAP8MFavFItzSq6
 u0Yt63YPKTCt30FE2JA==
X-Proofpoint-GUID: GiJPJrpv2_JSgX1N6JM7QrmSEenyhcPK
Subject: [oss-security] NGINX ngx_http_rewrite_module buffer overflow
 (CVE-2026-9256)

https://github.com/nginx/nginx/releases announces releases 1.31.1 and 1.30.2
containing a fix for a "buffer overflow vulnerability in the
ngx_http_rewrite_module (CVE-2026-9256)."

https://my.f5.com/manage/s/article/K000161377 gives this additional detail:
> NGINX Plus and NGINX Open Source have a vulnerability in the
> ngx_http_rewrite_module module. This vulnerability exists when a
> rewrite directive uses a regex pattern with distinct, overlapping
> Perl-Compatible Regular Expression (PCRE) captures (for example,
> ^/((.*))$) and a replacement string that references multiple such
> captures (for example, $1$2) in a redirect or arguments context. An
> unauthenticated attacker along with conditions beyond their control
> can exploit this vulnerability by sending crafted HTTP requests. This
> may cause a heap buffer overflow in the NGINX worker process leading
> to a restart. Additionally, attackers can execute code on systems with
> Address Space Layout Randomization (ASLR) disabled or when the
> attacker can bypass ASLR. (CVE-2026-9256)
> 
> Impact
> 
> This vulnerability may allow remote attackers to cause a
> denial-of-service (DoS) on the NGINX system or to possibly trigger a
> code execution. There is no control plane exposure; this is a data
> plane issue only.
