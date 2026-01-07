Received: (qmail 20379 invoked by uid 550); 7 Jan 2026 02:21:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20335 invoked from network); 7 Jan 2026 02:21:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=2y6uAA90/ynkfPkB
	46winUECkkNqeHAEUZrAofVVWF0=; b=cB6wQPc4UVxrUoDkFBID0J7kO2KiMVVH
	L1/pH0yqxdNN6VdHerQ/n4dFaLbxonTkxFfVh1WCxyxk4AD5a/ZzkuET5s4lubty
	frFqO1QOOBREC36HELPXigYj8dGjwm+/XUsHr/myLJzhFcaGmXln5lgBPp4nNr05
	hKd4VZjmUqucbKrwOA4RI8O5Sn41R9n5Sc6iIDbeQQ9S6ZHmZSEl+Qyg3uwxUjoQ
	AVkPsy2orGZMNrvt+Da60uxeqiAdaLCywu/PsebmgTZvLXdP3JlttlhS8M88SABp
	l19xp6FYuy4p80NhPiBGDWrIAKFm3+AqqT1hAYvUK2VUWjLXxFGf8g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qLfmF6ZhK5sNtLXsVOeW4a8BbNFSHnE0P4uH+fj3neAzSL5mFcSa4n34ve6fqBaKjoe2d3TCRAXvNNZYOWHWQEeiCsPXOY5qJO3AJ8RluAVvcmk1Rj8bWTXMTEibvc2degiiRgPBgsXoCKpzjtWuQ6tibcI70/H3F4l3iHuhgnuMnS83T3taOllpy+2C64E/uOh7WVH3l6MH36GX2BCxso/Y0+vSdrK5qbsQQpRs/xu2KtHypH1AE/XEPxzCHU6N78bIFsrXQAE+33MJAOv/7rdgvKbGpe+FYvxFnYR3D9udq2HhPYKrZA71Ew9ud0TixV3iMA4Dk/1IcerJZoe8xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2y6uAA90/ynkfPkB46winUECkkNqeHAEUZrAofVVWF0=;
 b=fMBRjQMCw9NDTJm4FHESD5vAvQ3pc1tts32WWN+l3FUxtsM4jDPNaUncY5e+RtY21BpXerg72U/fBF3CYaXdFgWFEgRnHU7My6Hq1q4evdACOORynEJeafscbIl7LTtS7Y3S65iPlfoGzHJSGyPoK9JKbMaCKZVqsNdgKycJ3cUwWMVE6Zy34bG1CkhKwUqY+7tFq6qkGZQpelWC1ldVMSYCgG3h6MGIUzeewXvquF2YDqmDzOI0HEBUrBObVk9lx+7+fmMDqYMjH7d7p/e98uVQWXbeG+THiKh9X62v04oNPPALyp/HdQ4dwmuWFiOQRUOhBbDEbqp7y1jZzbM5Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2y6uAA90/ynkfPkB46winUECkkNqeHAEUZrAofVVWF0=;
 b=0JPvfaGUUIPeeo8IAH1PuaYNLUzYl3msvIijKVLWnpKswpfQ8QOPDuh/rjqvobhZQY45TQJMRSmbRbncBtu6YKuQOSczZwXS3GnkRUgNt924xguHKGr939c9X2+cyWQA+3RuwQJlqwk6sqXC9XPo5WXLB/nMLtTqlyxxIt4zFww=
Message-ID: <e5d4935d-d2de-41b2-bc8a-f1c63e52fa66@oracle.com>
Date: Tue, 6 Jan 2026 18:21:38 -0800
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
X-ClientProxiedBy: SJ0PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::10) To DM6PR10MB3403.namprd10.prod.outlook.com
 (2603:10b6:5:1a3::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR10MB3403:EE_|CH0PR10MB4969:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d206ba3-0cd2-4d06-8ef3-08de4d937de5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?amp3cEJ6dWNJczdkQ1JuUmNhTVdxc0I2b0g4bWEzNWNKWTB5aEhHS05PRitW?=
 =?utf-8?B?M0c3MU9zQVZhREhvdDZYNXEvZldzYjNpdlFEb1BmQ1IyZjloYVR3bHErYWFx?=
 =?utf-8?B?NExMMzkzcTU1bys1TVZ0bTFkZmxiK1U4R2loUmhOTTBoekpZNllMSFZIc2dN?=
 =?utf-8?B?YVFxbURhaFhLSkQxczJwdXZGNDlJdG9FQzVnSDZwYUt0bDFvT0FkRHg0TUUr?=
 =?utf-8?B?Y2I1ODlMU2hSZnNST0I2R1BTRG9ZWHdmdmppRHB6U0xzWXRraXVHMjMvTzNV?=
 =?utf-8?B?N0J1SzZJYVJqOUUwaWlsT0tBL2JzMncxenNaL21ZVEtFMkNCUkxlT3RRd25s?=
 =?utf-8?B?RW9zWVBFT2ZxSjlBR0FZamEzem5BblU4OTBsVVo1YU9DYnZSTkU0TS9FOHFM?=
 =?utf-8?B?M2ZWNDVUSEpRaERsY1hoUk1YeUYrUXdET3Fqd3pVcEJqd3h4OENET3ZkYjZK?=
 =?utf-8?B?MzAwWjlEa2QwM252cU5OOVpXempWSnQzaDZTZjd2OXp5WEZUZnhHRy9EWDVI?=
 =?utf-8?B?Wk5MMll6TUh6OWhhMlhsaUpjMXNDOGNvcTdla3RzTzF1NUxLN2VGaDRPOG9W?=
 =?utf-8?B?bG8wK3AwTndKMHJ6OW93dElNcjllMEdsSG05WG9DNlNIVCtyRVFzaUxtSjFN?=
 =?utf-8?B?NkZweVVEa1ZxMVhIWlpmVGVwZ2ZNUTU0NXp2Q0k2YzRuTnI4MGdVSUNkRjZy?=
 =?utf-8?B?bjhTTnRodkpUR25IVElvRmRvejFIdE54cDliM2ZNbk9TaGk1VS84andXZklP?=
 =?utf-8?B?dkwxR2dQUlNBb3ArUnJSMXdJK2hXWERjamxHMklMNExFNzJscUlBSzVqRm5E?=
 =?utf-8?B?QTQrVE9NTkFtVTd4QWttY2lUdTFZakNRcHc0cWl3ZU9iU3dEVG5QUGh6QTlC?=
 =?utf-8?B?NHFBME96amZRRGRsZjdjZnRmZWhMWWs2ZmdRVGowdThUdXFVWWxTOEFPRjJH?=
 =?utf-8?B?MEFIRGt3c0hrL2FuUHRpMnd6TTRjczJacHljVm9WZFVtRnBldE1LYUlGMnli?=
 =?utf-8?B?aHpLZGdqZlhUSVVaRjJuK1IrTHJtUE9FY084NE9WMzYyWXdRcVVQUTJadEtS?=
 =?utf-8?B?ZFNIOFhCbWdCenJTWi9aenZBdWF4MERsMkNVY1A1YkVRZDVhNWY3TEdCcHZy?=
 =?utf-8?B?eUhOOXVUTFJhQlRleU5GVzFTd3ZLVS82QkhYUm1jbWZ2clRwQ05raEpaNE10?=
 =?utf-8?B?Wi9raGVoSHlRc3FEaDBsR3I3NnhXSGR0N3RnK2lSaS9DclBXcXk4Z3ByOXQx?=
 =?utf-8?B?VW5SYTA3WVhoWlQ2SStCNW1yczduMkRQMWIrdFJ5cSsyWExIM2xncGpCZnpY?=
 =?utf-8?B?MUk3Q0R1T3lkYlN4b2ErTXJsV0l2ajdkSEFvOC9RL1pVbDRaVUd1L0NKM1dD?=
 =?utf-8?B?YTNKR2k1UjFtdzVBWUY0N01FUVBMMnhWN0lJNEtnSzBXRm9jVFU5MVRGSUw2?=
 =?utf-8?B?WmNkeStmeHR5V1Z3cVVBRmpyamVPTVVCcFQyb2tXUmdTLzZ3N1FFYWNHb1B5?=
 =?utf-8?B?QjVOOFE1KzdBTm5WemlXZ2c2M0QxeVd1d3A5OUlSYVd3WjVqNmNyUUdYNG5S?=
 =?utf-8?B?QXMyRVJmZGhhS1ZGZmdVaTM1bmdYbkQ4cFZybmt4c3lwaVVNT0dJNkh6eG5K?=
 =?utf-8?B?TE5FT0RxL29qcmVVajM5UlEyM0VzcVRiSGowVFlGWW1OWDdYVUluRGgrOVBC?=
 =?utf-8?B?T2YwaHNtcFhXclNnZ2JxSVcvTm9YTmdzT0VFYklpYTdHUVgvK3VhM1hVUmtv?=
 =?utf-8?B?WW80VTQ1L0hJaXc4dkJZZWw2eWczVytnaE9kalJOdy9vc1QrUW52ZjBhN1pI?=
 =?utf-8?B?dEtTYmEwaU5Xam9kTXptc2k3Mm1vV1NQTFJTdWdxRnVhZlpxRTVZcUtpL2dV?=
 =?utf-8?B?cklNbWV6VzBQRnl0UVd0SnFrTDNHVXJWcmJwS1NVMVRpUzhXVW5QWm9reWdl?=
 =?utf-8?B?RGJnS2F2dnM4b3FPMENwczlpTERwWVJLRXdXYXVqMWZQd1N4UHpjRG5lbk94?=
 =?utf-8?B?STkreTdIblR3PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB3403.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bkdiQ1k4WkNRNUN6enZtVWJ6QjVORTlDOEdYR3VOSGhpb3U2UE1QTFliellJ?=
 =?utf-8?B?UjJ1VjRxb0ZUUGxqbjVkbHZ1ZTZ6aFRQYjlDRVN3SEUwbkxBVUpnT3VrWFlz?=
 =?utf-8?B?NU5MWXpQVHc2cXJzRzd1STNZYWp5ZlQ0OVZFZXpnM1JBTEFYb2l6a2xKVm10?=
 =?utf-8?B?QmRRT0lZY0w1V3NHV3JvbndNclpiaWg5dCtOdEV0a1EzV2drQVZ1d29LSmEw?=
 =?utf-8?B?bE1BTS9Lcm9CcnlDVnR3SG0xRHlqbGtFMlVmV0RFckFsSzFKOVFvZ2ZLYlQz?=
 =?utf-8?B?L0gwcDBoWjhuVWhNT1V4UDJxMTBVNDVKeG1WNWk0ZEFXa3BSaFFFWVV5WmVx?=
 =?utf-8?B?OGtueTRaMGc1alRkZExMWmRTOE5FZmJFMHhCVUxGQ0RWTzhDM21PWkFaWmoz?=
 =?utf-8?B?NU9oNStEY2M5eXR0VXhYSVJRTE9TRmZyVm9YUkZVUkduemRjNkJHelhpaW9i?=
 =?utf-8?B?cDQvOE8rcENVVkcycTg0K3dYbmJic3BNbWpDdVNrZFROdHF0aEU1elExZFdU?=
 =?utf-8?B?WkpGTVZTSWtQSXhkUkFRSEdKTjluaEIzOVBIWFZkTEdSVElhZW91NDhwN3Fu?=
 =?utf-8?B?dkgrakE5UXMxZVAwZUdsZ0xQVHA0UHpaT2Exa0cvTDZ1d2tEZHJ3RGRqbDhX?=
 =?utf-8?B?RFlPTlRWQmRkYmkrRi9MV3NYRHdTeTBYVmNyTGo2QXAvWkZRRmJzazVrSm9s?=
 =?utf-8?B?d3F0dVk1VVdMZHRveVlLRWduMkVOMlg5bnpHNDIvN2c3YUF2dmFxc3hOOUxt?=
 =?utf-8?B?VDdTWHorOW1kQzJMUW9Ic2J3a2dpcXFFVlU0TklTY1FSVTdKeXVKYWZ5WXRU?=
 =?utf-8?B?RzVvQkVGUkNlcHhKb2xXUThCa2phNVlNM2N1TGxjMFI5b003ek1Xckxvc0tI?=
 =?utf-8?B?aTBDSWZPN1lXWDRYb0FybDFXREpaVGFMbnRPbkZDNkZTNWFuSEJSNzNqdndq?=
 =?utf-8?B?cjBWUElaQ24vTzlBSGprdjZFOWZFSkJpelVEWE0rRy83K1M5MlhtdnpyeC9K?=
 =?utf-8?B?NEtmcWpwVCt5bVphTnE5WXk1Q1FkQk91cFQ2MXd3R0Rsa0pFMGdVS3JZSG80?=
 =?utf-8?B?WHRvWGdVSXh1WlRoUlFUUVBrbDFRVUNXd2I2dXFqMEp2RERzdTRoMU54VnRE?=
 =?utf-8?B?ekhVdlFxcUVpNk9oS3VobVhTS3VQZmJidnlXcFdsWEJtUjR4WHQrZmJMckJH?=
 =?utf-8?B?WWVvcnNwSkplRmdBSzhHcWV0blY0NzhuOFZvTDllTGVYdjJNcXZLamFQWFZt?=
 =?utf-8?B?TXAzZHVreXRkYTd5K21Od002eEh4Y0FDNVZja1A1dzhOa2hCazBmVkhuVWFN?=
 =?utf-8?B?VXMxblhYMU5TbTdrMjhjblp1VU9OMzhtK0l3WUNzc0RldWRKZzNpZzBTbVpC?=
 =?utf-8?B?dzFGQk9oTVBPZUppemVNZkVxSzBCN1hjKytCL1JYZ0s4eU1GdWhYTXJVVm1z?=
 =?utf-8?B?L3hleE1EazhkM2haWk9wa2VBYjBiWnJuZGRmSzlCSStCRFAyNm9NVWc1TFp5?=
 =?utf-8?B?Nlc5bDU1d3oxQjFpSk1wQlNLeTdjZGNnS2NES0I0VUpQRmZ1c2dmUWJOeDQ5?=
 =?utf-8?B?V3BrMmo5MzZBRk5hZWw1dHRTRUd3elJsak9wZjJHWW8yeUJNSVBzR05ZcFRP?=
 =?utf-8?B?eEpQUkhNdkVyT3R0TlBNdklGNHRQOW5QUnhuazRvOGRxTDBwRkptc0w4bFpW?=
 =?utf-8?B?WFVHOVEzUDYrbStzVHJCa3FmOFAwRUZ3WFV4eTkwUVN2cy9xSTc5OHFxQmNy?=
 =?utf-8?B?QWJFeFNuSXAzZFc4a1pOT0pIMVIxUEcwZExuSWNjaWhoVEZHSU10QStXNHNB?=
 =?utf-8?B?RER2QmNzYVp1RTA1aXZxcmxBV29TSUJQZ0Zncy9IOWlaVUgvWVN2T1hJdUJU?=
 =?utf-8?B?UWtBWFRaalM5bHBCcWxaNy9ZNDIzUUFzSGdtNWhBSU1MVjNieTBxNUZLbWo0?=
 =?utf-8?B?WGlHcThVNEkySFZkWkRUVERIWDNqYWJzRXNWWk1YYk9nTGd4ZFNBS0pnNkVJ?=
 =?utf-8?B?Q3ZsRG45WlJrWjB1RWt1c3NJbmZQUmhYVG5PYk9vNU42THppWlVQM29pdVhV?=
 =?utf-8?B?Y09xcXVxamh0a25iamNOU2w3bHFXNlNaSXh4Sm45NFFraDdyRTFBQ09UZ3d4?=
 =?utf-8?B?YnErNXcxR2YyQWhaVlN3Q25TTHpVQUFYWEhteWF3NUZBUjJaY1VORDlRekto?=
 =?utf-8?B?Y21TdGpMN0xsSkplYjJubytJdS9GdkFSYUNOQ0M4RjlMRXF6QlQyeFQzd2dG?=
 =?utf-8?B?bCtSeWhIWUllRG9jRG16eEEyKzZGbWk5eTZLWFJUR1hsKzkyRFZieDkvQXM4?=
 =?utf-8?B?cE02SlRXOWhGam1rNmRldmJLZTVmOG0yYmN0ajUweVArWlNMWUVCQ0JOcWt1?=
 =?utf-8?Q?64Kwlipfch4cx0Lo=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	nFh9kT47l6Gp2n49b5ODasVlYX7eF2evWcsABXZGf1XcqcJnQSA07Ha/oKI68etF+9G5tVG97viOgI6Lm/yYmvjsjfmnSTCMHYpYd460BIMrud+SIxIQvUyeg3y6X8GjvJZCjS/+9uXIHmO304cAFkvW4F8eTwHDiUEYDmVPFSKeKkMtz00sZbWdyB5QW2diWAKp9e40pOecdRUDlJuiH0//HryBm4CNOC8wBCwVLN5czny/jg7lb3OkwHI2RkXsvmWm3HNskkMdBYfoJp35edej59LzQ/LLEXjXiWFT/+PYCi9Nu1RSNJbIdVwHCVUm3snRkw0jl28X6aTvG3rSNKaQkgyEag4TLSobmjcdjJ+2PBMcd3Lxu1Jskbinv5ixH70qmykUIj+ohS4PcbRyl850cBzq7PNfP0vs9ER4sivQX1rk7hh5cppgCQ8fGGGsxiHxD6JHQl39O6jSnjqqbQ/z1cfg47fBW1WttCro32s1oqhRXCf2KW3TVxwe5me4ni45mF8U8e9l3fxRBhdB3zkzw/s3KZXWZcw+oYFUPM80qt/33B6q3qnG4c9sLaNZ1ZeqcC0XaadtzOcjWB4qViO6LFKN4ZDW6n9+kB2/iRc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d206ba3-0cd2-4d06-8ef3-08de4d937de5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB3403.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 02:21:42.4974
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: brZazRZ53c/keoi2aq9v9Qn68CEqhc3D1DrtfqL3i+XUN38iLplxP4KevQjZIHer7GWXvop84u/pEgx7ZjetGc6aDG79mj6yVJm7jTNDoFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4969
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2512120000 definitions=main-2601070017
X-Authority-Analysis: v=2.4 cv=L6sQguT8 c=1 sm=1 tr=0 ts=695dc33c b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=mDV3o1hIAAAA:8 a=20KFwNOVAAAA:8 a=yPCof4ZbAAAA:8 a=IRrIkgizMupcx_Wt7UoA:9
 a=QEXdDO2ut3YA:10 a=-I3bGmOknesA:10 cc=ntf awl=host:12109
X-Proofpoint-GUID: qpUo--OviSQJtY05Rs0LVeTCcrXABzIh
X-Proofpoint-ORIG-GUID: qpUo--OviSQJtY05Rs0LVeTCcrXABzIh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDAxOCBTYWx0ZWRfXyxms9+KmIMoj
 UjYXJkgxfybRexEUbLhW5eFlRO8pwARwwsQa5YfFg1BMKYVCA1SosY2VL+pxUjckke5693P7JyH
 diJWXWMzfFC/UhAW40rNim6nHW93UzfjBGrjOYAx3DCoGkZQbNYHoG6zAyEPWj24moHo+jX4o35
 C+t1NkqdcAgOLqid7Ldtl0HzjiFOQhTZVuHgmgXrZXp4418nPt4KXnsH0LMv+l4tgyDgRc6set5
 fXEb6GSBvu+cycWgEgT9pzIFWVGEW4X+dFPK2YQyR8VkZ4HPHSfN+fayZIuZMyuFt3K1laYlDgX
 MYMxeHEMX6g9Cij/QHcJ6SZv90DOVpkFuTHn2UpHgnCkQZZxKy8eFe5GBYhzzIVKKEnTCctUAJf
 w3J2uEO8SqytwWV5TEsXobJWS0tZfhFohjDfU37dFiSHB2FKfkrSvfuITAabIecm1VtZgswg/XB
 +hgY65zLLiuRpibfQJZqcJuZUxfJlc/2eJGgkRg8=
Subject: [oss-security] wget2-2.2.1 released with security fixes

https://lists.gnu.org/archive/html/info-gnu/2026-01/msg00000.html announced
release 2.2.1 of GNU Wget2, the successor of GNU Wget.

The announcement listed these noteworthy changes:

>  * Fix file overwrite issue with metalink
>  * Fix remote buffer overflow in get_local_filename_real()
>  * Fix a redirect/mirror regression from 400713ca
> 
>  * Use the local system timestamp when requested via --no-use-server-timestamps
> 
>  * Prevent file truncation with --no-clobber
>  * Improve messages about why URLs are not being followed
>  * Fix metalink with -O/--output-document
>  * Fix sorting of metalink mirrors by priority
>  * Add --show-progress to improve backwards compatibility to wget
>  * Fix buffer overflow in wget_iri_clone() after wget_iri_set_scheme()
>  * Allow 'no_' prefix in config options
>  * Use libnghttp2 for HTTP/2 testing
>  * Fix WolfSSL build issue if SSLv2 isn't built into the library
>  * Set exit status to 8 on 403 response code
>  * Fix convert-links
>  * Fix --server-response for HTTP/1.1
>  * Fix anchor links in README.md for Gitlab
>  * Fix html examples in the documentation
>  * Improvements on code, docs and CI/testing

The first bullet appears to have been assigned CVE-2025-69194:
   https://access.redhat.com/security/cve/cve-2025-69194
and the second bullet appears to have been assigned CVE-2025-69195:
   https://access.redhat.com/security/cve/cve-2025-69195

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

