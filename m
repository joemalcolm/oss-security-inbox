Received: (qmail 8147 invoked by uid 550); 10 Jul 2024 21:43:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28508 invoked from network); 10 Jul 2024 21:39:17 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UMazQ4qXrooJAYqUapHiUe4rbG387VbczKBzxjLH5t+C1u7ah8a5F6n2VQ2pb37+t5GxDhQoXJ/U2TOrcKiESqKn8DIlagCZnET14LfSSUZhH2d3dS47SWYvdWJudcJ0fQmePgyd+agKTADEAvDDNwjCtpBzgldnkSvyUcQzEqacl+zr/2wvUyJS0avreFCwGPnv3btWzEv0HfSc6vN2iIId/s67MCyh5Jkrd+WC0Fk0PdUPDvTczUAsdpenGlR8lCpiKhCHiP50sLprMHOe7S9/EME6A2/MaffsME12iqAZop8/QEr3x1O7uqiw9qoe+7HO/Df75/H9ajT048Zqqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mkF/0hluh6K5GQrXef0BMdmotw37vwrYn+L/jY1Eq+8=;
 b=n0PgbVqHvlcCBjCCn47iVvZM4X4+Cor0cASCyD/DWYRAKnrTWMLpybXOqPf+JC9wiEaZiqXL/sdrahpSKl66JLH8H7bpKRGUfihhCiT7cN+CSUXVU4RO2pHlXBZK9PLIeXEuHtrAPEntD++hUmITNsxcUD3RyXK/5uLWso17ciBu0L/Gf1hAvofXUnxpc2GnvhEac2nVa4bJmVPODh7yi2lsgL5h363BMA9t2dCOqRWdy33PAZ52KdVYIJRfI+8HpRGfsDBzVsjHeMKzq8dIxHbAKUWiNx1n01EpZfE1L2BH11xPg0jxmXSPAW0aGcAvlVPmkMwYhuHzKEeUBSQcTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analygence.com; dmarc=pass action=none
 header.from=analygence.com; dkim=pass header.d=analygence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analygence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkF/0hluh6K5GQrXef0BMdmotw37vwrYn+L/jY1Eq+8=;
 b=FUTB/3/eHa4wwIlw+/WkvYXP7HumToRoM7YB2pnQ6CizMI2JsQ+PxEqDTP77OgKxogJmXI3tJLNohwk1cp3EvIRTnUoJo2VaUqmofon0LGiwiEJJFbGSuxbAOX3uIjsXnrhQrsxJ2dx3HmnW9nX54LugLfx6npi0BZPek0JRvmWvdylUoPiluPq/zeF+lzUmnKKDNhRwgF4Rg+hvM044ibu24iChdKreHQhbvRCYvXQKL9cNHSa5HC31gnpe4iruyB4Uam7KhpeUjhQo3JUSofMQrdvDs/IJO6roG3oNgHI0A75btpqCBpWUBwdLzPDiCDP0LGm9W1tKfzv6Lrtm3A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=analygence.com;
Message-ID: <bda1ece8-8302-4a04-9f16-c78b51b0dbb2@analygence.com>
Date: Wed, 10 Jul 2024 17:39:04 -0400
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
Content-Language: en-US
From: Will Dormann <will.dormann@analygence.com>
Autocrypt: addr=will.dormann@analygence.com; keydata=
 xsDNBGUds74BDADW92RTW7oWcrRqjc21Lbbip5obZyVmIfHfUKgQW3oh3fdWZ0nBMCb5wLrc
 RtS61/VA6cmUAsHNQMqFwFXkofFm0XtGf40Utd72qsqZRccza361ven7g/odIC491KeyNRCe
 9FRGK1EXVt4uDloAzMHq1b6nPEgvSdaOLQNqza/8pT0YUEP4/HQ108gp6lBOnGROXle5+x5N
 RlRmZCPNaTYTtUYg3v3KByDeIMWV4zwoXDFldoy4x6mT555GcfXH5q+q4KU1tsyL0VXkkmhJ
 Vr7srF2C/CZKgPF5vZlnCUMVp5WDWpwiN4eNMxlU3ox8T1Y2MskdwR7bPQoHrFkWQwgf+49Y
 RmeORZC67CdwpCDqBo7Jxtslh59zgsh3Jcj0vBmuysdmUt9DiczugIVhVZCleMg4T/YILMlu
 bu4i2H9W1826EQlCfEvALB7X3KYKnIH9ESksCkb/W8NKzxSb4gAn2kYXP3Y3cGmQ12qlRcJ+
 okTlDTDD9kghvCKz6mKKs4cAEQEAAc0qV2lsbCBEb3JtYW5uIDx3aWxsLmRvcm1hbm5AYW5h
 bHlnZW5jZS5jb20+wsEHBBMBCAAxFiEEUTf5Ld3D0+mnHA+JLYWNWnJ9pW8FAmUds78CGwME
 CwkIBwUVCAkKCwUWAgMBAAAKCRAthY1acn2lbzsgC/9hU/EyQVKTLix6ckWCLQThcZos4zwG
 NnOAEUdm1l9CX3khRomXP5T2rEa1DecAeeRXzTfR5Xh8Su0ZkER5tIYZiBluef12x383dPZS
 LaHhyzHBhfhI1m73lDnuDmZlkvYMJ7AwpvrFIXv7HXWSi4X8lb7BAAQ2Kkb2mxMvk+N4OGuh
 2yQnOFqrOyb26onkjeBsm6gqbXO6CTjRnf3ToV+cPHuDh/GS3r2OadBDPA3eT/rrquHeydgu
 ZTt+BnmTzQczbXUNhRnYnVOVyrlTAl5QBy+jfkc8QG5mITDQ7bR7qG+wRXKYoiWer1BMemvV
 UrbEoNwoBt3g3c8LpdBm4RcHkBQG/0ae26e/ecyMTNacKqYTNt8TF9/859L4z4aw9LWc+AKf
 +vKmi10OTlkaqGoEjylG0hqI6d/eW5f5lFchqVPTD0G2Dz+3TTBAMQ2hoOX7t20VRIq7vloU
 7tZpw3RY0Q5F/tQ/FPrbILdbU1u68rriQmYju0ocg1WPnZzjjtnOwM0EZR2zwAEMAK89xYUf
 Jn/xx1349+WjStgGEUjq5nBdutG60Uwkcho5vL6ZlJYhrGmbY5ChjSMomiNxgfmNvURs0jlk
 kjmpBIQqRSCFAuUsjohjx/srL1P0vNKk5FA7tJiuDf6SfSBYQrurtZcQSmChfIv1soCPo+qG
 hKa1fdUJ8NdVCQ3wpxFI6HQwp/3RmzDJQDPUiQar0WNjSktIxdwZggKGizEXLdwiLKiqB/Rr
 zLNFwoUIAsM3tivimGQptQDw9/NYH+r9OC02919iDxWs1dy58njBiBUL1JG+ii3zXPxqKUCd
 bAegOGz2cYuZ9ofx0muZuZAIGdXyj7rCj3Ic6Am7lr+3P/9z1Iq7zvsdv8+wyTBpTjPpkZvH
 nbce01rDwvxcKCqDmcn1gtUUXfFDLQIJiNmkD6ywQiYXRWTcWgV+y/FEVlv3+DXNXsWe13K9
 WU2NNNfHWgwCWR1Yy1WaQI1Xf1lA1ulbdWdav6gq8TomaGrT9iXgB/U2eAmwjya2EHZnZsk6
 bQARAQABwsD2BBgBCAAgFiEEUTf5Ld3D0+mnHA+JLYWNWnJ9pW8FAmUds8ACGwwACgkQLYWN
 WnJ9pW//MwwAyPzyRMpJiQK2xH8LbPIg+iPfNgoAviC3cUeTX36G2to/s5ZRnWIPyzuwxlA1
 sifx63KVmlxzHIIhi+vHFIrPLKre3YIQ/LS5j3+0CcwDs3L8sOsZ9RVC3kP7wVedsAA5h/lA
 CP4QJ9+KZ8miy4pSiicNsk2Dy5BBH1PU7GHmbkciiBWNZjUOdQr9AzM3iPkFJH6dqw+nxybS
 NCd1rh0AGrRwZqKhQubW8UMdj/vZ8CDcOZr4wuQZk/9HZt190xSCOhoe4hDQ0ynthuX7JijI
 XCny7JeO9H6uybjVmVGRMnzN182vnV052x+GJv/dJzxrU7biEBhFZPERiN+5xOxw9kxtps4r
 OQSPfvsPz1OhQd5Q18KlnCKmEjCx5WudI0gl3YGijW/m/VGZqBByCm08ElXR9Rc04bWOoqxI
 qcs2bHZo4dfaaliaJf/hKInYXVRShsed5aao36vNiKyaoNSkwmRblcDfLNChglffdQqZKuS5
 CUkSuQYhz5EOfhvAp7jL
In-Reply-To: <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAPR05CA0040.namprd05.prod.outlook.com
 (2603:10b6:208:335::21) To CO1PR10MB4771.namprd10.prod.outlook.com
 (2603:10b6:303:95::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4771:EE_|SA2PR10MB4779:EE_
X-MS-Office365-Filtering-Correlation-Id: 017a96d0-be98-46a8-d6a8-08dca128b97c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RUFTSEhxbFJJVjR6TXNFOXhhUGRTcHZmcE1wc0VQYWhjQ0YwMDNPVzhKaWdu?=
 =?utf-8?B?a1ZuZVZENktmSis4Uk1YeGxaTnBqQ2ZhMW04TFkwbmpha2NPOFhqbEhCUE81?=
 =?utf-8?B?eDIyQnJzbWJSVGtCQzZLOSswZndOVDZiOE1QcU43TXgrMXBrbFFWLzd2VGtI?=
 =?utf-8?B?MU9ZTmc1dWlxY3NNZnhWSDR5NHVjR1k2ZFVnRk5EMlE2ZEJzTTlveXJibXdQ?=
 =?utf-8?B?VHY4R1lybjFXaUpmWVhiZG5QM3pqOC9EOGhLYjE5UkpQZnhvc0NjaGJjYkdW?=
 =?utf-8?B?dmMrZGJMWXdsbHVzWjJHK29vbk85UWFWZ2xFYVlEekppaEpheUt5Q05DV3F0?=
 =?utf-8?B?a0FCdGdWNG9QK2lmaEtOdHl0ajBPU3AwZ2dwVFBGZHViSllpeXRuWjJERHhD?=
 =?utf-8?B?WGcybnlUMW9iT3Z2ZkFYSHNKVVFBeG1rVEVtdjNKZ0M0R3Q2WEVTZnA0bzhD?=
 =?utf-8?B?RXQ2OUNFZTdqUHlXM3Bzbk9HdXFtcjlpaEUxL3VzQ1dKenFUREpqNmlGUE8y?=
 =?utf-8?B?NmgyQUNscU1tVVZueHFKSXJVQXRCQ3RTcFYzN3FjRnYwdHhhVU0wN21QV3l5?=
 =?utf-8?B?Z2RocFhVRzdyTjRWRzBySkNGWVp6aUVkNWxtZDA1SkI4TlhUWkZXYVdob3Rp?=
 =?utf-8?B?TW1iajJod21VQ3VpU096c2dRRTdRSHhOelNqVkpYdEZGQ2dXcGpOZHBTUlBB?=
 =?utf-8?B?VUk3UjJzVzhkMVJ2YXB5S3pndFRxNExubnB5bGtvZVVJY0lNSE5ndi8xTzhF?=
 =?utf-8?B?WmZkMGhJb3FvdlhxS3JWZCtlZW9aQjU3YkZueVlVUGNiT3k0WithTDZjd2hy?=
 =?utf-8?B?UkVlWGZrQzhJMlo1Zks0ZURyNjBOeUZIODVvNzVkeUMrZjNLNHM4WHhDSWU4?=
 =?utf-8?B?MWIxVE5RemE2d1c3cFJ2ZHY3R2NJeTJKS2ZWRzZpVkNKTWwxUUlvblRtbHgv?=
 =?utf-8?B?YmxxYkZNalBhMTlPU21GandBTGNaMG84VXhKYnVBcjZuUWZ1WWhCZkhObEhI?=
 =?utf-8?B?Mk1PVXA0a1l2VDJmWmhVOW1YRDdqOEJYMG5uNHlaaUpGajkySXJZaTdjbElC?=
 =?utf-8?B?NDZTNU5zck9FSE03bHdoUkpqS21ielJOWUxSejhQck1DR1g4NkZGN1A2NldY?=
 =?utf-8?B?TFpobVdiWEtZTTQ3M2JxWWxJc0dWWmZsMUFLQ2QxVU9iRWtKNDRRazhhb0t3?=
 =?utf-8?B?aWJxdDkyRzJicDlvMnIxVlBWczF6cnc0eVdVeCtoNHB6Ujd3UmNSNytQdE1S?=
 =?utf-8?B?R0E5cCtkZmwyaUZCcHczMi9mNCttOFVEUDgxNkFMc2dnVTJnbUsyWlZxQWZN?=
 =?utf-8?B?VUptMnZQS0ZKWTZ5VzZkT2gxeFJBeERxMVovS24zWmM1VlhiNWxEcVJGNWg1?=
 =?utf-8?B?WlZWR1VXN2J4cDlNQkZuODRKaGtBaHhDVWkwZlJXdUdHUjNPT3pqK1dGbDVU?=
 =?utf-8?B?TVpuL1NOaE1KRkFUbHRzb0FJSzFPZ09jUFczVDVVOFRzaVBKbGlYbHEzUzla?=
 =?utf-8?B?QXVyZGVkbFV4QTlESDlnVXVIb3drYlNrRnRJSUgvSFh1a3V1Qnh6WEZrd2tL?=
 =?utf-8?B?eTFKSFZ3Y0ttb0hjOWNROXdsRkhCSTJnRHV6RUpzUmNsTHNhMmFKa0plNDgr?=
 =?utf-8?B?M3BIYUtZMjd4VWRCSDBKT0ZwRUFyWHI5U0N2OFpZWUNJbDd3bXdIVkVIdEVD?=
 =?utf-8?B?My9oNXo4WGpYVkpQbUhvV1ZCUzUvazIyWTk5d1dyTlpEaE8xbGNDRktxVjM0?=
 =?utf-8?B?MjJWV1pPRTF6VUdsZjZSYkZGNDkweXBHbUVVY3Q3R0toenVjODJzZm4vUm5w?=
 =?utf-8?B?M2V0Tk1nYStGZDY3ZndsQT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4771.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?N1hHTkcwOFZzNnFDaFJuTjJBZ2FSSUtIL1JMOTlManRxQlRheGJ5c1dYeEFp?=
 =?utf-8?B?ZHMwcVlEeDZOaE96Y05wL3JDdXIvNHgwRDZyYlU1MlR2YjNQYjRuOWpOd1Bm?=
 =?utf-8?B?ckIrYzJYTjlYUExlMXRCa29EdXozMzZFUHo1Q1ZrWk1mZEEzb0dUNHo1S0Jy?=
 =?utf-8?B?TXozSWZ6blNiNGdkNXUzTnBIdnVCVHFzSnA5YmdrcDFHMjZTenhxQWtTaTBo?=
 =?utf-8?B?dStuUElxdjcrL2t2UWk5RDR2ZFNsMXIxVTh3dExqVzdsZDhPVTdWMG54Z3g2?=
 =?utf-8?B?S2VnRkxsMFY1WGJVVmpXMTl6anU2ZXlTcnJTSm1xL3pnWko0ZnhiaU9LY21n?=
 =?utf-8?B?dU9HM3JJRVBaRE5vcjhiR0VBa0s1R0ZNYUs1ZTJCc2pJZWlJMm1KcDBxVlo1?=
 =?utf-8?B?ek5KWWE2ejdDT3ZxdHp1N0RHVUEyNEJsdmFiNHFYa0RDbkg4MTl6cjhzKzVE?=
 =?utf-8?B?UmJ5Y0lIUVVUczJ6aG0yWUpoYkJYclovM3Z0c1hkRURqNjIzV0FtM0Y1TTdx?=
 =?utf-8?B?aG5aYmxKbjdBYWFaV3MzYzYzNTg1aVdJV2VzdDVvVStCblZvS1RtL1VjMGdz?=
 =?utf-8?B?NHlqb1lGUHBvR3BHV2VCNmJGa3J4M2EyY1U0L1NLNU80c3d1ZnRVVE9nZzZu?=
 =?utf-8?B?bG92QU1VU2E2VmVtVDZUcm5WMEpHU0JyTWZkdm4wVzNZMm94WW9DemZOd1N6?=
 =?utf-8?B?M1YzVUJialErNS9XTm1uNHB2OU8xL3BWYUpCOE12a3NuaG1CcWlGMGY0TzNR?=
 =?utf-8?B?RzhHMmJYYXRKL2FZVWxkZ3piSWRWVGtxVFYwZzNKZEJjQlA1SWlXZ2ozOVlv?=
 =?utf-8?B?ODlLbTFEdEhrTVNYazdDRWovZ1o2alhUbDN4MXdNUmJDdWxBamlXVE4vQ2JN?=
 =?utf-8?B?T1JlK0pGSjBFMDV3Vklob3NVZTVjK2xKUHN1VmUzNTRLRUQxRTk2dnBmb1cw?=
 =?utf-8?B?cGYzUXJYaUFnM00rbnM3ZWt5MlUvWkk5NGxnL0dJbVV6cUI5dWFXVmlmem9N?=
 =?utf-8?B?blhCT0VxWmRUbDhLem5yNVlJdlBTVzRVcGczeERPZ3JXb3QvZ0t3TjJ1T1ds?=
 =?utf-8?B?ejduUFEwTDJmQ0UzdEs5QW1VejFYbUdiNlhuYjYwUGtwLzh6bFBFeVFOVHRF?=
 =?utf-8?B?U3dQYmRwS3VPb2hrWW9rL3F0Uk1YeFloTmdhbGUvZ1hBVVJzaExESmRxWC9B?=
 =?utf-8?B?Vi9oOFkxTURtem9NNTR2d2pGVHVXWm1iODdpK2VPVFUvZGF4STN2VkUrS0lC?=
 =?utf-8?B?NjlpWmlGd3FnNDFSLy9BWTc0UWRaYjRHVVJsT3VMSUN5cTQvOUdXNE9JZitC?=
 =?utf-8?B?aTBWRTFXdTkzV2dhU0ZaR0FwcWZGNjREK1M0akMwRXNtS2EyS1pYUzRWK3k3?=
 =?utf-8?B?aWJ4Qjlpb09FaUs2bmdEOThjcGNwUDVGVHgxZ1dLY3hkcG1CcmJ1UlNScXRN?=
 =?utf-8?B?am51L3BiYkxuRHJmV0ErMHVqNnIrOXU1VUo0ZDQrcEJLaEYvZXVXd3d3QU05?=
 =?utf-8?B?SGpuWEdrZkhuaXJlM0VGWUtGTktJblpadXFSKzgvVWo1UU1RYktSWVg4Nktv?=
 =?utf-8?B?TUJQQzFPVTNsK2FNYmVrNytIalk5VmM1V3V4L3M1QWtrbmxPaW5rdnJFbTBl?=
 =?utf-8?B?YWZNUXJIYzV5eUlSaFR2Vmt3SiszY3Fzc0FzMW16MDZNajlrUk83V0wzWks4?=
 =?utf-8?B?NHhtL3Y5TUZqVk9yVVhkSEcvbWFHQ0JQNVNWTjRPY3NraDVtc0p2OEJDVExG?=
 =?utf-8?B?ejllMWgyNDI4UkY3SFZHQTdVeUdyeHpvOS9JRXkvM3pMT2hENGxiUlNnMnpI?=
 =?utf-8?B?SlBUb1BTYmgxTVFib0FvcDYrRWVFUSsvTjdCZXl1NzFMNmQ1N0ZxT3hxenFk?=
 =?utf-8?B?bkk1WFpBNHhob21OV1FVTWRaRXJ3YUZoa1k3SnNabnBoREZRR2loNHBuNnFp?=
 =?utf-8?B?U0FjR3phdTFOV3lJTVFuMmVqNTVxa3VPTGhLdHI2Zm56ZnNsN3IwTFppZy9l?=
 =?utf-8?B?SVc2YlhaM1AyQklnUzlkT1Q5QWorY3NEWEVBRGxSNG9lTnRrS2xWMFVpRTc5?=
 =?utf-8?B?c0dHTkxHVHRnbHBiSHpXanlGSjI4NE5iR0pHaW5nVy8vckVDZ0liM0Q0cmlS?=
 =?utf-8?B?aGpBbXNDYW0vWkhaYW1tckQ2d3lUWjlrTFNjV2RPcHVrSmYzU3BzM2dpRE1G?=
 =?utf-8?B?aUE9PQ==?=
X-OriginatorOrg: analygence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 017a96d0-be98-46a8-d6a8-08dca128b97c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4771.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 21:39:06.4069
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0b2befc2-4942-462a-9d5f-50631e1040b8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d6kVVgiWBF8JezD1Re6Rjc0bqKfpN60YXBJ3GpP3SFm4Npm5w9/gJ8g+M0i0J7K2iJCaH8ncdGEXWcUsoTXOq7bNF3Mir03jItp2ihedA98=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4779
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

On 7/10/24 4:54 PM, Yves-Alexis Perez wrote:
> On Mon, 2024-07-08 at 12:37 -0400, Will Dormann wrote:
>>    - Modern (e.g. 6.x kernel) x86 platforms load a large-enough libc at
>> the same address every time. (i.e. no practical ASLR -- "ASLRn't")
>>    -  Modern (e.g. 6.x kernel and large-enough libc) x86_64 platforms
>> running 32-bit code will load a large-enough library at the same address
>> every time.
>>    - Modern x86_64 systems with the CVE-2024-26621 patch will randomize
>> the load address of large libraries loaded by 32-bit apps.
>>    - Modern x86 systems with the CVE-2024-26621 patch will NOT ranzomize
>> the load address of large libraries.  (i.e. is still vulnerable to
>> "ASLRn't" despite the patch)
> 
> Hey,
> 
> I'm testing on my Debian sid laptop with Linux kernel 6.9.7-1. This is amd64
> but running test-mmap built with -m32, and I get:
> 
> for i in {0..10}; do ./test-mmap < zeros; done
> mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) = 0xf7df3000
> mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) = 0xf7d98000
> mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) = 0xf7d6f000



Linux 6.9.7 was released in June2024, and the patches for CVE-2024-26621 
went in months before that.  This behavior matches my 3rd bullet point 
above, so I think everything is as expected here.  ("... will randomize 
the load address of large libraries loaded by 32-bit apps.")

If you want to see the lack of randomization, try the test with an x86 
kernel, not amd64.



-WD
