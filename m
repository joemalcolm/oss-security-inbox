Received: (qmail 7479 invoked by uid 550); 2 May 2026 01:28:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7388 invoked from network); 2 May 2026 01:28:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=Ye/oUt4lsPe1vZlA
	wBJYG0d0mg8JBFAH/5J4jzbIZDE=; b=pXWwtku++aM74iHkPxH/Cp2HSsRn8DBQ
	XKnCXg38DyYt+uch+ANj6RkzPOp+Cc8LojavJlEFKXGYWpKRtUyy/096E/ujCRrA
	XCr0MZ9mZ7cJNapySDFrMshlzf6xk8PAtIcX7hoMnji8DIf+fm3P6LmyKa0YMhP1
	gW0apdhOo60HiH8gUnroE0X5ARXFWIS2ih4i0R/X+lfSGXHddbcGNh14ys/I8u1P
	sQeAQ2NnpHj+khYCc9X1ti1CrvbFys4nSOLFRkSe2ODu4tsuv/4glWWc6K8tSDZu
	ugRM7iGI9ORzHXtW76PG9hy6uCIhnD4CUDEuHOJrWPqSc0P8gJbBKg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bsb8gH+RW3patLhEU072uwmyRqtW9ZkuGR0EdM5xnVIAbZH9mOc5QXwmCHJlNvWNhEllX3lWOesNevuwZ3s9oNsfwWmjuSF5m44z7o/rHpqPjpTLLafWZSI3EuUXDXE/3briVyFwBkQ6PyQKdoCwIw6XJCJAu2Ea/9M0OAatOMPGikfAdKlWYjvHTaWpgdk/K5UM0gT61BUjsOPgvk4JIv2IeCca+tX/GCOU03R1HKA0yWjoj5RbMj/roBKGdTHgH13eIIwQUikMyKxnOWSkM84SXzddvaC0bj8QiKpmt6olkhgR4faVY2C5fj+uVcQP2xFPA7zntHdaUULglomy+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ye/oUt4lsPe1vZlAwBJYG0d0mg8JBFAH/5J4jzbIZDE=;
 b=OH3UtCoS88/eTydiCYZVUMaULTzuAgj62x3ttsUPmJK9d5loTAEVgwY3HRQM0TN4u2M1RhiCf47iBivWLZwCRwj6UppxRoI25r3aE1qSYuuTIR2fNWWuhXt2GwOVANCWqDfuhD0P0V/ic+yZ9r6iZkYkUNzqE1AmxcfhN3LaxFsVGXycp0HQzN8G2LAXrHhQefw4Ga9NVU6Eb9j+M64aCEil/t31eZpXpIAMH5q6T2lQZwg513HJhtJM5MnvVaTaLkge0nqb8M2YpndOKsW6Cx5mHuAYXvLE8tJln0nmaVPI2J5iiRK2l6EtmR5UIaVSp/PzMVxOa9MJwEYD5SRtYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ye/oUt4lsPe1vZlAwBJYG0d0mg8JBFAH/5J4jzbIZDE=;
 b=HP5rbsXf6M5G2W0skGWHobqsrgPW9oCbCdxRKIE5IqSdg4+APrp6dxHlbtOzhrB/SqFVLDeE0kV6LCbUfnNszVuqYTRraRZnjymWVf6qMAh21hOQQnIdbmLHEIurpWYJwxzhbStOnKpr9SQulQmaGPp8Bn8cMcpmpjgXm2gC+ZQ=
Message-ID: <0a4343db-8de2-4d2e-b2b5-0c3913d795f3@oracle.com>
Date: Fri, 1 May 2026 18:27:43 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0012.namprd07.prod.outlook.com
 (2603:10b6:510:5::17) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB6959:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ba7ab74-19d3-4e69-75aa-08dea7ea0369
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	aZvWAxE9pCTiZlbfmxd657qnDyLWdp9mB3b0xkRcDVJqcesEPibKeMdhxU82aHm4egLluXNUJ0xTKszkbhPkgKR9nLX/7SVKb4lSuOHr3/4D9wz34d8BajIiyuPUx3SQdvFonEtdvsatH1HyLFwmIspSni55Qr7JR4ZOBn3OoSsAmAR2MMA1WD9By8YzO+b4ZM6REw3zjalw+fbH0b8VEdWRrwK4jpRfVkTCYvv5fXigc91u01G8CujzNhD631ZugJg1Sf+nw7tMqRtyL6qb1qiCNzwZv+ZQmIfWilHuIMSirYzdfsNHCKDFD09mGZVzPyRNi2WUnmVlnC1zDXa2CloeWx9DNOWaTZfaRVogYqXknqbbNS4bdvbD0i9gZvOxm5TWcvTzTuwRJUBXXCozp7vGmWDHFAmtpmKlwHFfhSuZKSZQPN9brbH1SsBnUBc65TI/qezfENl44lVTcANbyylW6d1MtQESXt1uu0z8wJUIuTNlEO7gAsbvAGknfAv0EtIYTXkjNBbUJCY8dcSbJLK0Zg6i/cQUvfeDjz6JIrDPxLhnTtqR46U4m63tqFUGZ+3FX2hrDcR9i4BTa/Tou8G+hRuRrCYTsIj6AOq/7Kq/+MTFAPhRjiKNoy6UHllsr5gix7XcIH8t5bjLDgJBNw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TjlTNUMzM2dEU0hRSWVaZkZlNEtUdlVFV3hYVlRLVnE5RWZLaW1VSHJKV3ky?=
 =?utf-8?B?RkJySE40cy81RWRRU2puY3QyQzJjQk9vaWlVUGZXeGNHNWdWUnhkSDN5TVVn?=
 =?utf-8?B?d0hha2E1dWFhT2JPMXpsejNnVjZTM1ZsMndLOC92WTI0Q0xaVmRLM0dsSkJz?=
 =?utf-8?B?dU5SSlZwRkh5NVpwSDNMbHVCWW9zanVnK29QS2dzUWNhdGZkcXUzV3VDSTBL?=
 =?utf-8?B?ZEhnWGxmZEhHckQ0QmJpSlNsN2lpcWNQUjJwODJrdU05a0xCT3lkT0kzVGpY?=
 =?utf-8?B?d0hmRitaaUEvSTl4cTF2QU1YSFI4eGZnWFF5SUJBSG1IRnhWdjhnbWxRVVk0?=
 =?utf-8?B?ZWJSSEY2QVVteUNVand2VzgzclNSbExFVy81UEM3YUJnMDM5c1k4aDY0QWUx?=
 =?utf-8?B?bGJ4ME5SM2FwRkJ5VWtFNFdmK0NtWVRneGNlZWpMeEFYSExiTWRJMjRMZE0v?=
 =?utf-8?B?cHYvVE9LLzh4SUFrMjFyZVdiNEk3NXBCMmhLaDRTcjNKWTRuVjdwcmVTWm5h?=
 =?utf-8?B?RVdaWkpwbFRpSTRWemx2V01hWVVXTGFFTFhYUEtMdVZzQnR6QnVHZDhrYUZy?=
 =?utf-8?B?MlNSNElXZ0tIc2JKR0p5VEh2aHpBekdDUFZYUUJhUHBZbmhRbHg3TUpWU0lD?=
 =?utf-8?B?bDA4eUFmT1NpRjl1VUFFdzNXMmtIU1kyUG1iaEwzUG02dWVRdVdyWFBzZndz?=
 =?utf-8?B?alVCbEw2MlNHNDFEVGl5c2x1eWkwTGZvbWdxdmxJUEFyT3grRHFRRXhOV0tS?=
 =?utf-8?B?aVVlVmpLSkxZNC8vZVhsMjBIb2pOOWlWR0ZENHhJNldFWTBvWS8rWldXdjFX?=
 =?utf-8?B?MXpUQnRaa2NGVEFET3EyelBWNmthTDdQZ1VZQ2RsQk1YZzNJTk9wSnFjVEpZ?=
 =?utf-8?B?WnVXd1loYm1KY2Fka0RkMG1LdDUwTUorbVZ2TzJVVUJFU0s0OStnYlpLbHFD?=
 =?utf-8?B?enF2bFFBd3U2aklUVDlRMFB6aVdKT3VkRll3bkxKM0xNS3N5U3h5U2pXajJM?=
 =?utf-8?B?cW1iQlNRRXJCa2NsbU0vdjlMaDJUak5Cc2EyOGFCMU9rb3Z6ZnFrMTEvbEpK?=
 =?utf-8?B?dllISXNmczU5RWZmWElVMVc4cENiL3FoZGZjbFFkdElNUXcxRittOER2b3hL?=
 =?utf-8?B?eWYwSmRKYytSMFdOdHowZmRuSHdQNTNhZnAyTE1kSk55YjhSUWJFQTZyUHR1?=
 =?utf-8?B?cmFuWE9UV2tqZlI0S3Q1L014QmMvVnlHd2pPUGNNMGRUcEVxUWZycnlmczlo?=
 =?utf-8?B?V0lmdUIyZ2dmcVVlNFFvMm40dTNxSzIzSUo0MWszMHBvTXVLNzA5NXcvbDBC?=
 =?utf-8?B?bmtVOVdONWJvTDlHanFHTjk4UkQxMjFIaUs1czcwNldkMWVlQndnVWczRWF1?=
 =?utf-8?B?WVVSMWY2bTQ4QndMU2RQTWUrR21WMkd0cjVHdGphZ2xrbEIxTEFHcjAvY0NT?=
 =?utf-8?B?OG1uS2tQbmY5bHRDOE9Uc2E2NFZBNDBBcWRBMkpLREhlSTRuaTZYUGxMMEQy?=
 =?utf-8?B?WFAxWFNQYURvNmR2R3RmUVdxakRpUEl5UWpoaGZyVHdpT0Z4SkhnM0NjQjln?=
 =?utf-8?B?a3RWbFNzQzlCbEcweUFoeDBNSzhYTWJJMnkxaEdvUmR4b3ZlRHVOZ1BpQkdL?=
 =?utf-8?B?T2Y3ZUhCYlA3ZzkzMnhLaUNmL0lhRzRSRy8yQU1oQ1VMd1I5azFFUFd1Unoz?=
 =?utf-8?B?NVlXWnFsYlV3QXo5anEwZk9CZ3c5em5lS01BbXJDenI4Yk94OEIvTU9vSGZQ?=
 =?utf-8?B?eHV5MmVRZitSbFI1OStpYm1sSVZsQzhpRlJIcmRpR3h5TWhXUkNTVTVIRkMy?=
 =?utf-8?B?bnlCakczbUFQdUN6amR0R0VRQWJCV0VnMzgyb2Y4R1dENFovM082T1hGOVVS?=
 =?utf-8?B?aFB1ajgzZDJrcDU5K1NkTlo5N2JYOGdkNFdobVgxY0pKdTE4MmlsYnJ6eHhk?=
 =?utf-8?B?UlZlbnZVU0F4QXFWMU1jQlI2QjcrdFl2NzAvR2V3OXJCYjNLWHpnUXpZbHRV?=
 =?utf-8?B?RGUrOTAyTHRpc29Obmo1MXcxeXRnOEJyMSs3aXhVV2RRQVkxVCtBNGFUSVNq?=
 =?utf-8?B?ZUVYY1BVZlZWb3ZvL1JKQ2FIWkpaT2pESGxRSXFKYkFod2loNUFzclpMditL?=
 =?utf-8?B?bVBPUG5XczUyYkVWM2xYRk1HU3QvUWdOTlhCYmhRbDllOXdsbEFQeUd6OXVW?=
 =?utf-8?B?dkpteXpaM044bUhVYVMybWlqVzVneU9OeGRRTVBJZWI2MEFiU2pWUGhtemFp?=
 =?utf-8?B?a25JaFBlS0xqVUUzcCttVVVlREVQSUtDVXdnYktrMExnTUFKaEp0K09VdE1I?=
 =?utf-8?B?UWJENHpMYVZpL1ZtdlhtdzBYczZJYkljSXF5aHAyYmhZamdwZ0thUCttQnBD?=
 =?utf-8?Q?E0M7G8IgxRNizKz4=3D?=
X-Exchange-RoutingPolicyChecked:
	tYK5EafdAq1vye/+I+waycaJXIbhphRfn1Cy3VYCmCo4SdKzc2og+DH6DDO4zX5oeIn/jZP1niqNFrDFxvE6v+ngn/5ixD3Z9Xa1MgipVeNqEyroz116dGngMMWWrb9iK4N4+V1LCm6teqJaU8RjMAuVhbo3xX3nr2TTQ+FllbReeWkS8Ud+Zo+9MxxYm59l0xY4jPI+ZJvKpNPqMVSsOHSCxdeRawdfrrYzUlMYFDTwbo8GqWLaJ9XXm1CZpQF3jVFJHckMAW0bj6Z9XudwC0cw4cP18tKDZdecP9QlYYjF+jX2V3tXaYgajabYnfOXKhQdM/KWwA2SbItyxzbkqw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	HsQLZE03iDsfWYom+QMbRLknaPpbKiVWKNaTQU7vs22S5fWkZsxLvss0GzD6v58raU3SCfI7gig4IlYSCDjJLFAcQLBH3BtFfw7tcjQvgqZtcS1/zMse5nk27l4wCgwFVZzDr6LHtOEpqjMiiALW+hIfxi3QzUCq0u1VJhFg4wnqSboiPEqrI8FDHRIZ8WK2LOT61hW0c0dLPEXlsJywXDM/w62j0niVEjkcoh6udAc9B461glRMEQPvzASO3ERK1qtDBxkQBOlocOF+JnvLo1yiiQi+KjDNmJ3Uwy0EWFEW8epdNuFqHEfI3Dg82bWxIgDkEYe3YrDjIe9z6lY2tzardUYDP2ZCyFDxg5+p2N6P+TNujDsDPpu1vX5azJZ+l46C+rkGfZimkOIkC2yyOlb948PkCg9eXSU29T4DkU7FWLJwLFh10M2tdVXbXMMndugdqgtp1rWwUXhnTiLUxfeS6+FjwrL7hV3s/kiPaIXzHY0AG0hG4CRfflTNB3HoK1i+CYCuoOj8yVF9Aadx7nDUVhgD/O3L1E3gD3m+jSwjCoQz+XkzeOl1d98SNr+d8SAHrYBbTBO1LtuGIf3Wcf7LE2ogc/U2sgeYeU6hvQI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba7ab74-19d3-4e69-75aa-08dea7ea0369
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2026 01:27:45.7166
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oinSk/E7fmEMlN3YFWvBqPNSXinEuTFO8m2VaO13ouAe4Wyeb47Kpe8s+eJ1qpSqS3lUxi3TqaAEZLadqIK6I29+M4Bfvvtx+0MqnQ+5yiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB6959
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-01_07,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 spamscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 malwarescore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604200000 definitions=main-2605020012
X-Authority-Analysis: v=2.4 cv=U7uiy+ru c=1 sm=1 tr=0 ts=69f5531a b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=EIcjfB9IiI4px24ztqRk:22 a=fxJcL_dCAAAA:8
 a=SGfAwDv7AAAA:20 a=NEAV23lmAAAA:8 a=L7yEV7rUAAAA:8 a=yPCof4ZbAAAA:8
 a=Oq-6hUSCUo7e7uxMMX0A:9 a=QEXdDO2ut3YA:10 a=DdsZnlKMikll9-nhgqgb:22
 a=bA3UWDv6hWIuX7UZL3qL:22 cc=ntf awl=host:12307
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTAyMDAxMSBTYWx0ZWRfX7KXOAv4KI+ax
 ckdtr1WpnSTWlkip9fxOV+OdVF7qvvYPgM4hwiEqxphffKRUczn6t3rGr4F2OT9XUWLqTKd/CUA
 f/IakrwpyiyFGLoQ2I5TRoU/sy45Xx16Y4YhU6NIQpuvhnNmCMHY2YpdwGE0BXcpxOSLX2wSnKe
 dki6J1hre/cOyTbdhX0th05qXMhHHuCbLcbykTonEVP4Dd3msvqBEC65CtYZj7l3xkAJ0FmnqjC
 UujIiRwA7injcZtTjDq+ZzgtwaaBTDG/ec/TOKFu39N+6TUiK4xX0kch/QY9MGqVDIjTRGRUUuz
 MlViFuAU3XnEzv/o54BsRifqa4qTBjmjGT3afULwDATz64USXWhbRlkwHvKAh+dYh7v18Luadgm
 HB+mBwyScBAhonsQF1H22OOo+imly3CF3N1DvV3wVDHdaKFKCoiwvJ0eKdvdxRZMkjl5XwZHP6G
 gyb7jkUn416hh/Uj/0zAEtp/8PegfMj45NQRgujU=
X-Proofpoint-GUID: MMqgPXJQJHJ9HanJLw3qrgQ72yCy-zZr
X-Proofpoint-ORIG-GUID: MMqgPXJQJHJ9HanJLw3qrgQ72yCy-zZr
Subject: [oss-security] Security audit of rust-coreutils

https://discourse.ubuntu.com/t/an-update-on-rust-coreutils/80773
announces the results of a security audit of the rust-coreutils
package by Zellic.  The Audit Report is published at:
https://github.com/Zellic/publications/blob/master/uutils%20coreutils%20-%20Zellic%20Audit%20Report.pdf

The summary of the Audit Report states:
 > During our assessment on the scoped uutils coreutils targets, we discovered
 > 73 findings.  Seven critical issues were found.  Eleven were of high impact,
 > 29 were of medium impact, and 26 were of low impact.

The Ubuntu summary notes that the above report covered the first round,
"the most security-sensitive tools in the coreutils suite", and that a
second round on the remaining utilities turned up 40 more issues, reported
in the form of pull requests to the upstream repo, listed on:
https://github.com/uutils/coreutils/pulls?q=is%3Apr+label%3Areported-canonical-2
It also says the bulk of the issues are fixed in the upstream 0.8.0 release,
and links to the many CVE ids issued for this work.

https://corrode.dev/blog/bugs-rust-wont-catch/ adds some further analysis
of the issues and suggestions for other rust projects to follow.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

