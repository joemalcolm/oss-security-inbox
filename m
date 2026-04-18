Received: (qmail 19817 invoked by uid 550); 18 Apr 2026 19:10:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19793 invoked from network); 18 Apr 2026 19:10:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=dxUY7tSKjXqYLSsy
	XkRmBzHxxJPxfgE6LmEKDElAp9Q=; b=ZL/Z2JgWwP7xqlVA3I5MvYA33xtBFyMn
	W1vjrxPyAFKLYV+xsG64cjRo9/chYf4AZcG91eVJiE8Ih/6fceiKeAzkfINpbGYL
	CDi3NfVjGEviyUeTUUYGyN6pBYYziWqlUJ+VtLRSL1UkU2TObpSaHQhN8y1xIenP
	2W8B5gPm8ODjJ8EwVZXq4/XX3kkIr8R4xfesyHsHklPRBOPH2T9rc1NGZrxwbYld
	cdOfcnnjkWg5e3rg+4NmHeXwMMRsWgoA4k/aGfj/JIoRccJToqJs71WL60+sSkQQ
	E9vqpblZVk4a86k1BcmLZreacRWHCJ5IZoReljlU+BaKeH9wkQUkqw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vvPXM2RXgqfS5OUbw1UeXZ+m3xbCg9WwKQNrUpRJJKOvX9ci5dt9B4k5M/RJTga3VOCTwMPwi+SQT9R6ahQwHLtnV/n/FjH4TDcSf2Z5UL153sh9Mfy/756uBNWJPBtB7LM6WHQ5pTKQIe4btdwcrXfuyiYzZntgRb9u2867E1t1X7AGA6n1HZ+HYGHnC4T0F6U+HKYdtFtIEL6PYHB3VioEusG9kuU3F27wfageO1dZlRGNrCa/GUDyajj5a9j/5OgXgx6XP502+y9VYhCsbWeoP0kVItqFFQZTkqqV0xLFO2WzbhgLolAPziwAfHyMJgnfTwI7/UyLOkqkbjwXaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dxUY7tSKjXqYLSsyXkRmBzHxxJPxfgE6LmEKDElAp9Q=;
 b=jRb4Xb1+wdHo/YJk/mp9RiyiLWwybBQx8liophFmO34juWckcNIqIMfB60ImmbJwHTdf18cWEgxr91tlzkKqhvqh7x49b3GXvdf6iE59Sk0WAZtwYNXvjNkWh5ULdSFB+SUP48oKdg5/xmea18AvO92A8lESNugCvRisWC9MOdp5mGjn0HQiTZdhf3LyToRgMkQMVfSAsuGgr7T7dVahlVwO86BCf1O3HsnvgVVeZCIZfL0iFmac3fsQuQm+fbqiZfdiLa5U0i7DXDWaFbl7xDIF9mWsMxB7hO9oBrDCCtxrMf5FG7bHezbb8cx24G1PE47p7JltFl5PJk7bMiR1DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dxUY7tSKjXqYLSsyXkRmBzHxxJPxfgE6LmEKDElAp9Q=;
 b=iCJ4jpx9xyuxqrxq7+5jMoBn3ik+PVy78H/PiI58dU+bmzCfXLw2a66tGyV2KZxe3IvUe5ASI4ANhPxxB3bX7Im52PIxIwMfKX02bHSFzKRNBd2zDDrGJszAwucOJQwIty8/c3I4BNhybLRfuzZAxMQDvM5sXiAK8TOabxNIsKo=
Message-ID: <40a3cde4-06d8-4c9a-8884-df8f4cd10910@oracle.com>
Date: Sat, 18 Apr 2026 12:10:17 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
X-ClientProxiedBy: CH0PR03CA0315.namprd03.prod.outlook.com
 (2603:10b6:610:118::15) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SJ0PR10MB5549:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c71c22a-f73f-4eff-957b-08de9d7e21c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	rja2U0FqBPGxhNU4wHos9LcALQsAVVsZVZOQSFy+V2H0KRkF1DVzLCfnffG+yw264ESV66/GwWST6Gmc6kKPRqchXukU8AKS93TDRh5pTxU4rpCdk7jK1uvmX3yNP0/inI36obyLmXh8K1FbyrQ1fQJwS3S3s5DDE0/N8NDcAZxCaZt6iewy5ofYgDYNsjc+q4+SatLQ8ZR1osG0IYAl11h00SVHMlON0iqUdLV8fjtozbI9Y6zMcLXMLkZW5KU+BVXTjwHELvJ77+SvTMigQdK2tvR5mTVHyTaZc0HyRUnpN+lZh7woI819t7GGqDveGZ65A6b4N9TJfrVSBw6P/GfIOXQLxSaGzATdSPEPIHphF3UmHtHf07tm/fB6E0lR7vJa+gkhlRzqYwwgG0mw+GmIamGkwj/T2T0BWmR6njaET+9LW7MznN4LWPs0Neeh9+vu9FpiV9Q6/7bjibUBX/2w8RcPm9N1aBCOJ3b5jxTdG76+ilVfHx8h/fi3jwizoTfBJc2KA7pnRkYYn7qKydgENyYgTSHG3IZd2ZgXw8I9t+82glXl7WIJESqKMp1M8fByuANKRwp8S0HZprAn2WQ6Zis8zSrTLni2xFw2PKpp/kCdpe+55C/dWlOdb0yYNCAACZOF7OHc2ARCVQDosQzb3dedTHQY+9XzMNNNQxjQ8XfnaoQXGN1KKGMI3gHR
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dmZ3WWh3NzdJdTBsR29YUW5uMjUyOU1qbmQwUWN4VDdjUWNKSWpkbEVxL001?=
 =?utf-8?B?T2hVS0locjlMZTRYdTNEVlBwTkRGNk8wajlEUExUNVBKL0FnVUM4WEFVNzln?=
 =?utf-8?B?MXpGWXd3MThQMHRydGZ3VUxzY3RpZi9hMXRWTjkwQU5WbDZISndJZzJ1VVN0?=
 =?utf-8?B?Q25EVjVNSmRJdHluSzJxVzBXd3krdlo1Vjk5Mm52QVJESlVIc3NLaUlCRTJX?=
 =?utf-8?B?Y3hRdlVCQmZ2KzZxVGg5WGhuL2RSYXJvTHJrdlFpWjF2cEpFaHUvOHFjNzRh?=
 =?utf-8?B?ZUUyWmlycGo0N29FbkljVkNtSXZ1TjZ1d1pTMHIzVVNlZlFueDZpd1p3b1ps?=
 =?utf-8?B?djJSdU84aGxhL0NTeC9NWVp4eTkrQmwxcEdLWkdPREdtelZ4VFBVTlZuT05L?=
 =?utf-8?B?Z0RsV3RQQnoyMDJlTmcvLzkzMkN1NDZhY1Y0aURuc09aWWRQODFkSkJ1ZzVJ?=
 =?utf-8?B?VTMvZ1RUdHc0dDNidU1TTXlaRXpLV2pkNlh0UGYxcC9zS0pMUGhmWlNJSGVD?=
 =?utf-8?B?anFhQ2xXdldReWNuVzRoSmVHWUZ3dTY1MGZCOUx1SzdQNzdqMCtlQ0pmekpD?=
 =?utf-8?B?cTROa01LTS83MXZUaWZKMnVCa3VHMzNkZGNyb21JL1ZBc0o2WTlBMmkxY2lX?=
 =?utf-8?B?N2NOL05IUGFtV2xEOE1Xa2JyN1JNMmJVNU1QMFpUNWxEcGt5a1dmaUtIWFNE?=
 =?utf-8?B?d0ltMVRVcmpNbXc3aFJuZXNTQzFOdVd5SjUzUnN1NC93NVZNRnBHMHlncW5m?=
 =?utf-8?B?dm14SnJGQm9odndKeGgxVStpeHh6WHFnVktIZ3pkUjZmSzYwMTBDSjFycG5z?=
 =?utf-8?B?bHYvdmlGRlZWTGREa1Bxd0VvcjUxOVBIV2hXWFlqN2I5N3NzNTVMbDdSYXpE?=
 =?utf-8?B?bE0rcElUY3kwcjZIWnVUazN5UXdFS3l0ODl0ZzNBV0VOWENlRWo2d3U2WmtV?=
 =?utf-8?B?WlZHMWVsNlllNEx0NGVsdEVNN0h5VXhTWWlZTXVnb3ZCdVZ5c285Q0JUL0pT?=
 =?utf-8?B?UzFZajdGNGU1UW5Zc0lqN3VsbXUrMHFPWlp5MlczSnl5a2ZaUWFuYTNJMDc1?=
 =?utf-8?B?OE8rMjd6bWxIbWk0bndSN3JwL1VJTFVBaXVNdFI2QVh0THdzS1NQUjF1ZURs?=
 =?utf-8?B?NlNGbHpJZkNZVXZ1ZFFwUzFXamVrNnNXcUQxMFhmNFRhUE5aQkFEWHJZczFP?=
 =?utf-8?B?UStCRFBFTGhIZXBONnNJKzkrcVFtNzBIK1F2WVpOM3IxbEpXOWdNam0zZkJG?=
 =?utf-8?B?OVJHcjdQekU5MmJJZXRyL29sUWwraFNWSmJjalNXN2xJQWprYmp1eTVzT0RQ?=
 =?utf-8?B?eTJKczNVd1U1M2RWVTFZYllxWCtTdk1hdmg0UFB5R2FTenJTRTJ0cjFEQktq?=
 =?utf-8?B?Vnk4NEwvNS9NK0txWDNaSE1PZDBqL3ZmT0FHczVKVFBVbVZrcXRyczhhZ1Fq?=
 =?utf-8?B?Y3N2T2V4eDdYTndFTW9rOE5WeUpBcFM5THEzY21SQkhiTSswRmMzT2hIZkVo?=
 =?utf-8?B?Mjl4d0pJckpnMkozeXBVUkd4dmNuQ28wQ0haeHVzelNNbHdzaHJvOVltVnQr?=
 =?utf-8?B?WXdjWnBQWFc4L0E1TzNZbzhuZE1kWE92dy9WQ1A4b3ZWV2J6RWlscjJmbnJz?=
 =?utf-8?B?VFBCME9vTHR2TkJIVE1pNWtPYS9RWFhFVnZ0MERrYThCOFZvSDBaZDAxSWJP?=
 =?utf-8?B?SzJnSVNWRG8yWUp2bXhCdlFLRlFwSGNKb2MxLzhYeWxsTFhreFNpaGVMVnIx?=
 =?utf-8?B?TWxMNkh1WXRLb3A4eVdyTWNRUGRqTDhjUWIrdVhXQ05aOEgxVVRDTVRjWnRQ?=
 =?utf-8?B?QTN3MDYyby9QdnRMWUJ3NVZPK2d5djUvdTZuMWFjQnVULzRoL25FeWpoVDhK?=
 =?utf-8?B?SysxTDZzdFpERFUyODkvRm1nVGlINHNQNnBhNFFRQ1ZuWDhoVEQwNzZ2SkpL?=
 =?utf-8?B?MytFYk9vYVo0cWt6UUNWUEdkcVV6MGtvYitWNzRPaUE5dHN3b2d4Mnp3U29X?=
 =?utf-8?B?YlI3dzBSM3VQZFVNTHZhWlFSOW04L09RUmswN3p0RFhvM1lGcFJZeXlISkts?=
 =?utf-8?B?ejVITG1ZbEtvYVhVaVo3aHJOMWNydllZa3BRTTU3Y0NOYmRDSGxKUXBadjhB?=
 =?utf-8?B?V0U0WER2c0pEbSsrQTEzaG9HdTF5dkJYQUJQNjRrcmFwS2lCZWhreVkzaFhW?=
 =?utf-8?B?WTU1eEhBQTdHVDJ6YkkzL3FEd29PenMvaHV6KzBRQk5DVk1RVkZKUHBRS0ox?=
 =?utf-8?B?aDY0TTk3VXZoME9NQnZPcHFnWG4rMnlFTmY5OXduVUo2R0VERTJzSElBVW04?=
 =?utf-8?B?QjNZQWxMbVgxRmlhTDhrcmtOSGx5SWVJTERLVVBxdndKL1FicS96dnZjcDlj?=
 =?utf-8?Q?2uBn86YLpiqe0JTM=3D?=
X-Exchange-RoutingPolicyChecked:
	pqIVgWxdRkrQh+EA44QVhKz6NhhKNM9W5qzZZ/WbS946tFfngaqtBTqmdfdxx+8suUs+5C4EVaYVqEOSPafBK174um6Sqgr1Nqp0+IdD5/S450ZC77pmGA93a0jt9uhpiblsh/eLCzjcnk7xxaGvqxHUpknyeanmLk1juq6pvK9tZW5eQemNrZPnO8VzVMCbgYx7ERJ34/Crgi+xX0oZ9v104Zn6ggna1ep/FYHMMp4b4No618oX6YVBDB5LYZwltaGs28WNN6oG/UoQ/jPjhJ74EqulYCoSKo78yrx/hFBeoy+c71tpLnbSu5MstbMzIU+TBNeM83cP4URR0MLG9g==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	3CtOXEh2UFzx5YNfxvzjNdzsGalQQidK6gKv48jrpP8sTvJpZlpCwY1JySK0zl5/+Fc5U+dG+poFn5rHOSWxepyWPpYp8U+RvDEpQphajDPrhtL+FU2pM+t+e/+dq4OCsVlZbjo9UZYbItFbA1P9ZWL8oVLa5E/r94W016G4kdnHMAMcRc5G4AWXtv42KNcEqCk3JCzSuDDUuvZwmMcX+G4TxuFDKGFcqPbL2HTOUEO5VP6ATWtEmOzpe4lJ5Q9ODn9VS+lxZTKnEpLZTjYIi/efg8vH7dUccUHjhsJlqin0J5CTJAcbJl4o1zg0iGIzJIjspxZkwNYTIQzVb3NqpByNMbOB0P9vX6VOYFFAh/RHTMYVaWpEjfQBnQZeI+2AMrh1Zhd0HLR52JahtWmVfP0tWFX6vHJ5Nla9KpO9hiGVL0KY397G9rzUWC+VHiwrgkBIbtNeb1l5juj9pynqWnn4pdB5b4i/P8y2BXyAUt8R/VNju4+ySEXjMcbzI7KED3W7uuhseeJCrLnMdfsDxfPv6xSWC0paqgoQteY6khp0kpyZhIZZeB6SBsKReiyjrMQpwOli/s0PTsAs6jO3ZKuyGEKABszCXR49fVj1zgo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c71c22a-f73f-4eff-957b-08de9d7e21c9
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2026 19:10:19.2705
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3rJRiYqf4/Q/F84GPiRLViklQ17O0v2Ci8uQsrCWqi4sl2TVve4p8xERbbIlQnaO98P11h8om9K2Xtg3D1jp2Ow0eJDbWtg+nOLpqG2Rrkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5549
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-18_05,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 spamscore=0
 mlxscore=0 lowpriorityscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604070000 definitions=main-2604180193
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE4MDE5MiBTYWx0ZWRfX76rCgjV2xFr1
 +jufZ7JfPx+y6btjDjOimt+UMSv8N/B3m8lsR+UmnIWetOlp8fyeYdQYgYkp5Jglnyh2U6VVF82
 BLHrd0SDsHquc+yGLCsJhc/ekPdRDtPaa2mMZwnhakt3Gx72JlgGMUZhPEhBrrlxHFu5SLkt6LE
 z4lJlU5B7LzWjYDT8RLDmC9kdsacPLWEXG0xnezEtMtgUJz4AJ0Y7WYoa8mvJjuv3C1x/mAaFnI
 snK4RCu2s8xHfrkSIm7xsas2M7VWrEuFx2tL3OTzKAUjeBPW4iwh8Egyu/r4i8/sM5QYzIfLEiz
 pv0jhv4WrqeZszouyacTUQ3s9UPK4KHhIwbEvi+pVHTJ5eNU0YQ770cM+KBKlwv7I+mXMvDLz8h
 aqMp3yyKiTNaQnHLNKhZbur2l3J4v/DARXkLRngPqDWCdgy08l3NUcT2wTsq+hUitPBun0yCJWo
 Rzx8fLx6fC2A+YFfoK0YrXb64ZtcxkigxbJcb91Y=
X-Authority-Analysis: v=2.4 cv=er3vCIpX c=1 sm=1 tr=0 ts=69e3d71f b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=x0eKOSpe3m1H3M0S9YoZ:22 a=2oiMM_oiAAAA:8
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=q9-k75tXFbAhc7l0awsA:9 a=QEXdDO2ut3YA:10
 a=E6sk8zvZnCEyYBON7110:22 cc=ntf awl=host:12292
X-Proofpoint-ORIG-GUID: 57TV9KWwbVR4rn_xV-XEF7W-Sjp92Bau
X-Proofpoint-GUID: 57TV9KWwbVR4rn_xV-XEF7W-Sjp92Bau
Subject: [oss-security] CVE-2026-41113: RCE in sagredo fork of qmail

https://blog.calif.io/p/we-asked-claude-to-audit-sagredos and
https://github.com/califio/publications/tree/main/MADBugs/qmail
disclose CVE-2026-41113 in the version of qmail from
https://github.com/sagredo-dev/qmail .

> qmail-remote RCE via DNS MX Hostname Shell Injection (CVE-2026-41113)
> 
> Remote code execution in sagredo-dev/qmail through shell injection in
> tls_quit(). An attacker who controls DNS for any domain the target server
> sends mail to can execute arbitrary commands as the qmailr user.
> 
> Affected        sagredo-dev/qmail v2024.10.26 through v2026.04.02
> Fixed in        v2026.04.07 (commit 749f607)
> Requirement     control/notlshosts_auto enabled
> CVSS 3.1        8.2 High (AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)
> CVE             CVE-2026-41113


> Our system zeroed in on a feature called notlshosts_auto that was added in
> October 2024. The idea behind it is reasonable: when qmail tries to deliver
> mail and the remote server's TLS is broken, you don't want to retry TLS
> forever, so this feature automatically remembers the bad host by creating a
> marker file named after it, and future deliveries skip TLS for that host.
> The implementation lives in qmail-remote.c, inside the TLS error handler
> tls_quit():
> 
>     sprintf(acfcommand, "/bin/touch %s/control/notlshosts/'%s'",
>             info->pw_dir, partner_fqdn);
>     fp = popen(acfcommand, "r");
> 
> It builds a shell command containing the remote hostname and runs it with
> popen(). The author wrapped the hostname in single quotes, presumably
> thinking that neutralizes shell metacharacters, but that protection fails
> the moment the hostname contains a single quote of its own.
> 
> The obvious objection is that hostnames can't contain single quotes, and
> that's true of host names in the RFC 952 sense, but it is not true of DNS
> labels. On the wire, a DNS label is just a length byte followed by up to
> 63 arbitrary bytes; RFC 1035 lets you put nearly anything in there, and
> most recursive resolvers will happily pass it through. When qmail calls
> glibc's dn_expand() to decode an MX record, some special characters get
> escaped, but ', `, |, &, <, and > come through untouched. The net result
> is that partner_fqdn, the string being pasted into a shell command, is
> attacker-controlled via DNS.

Further details about how the bug was found are provided in the blog,
while the github repo provides PoC setup & exploit code.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

