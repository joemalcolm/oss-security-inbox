Received: (qmail 5526 invoked by uid 550); 10 Dec 2025 23:18:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5480 invoked from network); 10 Dec 2025 23:18:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=lLPLFxYl2PCzz1Xh
	gEhr/Wlk3wZUubQyagAWdrRjbgY=; b=mjcZTp1Q20Hzp9C8aClK8Nmx6aXlAeq+
	++KhqbYPwu06/U4wnPfl4ng+U9w6GtA+pg6Tf/QxEpHtKXeimr1dk8nQmbqAlFPm
	XI+TER22BYeuxLOIobXUGDfJ0iQp5eUuu524+GwK45yFHlw2UgXVT4QChqmp6LQs
	IZ6oyhRGeht/aa+YMJdWraFGfAZKTFokAhOBWk5sVSRkxW1WxtdTFUkRJiQhhQYp
	znngCrssDL4SREG80HuE7Aa2ueHuCacwdr0nBOQhfm16E7hL36aFLJiOl1hoFCNf
	Hi8+4nJBW5+E73QFWXNPRREWW8Zb3vVAqtWoF1WgDjbMoNuJ1KlHdg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hooQfPH+ht9MpYrQ+K9RpmLNE7bG8u08J5L+MULC0Czy0RxmEAJZVlW7Qz/qkshms3UL8YPsHr7e674AsaDuZ90pQnNSKcuIWzh6glOPFksJLT+HdRodKv5Rf3esmjwGzAKOEWNG7138DoowcuojnCbcDjeft3YErQbTH1xmfO+pLW9JTWUXYyLNTzQLwkg9qZ28rXqbpSqW4U8voG2U81WEbNRySubJVNUAFqlGJwCUjGcDJyd0pU5i2nwV1MteKVrT6piw536N9gSMRF8sirOJkTNrP77D9BmUEeg4z5HqN6QxAogpt8WK3RzGnUSGTyb3/88C9rxB3A8wnzGJJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLPLFxYl2PCzz1XhgEhr/Wlk3wZUubQyagAWdrRjbgY=;
 b=OUEQ8NBClxFGim5MlcYmzDW/LCtwrOCjdktSDJVu/jKcWMn7JrjuF8OhuNrY49xfPFRGqh6/pR9ynESYcWkGgN+LIV+/dxI+AqulTAbg8DoPGiHcVmsKI1czLHshmAT5HuvZKDlraz0vdeqs7Veyq091OJyTwSbUn+7w/KcySxtp+axsrKVyHpNAO3nMZPp1Vv4hoRYPaeP0NlV4CbZjhsEa3uXa2NL634gBsvBb0F1HUho893iPwobfgoJOkgTuLXCVyFHUeks0Q+PILOQ9v/sBcNOQUJSrwTst81q6Itfwx7ym67r0A40eeXD5IVipgep+ayiDwgtRwVLv0Jn+AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lLPLFxYl2PCzz1XhgEhr/Wlk3wZUubQyagAWdrRjbgY=;
 b=gJydeK2zzn86DYLQBsaiHEUWIjIETycsDDliOAPu9V0v3OWern16Z9HxWF4zI8gR4NvxD4SZ/4lbY+Q08K2EAAZUmmk0paTWzuBsdeapW2t8mnQqqlsXzLh+ITTc3/PJx2YF2PGwHIvX/uYb6kFUZljDewulIOZRsGKkahPdCF0=
Message-ID: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
Date: Wed, 10 Dec 2025 15:18:28 -0800
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH1PEPF000132EE.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:518:1::36) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|CY5PR10MB6011:EE_
X-MS-Office365-Filtering-Correlation-Id: 94556300-cc0d-4c0e-23b1-08de38426e1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?czdKajdQRk9UcStDVWw2NHNRRFZ6M3h5bm1xaU5rYjFOSFRYQlg5TWp3RjNN?=
 =?utf-8?B?bFdYNUFyZm9BUXY3UjRsOFhoeTN5V0FyT1hxWjFLMzVBazBVblJibG1BSkR0?=
 =?utf-8?B?a3RoK1k3dUgwMFBCZ29NNFBQbmRBTTRxTDZhaVhLeGVCY1pValRxNXJiUmQx?=
 =?utf-8?B?QVVJUHpqRWI5TXBmRXI2RVozMUdWQWw0bVpadm5vNUltcVB6OUxyZDVyVElV?=
 =?utf-8?B?UGtwckk3aHIrRkJGTlU4ejJFbGVkVzdwTXNXK1M5US9RaG9DanpRd0tiS21I?=
 =?utf-8?B?NU1TYmV3M3VrUFdwa21UNkM5Y0p0S1Uvc1NhV3VTWlAxVW55LzhVRzNhbFZZ?=
 =?utf-8?B?UUJzWFZoZXNoSXdpdHNSM1J2TUxUVjNZV2twOUJuUFp5b1JkZGxxYTdSQUNB?=
 =?utf-8?B?d2svVGpMYVBzYjA5L3pHYTc3SFdwRFBOKzdRMzQrN3JCdkFCZDdGTGxvd1NO?=
 =?utf-8?B?cEpweXRVRVBmU2RwQ1hBeDdlc3IxcDFCd0JPUzZwUlNTL2tETTk1UVJvM0Vp?=
 =?utf-8?B?RllsT2tnakIvZzJIWGlvVjZJYko3VnVja3ZkblpoOFpIcDdSZjQ2c2xxa3ky?=
 =?utf-8?B?SzVlWEdJQ09kQU1lODU2TGF6MUljdTJzQmV4ek5ueFlERDRJbTI1SVR2disw?=
 =?utf-8?B?N1JCTHJTeWNCM0VZZFFNbXNIeHFWazVHL252U2xvVlRCL0dESThjNnF3MTVt?=
 =?utf-8?B?K005dVhuYk1wMzVVOHN3NmE1Qk5ObjNWUmhLV1hBTXk5VCtMRzNTKzNiL0k2?=
 =?utf-8?B?UmdVTUNGNE1EMi8vMUFsT3dNd094b3phVFI5SG8vSVZHSXU0dFlEQVNmRU10?=
 =?utf-8?B?TzJQNTBpcjlseXllVklmanZXS3BOeGZUR3NvZzJPTFBidnpiS0dtWkpVTVB3?=
 =?utf-8?B?MGJxQVhhTzltbGtmRXFWNVpTMEZMMW5pMDg5cDRxVWx6alI5WlVPYlZXTXdr?=
 =?utf-8?B?VFdZM1RRWnBXa0tKemN3SUhtVkxZMzRiU0JJWTUwZlpVVk1DRTNYaXZ5VU1m?=
 =?utf-8?B?MGhOZHNRRzNqVllKOFpJc29yTHdIN2w5Z1JudGlrY2ZhT20zNHFYd3N4MlEv?=
 =?utf-8?B?Yi9mQnZrWmdzb29jNm1Xb0dyUWlVSnFNU24vU3dTREpUY1dSWkF5aE5lK2gv?=
 =?utf-8?B?WmQ4ck5EUHdyTjRGekRwaHM2SlVUNFZON3Y4TDM3RXhLOWl1eXpvUm03WDhn?=
 =?utf-8?B?MHFCdVBoZHJHaTJVTlFOY2Y2cXpOd3FXdjFiVFhxNlB3L0lmREw1YzU0REJk?=
 =?utf-8?B?QkZIQkJpL2RXVlJrOUJwVDV4MUd1UWJrTllZYVI5dHBSOU9ZZGRqVU5TOXow?=
 =?utf-8?B?UUNyOU4xaks4L0lObS91VnhSdnFwbmQ4UUpnbkpwTE1JK05EK09lQ09Tb3U5?=
 =?utf-8?B?NmJnUG1Ta29jQVdPb01UVmFLWmFuRlFtNFBNTmxYQ0FycTNwT25XUWxtYnQr?=
 =?utf-8?B?OFVFREtseVdXYWdoRVFQM3dQcGJKUGhDNjRMR3NNakdjQm0ydXV2TzZqOENs?=
 =?utf-8?B?VTM0aWx4YjB3QW91THJaVncrY01udzBjRlUxbmFKd2lmc3pwTDJ5T3kxWTlp?=
 =?utf-8?B?OXAyVHZVeW1xSXFIb1B4YkZicCtKZ1VseGwvODFTY1RRTDV2Uk54U0hBeFd6?=
 =?utf-8?B?S2RGNFRuaFIxOWZpTWsrV2UxSnhEbk50YnJyWVJXRkU4c0cwZUw5RlYydml1?=
 =?utf-8?B?VmEyTmR4VnRQUkY5MkI5b09zWGpxR2MrZVlqajVyTmZ1ZmFVZ0RVeEtEMi9Z?=
 =?utf-8?B?YTRzV00xc2pESE5lci9LSG93dSt5Y2ZCRWV6RkFuTnR0YUU1bzc4bWFzNnBT?=
 =?utf-8?B?Mk5nZkVtNzFwaVg4MnRQRGk5NmpyMW9KMktTUHpSZnlwd3Z6NHkxVkgwZ3RP?=
 =?utf-8?B?UXVXb1RCTGczaU04N1pLQm14TVVIeTBNbk9hTVN0eHQ0b1JrM3c1SlViRE56?=
 =?utf-8?Q?lV0Nx506/t8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MC9Gbk13TURrclVnT2JaZTZYTWdTTDBhc3A2WFk5Y05lMTV0RzQ2dTc2QUdB?=
 =?utf-8?B?b3FpNFZ6eVp6VUtVQXdBRkpIcXlnK1BPWTVsTk44QkkzU3VkcGxEeXdsSlhM?=
 =?utf-8?B?SjhBT2FmTGh1WG1PZ1N4bE9GNEUxbEpmUkwyL1YxbThCWXpBZDhtdCtVa0Ni?=
 =?utf-8?B?Uzk2QktJV09DK3U5UDZjQWhYTGl0MEVZaTNOUDdaamxUajZ2dGVxaHYrMFAr?=
 =?utf-8?B?MElCY1Ezd1hCUDQ3QTlIZUVCRXhYTXNiUHJCOU1ZUEE3Q2ZyWEI5TUc5ZERP?=
 =?utf-8?B?TFZjTkR1Y25weG5peVdjTWZBajFsKzJScnRXQzdidVBGbER0YzNXaDNGUXVz?=
 =?utf-8?B?c1Nxa0s2RGZucUcwWXlIQkpBaW9rTk5hbDRrOXpZd1JoQ29IMjhhUDljUzBF?=
 =?utf-8?B?a3A0K3crSHBIMDJkRnRPUFArWkZXZUhJcXN0SjM2ZXdXNUhsUFhuM3g0QTE3?=
 =?utf-8?B?a0drdmtvcW1jOUw0aFlXNytGSmhOb0NhQ1Jad3dtRExKSitlZ2VlUGZ4OVJ4?=
 =?utf-8?B?ajgzUjZyYmtEYTNWcU9kN3kzUEJqcytBNmpjZCsvVDdCZW9XTm5yVCtxZ3BG?=
 =?utf-8?B?RVZSaDdRaEVNVk5FcGtkOTZvYmNQQS9LbXBDaFFWQ1pEOHkrSlFsYk9ZTG1a?=
 =?utf-8?B?bDN1d2k4WWdtanJLL3NGd1pKRU4vN29jWnFZMzZpN3Zxckk0dm15VkZ5c054?=
 =?utf-8?B?YkhXczZRaDExUnZhYlN2MklFamswUFkyaXRWS2lUc21oS3pqZmVkQ25QaWxC?=
 =?utf-8?B?d1ROQmxleGFuREsxanFaNUQwQnJsOUVMNTRweXBqWDZseGI2WkZHWTBMQjNt?=
 =?utf-8?B?TTBKQnBqTW4xbHdOcVQzMGVsMFUrWTFzK2lGVnlYTEpBK3hLZjVOWWhlOXdj?=
 =?utf-8?B?R3RNeEF5U2IzWG1LQzhxQ1NaVlFZVTBOa3ZOVEpLNFh6aVV6RzRKakdqK0pP?=
 =?utf-8?B?UWVURGxUN3BFQ1ExMXhnT2VBQ3hGSzFkNnhqZ3g4QXJDcFczeGZHYUN1Skda?=
 =?utf-8?B?c2FVd1dLMFpHTVdlZm5nVXFnblBCUnlCaG1LcjBSMXJrZmZvd2RVV292VnJm?=
 =?utf-8?B?dGFRUXNjajdaM2RMelkzK3E4UDBUWm81ckt2SVhWY3BkOE00SEtoa00vMk81?=
 =?utf-8?B?ODR4SlFDcVovd2ViRVlMdmpjWkZtM2xUbmk4NXEwUDZGNmRLajBCTjhSSEN6?=
 =?utf-8?B?S1Ivb3VISzZ6YmVoclNSR1hnUFEvaG5penM2djhSZFArWGtYK010bG42TWNv?=
 =?utf-8?B?NVNnaHgzOHBxWWJsaDlVT1ZuSWt1Ni9MVjBHU2NhZkdOdkhidUI2My9IYWFB?=
 =?utf-8?B?bU9IYm1pUzFLdktrZkdFa3FkajNBSmdXL0VRek5BRy9mK0htU0tERkFSRTJV?=
 =?utf-8?B?eGZiOEJSbWZyNDlwTFZkaDBhRC9vTGh1a0pyc1FRZzRoTUJ0NmsvdHFwUEFM?=
 =?utf-8?B?RitEWXRhbUxJRC9WUTFTeGUySUxNa2trYXJ2Y3ZKcmRoU2srOEFJdHFBb0tm?=
 =?utf-8?B?ODhaeHNhMEtEbmJxSEJ2eGNmeDBVV01TdUtyZFkvTkVGQytHUloydlFuNk1j?=
 =?utf-8?B?b1ZJS29Ndm9UTWlVa0RCcG1CaWpibGtkemt5b3g0eXVrNVhLY0tUUEppS1Zp?=
 =?utf-8?B?bzhhdmU0WlRiWS9pM25aQ3hEa1B4MXhGWGpXcDM1QkxNUnE0RmdFd3Z5MlU5?=
 =?utf-8?B?b0gvZ1I3Mmc0V3I2ZlVyN25MbUVPZFFRMjNOV1E4c1d6THJtKzZkMGRUcDh6?=
 =?utf-8?B?cGRPczdVZVkzRGFtNHB1NDZqV0lNaFdkVFpXbERydGRUNU1GSlFvcVMwMjZZ?=
 =?utf-8?B?T29lREhHVE8xaDZFSUI3S3ArVEZ6YjdnWEF3ZzVRaFp2MlhWOTA5OFcvSm04?=
 =?utf-8?B?SHZIa3pDalhnbnBvSHVOSnBkUnhwS0lkeHZ4TEFRY0hpQTRmWllkdFVub3ls?=
 =?utf-8?B?ai9pZmtNTEthT3loVkpuZ2JtM2FZOFBKQXZJTTJlV3ZZMnY0K2R5SmhtNVZn?=
 =?utf-8?B?YklndWpaYjIyTjYybmZuK0JGUzJBa2tqUnZsa0hzWWZDRXRiK1pBWnR3Wk9G?=
 =?utf-8?B?bVhyY1cvODIza0YvdjQ0dE5Jb1ZKcHdZNnZWZmVmY3BRLzFTRktuKzZCZjNr?=
 =?utf-8?B?RitYSUxWR21HbTdTbUc5L2tHVkdQMUFlWXZreGFrLzUyZDEwQUVGV2FYUzBB?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6+2j0hEg7Tp+bBkgxHj99agUls1oVPLe9ajkzlFrc291GGX0XY6fVE4X/25Obm17kCh5H8HjMw2F98Q31e8Dog1o1jhV8AN0tzXyjIbJsoB76M2YEqH1qegS6rCTHHoCpQ9fK27l3Q1ee5zbnTVR6CA2T+FsIEzPMUS9SKjziAimF2Kbomp1nkK2j+d2NqU9cF7fYoD/vpr7Yx46oNwvXa3HMUtTH2Vsaur5w0FbeV7f/utl6Hg3Zro/47o7G4qcaNJ2HuDvgUQzRMmQIuW0nztbe8Kg/EyBDonMHXm3V/PEvcSKGVKCWLN18gEX/27g1ofmGMDXPxmK3SjHcn1e+L1WQMIxXMYY6qhvoZ0it7Lq900rnbohRk/M/NepfsN5SMazDQTKF/dhkFkysboLhm96mrHWRBwGQK7qJK+eptmYqjTrXqtKHp2lIXhxOrV65p9hzkfvOuBP530Dctz9/6TXhmJk9yHCBP0Qo7D8fY5H2v/Pqn3SVVKwLuGCFgaiPZd+7qA5QSAe1G3mbu8f/uAg5r8ixhhtksjoEpPbwxBrBNL86IFQQZSdxo7rTFYQ+ObYpobGNah+LfuoxyFsECWqMiJCrycyujfVRc4h6no=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94556300-cc0d-4c0e-23b1-08de38426e1d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2025 23:18:30.1727
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KeM/OqPw+8SEuCyG6310D5R7sSi79orytsTPSzlVDvAYGaoEH8dtT73hCWB29fV3WEXVmUB/BoIbyt4eoktwtuBv02zTHw+1b1AY3AyRVhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6011
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0 adultscore=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512100191
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE5MSBTYWx0ZWRfX253qjrs4z0Hg
 z3uasbJdBJLEjfilyx1U+fNShpsH2N3+GRTdWdcSvCK1uhgpoEhp3SDnoi+ZsSYZWc8NHQp5Uc3
 +KssmkI5ZaqSihFx9TCKxgkihJUlhRez8gb4Y8Q9/z7M/VqTwGl0qBnBLK4Gz6vS1zcIvI6qhO6
 /eeIsIcU8P6h69MRqhfa0yULn+nT9rk6Fj4Yi+4fMLppm429qxyL0wBG3zQ7dvdgj/GU/4mCKGH
 VdwiunIshmEirT/ZZcSQiO9jjPhB440dllUXCI2Og1+8HHgT2sKmEW/zvn2TrN9m5SxnB47YaRs
 bZbsHEyF5+2YgzXl1pqVAeLAebZ+uN72kck58mDyql2zD1ySZ9cPa5d2W7952eoL5Xo+aVQjR9C
 +UHrpMfrZ8DcdjSimRJYjcTViQNu3Q==
X-Authority-Analysis: v=2.4 cv=R8UO2NRX c=1 sm=1 tr=0 ts=6939ffce cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=Q9OsIELaAAAA:8 a=jAFidgVLOQwJd8LgcxEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=hijkYCPsXXSMtj_wSbGK:22
X-Proofpoint-ORIG-GUID: eU6Ofkf-SJ1g3pHsliER1lj-rA6Y2ZSx
X-Proofpoint-GUID: eU6Ofkf-SJ1g3pHsliER1lj-rA6Y2ZSx
Subject: [oss-security] CVE-2025-8110 in Gogs self-hosted git service

https://github.com/gogs/gogs offers a MIT-licensed self-hosted git service.

https://www.wiz.io/blog/wiz-research-gogs-cve-2025-8110-rce-exploit warns of
CVE-2025-8110, an as-yet-unfixed vulnerability in this service which they say
they are seeing being actively exploited.

It says:

> Executive Summary
> -----------------
> 
>     While investigating a malware infection on a customer workload,
>     Wiz Research discovered an active zero-day vulnerability in Gogs,
>     a popular self-hosted Git service.
> 
>     A symlink bypass (CVE-2025-8110) of a previously patched RCE
>     (CVE-2024-55947) allows authenticated users to overwrite files
>     outside the repository, leading to Remote Code Execution (RCE).
> 
>     We identified over 700 compromised instances public-facing on the internet.
> 
>     As of December 1, 2025, active exploitation is ongoing, and a
>     patch is not yet available.
> 
> Introduction
> ------------
> 
> On July 10th, the Wiz Threat Research team observed malware findings
> on public-facing instances of Gogs, a popular self-hosted Git
> service. What began as a routine investigation into an infected
> machine turned into the accidental discovery of a live zero-day
> vulnerability.
> 
> During our analysis of the exploitation attempts, we identified that
> the threat actor was leveraging a previously unknown flaw to
> compromise instances. We responsibly disclosed this vulnerability to
> the maintainers. They are currently working on a fix, but active
> exploitation continues in the wild.  What is Gogs
> 
> Gogs is a popular self-hosted Git service written in Go. It provides a
> lightweight alternative to GitLab or GitHub Enterprise and is popular
> among developers for its ease of deployment and minimal resource
> usage. Because it is self-hosted, it is frequently found in both
> on-premise and cloud environments, often exposed to the internet to
> enable remote collaboration.
> 
> The popularity of Gogs makes it a significant target. In our external
> scan, we identified over 1,400 Gogs servers publicly exposed to the
> internet. Many of these instances are configured with "Open
> Registration" enabled by default, creating a massive attack surface
> for the vulnerability described below.
> 
> What is CVE-2025-8110?
> ----------------------
> 
> CVE-2025-8110 is, effectively, a bypass for an earlier RCE vulnerability
> (CVE-2024-55947) originally discovered by ManassehZhou.
> 
> The History (CVE-2024-55947)
> ----------------------------
> 
> The previous flaw abused a path traversal weakness in the PutContents
> API. It allowed an attacker to write files outside the git repository
> directory, granting the ability to overwrite sensitive system files or
> configuration files to achieve code execution. The maintainers
> addressed this by adding input validation on the path parameter.
> 
> The Bypass (CVE-2025-8110)
> --------------------------
> 
> Unfortunately, the fix implemented for the previous CVE did not
> account for symbolic links.
> 
> This new bypass relies on two key facts:
> 
>  1. Git, and subsequently Gogs allows symbolic links to be used in git
>     repositories, and those symbolic links can point to objects
>     outside the repository
> 
>  2. Gogs API allows file modification outside of the regular git
>     protocol, and its previous iteration of this implementation didn’t
>     properly check for symbolic link abuse.
> 
> The Gogs API allows file modification outside of the regular git
> protocol, and while it now validates path names, it fails to validate
> the destination of a symbolic link. Because Gogs respects standard Git
> behavior, it allows users to commit symbolic links to repositories.
> The vulnerability arises because the API writes to the file path
> without checking if the target file is actually a symlink pointing
> outside the repo. This effectively renders the previous path
> validation useless if a symlink is involved.
> 
> The Attack Chain
> -----------------
> 
> The exploitation process is trivial for any user with repository
> creation permissions (enabled by default):
> 
>  1. The attacker creates a standard git repository.
> 
>  2. They commit a single symbolic link pointing to a sensitive target.
> 
>  3. Using the PutContents API, they write data to the symlink. The system
>     follows the link and overwrites the target file outside the repository.
> 
>  4. By overwriting .git/config (specifically the sshCommand), the
>     attacker can force the system to execute arbitrary commands.

[...]

> Disclosure Timeline
> -------------------
> 
> The patch status for this vulnerability is critical. Despite responsible
> disclosure, the vulnerability remains unpatched in the main branch as of
> this writing.
> 
>     July 10, 2025: First indication of exploitation observed by Wiz.
> 
>     July 15, 2025: Discovery of Supershell malware on a vulnerable machine.
> 
>     July 17, 2025: Vulnerability reported to Gogs maintainers.
> 
>     Oct 30, 2025: Acknowledgment of the vulnerability by Gogs maintainers.
> 
>     Nov 1, 2025: A second wave of attacks observed in the wild.
> 
>     Dec 10, 2025: The vulnerability has not yet been fixed.
> 
> Remediation & Mitigation
> ------------------------
> 
> Are you vulnerable? If you are running a Gogs server (version <= 0.13.3) that is:
> 
>  1. Exposed to the internet.
> 
>  2. Has open-registration enabled (default setting).
> 
> Then you are vulnerable to CVE-2025-8110.
> 
> Immediate Actions:
> 
>  1. If your instance does not require open-registration, disable this
>     immediately.
> 
>  2. Limit internet exposure. Place self-hosted Git services behind a VPN
>     or use an allow-list for IP addresses.
> 
>  3. Look for the creation of repositories with random 8-character names or
>     unexpected usage of the PutContents API.
> 

The original blog post at
    https://www.wiz.io/blog/wiz-research-gogs-cve-2025-8110-rce-exploit
has further details, including images that are missing from the plain
text quotations above.
