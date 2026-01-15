Received: (qmail 30489 invoked by uid 550); 15 Jan 2026 21:02:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30409 invoked from network); 15 Jan 2026 21:02:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=gPBaY1ay9/UjjVRb
	e6Se5LZwTOR5VGpdKdL4soVUGF8=; b=lpTk0nAQJbw9cMqgeYMP+mbDz0VV76UL
	qM9RxuFjXvaSBmOp18QxsP0RCgTS1HtGExV47r18eWypy/yic5omzmYY4iJc56bh
	lpKyelCZGB48qGP8ljzHtGzCmPgpE4C0ACVU9vPTfMO/ERiscQDWpGZCpDjLJxZ5
	2+DYz0lLOi8bkqSDpq7doM7J6pD9owF5bPQJoZxsnfnr53ytx4YPKoC2hnlDBXb5
	XbC43yqWMkv6SCFVCn3ky0XTRAuFE1/IDrK3Rg0fyrRDJyu2JhSxSdn4HV8cCRtq
	9fXP4U6dLdjHIPvgNgAuVM47b/pmLAlrz5SJkaQzK7ABBpwQY3hSiw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B1vtzNNs0knhqUe8GfwxfsukR/t7Btp4c8gNT4U8i9oYemOwkJPNhhKzSl6glXvHLTJlWgAmmEQMvym7OullYFejeHAVEOU+ORMkqna4uGiwy9GNPazFYRnN9MMGiKPzsSvFGTvKHTz5Q2MoMr1ZUDY2DhIFToMrpCmKPICH0LtnKKDaT2584sYqEeu6m0+Dp8x24eiV4uRGgwL4OvJg0ouIcZzfII5LlicXiD1Jx3PlkkdWr/M3s5gaWox3rYMH2EqVapBAE18fzvJy0TtjlOEMA3pr69VweJaIXXzYHwi0l57tn4KvEftX2J0QrovnQ2ooAVm3pu3s529YQNjLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gPBaY1ay9/UjjVRbe6Se5LZwTOR5VGpdKdL4soVUGF8=;
 b=pqyGKARm0D5KxEKj/aAPPMHeILIrZ9NjcMzbJ75rXWj7QHRKgc3xeoIP/miaRoEJnxAEqrtXRb5fjKPf4Lsy4ONFLrO6r2rK8MkBR1RgZf5HGxjDtuRCcLt5TXSr9J4u9iMrebK7mivl9vAkm/CHHYh3ctvupSA7w0aCR/JcPY0SEdNlyv3WI3DNAvvJUrrJU2jhq24ETtFKeAuElWnwK+raF9DG6jHMe/sWSxM03PLkf/bufaKGQkqCVqgefsREaxpfVuTuQYJjnn/6Petef4qkG3ODwWht6kzfT7Bio+hkBJlBrrkO1XiXaCUo4Cf8OSAWzTt7Nke1fQ8Zs/o/lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gPBaY1ay9/UjjVRbe6Se5LZwTOR5VGpdKdL4soVUGF8=;
 b=QtI7yZFHZAhbBRffFQbWP518sKGQWGlL2ho/pqfCTrrU0//muspJVWOTALWZa/RuvA+czs1ubty4w8q3UvB95W/c/hsQWLuSLV5195UsiIOqbckAoqLA5jEczOPsULC/o0eLjkkTz85dMP3bGtI00ibY6YetzQnD1ureJYjL3/g=
Message-ID: <01e3014e-85d8-484c-b755-bd8eb6ddd10d@oracle.com>
Date: Thu, 15 Jan 2026 13:02:14 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P223CA0016.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:510:2db::35) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|PH0PR10MB5644:EE_
X-MS-Office365-Filtering-Correlation-Id: f747c51b-4843-4418-abb6-08de54795d0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TzRjZlMySTVuVUViakJpUFB0V3hrRDdsUEFhMndsWDQxMWZkeS8vK2NOYnI4?=
 =?utf-8?B?ZHRxbXgvTlAxdnFTSUFFTHhEdHpYeVZaQVp2d0pzTGtpMlMxc2NuYXk1NmpD?=
 =?utf-8?B?NlRteFVlQVQxUXJqazhTNGpvS2t4NTY2TWliMjZwZVVuZ2lTS0pGVmlFRUc1?=
 =?utf-8?B?TUQzbTIvT0FOY1BET2oxYW1QTkZ2N28xSHRVWThIYy9IREs5OEZEUjlxZU9o?=
 =?utf-8?B?UGk3ckI5SThIeUNQQUY3cnZaU3FpbHJ1OEhZSjVpUlFQdW8vNnFSWUUyQ1F1?=
 =?utf-8?B?RUhQWkc5TlM0YnlyOUJCUitvMUtZQzgzTlRGWnZUVktkdFM1N2FkeWtSM3Bk?=
 =?utf-8?B?bHFoUS9iS0ZWaWZqdldVZlFoeDNjc3ZoKzdZd2VBQWM4Sm9Xa1FsdVVKb3Z1?=
 =?utf-8?B?WUVESVFybmpjR1lYVSs4bVdpbi9QVkp2REdxbm5ieVc1ZDdjM0ZndkNXZWdP?=
 =?utf-8?B?MGRpRVI2QU8ybXZoSXRWNy9BbVRVdGVBTThpU0w5a2FTNkNxQ0k4QmVOL0lH?=
 =?utf-8?B?QTdlbzBGZkZqRmp5ajdqSFZ3T0xjK2VTQitkcU5BNnNQc2pxUldJZVRmWVBi?=
 =?utf-8?B?SFkzUllJTlBoTnozbDR6SGRMSis3VTBnc2hvWjRvdUNvVW53NU44REVyNWhG?=
 =?utf-8?B?NEJFdzZWYUVmOHQxTStNd3AxT1VFK2YwcHNFeXFiWlcvUE9xNUVpRkMvdFZN?=
 =?utf-8?B?cS9pQ3dweS91MllkaVVtNXh1cXVWV1B5Q2JXbW1ZVDJRTTlLMDRINUtjTmE3?=
 =?utf-8?B?REJZM1lPaHdCbktMR0hqYjAwa3ZZOEJFZW5yQ3J1a3BURFd0VGkvNTZucWpB?=
 =?utf-8?B?ZHZ1WTV0ZmdFcmlKWkdmNWJMWWRjQllMNFozNzAzUFpmcmtxSnBuWVo5czJ2?=
 =?utf-8?B?OHJvN3Z1dUF5TitHMmFDZ3plbHQ0aEZ5QS9TK2lRbjBjUm5LdHF2YlZvWTR4?=
 =?utf-8?B?cXdQWGwxU1ppd2ppZlVzbGxxWGd6bWdHODFaNzZnMnJXakF3QjlhNnlITWFu?=
 =?utf-8?B?R1ZvQVRjbFB0ZkdOU25FelgzSnNmMjRaWHlOQUE1YllTN05idFVoWGRQSW5w?=
 =?utf-8?B?bGVwOUFWNHlocVUrOEdkejNrd3pIeFlJcmJ6dHBSWkYyK1Z1NTUrV2J4Ti9X?=
 =?utf-8?B?TUlrQzBlSzNoUFFjblh4ZnBObTRvUlIxM1l0U3B5RmN2RlA4K2IvZ2Q4MnIx?=
 =?utf-8?B?d1E1dlpycWYxbDBCSXdXT1VjSHRVNk8yZzBOTndraXJ5ejJLa1diSmJWVVNx?=
 =?utf-8?B?c1d3NnNmNXZXalV4R1M3L2FUQTRFYnp4SEE2S1FoQWhoa2FQNW85UVRHYnBZ?=
 =?utf-8?B?V0ZiTGNXZ0YyNHpUU0tyaXZxNFdDdWdRTzRKQ2o4V2ZTVk52K0RIdCtkMU5K?=
 =?utf-8?B?RUI0STdnN1Ezclk2Vnl3czZKMFp1SFVEYVJVK3JmUHliY1RxUlNtWVVkYyt1?=
 =?utf-8?B?c1B2TDA5d1VrcDNPREFwSjV6cGV6bm1zN2RlSGtydStEb2ZYZVJ4TlZnSmZN?=
 =?utf-8?B?SkJpNHMrNTZBdC9MQ1liak5RSDZaayswU2NBaDliSjZnKzF3cDZHYys4WXlr?=
 =?utf-8?B?ci92QThwb1RQRHUvL3JPWlo0cm9wVlY0SU5CdmxRWDhMNWdDTUlyUlJHSGNw?=
 =?utf-8?B?NXVydTBxVmQxdkdQSlBaUE1aeGlxOGV2YzJrTzU4R3lXSTdLQTBtT1BPanZX?=
 =?utf-8?B?cTdmUU1PeDdsWVRkczZqdWNqZGRZYXNPMEhzVEdhNEJCN09kOG9VVnczenpy?=
 =?utf-8?B?SHNJOTRNZ082UWl2Qmx3Y1FMNE10NTBNTGZMaTFkVGhJdmhLcU9MaUV3N3hy?=
 =?utf-8?B?V2EvYi9Ea0U5WlhBL3h2OWQvQWZzL2wxdU1NOWJ0OUVGYTd5Z1RURGlkcnNR?=
 =?utf-8?B?VEZVOGU4ZFZab1IrUVhKSVBQM2FMSFJXemFuTXY4Tk1NUDl1N1ZRTVJLZWxy?=
 =?utf-8?B?WCtPbEdCemd6KytqY011cmdMdFZELzdPR1hkZml5SkdkNjl6WG5rRFhnR2Z6?=
 =?utf-8?B?ZDF0UU8wNGhIWmdxVlNmd05OQjZUbllObXk4OXZjeEhTM09JOXFEeXp2Nk80?=
 =?utf-8?Q?kpM1yo?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SUs4ZS9aRmRHM3IvUmRGdkVFaWVyUFl0elN0Vk5ROElPbUVBZnhiY1BmQ25s?=
 =?utf-8?B?UjFDczFQdzlMLzd3enZRQTduendKc2twdjhuTHRhTytjQ21GUFg2a0NJZXVh?=
 =?utf-8?B?aS90OEIrenJ3UzE5enVzci96OVpWNGpIN2cyY0FXNE1IbVoxak9ON3hKdk5M?=
 =?utf-8?B?SmVzKzZ5L1lONEhhVitUbFp6QndNV0NFTXpHa3BHOFZnNkdXdEQ1RVhRTGNV?=
 =?utf-8?B?ZUtRc1I5d2k4UGdycUllai9hRk55eUsrN21MTjhPVFRzb0VKcXpDTllMdXRP?=
 =?utf-8?B?SW1tdzg3VEFJcExhZTZZY0U5ZjN3T2Flcm4vRXpTNUtlSUxHVm0wdENBNGh1?=
 =?utf-8?B?VHl3RGQ3THR4OEZOdFl6MGVKN3NtSXJBWG81KytaZjE1cndvMHlHWVVwMXJ2?=
 =?utf-8?B?RldSek9GVkNUeGJuRExvSTIwMERnZXFtSnNTTWZ5aUkvTjc4VjNjMys0ZUpW?=
 =?utf-8?B?Sk5lZHhVdk5waUdob0x4K0NBNmRkZFRnYk40b1JtcUFpMkpQTkl1ZUZhMzdN?=
 =?utf-8?B?MmtpSEI4SWlWUzRGdzdNZy9OTDNUYzhHTC9oMVRVOVF0c0FmZmVZL1o3OVhn?=
 =?utf-8?B?UWFKRHg5TG1yMGtZUGhiVXJwczN2NXhmcmlPOWRJUzBqNjVFSkFMSytScWNP?=
 =?utf-8?B?ZTBZbXB0VHIwdXV0UVNjMldHSTFVRVkyaTVTb0xmZGl2eURWT3pnWEl5TEtk?=
 =?utf-8?B?N0N0UFg1OHY4UVAvMWFTeGxqUmpjSXhKT0kyOXRHVmF3anYzdHJkRE5TcG4w?=
 =?utf-8?B?UEhFSHRJMzJkTysrUVJrbjlsN20wSDVoUzkxOFVzcXYwdG4zSldKYjJPOVp2?=
 =?utf-8?B?WmlzVDdBWUZRU1ZhZ0Y1Z2c5b2dEd2EzWGdoTitOUkd3Uy9NY1RCb1g3czB3?=
 =?utf-8?B?aXBSWnBWMmJrYWNpS0kweFJFSHZUdVlCVHRTZnVLMnpSTUQ1aExqa0k2T1JF?=
 =?utf-8?B?M1VlanZTcHZwMDNVSDA4OXA2S1VZamZma0ZJcytSRjd3eHI1dm5pNGRZSm5U?=
 =?utf-8?B?U3FrZ3MwTlBiUER5MnRZclpJaFB1SG13REx5YXl1azhMMy8va2FEbXZSRXIx?=
 =?utf-8?B?K0tIWjg2OWh5cm1LUzFnN1ZmMzRGYmVDUS9ZSEpGVkdSVGIxSmptdE1IZE80?=
 =?utf-8?B?T3hRRXJpN2VQYW10OFBUVVdma1l1QVRWZ3BoZFYxSG9xYVZRMnZCUU5TVHp3?=
 =?utf-8?B?QWFtTW15T1UzejNMQUd1Rm9ZdlptSDZyd2VEQm9GRERocitrUnFpYk5nMFB1?=
 =?utf-8?B?bkVzZ3p6aVdNWjMycjRHSEFFUEJnWTVvaEFiTFdtQXdNZTR1UzU2RjdjZkxB?=
 =?utf-8?B?eDI2VlpXWlUwb0Y5MzZBUnFLZFY1eVBhODV2TXhiMkJqMVRTYVU0RFJRUHVG?=
 =?utf-8?B?WUZtQXBydTRNaXFSN3VqTS9jcHNWRk1jdG0vNDdFcUliL3doZ1plaVVMTWJ0?=
 =?utf-8?B?eHB2TTdUazhmYlh5dDBOclE3elBHR0t5UnNuSUdMR2VRazIwNVhSVG42bG5K?=
 =?utf-8?B?RUxrVU1qQStRMmU1SXVqZzlocms1R21yc3JrRHl3S2x6YUJFd2tZT2d5dGJF?=
 =?utf-8?B?WVpNSzVrbDdHOWlzQnk4dzRySC9McWtmV1ljbTFGZ01nSWJIUG01UEVNWExZ?=
 =?utf-8?B?YmZueDF1NlRMczFNVHlpUW9mdVJGZS9qN1FiUW00akhOenI3WWc2OFEybys0?=
 =?utf-8?B?a1RrZDBXMEx0YjcxTDlzWWQrNzQ5elNFeDJMbVZKd0M2ZnhETWFJaE9UeS84?=
 =?utf-8?B?b1pyY0RHNWcvOGU5MUF1L0hkZU5OZ1JBQkJWZ3BWTUJ0NnYwNkd2bERoaUx3?=
 =?utf-8?B?MzJLMmhHa0tjYVM3S0cwOHFnWHFjdWZLTXhOV3dBRFJ5TlBsYkVFb2t4NEd6?=
 =?utf-8?B?RGpMOC9hbGNFaW1pT25KSy81NjNRWFpmcFNXN2ZHcUh3YzQyeUZwYTlnZEpL?=
 =?utf-8?B?bHdsanNUR1RrYVR2Q1RMdTYvYjJNQm9nY1dENXRkcXEzWU55Q3YxcU8xY3hZ?=
 =?utf-8?B?U0xzWVBaM2tSL2xZckVkbkxrRlhBUUZnbThWSkJiVnBSTitTN0ZvcjNlcXlX?=
 =?utf-8?B?dTdob21wNm1TcXRkSm5xZkc4YW9RMWxJZDIvU2NDUDJaQnA2VlZ1dGdaVHVK?=
 =?utf-8?B?aWdvSnVRTTBRUDRCbGRIa2VKdytBSU5zWjFCRW9rUi9JclY2QnYrL1IzSzZs?=
 =?utf-8?B?K3ZxcHFEb1dSRzJLamxtaUZaSGEzbkg1bG5GT09WaFJIT0FGd21FRElnVTJQ?=
 =?utf-8?B?U1cvdExQbUZzUUtTZkYxb0ZlVzkyOWs0M1FwNmd3cmxIR1VhcmhOZFo5N2xy?=
 =?utf-8?B?d3M1VFJnN2VFb0N1V1NGeWxkSHRXU2JDaGtadFdCK3dwdWZtcTlaNzdUeUtn?=
 =?utf-8?Q?dn2rvN+hIo8u2JOU=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	bcFHp9fxFJ+7BuAmnfTw7wBgGFdJ0vx26sEfgmlna4p68CJi+NmymDqloMMJMC2iRgn+ZqrTceCksI1eDnP7/HeL1eOLiQMsQ/hKH2s+lpeNDlCJ0Gzc94BiSUdhn2aiYqHiQD014YtZEcsRV1s4UXA8/Ej/tl1mNcOwL4iJH4U27WlPZ61jhVs2fRDjKVlMyMzq526pjqhrM7JH5D+Hzubz9HZ8q/gvDTirKM9ZlrFV2VXWy4QrJ0aIWTrn1/eX3e7RqutrT30czA/iGW/OS4jXyUvmpsi6LjDdPLr5jmWMazrgWRUevPyavOrcOho6fbFpAZ/WAR3N2GRfAPa9rnKM2Hgao6XlkkhdBeXcRLaM3doruQYJBJ5/5bAxp3RtXoRUi6l2merA4yxBk7BDxmoadappuFW7bNLW0RlvQA56KxeMmREQKHnOHarZeu5r91qiykyElUl4KRB6TAF161GMtp1UZMDI5ag9DpWL3Gn3lMorG2z5M4sjoiV3ffmo6AJxJkQzhoT93VJ5HgKs3lcetA/uhRZH3arWSspEaAllPHiM+8R/04++2FmQReHM8JX/BL9ELp/Wu/xTyeTBD6Uu9TPNeylfDD+sNDhFaHU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f747c51b-4843-4418-abb6-08de54795d0e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 21:02:16.5466
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wWz9QVtwXGzYePaKvnsuMTlrJ5fEhgHyTZ5QC/AgobrEWbOAg1EBA09mTH7xKUfmEbrciDgGs4Xr1OPEp6sH5wwG3WoyS0Z37uwlS4wnbjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5644
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_06,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2601150164
X-Proofpoint-ORIG-GUID: i8eeRgsQVsR_nlXgEERzvvqDIehK0nGk
X-Authority-Analysis: v=2.4 cv=YKOSCBGx c=1 sm=1 tr=0 ts=696955df b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=1XWaLZrsAAAA:8 a=plf8rDjJAAAA:8 a=W0HYcSKoAAAA:8 a=NEAV23lmAAAA:8
 a=4I5dsC9U4DXdXi7t0WAA:9 a=QEXdDO2ut3YA:10 a=JWTSs7K9Rhv-lrTctFka:22
 a=ppclIlqPgZou8qzj2Vqa:22 cc=ntf awl=host:13654
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE2NSBTYWx0ZWRfX1byJ0iU/F09I
 v7Jt813qE9gsDEM4hfbyAFXnx4FswTtohkxywVryvdd+AHcv2aQ8t/rZnbLyS9holrylxzKomPJ
 TjFiZpHvrCyyplL3+CPALRV2IN9/3rTfcK9Wm36kQi3QQInMmqUP6HJ5m3CpCAwagKDMmj5YMAB
 Ux67ScNmQ+HptL1f4Hj9E7IReMvOwCsIVnBMGivPdK/0X4AlyDnxrfHOnlN6sYelPsaqxo/Xx40
 RptRc+271SanrUPE8Nz5Rzx3UIKHsx2lSde4of4RJmlQJ6MFVs9wLF+2usuBxXbqW62zW/TuKKy
 Gg7dR6uYIvvbn6HY1KfZLXlS7NZVOyCj2xtCvjWek3YDFv83vg8Axg9l2sWEz/P4mZiFnHfj/ka
 CeN8aJQ/BxEYk+dSH1a/HoLdKUZuVDsNNO9MOhHC22PAEDX1wUMIRGqapvc7YA3g8WS/OhOI7+R
 mnyiSKZcObL/RD8Ssk0eLtjdSFKLjVdFGeX5cZqc=
X-Proofpoint-GUID: i8eeRgsQVsR_nlXgEERzvvqDIehK0nGk
Subject: [oss-security] Go 1.25.6 and Go 1.24.12 are released with 6 CVE fixes

https://groups.google.com/g/golang-announce/c/Vd2tYVM8eUc announces:
> Hello gophers,
> 
> We have just released Go versions 1.25.6 and 1.24.12, minor point releases.
> 
> These releases include 6 security fixes following the security policy:
> 
>   - archive/zip: denial of service when parsing arbitrary ZIP archives
> 
>     archive/zip used a super-linear file name indexing algorithm that is invoked
>     the first time a file in an archive is opened. This can lead to a denial of
>     service when consuming a maliciously constructed ZIP archive.
> 
>     Thanks to Thanks to Jakub Ciolek for reporting this issue.
> 
>     This is CVE-2025-61728 and Go issue https://go.dev/issue/77102.
> 
>   - net/http: memory exhaustion in Request.ParseForm
> 
>     When parsing a URL-encoded form net/http may allocate an unexpected amount of
>     memory when provided a large number of key-value pairs. This can result in a
>     denial of service due to memory exhaustion.
> 
>     Thanks to jub0bs for reporting this issue.
> 
>     This is CVE-2025-61726 and Go issue https://go.dev/issue/77101.
> 
>   - crypto/tls: Config.Clone copies automatically generated session ticket keys,
>     session resumption does not account for the expiration of full certificate
>     chain
> 
>     The Config.Clone methods allows cloning a Config which has already been
>     passed to a TLS function, allowing it to be mutated and reused.
> 
>     If Config.SessionTicketKey has not been set, and Config.SetSessionTicketKeys
>     has not been called, crypto/tls will generate random session ticket keys and
>     automatically rotate them. Config.Clone would copy these automatically
>     generated keys into the returned Config, meaning that the two Configs would
>     share session ticket keys, allowing sessions created using one Config could
>     be used to resume sessions with the other Config. This can allow clients to
>     resume sessions even though the Config may be configured such that they
>     should not be able to do so.
> 
>     Config.Clone no longer copies the automatically generated session ticket
>     keys.
>     Config.Clone still copies keys which are explicitly provided, either by
>     setting Config.SessionTicketKey or by calling Config.SetSessionTicketKeys.
> 
>     This issue was discoverd by the Go Security team while investigating another
>     issue reported by Coia Prant (github.com/rbqvq).
> 
>     Additionally, on the server side only the expiration of the leaf certificate,
>     if one was provided during the initial handshake, was checked when
>     considering if a session could be resumed. This allowed sessions to be
>     resumed if an intermediate or root certificate in the chain had expired.
> 
>     Session resumption now takes into account of the full chain when determining
>     if the session can be resumed.
> 
>     Thanks to Coia Prant (github.com/rbqvq) for reporting this issue.
> 
>     This is CVE-2025-68121 and Go issue https://go.dev/issue/77113.
> 
>   - cmd/go: bypass of flag sanitization can lead to arbitrary code execution
> 
>     Usage of 'CgoPkgConfig' allowed execution of the pkg-config
>     binary with flags that are not explicitly safe-listed.
> 
>     To prevent this behavior, compiler flags resulting from usage
>     of 'CgoPkgConfig' are sanitized prior to invoking pkg-config.
> 
>     Thank you to RyotaK (https://ryotak.net) of GMO Flatt Security Inc.
>     for reporting this issue.
> 
>     This is CVE-2025-61731 and go.dev/issue/77100.
> 
>   - cmd/go: unexpected code execution when invoking toolchain
> 
>     The Go toolchain supports multiple VCS which are used retrieving modules and
>     embedding build information into binaries.
> 
>     On systems with Mercurial installed (hg) downloading modules (e.g. via go get
>     or go mod download) from non-standard sources (e.g. custom domains) can cause
>     unexpected code execution due to how external VCS commands are constructed.
> 
>     On systems with Git installed, downloading and building modules with
>     malicious version strings could allow an attacker to write to arbitrary
>     files on the system the user has access to. This can only be triggered by
>     explicitly providing the malicious version strings to the toolchain, and
>     does not affect usage of @latest or bare module paths.
> 
>     The toolchain now uses safer VCS options to prevent misinterpretation of
>     untrusted inputs. In addition, the toolchain now disallows module version
>     strings prefixed with a "-" or "/" character.
> 
>     Thanks to splitline (@splitline) from DEVCORE Research Team for reporting
>     this issue.
> 
>     This is CVE-2025-68119 and Go issue https://go.dev/issue/77099.
> 
>   - crypto/tls: handshake messages may be processed at the incorrect encryption
>     level
> 
>     During the TLS 1.3 handshake if multiple messages are sent in records that
>     span encryption level boundaries (for instance the Client Hello and Encrypted
>     Extensions messages), the subsequent messages may be processed before the
>     encryption level changes. This can cause some minor information disclosure
>     if a network-local attacker can inject messages during the handshake.
> 
>     Thanks to Coia Prant (github.com/rbqvq) for reporting this issue.
> 
>     This is CVE-2025-61730 and Go issue https://go.dev/issue/76443
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.25.6
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.25.6 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> The Go team


