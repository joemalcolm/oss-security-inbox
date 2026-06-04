Received: (qmail 9791 invoked by uid 550); 4 Jun 2026 23:34:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9676 invoked from network); 4 Jun 2026 23:34:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=8Lcv0jHiJz98YoNUbgcSwdoF17Z7iyvneROLB5yBQ28=; b=
	hEQre1clzVM5YEKQzbfuzG5ZLV/3nVDQCPpAt32Ym66Ow2SI0Oe6rfMfrxGL50lp
	5HiTeW0b0a/futYL7YIr04dl/kAyEHAv0R6OoMJNRnq1F+CEyLmjEpku9iCz+tGi
	vZtXJoFqttrJtMbLGERJPYjYha9KBFi92Ad9r6u6RsO5elA3HMuSqtJfkA/X1eoz
	8v65eFLLx6qvK25rUYXmFt+aTPnlolTShzvP7YPEC+Fi8ymouIYqPkVpfi09q0eg
	nXpSk7PbpqAd/G5ILpIwYCTAD61Ir7yL0r16y6p/52HUb3topNF8OmBxNVp9dn8j
	XrKSFUDifbJhtL5AzORNSw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mA9ReIiHEAMdJPQ/AxQM5yepHn0AwnS6P312P2iMS+rRu/UEx+1cNFpmF9leGtSjmoAbKa4tql9n65UscnMIuNq1FbmxlyldyqSqt55GXlqxNYyZQAhb0H2uiK6gM2lPqIIltLj2H5drX5liqRPlEgkXpz+0Y3RFuz6bW5rgKrBwqoNr2p7LVk+rFacZpLejSR1+j01S1a2YY8za2V6dfx4G4gUaOEDtLRkIyaF+SC642xv46WjLvjt0i/noP/HIRxUUF5RwtCu+t9wv3s/FDny014qHRuE5De2C2IkvaeKmzF4OEDyTA3YFjPnahah7f+WwX12wJbPmzbX4liHtEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Lcv0jHiJz98YoNUbgcSwdoF17Z7iyvneROLB5yBQ28=;
 b=vXqXKKu3o5F7xutecK8EW7NdYpQEjclQ3uu3EhWu+tJzP0ku4ICnGK+abhMbVVgwlQu/XOvjlndF6qJUp9e4wiodlRwEY+YXeLfWzKNxWW+kyY6Ifih/DM9iESHLqyHR34rzZsjTdYcArQiDDYPKZBQO1vLEjeGLpczE63bG1LRrjTMzzdm8BIByTNtB+m0W7r6PWKgwNmcVZmdhG/7LWdBfduurhtnw52lz+GwY8JogkEas18bPIDLk2uXX5swodOjG8IcFTF/8JLLYIzUm7Qg39STde7xJHgN4a6SH2PNNnrWTsoaI76dOMY8ntN2vxpRKQAcjt9Z//KAyIl4Plg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Lcv0jHiJz98YoNUbgcSwdoF17Z7iyvneROLB5yBQ28=;
 b=MytZB//amkZRTRtZn/4lLOuhQfSWa18sBaDn3SLabRK+HZbxMODCFHbKQJEGR3+vtI4k4sYnnd+nDylxN7PJEhWLhTpu3WWbewb/rAdSwxcYMMFkUtTwpukKvLFaoi75EW+UTHuIGYDNMz5gyPqPcAatlicnBmDf72/0pxy8O1U=
Message-ID: <6e9eb782-2ebd-4ee7-84f5-92765d3d494a@oracle.com>
Date: Thu, 4 Jun 2026 16:34:04 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <db78849e-dc8f-45bb-bdd4-a67321d913c3@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <db78849e-dc8f-45bb-bdd4-a67321d913c3@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ2PR07CA0006.namprd07.prod.outlook.com
 (2603:10b6:a03:505::18) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB997689:EE_
X-MS-Office365-Filtering-Correlation-Id: f4617deb-0d0d-44b6-ec0c-08dec291c4b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|13003099007|22082099003|18002099003|6133799003|3023799007|56012099006|5023799004;
X-Microsoft-Antispam-Message-Info:
	+yV0bhQgjHQlHgwpPkfGni2asuXQkDPHYmHt9PrJzSd326ziR51wSGIhEHzKNOJYkTuxZRVL41G0yvkk+24zBPEka5Jv/nSsnjCdB6uWK6Nad9+znxxWGNK9ZPczZyarkZUktk1RrpWKBZhojU2PpG7CDWHci9M2fQsQs84Ef1p1BKhF3eVZm5ExZVSjDTTlk8stpLW88KNLMGS1pKHorU9/gXv9MdZaVWfQpJtdaVnSeWVrwekDVJO+otNNG4dY6FsNNMNdATYNbePUYJYbzEDO2IlzZ0FKoUH0cyiPzTp6fVcxfIyVuhcQj/Rfw1BM1d66dur/2QRBjs1EycFIskzkaXh1bHIZJn8tv4zuyeRasi5MaNigZFVND+ZFPKfFzFbtwg85EKxuEON2TbSqlbrYBPZZzGm4ZzSjbcGsIoZJZyGEUd3vgQOtrj0vJcSJdGBgA2YhCVSH8OpPpogP0wOFtMAF4nOGgxSp5LV/DBzKeKrVgdfJwAv9/q4po7Cos7PqRrBECohXSNBkI+sSPld2Uw9ZK01cjjDZdTE2dXHHeKSa7dYEDBoPndqyKAEh/JNUnuo6lWHqQm0rT9u1+F0g/2LQPDbW9bwt8WKgoUjflJb0SdsvEOMHmxSn5NAkAjvAW5Y+CP5LtQDXUSgLoh14iZs/iQ1rCIHyL3YbbI6H3R/PpFPm8R7xWWHNCuhSfx4M0jmvF/kn+sfYcUixCQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(22082099003)(18002099003)(6133799003)(3023799007)(56012099006)(5023799004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dlFRR29PVUJlZGpGbkpEU2tFY292NEF1WlhzRXhjSjUvTExKZFB6aCswVFhD?=
 =?utf-8?B?UWlYZ0lyMDNzdW9WeEtZNC9nQmlxSU0vWFJHOENGUVA1VGR5WjNMMnNKeXY5?=
 =?utf-8?B?Z2RYd3ptRkZsVXJYSTlTOGxUc3d1Yi85emNkZWsrKzFsU1ZHeTZTOXlBQXhX?=
 =?utf-8?B?K0thdlBlblBHZkxNc0h4NjRkczRyN3VBQ3Q2M2hORnhLTnFGUnI1REJGMFlH?=
 =?utf-8?B?S3N6MXZHOUt4WFNWRTFoNmlzbUgvM3czcUJjTHUyNHRaWEJjWDdxQnp2dWZW?=
 =?utf-8?B?MTBFQ1Z3WnZ4NjQxRW1vVWFacXFMVjlNRWpENTFxZWpOTG1pdGZmQVFCYjM3?=
 =?utf-8?B?dzZSL3plQXVTZGhEdlhCdnpQTHFqSXoyUmdvLzdHVUp3WXEySkNNazFucjhh?=
 =?utf-8?B?V0FldHdkNXpWUFlDTFFreEp5TkhiOVRLR1B3dTErZC9VSjdQT05XNHJRSENm?=
 =?utf-8?B?T1FwTTRqRGhuODFaczVvSmxtOUs1MitobzRSNDJHdVFRU08xWVBPcjRaSjRF?=
 =?utf-8?B?cmNkT0hmMTFyNWt0UjltbkRZL2R1dWpHbnY0emVWRXFZNXVvVENrazNiZFo1?=
 =?utf-8?B?a0tEZTVUb3NLM3MrbmlaU3pEUFVsempSaTVBUjFwRVdhVzdjaWNQam82VmVw?=
 =?utf-8?B?aGZ6cE1WN2prRkZsMDY3TERyTkZNR3ArK0Z1SGhyeXVyRDJkc3M1SStraFJn?=
 =?utf-8?B?MG1MUlAzUEh2bWxnVnFjQjVDNXp5SGxKUEVxQm1oMkg2UWs3VERGSndYNkN5?=
 =?utf-8?B?eWp5c2ZRUkkrcE1FZ2YwMkNnMmtMclBqZWhJbEhxY3ZmcjZSdFF6aXhmTjZz?=
 =?utf-8?B?TkFWbXMwV0xKN3pCQnk1VldocHBLSE4rRjNqSjhOWTNCVjc5R1RBc0xiQndE?=
 =?utf-8?B?U0ViQXRTdjVWSmhWMHVEL1ZWQkdZdzJFRm1GN0ZzTHJjcDRlQ055NjB5YnNs?=
 =?utf-8?B?ZzNpV3lrUHFGWmZTcDdGR2VreTdZa0JsQVduUCs0aVdnY29pZUI5ZlZTTHlZ?=
 =?utf-8?B?eG5BekkzTDVWWDg3dk1NVkErOFdScDE1NUpxcGUxZGM0SFAyZlhkRWUrSkRS?=
 =?utf-8?B?K0lWR3F0ZjIvWVlSMnlrS3JER0U2bHZ6b3pSNmRlcUFiWUFoSGIwSWU0K3J6?=
 =?utf-8?B?VU9jZ1dlSnpOSlJJZks5S0xXMHh3eHFiY2ZFZ2E0N2hGdW9rMUJ4RGowcVd1?=
 =?utf-8?B?WmtnMEs0bE1DbU0zRUZBNlVXc214dmZnNGdhUFdFWkx1Mmpsa1h1TXJRMHlM?=
 =?utf-8?B?bUVoUU40MUUzVzdSVVovY2tlYW1ETUVGQTFnQWRKbGNUdnVWTnBQcGp2ajBS?=
 =?utf-8?B?Mm02UlF0eGJLUy9tTDVjTGZBdXNOK2VXYmZqOWV6SzgzZXJFQkJkYUg5Nmt6?=
 =?utf-8?B?SHNuelhOQ2pvY1J5S0tiRDAxZVo0SnVJMFA5RWhZR0R3bVhDdGFHdXVZQkY4?=
 =?utf-8?B?bFlmdDhBWTdwY2F4UXVDejQ5cm4ya3M4RGYwem8rOXptWERIblhlUkVsTHd4?=
 =?utf-8?B?VnJicmVYbjBaRUo2eGl3dWx5MTVzVXRzVVFuV2FVRmxjRFNuaEhlWTZJb0po?=
 =?utf-8?B?UWVYZFBYSkZ4ZVpLTWZONGJSZWJUZE0xWUV0K2h1VE5OMnRRS3p0ZTJIc1d4?=
 =?utf-8?B?bklUL2dERFFZbWFvamNUOFdocjhQRFdyTXZrWTd2ZThVZGZtS3oxNE1DNXho?=
 =?utf-8?B?Q1lpRlE2MnZIR3cycXI1MnRHYW4zY1J1cEFXbk10aUZHSnRpRUx4YjJZM0hD?=
 =?utf-8?B?azhWQy9scWczRlFNdEJVNEZFQnhNVUxPSjZkOTJhWjNZK2huaFlGbG5laEhY?=
 =?utf-8?B?L081UGpXOExjajJqZ1JtWjhUMDV0N1ZmaGpKTUJlQWNkMS9uSm9zTE11OXU5?=
 =?utf-8?B?T1hsZEllV3I2MG9IMDZvU3BFa21ZVjJNc1c4RUVVQTNYNUhJNFlnTjZndVJT?=
 =?utf-8?B?eTk3R1pzbThnZTROUmJMNFYxUnJvWDZBT2xLczB5T0YzZEFBdWNXdENDQjZV?=
 =?utf-8?B?N1ZaWS9hUG05ekMrQnJXcU8yNWV2MDJJbXYrSXJZOWJjQnNFZWF6bmFvRzdT?=
 =?utf-8?B?TW9JcCtCZEVzVlpieXFSajgxeitnblVYTnhqM2J5MUFDRGVXVEx1UDZQSWM4?=
 =?utf-8?B?R3FENW1NeER1UXJ1WWU2ekx2Zk12TXJ0L3FMU3NrSi9KcEl6K2hTZDRIOTFo?=
 =?utf-8?B?OGhtdDYya2xMOHN5b240Ynh4N0s0TWRUZGttWm9YcWJxMUl6MFV4c1oxUHZC?=
 =?utf-8?B?YmFkbm12c3FiMlF3d21WMnhPb0V1Y1Irelp2ZnU2VDB6cStJT1Q4NVJiZ09N?=
 =?utf-8?B?L1lYNmhUaTVYVE1yZlRIUksxL05qOUE0VDRiN0hCbmdmOVNJd1NmWTFLbWY1?=
 =?utf-8?Q?5Nzr+eKBhT6yViw0=3D?=
X-Exchange-RoutingPolicyChecked:
	TmT9jwdLTc9WSVSW5NWVSQjBVW0LzPDyg9MAUxr0nTvHfPpJpaXBX4UzyDrjApvXmSV/jk+NEExL4EzpRJ5X6vh8R2mFbOkM4iKTHywxDQ9gQR3RdUGirvl5KjVqyGE7ssKGQqJXLCeQESq10UeKCQ3x7a25vfhJEL/tRgO2fpuA/PuIh3xcFl9UcbLgFMVZaSquyIe96UcENuqCLcLtUFa8rVufOLC8W+W4/X+0FczrqW5jRFzhhAhPrnYPP3jbejdzzXnThLqOzfFtVbzrwa5jwUrWU7s/XwpUl7EpsqOd3j3WSSKogTwAviHRzX1TcQy7vBQnN8QLnPjQ3bVMAg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	CDpF+k2U2c/mQuG2GtDYFPmyJO16RllG5mffenAZuFlqjY6VqayyrjZ9ldWHeJjs+86Ucr6YGYgu5oD1008YfYwSEBUluhpO5GMOyemro8BW3jfCGTZCQIqC5E5gqhYZsAILGlY/OQ/4mfSW1RujdQbMaroUhNpvLgFrl6FpzEQXORT6Szn/DNe4ERM7qEipVc+WSH99zyF2sKh2vtg93+h8WjhX5w91BjnKN/fMeubSARzk7EpCgb9xFCtKqJmDMkYuIw62RsOHSuDBZJ2mgyGzh8vZOt7T+w2Ii2a1dJJGo7HrQiPUusT4+JMfzxRXbD+MuOVeLR/k35Hx49T3PzAyZXodQ31pgL8mio4RFXYp8FDCfkqRJOnw9jsv3VbNGGQKyQBmAWZ6I18TBZUm/kC1y139quFdHDTan6W7xucSG0pQOVA7MO3YnGMUciESMh7AjCnlGhXgckMQ0QsQc8IGfAZ36Uuy2zgb+8XRQUK98MMF56rWGBh1Cn+ArK8b9a7NQcoJ+akmz39Zu4i+0GMYvNCHL2t17HrqPSw/tSC2SivvORE9jkDal6OyEOFEkl1kPjGEAc7YtZh9ClKpBY8CDer4KOwVGEdw7JmHlYc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4617deb-0d0d-44b6-ec0c-08dec291c4b8
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 23:34:06.2322
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EJrBHD+wrCpFLAfbjP7GCLfJQvJPzRYerGyYPJoM5IoJnt1nTdR3gRxnNwltjJ4UrzCGJE6+EKNq2VccoGiXI3rRClG9COyM08RyTEpVYqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB997689
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 spamscore=0 bulkscore=0 mlxscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2606040231
X-Authority-Analysis: v=2.4 cv=NLnlPU6g c=1 sm=1 tr=0 ts=6a220b72 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=2oiMM_oiAAAA:8
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=tlwYHTMgJrqK3FfYVrcA:9 a=QEXdDO2ut3YA:10
 a=E6sk8zvZnCEyYBON7110:22
X-Proofpoint-GUID: rmr9nYd1dxLHZcQnJvweTzS6bmvzdcr-
X-Proofpoint-ORIG-GUID: rmr9nYd1dxLHZcQnJvweTzS6bmvzdcr-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDIzMSBTYWx0ZWRfX6NVdVrfeDOR7
 uAeFmtmMXr/RbySfCwjcpWIZs5D6GHwbKHvQfziaxGPFUymb22R35Eph9xGFhnSDym82UA8z5cD
 P7K73OqgATVeDlIzrwzzjXJNmWuavd5TG301VNDpFEGvAPxvuTh8z+tcgXhfTgq5viAzT6v5Zo5
 YAhFXa2tA4krKXTs4EE1O5RypGXIlDX8ILn8yYIrTeK7+PiByI67Ag+Dzo+IGg5Q0WUjea9G6o7
 q0DB5qR3u5kjNojs/9fDaQgKKmHrwno4m9oz1Th/szBb0RIj6FcyZTuesuwVLQCuH5JnNyTfy1J
 bf1ZlwVoF6deO59sXKDcWca5UvKsBuUFei//2SxiMJmqGjCds8XlY+tx9RJJK2LZunPMYvEyS+B
 ++XON+EXwO9BmPHlHQUnRT8gpi2JQ1nDXkl/j8YzPn0iiV/KagXR+LqfEqLGGdKQs2fkbhIiZxS
 VGxApYsbz9pbBz/OUiw==
Subject: Re: [oss-security] HTTP/2 Bomb affects Apache httpd, nginx, envoy, &
 pingora

On 6/2/26 19:36, Alan Coopersmith wrote:
> https://blog.calif.io/p/codex-discovered-a-hidden-http2-bomb says:
>> The fix commits above are public and disclose the vectors directly; any
>> capable AI model can turn those diffs into a working exploit, which is exactly
>> how we found that Microsoft IIS, Envoy, and Pingora are also vulnerable.
>> We've notified their maintainers. Given how short the commit-to-exploit path
>> now is, we're releasing this writeup to provide users with the mitigations below.

Additional patches have since been released by envoy & h2o.
Posts on twitter by @calif_io continue to discuss whether other
packages are vulnerable or not.

https://github.com/envoyproxy/envoy/security/advisories/GHSA-22m2-hvr2-xqc8 says:
> HTTP/2 memory exhaustion via cookie header size bypass and HPACK amplification
> 
> phlax published GHSA-22m2-hvr2-xqc8 Jun 3, 2026
> 
> Package:           github.com/envoyproxy/envoy
> Affected versions: <1.39
> Patched versions:  1.35.11 1.36.7 1.37.3 1.38.1
> 
> Summary
> -------
> 
> A vulnerability in Envoy's HTTP/2 downstream request processing allows an
> unauthenticated remote client to trigger excessive memory consumption,
> potentially resulting in OOM termination of the Envoy process and denial
> of service.
> 
> The issue arises from the combination of two behaviors:
> 
>  1. Cookie header bytes are not fully accounted for during request header size
>     validation in Envoy.
>  2. HPACK header block limits in oghttp2/quiche are enforced on encoded bytes
>     without a corresponding limit on total decoded header size.
> 
> Together, these behaviors allow a malicious client to cause large decoded header
> allocations while bypassing the intended request header size protections.
> 
> Affected Components
> -------------------
> 
>   * Envoy HTTP/2 downstream request processing
>   * Cookie header size accounting during header validation
>   * HPACK header block size enforcement in oghttp2/quiche
> 
> Details
> -------
> 
> During HTTP/2 request processing, cookie header fragments are buffered
> separately and merged only after request header size validation has completed.
> Because these buffered cookie bytes are not fully included in the effective
> header size check, oversized cookie data can bypass max_request_headers_kb
> enforcement.
> 
> Separately, oghttp2/quiche enforces header block limits on encoded HPACK bytes
> rather than on the fully decoded header size. A malicious client can exploit
> this asymmetry by using dynamic table references to keep the encoded
> representation relatively small while causing the decoded cookie header value
> to become much larger in memory.
> 
> When these behaviors are combined, a client can force Envoy to retain large
> per-stream allocations. Under sustained concurrency, this can rapidly increase
> process memory usage and lead to OOM termination.
> 
> Flow-control stalling can further increase the effectiveness of the attack by
> prolonging stream lifetime and delaying reclamation of per-stream memory.
> 
> Impact
> ------
> 
> An unauthenticated remote attacker can cause denial of service by exhausting
> memory in the Envoy process.
> 
> In testing against envoyproxy/envoy-google-vrp-dev:latest (v1.36.0-dev), the
> Envoy edge process was OOM-killed under a 3 GiB memory limit within a few
> seconds using a limited number of HTTP/2 connections and streams.
> 
> Additional testing showed that the attack remained effective with significantly
> fewer connections and streams than initially required, indicating that
> exploitation can be efficient even under tighter attacker-side resource
> constraints.
> 
> A secondary operational effect observed during testing was that oversized
> decoded cookies forwarded upstream could exceed the upstream service's own
> header limits, potentially causing upstream HTTP/2 connection resets and
> transient request failures.
> 
> Attack Vector
> -------------
> 
> A malicious downstream HTTP/2 client sends specially crafted cookie headers
> that combine:
> 
>   * incomplete cookie-size accounting during request validation; and
>   * HPACK decoded-size amplification via small encoded representations.
> 
> The impact can be amplified further by using HTTP/2 flow-control behavior
> to extend stream lifetime and delay memory reclamation.
> 
> Patches
> -------
> 
> A complete fix requires addressing both contributing issues:
> 
>   * include buffered cookie bytes in request header size accounting before
>     request acceptance; and
>   * enforce limits on decoded header size, not only on encoded HPACK block size.
> 
> Fixing only one side may reduce exploitability but does not fully address the
> underlying issue.
> 
> Workarounds
> -----------
> 
> No complete workaround is known short of applying a fix.
> 
> Possible temporary mitigations include:
> 
>   * disabling downstream HTTP/2 where operationally feasible;
>   * enforcing stricter request header and cookie limits before traffic
>     reaches Envoy; and
>   * monitoring Envoy memory usage for abnormal growth under HTTP/2 traffic.
> 
> Detection
> ---------
> 
> Potential indicators of exploitation include:
> 
>   * rapid or sustained abnormal memory growth in the Envoy process;
>   * OOM termination, including exit status 137 in containerized environments; and
>   * unusual HTTP/2 traffic patterns involving repeated indexed cookie references.
> 
> Credits
> -------
> Credit: Ryoga Yamashita.
> 
> Severity: High, 7.5 / 10
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> CVE ID: CVE-2026-47774


https://github.com/h2o/h2o/security/advisories/GHSA-qcrr-wrhc-pgq9 says:
> HTTP/2 state amplification
> 
> kazuho published GHSA-qcrr-wrhc-pgq9 Jun 3, 2026
> 
> Package:           h2o
> Affected versions: commits up to 8dc37cb
> Patched versions:  9265bdd and above
> 
> Impact
> ------
> 
> Recently, an attack against HTTP/2 servers was published that combines state
> amplification caused by HPACK decompression with Slowloris-style stream stalling:
> https://blog.calif.io/p/codex-discovered-a-hidden-http2-bomb.
> 
> H2O reduces HPACK state amplification by representing HTTP header names and
> values internally as references where possible. However, in light of this
> attack, additional limits may be needed, depending on the configuration, to
> bound decoded header state and prevent amplified state from being retained
> by stalled HTTP/2 streams.
> 
> Patches
> -------
> Mitigations were added in #3597 and landed on master as 9265bdd:
> https://github.com/h2o/h2o/pull/3597
> https://github.com/h2o/h2o/commit/9265bdd9a996ed992681055e3996baf3e09d2063
> 
> References
> ----------
> https://blog.calif.io/p/codex-discovered-a-hidden-http2-bomb
> 
> Severity: High, 7.5 / 10
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
> CVE ID: No known CVE

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
