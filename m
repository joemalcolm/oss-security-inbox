Received: (qmail 27852 invoked by uid 550); 9 Jan 2026 20:15:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27828 invoked from network); 9 Jan 2026 20:15:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=mBTi1UgNBwJIKLsL
	iG+CClGvxKHes0bFO+kFVxv+3fo=; b=OvvE0xx9smNaU9hnfxyPzRi5APLgNNM0
	ajg72ZyOg0danvDmSG0jvu9jmbhO+2ueyX4DG3RoToO0mzcxcL1eCjOerqVN8PqM
	e06N+mFXQ2Zh8jds8CAN0YoxVkIzdpDVdsXnfxke52SILMeAA3l/Z55HmYklhFtf
	i+pFo9M0E1GC/A/S+iI+4XjH0LcJEt1+mymFSmKyVtjh2B9FLMitgOYEzd8YwONe
	NvwKxL30C0r9koeRcRU/OFymscf+jni+84qJwSEQmq55ieVOOk5s9bCTnLsZdZON
	7e8/Uxz8aSv2Jl3jNDKkYUIRGrpWG4uzbxTYSmfh8GOCoL4JJ6BE+w==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ugsarijNQWFbh9wdYUo12zEGrjckwfCXZo3rSjwvRXwqV0rNPCxBt76bHYyTBw7YX+w5TriH2M/PpyGTevll0IHD+fjIpdKtysKOii7ltAcw171AH1pFAYXNRCCEirdj0TZNvMUH3RwNEqGmlY2DoWzkJFcdOVAYjR4PpinHDvaoSgmVj89VedRtVr1kicKH/r12O6VWDZcNBjuFXG0O+NNWDaE3Zm3hgdgEywXcamwJCDQIGzfPOIEWq5mVK2q1xFv643oCs+wH5l0jhshs+ap5CGXa/FY6SfjcLtPYW7WzzsquoRr+5D+zHURMT3O5mc2SO4v4d0bVXYUKIykkvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mBTi1UgNBwJIKLsLiG+CClGvxKHes0bFO+kFVxv+3fo=;
 b=nNsWN45gLzfapfpnO1E06+XQtJ3aOQ56NW6BJVvsstMALC35ub8F6kMw6vqAcf4AFQ3Bm+Z1qbBq+XAlcnLcEX+kT2RtedGJZStcjK7cI5YU+oFs+5pb2dFdtwAYCTLt1g9dfOWWKLveWAAugP9xXHlon8qtFRrtodpjWZhsCdvYbGpenc0haD7xaxZ4lj+Zxazi46niK2BgoxFv0ehA02c9Um8DM/8l9BNBXvGwc3f0G51HPJSzSfTxhZAwJsyy1LYi5QdAz6k85p7Oj7VSdOaNST2FVBZat2y8l7GyhbWaO5IzLc9wvL3Pm18m1VALGCEdECy38qXQEn+EBmyLmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mBTi1UgNBwJIKLsLiG+CClGvxKHes0bFO+kFVxv+3fo=;
 b=AS1C+j756DD8Rwib9Rx5rrEJodxTGB37jxtvXPGObwzdEqWz5lMIY17LEBr/LH7M15rKgbmDZyIyxY/o3lv7sI+gU5o4u7hYbA+WhdNv0/Njjm0NKxYPGyVvsUY5/Z9RFGNObWwL0/D7YSHJlPka/6oFFoCoyr+t3WwqGu5WEIM=
Message-ID: <c72c9a6c-d415-4828-a307-dbfaa8a1bd1f@oracle.com>
Date: Fri, 9 Jan 2026 12:15:06 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0256.namprd13.prod.outlook.com
 (2603:10b6:208:2ba::21) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|PH0PR10MB5795:EE_
X-MS-Office365-Filtering-Correlation-Id: b76565bc-18a4-49df-d9bd-08de4fbbc90d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bjA3NUFaNVUvR1ZhOTFpNit2MXdyZXRUejdHaGdwWklKN0l6VDZGZ21vT1VM?=
 =?utf-8?B?c0NsL1haUHNuQzZWRDNISlpYek1KR1NzR3VBNkJuaEJsMFk0RXZLSGhxbjdG?=
 =?utf-8?B?dmlROGp3a2lXUWFJQ0czWVhSNktoTnEzTWlnMGVEMzcxYnRDSGt0clZSYUc5?=
 =?utf-8?B?M1RISHQrK1BmUS9HSms0MkhybEZReURaeVFSVnp5aUJZNWJUci9COTFHTXov?=
 =?utf-8?B?N0thN09zMHFuQzJVc1I2ZzZJZHdBaEdIUXluWlhxSjVTK1l1Rk1nM2FwSERQ?=
 =?utf-8?B?SGdwWm54YXdDb0xoMEcwL3hjR1ZlZkxWdFN6Z0VPeGdHWjZ0SGl5TGYxSHNi?=
 =?utf-8?B?Q3AyckFhTTRXYVNyUHp5QTUwRXhjSitRcDhMSnBia0lHNTlES2JYMm9FdjNK?=
 =?utf-8?B?UjlhTEVVMC8yczhSRXlaendJNFdEQk1ka1FqbUpDbTlFbTNQcUJydWNqTG15?=
 =?utf-8?B?TFN2ZDZJQWZwSTBLM3RVNUpvbGkzSkIrUUtvbW9OMFgvU09PTVZjSXF3a3RE?=
 =?utf-8?B?dUVZYUZjL2F0Z3JocmdhMkwrUDJWbDV5ZzlNVkIrMzllVVlhMU1qNGlPNUtD?=
 =?utf-8?B?alZ0MTJPemNCQUtoajlkZTVEZlZQVU9yYks5d2ovbHRFR2hXcUFDQTl0a3JI?=
 =?utf-8?B?OWVRdlRoRXdUd2JQeklDTkd1MWlHa0hsb3dYMm1PTTRySjNoU2hhRzk1UXJK?=
 =?utf-8?B?Z2ZzVVlqSFFBTjE1WEdsM201aGNwa0hBVzVnM1dHRXFtbDdIL1hwQ0ZwWkFu?=
 =?utf-8?B?VVE1MFpkTU5Gd1hvL0tRVmtxOG5jbXhGL3lqZFphdW5DOUx2dUdUMVBuMXgr?=
 =?utf-8?B?Z09VaW90c2ZubW03aklpbWVRTEtXNnpXOUtPWjNiSlBSUUVOODk3YVpRYUo0?=
 =?utf-8?B?UzlVNGFkTkpDTEpibWdmb2R1R1F2V0ZpSm1JOEUxa05sekpnYlYyQmhPV1VI?=
 =?utf-8?B?UlVIa3ZNaU0wSENwSTltV1pqNmVvTFBmd1MxQS9EbW5ERzd3Nk81WlFydGNE?=
 =?utf-8?B?WmxuRXZTd3U4OTJ6YzRxL2hpeDV5RmJQUnBlM2J1Mk9NY3pEck91OXZpRGkw?=
 =?utf-8?B?WXVOSjNEeGtYWjQvWHdBSVVOVnRJbUtLa3Q4RWoxQ2Y0UkJlZjREeFp3K1la?=
 =?utf-8?B?Z21aTGxURTVDVk1Ob09GWlV1SmkvclZFbUZPVkJoelZaT2VWKzU2OGlIa1Va?=
 =?utf-8?B?QnB3OEFwVnRGaXBRRFpiVi9LY3cyRTd6VHJMcHMrMVdjOFVjOVVQSDJQbkw2?=
 =?utf-8?B?Tk80d3poQUJKNDZwL3NxMzB2NUNsb1lTNGkrdjVNZzlOTi93KzduczNWTTlG?=
 =?utf-8?B?V0cvbUpTNEdRR1lxYzI4RUpWTHVsS2ZLMDFSbXlrODFFekx6OFg2SGo1SFd3?=
 =?utf-8?B?M2hYSXgzNDFHMHNXSTRIOFVZbjhDcGtROFQrRmRIRUhYZ3ltNm5vWHZpQm5O?=
 =?utf-8?B?aDNEcjlmMHFXdzF0TlRtaEJUVG5rbkpaMmdxTjRpZGo3d29zTTRTanZ6YmRF?=
 =?utf-8?B?SlRMRVNnNlIzbFQwbXgzalNaa21VM1pUbldRd0JPMXNNaFU3U0pwVWVSTFVs?=
 =?utf-8?B?RVBEZVdKVFpxcmFBWGpuMXBqdEJFQWVoSjNRN2gvalVTL3RkK2NJZks0bmtF?=
 =?utf-8?B?ZVVIdnl1YlVKMjZYM3JqV2xjYUpNNjI2Y0E5ZUpMNC8vSDFlUi9EVVJoUjlj?=
 =?utf-8?B?cC9TWnZlcmlGQWZlVkJ5ejBRUVRRZVRQUFhxOXhOYnVCcHNQbVkvRHJwbk5C?=
 =?utf-8?B?bUpNTW8rWjQxcEg1Q09HOGk0amNkNU9qVE8rY09CNHRtUnNPVkNsVFhySHVr?=
 =?utf-8?B?UUtCN1lTejM5MjhEOTZQNjJydmFUQXU3eTVsZCtlTWNZd0VrNC9xMkVUSmQz?=
 =?utf-8?B?ZGhMYXI5UlBocitSSmsrV2tDQWZkN0Y2NW1EVXNiV3Q2TXlJRTg5TVB2bXR5?=
 =?utf-8?B?dzBmNFlqbmswZzZsMWgvbWczQXkvd2gvNjgzUndwZmtWeWh6ZEs5U2hPYXpH?=
 =?utf-8?B?MCt4ckVxL3F3PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MjNQNjJZL1BMSWdrL3kxeGJub0wweE13ZjJRYVhnam1oV3hyV24zQjlJQURL?=
 =?utf-8?B?MVUySUpCWE9RTkcybHcvQU1xQmNoSGk3ZkJrb1gvSGMzRnVNNjNycWMrYVRE?=
 =?utf-8?B?bE1YWnRqZlBnZEY3YmV0UDE4TU9ucFh2dUFzU1l4ZzN6U2FybG5sd3Nta1No?=
 =?utf-8?B?K2RySjBFcS9KRnF0OXRkZmE5OWxaYlpnUm9iNk9aRGFISS9pNjRRSWpJdnRQ?=
 =?utf-8?B?NDFKWXZzaStTRjNCRTZ3VTFERHl4UnBFOEJ0YmpzYzR5blVmWlZIbk10dWN3?=
 =?utf-8?B?TW5nd0htSmpON0Z4L25LQ01wYUdKUDV1WENVUTZhNzQ5TEt3aU42MVoyTkkz?=
 =?utf-8?B?M2lYU0FHUDRCSUhta1dHZjRrSUxOY0F1OEM4ZG5ib29lalRVdHpHdWliZzRX?=
 =?utf-8?B?RFJQeEtLZG1rZUZ3WjVxS0tuZERSYi9QTkhwd2J5UGxBSWRhZnhNbjlHV1lr?=
 =?utf-8?B?R29FbDNRZ1FyM0FTRnJnY3BGTGc5ZGF1aUNqUnhYUjN0Vi9sU1dJQW1xYjhT?=
 =?utf-8?B?OW5xU1ZYUHkrdFBXbjZqMXpBTFhFTmhNQlRWR1d2OWRqSlpEam9ickwzdkho?=
 =?utf-8?B?dGhRRnc0RWRRbEFPZEhndzhTb3Z1b0pHaWZ3bE5ENldiWEJLM3hMRUg0WERF?=
 =?utf-8?B?ZWJ5bzRWV3FUWHVLa3RxWUxEc29WK0t3a3FpVjRpRHFHVWlwS2w4VFFqOS9N?=
 =?utf-8?B?VTJ3WkMrWGJKN2txNE4vbnREVWpCdWNrTWViN1J2QmM4MGk3SGVTUE40RUpz?=
 =?utf-8?B?akJGZ2lpVzNvMmRqTzVML2NvS1JScjJPVTVnT2g0Q25uTW9RYjUzcUY2NDNz?=
 =?utf-8?B?eUcrVytER0tYelJIKzNmMHpDaThwbkoyM0NnOFpBWVQrU21CWGk5OGFJRCsv?=
 =?utf-8?B?K2liV1EwNDlyMnNJSDRhRzhEL3U3Rnp1ZDJqREMyY2gzQndMaXphazZ4bWg5?=
 =?utf-8?B?NmR2bUMweGhiM2dWSFNod3pGZmRiSTlpbmtJaXhtcjlhdkJHVXkveFV1ZmpK?=
 =?utf-8?B?cjVtdE1ObCtLbW5tRWhhMGFrWUN4U2NzdlZtMXA3ZDJRemprQXBBTCtLQTVw?=
 =?utf-8?B?b0pldUh0YlI0MSs0VjdQdEE0dHB6d2tkeUp4bnpZQVcxZW1mWnVRbC82dkht?=
 =?utf-8?B?M2x4d2N4dlBsOGM0RHozM3BNMUhmWDQxbk1OaWpLVHV3TGN1cUZIcEF3dkNP?=
 =?utf-8?B?NDVvL3czdGl1ZDJGZkdYUDY0SFo1RkVSN3ZaQ0UwaGhkMVFjUURQTHBnY3ZR?=
 =?utf-8?B?SW1NUDIvMzF6dmpuWkU3cXJLZE1pWC8ycTZnN0c1Ky9sWlNha0lNYzhmSm1h?=
 =?utf-8?B?KzlLQWZJeXZ6MzZaVDdhT0tuL3E5N0N5eVR4RWZvUEZ3b3NyekhVVGkzbFMy?=
 =?utf-8?B?MUNJYmhQUGljWnQxNEF4Vjkxak1PWnBtVFpmZTJxREdzLytMcSt1ejUrc20z?=
 =?utf-8?B?eWY3YTFLcmJ6QWhuNTBsZ0lWSGdvbVVUd0IrRmM2MCtIUkNyWVFuVmdLc2ty?=
 =?utf-8?B?c3JIWjk0WHFQangwRmJJMGdaZGZPWVMvaHRCWVM0SGlGL1o5cUkwSUlnT2pW?=
 =?utf-8?B?eGhOemR2NXQ3aVB5UE9Zby9KY0d4T2dMSmpaeHBOTURkalNWUUlQbWdsM01i?=
 =?utf-8?B?UklQTWExbjhIWXl3TkxHM2lxUkdpM1JEemJMajNLQjBiaVlQNlhLWmgweGls?=
 =?utf-8?B?ZVY1TWJHR3NteEgwZ0Nwb29jdmtEYW9PZXgraGhpbzBKV2hoRkZ3Qk5iSnpH?=
 =?utf-8?B?cVhmMVAyT1RVcm9CMkN4NWY3WUN5YUtyTW80aEFGanVtQlBpRlpJelA5NFJq?=
 =?utf-8?B?dUxlR0VNckVpUk1oOUpXTWd1STRINzBNbDZmQnFaRC9OYXR4MFBFQW5Hc0VU?=
 =?utf-8?B?ZWZTTTIzWVNnVEt4U3Y0alJuMXFmREZHaGhZeEhWd3NyVUt4MEtmSE5Db0NJ?=
 =?utf-8?B?M2pzbU9JRStQU0Nvd0xldmVBUVRXN0h1Y0g1cjhYcHJZT2x2L1dKQngrd1V2?=
 =?utf-8?B?dTFtNGRLQkNnNlBJbW9wU3VydXRqNTU1T2g2R1FYa2QyQ2prYlJlbTQ3bGhu?=
 =?utf-8?B?aTZQMzNiT2dFME8rWldKa1VhaFhxUjdCVE9nSzF0ZVo2VDlmQkp5Y3RlY3Fk?=
 =?utf-8?B?QUdwTlg0by9XdU16K05TaFBtWXpKQUlPenByaFozajYzSXRHOGZTaHBUVUFj?=
 =?utf-8?B?RjBuSldhQ0RmYXFFajhWZ1RRa3Z2dUdyaVhvKyt0Z3ZDQ1piUkhmVERaQXp1?=
 =?utf-8?B?cmY2N1R6anFUTCttRjMxdzdjSUhaUFgremlxbDI3eFZEb0RINllKY0gyYWJM?=
 =?utf-8?B?ZWVwN0tBNlIvd1FzbkZrUTU3WE13NmVkcHYyRHJIWVlVK1AyQWFRVGJNVXNm?=
 =?utf-8?Q?9IZzkz9rNm9ABdQg=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	yk3sqbEBakxQz2FQF8Far/b7+/L+Sa6oVLjc0hKklGk25myZfi8Ce1003CHWWpflDllsbOSXsNMVFXYC+Z5G3EOU1AodBsedCDW6xLSEMPKoYt4DLrOANfc+I1sggeFiKcftbk638F83TvRM7vImmK7lNadgMDx3X65TJF9aaapNWe40DHTZxbt025sXy1mHop0krByMC1iiWRJ4ivIsETJOyP9q3P7e8+p0XV0oTEJ103SlbduRR8IJawgG5x1JNov2rxpIVcCAOXj5EwQXN4wo3bbHe58pb39fi4E3Hwp7GoNtfIH2UyyFUnxZmJ+WBFKmnHVzO9D0sPpFxCtk+5GViloio8A3qcdeiGxPYO+sDbI9WFrbDwMC9XiIIJx9E/hVXLZOtiYbFY+SayqhZ0jsun9Mks4TebIJtdeqU51S+09A+Zl6i8UJ1XGGEZriOA5r7+40ijSY/V8Y7ySqGUHCxdewIpvrslIvPDNkTD/q+z2EIwHtuGswK1vB/EMNqS6EcB9oJeC5R3kaK/Q3Ku9CBQVX1Dzdcy4hErOy678Rh0eVS4j29XgvvaJjqjRyH2FK+dJ3GBckWqX/rNoqd6d/fBA8H5yysQDv9tXktds=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b76565bc-18a4-49df-d9bd-08de4fbbc90d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2026 20:15:08.4458
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vq4rDMjzyuaS5acIA0+dOeGviwjeiP4jRGQgXshtX7Wjot5AjPdjE7cMuTIGA2eE2kFvE8WzZc20uqfiruknp+TiKd+9GSCbqloRJQA9Dd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5795
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_05,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 suspectscore=0
 mlxscore=0 spamscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2601090158
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDE1NyBTYWx0ZWRfXz0Y8jj+x2kp6
 5yPZIbAY0fvTGdiCteQQDzsI2Hn4HZs08pfJeK5cUUHbxeiiYfHI79MiS8UxyVgIdl5UuW3oULZ
 wS4vKH7wO5peiCZaWRyfWCfW3wH9HyW/80+Kfwo7STKKnD+JYy9yj1Z9CcdizF1Ymg3WLMcYScP
 8xSQi2L4m4EhkgPp1g01xw5wiMOaOWoPPyZLqAAn73SRwh6CLgq28RZPi/c9+AP7sMEGH0auRHe
 jynV/DwWtxFqyCZTOHQKO9O2RvSKzWSAP4i0pK80UHHBjzxDLlYI5YjFGlMhVHG4jil7l/qPAeb
 7aV95E6YkEVeY86c3bSHe5Aw+ay5c91yoDIT0poYOaRr4NFXyFfVnbBCSqf0Aw0Xc4xDk4JX8CF
 UL842+hTqEf/FbA5A8MMQ0Gacwk+1U9gbBMcvfGQHCsQarwSwT1zGsxMR5k9F5MciBVKuX8QFzr
 bk0Uf1tm+i5/nzw88rg==
X-Proofpoint-ORIG-GUID: sfmLRtAtmCOCMBT1BhAJBHgTLvQeu3VY
X-Authority-Analysis: v=2.4 cv=ALGFihDZ c=1 sm=1 tr=0 ts=696161cf cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=-XnFvwSUAAAA:8 a=dx7egPBT5NyDdkijhhwA:9 a=QEXdDO2ut3YA:10
 a=XpqeAGdvz94MVufhNwGW:22
X-Proofpoint-GUID: sfmLRtAtmCOCMBT1BhAJBHgTLvQeu3VY
Subject: [oss-security] Net-SNMP snmptrapd vulnerability [CVE-2025-68615]

https://github.com/net-snmp/net-snmp/security/advisories/GHSA-4389-rwqf-q9gq
advises:

> Net-SNMP snmptrapd vulnerability
> 
> hardaker published GHSA-4389-rwqf-q9gq Dec 22, 2025
> 
> Package: Net-SNMP
> Affected versions: All
> Patched versions: 5.9.5, 5.10.pre2
> 
> Description
> ===========
> 
> Impact
> -------
> A specially crafted packet to an net-snmp snmptrapd daemon can cause a
> buffer overflow and the daemon to crash.
> 
> Patches
> -------
> Users of Net-SNMP's snmptrapd should upgrade immediately to Net-SNMP 5.9.5 or
> 5.10.pre2.
> 
> Other workarounds
> -----------------
> 
> SNMP ports should never be open to public networks. There is no mitigation
> available other than ensuring ports to snmptrapd are appropriately firewalled
> or by upgrading to the most recent versions of the Net-SNMP software:
> 5.9.5 or 5.10.pre2.
> 
> CVE Identifier
> --------------
> This has been assigned a CVE identifier of CVE-2025-68615.
> 
> Credits
> -------
> This vulnerability was discovered by:
> buddurid working with Trend Micro Zero Day Initiative
> 
> Severity: Critical 9.8 / 10
> CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

https://www.zerodayinitiative.com/advisories/ZDI-25-1181/ further notes:

> This vulnerability allows remote attackers to execute arbitrary code
> on affected installations of Net-SNMP. Authentication is not required
> to exploit this vulnerability.
> 
> The specific flaw exists within the SnmpTrapd service, which listens
> on UDP port 162 by default. The issue results from the lack of proper
> validation of the length of user-supplied data prior to copying it to
> a fixed-length stack-based buffer. An attacker can leverage this
> vulnerability to execute code in the context of the service account.

