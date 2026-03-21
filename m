Received: (qmail 30391 invoked by uid 550); 21 Mar 2026 00:28:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30322 invoked from network); 21 Mar 2026 00:28:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=qaKT/q8v2xiyocDd
	Dk6sOibrodHqW67qBF19yfQK43k=; b=dNvfN49Rc5myVxYG0NKuWW/o+1hw9jdS
	GyhAHFGS5q7FFwtWz0Pjd8SVr8ERGMwfHAi971lAZjQaRcNvJRzPZBxYqeEc1IGt
	R730VdVBw6VguycLNexWi+TOAjm+1dv/2PoIXvgHK5FxjcawI1/WmbsIs9uPIGVV
	q5J+BHd6s7LDkDvQATT1MnOjAoiqTJCbclDW/P5/hLMRKMMKou0hgM2BGOipORY9
	3RWIBsiXDypNQFgPBZB1IuD4hke20uBo/qAMttHn/aORHaFHLcLxLHVDkP2JY/9h
	8irKjXH5i5Bs40MtS4SU4C3sUCf5VwJd7kx+VwbAGPR16B0/NuyaLg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kFyoMazo2zGAGBG2JCtVUX8VJY8z2sj5Cz87edVhHSbZUaMB6DY10BOhp6TEJCfmk2k6+DBykztgweGVH/n3y07MF5EB9l/DLsLKLrlXZGiBy27AZsbtV/pf4YqPokBGfZbTFz1+GjER/fHodcNTtDCn5xNv0ANjL5kYk4hjTsYiGmfFVnIAvo8lRwe89e9QL04ynwFfdDxIqF0e9Frx9pXsn6FeXNuYzkjkFmoth5G08NJmtwUvoYxuBx7Mg1fyofBxCWyq/iiI8dSPBC1WommyYIC0xYVWc361/lfheBSAdHftbSpD8DtHw2/1gTLiI1qfGVJqBMg+3qGkCd6yMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qaKT/q8v2xiyocDdDk6sOibrodHqW67qBF19yfQK43k=;
 b=Wdj6K8FUvvYpVLVdO7MspKgoVJikpqKpQIKVabSP+QDqpATJfDoKUY8J12J/TJ2QJCkeSEJ7IADNQ2pAAP4jUpXoJ7uX1ZnjqwJCyCPzIjyQIe4T1E5prIAKwEZRa+mPAbIICB1baK4neB9twneL66trOPYrlajrt4SsSOMsKIR+nQV9esMzUR5Kv//uDjHwKPOeuIZwiZdmlzWxiyd9hUU6B9vM5spay96f3oWCgUg8toVZiwepLO1i4pZqnEPzKgxkLopZow+fvNEsHumHllS/klS2gpwG+mcsq0lzER6N/veTIRiwGEKAaN/lV5S1cUaxq5tvPN7ebMjh95mjkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qaKT/q8v2xiyocDdDk6sOibrodHqW67qBF19yfQK43k=;
 b=Lw0u0ifHUdr+wK429Ui7LuHciFdvxPnATgH2nOS+v+iggsx37QCwaGt77joS5Jteemk0nxoXwbRlZistabEUeeMS0ygNThO0fOBnywmSFO2H3MuAL41s/AY//HOYTD8aAJef4LELj3u3IVOfJSwD9f0ZTeDJFdeAkG55AvRmBoA=
Message-ID: <8163893e-6611-4189-baac-bce24d03640d@oracle.com>
Date: Fri, 20 Mar 2026 17:28:15 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 xsFNBGcZqbgBEADGfkmk3rqQd6paZBga2gCwDhRSXTCUNcZnwDJg//yVZplZH0ezpWPKzw4d
 Hm01b6wGEQhlhwU5jTzSgAzEYzKr6kFhMH06HYp03kU26mVS6pUzcISqNHdcFWpkJbhUKvOR
 e4/DxXQvoIGPz/Pxqh4lAqA6Xce2+lKnH6n1oXXOvpNk+aLENhb0fD/xTwoHXb3rgLBD73gX
 82EhWHVaqeotLM1phak+gw6N3X1e17UkDBlFMPiGfkmoLxTeOlH+2fcPCtT5kO6/iidkeG81
 bAsNG2ukhKzEavhaBwHMTwre5TMEZuRphu9WY7tQR+osCHMqsEeXlIuCP8JV9848CmIzTpJo
 kz/nCQEdPPpvwL+nymHi53KG3Gn2VM8oiSrST2h5b38qz2Dv+pNLOKBD01Htv5mICkqNdYSk
 2T2sqfCEC0/wNbp8ykn8zwRvYRhK4Upoj3KucFkXyhJRfXaDfCW9/PjlspQzbMR9F/jJIZf7
 +lCdPYF7nEvBk2cwaEgYqT/yWxSmYtloMvYus9wbyVsnn356lQX0xF6/UK3NECC3LqFM42P2
 VMydo1nYap2JkFa7jlkWcljiYJRieTJ3HP09Hw4KIlwKMcRGx+ejnj8m+k0GGJFwez8KiG0P
 BcuT8ednZlNCAvfEwD0YYDR4YwsKKuf28Ymz2POcz7Mg4SzmTwARAQABzS5BbGFuIENvb3Bl
 cnNtaXRoIDxhbGFuLmNvb3BlcnNtaXRoQG9yYWNsZS5jb20+wsGUBBMBCgA+FiEEOrKFIyxG
 rkPY4ZL02rD3jqbn4tIFAmcZqbgCGwMFCQPCZwAFCwkIBwMFFQoJCAsFFgMCAQACHgUCF4AA
 CgkQ2rD3jqbn4tJNyg//XkV+XJxxTCeJa4ahNtfAiE5vv7nsk4gbKK26n41X68wl/ted3uAN
 GEgtXnRfXu+kTZEeuukpAAyuQSS0NNnRe5sXBOj7uWMynXJTuThBuCYaVpqmmixicIQsdCUQ
 VrxZVxOkw4Lil6hrAp9gInEN31/11lcVb/M3/4qt7KgbL8Bqbr5hnlxKGgL9zU4ke7ii7XCC
 lT3djgAu+dfLVYcEkZwqhNG+x1oz1dFmRsOJxChwk4ErtFmy9VwbvRdRJ6PPgqN//gE9rdrU
 clmfSx5JzGzpkXK7xJAqvfFm9J+079j97joO5A1YBPDXO30V5SIpWoi3lGhW2gNptbKfzHL8
 pfbIbrCAzYDklRN+n7aoEhV7nffXf3qMvDARb4MAfz6QH2S+j6oHrGcf6Uw/xfRnQe4bkQrk
 st5p4Bf8PfZC6fflut7sGqFvQLaItPRgSdNMB8D5XwruztkeZkBo+Viziybd30/1mJC5n3LZ
 pN5+cwpjXKpdJFQij5MBW0VyxoescceI8q9YUv7fMy1y9NoSBU0xngTyOuNSpBaUaxPpPHqm
 aInEec/PSFu5wvtGiebKLLxU2l6t0ZuKNjn4zEIYSFDeY7/sMYkL4ij1upSF2zBnjnZGlrwN
 HmzcFkqGMnU4X8s+Ua/1lU4BHnvNEyEEWZ7TrVnkylMJd7snmIi4g//OwU0EZxmpuAEQAL0c
 za3pfhQG82EeJLPHpx6Wn27Lo1ulO7eb/n/SAAYtfh8p7fonQcoRjdOR0p/9fN62doHALoY1
 ruekEUKEuXmHfFMXq/4hPfRSEaW74aQ0UQ4HgLHBCZprhpUBmF6CyOzXPWcrUluqgXHyl0kC
 2XYmrRorbfGPCydKr4CWhsYzwuWFlyGfg2yE2BjynSXd4KUUmtCgUH1R1RVe5y1vOayMNcfb
 K4IqG3HDtznR7VHardJbPfeezYqwedT+650pr4G7//Srs4mNPZ+RuGRgw65Y9bVmiu0Y3a35
 c9/BdeP4hVIEBboFbPigXAjWz9HryJGaAdBJZrGVWNy2LRdBSgQwdxc+MnvkJ9nYKHukHjBF
 hRYMSv1KrsYCWCoq9U8AteSVdgheHSCTm6vW47FfnAwyttacdn7J3sSz97EmQUoYyBdEJU6C
 Oo9/sFvnglq3hPC0zjJNb6r9ysmjKDTU0OGmUJpx9gTaRUDqTNK7VO8dqSMUV41v1cTS9GHe
 GZMcnkr4heMkUIj5s3uinj58R9lyjya//vvl6kBwPYq+IK4F63On3v2SyR38Lyi9DjDHY5he
 YoV+1nsasPvy99V07v1HgFcBvpEahPFU6oazEbxo+iXeGiqXgzBsTzsIggtZeO8Wh7D3QtuG
 kXjoyjCnVOojWzypAnp7Eym7eRsus8WlABEBAAHCwXwEGAEKACYWIQQ6soUjLEauQ9jhkvTa
 sPeOpufi0gUCZxmpuAIbDAUJA8JnAAAKCRDasPeOpufi0tGkD/oC2s0fzqDL5xw/SoadZ/8j
 njAS0WjhOdeljybRjdxuccEGLh/f7Mv437J7lMmEfPLkb8NyzyHs1T/6IUk5DejZUdZvmlvi
 t7BgHU7pL4XI3t0WSsv0xN2KEC0JoITMMcS2W4lJjXduIotSMyfFf1Z0qKy2ZaGi5ZWKBjbD
 CYgEbKXgiz+uIL9AEi94kHtqDu8e3LUzVlDDvSpDiq3ZBENJXWwIhM2j5TgOkFNci7kZCy9A
 Gm134h7JRZCLi55ZIkKbkkEEoTFcT1lqvA+W7jyQnjLjmETYHDyZJ327ofi0bBmldych/1Ql
 SKjIyNcVDDS3vwOh1D5Ohb1dywj17ZDUIfIWdT67admhm1kAkT5rhFaskILXtZxblWkMMBcT
 54lhY9k4JIvtO9rCG+3a+tHly2NHBlpKDfTywcf3xwga5sPK3L6Zjo7zDK4lV53v6NUvlxn8
 AoIcsVJfLDWGdFBkWC1sog+Bt9GmAoXULSNBq1x38nc8Fn8cL7Oi5DHJ8upyJyTt49jcNfI3
 Kf0utAwUosbZx1qMwluwFW/qeVcMVYWgoAPPivQgGWuiYtlSwofq1AEKMBbiqD4b8qluS1tm
 FqDFBELvBeJdJLfCxcCuJvmJVh5JtTSg1Q/1XO5f+nGhRvZrAmzPC1R9N7/9E+oc7zIAHImw
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7P220CA0106.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32d::7) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|BN0PR10MB4983:EE_
X-MS-Office365-Filtering-Correlation-Id: 67ada16b-26bd-46ba-5e8e-08de86e0bf14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	8mjuZpBySHVZ+wMOgK2EjnA61ggPs2Mu5LksGEGLctpeEzkKtKim1qCSHkG4Iq1MusSQz6i5c8l3I8mu6cTuRR3CJe6L9pRHUJZyVdVY0zNWVugi7mdUzxbUlG0kCEwvhdFwqlbohmAE8oFgpyJeUAiQI8+pxzW5pmtgjvzM7sYb16bj+4cRrAV473lrCfb5pMQyaaO249U1AccnGQFx/8jue0QjhR0DlZmQP11h6O67nYl5ZDGuSKg2+6g2Q4yUHQIPKW6onZSTKhbDPyLVjI/uuOcvlN0Ohs6JszsHso8T3wATF9fJL78ycB8hdW4urmdYOitUpVD1utear6R3cVNuOgtttN/FhXjM7k9AVvE5d8+IKN7+z+LlJqi4TRfO40edhkO3gcaLnstNdM+/DRPre7uTVsQ3PcIb/Mtd2FtfCJNS0lFRAI5AAP+xRrBwIirN9+OylxSexYOaIYCIefdR53BhZfvP0MrlAfphW2G0NRO/wA+RoJHKylk7Ix/PjOILyqfL5ELB55g6t6e1VpX/AKJ+YBeylE5Uosf6PENbqiqx+hQs4e4gvBU/WdJgbaX0Hvb1GLtZnpU2cpGVgPdIP35OfbXwAdI7ilfEQLqgcNP2PsJ1SW8KYfQmYTJc4K0n49zv2vINDSFV1qlfNwj3a1d/2hcwk0285vx4h7Tz0asl1C+tA4IhFieT5IuT
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NzdHVkovdXpZdjVpRDJsMVkvNkZlVjZGVk0rYXBrN1g4dmJwMDZXUVRlUy9v?=
 =?utf-8?B?bTk0RE11amcvdm4yL0ZCSHRKNmxvTjJtZFRDNWM0OGNDWmNnNjUxcXc0SGl6?=
 =?utf-8?B?aTdzRWQ2UVR5azIyVUk0U3JTa2I1dXo2dmIzSE5TM2ExNm0vTzhKS2VMT0pO?=
 =?utf-8?B?OGhvbTUzM25PQzBrVlRpTGVOOHlRcnJqK0dSb1hLZDcrbHF3ZXlhVk40cUh0?=
 =?utf-8?B?bUlabnd6WXJFZTU5S0xXRXRvQUN0aW5leEp3RW9JcldVZXF3WDFWRVJEM0Rh?=
 =?utf-8?B?b05oWjE1aU82QW03S1dkM1pPZ3doelJQY1p6VjQzMFhVN2p6YWFTNlUxYXJl?=
 =?utf-8?B?UTAveDluaU1jNEc0M3M4TEZvM3RZeExBNU40Y3p4dm15ZUdQakRJaXFjQkNP?=
 =?utf-8?B?cVNSL05lMzh5MXJsRkRaNk5tZnJMb2dTbjdVdThJakxhQU1ZTjNJQXdwYXRl?=
 =?utf-8?B?UFF3RWgwNkNFUnFWUjJ0UGhlZVRHaGhMcUc3ZzNZSFNZbzdzYUpRUHMrZnZ5?=
 =?utf-8?B?R05ybC9QVjFmbnQwOUlZdlpwWkpIVkV1R3hsenFGcTVtN3d3WUc5RFZpamJo?=
 =?utf-8?B?T2ZONzZKUEw1VGtuOUU3Q0UrUzBBRzBWUmxiamZMWlpQc25EVXV4enZpTWUz?=
 =?utf-8?B?L0VGbXdVYlpJRjNRejFLblZHNUkxTFd6cjRqYjVSeG0wMGNUNFljTUlRNFFJ?=
 =?utf-8?B?WUpKNmNFNUMrOTg0TjEzSHlPamtHZ2JyNGhqSTlVZkJhTEhsaFhHb296U3F5?=
 =?utf-8?B?M081VDlYVkxrQkdCRkhMWGYvWVJuVHBUREM0ME1tQi9yUHl6NkNETC9iY1No?=
 =?utf-8?B?bHFtVTJ3ZlNlKzUzRzBNeXVvMTN0TU9FRHI4V0E3by9NS001SGdaVExsbXdh?=
 =?utf-8?B?Q3c2N0c1VnlNdTFHWVJER3hJWCsxd3M4bTFwdVNwSGVvMzZlbEpka3gxWTRt?=
 =?utf-8?B?U0RuZlhqd2tNZ1FuOWY3a2IrZTZjaUg1dGlOYVdhZkthcDBzaGhFR0UwRXp4?=
 =?utf-8?B?YUhwWU1jMUt0NjhJYUxXbWtOQVR4SnF2ZDYyVHlpd3FLeGNNVmZVTWZscW92?=
 =?utf-8?B?T1NtM01LQlNWR0lwTGd3VVdleitEUnc0Z0o5V1lzSldoRmFRNXR4SjJmWGd2?=
 =?utf-8?B?YzVOMmxpbm41d25Rck1CWElTdUpiV05QSndOWVFqbFIyRHFoTkY2ZUppMDdq?=
 =?utf-8?B?U2FjbmlXeUdQRzlqdjQ3ampJM1A3dHpqWGtWbE5kc0xzNVdHU01kTEJodUxn?=
 =?utf-8?B?MnFmcnlBcWFqbnVBdkdkQVFNdDBPK09uWHFqQU11VDMxaUNzUUpheXF0dlhS?=
 =?utf-8?B?L2pqWTBucSttL3JaL25oSWs2M2prcGZxZHpGejFwNTVVejJJcGVhV0lPMzVM?=
 =?utf-8?B?NTZJTGRpdW4yMHkyNWd6QWlwc1ZveUR3dUpsaGE1RWlJVjZLd3IyRDdCTHZG?=
 =?utf-8?B?UGIrSGtzV1dUY1hDZENkQzZOTkErZ1RYWkJkWXBlTXB6Z0Q4KzZOdjJ2YUJE?=
 =?utf-8?B?YWM2eTFmSUZNMjRnTDhDTUYyT3VuQzNHc3dlTUtNV0hjT0RYQktCNjRxcWxZ?=
 =?utf-8?B?d1JkSGJWSHgyQ2NtZDJrNm9sTEJRUFVXa3VqWTJKUmdSSEd0QmY2aS9LNzEy?=
 =?utf-8?B?YmVKTGdlR1plcm9zSFVZamc4MXRvR0xWZS9JUEo0R245c28yOFlzdXhXUy9y?=
 =?utf-8?B?dTErc0FKU0JrS3YzcGhrNmZjZW5xUnM0NHF0WjR2NjZRQ3ZucG9McHAwYVdL?=
 =?utf-8?B?cTNCdERvZjZhdWZNUGtRNDlpdjdRK2IrVnNqZWlTMjBETEFSSDBJY1EzZHBm?=
 =?utf-8?B?TDc2VFQyeGxsYjZvT1Z2blU0Y3VWenNsZ2s2SjBYRWROKzdNTytGUks0TzV0?=
 =?utf-8?B?MnFQWHVTRzJtM1ZKU0ZqNUtZODdGcnpHTWpHN08rL3Z4NENYeDFpa0dQNlNQ?=
 =?utf-8?B?dFI2S1NBTGJWckc5bmRZT0pQQVRqRjN4c0FjN1NTWkdyWG15RkJzSlp2R1ZM?=
 =?utf-8?B?Q3VsZjJObzJORTNUKzZpaEJJYUplN0piU3VBRUFEeXNidWpOazZicVhQWmJM?=
 =?utf-8?B?Ym9SMVA4RU1KR0JjZ2tKQmJNclZsREhsdkxxVVFuSzNjUUVVNDdUdEQybWxM?=
 =?utf-8?B?aGpzZzRVK050ZHgyWHdJRWtCeng4aDArZS9NNGFUSHhaMmdGVVE4QUJ5Q2hu?=
 =?utf-8?B?T2o0U05YTlZkU0NvTDZoMVBOREZISU0wRFJlSG5RWnBHY09NbXpPQkVDTmhD?=
 =?utf-8?B?dUczU29JMGxNS2NQQ1JkRTNkbnpudEQvVHJTK3BqejJPZmdWMVZWcnNEY2JF?=
 =?utf-8?B?SzBUMFc4YUp6YmpTUzdJT3dQZGh5R3o5cDViY2dBUWFDN3RVa1NsVm1pS0Fl?=
 =?utf-8?Q?u0foV6t6IQKyGvpk=3D?=
X-Exchange-RoutingPolicyChecked:
	dIF/4ihBGjda0++yegfacM6ZH27qwypUjDD3PXIp5CAX6ruWs12Bw9ChMT8PPtOpWlNE88epapb1onpOaJ39R630jsKW6QqrnxSQkuA2fShxqBziv0ZInwNaeBLQnI861CjL3bb8pBrCrU2aKDxoB7zVXD1Lt/wMJmy9PSaxXl5sv27izAd1ZLKgDtuySG6O1CwGM6mm7P3CARqwiUouvwOKryWScK59GD3DubepIKLNuxXgTIF4z67mSE/nUcZaaIwId0tADZUARioF0EjVct9yknpNaAhcQD37Eysmsy/Q58mIMbLt6r+MIxcc2i+g2jcsRDB+83gc1hacMJtj4g==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	HVVDzQTnrX0Nzl5rpi+IQ0u3GTpZa4q1qo3yr7jSytFHxmy3sjQS973QqolCjWCftoT+6BLEixkIHLhwyJ/UNl8S1wP33c+tabpii5FVHQsqTDjZraccULCKxkYTQUoV3uRr99n9Z1Ew+W8Q3mzXX59YN9LFejQU9Pkajjwri7KRMJABAFTy3Rd3bucL4z65NlR3f204/mL4Ms9i3hnymX/Udp7Lo2z4gtix2wA8qoWwh2MKNj3bWaHcp1rhXIbNO363qgV+unCK2GG2VxNJCATrhOXk8D0NfGslRh/jeXQ/AUmf92oci1uFFOxzXXg0foLfeZksI5qkaOLlWotZUpilzjj7c0nlIpvJM6ftwUwpXISPLQ0jn3VwqUiK36+/NK684YWB2s/JPPq8qg662zlUrRFuyyN274ysghOc3ZkiO4f2Y8nrLWUSaL6SvG4DsCdAZLoOxJV5cOiBsQgUBLBZ7EFgU5zkW4FaLTeII8gv+DWj2qlJywxA/+gGUDmaJ+cP29IQcV7L1YxPsWvdPMfPHk6y3ic8dbjAxhONWekbpvbgvtOajc/ZO7uc8AcSXihbCbgTE0EfYdT/IY0Cwg2pnh3/oRDqGhmOLD0IPR8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ada16b-26bd-46ba-5e8e-08de86e0bf14
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2026 00:28:17.1463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IPCIeUAv1vTsL1KVboineT9ATzFbY6vaF/CF3lD4ZiokAY0ob7oi50uGTez6OVGz4rKc6SQYCqBTUbIwoQxEm/RDqfIhNs5ZL+KNYQVhw2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4983
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_04,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2603050001 definitions=main-2603210002
X-Proofpoint-GUID: 4DyCKs2QmepAbnCtc-SrdCGTC1jsnKQq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIxMDAwMiBTYWx0ZWRfX0xZ65IScnvIk
 rRNpwgFoXl82uCjCcNzntAMZD5OD8tM2jLPP+zXSRa9pxO4JNFnKQMMcp1EEpjpMT28+5wrU/RO
 oE8+Wfg91O+82760LyI32we5lNY7GlQTrqyO3DAymn0n43lqZTJAcLiDhBHmtxtyN9PR/Z+TNBy
 7n90LGNwfFKaYs3ZsAsecRcM3YAGYYIC859B2wm7UD6w53VHQLRdeK3MG4tkcDmszWCzLzGgS0M
 Pq+lr04/291ybq1HDhgnD5ckudY2tHUCNJvyDDAeJdEESBzig1UOMzE6ww/j/oWef+nu1zFSNtK
 RqbkunPdv5ntd2zOQXNK0783HYzgL94bD8GKjYRWc+fJulouK2wHw+jjK1QeixKddxEhB1dMjRp
 ps9Te1mMrShIIxuJAamManhvQRnhoclTmorYcUktIY2J32eouci9BBW47qQuhIuA5lC4EyhDKKp
 HDFRvr85Cs1p2inMJxgeYQjyhDN+sqmhNpRuUd20=
X-Authority-Analysis: v=2.4 cv=dJmrWeZb c=1 sm=1 tr=0 ts=69bde627 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=hwmTb6FkAAAA:8
 a=yPCof4ZbAAAA:8 a=2JMCGFLdL_1on1WCtU8A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=HInSN7hDVDahi56Kq_0i:22 cc=ntf awl=host:12273
X-Proofpoint-ORIG-GUID: 4DyCKs2QmepAbnCtc-SrdCGTC1jsnKQq
Subject: [oss-security] Trivy github actions repo compromised, infostealer
 added

https://socket.dev/blog/trivy-under-attack-again-github-actions-compromise
reports that a compromised credential with write access to the repository
was used to modify 75 out of 76 version tags in the aquasecurity/trivy-action
repository, the official GitHub Action for running Trivy vulnerability scans in
CI/CD pipelines.

The tags were modified to point to a commit that runs an infostealer malware
before running the expected vulnerability scan.

The blog post provides far more detail on what the injected malware does,
how the attackers modified the tags and tried to hide their changes, and
how this was detected.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

