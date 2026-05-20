Received: (qmail 22508 invoked by uid 550); 20 May 2026 17:52:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22475 invoked from network); 20 May 2026 17:52:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=z29eMuvviESJq3wisWZMs+tWfxVgL56FLgaME7F1MK4=; b=
	G+C2Sy/TD4BUcYbJe/c8Dx9iptzTJSMV1Nxu/+/bk6BgZwWl+2xiaQriVcntOeyC
	fUYbI7AImOmCm5irq5lVN/szUwjsDl+AO1IdIG8wJ0byz1fRDvmiyJVDfmMp8tes
	BQ3HFo/BeDqc+7E4YjTsB5cGAeXuv52R6BPXulQIkbq3ZKMl2klFxaalL8MYXWPX
	zkK1VVe12m1WgQscNC9rEPB4MqKQ7P0JD4xpBfNVaBmS+YlsRsjyKPaWl2hgKKGz
	qFAdYyHBeVoJ5YeQ1FddXJwN8Rx8u7eG1gzMiZl/Z5dV0ayibxs1TDE6JRauLhsY
	ec9xLpsj/vPwMXxkcbANXA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jsxm9L75uWIz0pSDuYIXqegYoscyHQ1LNHFwfMwGZel+urzMxn+kIuxHNYiXPIsvR9F06fVJM82sjguNrt1uWY6prmzAp2ZI4zbLlGa3TKilsGkTOLMwx4lpYqUSrrPlOwdwwpCya1I67nvQNMWDjtR5+5DcH1mDhxsMm3PVvp99pgV3wGedla/NthL3rVerS2QxenxytTMjPtXzwJ8bJdPanW8cKKmuUEVMEGiUBwHNa7bl7+vuS1Mjw08j+bMqSktkFG/QDqnIxMzsKMMmJCerlBgzacPbDldzAq2jTuvW1iixUbp/TwVgbcKxbG+CqDFkXXVmJuUzbQS1SoRXOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z29eMuvviESJq3wisWZMs+tWfxVgL56FLgaME7F1MK4=;
 b=YYLj5YTDAB7ZM3fo3dbK3eR2bWS914DXBqvundOBh6m4OlifQ4Gpzniq7S02ibL/4QYWKJzzuKZ18p0o1K8TQKSvYznU1ttMwlPx5fFpWi02VSTYKWqAq2QqVworjWksOVZckUWBgeDiJqDG3OVObThlpVRpgyCEGu5lijWois7o/4XQUZkPk14X2MYbHMeYprQddJY0duhQiHg2y/jpx9To2BBoUy3jsExoFYjDbKAXG36sBdVs+J5undHZXg4hpvss5xMLTL6jwxAkWJ3H0L9h8zXFuSmj9R/n4719WzQR6Vtk62oGmhpYE+h6EStEVMk5AKooLZE4ZWdI2lisRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z29eMuvviESJq3wisWZMs+tWfxVgL56FLgaME7F1MK4=;
 b=GvuB3jFSTdQO+A80B/LsL5Jb5mVhKmed+2h6NSUNujWYXPcFsuIJTy9jODr/MfBwfgOGdHbZ6SSf8/Tr4QK2s+DV3EVlCMYXUPns0ELBVSsRaeeoywZPI2N28AWmQoeviCVX8QtRgkQK7an5BFs0A5isiaXmG4atO20t7QTIyi8=
Message-ID: <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
Date: Wed, 20 May 2026 10:52:37 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afDLFWVMK-r70PB0@yuggoth.org>
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
In-Reply-To: <afDLFWVMK-r70PB0@yuggoth.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0271.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::6) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|SA2PR10MB4426:EE_
X-MS-Office365-Filtering-Correlation-Id: 092971bf-486d-4084-d4a7-08deb6989595
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	u0Tjj4hNEHHujnvWOVtEkxxZwjO8nXA3xYNuICMwyb8FpN5HnOLM/n6wbb7KM6tq01HE+FVxyn9rh6d4nBoXDHDijlkbpXKwFBkEyHmSxp2Jis1harD8UUfJsYKgxXHpW3E60BSUr+8MI2mB9v7LfiLX5lrpERS5AYFreLmVmfgLu6vMxX/wmKhP09s+1UV/mSgHTDi6RbvUQ3srJm3aQioZ3kYdLXkVBfspJw3yRr53nwE/1mBTjqdtfLo2t49CagD7JB/jGQmkEtfgoHgTup7RuMh+fQSgGQovrp1xmmzZXIihu5VN6Zbhe8pEwf16LTYpO36IGFbmnfaL/cZzbKLAProX1hQ2ATQctOYLaB+s34Ff+5288Ol7Je/MLbs6T0Kix4KpNLqmHu3RWNvO+W9iwt9lGuWEI+CyYm5CaCNvW1ZveLa3hdY0mL8ufayLpeSlc1DOhVGMDzrAbkDr1X9ZogEgfqSU5heUbA5DAXSDQwH0Rho6w99Q6YRajpbI2iIl/wlriCWq9SWF0LiXMgEkdPc90u+Iutt9E2C7ETwflLkI/u5aSXxFrEoFQZlylRW/qyz4bocqUTkbvP1j2na6uH8ZpSF6g+HP1hGYqvDfe09rfcoa2z0xjstRwu7C+a/7k0j2xpiuG9+gw4dJNw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cWRxWVlIL3YxRFd6SlpYOXpneUVZS3Rsc3M3NkJxNzJDR1p6YTJlSlZuMEdE?=
 =?utf-8?B?Zm9VbzAzK0w1MC9waWZSakJybGh0QUVYV3hjK3gxUHZYSVZUMmNHSVhhb2ho?=
 =?utf-8?B?eWp2ejFNOU8wVTZwbUs0SzhHWVA5VnBMcFJSUHhkT3hLcmlkMXVjVk02SHlz?=
 =?utf-8?B?SC95YXp3UGNoQXc2M1p0aE82ZkttU1RkUTUxTlp3d1lPMTJQVVpzY2l2TFBv?=
 =?utf-8?B?ZFJrNHFLaklLQktCYUtiOXVFU3VQTnZ5V1djblNUaGQrbWk0cmtnQlkycUIr?=
 =?utf-8?B?NHJCK3haeTFlUS95OU8vNktMazIraDJpWVJSRzl6UndGVkh2MG0wdUdVL3Vz?=
 =?utf-8?B?NGxERktobmtDaWU4a0Z2dkNvSStwb0FYdXhMdUNuTnpPU2lxZWhJTUQ4ZjA4?=
 =?utf-8?B?NDJQQTA5VnJ1aHE5eEVVaGtjQjNibit4YjNqZndsTi9JTTZSZWtlUkZBUmNG?=
 =?utf-8?B?N0hUMFVQYTlBbXB6K3lGbFNoYjJOVkR6bXBMQUNpL0dzUnh5V20zeGdMelRm?=
 =?utf-8?B?UTU3TGVNVUpzdmk0ZUdMTDcwcWx1T0tQZEZzdzdPM0pyVGJJckdTL1g0d1JY?=
 =?utf-8?B?S1drMXJ2N0JvRDcrTjZWdjl0cENBWlQwL3A2VFpQc0cyZm5sY1JNOC9ML3U5?=
 =?utf-8?B?dDE5dm1SUitTVEQwQjZtTWVLZ25JbXcwN0xHNGIxNzFIaytUVEhrUWxpWlY2?=
 =?utf-8?B?eW1GSDFLSEhKTU9Rc2NCV1VZV0pXSjJNMVZFSGNIMWFFVWplTEJ6K3lQUUti?=
 =?utf-8?B?VTlmVWM3eFYyRnhyU21BYldYOTVwTnkzcDQ5RXBIZ1g2Slgrc1czTlVyYWlx?=
 =?utf-8?B?M3F6Ynh0MkltQmd1anVLSEtqSVVsejQ4eUJweURJbzNUdlQzR2JFT1hUY2d5?=
 =?utf-8?B?ZTA0UTJPV3ljQVEvMEdwVmpZSldVRm5MYmFLUHl5eEp1aFRZUmJsTy9pYlRZ?=
 =?utf-8?B?cGs1czZPTHNQdEQvQ3lrdVlpQzhiVXFqR3g5RTVqelp3ZE94VGk0YS9NVHlo?=
 =?utf-8?B?REFBSHRyVTZMbWhBTzRuS0hsYVFqKytRNEd2Z1h2QWg0dFc5YlRLVklhd3JK?=
 =?utf-8?B?a2FoU2lIYXRNS3dUd3FCeGZVclBZajJ0aWROTmcwWjQrbGJJKzdqcEVpYUN1?=
 =?utf-8?B?NHhXSStIZHBxUis5UWpvd1IwT295bHlKNUVOQnIzbk1pNXhaTmxWVGtrb08y?=
 =?utf-8?B?T2R6NkRPSVJHNkxhN1pmYmhZWjNjTElPaGVsVzJ0UVdnT1BSQmpDdkZWUWph?=
 =?utf-8?B?VjNiOXExajgwRk1tZklpVlNyd1k3K3JaTDJ6YWVkZzM4ckxLRk9IQk1QT2N1?=
 =?utf-8?B?RnZJZUtWT0RudVk5NjdlVkRyNDdCTERPVW1JWHBwRHBNdkE3MXJxUHVjaW56?=
 =?utf-8?B?YWFiTjZLK2pHTEhkZ1ExWmlpQTBkc2ZUQjA3cXJSR2V4ZzUyU3ZSUjFGQ1NY?=
 =?utf-8?B?WitsQlFQRWJNaU0xeWtxcnhLR09EY1JTWnY2TzdEU2Z0bGpiT3VzMzdxKzhV?=
 =?utf-8?B?QlB0S2swVFdzcTdjRDlOMEVTYWd6NnVaWUpuMzRiWUs1dTZlTkcySTQxeVMz?=
 =?utf-8?B?UHJ0SFVJanozb1ZXajNCMjFYTzg2OHpGb0ZwUHQrK2xYSm02RWFYUFJCY2Fk?=
 =?utf-8?B?bStmazVXK0JadElJNVFyWHJkYXAyNXhleGJQRzFjZ3RHUGoxYXQwU3MzWVQ3?=
 =?utf-8?B?TXN3ckxsb25DdVBEYUxTR0s4ZGsyOUVVSldxM1hyY3RMTkU0YWxmeWhOZEkr?=
 =?utf-8?B?ZmVOQUV2OEVkVG5IR0tPdWVGU3NZd1pmTnllWXBlTG9oVDVmeHBiYlRHZHJR?=
 =?utf-8?B?MTlFTHR3Nk50RDZRNGM0RStVMmJRelJhcjU3N1Y4d0hPZHVIdmw4TkYyOWJx?=
 =?utf-8?B?dVdETzQvUCs1NDRJZjZROFU4QTB3V2JQTk9WMFM0Z1NQSnRmR1BJQ0RXTWdV?=
 =?utf-8?B?OHZKYzVsRWNoVkYrRERoWUxOTWFjVlRTODVrckg5WDFrZ2VUOG5icEZKaE1z?=
 =?utf-8?B?d1dLVlI1YkZlc0pYd1pXNkM2M21tQVhwY0kxVUs5YU41amU0cTBCSEpMRzl5?=
 =?utf-8?B?MjRmNjVsZnNWMVZBRHNKMmYxZHBValpwa1hEdEJhUVdQOW1mMUVuT3JvdUFD?=
 =?utf-8?B?WFBBRmEweGRRelZNVkpsUlZ0UitiRVoyM3ROZlcraGpheE14d3YrZzVROWox?=
 =?utf-8?B?eFE2WUFXNU90SlVwZEpXY3I3VjEvRUVuUVIxNWE5V1AvZlRrQ2dOY0I3R0ZP?=
 =?utf-8?B?T095UGJ5TWZuMGl3WGJ0cFlxRi9jcUNvWW03Vi94ZmJWcXF2eUFTY3NjQ1BV?=
 =?utf-8?B?NkdBNGIrQ2hiZHZ0ZVg1SDZQc085SytVTHoybklLdWh1SHdUR0NnS0FDMy9X?=
 =?utf-8?Q?9alcdH93I4oEZhVk=3D?=
X-Exchange-RoutingPolicyChecked:
	lBsIiQ0qDUDRzoBUvGmWT42jbfAxQN8XDHvkyF7Yp+iDJTaz/oh/xmyNsu95HmFSjAXTK4M/zd2y9I9gEGgoY00iAhcPXlehmlJrr2En+Vb+47d7w5230viE96uwrZf90OhturgdfqYMk/C+IYxJ/v0qKTlCTZEn7A0s84xopkVSqtje1dYgYONkcNWn+a1bHnnRuvn+Tmf+ixG55XHvDBU9Nc8jmkwAYNaiSpO3QZTQUED4Pg5XA+S5Rp1P+5pn/3XCvk6SgyHzS/fk5NzsItoC3TPbVUoj405ZoMWSbXFeBFDw3KBl3StkNiDifnbZIymoLGojj+zl6aTJDg+fLQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	FF+pVw0A1NkLJHxbhoblfX4DtglzjMhSA/90ojEOg27Sflk2bnbkm5/QCQiN1VQHJ58D3BG4jktoKr9VKog97DVNWv/FwYNYZVNPfVYrm6RqL3YLoNxgfOStdbLfGqkBGpao2PJ65RI/lKQ171mftkznM1poEz4hK79qPSsGmo6iOTF5u9I8xKUXLVdNw9rjcEV6rUAvBuhPaq5EDhUKTBKI6vMQaT1Q0JAUEVvjfO2qs84vz1LOIM1Vi1+YV2g/GK2bvYjzg46WBLAz61GgpreI9UYNQIhxaWam+XXxvxIROPoOOKg7t4FqeF0k3A215AIH7WiiOquK2536RdsDcP/rXzZuh/gnrFUXiVin9d+Nc7U98cd7MGaZl13fUvv2oyqtEy/v9zG1EbcjDg2bcjh1B1dRUg6S/TH8l56AtUMmZDPeZIxvek1ug0VVCYu5cfhxlLig2gPK+lJkNodIhLn8ygMDHcYtEW64wK0Q3FanMgxLeZscYYGiLwZ9wxgKpvwG57JrhgjztWs2SjzyTqYx8Y2KwrlYUEXVCkDiYHKckhhczZoDS57ZsIuyytTViH4wY4+1aSfO2ciKN4gzzxnHtf0gKJ7MbKIIqDloBJk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092971bf-486d-4084-d4a7-08deb6989595
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 17:52:39.6617
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vxvDqbvAaRhnRGWWQLo+LZNG8VARtMCIkIDctpejZBRRNMclYqZaiBO9d+hCTIbxzEqH4PPcPkVEbJ8FPOY0m3FyxafGGpze97juV2rb+Tc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4426
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 adultscore=0 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2605130000 definitions=main-2605200174
X-Authority-Analysis: v=2.4 cv=NdnWEWD4 c=1 sm=1 tr=0 ts=6a0df4ee b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=D19gQVrFAAAA:8
 a=VwQbUJbxAAAA:8 a=eI5uVRqxAAAA:8 a=yPCof4ZbAAAA:8 a=BuJBRcL3P6xBmdoRbEAA:9
 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=W4TVW4IDbPiebHqcZpNg:22
 a=PSDbVoDK6gDek-Yz-mDA:22 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22
 cc=ntf awl=host:12298
X-Proofpoint-GUID: Mw8YIXv0TpJ1dx2XxfUHu0Suoq9wIGgs
X-Proofpoint-ORIG-GUID: Mw8YIXv0TpJ1dx2XxfUHu0Suoq9wIGgs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDE3MyBTYWx0ZWRfXw9fw8DL/FR20
 abRWdl+/cUej3eayzMyjhbYN6hErCdK+fUg+ifB031uUCQ4rBBtDBr4TXpUI/ixkub/usJH7L9L
 +qMejCC0OovcF9N86owUuiLz5dXSTUQ3XQJRnsyi5R1zGHJqkvfc2ehMSUlbv7XsGAVru+JSCXO
 PUCmvmM1IJvOUQ53P6HgmCPyBKBzd9NbAoXLOGFGISCse04XEeqITaYiS1pdYUX6xw3MHdbi4E6
 fCGUnWbs/1KY4icpM+y4xXOvPbDXjzcI9Xw5Hh+W9Y0h7N/cgM3ohq5bHlPAy6nBxWnYn1CiYpv
 RDo1EQt4+nWMHohGDDhq+arxiOOc5cEQHMi/v8k/6UC27b1/8HiNQXPLVhYl7Ra3C3FuGDCwXXK
 6Q9oaVf5AG4De6p3pvg5qQMNYf7PbRIrBiZjSt1df0iuVJTx0Lt271ijDYAXMJ+umUTl2qgSAR3
 gG0sx+1E+ubJ5VpIV2hbRwYX2YZSpCH0w6zjMoX8=
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On 4/28/26 07:58, Jeremy Stanley wrote:
> I'm sorely tempted, both due to the increased volume and the risk of premature 
> disclosure, to just assume that any vulnerability reported as a result of 
> research using an LLM is trivially discoverable by others, and give up trying to 
> pretend there's any point to working it under embargo. 

Other maintainers under similar floods seem to agree:

Linux kernel:
  - https://lkml.org/lkml/2026/5/17/896
  - https://docs.kernel.org/process/security-bugs.html

DNS servers (BIND, Unbound, PowerDNS):
- https://indico.dns-oarc.net/event/56/contributions/1233/
- https://indico.dns-oarc.net/event/56/contributions/1233/attachments/1180/2539/presentation.pdf

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
