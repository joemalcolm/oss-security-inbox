Received: (qmail 30626 invoked by uid 550); 16 Apr 2026 15:28:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30607 invoked from network); 16 Apr 2026 15:28:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=iPLLxLD9azjGBFqSiChBWrXMS6WnB55K1Pz+MLx/lGQ=; b=
	AvO36a1dYSti4LOR4NxJYPmg+WI2cZjZ1eLuo+kURLnGMdkfJDFP/vtRBfHJ5732
	9ezrJ/GNKzJ8r/ZKjhW39c2bbpuFTS3C4l20/6oNFfIXDqfWXoB0kqDUG8VS6T7n
	5tsVqrrT7TAkYJZjI/kgt7fPp5DGVsevV9gUM5EuuCkBCV49UCm+ym/EYLW+HtPW
	/omvfyzf5DODLZN52f7dkzZh5zCaysvlwvoOr9dMPr2R5a9q7C3p2+T+xfp+hVz/
	CHNdE9uV5WypFOEfQ1jA4qpUqopS1FxLnuvUzb9JiBeLJ16fjI82zxcrZ1AfjCM1
	aJKUuVbSRf8P25+CVt03JA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yxDCKdvJKg/peGpkuElR6v1cFFdcTXiE8sWyBH2tq8vinWBVYuidni/0fKPHW+tkL1ThRkZL0CK+poMLhGnIOACYvfGyAoR6u+emtu5eGX4ik/wrwCJiGzQwLN+cPuxfJpHFq3M35jtz7u/R6W265K7hjEtOdyDawp2Cf39vomzCbG+Y/DVSxXqxMmuLcd9n3uXWyJQ9ItSo/Eib1vJc1ZO700cIgQTstQE7NhJUzYgL0D9frNXdV7olgRvexaLXJRssNVvyTHN76UIM8vI30CFn4Nc0tJfU19Sv6uNV/6KMYKsmAu12GI1NAdeKF/cZwy60m/Lsd081QD0w0DX3yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iPLLxLD9azjGBFqSiChBWrXMS6WnB55K1Pz+MLx/lGQ=;
 b=oXkbiF34DlkPNNt+SXAFn1Di9lv+0o2AtjrSqV4/lLYXcpJGYtdPOu5xkjoPC+fc+s+n9piXcEMq0R0tyyKYRyrUoE0WIPUuQFasB8E8zchiflcb/0fFUquNOdVjXimKD1HtIkqdpbOAbz+SjtYcORYpvCisUla9p789IHrRpxYMTumY1qEJr9/SGz3xKfN9vo5PrL+Fy3x+XODYhqvKzmXKbSikllQxReMrNzzdLMPnRRg8FiFuiBzMtn6EeAJtiNy1hC8qVEQENBbpIvP3NN+dWybivNGKG/zfoIXKIi4bEjgWUm1G3OL+b/c5+041Qjs3/Du7bG9xNxS5yWznBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iPLLxLD9azjGBFqSiChBWrXMS6WnB55K1Pz+MLx/lGQ=;
 b=VxSGPzge4xshpqRwDZRHqQgo4YfBAAWJtllQtGbpA+P0UTpWSqPyElMstsVoekL+KCYWvAm7AUXwX6KR9MOk40GUtCDbjKJBgdwfVpz2cV4v1CuFDieGX2nLVJVFzZn4tFfQfzwdD/of3lxygk21IlAYnMHQ1GB9qHFMOTOU28M=
Message-ID: <31793cef-eaac-4bc8-a8d5-956f60607d10@oracle.com>
Date: Thu, 16 Apr 2026 08:27:56 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
        Przemyslaw Frasunek <przemyslaw@frasunek.com>
References: <69b791e8-91d6-47cd-ad81-827d13cc0b65@frasunek.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <69b791e8-91d6-47cd-ad81-827d13cc0b65@frasunek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0155.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::10) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CY8PR10MB6611:EE_
X-MS-Office365-Filtering-Correlation-Id: 235d062b-6e8e-454a-7c6d-08de9bccbdbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	UDzOhfy6Bcfwikba9eBuI5XnzMiSMUsTIy7Afshc7N7tk4SPBGyDRkmrWGulB7K0riZhqRuAdG7KpH2Z6TLXS0bdkkoQqPkAu8Ssy3HAlUBLvvn1uPFcgM+FCQJF4YnTLHcWUh+9OxxWskKyvqcjmvzkAt14IGrJ9VltXgcrgwZGoSwKPD3QzPE0+hCGadYHTazrVkNN+iiEBYLvoiWhEFC6zGChlmDEpmaoiHYxFnZHGEMsJG8WdGNci/B6l4aw1TjA9UIK2n2Y+TNY0qFN318y6W5awZ87c9Cg6h3M7COX5UUahTU28eDEYqBVNCgjd9lSH/ix9IT067xlQaGXFQ9yQR5/WeZmW1u4HVhRNhInICtvSuZ9/0LtwEx6Px9+wc0+lQUqXsUykEX7sT+UY3iYh7ytyHrA68exyTSPDXBXPhhnEKn03N27kV0cs8xHtmagB5WaVbPRDUSyvESUk6zuKiUyPXdD9q3Kdd+XxeoWEXwFxdgZiVjqT75KNNttKvmU0Ii2OKv9DCI6DOKe4XyDbJxtvD2oUlnvbM5fi3JCqxenEGOtX6z9egddEnqHZ/o2hXzMKqJArUsNhO1nhUI+kGzCAkTTcyC4V16dDwt1gGbaylO68k3wNAZrfrwUMTEW8bLvPJcG3Bf1UkfEd2fAYLS9oY7uNtnXM/HpacVUCWQm7P5accbhxzeK0ABhaVtEoBKDz9nUwOTImPrwNXp8M0xSObKa2+cBCGZtaVU=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NUo1ZEtmSWIvRFdSQUtZb0JUQXUxZVJ5M2J3WUROZk9SdDJmR3h4cnpwanNm?=
 =?utf-8?B?bFFzaCtCaDBMbXB3SUZjN2xWbm5VdFcxUmxVa3p5SEpsN3ZlaEh0eUJObXc1?=
 =?utf-8?B?M0ljWXdST29YTW1OalB5ZHlJZ1JMdG9XK1FPNUtkVDUyelh4bVVWRk9aWGpx?=
 =?utf-8?B?cmVnRnplZTFsNzIzNUJmbWI0cWtXWTgzQkc0NEoyUTVxU1FZYUVtT0wrZ2Vq?=
 =?utf-8?B?bUVFRGUrVE1xMjNuRm1XWnM4VHFqT0dMMGQrNytnaG8rR2Q1dFhZaXA2WGxn?=
 =?utf-8?B?akdUTnpCL0xsa3gwd28xaHJZaFZ0OXA3VEtUaVk0MmVsbSt2bjFreXFrdkpX?=
 =?utf-8?B?SXZ0WS9YV2h1NjhoaXVneDRQRHBrWCt5U3ViMkVZSERzbVhKekV0ayswdVox?=
 =?utf-8?B?bktxTnRQRjZIZUp1RHg0L3RSZk1ndWpKelAxSGpwUUJLWHdPM2VYdVhpZ0xi?=
 =?utf-8?B?ZFo0aDhvK0g5bkJjWlYzU2FpUzVRQ2MvWkJneVp4T0NwRzl4UG5uQ1BkZWlY?=
 =?utf-8?B?bDNaRHRzZzlNT1pjRVNqN2MxK3l4UDZZOWViU3RUVHJ5c2w0ZDlNOTIzMS8y?=
 =?utf-8?B?YzVFSEZkekJjTHBHUXBVSXBocUNvVzVnYnhjbWhjUjdnSU5XcHA0cmFyNE9R?=
 =?utf-8?B?Vm1pRDRjOEZRYjJuWUdLWUVTV2sydnA0Y1Ztd2FGVjRqaUl5eUlJQnJDVDIr?=
 =?utf-8?B?dmJwRnBWVHI4cTk4bVRvYVFqdGVaQXozTDJsQ3dHbU5jTnlwWXNleFUwcUFV?=
 =?utf-8?B?Vi8yaWx5Um83VVdMUTdGVDREeFBtTzJYb0ZvVkppTGtkTWg4Q1pqeno1YWdS?=
 =?utf-8?B?Mm10M3FIUUFPbnM3c2NCcndlTThtcVBwaUhLaHFaUkdBNG1aR2drcVpNQUls?=
 =?utf-8?B?bnVFakFNbytnUnZkUHM3OGNKOThBelZ0ZHY4MDJIaEg5SlZVYlJNUkJUSzc5?=
 =?utf-8?B?NHc5Z29LbkVZblBPL09IeGVFS2JHdDNGRTVtbU8rZmkyZTB0Nm1NWHJpejI2?=
 =?utf-8?B?b1ZWR2tENm13SUI4S1IxUEI5TE10bkRxaXR5bTVWZDJxWnR4WGJGaHVlY2tP?=
 =?utf-8?B?dG4yR2RpckFhZGtFTTZlTWlkRkJNWFBvcTl3SFAxV2RvZk5BWTRubCs2NU50?=
 =?utf-8?B?SG5pdjlmTUtxb0hpSHB1QU9DK0xtcjZzbjl1U01uK2dJbCszY3h6SElUNDR0?=
 =?utf-8?B?YmRkVlNtL1pvakMwYzZVdlhzYzhwM1ZOeEh6SElPUjJZK3BQbWxUdTArWGlD?=
 =?utf-8?B?aEFGS3pFTlZiclc4dDRRY0FWS1RsMmhoU0U5U0lhc2g1YzNEZEtVZ21BRWxk?=
 =?utf-8?B?cnQxNFRrN2p5M25VcFJza29BQklrS3ppRWJmNFJ1RytCTGFrOGlhSHJwcnNX?=
 =?utf-8?B?RzRlL3BObWY5c1daZmhSY09xWmlBZmhDNkE4cWQvV0RwUXZlVDJzMDZYcjdu?=
 =?utf-8?B?SE5RTE1oNVVobC9xMzVBQnJOdkpBK29ONkxxeldtUEdJZnlpWEc0a0NodXha?=
 =?utf-8?B?ZEI5OVlFYzNOSUFBc2tYSjhTVHdDRzVZSUwvUEpTK25Qc2xoMHBWbWJUa203?=
 =?utf-8?B?OE1BTURidFRKVkxTeGdvVE52dWk4eE1adVV3WDZ1WnY1Tk1DY3VvMnJGTnAw?=
 =?utf-8?B?RGRzekFWM0NiTXd2enlnejBKajdIOUZYTzdFMnVnd3c1eU5wa09wTXhMbjVm?=
 =?utf-8?B?ZHNCK1dKM1Y2VGE4UFVPZUhjNjRhV0VTck1nWm5BWmNsREl6cVBXd2RLY2do?=
 =?utf-8?B?M3FuM044am5XNmZXbnhmSnBKZmlxSHdtcTRXNGN5UHdxbUY2VjNUb2NLc3VW?=
 =?utf-8?B?N2JZZTg1U3RMZklIbE5lR2xYSE9PeTJaTHZPRGtjYy9wS0lLZi95c3dDM2J6?=
 =?utf-8?B?QnY5bU11Sjd6aFIvVHROOHRITTRlMjdpQVVRZnZtY3BjemllTGpzSlZrTFpQ?=
 =?utf-8?B?bFNkYnRKem5VMGlFTmNYSDE4WDRvM0dCeWtGY09OcUM1cEwvK2lraXNGY3Mz?=
 =?utf-8?B?eXpuR0lMV3ZMWXNJL1FiaGpCR05zSWhwWldGZmc4aEJMdGtoSzlLRU1kUVhB?=
 =?utf-8?B?MVVXN0ZOMHNKNC9XczFvSmZySWk1OUtZU2h3TU8wR1JjZlFsR3V3ZjFsV0lO?=
 =?utf-8?B?dWhMa3BtZXdUYmlrMkhXVE5LVEEweXpwWGt5N212cmxxcHEydnEwRDhPR1pP?=
 =?utf-8?B?Ui9oS1k5cHJVOWMrVW10dStzVWUyWmpLbHlnaVdlWVp1RGxWdnBPNEtYOGdT?=
 =?utf-8?B?eFRsUWxmRWNBbkNTcXFjOVVnc3NFNWNMdCtONTExbEp2bXVPdDV5dk5Ybkcw?=
 =?utf-8?B?Q1NXT2JOekQyQ2RsTk05RDBJR3lySzZubzZtU0lXNXY0ZE9aVWZxSnVjNTZl?=
 =?utf-8?Q?N+8BPlJwijvUoFSI=3D?=
X-Exchange-RoutingPolicyChecked:
	nIBJ4xJYLA+qngpjVjjjN129jdOciYeK0dAYVHifBNeLt7LEEX/4L3Ed93VBnmlSMDaiGsQ4xiACZVT9rhHB4zqdMBjSUkfcguV8eueovQpXv1P1Zu1XMU8MOA6TYPgQj8c+L2KA+HsoRzzBRcdD78K9wh6/L/HnXBZobV9cPQXYlqRcPuOrFjISv8JLf7mtxsPRSejFZ0KF3ud9CAf4rruvQRMExegkZxzfUJO96VHOntL8E0fBIj9IwcM0gLX39+7TbSsWp2gSzFl0Qy3dJLXvDtuEhG2MCg9WWGgfxIOfsKvgsfB5xuxRWqG2WBJSNNslEc2GQJtPis4pVdzlyQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6TaZdbKnzAto7SLxh/O0CieprmV1d3Zvgkgr0jedPJabx7pkJ0E0TREnl5Kh30vZk1NnI+7qotBA26mVRKMHxaxyrEe0dVkfnQcet4ldY8Y0r+E+2aRFMGcmSRqcLWGDG2MRyuuCA5TA5m1P0qNxqJZyhqy3gzVJw5VWCd9OPJml8ReMiKI3zYhCxNIGbjuXQAB8YahgHZVu+8lEe+FyQFpSxh/cUUQst/k7RxZJTyHyObzpC1cF/uKsMlaBF2JdpHFc9oKXQcTVaNThO83/t53Vyr//aQCcr6NTRbXiWKn6BH4KDFpVxEJCf6OgHJl5r4FZOkCpv78vIyWRu0U4vx1T5nxnHYKvexx24AYWM3fgNsqbMTlx+ixL5RedJoSaB77Ecq1HOSlZ0i0COHqIrq7/WmxrrwfZqFfyisx6Ejclv46bzOLLddz/3NYKhVkENnek0l8EfrgUTUhfQn6l7+nITUMsuk576ima3gpj3qfxD9Txc7FZi5+a8VnjPOquPZQ2KZLJ1u7Nxo5d65Mdnrs/k8ENGCTdFGE+mvHxLkfaGp9M6RTMOp+yz0ffaSTgIaUS04qgq3GRMRlyUIRviw6+eVJuE51Mw8uKDIcAP+U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 235d062b-6e8e-454a-7c6d-08de9bccbdbc
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 15:27:59.4437
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5zSkwLFzEpyXU+DE/q6xbJ5hfRf9jC3bn9OwKj2UY07F345xkIFx2QSiCrZxUXooLjIumg/bMAsjiQKZdAMklou6hKJnB0sb7GF+1pAkLYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6611
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-16_03,2026-04-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 adultscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2604070000
 definitions=main-2604160147
X-Proofpoint-ORIG-GUID: -jbaTqhMx955NA0wsf4QHMx-tf2-3h8J
X-Proofpoint-GUID: -jbaTqhMx955NA0wsf4QHMx-tf2-3h8J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE2MDE0NyBTYWx0ZWRfXyH2v2BcZkFeq
 IJcmCY5X2ZB11G1Gnnim9UbXIoxhP5umerdKbdNXfGBZqCKpN/qcHpxxyT68mHD8P9dCSOOCUTv
 5JCvg+MG4J76u6T1OY4RcQUmsZFAXVephtxDRAuYBkaULyBy5moOnA1P5Al25kCf/qORKzz3A0P
 kWO3a6k5DdFkZEqEK9Wp7Vq6zFrVaJhRSzXD5qwAyrrLcQ3XUAc/yCkT8kmVFs5AMcDXP64FtIK
 VeomGBPOZp5i1VllpO32qgEqS7eKSuT0SSMKS4KuR96KFDahV5TXR6Wdn217H929fhHLhTCB3Kd
 WAmMpVLo7gM8/algnsJraE6L/OsyA8iJCdOklfeDTd8TdRvPn7+oYARHfXOm37yKzn561f16IIQ
 H1BhoM3mqo5zSYE9RLEC5JrTNnHKAKat4a6aWsvBAVKLwupHaIQAqeJcGNYPLntzPTM+21BlVrW
 C0OSEQMy8drZjkvYrKGCCpctRH30OumllFUXR+iY=
X-Authority-Analysis: v=2.4 cv=Co+PtH4D c=1 sm=1 tr=0 ts=69e10009 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x4eqshVgHu-cdnggieHk:22 a=yPCof4ZbAAAA:8
 a=jY6nvsSLv1LIFqEKD3IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 cc=ntf
 awl=host:13825
Subject: Re: [oss-security] UAF in rsync 3.4.1 and below

On 4/15/26 22:49, Przemyslaw Frasunek wrote:
> 7. TIMELINE
> 
> 2008-03-07  Bug introduced in commit d724dd186 (rsync 3.0.1pre1).
>              The commit added qsort to receive_xattr() for sorting xattrs
>              after namespace prefix munging in --fake-super mode.
> 2026-04-16  This report.

Have you notified the rsync maintainers about this?  When?

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
