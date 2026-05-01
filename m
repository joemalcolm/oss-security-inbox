Received: (qmail 15755 invoked by uid 550); 1 May 2026 16:13:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15724 invoked from network); 1 May 2026 16:13:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=zLMsSdPRojL3Gj4zLbFYPrhi1wtaxLqLdim1yW0iuEQ=; b=
	hHWLPN7H7szJA0ysb4STPP34gZ6fl9GMMnFi3vujuf0SpdO/AwC5Vdn3H+WEWNx1
	G7SOZ5ZqF7WuG7sIOfnejAteycSRop8F6oVCn/Fh0qXXBI8qYhsdI/yYDKGNswAH
	/hXZcLIJq8XHnjv84wc7XrOi1KmMgW4/Ogj8xVKrsO2BWHPjg6o1oNck5/atxdWp
	RxdfAnw1O9uM1luTJcnL2QqJfxhnLwAkusa4qi+Io26VZlytrXyOQDs7oPFHZUpd
	rR1AYWLA6qwys1b6aC74wtY2MRksC3IDiEttK4gbMWjZKjdfKZXF4qhLdhg1WFMv
	Y2j42s/oCZJrFUw95Jz1Yg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cKjdP/xooAxT2/D2Vd3NeOWYQxY9L+iS33uA63GuZ+GPnrhMexWJwGFD5kvoXcnIBu98ThWoXEPS+3f6MYlUP4himBUq5i1ydzOuOYK7cb3tZXpNzt353GpmoNPDWG3KxoChAgzt8sbmp0qDkhP3EAzHGn2rYjp91eDtMD1U3/9DpdNB67JzhcUaBQvXqcYRQgHNPIWulgWTB5v3AryCKEl26ryKKxjRTzJrx+ZUXu26AnpL5E1B3C+oWp7zZcM6yTY6Ak4NrZClrhVAr1WVCYajXjwyG+M9HOc4uDdzI1rCc6G/j57Z8mWoFL4GqkjFUdwh9raUt9sCRyv3PJybdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zLMsSdPRojL3Gj4zLbFYPrhi1wtaxLqLdim1yW0iuEQ=;
 b=cqhLiquPMNU4GB7cX+Fkln284Aa5XL1WduzZTIQO/U7ogOp7yDJrxNL7QlldAzc+P7fR4e8xd6w/U5JGmVEr/q9mxXFnRIVWtDV3FAkrnOZ5UAgrAQ81AT/OCTSOOLeJpTJ51O6hK8kGbHkW0lLtqPLLPRFyHfgFUqtGczRBFAsyBtLN1fh7OGaJlf7EmlZ2AQdz0UgiW45wNNMfkHfToVmR6h+Vq0Qta8Hqy/oXRzLSmBOSUlLA9oaZ/tkqm7wccTyOYs70PPzchzz7GlxbcJwfxUJz/gtW7Hchza085FZUK7+MnNRh5yYm0dJgeHedgPpdd5GhVGRpzn0WeBeThw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zLMsSdPRojL3Gj4zLbFYPrhi1wtaxLqLdim1yW0iuEQ=;
 b=oZA9N364wkFFJ3vNSCD+Yl1KpYPE3gfUSoJjWOfIn3PQJGuO88kIeup6zzKfP+Gr/yvvfK611Rvd8PWiV1/Zf1OpY0Vj7uVcQ1S49b3bgoy1DprV4pgjr0la3q8vA30RYu96+3/C9Iyfi8SCKTUhvJTQDsha6qjyBTIDAEem5zY=
Message-ID: <52cfdf6a-d4ee-40ec-9d64-e28b8f81132e@oracle.com>
Date: Fri, 1 May 2026 09:13:17 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afRr2BAmpEL8GnJM@donburi.himad.notcom.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <afRr2BAmpEL8GnJM@donburi.himad.notcom.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7PR05CA0057.namprd05.prod.outlook.com
 (2603:10b6:8:2f::21) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH3PR10MB7648:EE_
X-MS-Office365-Filtering-Correlation-Id: 51d5ac73-14a0-478d-2ac5-08dea79c8f58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	BsPNOnE5H9XqF/Kbh7V8aUv5tS7zkw5xlwvREwaZavkWY1aBcReywagUjAu5ZDrq/AcqhvkIJjD9CqFKOBgaNQ4wyugJOAoH1yZfizDIJOyoZss1nZFq4HeeNLaxEhzUDlpYCdOjeGvb3NZDYfROBtkZJeaJiOLzTq3wZmuVuyO0dc3RH0sWLhe1vEjhRTu0el8scdy6FIt/dxUf2vAOyhe07wwTwlXP3nQ3+inrfvKfnMjwslckcyzM+qbxO2ZpL+e8V/4tCtTtGT3fRu+gaIvPEgATR1IZD/FNNmMsIr5Q+/X50yY6ew1bYJSSdIddocUXgSffXsvXZ2c1+xBrCQ5MXwbobEq5te4QnIfxf30YFg6QldVXyJdOsSReZ8/DgUKSYZWcFe0DmqxrSoHBf4JQFet8Dpm0neLNNe2qkM9bFzPY5yVlOedt5Ujo12VzoiB9PU+cAo3TW9IqDrQsSGW3AvMq/tAJY4q5c8oLUcm6D31IXcjibtBHuysgLDeEwqUE2XlwnuXndsct8/B/1DMC84KZn/XlPNu5vuD/TPNjxPOibFFDPmq1748PFIQizpr7+7FvetldJmUGG/iO0LnIyIVyd+Bt9Gm858GC2iozkJuYzfyQ25It5Af1Vth3GQF3MDB1TFl3z74sb/eB9w==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NXF6S1NObWowNiszYWN2VWNPQVRzZDByVDB2eDNsb1hBQTBnckZoZTRoeXlk?=
 =?utf-8?B?MWVFbGd5U3BmTkcyc01EcmJ3K3p5ZEVCZ0ovZlZrL1g5cXd5b0dHWmR2RG1p?=
 =?utf-8?B?bkc2YlRPeHVKZmdxWVdvY0ZKYld0eFBCU0FpdjJrMVZJSjU2TE95TGxSU3h6?=
 =?utf-8?B?b0VEaHdaVk9WTHl0RFRPZHhxRkFiZWJFLzR4ZGwvOUVnSW9sNEpVUEdxTHIv?=
 =?utf-8?B?RTZrclZ2bEJramxmc3NzejB5NkJMZndCOWtaZkxBQkdrV1JjU3EyVjVsZXBo?=
 =?utf-8?B?bS8xbXdzbm9WN3NqRjRDcllQVXZwOXhkWFJoQ3dwRDlRYzBTWGdkT3FUd2x1?=
 =?utf-8?B?R0UvTVA0dlZNMEpaRGx2elNJY0lIU21DL2JvQkpvWTRRb2NUalVrT0VOb2lC?=
 =?utf-8?B?RHVVTXVsN0pUR1ZYK2kreGtHTHhQWVZ1VGdVeGp5RE1GcmNnblZCSHZkR0VJ?=
 =?utf-8?B?bGZlZC91ZDg0dWdxaDVVZUNDdHU3WjJ5dklzdmFJZTFKTUJrVHpjVHErZVdq?=
 =?utf-8?B?emU5cGhhdWZ5YlZIbUNtQ0M3bDVwV3hzVnk2Y3hnMjkwVlVuMWFLWGR3NjY4?=
 =?utf-8?B?Y2FHS0dxZFN4MHhGRUg2Z3pGcUJkaWxCSlc1NUt1UUJjeHUyQkE5R2lDdVJn?=
 =?utf-8?B?QkhVNHlXSlc5L2hyOVlVdlJnWHd5aFVKNU1RUE1laFZXTlJjakdKZm53YUF5?=
 =?utf-8?B?R05iMW9hMGZsQ252M2l1a1dyZTJaK3Vzd2Y1dGFTNVlLNXUwL0trang4RUV2?=
 =?utf-8?B?QW94OGNQV1N6YWJEMnFPZ2NNWWFud0pGN2NMYjZDTmpOVjRYMklXeUZZUFFv?=
 =?utf-8?B?NitraTdVL3A1NVc3UzJyTzJETWNCc1o5THNCdW9CRmhnWUlpbVBuU0lTa1NT?=
 =?utf-8?B?UURBWVBpcktKNllTaTVSeG9NUm5oR0ZCL1NPUnd2QkNqNmZoVlVuWmNsSVNF?=
 =?utf-8?B?QmU2SUhDZDE1MXFBbkY2RnVmcjE5b0tQN2FSZnRDVXhHaVo0QXVIeDFDdzJk?=
 =?utf-8?B?SkZQNHVNWHRQVkxXSDZFdmdqM0J0WXFUQmo0d05pWmozWmRURnJzczRBeXpV?=
 =?utf-8?B?SHdabnJFa1ZvVEZJd2pYQlRiV3JmbXM1WXFxZ0hsMGdqcHljelVNMm5nR3J1?=
 =?utf-8?B?MHF4bC9FdGVjNmsxNnQwdFhVanhYNkNKVVVFbjhtS25QRnJVUTBIUHpJVjdK?=
 =?utf-8?B?YStxbVhHbmxjbHQzWFRYZUxQT1lROW0xTFBhTGFVT2k0TlJHZnovUVF2WVU3?=
 =?utf-8?B?YjlUN016Ymw4TnVaZm1DajJWRjZoYTFXbFBrQkI1NDZBRmZuazE2K0VvWjFU?=
 =?utf-8?B?MWtjY3pQRHlZNkZuMUFPVXRmM3V1KzV1U1Q0L3Q4NkRnK3A0OFQyZHAvTkxY?=
 =?utf-8?B?endRQzZSaXg2V2hTMEZiMXNmeUQ1djdXNlNvaC9NeUMxejFqQnRkVzNIM1dC?=
 =?utf-8?B?Tm9CTzVEUlNVTWM1blh6V01PZ1k1bzRqWDYzQklURlVCdVU2RXdnbm5qd1oy?=
 =?utf-8?B?dkJwRFNmTUFnNytEbGZxdm5rRU1xbnhnNUNBMHcraWxKclRLTkdhRnplZStr?=
 =?utf-8?B?VzNKdXFQRitiZDV5OHpmQzVIRjhud1k3V0tmN0VWYlpZS2JLYjBrcDJ6eHJl?=
 =?utf-8?B?dDF1VU9LQnhoRWFkZkl3elRSVmQ1aW4wVFVhalZUSWZqME5NRWpKVjhEOFha?=
 =?utf-8?B?UmpxcG9yLytqTnpscDU1V3NXZVhpdW9peFVmWmE3dEt3YUNJaXZwMHZEL1Nx?=
 =?utf-8?B?c3lCeE1oY2VHanVpV0xSNUMrMi9DT1h3TEhIb2Naelc2OUJIS3JiMUdyT0FQ?=
 =?utf-8?B?NUFKZHBibWhUUk5vNndXY0VoNlhQNDgyRlArSlZKaEpYd1NTUEVlSmcxcGtN?=
 =?utf-8?B?Q0FIWko4akJFeS9YVCtZcUphRVhDTk9rUlA3WHBqSkxQaXpwMTVsaVU2VllB?=
 =?utf-8?B?MGMvdjdySndiZ21LNThOekE4cktOeFQ3MTB0UndBNFhlNkNFb1h5OTVzYXJX?=
 =?utf-8?B?djhnNW4rOEZqSmJXbEtXbmdzNVM1ZU0weHFFUHJPTVRCZExSbmVMY0pyMS9Z?=
 =?utf-8?B?Vy9zRmo5TUxoK0NIN2RIeUVsWFJKRzkwL1oxSzJzT1Vra2hMdk1objJHcEpS?=
 =?utf-8?B?M3VrWE5BeTliTjNsdDV2VWU3SXU3SW5PSEhLZWVQRXJRRXRVZ1FHbUxnL1Ft?=
 =?utf-8?B?QkFxMlEwbEI0Rk1rYndjZWZlaGNudm1oS1ZTS2QzcldZYnl3em0yd3N3MWxZ?=
 =?utf-8?B?N3dEL3BZWXV0dVN4cmVaYnVWTzQxRm1NQ2liOUV2Ty9KcVRPT3V1d0N5VFhC?=
 =?utf-8?B?L0I3STl5TTRBcWVoQS9OaDdKRVZ5S0xaZHg3VFRiMmwwTnJURVliS0tkNUJm?=
 =?utf-8?Q?Dv4M8bB53VipItaI=3D?=
X-Exchange-RoutingPolicyChecked:
	E0a7IqWiBITAxIKNp07xuBno/3lnMq0ghAx6zzV1VApmxQPURyBpoI322pwXEWvWsuqNXciOO+hlf0HmxWDbIuf1vWZTtroRk8OZQTopVEGHUPqR22D0DZq33Uvl/+X/3ySHQtjL+aQkVFnHVwmYNIMAjApxQJECogoUVZ/XKsB4izRQgAZAJqu3lTjgk34qZ7HkiVUq8F6Jq+N2v7ZjVkX8Pqmcyzy8h0nun3ncBIwp4fU4BavqV5V9KjwCefdJ/Aa9Wgr1/9/khkXlZ+TYwdHo3jxeZhuy2ae0zpze/RM9CA3UBW3r1/qNGDtamecARX3AIvR6hOH5FDLYmvC44g==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	YRkoIpHl+Dc//S86Ti3GtKQn1VSSyTSNqsBD+XKn7K+FEJX8o32MXDYywrG808Z7AphJ1ptRAajk1a0pQ55NTStBKGsbKAhqC7Q4FXjGBYy8YNl1Y9VYmTq0a7Bi+v1xtgebnDlzbdaYpHrPr6mOHFosSUOCN1AfTI4LgYtDdtI7C6QE8THVLXjUMIFcw18rS82IQB/sTjFwmZRyb50KFwK0P9SpRfKzg5PlYl0xDiPl4ekG+b27NUzazPiTGRI29Cux0uZXVf8Vyy/xKqImgo03quBtJtEU1DBSRYBFdk3tKaPnY0RGsOgCQ43G/kZz437p+w9xKo4/gygKFOxN2pDpqi5LGVTFAtBNZ/E7HCfDhNiay5NsJEHp2j9xQD9bEwh8C5CKRYatnOUlfs9uO/uDHgiJI/7z81vwa0yqXtJZy2I6YPyQSNY56mYJSCvlJiwbhL6eSGl1SM0E+oPPpiIc2ohw+EgGFHoP2B0AO5vMGMbv5WPU74tbSEOtLKL1kzLCOOrkj70UOWfNgnOZmfKER/cny773jxcIr2NKUBrj37QsHPTKfwuVWq/2Lq1afGss3zYrpqdWyoZb3fltRsxHJxDruswbQtULOrvC3Eo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d5ac73-14a0-478d-2ac5-08dea79c8f58
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2026 16:13:19.7564
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1NmINScjtCAqMMtJBjHmOEKuB7jqkn558NJw1TCkjiu/rmIcESEnm6RDgLwckFvnAQAYZruT+BVWOJ2CIRwEegnylf+6qhU00MxhyaXD34U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7648
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-01_04,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2605010158
X-Authority-Analysis: v=2.4 cv=U7uiy+ru c=1 sm=1 tr=0 ts=69f4d128 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=xHmGWb7dAAAA:8
 a=u_SgSZvrAAAA:20 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=6hYQuj7T74MVNx02174A:9
 a=QEXdDO2ut3YA:10 a=dUxtNc5KqGcdvnm1qQk7:22 a=bA3UWDv6hWIuX7UZL3qL:22 cc=ntf
 awl=host:13840
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTAxMDE1OCBTYWx0ZWRfXwRErjY/DALdJ
 dasQK+XcAY75slsYRJClQ8NIisvuRzeoSgkE518LBrExJRPpe3+X+FRs9Dt3YEGSakJk8yNn6zF
 qFMVH93o4ZxncAqbTkassqWmScWLcghQ15b4F1OMyIrkd/4HnOWiETaSdEC+iS1FpU9sXaXhCTK
 HxTout1wHv2PpDIo1oAXu9NtkjnZijHLJAz95xQneuTa/JzF3+g60vpW4uEzXftpnym9FLL0erA
 Tl17B+CuimDBhKTthdJoxqw8l1VLgzPXpmhrIkWywTX4+zbkYjJMvJhSePKzSr1gIxeaVv5ePeX
 fKIJU+E+7T8zXF0YVmXrw9EuB2N5XlgkAezaWVAWr5o8hiOT4MS7gEj0Y+zzb/RVgJBtwd+d8Iy
 DaADLajtBgpQdOdJV9NQCNcdZzmO66LEIaBpkeBYyqq5nq+6hrwVZlebJ+wXUYW4FFzy25ZYr22
 6eppQXNbyq/BebgDjk1Lem/hPkUOG/Q5yFA1+ooU=
X-Proofpoint-GUID: Ij-7a_WWsBTJDo0EOaCAh7hK1BlwYDhH
X-Proofpoint-ORIG-GUID: Ij-7a_WWsBTJDo0EOaCAh7hK1BlwYDhH
Subject: Re: [oss-security] CVE-2026-42167: SQL injection in ProFTPd prior to
 1.3.9a

On 5/1/26 02:25, Valtteri Vuorikoski wrote:
> The official site <https://www.proftpd.org> seems to be down at the moment so I
> don't know if or how this has been officially announced.
It is listed in the NEWS filed for the 1.3.9a release on their github repo:
https://github.com/proftpd/proftpd/blob/1.3.9/NEWS

The bug report is also visible there:
https://github.com/proftpd/proftpd/issues/2052

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
