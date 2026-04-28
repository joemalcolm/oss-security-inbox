Received: (qmail 31948 invoked by uid 550); 28 Apr 2026 01:46:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31879 invoked from network); 28 Apr 2026 01:46:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=m9l7ZdwhsZIRU2Muj8UxshOP+akxdmYjA0uU2zHrfvg=; b=
	ikN/d2xn71xZmwghpMGwj106H3V0OnwhGoaz0hY16J2ZSZhLqApss2slHyo//K3O
	ipU47cTzL5j879k4cF1viCRA2n4CYYUoif9XJfpxd6W3CBOkg/rTEtlD30Ff75S0
	6JDy9vFNmJKMLrTULH7cJcwaUu5BMrymaCW1D2dGPpAc2dNpx4NlacGe0rhjec1m
	SAFDqWRXBMR1h/1+mkft0STFy7bjV3Taj8hbPF4mgFuY6wtXhZ7T6pmDZQUYDmDW
	4vwN1v88MG28JsopSD5oEj8vuCd2nrUyyWVgBY8qYppwinJpXuyC6np7UZ7fLjwJ
	0kd6lia0kOfFUzoqjAVI1g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ix0wPSMB8sWtEjTe2qfdj9inyrNDT+NwpWaOCnH3U9jC1je2+2XM1cPJS2d+bplzqjuhlVPlp/U6Z4tXH56R9jbKY8yaVI1v9OBlYyS/TTlOM1JxXGG5a35T4FnKa4JSLOIneMXQoVlIbNGDcJh/aFEb9NXLxxQA+oTVwgD5kmAzqnaPCSlYSyKwdNtP4VN0I00wzlOQyKEC+FwnQ14bQ3cUybHNcth4KdvoWN2O6kHC5zQeNiXXRyPNXx9UquErCAYBs2aVi1Yeo1QXpvSP6TsqvJ8dnZikc5fWgenH3W7Kre/jrBRFwLIiGOF3+HWNqj2u43OuZHMstUR2p7oYNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m9l7ZdwhsZIRU2Muj8UxshOP+akxdmYjA0uU2zHrfvg=;
 b=d5pttN35BCWxIoSHeDUhI+ccAHQkG+trpXjIcfp6Ait6oN8GOV39Bp3IPBLMO+He/M4z/dm7JTbaSFUVxtEaoEOhceSWB4ql6jxnk75dRMn4/2dP0GTdDR0QS5/jQM/0cddURk8CB9jH5RlzgLFfmY0f/LBf0E9Ue/WKUjfFMXvMdrRJyIyoubo/rNd2ARv+h9z4BG2AZko1oWkQ6TPqJIDh6QMMHT1sFtogtZBpzzAHAm75FL6mD8Wt0fT3kQwb0rj/cnlg3jVYdJ0rI5ZgFokd96KEmZKM16ABFhd3f+Wh6swsonRHJYxgNWsKgDHXTw/nDFUhopcay+vJpBLSyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m9l7ZdwhsZIRU2Muj8UxshOP+akxdmYjA0uU2zHrfvg=;
 b=pNwVKJ1iVWDEla9GgjoTL7EkF6fX6TSmApCSPBDT3bzm6OUKtmwsdoa31o9uohylQm+644/0rrgWClqMZaV6FzEZl3XZeSmSgjebXkzkFqn2HTNBiU5eGhXKrw5DjJznFTLb3hB3FzRr6W5XIKF1ppktwpXSFpNJRKGD4eq4fP0=
Message-ID: <f0ba171d-063b-4091-98cc-6c68ab124a74@oracle.com>
Date: Mon, 27 Apr 2026 18:45:50 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPQkT+o+1X5-WvMenm+kr9Bd+7gUTqVrf_7cYqoVe6kHDQ@mail.gmail.com>
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPQkT+o+1X5-WvMenm+kr9Bd+7gUTqVrf_7cYqoVe6kHDQ@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPQkT+o+1X5-WvMenm+kr9Bd+7gUTqVrf_7cYqoVe6kHDQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR06CA0023.namprd06.prod.outlook.com
 (2603:10b6:208:23d::28) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|MN6PR10MB7517:EE_
X-MS-Office365-Filtering-Correlation-Id: 33e64669-8531-4d3f-057e-08dea4c7e20d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|4022899009|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	GDKm8xbSuOkYOVZcsre5TtDQzovgeKdD0HWQNp6AVPs4sNtfKOChrQRw1AVD/3fCRwc4VtF2iajtwmoR+39ojN/Yttt0BceQHzRgbNwoRP/OdVXKCtFRgh/60P95+AcL14Sj0DXTUHtA2JljXpQzOqB9dYXd+J04FRKepctVPbwWf85uEgtlENEa1ReZVbYS3lJgCoc8zyYPOMI6AAoL6imT9+mV0GX3dkVc7BQ+lVFwumStPrDBSBOy3BJihmc/lGwhAiM63rSlGWDXle0bkxCv2rXuCpqRypD+6sdHZhGt5OYdYQ0whNg72F2+/AjRy66OWm6oIUXst3t7ltGNYgpLtjyXllNe/HQcH6ASLpCL3rvpHB5xm0iIgNBCzRSWBbzr0TxKkHDyogNsvG07hGyEy0Qgy3PrmW0nIaKpLjVAjrLaCFKASqpzCsNFSZqJnn6qgz/dj75GQFiKlsX7sHP4Se3+yeohPXWxYsIGMd+3/Gpvi5USzoAyBhX073stTPPqZGsdT01nUPJirM62RJSD6VaydMCSE2oN+MLRqAtUmocdVf8JKj0o8FZbev1/WMU2qD+VF8xrlvwYg0tfJwrNJ9Xdhjm7euZuavi3Izh/Eiuf5bsn9owfoWaoaae2IRAml7DyBsApjnzZd7hPPMzlLKZgYZU6QjhxLz40BA5fpSSmwVMgfcoDzfh6c5QzDcr/mQfKoetQz64D6Xqiu3ZC2eUJo+LQrBK2PHzPK//1wTQrznkD8W8UQMSORwKD
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(4022899009)(366016)(1800799024)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OGxYS0JoRTFaUTA2OTh0SzkyeXNPY1FKU1loL3pYWnZlcmNoM2hjbXc5VUNz?=
 =?utf-8?B?STlqQ2lscmw5TXVCL0ltTFRiNS82NmFTQTVIUVlaaDVNc1hVYnNpVVJsODFP?=
 =?utf-8?B?bnVNbm0vNmhEMmp2bWVwY29HbGRhbmdGVXllSXp3V0F0RTQ2S1JDYml5TXZS?=
 =?utf-8?B?U3ZvLzZNU3V6dVhlT0pZWTFUZHFua3c2bWUzSEIrOE9jL3U1anp0L1dtZUs0?=
 =?utf-8?B?Zy9oL1RnOGV3NWhieUhTd3B3blpjdkQwbmRkbHB5dDR5K090THNPMFVGcG5q?=
 =?utf-8?B?U291NjVuWkVZWTIwT0NKdjQ3eGZIVUp0b294S1lpNW9rY0RHTlYvYWJ3SWZt?=
 =?utf-8?B?d1NDc0NCSkd1YXp4VHlyRVpiTE9iOVV6WkVSOWJISFQ4UGZDS292SHpiUU5h?=
 =?utf-8?B?dUREdklwR1o0WTBXOEFmRmVrK2tNTGo3SjdVTW1zZG1TdHVBOHJUNm53dzgv?=
 =?utf-8?B?OTFNYkRqVW83eUhxaFhyYzh2UEF3ZVEyMWF3Zi9lbnBwOFZuc1ljRWpOdGI0?=
 =?utf-8?B?M3Y4M0tCaFE3bmdNZE40SitmM0JVN01QekJhQWRJK2ZKaE1FdFFpN1pNMWk0?=
 =?utf-8?B?RjRxVGZEWjlVTG0ydVJXcEdmUFNXMlNPSWRwMG5oLzVsVERYNHlWM1pBQkRa?=
 =?utf-8?B?MTVXbVVGMUo0K0EzWXdnWnZZVjM3a2V3V3VpWWxxZlRwM255U2M2Z202UUQw?=
 =?utf-8?B?U2wyTnlwV1RLVHM0OXlTd3NlcnMzZWVZOUhEZC9CbGU3SDB6cWd3TUp0dnZ3?=
 =?utf-8?B?SzBXTEdWdUtHZi9pQnIrRWJsTXVWbEsrZEY4bW4vUUtXelFVOUhGWWlGK3Mz?=
 =?utf-8?B?bFZGU3dGUXRaKy9OdnMzeG9rMG1jcWlRN01lcmlHcVg0RjdYR05peDU3VjA3?=
 =?utf-8?B?K0dyWXdMeDQwcmp6bW9oZmlsSmZMQ3FZQzRtWGphbkF2YUN5M3QwUGxVdy9C?=
 =?utf-8?B?SjZwTUV4YTZzU3FTUzZGemx4VTZBUVVYem9jQlBtblc1bThlMVNrNjRaR2Zw?=
 =?utf-8?B?a0dxNjZsYktabzM3dWZsbGtPWjJ6bkM2NzE1czZ3M1hYYkhMMER6eDZSbU8x?=
 =?utf-8?B?eHpUZHRaclM4a3phRUhsQUF3WDRlRmhiSVc3VHF5akN4YzI3bzNicUdON0lQ?=
 =?utf-8?B?c1BRQUs0eWhVOXNsOHNBZ2VtZU9DVnFxemh6Yk4yMThzb1FKS0l2dm1nUEI3?=
 =?utf-8?B?VGgvd09KYWo5dmFZNlZFMmd0QWxFWXJJZURWY3lqamo1bjI2cmJFSk9MMmJp?=
 =?utf-8?B?UnNLMFJlRnh1RmZJVUxNZzZOTnR5bHNVWXM3b05rdSs2MkNnRDdRZkc5M3d6?=
 =?utf-8?B?cE9WOGZROGhBYWhMcSt4bDlIbE5ZWWFKYUdNanJBZHJzMW54NDYyMFZ1TXlE?=
 =?utf-8?B?bm9ic1JINWxnbll5VjgwdCtidFF1SUZmZTd6MWV4aXpBR2cxNzlVeFUwZFNV?=
 =?utf-8?B?SHp1RU5sK3d1MEZuMm9pdWVPci9uWkQ4K0h2TFhoMTVQSlN2UmkwUWMzNTNT?=
 =?utf-8?B?UDBKTjlpclRabHpZdm9ERHBwaUpHMDJHeCtaMEh0SkFycDdUeHBmY0U1cWk1?=
 =?utf-8?B?MDVkSDlyeDhKNXFCZkpGYXhZOGVhRTlHTnRCN1ZMQ3NZUzNwakM2d21tVWxj?=
 =?utf-8?B?YWFtSTF5eHBneWswT0p1bnIvT28xU0FCbDJyL21lVnZiUitRcU1pTlo3MEk0?=
 =?utf-8?B?OS9qYmtXT0F1YW8xRGZ2eWJ6Nk8xdVRIejZ2YlpwcjVwWGJiQ1NIUHVobGJC?=
 =?utf-8?B?eXpBS1Y0RWJTUU14QXgrdndmczVvVG94VWFyQit3K2lTNnhvUmJxbUxMdng4?=
 =?utf-8?B?VDhYWFhUMGs5ZVRQYWpERC9iOXh1WXVxa3M5SVUvaWZuSFhCdFJxWWd3RGV1?=
 =?utf-8?B?WWM3cmg4T0pDUWltd1h2Z3VuM3hMNkM1Z1BrWXh6bWFmV2N2TS9xdFMyQWEw?=
 =?utf-8?B?MDZ4T0NkT3dGbFVVRUxvN3RCb3JXeU05eTNJQ1pXS0tFSGxqeTRwaFA2aW5z?=
 =?utf-8?B?M0V4dCt0S1J3Wms4SjZ3U1c1ZXJ0dU51clRadjB0U21YMHdjL3JobmM3M1Js?=
 =?utf-8?B?eUNVRXFEdVFYTVc4YWxpZDZUUThvWXczRittUStOcC8zSm8vUm50cmt6ZzA2?=
 =?utf-8?B?ODdWSGZldHlxakkzNFJkYm1oaEIvdVFsVWZrNnVTVVpkbVc2K0MwV2RublRW?=
 =?utf-8?B?WDJOV1hEVmRGSU5tdW92WC9ZOWZYdWtxMzkyMk5XeHo5T0VPM0lTdkN2Ym1Y?=
 =?utf-8?B?cmppUThqUEs1RS9XbVNSNzZUaUs3N2JSRk45TlFGOGpEdFJqM3VvWS9wSEdS?=
 =?utf-8?B?YmJRTmI5K3dPR3Z5ckZBdGZSQ2kra1p3YloxVVB1cWZWdzhKeHQ4V2Y5UzFs?=
 =?utf-8?Q?aX3n/vJnOLa1HVdU=3D?=
X-Exchange-RoutingPolicyChecked:
	jrKmPv+XYsfsgiAKtCyJ6Mo/NEsCiRHjnMYMjovbmr91HMh2lbmWSnqOqHzdUQ1fmDrbnAXVJXy1OfiegkomZlCzq40xwm+o17qe0lWQuPNjCIdi3VZMFnXoxVLeosOR0loZN8PFkN+QZ/+syhVdoCUzAuZ0W2u7ISNjShHm5CqwXnIQF39hJIAui6sN4GGwJFPXVURiyGczqUOFoiMgIlmxJJB/KNO6kSe5NhVffAU9BSFSKDF3ik1xPAzbvUotEIPcIOye6jIigiayW/OxhFVF/9wt7vavLYwnr6vNFUnKci4lXfFOd7q1TvwLhSsPqETaJQNe3uRD6hML3mSv1g==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	tHzodPko9tC9Deq1PI16p02SKQJG/khu11M5aItrBSpAMD7Dp2xIa7Xtk3SHEuKL0ZQn8yrXRELmXMfrq4YJDGh5ZMGtJ56F0LPvfgM4ouljbb2J8xGMfrusDECtFljJ6InwMlWBj8Q6AxDAnCdpXaFzJd+9qjJ8+qZXnrpea4XdAgXyE59RTGaVc3mc2UhgA1oTuYeNO/sBf91gFVOh+3SG+TXvkajfeyOGQI2tXNbqN8aSrh4DTS0VyjzSEtEE2k2iFw58FOm33iiW0OsUdY7faPCqDlQHV0WgChPAGD4R3V5J2tEv20ncfmleIUN9vK4R0L/M9L27561w5XrCwa0I77BZqybpexmUFElUXxmnBbLSjiqpVzh3LMQ4J0jacu/kW1Krp2+3mlq+OlZrtDZuwGav2zEr3Y2QqFa8kvddDDpwCI41KsaEIfeJPt6oSxcN2vusFIMCuqVPh/l0Sy6o1kDYrYi11AgsA2BDB/Ug7roVrjCiVlJK8+xBNm8WYvhI7ALmFt4DQV1rJ6P56muUZvW9/bgILtrN7Z93oEl43SLhKa0MSrnosT3/7bcFqqefI4AC7OzKpauOj0Hhm8m0uXxQhLqHfNvp9U/AHj4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33e64669-8531-4d3f-057e-08dea4c7e20d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 01:45:53.2569
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pSG6ajqSkn5jt9oVdSGe0fXaap2lvMpo7skHx3iKTelUZItZXXulNjVekG9rjFrnM7KNjJQ4bf3ciiSl9JPKuNeF2a4KTMNaTKq49CjUOi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB7517
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2604200000 definitions=main-2604280015
X-Authority-Analysis: v=2.4 cv=U7uiy+ru c=1 sm=1 tr=0 ts=69f0116d b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=7pq4jYPgbE4TOap68s4A:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:13844
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDAxNSBTYWx0ZWRfX/9lT3kOJsmQJ
 1beANQ4Ef9XEoAghnjarPWDlPKoN+9NU9FC+jaZmSadzb7+OX3utp3OnqNgT0THkEIjsFBzu997
 xdT/qDG0dbz2s7fA2EqW5lB3nxU4e/zpmGw8mbYcjGJbFY0WSmzz9pd/Wvr379DJYXVFfxpgzW/
 tuyAnKRVUEiPS+lHLnJTJqBTus9A+aweVsntdvqPiPElUKxpaef68JhDqUYfj5twQRPFLv9NMN+
 VAQLXBgJg3/jJ7wS85hGHustIqQZFelaCGnUzG+Y2SyOkZzcqpdw9NNUaDCd6AZfGGXcfy69AaX
 eOBiiz2/tQ8OUsvHBF6+bNFJQS4Jnk2+ZatDMetzTSad+KEhg4aGiAEIUeaGNmOW54HZv5FczIN
 U+TKLdQ/WATIyLLvLfjYu9v43FUcKtFPHf0CcaHzqiXcUiOEPsWPsEQYdVLndQkltbkYy/bc9/g
 LqoPKjE2i5UThBkN3m50NXf1wqV6YtYUU6ccXURo=
X-Proofpoint-GUID: bYpB0X9CcoLY9AQGhwdor8cN9lubgKt-
X-Proofpoint-ORIG-GUID: bYpB0X9CcoLY9AQGhwdor8cN9lubgKt-
Subject: [oss-security][CVE-2026-3087] shutil.unpack_archive() doesn't check
 for Windows absolute paths in ZIPs




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-3087] shutil.unpack_archive() doesn't 
check for Windows absolute paths in ZIPs
Date: 	Mon, 27 Apr 2026 20:48:33 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

If `shutil.unpack_archive()` is given a ZIP archive with an absolute Windows 
path containing a drive (`C:\\...`) then the archive will be extracted outside 
the target directory which is different than other operating systems. Only 
Windows is affected by this vulnerability.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-3087
* https://github.com/python/cpython/pull/146591

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
