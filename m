Received: (qmail 19916 invoked by uid 550); 15 Jan 2026 23:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19846 invoked from network); 15 Jan 2026 23:15:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=sh5d/jpx+mRLP+8OrrP/0iKA3iRANgoOMYcxxIHofy8=; b=
	Ws/cq5VnIrNXmRtprqBN59Ys4UNvQN4NYqpafzthDQnYYHQNl4lY7PAT4+PewlN+
	dfs9PiFzpoiZEkLHMqRJQ/lQsdQNzdQ6nm6ZK7dcEQqiVpRgxZsVx/iSJpQTgF6c
	uL9/Kg0aO5+SL+Z33bgLXAS6IrYuUMJiTIaROZVo88E2F+463jrXwji5lsq7UMOe
	q0l1xYY71/lcrcb1Qy2qRvZ4WO4/PK6QRFLO7UPSVplDKmK+oMzvl10cgmDDhQTy
	vsZK+u2GoC3s7q/5JfKcxP3pMIH7FNpL/4aHL4nInXSHvtSjCDSOvmvxc1e7LyPd
	APf8B67KFgrKIVsAackB7Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n+8ForOkRHrJi0QE4YZmaiG/MhTHr9irYwAzfqwbqVZHaQDY/9sRFrtbiUQzrZUg6/QVmu2Iirt0zmCSTPnjgcoNaYQmpV7yn47VlzpPE81QEnfNoDMrqU51Byj7VOIr8hnhiap27COI94cvEqg9RncsZzIxuRWHv5MHsmWDZxt6Y2MZHjgUXP6oVM7Mbkl+lZO5T98lb9Q4kPDlL5Hpkqzc+Q1jqOrN6tVDHjw9ecIk330gFpLMV+Usn3MDRWARfL/w8IbawJ4zpfpYYVJobwEJy/hnNG8zn7YTh6l4e/NpmiUezwm+eV74kbXL2l+FN3p7/yTndOWYSdwc+2KLtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sh5d/jpx+mRLP+8OrrP/0iKA3iRANgoOMYcxxIHofy8=;
 b=PigmhKsx71lzSWuGl/dUe8CrzlQQ4IpYCubyDltfLriELitIaYbrQXejYRWcwAeG15+sznr5FtHC5a8SSH0XEveWsqKKmC4Z4KT9L41UaukrUA1R+4KJ/6diSWfNfd7K4X5fcaV8mA1wGyZNgr9Ra0YDJw+/JdBwTOQWse2oJpZaj3PhhRiRlAudJdQp8sXjSUyRu2l8vjVYo471goY2NXuA7bwEzXTDC99HT9uOAAH2brjRXdYsjMNFV9Hl8TLRpzREco/fgAhlp3z0KNxR9ucLruDZFpUem8S6aY4NIPbVthwqghmwj64JzjaGcHpOeFCOlEuC/yp4LSaL9wm/7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sh5d/jpx+mRLP+8OrrP/0iKA3iRANgoOMYcxxIHofy8=;
 b=dMqnXcqzmrp1cA5XvzMcXHqeZjfur1YiWXQVOn4EAX6Kf3/QsRs/PNe54aivCZamhOY9m8R0hjgwrBGZkCuCSYwTXKbIg/g9r7j83dhJ5kXD3vVKDYTTTFEJB9qBId1QbN6vbajc1p4IiTZK5Hc97wX+E53ez5tKt0HZbUAecFk=
Message-ID: <ef2d3568-0f9a-4758-a232-ed1f3a0918d4@oracle.com>
Date: Thu, 15 Jan 2026 15:14:55 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <CAFmK-GynffMVvTa4J9pJvYp_DP6x8=K9gKKUv6MoqBoND3Zt9Q@mail.gmail.com>
 <6f0b0b83-5698-4f87-975f-6b4885523850@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <6f0b0b83-5698-4f87-975f-6b4885523850@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL1P221CA0023.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::10) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|DM4PR10MB6109:EE_
X-MS-Office365-Filtering-Correlation-Id: 7fb61574-1001-4d80-5218-08de548be61a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TVl6NDQxa09DNUVuOGNSWXJXWW1iYkp0dFJQcEVTeXI3V2dUQW9pVjRndGh1?=
 =?utf-8?B?MU82TGVhcFN3ZWpoTG44RGkrZnFqZDJMK0lLRnRwQVY1YlM5WnVLMEV1YXpU?=
 =?utf-8?B?U1JPb3dseE5JTkhkdnFyckhwOVl2encwQUNhNXA3eUtuUVdyYktlTnFrcE9j?=
 =?utf-8?B?V3BqOUVLSTQ3NDFDZERWS3pVdHFLMlA0MHlzVTBzK0IzL1dGOUhobGdMR2o4?=
 =?utf-8?B?RmR2WnhzVkk3SmxmUmo5ams1cThrNVRYWFpjbVAvYVlTOHlaNy9VSWRSK1Rt?=
 =?utf-8?B?ZFAvODh0UVVybTcwVk1DT2lsdWVVZ0llT0FKclhwZWhLN0NxcHZSeTgveFZZ?=
 =?utf-8?B?OEQ0N085OTZXd2Iwcnl5WjVYcmp5K3NVVTdCVVhKQWFqdnI0WTRKZERiVlFo?=
 =?utf-8?B?dzJpYm0weHJQSk1uRmpSVCtkMEtMOWlrSEpRK2VMZU1sbXNxV2lIZ1YwTTh4?=
 =?utf-8?B?NjREb3RCQ1puSzBkQklVWjdMeE1Ta0ZTTmlpODlqUmZRY2w4NkNrOVoyMHR3?=
 =?utf-8?B?Sk11QWhRMUFuTzRiK2xBdERMNnI0T0pwU0pRemFOUllGemdmMUZJSTZNRXI4?=
 =?utf-8?B?Tm1COEM5YmFNU0lPQlJmZ1NRUzVtc3NKMzlnNFBGU2JUWnFDVzVab1FZUkQx?=
 =?utf-8?B?bkJ1QkFtN25ZMk9vT0FNR0dRZ2UyRTQrYThyUnhNVnVXZUFQejVHa1pIanFL?=
 =?utf-8?B?U2xpSEFFTWZOSWhxMTYvc041MUtQcGNVY3d1ei9yaEZ3S2tEOG1YRFZxQUxD?=
 =?utf-8?B?cWZtMUVIS1N6Q21JTmZYc2RIWkIzZHBYc0lvdHdPRWFPTzNESHJOMDZidElK?=
 =?utf-8?B?MDcrWUJQKytkbkNyNytEbDEzOEpNSG9kWE9qQjJwQ3hSSC9QUWV4WUJoWlg1?=
 =?utf-8?B?VmRvRkFYNGxoNmh0VzE1K1A4blE2OC9RMXA4OGxTYUhJZEpsV1ViZ0NlYUNW?=
 =?utf-8?B?Z2RzVEJQZHJpRWoxdXB5a3loY0lRQVJLYUxLRjQ1Y25Zc285RDBwWFIwbWJE?=
 =?utf-8?B?dXNJaHBubG5ZZGVJTC9KWUJRUGo0UDJlNHY3WWV1Sm04ZXFBQWpvOXk5bzAv?=
 =?utf-8?B?eHdoV2hkU1BaaTZLZ2l4RGZJWFIxWk5XL2RwZzhoOXAyT0RBcDI2cFJBU0Jt?=
 =?utf-8?B?cmllejM2bnBiTGViZUtjQUthclFBK1ZTWUtiN3RVUkk3Y09GNDNtR0ROdDRT?=
 =?utf-8?B?aWNyeXZjWmpmUFVJcExNYmlPdGhmRlYySUEyTlF6ZWxlODMrdGxEK1JiaWcz?=
 =?utf-8?B?Vk1xV3dodWtva3dzc2pseGdST2tPRHBoTENTV21saFB6bENhalVTZUtjTEtU?=
 =?utf-8?B?bnJuQVRjWm9ZTTM1eEpoSktqU25SM3V4RCs0OVlMYWU0M0R4MklQczR4bHhx?=
 =?utf-8?B?NiszVjhwMjR4WmY1cnhMbW1sdVB5d3ZIT2M1Ky9YcWhQek5namtCVmw2Mnp2?=
 =?utf-8?B?aTBVMStEYjdKU1ZUQVVOR1VoZjZIb1pSUWZKMWN4U0VOMG5IcFQ0SDdKcmRy?=
 =?utf-8?B?VEVLc2F5Vm5xYVFqQXE5UkRGQXp1WjBoaWYydmdBeTFESW0vNFdTZEZuSDBa?=
 =?utf-8?B?UlpPUkJXNVVETC8vTmFUdHFYZ2RhYmpXMTNiclhwcUhCWjNQQzRLcVF2cVF3?=
 =?utf-8?B?elVKUWluYmZGTXplS1hibkpXSVNhejZlTDNYTjV3anVBV1U0amg3YzJ6STlk?=
 =?utf-8?B?TExhdWJDMzBWUzYxaUdrY0k5WDRWSzlCWjZXY2lOWlhzWng0TnVZL1J1MlhN?=
 =?utf-8?B?RjltV3I0Wm5yL1pQWHVYdWJwWCtpc1pYV3FUWEdqOG94bVFnaUtGRkw5blhy?=
 =?utf-8?B?K1krZGpGVXdZUmZUc0luc1ppQlM0NVRMRGkyREJzWGRDM09OZUFwcnkzSFZr?=
 =?utf-8?B?WTFkN3VXN1VrSGJYREpJUy9ucU9uTG1CeFFuQ3ZKa0wxNnVRenROWGRrZFc2?=
 =?utf-8?B?b3NRY3pCRVdyY3BMSGluWlNhTStMK2tLeTRoR2dHMW5reFJjVE84aWNTVmtx?=
 =?utf-8?B?RDZ3d29Gc1FxWmovSkZlZG4yQVVqcUxQRmY4SFZnNEpRUDZ1S05ENnJjenBw?=
 =?utf-8?B?MkRvMFVUKzNOcko5NFpLZ2JpTm01VENrVXVJamhmNmhMYVQ0TzE3aGEwNE5x?=
 =?utf-8?Q?Yh1oTYfgZ9gb9RLeiMS+SYlMj?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UXdGVFQ3bnRGbjRhSEo4bm5ydXIyVE5FWmtiZ2d5MVRFUWZoQ1dJTjhJcVhx?=
 =?utf-8?B?VzNmUTJGR3BWRlRuYWRUNXBQTUNCbEdJZW5VSzdGdGJmN0pRQ2xpLzF4a3p5?=
 =?utf-8?B?ZHNnZ1F3VzU0V2YvaUJrZ1JMcEl1SllCYjd0ZTFxV0Z6MjBOWGF0dzB6bmdx?=
 =?utf-8?B?c2NmOWc2MDl6UUZvK1N0ME5TdUNVaStGYmtHbnB6UXdDTkdZSS95UWE4ODhu?=
 =?utf-8?B?aEVobWVMbGNPenVKNlUxZFFUMDFHeEZIT2ZlSVRWNit3U2h5WE5mUUx6N213?=
 =?utf-8?B?UWo3UDNCNS9wODMxOHZ1R1VXeExPSHlPSnR6Tk5DSkxpdXV0S3U0ZVVjdnZW?=
 =?utf-8?B?VXJRaW16SXJMeC9DMFlJMEZhOFV3MkoyMWR1UE1oQmpnZFdNNStBa2xkMkxp?=
 =?utf-8?B?K3k1ZFVuUEp2SEJDQ2NWUk9Mck1hbzZPSG91S1NmQlZRS0Q5a3FlQTZPSUtX?=
 =?utf-8?B?TzhnS3BiM2hNaCtZc21ENWpJS1J1YlhVWjRlVm5NSFlxWDh6cTd6cjE5VS9m?=
 =?utf-8?B?ejBLZ0V4TXpFT01JRzM3NjVCTEJtWFdpRzlLRDlUSUhkQUpCUm9aKzBURHJG?=
 =?utf-8?B?RGo3amlTWkU5RlIxcjF1R01GVDVJSGhTbysyOXBmeFRzVERESFlnYkdYZkF1?=
 =?utf-8?B?c2oxVDVmWkRONHFMc3RaTi9XV0xEb2MvcjJEdG5aSUZjVnQ4Y0M5dldRMG9t?=
 =?utf-8?B?L2t6enl3VVkxZEZOaUlXQVgwaFZTQ3VrSnBvK1FpbVByZkFkdzljY0FBRkJt?=
 =?utf-8?B?WkZkbm9FbFVIY2xKRlRNd08raFJFUlozYlNHRncvQXhPTjhMNG9nd1U3eXJD?=
 =?utf-8?B?eXhpZzZwRWNXMlZJamk3UFhPaVZjdlBIWTRHclhtS2V2YldvY1BvdzJPamg3?=
 =?utf-8?B?d2tVS2VWYWpURHRTR0hDS05VS3IxQ09sTSs0YUtqVUJHWURLQmhZNGxiQm83?=
 =?utf-8?B?OFYxQzRNT1NMdmI1SUZGTUJMRGRRNXV3ZWZjbGVxUkhyYjdXRVpxQmxQbkRD?=
 =?utf-8?B?blZBMFNoN1pTOS8rVERPc21Ub2NMdlRxTkp6RldGbmQxSjUrdzFJYWZ6MmVH?=
 =?utf-8?B?RnhNMGI0bFpKUFdwV1JoQ1dKMnFybXFmK001OGRROFYzWTJJK0xEb3A3azJI?=
 =?utf-8?B?Nnkwc2JJbXdaUkVacTdzc2tzeUNNUm9LamllS0ZCbS83bUJRUXBJbzdES0pv?=
 =?utf-8?B?VEhZVGpHb1Mybkg0V3R5dnRpOWFobGFRcnlPV0xUWXRDL1dLWmtlY2JpSW9K?=
 =?utf-8?B?TndEdEp4R1RyMkg4c3ZyVUZTamc2cWY5QzR4YTRQWFF0YVhxNUw3ekgwUTRn?=
 =?utf-8?B?azdSaHdMNTl0R1FJamJ4QXJyVk8vQUZTejRWTTNSM3hWNXNNZlVEWUg3eGI5?=
 =?utf-8?B?eXVGTERrWXQwQnlzNkxGcm9NR1NYdHpXRTNiMmoyRWk1N2doWkJMUUhPTjdU?=
 =?utf-8?B?MndKL0p4V1JtdjVIU1BmeWNCSmxENXFqZXRqNVdtUTgrbm5pTVZWcG5ub2Fw?=
 =?utf-8?B?NXExUEQ2QlhXUzM1bzVublVFZjVsb3JZUHphTGxuenRrbDdCN1JCdTVDa0Fk?=
 =?utf-8?B?SGdaOFplY2wyK3dsOXZCUVphNVFFTVplVVQ2cE85VlFmaGpuRUgxbDFuQnBv?=
 =?utf-8?B?MFRiem9FSk5pVzBBaEpCR0o1WmF4YzJmUEg5akdxeHJaSVRBWURQUzZXWEc0?=
 =?utf-8?B?SVRTdTE3TG83OVJpcWNxaHZnc0VOWi9VcGo5WnlnUEJ3MkVjYzNqRi9QZ0Mz?=
 =?utf-8?B?MFpFL2w3N0dJcGpWL3dtVlRXejRoMlcyS1AzQTQvMkNueGFxYk1LRHVmQWxm?=
 =?utf-8?B?YWxLT0IyaWFsYjRSUDhXTmwzenEvNCt1cjRKeHN6Q0traXN5MHFaS3FieEZj?=
 =?utf-8?B?MSs1S2pjUHZGRGtaT0NTYkRHUDdSVEFlM1dhV2pudUFkbll5RWNQeDdSK1Ri?=
 =?utf-8?B?NWJoQjk1T2V4TE92UkJLenMxcjNGSWJISjhudnY5UW5Jb3lHQi91VVRNTDRU?=
 =?utf-8?B?ZzMvOXRFNXlqQURRdU5vK2tkdElTNXpncWE3bzAyWElhNlNwajhwalBEaldy?=
 =?utf-8?B?a0N1VUZJcG5qU21WRXJ1bUlIR1FQK0dFSEtXLytVOXo2d2JGcnFqU0N1QTJt?=
 =?utf-8?B?SXByT1poOHNCY01WMytMYktYQWN3WG91cmV0TXhuYmdtUk5KVjV0eDM3NVpY?=
 =?utf-8?B?VnJkNXk5eDVDbXRxN0V4UUZlalFaaUhUOVNLV3hwTFZWZW1tQ0k5di84eHFU?=
 =?utf-8?B?T0VjcFFteGFyVHVFQ3ZtWXVCQldmUVIvMHZvRURuZmZIRlc3UlZsZWhURkJj?=
 =?utf-8?B?SEFZMXRCdHY3OE1rTDkyVVMrYXdaZFNTeHNxeFdLN2d5Y3pmaTZ0Q2FIakpj?=
 =?utf-8?Q?peSJKvVQA5ht+UsA=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	mwas+v/eqWVdPKnpKv9ZrV44Risou2UvVHyt9CVxqSmrz0sFzX1GiDCHmuOFOG2fWa3TeCv999r03hMqApDBYA83FV4kl6SX6/g36madpluKkb0Xb9XsylorBRyr4DQkTYS9P5a7TjrK28YTTPZ8qzgGSq7c6yeHhLQsmCu4KkCnfeLrCBLKwhSqp4bc5O49dx4KLAlg2SRXGacG0xGerkH5tPP6XRvl74Llg9Hsd1v4V5U9+N48viQxWJlsP8FeDkbSHcMLs+nQe8Vv+USMUFq8IYZcWrngM36HSRZV7oHr/vuia6Wnalnl+6Tzte7L/Ii2fQAHYcbQaQwhqEn2xx9J+ZoUUO3biDcj7+ECerq/qRBG78D/ca3xKXqm5hDrx0Jn6NCAdNEqnRGLKMAArmxE7IoWlnsqDMWPvp8HnhwMYud4VRJEpxiKvhNukBjQJ1IvXL7cluXMaY9mi5aRqBORMIWnBtvQb1svxomQJXG63uM9LeZ8W2sOv0+ziU9j+Njj40eIsLAAznGBSxXBKDYcFT6FdWM4Cx0nIbiJBLonpEs/iWmUJ5EC6PpAn1wY6I817INsWKOfQ0BH5M+4DvnAEw5bZHA1RsEsujSGK5M=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fb61574-1001-4d80-5218-08de548be61a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 23:14:57.3316
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UuuZn+8JZrE0MZ18ujjXIF3Qq6ZguC9p1m1WIXHuRB3PgvfSPKCBlHOtCjK8T1RlY/5suXOfslBXMJMRTHph1IKYr8Rv1983QUh0oYQxf84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6109
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_07,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 phishscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2512120000
 definitions=main-2601150184
X-Proofpoint-ORIG-GUID: fuWQ6jabwfQVwk0RbbD4gQuUJZ5QOleF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE4MyBTYWx0ZWRfX5c8YLRPfgOi7
 TmTFgYPTaYAynszdIE3mxlZs8e4GTT9d9HRpDejkKfSAH5AAEFNkc7mH+ZfR1EOg7mykOAPUS5o
 zbzip+saVcgfe97ZjJDX0/PDRXtopE07MfkJtvM9+QaZMF5lPJ10p+y4/+1kJVo2mbeeBJG2z6v
 nye2fRisu0/fMPeHIuM5LbBWYMqP7h8DzY2f+zqNNBFcCR5V1vhnbhcRc6MrHwDgx7m8mGzAJe8
 7IR4IzgT1GMTo3KNVqbcHV/gJPEuMXRZVD/N5LHMPwQ6U/wDJ/VoK4gE25VGViK9sGep2fxbd2o
 HwQdb318P7ll0egsVzfD+jISD4wxj0HnU4jLva2ULkC2ahWWbx3YfkB4sAUdCD+h+0sTrObbxLU
 VJE4Cg93CEso9AEPNnl5Qv/RYFwCe0AXRFi7+rnvottCHKnXWIW87PnM0FVEwFvwRjgA82TY/dC
 vfVoVcNTk3XEKHdJ4uA==
X-Authority-Analysis: v=2.4 cv=J9KnLQnS c=1 sm=1 tr=0 ts=696974f6 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=mVMs1eLXJmrFqlMTd-QA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=0lgtpPvCYYIA:10
X-Proofpoint-GUID: fuWQ6jabwfQVwk0RbbD4gQuUJZ5QOleF
Subject: Re: [oss-security] Fwd: [FD] zlib v1.3.1.2 Global Buffer Overflow in
 TGZfname() of zlib untgz Utility via Unbounded strcpy() on User-Supplied
 Archive Name

On 1/6/26 09:31, Alan Coopersmith wrote:
> I didn't see any mention of this in https://github.com/madler/zlib so
> I filed https://github.com/madler/zlib/issues/1142 .
> 
> Note once again, this is in a utility in the contrib directory, not the main
> zlib library itself.  (And 1.3.1.2 is not an actual release, but a git tag being
> used for other purposes - see https://github.com/madler/zlib/discussions/1128 .)

The bug has been closed now that untgz has been removed from the zlib contrib
directory so that people stop harassing the zlib maintainers about code they
don't maintain:

https://github.com/madler/zlib/commit/1a40058a92d525aa49a6eac698cfde500fc9b92f

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
