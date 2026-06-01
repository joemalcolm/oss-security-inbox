Received: (qmail 3298 invoked by uid 550); 1 Jun 2026 16:02:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3247 invoked from network); 1 Jun 2026 16:02:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=8usb6K8+h+PQ9jgPfos4+Am3qraNGVzP4BnD+MYXrDM=; b=
	C2A3H5QZ9iAqMfCmqeM3t3UoPpUwczAATgSavx9t5EAgaFY02b3479KCoYZ9jLgo
	B2BvtfRxIxDBCY19JWIrtJWiJJo1GfrGO1tsmvMZWIdMjdP4vvLaSBVcaZMrk5Q9
	R0/8VB+tWJNarp5hSvoJa6gRLHMLif69uL09B4ydM8NzNwRi/U0VKjl6sbl7+ISD
	BtEEIB5AWC9R26Bfoqj4CtvAGJ1VT/5pRyoCOuURJo6Jx/CpXSR01aG8/f+xMdud
	4wXMTD0ZWNa5M0RYMU53JJPdYoAZvTdm4F+pL2Ewu9Q9RtQzw1GrhEZ+UyqZ6IDB
	ZnAAbPnC/z/mGKYWhuVHIg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EwOyu9X+Yo6//TRfTzkYM6yy6hOBqKxz+cVMJ3XdlwCft0G0TC01sSNOmnXOu1Brrsi20LVvDuau3rqLSfZnNmAZZQPJ4kEEhLVtlbfoNzmIwiGo7Odi1FbqnYr41UOCBzce9zP9toGT0KGtCdiSnuwfwZkVmBb0r9bVMMvEUbJTNbEA//omRu0Jl7/hFC58sS51Itcw4xhtBVcQUu/IveS22ZrLIlIamiW89MOAq5+giUXezrEGwSAiB9galcCzgBiZS2HFr4XXHDWkA9XDP3WDACtg1YYFrfsDSZZopUCusgAjn691mwEldSq74Av4/jIyrBLDCiBTNisRTDw4SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8usb6K8+h+PQ9jgPfos4+Am3qraNGVzP4BnD+MYXrDM=;
 b=pZSjDas4P4dfORUjsBgUmXPxOuupihm9uXLSqwsSws75Lk3O3oU8fVWTpTWi6O7p9SWxwRvNQ8jPTT3eDysWsHPVxnIYyFHFeU+d6OAPz1xdOg8gNOess+PVnb+upGQPysUxs6BxM6u9iX9AIUN7h0tCzcLmfYEOo4ua4i0nOpH2DTB0qoOXBlt8v6MesMGCiGQgsSITydly6OQFNyqddogP7tQfklHM9GdB6qgDl+03WXH8usa6ZXNRXJK66tQlj/HdBIBUo/NYM8Wucqbow5BVyO8edDh6pVmQCQqpJTk0SzgmfJDNqyPxpBCdSGZEWGrYdJ8j+7Bon1NbCXxujQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8usb6K8+h+PQ9jgPfos4+Am3qraNGVzP4BnD+MYXrDM=;
 b=Qz65f1BbjLGAkzyGFEM3KBfx7hloUAY6eQskMYo8p6m+Th8f0WkqE1nI2y1QUUcIerXK9GobwUTPSbsNNtaNAC9UsEk1JMm0G50amVSNrLauDAw9RP4RqCVkuqrYdDy+vrjCJiJS/Q7j2I1yFOwza8etgc6RmMsSfCYX9J8A9JA=
Message-ID: <4ad1fa72-1e7c-4873-af0b-6ddc567f2480@oracle.com>
Date: Mon, 1 Jun 2026 09:02:38 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPRf3PaOxeCQk0ve8dWOqLH+uN+4KGk5jFCTwxNeiZHzbg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPRf3PaOxeCQk0ve8dWOqLH+uN+4KGk5jFCTwxNeiZHzbg@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPRf3PaOxeCQk0ve8dWOqLH+uN+4KGk5jFCTwxNeiZHzbg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CH0PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:610:b2::8) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CO1PR10MB4674:EE_
X-MS-Office365-Filtering-Correlation-Id: 852217e7-6f90-4607-ea5b-08debff7357b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|13003099007|22082099003|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	SfnOskbmmpMdYLzO0Dny+w9jiy57RM029taN+XB3zMPENrD2+i4tmpwET5uOcR+HfBQPUfWttvtcw/CurPjYFSUOwn6d4EqLB8ZJ/ihEfIJk3PhQQkGz61W0zAjrmiMMHvn3bpcuN1VBdgmXS757ZGfLf9JXkcI6mFeKSFgfVVfL4nIi5zoK4xykP3ms9kIdxRHoc2OxPsh8rScqpjoAobtvilVNVu9QTeNDDRfaBhFSmv6I+wXcTl5JTzFo9eHe1bMhK3iU0zwxPegZGXk5fNAZ/gb0sS3ux2XhyPu9ZuEvZrM5qKlITwzjIaQX8g0UPQ/5Zy+g2SoCY3ksj8rZxzM4tX/Dh5aK0iP+45ohzuW5jCKUCzZsrFEpneQcjXKEX5SS+DhOYLhc7X8CNNQzE2SkGwUMRgQp7wBjIL7LqTk5hF5ejAin2mbSVjyV6fiqmfhrmdIDn3N1tE2RJ5Rk/FUg++QZGfpeDdbpUfw+0z5KTks6nyREUDxbRiQgEZCBrAnWRIv8f5q82F3xJe56c/SR14jP8bixaga0/Jt9CWqx6N82aVC1MDC37chNSVrEX7wUQ/Cm1hO2tsLcQee7Mh/4cu5y4Dxo5VVts9UU7Jgjede3jJF5QYXgEedyLql2oG3LUF2fi4oCYGKqi+WQHo1HOP8CXFr5gmiKO1J4A3WUm+xfQbUb1btMVZvpz6ieELPMujJ+ZkZ4TyKPPGpT/A==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(13003099007)(22082099003)(18002099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y0NwdktmZXVMczd2OXRhRGFiS081dlh5VEJ5b1IwajVXc20zNTVyOEUwR0Fo?=
 =?utf-8?B?YlRIUTBSdDVkakVXWCs3cVJ1ZWEwZlhJdnBRcmR1dUdoU09JSkdmVFV6UDgx?=
 =?utf-8?B?ZXpYUFFQSEZtdEU4emJXdGpKSVpVZzRnak1IdVpMN0Z1SUV2MGF4eVAwSVpR?=
 =?utf-8?B?ek9hOHlHakdLZUZqNTdwODFXOFZQS0Q0V2dWdzBiRjVVVlVLUzNQWVErWmpF?=
 =?utf-8?B?UkU5YUZqVnVNTUd0NHpRTkpQQlpvRmNFNGFBTitrZHZhT2g5SSsyUi9rK1pL?=
 =?utf-8?B?WUV5WVVtUUZCbFczUkFrenU5SkJ5ZzhDZVl2V2dxUWN6S1lQaE5ZY1RENFlm?=
 =?utf-8?B?YlRYKzVSRXN5cEFYaG5qMG1NNE9jZDBwek5SS3pMTVVyUGMyRzhlYk1kdmhz?=
 =?utf-8?B?akdtQkpRYTQzQVBFSHdxc0R0cjVSQzlTakVaNEhPTTB2VGlibE1SR0tTYU9Z?=
 =?utf-8?B?U1VnUmVXYkt3N2dFbW56SFd2ei9lbEJ0NTlpbzJucFYrWHpZWUtpcTlGR0ta?=
 =?utf-8?B?MWVWcTQ2cHcwRVdVSms3MmxCazJJY1BmeHZHWjBwWjFLSGxpbk1wODFneUNZ?=
 =?utf-8?B?RjJhamxpWFBCM0JqdVc5dURNd2FoMEFtS0wyK0tEdnU3bC83SDV1RmNySitQ?=
 =?utf-8?B?UmpJU1IreGpsS3l0UFI1RmorcTJyQVQ0TnU4eXduNXRGeDFPQXNHQkJXRHNN?=
 =?utf-8?B?aXE3YjB4UlRKdjh0MDZhZnFsYy9sZUFobVc3RmsrcG10bDJsY2ZYckdBQ0JS?=
 =?utf-8?B?QXRNMnV1ZXF4OGViRTI2a200bjJCeDg0OXlyVEJ1QXY0aU9yc1VTNEVHSHVl?=
 =?utf-8?B?d1RkN0ZsWTdoS0xoaWNOYWc0ZXlTb1N1V2NKWmNoMGF2cSswaXlRUUV1dldJ?=
 =?utf-8?B?R09xbDFGNE5uNDFkQXRML2p3THAxdDdTZzVUbjFDYTh6Y1RWK21SVE9SWEMy?=
 =?utf-8?B?SDZkTnBBNGFBbjBDcGptZ3FrZ2dnNEhTVGhmeFVMWHJ5TlE3aVpLMmsxTFM3?=
 =?utf-8?B?OE1MVCtEakFwWGljZHRFdUZmRkNXU3l1b1d3cUZNODRTY3hvUktRYkJzS25N?=
 =?utf-8?B?TjhSMXlIa0RLZVBSbm9yeEMxWkZZaG50c255ZG9tZ3lFTEs4N1dqZmNTM2dN?=
 =?utf-8?B?bytPbnEyNjExZk1ucWMrREpqb0tENE1wa0NrQlZKcWVaU1JDUDFWUWFFbE1l?=
 =?utf-8?B?R2NuNGViKzF6bXJja1JwVEcyclNmN0s2TGdVMEVDbVU3YXh6K08xREFLdWNn?=
 =?utf-8?B?TVdoZ2ozWmZBNzdTeE91Y0VCa2FVaWFPNFlteC90Qm9DUUw5a2h2bkh5ckg0?=
 =?utf-8?B?UE5XTE40TlpCUnVsTk9XbjRta2J0NUpIL3ZIb1k2UmR2Q0Z5NkwzVnl3UjJJ?=
 =?utf-8?B?L0gvbUFvc0FXOHczUnRtSXpkc3RxR1R0TEU3SWUraFBjM2lvS3U3TkVCbUU5?=
 =?utf-8?B?V1BzbnBUQjF4Tys4TEhHZTlzWCt1R1FWL05IVitrRmh3VHF3cEZVR2FHemVz?=
 =?utf-8?B?cXF1Vno3ZEJDK1dRYWszN25SZXd1b2VUaEJhYytUUHhQaWdWL3NFUWQ1WUZ3?=
 =?utf-8?B?NStabEZFUHBXblZsZGZ0eUk3ZFkvM2RRdzhmK2ZNMlB3d0tuTCt6UXE4SlF2?=
 =?utf-8?B?TXZvamN4Y0J5R0hYdFI1TmUydlc0cHBFZXZ5RW1URG9NUU92SE91aGw4Snd2?=
 =?utf-8?B?VFJudTF1c2hFNlpiUDE1U0xxMDgraU9UYm84SjhWbEVaKzBnVzNyQko1WEcw?=
 =?utf-8?B?czlNMkVhSTZMWDlQZ2ZnQ1gyWlFDZnJ1UmFGamVGakxWRjZRZE1kdElvSlZR?=
 =?utf-8?B?WExBZldPc0tET3hENGQ3aWt0KzRwc0dHOUI5elQ4U3lNQzJ2WC9Xc3l2bGZI?=
 =?utf-8?B?MXova3pRNHNlS1Q1aVV6Q2lNTkNxY3VpTWp4U3ZnRkdFL3M4ckgyeG9xSW4x?=
 =?utf-8?B?OC9RaEJ4aFd1OFE1UkRPODc5SjBEdTFEaXlWWEdrNytrd3NuQmpHMWRVMWFJ?=
 =?utf-8?B?dGdnN1ZSd3dHWEVrdnFGeU4xRlYzRms0WENYS3hEOCt3RkRDaWgwRUQ0NW5j?=
 =?utf-8?B?dW8zSFlzQzE0NmJVR3pJZ2krZlJvUGYwOFUxM3lsU0VqVFZSbER4b2VWQ1JZ?=
 =?utf-8?B?ZTQwbXZKTHNYMEhQbmpPcS9vSU5IYWE3Q1AwYUZac29YQ0FoZWJReUtNSEo1?=
 =?utf-8?B?cnh3djlkQnJYSUIxeWdRMjUrRVIrd1BDR04zSW9ObVhvR1Q2S01RUElDTTZW?=
 =?utf-8?B?RjdGTk1Zd1FTTmVEYnp4UDEyZ3pTV0psN0R1N2MyM0lIWTlqeFVBMDUva1hX?=
 =?utf-8?B?a3loTUpScSs3VjBCemlrZVRKZlArK0FDcmZlKytnRko1SmNMaXYrTTdlU1hF?=
 =?utf-8?Q?JTYXH4zoAFpFSJZo=3D?=
X-Exchange-RoutingPolicyChecked:
	aj07q8Wi+asB/i7xA8VpDMR0y4KV152TC46IIpxM1rrJgjjKnxXvw7CCjQtRth3kn3UG/4cb+UJxO2mEPmlToxgQN7mFQ+lzJo9bzgT9YdpmGyNwAk2xh6bDK1An4Y6qg8Dv5Ek4QmcUGbz8G/av57XIcgfXZ+HsZu90NV8lfUaKkjnD7ExXWRD74KSJWd9NhLCU4F9fSSJe0T7oNPALC6rHOj8h9JYaoz7edfxr1si9bRUrWjA19zZrGGs6KqtwqKbKASF33VCZNtoV6MU4lYXB4oGU61qBf0AX0BUri8LX1WIUSnOJed3mqUd8XIPd7VkamvhORip1jajPpdcJ7A==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	U5WVCsFgGoAI//jOHrqhtb8cTDOcEswH2uMi+ZZqByfHQZw8kLym8P/NFNwe6+fG5+mb1ZdnmNRdZk04CxfU22im55E5yJ2up17w95NeTvVZe9PdQ5akj9IaB6vEB7ClQNRHiuWL0qF5W+bIqzmwT4Pt9Dbr1K2rReZmvj7DWMpC9Q1b75CqlDJHhlxr7/M/5eDWdWtGwdd4eRD4/yEonpfd2r/lfUcCZGnK23V3mE6htah0KUXFwcm7l8hp3/Q0ko8ibFWJrwBGTfA0AF9pu+2BCzMoN6ZEfBI9D5PtLVmWsnNNbneKHuUul4/7StLim8ki86PhvNtHMlodANmKN4qRUaTTd5WazPqC7pY3wzYvHKNyUc7fkQcysFfGvS/xNF88HO+m09t0bUUQ9RNFHmmTDp54ugEuttx0vvO3kqFxMQ+C83L3T9w7MIO4q44p5/A3xSOCx10Mvl/9o92VwpRGz5RkK3E4e2MsV3b4wCPVApJVDPDH8OKs1E10voZWiZxhZTYg/dXyeNlKiUEtmpnolH2QWg6UOayh2c6Ct3LyobRX68PDCXKdUkRgz2CoOcn1dQjmxhGty0mOJfMqLelbXHQzdh2ThxR8CRvriOA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 852217e7-6f90-4607-ea5b-08debff7357b
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 16:02:40.9955
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KI6aYoaicjyk1nnblv/qYWD8//tokZmUeZzViuFwS9U9wCFfBNfG1Emul2bQRQ9/nZyoAK2cAIDxzxKdaDk7tLSnSFx//H8QLJ+eqwAwnFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4674
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-01_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606010159
X-Authority-Analysis: v=2.4 cv=U4Wiy+ru c=1 sm=1 tr=0 ts=6a1dad25 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=57sV9plfSyR_SPf_Xw8A:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22
 cc=ntf awl=host:12302
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAxMDE1OSBTYWx0ZWRfX44FTO6ucNx2N
 ZajX24LlDcvb9vBLBfJy0jxMfKumCJl9CZSOMqLufOEFQyF6MoDodt63hkC+x/v4T77NWvKu8tU
 Hyabs8PfGvwKMZ3ykfevv0S0oiY1+Fz53R0wVegt04XjzJPb4uWQ9WE6wNH0Yc0eGJdqaG/9BlX
 h4y3pIuo0FCCtNi7HMW1n6wc38/m994cYMeQ8VUQ9qSKcWtj8pvWz9wfs4z3jU+Y3V8gYV31w+S
 4dn+nEjdw712ivz6/eqA2HfLBW4LaK/6zgHIAHtCR3z3M8VZLlMOvyijzaTte1TsRYMZvoDtHoe
 +b3pX0bVtGMuwv9GjInydBFog7ejr/nubeUCjz/7m4ilymibrem+L9Ba1Jj892i2Z5+lNex/X73
 P5BtdO3ADh5azEEHm5pCp64Ri3sfTz1s1D7uHpZpXgLUHys5LcWrpG/CO7i9S1tlkDh/+Naz5LQ
 zbvNKf9NkWxSxC+wMWU3A6kUXbWO0Bn5SgvRF5ek=
X-Proofpoint-ORIG-GUID: dgNuBwp5BFqCO9ABXPkense2BEitK0ym
X-Proofpoint-GUID: dgNuBwp5BFqCO9ABXPkense2BEitK0ym
Subject: [oss-security][CVE-2026-8643] pip can extract console_scripts and
 gui_scripts outside installation directory

https://www.cve.org/CVERecord?id=CVE-2026-8643 currently lists
the affected versions as "affected from 0 before 26.1.2".


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-8643] pip can extract console_scripts and 
gui_scripts outside installation directory
Date: 	Mon, 1 Jun 2026 15:03:45 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting pip.

pip would treat console_scripts and gui_scripts as paths instead of file names 
without sanitizing the resolved absolute path to the installation directory, 
leading to entry points being installed outside the installation directory.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-8643
* https://github.com/pypa/pip/pull/14000

_______________________________________________
Security-announce mailing list -- security-announce@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org

