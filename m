Received: (qmail 32251 invoked by uid 550); 4 Jun 2025 16:19:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18083 invoked from network); 4 Jun 2025 07:53:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=CU+Ohwr6Ziu9j2IseLBeywmmndSs7uyWYAxSH6FKO4c=; b=
	UAWHRXxqCdlG5pLmvHlysBZ6Q6MvbsWqJpoMlMLDEVKvoIELihUG/bEk0Tf24SCD
	/B6DEtMkInegrFbQ3pFrr39IutyJeYjS1w+zT5L9WGoIgrwcfBQ2/y8+XwrqlOos
	rnkQ5NeVNAy/eezkpJeqnFFVnWSI0Mkhb+OReIu0hxKCpq/uqRf7Djl0tcCsn+84
	L2QSZATg0bnUg/WljUK2oQgQBp0rvVOz4WPN68t8sGABs1pYYMl1XQkrtCBgU+7T
	F11VJgumTyvRCU0F1KaCGGkS3l3zqe4OTkqSZr8OBoetryRGNPZzEoUG8B5/VS0F
	I6TA6b5V1EzaINoqqThquA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hxnUUPYNkb3UpG55EfoDCrKX7CCwXOot2b/V4lsoW/j/O/hwq5fS2fL/8CCEum0r7Iz4uW7RWkv6f4ycfsdO+zAMkQB1mhX/4cT8Y5hRtuOf6szEfuEIhqMVu5P7ofdKrQivt92wsMVdIZTYdGWIdJAB3tMRHY6pvHicFbzy9fEFRUg+owAJNmXG6lV9EB5OdTkt/HB7BGCGNuaysBy5NNlONO3bGJfVLSbai5MPtjK97OFl4oaYnrRYLjVTMaOLqcJ7+x6gsz0IWi5nR7AShwuNGtSFTBCUGZ6c0oi5l2PebrC7avF4aS86kPR1aKjk0E1Vey7KPgzBG0fl+mir1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CU+Ohwr6Ziu9j2IseLBeywmmndSs7uyWYAxSH6FKO4c=;
 b=OFdXIPfN2cm5uLpmnXOelgHnLLV11R1udzPxnEKg/UpQoGpaMjBhTq9+WK2+JVZq25mRI9N2UCQLQieRxEl4Hbi3Ky273DEB4080Ug6WdStivplw9SzuVH8aJnXpPBN9aZQQjpJLEiRq5euYG6eNtSsZPQvHYsyNL3k92eufAYn06XzlUdE9kQNVfa69ahGM6698jGUyP2uq7o1cKsOAR0+dj+hCMdRwUHDioSKv5AmPF5k7UhEQawgQ+rB1rXatM99SgkyVO+3XlNn5O3aNkwzP4Fg91ommj3kh8TCjaNT089F5vp+sJZsZ5kshXqJ1dwttvoShXvuMMKLjlXmOHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CU+Ohwr6Ziu9j2IseLBeywmmndSs7uyWYAxSH6FKO4c=;
 b=Hv+J0bHiKSpJ8odOkhLK4F1MDykgO/X/d+wFlmESMPxO14sLFxPUbXvfh+DpYzPgZ4gKdSEEqZ4TpZTCezfcWqfqkiKRhJpM5P+zMzVH2vFUddyFy8D7uOusRB03McRi2+sFqb7s3ttLQk2FvIT0nI9p8BhdpmW+O/9pfTWs1fY=
Message-ID: <bc24aa82-f5b7-4036-8000-53153dfbcd99@oracle.com>
Date: Wed, 4 Jun 2025 09:52:43 +0200
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain>
 <20250603040528.GA12667@openwall.com>
Content-Language: en-US
From: David Fernandez Gonzalez <david.fernandez.gonzalez@oracle.com>
Autocrypt: addr=david.fernandez.gonzalez@oracle.com; keydata=
 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 ppyR
Cc: oss-security@lists.openwall.com, Qualys Security Advisory <qsa@qualys.com>
In-Reply-To: <20250603040528.GA12667@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS4P189CA0006.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d7::10) To PH7PR10MB6282.namprd10.prod.outlook.com
 (2603:10b6:510:1a8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR10MB6282:EE_|BLAPR10MB4819:EE_
X-MS-Office365-Filtering-Correlation-Id: c80677a7-1ec9-4be8-1469-08dda33ccb9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aWZpRWpLWlpaQ0t4bUMwcjFISnZJc1hxZUl0eGFqcVZtY2w2YnlDNHZuQmNn?=
 =?utf-8?B?Z2ljZjR2cGlEMFg3NGNlRjhxTHJ0TzN3eklIZVFOVGJCc1ZITEx0THA3WE1S?=
 =?utf-8?B?QkU4K0IrM21neTc0aXpDbUhlTkhGblNjUTdnaW1VWU04N2FCRzZXTmhmVlEx?=
 =?utf-8?B?azhDWEZ5aG90Vm00UmR0WnozMTRCdTZXR05oOFcwSXRGOXpubTBZS0VybEV0?=
 =?utf-8?B?M1krSzJlTFZncmRvc1VGY3dqREprTEsxNWxGWVRxT2hkWjQxNEFsZ01hNWhL?=
 =?utf-8?B?ZWRybzNFWlBSYm9tZ2VkZ2kxT1ROMkpDL21IRzdnNSt6OXZXZUQvUWhMNm9i?=
 =?utf-8?B?bEZrdHRiMlhGZ3F6SGU4UFFCbUNWTE1ORzluK1d6cGdlbVVzQ2x5NmxhVEgx?=
 =?utf-8?B?eXlHaUxveTI3dk53aHN5aHF0eXZSNHJkQzlCTi93bXgzUEYrTDhJV2FEV2Rw?=
 =?utf-8?B?REhFeFgyYjEyUTNOVnNrS3ZVM0xEQzZxMUgxNnhUK2pTd2p3RWZFTG5Jd1FX?=
 =?utf-8?B?Zm1zdGx0ZmhQUDQ2ZUZkb0ErMnYyR2hmVVVtK1cwQVhkZ0cvL0tuOG1DMEVi?=
 =?utf-8?B?VU4xeDR5UWtndUFkWU9oS0VwS3Q4b2ZoczRMVGx0WkJrRjAvS1J2WXpTVitZ?=
 =?utf-8?B?WTF3SWVOUElmTmdDOXg2OGxEYWhhNDg2K3Z4U3VycEtIbTluNG5vWFdQS1R3?=
 =?utf-8?B?NHArelMwaVE4djFKdUVGbm5vQTZldU5tZzF6TGdIU1pxQlArRVZNTjdJajdO?=
 =?utf-8?B?RVFXWWUvbjRCMkNhaStsS3pMWHF6T2NoODV4S3hXM0dzbnZRRjJGYklaUFB3?=
 =?utf-8?B?Q3pVQ3dIR0dIYXJTRG40QWpsbnYxdGJYWnR0NXBDMmRGTUJscVRiNHpyb0x2?=
 =?utf-8?B?Ui93c3I2Z0pHSUM5NnVnQld5T3BGVUtlWlRIVmtySWgzRDJMejJrOXhCUVUy?=
 =?utf-8?B?YXYzdjFHYjNiQVhUWWpYamVMRnRLR0tRdG9VYktwM2k0RmdMT3ZNQk9vcjAx?=
 =?utf-8?B?M09aZExickk2VUtqNWdycEZnK1pLeCtrVFlZYVpSSjlpSUNqWWdUbnRoU2Jy?=
 =?utf-8?B?NjRFa2xuaStjODFzdVBCZUs5V1BlamlnQzVEdHNVcnhqckNqQlhZbmlvT1NX?=
 =?utf-8?B?eHhGTkFkbE5rcnJ4SWFCU01sbFhFdW4rbzFLbHpFOHNyVDZYa0tQMjR1dVNr?=
 =?utf-8?B?S1hIeVBKd1h5WWNvM3ViNE9JVTFyVTFmQ3h2c0gvdXljc3E4NDZmUFpXZU9k?=
 =?utf-8?B?eFZDTWZqL0pSeS9VNlprOXlKQ3lLYldKamIxampyTEsvRVZySDRHYmJ3emIr?=
 =?utf-8?B?cW5GQ2Vpbk83dHdVVWxFRDFJSFBKeGRZSENxRmFaRGxTendFVFJLeWdDUHQy?=
 =?utf-8?B?OFZ4RXZheG4zUTRScVZVS2lJQzZ0SXVucUFEQXB5djMxVmxvODlzYVdodlU3?=
 =?utf-8?B?V0VRd3NWUi9ybWJ4SUt2dGU3NE15NHErYWtsRGx4dldxeUJqLzlFVERmOEJ6?=
 =?utf-8?B?M2ZZOWJkUWwxdHBJZk5IeUV6c3JlcDFteGhnOTlIb2RoVnVhZXJOZFdVSEN1?=
 =?utf-8?B?NVdoUUIvY0lEZm5TUlNCTEhSNkVRSEp4MFJDZEhXWmpqZnRya0Uwd3RrWG1P?=
 =?utf-8?B?aUppQmdncXlxNmlWM3lna0dRdG1Yd0FCVU95bVNFTy9ZcE9KalZoZDRpcVFl?=
 =?utf-8?B?K1UvelZldmk0dG5oTWV0SzJ3ZWltSVFFMWxmVmdxZlZFTjJPSks2MlV0andy?=
 =?utf-8?B?TXljQjJYN3djb2h6NnI3QnJYcFRtNDcwVXFhNkN1c2YyT3dWazluSnpDTVBv?=
 =?utf-8?B?dG94ZkJ4eElQUEdnUlZqRlA5dmpIenZRVHg3NkRIdksvR0NveUdybjcyNGRM?=
 =?utf-8?B?czNmRkRkTmZ5cmFSak5USlpKdkgzSFJtTkwzTXJMSTJFNmxIcnpkNHRNNlFi?=
 =?utf-8?Q?oioSQJFBW8A=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR10MB6282.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?emYyRFl3MFlXSVBiNXVtRGdTbXQyd0hHazg2aFRwTjRkVVgzWlpnMlY2YUZ6?=
 =?utf-8?B?WklaWHNaeEJDYWpQSnpsUkhtRnk1cFJiRk01VGxaRC85WkFJQnQ2aTRpSmtB?=
 =?utf-8?B?ZDhMbExWeEQxTWJSWnlJcFhMTjBZc0wrU3g0U28zRHZwbktGYSt0Rjd4Yjl4?=
 =?utf-8?B?eUVUT0d5cjN4NVd4SGdNZWtUQmtOMlpoaGhoSU5uV2Q5VzErZnJqZGVlZ01X?=
 =?utf-8?B?UDRBeDdHWWpuMEVpZmd3eEFDc2MvT1dKc0p3MXZFZjZJZ0dBQTQrRTBoWTAx?=
 =?utf-8?B?Z2RXKzUyT0J2MnBNMW9pVkxJbnJpK1hhZUllaVRlYVBDVlA0MHk3bjhwRjdk?=
 =?utf-8?B?UnZUQzVVRGdDcnRlZjlsOFpleXJwTWRRR3E3cy9mSjBnVHdQK0lHYS8zRmJN?=
 =?utf-8?B?cmRlZDhINDFqOWh1TGlVNU1PN1BmQWhXS0VXS24ycTRPL0daVU1zRzVQcnIw?=
 =?utf-8?B?YnhQd1phNW90aGN3WEhXZnNPVThwWCs1NW4xVHQ5SDVzMWpHZllqY2pNVkZu?=
 =?utf-8?B?bmYvVXdDdXhDWCtQSERVVjc4MGVjL2dWYjRNTEVDa3hTMkdsdkQzWEtQSWdK?=
 =?utf-8?B?a0R4TXBpbjlVTy9EZXVnaVp2MEszMWZnc05FVmFweHpjZDM3ekxZMzd4bmxW?=
 =?utf-8?B?U0JueWJ3RkJzYWgrZFpzenJ6M3BKT0hjVmlKTVFLR0Q3SGo3NkZnZUN2OXlz?=
 =?utf-8?B?YVFsTlhxTzJSU1lIUGtFck9JcmRsN1JZWFpVWkRaVHJLdG9kRFM0MStoM0ZU?=
 =?utf-8?B?NlM2ZXBFNVM0TzZCdjczcFFEaW5uZmpoWktHdTNuUHVjbzdCVzN4aTRHSTZO?=
 =?utf-8?B?RGpXelFmK0RBczBzbFN3V3pmWXlFNFFPQzJvdUhQRTdENW9nNkdMV3FDbzEv?=
 =?utf-8?B?QUc3VHlYd0VnTjIvZjdUSEJMUS9jcDROdHl6SGpjQit3STduWWg5NURlbitJ?=
 =?utf-8?B?dWJNTHhFUVhmd2llNjh2aUdZSHc5MEJpUHdoZ3FKYVZKQm5palZjUWhPaWt0?=
 =?utf-8?B?VUh4MktYT0RMdzg1QWpxWGpwSG1UNkVZKzlmMGZuTVBoaHVNLzAxOTdWc050?=
 =?utf-8?B?Q0lmWS8vWDluV2lvZkljTnZWRXdhMnpOUUNMQ0Q5SzREYTUwOTd1NkIwdzRG?=
 =?utf-8?B?cnNUL1h2Sjl5YVpNa1MvelhiQ3BKT0dONTJkQzhYR25BcG9LRHdnZlhEV1p2?=
 =?utf-8?B?RlVQOHNxSWpkblozQVk1c2tvWnorY214QlZDTHAwVHl1T2o2UERScHZRcW9t?=
 =?utf-8?B?YU9oaEtweGFxVVBsSFVHSSt3U01ObC9CWndycHNIT2xuK0h0WkVYNC9MbUh0?=
 =?utf-8?B?SW4wNVFGTk96aEpYeDI1Wm9xWmt1c1NFeWxWT29nUmJMUzQrd05lYmh2TFhX?=
 =?utf-8?B?OEVacVptb1czOU1weTlBOGhHblNvREZlNEZGek9xNlB0SWJHdm1xZ3hhdEQr?=
 =?utf-8?B?UjRudWtqWjBLS2N6b2lxdlhXZzl4c2xvNVIyY2t2Ym1hY09oaStkenlhM25M?=
 =?utf-8?B?cFA1WXdSdHVhV1JxbHUzS3p6aTdKMzExV1E4NTczZS84ai9yMGpNS3p0a1o2?=
 =?utf-8?B?VWErRmRjTUhYZWlkSE16eFdsN3lBRU9DYjhZSVZVY1lYRUdtOTdkRW9pZW9I?=
 =?utf-8?B?YTR1a0NZRnhabytQS21Md3Z5K1lzWi9vUDNCM0J2Unh3YzRwMkd2NzNTdm51?=
 =?utf-8?B?WUVSMmwrR0RRVkp4WHd2MDR3aTRKS2hneWo5bEJKdUROUnNwUWtDQllwOVJv?=
 =?utf-8?B?UjJTcUd6MXFOQy9nL2lmT2tpVWVudVhkWGtQOFlVU29TcWhHaHJLRFhIekpt?=
 =?utf-8?B?eUVHZmxMN2UvVVFlVHV3ZnZSOXFhY05sS1NNWEdrM01WTitsTzJ6WERLSXdq?=
 =?utf-8?B?WE9GOGd3REVaSFBFbFBPYTF3c3JkVmJ4UDZVaTgzTnl3STZzem9mRG9FR252?=
 =?utf-8?B?UTM4TTFGZlZXc1NwQUpQV0tFcmZxU2prZmd5eUFVNWM4R2VrTVlQcUpUOUtn?=
 =?utf-8?B?ZWtvS2VxR0RiZFRZMXA5MnN2M3dwd1NJWE83SHZnbkg5Zk1UdmxDZm1VdHZV?=
 =?utf-8?B?d0E4d0JtOUpuc09UbkpQNkIxZ2hobU9nS1E3M0R5OTZBODVUWUd2NFRWMzRj?=
 =?utf-8?B?dE5GM0hYaVkzSzVRUS9yTEE0RXhsMXBnQkFxcTVNWU5VWjFmR0NycUhJYjFz?=
 =?utf-8?Q?AMlb6JcRsfBMuQweaKmHR3U=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	OuzARZMJI8BKzjNU38/nDkGHS6oGytYu3y3wG20hKtevXMysft2XYllsQjzaTJ4+OrfzI7VaYTWJJHGwb/9wbHk/mKCIcSXDEtSZ3T/Kqxd+LKnKl7erWeRkYvi9S+d24tRKYvDc5pqM3DkSS4uXGreX7/5LmB5sDThQFDjGA990Kv08aof7a0JniHKAl6fz7IyZTq2k95sav298h1apBtYRLNNaVJOKzE7mUptkADXYFCs4EuOBemjTIuFq6FQLrSTGNuvxJ/PeSuBtZCopzU6A8Y/NyM/GkR8OV8TcUXYI81e7myoL6vYLr7TvdN0Nam2rtp9rKUr5TFccDvlagOjAFFAAI1yQrJHaMHTIiVnb6viJacI5sLjCBEwkXkLr7OaRFNcCLKvPyx3LVT2SIgyZY6wjZUJzM1MR1qJpGppcIQfMtuZisTkS/P1xV7SkckfIsBYuWa61wVnTbJRSVEmRIU7ZUuOi0Z9AmjiFMrAksDWO9hl1THtV0iBh/EUYsONXdnhBA51o/tqZYDKNJ1C4mJTJyETKIuwaEs0Y6ZmHpNxa/Lo31MMnWHGe+zrhQsvPm4ynPrDGv26jnwd5AMzZi3iwc2Ur0OtuEaE87cU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c80677a7-1ec9-4be8-1469-08dda33ccb9d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR10MB6282.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2025 07:52:46.9237
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AZD23fvwMyheqPbJC9CzI8vjAJbDPvg3HvCKCya5lh60XuOfwyGI9ijVmBJC6zVorkLkK1aKzb6sskztY/SRjPXUCfD2/XjOSnnd1wa7vT5VN56IRhgN3xhWWtnhDsI5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4819
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2506040062
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2MiBTYWx0ZWRfXyEwFpw2WYmrb MSjtbrH02gXiCDqGoQDENqMNI9jdcbwIHiuvE2tMh3L6Du0Ufsh1X3XATwHPEC3rXyf9LbOcv2h 60vw64OVuq3wthYUJKVQep8rm175Ocrjrkk9FCfOViEhcrnincGIHI2A2pXrAKM7hkOnHLEuWa8
 ZWtp5eztYeTeoACWweP8KIk4na92EOmKuOi+YpmdXUx6b5WSqtodj8sPBlRU9XJoguJD5FnI+wU T+5gALC6+ZDtCcDCDoudF5vZsgzSizClcDbcxq971rWsP9kU52yXnkbKP9E0AO50Q85+TBqIan0 5g0SybWPB5XqbtJeIieCm/bLHhVKmJRBIVrZDVt+lktw28ZyTwFSmMi62CZ+VNMepFvksymmpIi
 8mzuPGUaIw4iDKBkY3gjAueM91uN+v/8edWVu/Y5ejO0D6Ug00yxnKvvRRXxY+UO5BtlNqDd
X-Proofpoint-GUID: xu1FvkwCzFIojXTqt5sdHSB3q6-rfNEU
X-Proofpoint-ORIG-GUID: xu1FvkwCzFIojXTqt5sdHSB3q6-rfNEU
X-Authority-Analysis: v=2.4 cv=H+Dbw/Yi c=1 sm=1 tr=0 ts=683ffb60 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=GoEa3M9JfhUA:10 a=XkRKQH6RAAAA:8 a=-sufdkxomFAylKn34DMA:9 a=QEXdDO2ut3YA:10 a=1gUyE30hU_ULiMxJiLUW:22 cc=ntf awl=host:13207
Subject: Re: [oss-security] Local information disclosure in apport and
 systemd-coredump

Hi,

> Hi,
> 
> Great findings by Qualys, as usual!
> 
> Below are some comments on my attempt at reproducing the issue against
> Rocky Linux 9.5's systemd-coredump (systemd-252-46.el9_5.3.x86_64):
> 
> On Thu, May 29, 2025 at 05:17:08PM +0000, Qualys Security Advisory wrote:
>> Local information disclosure in systemd-coredump (CVE-2025-4598)
>> ========================================================================
>>
>> ------------------------------------------------------------------------
>> Background
>> ------------------------------------------------------------------------
>>
>> While working on Ubuntu's apport, we remembered that various other
>> distributions (Red Hat Enterprise Linux 9 and Fedora for example) use
>> systemd-coredump as a core-dump handler in /proc/sys/kernel/core_pattern
>> (instead of apport). We began to wonder: how does systemd-coredump solve
>> the kill-and-replace race condition that we exploited against apport?
>>
>> Similarly to apport, systemd-coredump writes all core files into a
>> hard-coded directory, /var/lib/systemd/coredump/. Before December 2022,
>> systemd-coredump allowed users to read all of their core files (through
>> file ACLs), including the core files of SUID or SGID programs, which of
>> course allowed local attackers to read the contents of /etc/shadow by
>> simply crashing su for example; this vulnerability was CVE-2022-4415,
>> discovered and published by Matthias Gerstner:
>>
>>    https://www.openwall.com/lists/oss-security/2022/12/21/3
> 
> FWIW, when run on Fedora 34, my reproducer trying to trigger the new bug
> instead triggers the above older bug - file ACLs are in fact set to
> enable the non-root user to read a coredump from a SUID program.
> 
>> This old vulnerability was patched by introducing a new function,
>> grant_user_access(), which decides whether a user should be allowed to
>> read a core file or not, by analyzing the /proc/pid/auxv of the crashed
>> process: if its AT_UID and AT_EUID match, and if its AT_GID and AT_EGID
>> match, and if its AT_SECURE flag is 0, then read access is allowed;
>> otherwise (if the crashed process is SUID or SGID), read access is
>> denied (only root can read the core file).
>>
>> ------------------------------------------------------------------------
>> Analysis
>> ------------------------------------------------------------------------
>>
>> Unfortunately, we soon realized that systemd-coredump does not provide
>> any protection at all against the kill-and-replace race condition that
>> we exploited in apport. In other words, an attacker can simply crash a
>> SUID process such as unix_chkpwd, SIGKILL and replace it with a non-SUID
>> process (before its /proc/pid/auxv is analyzed by systemd-coredump), and
>> therefore gain read access to the core file of the crashed SUID process,
>> and hence to the contents of /etc/shadow.
>>
>> On the one hand, exploiting systemd-coredump is easier than exploiting
>> apport, because we do not need to replace the crashed SUID process with
>> a namespaced process: we can replace it with any non-SUID process, whose
>> AT_UID and AT_EUID match, whose AT_GID and AT_EGID match, and whose
>> AT_SECURE flag is 0.
>>
>> On the other hand, winning the kill-and-replace race condition against
>> systemd-coredump is harder: unlike apport, systemd-coredump is written
>> in C, and its initialization takes little time. To widen the window of
>> the race condition, we pass an argv[0] of 128K '\177' characters to the
>> SUID process: this slows down the analysis of its /proc/pid/cmdline (by
>> systemd-coredump, before the analysis of its /proc/pid/auxv) and gives
>> us enough time to replace the crashed SUID process with a non-SUID
>> process.
>>
>> ------------------------------------------------------------------------
>> Proof of concept
>> ------------------------------------------------------------------------
>>
>> $ grep PRETTY_NAME= /etc/os-release
>> PRETTY_NAME="Fedora Linux 41 (Server Edition)"
>>
>> $ id
>> uid=1001(evey) gid=1001(evey) groups=1001(evey) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>
>> $ while true; do
>>      pid="$(printf 'whatever\0' | ./CVE-2025-4598 /usr/sbin/unix_chkpwd "$USER" nullok)";
>>      pidwait -f /usr/lib/systemd/systemd-coredump;
>>      if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep '\$[0-9A-Za-z]\+\$[0-9A-Za-z./]'; then
>>          break;
>>      fi;
>> done
>>
>> ...
>> pid 364536
>> tid 364521
>> tid 364540
>> died in main: 177
>> theadmin:$y$j9T$APKdqQO.brzhEbC2JFd.5zb7$Rz2q.0umBr8AmkwlozWr8/yphm/ckEHIOMo9vcj.Wj/::0:99999:7:::
>> evey:$y$j9T$QUW3HEErO9CYuGrRhiQjt.$.befySFW/nA48280u/Hk1XrcA2yDZ6Z1s7iRf91nJuA:20188:0:99999:7:::
> 
> I've attached my attempt at partially reconstructing the Qualys' exploit
> (which I haven't seen) that the above script uses, as well as the script
> with some edits.
> 
> I think I implemented most of what Qualys described (of the parts
> relevant to systemd-coredump rather than only to apport), except that I
> simply use fork() rather than clone() (slower PID reuse) and I didn't
> implement usage of inotify (harder to win the race leading to password
> hashes in dump).  I've been testing this after:
> 
> sysctl kernel.pid_max=2000
> control unix_chkpwd public # Undo SIG/Security hardening
> 
> With the PID range reduced from the default of 4M down to 2K, PID reuse
> is quick even with simple fork().  I am getting frequent unix_chkpwd
> coredumps (without password hashes in them, which is as expected without
> inotify), but none of them are getting ACLs set for read by the user
> (unexpected - I thought I'd win this easier race once in a while), e.g.:

The POC looks good to me overall but the issue is that the replacement 
is not really happening while the dump is being generated.

Since the signal from the SUID process is not handled when it exits, it 
will remain defunct for too long. Either SIG_IGN or waitpid for the 
signal right after SIGKILL. Then you need to spawn the extra processes 
to replace the PID "fast enough". fork is too slow for this I think, you 
may need to use clone as Qualys mentioned, for me it always works with 
clone. After that, it should work!

> Target pid 1588, current pid 1589 - missed target, retrying
> Target pid 1590, current pid 1591 - missed target, retrying
> Replaced pid 1592
> getfacl: Removing leading '/' from absolute path names
> # file: var/lib/systemd/coredump/core.unix_chkpwd.1000.17099079ebb84acbbb2dc4d8dd38e858.1592.1748566368000000.zst
> # owner: root
> # group: root
> user::rw-
> group::r--
> other::---
> 
> I'd appreciate any hints here.
> 
> Meanwhile, Red Hat confirms RHEL 9 and 10 are affected, and curiously
> lists not only systemd, but also NetworkManager and rpm-ostree among
> affected packages - I wonder why?
> 
> Alexander

I hope it helps!
David

