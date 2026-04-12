Received: (qmail 6137 invoked by uid 550); 12 Apr 2026 02:21:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6063 invoked from network); 12 Apr 2026 02:21:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=EMngOpNEEBILlrbMYFVxz+TV+j2cbeRkH2iNshC+rqY=; b=
	bhw/+W2cGZratKKOM4E7mkhdpc4syG5CmkpSG5/SiNwxJjdIv373A5ByJH03HYJK
	712qmh8AZq50aqk7itm/touo8oWbBEwFvkFz3C3bRqZ+gVYbiM7te8GVYzpp9OVu
	7FBykbSuh5nji1bBvgT8RCq0i3+N/SVkbDuBb2jeq6BV91UCbHaYtLm0i0lYFcE3
	3g5xyZBbgKt319j+YRSh/Mdk9pJ20xytXTv+teCv5wo/zm/x7gUMSoGXSsYxG8Hw
	cIRZWJ519GsiphNEz/VZXjRYUTnm23oBq85K+iGPIqaLep01BizSn/9YWGgh/QJ+
	NLyfcOghgAQM/dHL/zRYeQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t8tPpMVNbistC8lyuHNmVQ42zmCGCoLD+ddE75QZ4MvD0QXOUlygXAH41YKjwa2Nlc5T7F0HY/B5r7JtlGSDSgxlm9i1YzWLe+BFOL6mb4quKl3xyiJFwF2d/CMBZ3CIRPL2gcfmDzgIdH+49GkML3CbU5Tu9msLvzvBlPvbMydwkgYxpePhK41lk6DIiXfhXIpHTW4xaf2Z+gzeurOVkBCmYVokkA20bAr8EmRbu1N3jB3ICSwE4NReFaUoLhdYIC4POD2+7nVBXPT/lu+34Kpi+RYPMia6mXX2DGXQagSuKkE0h6N5quXc8XkBO41SLZg9HJOlN6PmFLUG//lLmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EMngOpNEEBILlrbMYFVxz+TV+j2cbeRkH2iNshC+rqY=;
 b=KjchIy76UyDGj8IKfKM4vwvzRY1yvPMuDQQt96G3VkFh2CGdDX6VkJXc2Af2NizgNKxsFV3AfroOLVNGr7btucr4U1AIiqPmZ3cQGUH4h6ihIelujDLyO5Vpi59pVRU/UwQkQ8jh73CSHr82MaFBlNj5a2jr4n7XQSsaCWd7/RDKPbXXdqmUh647k1fzJ7TkCoU+XL7HYQ+e/kZP8pwai6pnDatMRjPM9S8B35FGZc3staBduoPRQLuKm9CsKdClt3fhQGiv8TgtlqlDN8+nrb5WvlR2IDrChIvD2KKd97rpVQ+dntNim8z1HmFcPJ1Idp+fxn6M7ovAJoe7EU+xwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EMngOpNEEBILlrbMYFVxz+TV+j2cbeRkH2iNshC+rqY=;
 b=kb4MtCsmi9ebKZN7vKwQbjEa08jaKfuNB5O8osF0HSk2Dtz2ufJTpGThbtKjO7ZwE6INo1bRCrzx4xPgYGObKs4fXvh08/0Z1IJx8q/KWfkuWGFUm3Ur17rppJJaCqUzDEp7RI0d/xqtF63WgfG4YvrL9SsE7+jJw/fDmr00XxY=
Message-ID: <2e6c7172-fedc-41c7-8407-e9b1ee39adac@oracle.com>
Date: Sat, 11 Apr 2026 19:21:23 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Collin Funk <collin.funk1@gmail.com>
References: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
 <874ilh5ohs.fsf@gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <874ilh5ohs.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0173.namprd05.prod.outlook.com
 (2603:10b6:a03:339::28) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CY8PR10MB7147:EE_
X-MS-Office365-Filtering-Correlation-Id: e1714c4c-e941-4add-a435-08de983a3258
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	Aacb5M7ICyNpcD1rht8b0ugpi0Jm7sVhhI/LjcWUl3ButC5O2ZJPOZrabgTZ0qLm17vp6rXw6NVQzIv/FKQQe8mXpR8XX7uoKuZlLowBmKUKk5O7q6tQ0Gqf6kL8VJn9TMkjWHQRZWg4X8MgayZ/KZxMYL8SdiZkTC4+FB4Ox7ZWfiuLs0qYsIgW0CBqO10BJCyeCE2Cv+Ijcf8ppIFA9FrSQyFhDQdxEVxT/0mqze4WWf5k+yqvl0uC0oaej+HhaR1E8l3YHmiaFOSgBYQZWhme7jn5Fvv2BWNrzg3GwNQMiEkRn0IW1f8OTlslMNmtUg9aKwZHLWPZklXfcV43NC+d7kFc0dSEwt4r5PVV7f5WCWkU3ji8Zuqq0ZWZ5kkcaInkbuI5FEkGW77Iy1af8uwxZyJfPOGK9KG3qRrI9SDdbGNOstEPI2ILMq1Zi/0ynP0ScOZn382WVKG5Fwrd0zAU9hv32E4ddNYxXRBqL5ypOdNt84hFVvmdi0hfKyAzWcZbQzHardHBaNgp1jqPb2Fi69vV1L7fq8b8mlsXwS27faSdsx3jbeWIAloFsLhgpJZerWF3akQsOtRi5FrV8OpTxG/Yofso3gCh08OgdfXXI9YTs7/1ddaNz9QeSeQELsRT0UgoZmjHehNiyMTWC0WzuBoX5eEqu8eAghq8/dqxqp0/MIs5kVScBnAOm6xkCQYf6APY03N6tuCENK41rCfmMsM9HS3aiYe8oWgBknLWoKXEYovBfXmk7H6u2sJK
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MXJ0Q2VPK0llclkzV1VvRVI5L1J2d3U2TzdQZHVQMkRDRHYvNWZkd1pna0cz?=
 =?utf-8?B?dllRdCtVWUpkK3RaZHVRQkh3dkpyU00rKzdudHRlM0tSd0EyWDlQeC9WTEFN?=
 =?utf-8?B?Ni8rTTZXZmZDS1FlT1dobTR2NGZXTGtFTzhsbGN4K1lmY1F0VnJLdDZQUUhQ?=
 =?utf-8?B?T1BxU2k0T0JJaXlTMTV0VnQ0TG9nK25BVlk4elUvbTZFbVRLaW1FUjNWclhk?=
 =?utf-8?B?UU4wYkxXWHBIM1cyNjJ3TXY3cEl2Z3NDbFQvUGs0VUNGdmw5NlZzalhoeHNj?=
 =?utf-8?B?amV1VkZkQjZZMjB5WEczQkNpRXpWNm5oY2RZUEtPMVBWQ1c5ODg2MTJUSi9G?=
 =?utf-8?B?MFRNZ1l4TVhneFBOSFRIdE9mRmdxYVlpWXVwNGs3VVB4eGgyeUZ5T0tJd3NU?=
 =?utf-8?B?WkhteWlMVll1cm1XMU1WdzhEWHVIOEJtVTVzV2VvNHhHY1BxQjZZQ200V1M3?=
 =?utf-8?B?ZmExb0t4QmpqVXRJdnZSbWhhYVZrOVI5RVArQlpzeHphZnV0cjVnQ0lOa01l?=
 =?utf-8?B?R0g5R2xoZTFBRWtxYytyL1RHQ1hGaEN3cUN6TXVzWW5mb1VObjFiVzZkZEN6?=
 =?utf-8?B?OUY0MEtHV21CWWU4cGUwNkxFb1NEV3JSbFIvSXBnWEtFNlVwOWRZT2JHUGlI?=
 =?utf-8?B?VmQvUmVYOU5vQ0pwSHVmeTZEaGlZeVVzd1UzOExuRTRWaEh5ZnFDU1pwZjFN?=
 =?utf-8?B?c25VQ0ZMb2JoQ3k3MlBGQzVhalNLTG5EZ25hNmJvanpVZHNmdzJCVUJMTTZQ?=
 =?utf-8?B?dXVMUFNIdFV2TFF0M2VoeWZUK2FnSXJSQ05uN0oxQ0FXUm5YOXZPWVU3c3E3?=
 =?utf-8?B?K00wc0JYZ1J0N05reVA2bnZiL2FldlB2ZThFcC9DY0Z5QnRWM092ODRQc2s5?=
 =?utf-8?B?V3pROUQ5clBoaDlYd0VzeUN1bVI3UnAxTkkvZWprSlRHRDRSM3NSR1NneUNB?=
 =?utf-8?B?V2dmWlJQQnZrS3NIWDQ0VldlZEM4ODk0NFN1M3dTOFZlOGMxYm9CRHRicGp0?=
 =?utf-8?B?Q2FkcERmSTJXTTUydit1dUZnLzg0azVkTzJPSXNDdGNVMGF0V09PNCtwVHdt?=
 =?utf-8?B?Z1pmdlZMdHBzNjFRZURIdmpoT0QwMnpZVFVmTlRreWVPVjEycWt5TWRsSE9h?=
 =?utf-8?B?WGxqNUlrdnpCSUJhMTZ3ekh1L0l2TGpvbU5rdGl5UHRlNjlBaUN6VyszN1pH?=
 =?utf-8?B?N21vRlVaZi9rdnQwV1hIK3ZuZmxwZ3hlWGRtK1k3M2grMHh2OWcxZmxPTHBl?=
 =?utf-8?B?bGRaellBYWZEeWdjQTkwRUJyd1JnZGRzMjhjSkVCVFlqWXJkUjhMTk1MS01Z?=
 =?utf-8?B?RWhDM2Urc2F2SlVWWll1YlNrUm9abDVRTXNLR3JIcmdvWXZ6cmQzSFFIMGRV?=
 =?utf-8?B?bWxqWVp6NHljbnZrblpHV2FUdFJxb1UrQ3NRMU1xWjRjRC9FNnkxeGkweDRn?=
 =?utf-8?B?SHV0ZGpNQ0d5ME1HSU9lc3g5YTl4TXg3QlpiaUVtcCsrdmp5dnFsVmRZSkIz?=
 =?utf-8?B?amdpYXhvSnE1SkRDRWljdlpBTTVrR1JLNlBCYXZGelNDWVpyQTJiUUl0Q2VO?=
 =?utf-8?B?VVhiQlBMU29SYmphUmh1SUxJazFhWHlsWllJcXNzNnNJS2h5ajRSTXRwR1JZ?=
 =?utf-8?B?QW5qd2ZPTDRlTEJ2SVE4VUJJcVNGY2tKdHFRajM4QVAzK092Vk9xNlI5QXF4?=
 =?utf-8?B?L3o2QW5UR1JkUEUyR0hRWHJ5U1QxSUtmbEIyaGFobEVXTkRWbVFQSDZtdGc4?=
 =?utf-8?B?MHdvVDBLdkZ2NC94SHI0bktjVVo5OUtUUWZSVi9uYm1TK09SMFdtNWEvdmdu?=
 =?utf-8?B?aU1acDhONzNtYjRPSTJKcE1MK3IxY1dyUFFQRTJvbnJqMmlYSTVTZlZycHlK?=
 =?utf-8?B?Yy9PV0lGZVdaOFBsU1FqQThQdjFFcWk4QjhRWFVqNGFiZXBtbzYrYy94VEYr?=
 =?utf-8?B?MHpWTGJFN3hJRmloc0xFQXE0eUtIcnJsTGR2U1JtTzlVYm1qc0RwR1prZVMv?=
 =?utf-8?B?L09QbFBPajJ1Q3E1WmZkdysrQ1YwRkhhQ3NzZ2VEbTdxSmVuWnpIWmsvVk8x?=
 =?utf-8?B?UU1haFUxNEZZYllCWVg0bEY3N0NDdHRQS2FmTTVwc3MwTDJicFVVK0ZxSEdk?=
 =?utf-8?B?cFl0NHhTV0o5UEdHeXVaQVJYbmlrT2d3VHYxdUdqTCtmM25La1RpYnkyMGNC?=
 =?utf-8?B?M0p5MXF1ZEtteVhYb1lZcUlqNmpoUG1YbFpMRFJkdUF1UzhrN3VhSGZCWFlV?=
 =?utf-8?B?RzRyeHNSVHB6eFdLelJNaGpTRW51S3VjWjBETENHSDhCaTQySFFUa2p4b2RW?=
 =?utf-8?B?ZXBsT0RockNaY3lLT1BZUWZDeFE3ckQvNERNaWNWL2dCdzVNb3Fja2JuZGFD?=
 =?utf-8?Q?H8WDWHYXwCvctH1A=3D?=
X-Exchange-RoutingPolicyChecked:
	ud7ikO608YOg4BakpCYCvdfFW6KoWrl5tXxXhpSpSEMlLs1jdW8ehZ6f28VmN/sCcbvsJRdcefxOyidECmmmap53y/xx02yyEURYq3+wqy0boQYLPDIz0ujpmtIgl/tn75EGYxyCt8X72xOiR2bj6E+i33oZsz2p/KzESP9xLY2dMAm5R/25Hyr284Jb5k/cllPq8UmmqCu5bjjPrOgV+XUuFaY/KZRTl6sUODjDWh713Sd1wjSmCsHv5YnU1c4CY8h3aUoHVEJlPk2kYIm5Br9cpvy8/OaYJ/UP6LWc8jJcZ4Bfq7Tz0ywnTcr79lxaQ2mEfr+zsbSMc5Lue91XBA==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ZKXiTkyw8NkXkrizGeHM9FU5u7LsrH8VSfvu9zt3danJXuPF81FHfZYwYdSBoKyzd9WW1Zw2HMTig3OaR3F6IVlQwu+5Sbdru3eyRBUTv0TFhJthdxbptcmzg6xpPB+iq8ppN+ssr8weq1ukGGONsOqzGSMtO0rxDfqPy8TsYB9J92rVZ5uailmCU1TtKq8Pp9eJJnxR7pUppbndWf9Lv0IUAsyxnFmhkV+Hh/guJNq0C+5GuMxaQIw7GlE7KE4dt8+x6IotEbelMz06yPh3688iZQKcRwe+5sS3XSXTXGKqNCUPvUkgZ/mWnudwoNhGPM48uvzFNtuYrf8ZRFc9b/UUwnmPTZPROChoiCJGf7X6Cna7r2vAopvMJSp47jOqyANwPiJNHobkBOXLzvWg3fvEZpbkVv/xVmO0v2GNv0EayIZEg1/XAH2QxLbw8cWWU0E6l7plT5FysndLJTnauAUFPER81bHNE04RnNiNHF6gcudhN9k7bmthtSaHPPhTGuq3GF+k/AdxN0TmBNkFBOTG7kaHDVGtuyyPP3rSSOKgTl85Ks7yXt/lcpEF6VTSTBPXliNVQsQxfRIrBm95zijvij6/ZFLL7CiNNddtDJQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1714c4c-e941-4add-a435-08de983a3258
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2026 02:21:25.5570
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a2P/YvypCkgGoL2dZBYRqxzu79THYlAyTpBLtTkx8KutN+gaU7cCUH8SmDSfdeI9447VSry2tAZwh23YGP+GzmukwPaUWS0TeBw8ssO4kMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7147
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-11_07,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 phishscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2604010000
 definitions=main-2604120020
X-Proofpoint-GUID: 5WTXv5v3TVMeGf3u3TGWXkvR98ujk6JJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEyMDAyMSBTYWx0ZWRfXx3a7a41taWZY
 aHugDi3BiYACMiDvA8IrGtOwymKzmh57iLUM3102PFDh6gSWceSfGM/EeYC8JiL3lNPrn3CWwnS
 ufrA2lFz7vHt3BCDJeJ5O1QASNzinL6+eYxBv9pbXbVmSKiRJuyjZ1tY8Akim09t5hmaaBeiwpX
 tGBV+yaL6o0tdhsY8kWg9oK5GU9byadz6g4nE+ZdBjix0PIWsKomV9772KLs9auFg7Ec8NJFvdx
 LQvCmZ8IoL7sCZC6t6ayo+uroNPMut/Y33j2jMovyrjovk1l/GhII18+zul7eCEkhTTK6ZU0iKt
 1M78fyxVfGZvBeGhyPJXVHsXVH7QVYMp308q0hVuNo1KKtw4NIBAdMCVR1JuZA3ZatQ91wUlXP/
 dBOIvX/zFQV6NNPGzfghaUJbcKxp0uhlgv47Nm0RgeEn91MMjqRbIfqt3+8c0sk/iB0KMbXYFkh
 R65o6LnC2xO6odDyY3rT/uMsre5kxC9ePGBDouN8=
X-Proofpoint-ORIG-GUID: 5WTXv5v3TVMeGf3u3TGWXkvR98ujk6JJ
X-Authority-Analysis: v=2.4 cv=Yoc/gYYX c=1 sm=1 tr=0 ts=69db01a8 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=69wJf7TsAAAA:8
 a=yPCof4ZbAAAA:8 a=5SMXx1T4AAAA:8 a=nGIDcW-c8MnhqSagRlMA:9 a=QEXdDO2ut3YA:10
 a=Fg1AiH1G6rFz08G2ETeA:22 a=EEcaLA7969R8ZOA5S7FC:22 cc=ntf awl=host:13825
Subject: Re: [oss-security] GNU tar: listing/extraction desynchronization
 allows hidden file injection

On 4/11/26 11:41, Collin Funk wrote:
> Alan Coopersmith <alan.coopersmith@oracle.com> writes:
> 
> Not directly related to the issues in GNU tar, but one of the reports
> you shared [1]. See the following text:
> 
>> I am happy to coordinate on a disclosure timeline. Please let me know
>> if you need additional information or testing.
> 
> This is one of many examples I have seen lately of people writing as if
> they were sending private messages on a public list. I assume it is a
> common LLM hallucination?

Yes, we saw it happen on the freetype mailing list as well recently - there it
was suggested that new people are unfamiliar with the concept of a publicly
subscribable/archived mailing list, as they all use web forums / tools instead
of email for collaboration now:
   https://lists.nongnu.org/archive/html/freetype-devel/2026-03/msg00020.html
and the freetype.org contacts page was updated to try to clarify where to send
vulnerability reports privately.

I wouldn't be surprised to find out many LLMs don't understand the lists
they're mailing have public archives/subscriptions either.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
